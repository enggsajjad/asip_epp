/* 
 * sim.c --
 *
 *	This file contains a simple Tcl-based simulator for an abridged
 *	version of the MIPS DLX architecture.
 *
 * Copyright 1989 Regents of the University of California
 * Permission to use, copy, modify, and distribute this
 * software and its documentation for any purpose and without
 * fee is hereby granted, provided that the above copyright
 * notice appear in all copies.  The University of California
 * makes no representations about the suitability of this
 * software for any purpose.  It is provided "as is" without
 * express or implied warranty.
 */


#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <values.h>
#include <tcl.h>
#include "asm.h"
#include "dlx.h"
#include "sym.h"
#include "qsort.h"
#include "BaseBlocks.h"
#include "JumpTable.h"
#include "BranchTraceEntry.h"
#include "Forecasts.h"
#include <errno.h>
#include "align.h"
#include "syscall.h"


//SHAF: CYCLE INFORMATION
//#define SW_EMULATION
//#define ATOM_4
//#define ATOM_5
#define ATOM_6

#ifdef SW_EMULATION				//SW Emulation
	#define HT2_Count	40		//Dummy Change it and get the new value Later on 	
	#define HT4_Count 	298		
	#define SATD_Count 	544
	#define DCT_Count	488
#endif
#ifdef ATOM_4					//Atoms =	 4	 .....	 1Q   1P 1T  1S
	#define HT2_Count		4		
	#define HT4_Count 		21 		
	#define SATD_Count 		24
	#define DCT_Count		24
#endif
#ifdef ATOM_5					//Atoms =	5	.....	2Q	 1P 1T	1S
	#define HT2_Count		4		
	#define HT4_Count 		16 		
	#define SATD_Count 		20
	#define DCT_Count		19
#endif
#ifdef ATOM_6					//Atoms =	6	.....	2Q	 1P 	2T	1S
	#define HT2_Count 		4			
	#define HT4_Count 		16			
	#define SATD_Count 		17
	#define DCT_Count		14
#endif

/* ASIP : Defines, for how many cycles the pipeline is stalled for a memory access */
#define MEMORY_LATENCY 1

unsigned int warningCounter_SuccessiveLoadStore=0;
unsigned int warningCounter_LoadStoreTextSection=0;
unsigned int warningCounter_UnresolvedDependency=0;


#define ALLREADY_WARNED_ARRAY_SIZE 1024
unsigned int allreadyWarnedArray[ALLREADY_WARNED_ARRAY_SIZE];
unsigned int allreadyWarnedArray_writePosition=0;

char* asciiSymbols[33] = {"NUL", "SOH", "STX", "ETX", "EOT", "ENQ",
			  "ACK", "BEL", "BS", "HT", "LF", "VT", "FF",
			  "CR", "SO", "SI", "DLE", "DC1", "DC2", "DC3",
			  "DC4", "NAK", "SYN", "ETB", "CAN", "EM", "SUB",
			  "ESC", "FSP", "GSP", "RSP", "USP", "DEL"};
char* asciiReplacements[2] = {"\n", "\t"};


char* formatChar(int c, int useAsciiReplacements) {
  static char plainChar[2];
  char* retVal;

  if (useAsciiReplacements) {
    if (c ==  9) return asciiReplacements[1];
    if (c == 10) return asciiReplacements[0];
    if (c == 13) return "";
  }

  if (c < 32) {
    retVal = asciiSymbols[c];
  } else if (127 == c) {
    retVal = asciiSymbols[32];
  } else {
    plainChar[0] = (char)c;
    plainChar[1] = '\0';
    retVal = plainChar;
  }

  return retVal;
}

/* ASIP PIPELINE : Implementierung aus der dlx.h */
/*#define DEBUG_PIPELINE_DELAY*/
int readRegister(DLX *machPtr, int registerNumber, int warnings /* 1:true, 0:false*/) {
  int i, value, valueForLatestTimeStamp;
  long latestTimeStamp, latestValidTimeStamp, tempTimeStamp;
  unsigned int address, allreadyWarnedFound; /* 1: yes, 0:no */
  static int firstDataDependencyWarning = 1; /* 1: yes, 0:no */

  if (machPtr==0) {
    printf("ERROR !!   MachPtr == NULL. 0 returned.\n");
    return 0;
  }
  if (registerNumber<0 || registerNumber>=TOTAL_REGS) {
    printf("ERROR !!   Invalid Register Number %i requested in clockCylce %lu for reading. 0 returned.\n", registerNumber, machPtr->cycleCount);
      return 0;
  }
  if (registerNumber == 0) return 0;
  if (registerNumber == PC_REG) return machPtr->regs[registerNumber].lastRead;
  if (registerNumber == NEXT_PC_REG) return machPtr->regs[registerNumber].lastRead;

#ifdef DEBUG_PIPELINE_DELAY
  printf("readRegister in Cycle %lu: searching for valid Slot for register %i ...\n", machPtr->cycleCount, registerNumber);
#endif
  latestTimeStamp = -1;
  latestValidTimeStamp = -1;
  valueForLatestTimeStamp = 0;
  value = 0;
  for (i=0; i<machPtr->pipelineDelay; i++) {
    tempTimeStamp = machPtr->regs[registerNumber].historyTimeStamp[i];
    if ( tempTimeStamp > latestValidTimeStamp && tempTimeStamp <= machPtr->cycleCount) {
      latestValidTimeStamp = tempTimeStamp;
      value =  machPtr->regs[registerNumber].historyValue[i];
#ifdef DEBUG_PIPELINE_DELAY
  printf("  Slot %i found to be valid with value %i since TimeStamp %i\n", i, value, tempTimeStamp);
#endif
    }
    if (machPtr->checkDataDependecy != 0 && tempTimeStamp > latestTimeStamp) {
      latestTimeStamp = tempTimeStamp;
      valueForLatestTimeStamp =  machPtr->regs[registerNumber].historyValue[i];
    }
  }
  if (latestValidTimeStamp >= 0) machPtr->regs[registerNumber].lastRead = value;
  else value = machPtr->regs[registerNumber].lastRead;

  if (machPtr->checkDataDependecy != 0) {
    if (warnings==1 && latestTimeStamp > latestValidTimeStamp) {
      address = 4*machPtr->regs[PC_REG].lastRead;
      /* check, whether this address was allready in warning output: */
      allreadyWarnedFound = 0;
      if (machPtr->warnSpecificDependencyOnce != 0) {
	for (i=0; i<allreadyWarnedArray_writePosition; i++) {
	  if (allreadyWarnedArray[i] == address) {
	    allreadyWarnedFound = 1;
	    break;
	  }
	}
      }

      if (allreadyWarnedFound==0) {
	if (machPtr->warnSpecificDependencyOnce != 0) {
	  if (allreadyWarnedArray_writePosition < ALLREADY_WARNED_ARRAY_SIZE) {
	    allreadyWarnedArray[allreadyWarnedArray_writePosition++] = address;
	  }
	}
	printf("\nWARNING: DataDependency unsolved! IM address %u; r%u; ReadCycle %lu; unfinished WriteBack scheduled for Cycle %lu.\n", address, registerNumber, machPtr->cycleCount, latestTimeStamp);
	if (firstDataDependencyWarning==1) {
	  firstDataDependencyWarning=0;
	  printf("         This means, that a register was read, for which a write-back was scheduled to the near future.\n");
	  printf("         This might be a bug or an optimisation in your assembly-code. Use \"get {address} i\" to see the command.\n\n");
	} else printf("\n");
	warningCounter_UnresolvedDependency++;
      }

    }
  }

  return value;
}

/* "int now": The value is interpreted as boolean ==1 or !=1. The meaning is: make the write-access visible
              immediately, not after the usual pipeline delay. This will also overwrite every register write,
              that is scheduled to the future. */
void writeRegister(DLX *machPtr, int registerNumber, int value, int now) {
  int i, writePos;
  if (machPtr==0) {
    printf("ERROR !!   MachPtr == NULL. Nothing changed.\n");
    return;
  }
  if (registerNumber<0 || registerNumber>=TOTAL_REGS) {
    printf("ERROR !!   Invalid Register Number %i requested in clockCylce %lu for writing. Nothing changed.\n", registerNumber, machPtr->cycleCount);
    return;
  }
  if (registerNumber==0) return;
  if (registerNumber==PC_REG) {
    machPtr->regs[registerNumber].lastRead = value;
    return;
  }
  if (registerNumber==NEXT_PC_REG) {
    machPtr->regs[registerNumber].lastRead = value;
    return;
  }

  writePos = machPtr->regs[registerNumber].writePosition++;
  if (machPtr->regs[registerNumber].writePosition >= machPtr->pipelineDelay) machPtr->regs[registerNumber].writePosition = 0;
  machPtr->regs[registerNumber].historyValue[writePos] = value;
  machPtr->regs[registerNumber].historyTimeStamp[writePos] = machPtr->cycleCount + (now==1 ? 0 : machPtr->pipelineDelay);
#ifdef DEBUG_PIPELINE_DELAY
  printf("writeRegister in Cycle %lu: value %i with Ready-TimeStamp %lu written to Register %i writeSlot %i\n", machPtr->cycleCount, value, machPtr->regs[registerNumber].historyTimeStamp[writePos], registerNumber, writePos);
#endif

  /* make all other slots with the same time-stamp invalid */
  if (now==1) {
    for (i=0; i<machPtr->pipelineDelay; i++) {
      if (i!=writePos && machPtr->regs[registerNumber].historyTimeStamp[i] >= machPtr->cycleCount) {
	machPtr->regs[registerNumber].historyTimeStamp[i] = -1;
#ifdef DEBUG_PIPELINE_DELAY
  printf("  Making Slot %i invalid, as its time-stamp is the same or in the future.\n", i);
#endif
      }
    }
  }

}

void modifyRegisterTimeStampsForCycleCountWrapArround(DLX *machPtr, unsigned long newCycleCount) {
  int regNumber, slot, value, tempTimeStamp;

  for (regNumber=0; regNumber<NUM_GPRS; regNumber++) {
    value = readRegister(machPtr, regNumber, 0);
    for (slot=0; slot<machPtr->pipelineDelay; slot++) {
      tempTimeStamp = machPtr->regs[regNumber].historyTimeStamp[slot];

      /* This slot is out-of-date and will be overwritten with a TimeStamp 0 and the latest read value. */
      if (tempTimeStamp < machPtr->cycleCount) {
	machPtr->regs[regNumber].historyValue[slot] = value;
	machPtr->regs[regNumber].historyTimeStamp[slot] = 0;
      } else {
	machPtr->regs[regNumber].historyTimeStamp[slot] = newCycleCount + (tempTimeStamp-machPtr->cycleCount);
      }

    } /* forall slots */
  } /* forall GPR-Regs */
}


/* ------------------------------------------------------------------------------------------
 * ASIP STALLING : Methods to simulate the concept of Pipeline-Stalling, like the load and store commands use it.
 */
//#define DEBUG_STALLING
int* arrayForStallingRequests_When; // In which cycle the stalling is to be performed
int* arrayForStallingRequests_HowLong; // how many cycles the stalling shall take
int* arrayForStallingRequests_Delay; // after how many cycles the stalling should start (redundant with 'when' but helpful anyhow)
int arrayForStallingRequests_WritePosition; // Write-Position in the circular buffers

void requestPipelineStalling(DLX *machPtr, unsigned int afterHowManyCycles, unsigned int howLong) {
#ifdef DEBUG_STALLING
  printf("Requested Pipeline-Stall in cycle:%i for cycle:%i for %i cycles\n", machPtr->cycleCount, machPtr->cycleCount+afterHowManyCycles, howLong);
#endif
  arrayForStallingRequests_When[arrayForStallingRequests_WritePosition] = machPtr->cycleCount+afterHowManyCycles;
  arrayForStallingRequests_HowLong[arrayForStallingRequests_WritePosition] = howLong;
  arrayForStallingRequests_Delay[arrayForStallingRequests_WritePosition] = afterHowManyCycles;
  if (++arrayForStallingRequests_WritePosition >= machPtr->pipelineDelay) arrayForStallingRequests_WritePosition=0;
}

void rescheduleRegisterWriteBacks(DLX *machPtr, unsigned int sinceWhen, unsigned int plusWhat) {
  int i, j;
#ifdef DEBUG_STALLING
  printf("  ReScheduling Register Write-Backs in cycle:%i for the WriteBack since:%i plus:%i cycles.\n", machPtr->cycleCount, sinceWhen, plusWhat);
#endif
  for (i=0; i<NUM_GPRS; i++) {
    for (j=0; j<machPtr->pipelineDelay; j++) {
      if (machPtr->regs[i].historyTimeStamp[j]>=sinceWhen) {
#ifdef DEBUG_STALLING
	printf("    Changing TimeStamp for register %i from %i to %i for value %i.\n", i, machPtr->regs[i].historyTimeStamp[j], machPtr->regs[i].historyTimeStamp[j]+plusWhat, machPtr->regs[i].historyValue[j]);
#endif
	machPtr->regs[i].historyTimeStamp[j] += plusWhat;
      }
    }
  }
}

void rescheduleFuturePipelineStalls(DLX *machPtr, unsigned int plusWhat) {
  int i;
#ifdef DEBUG_STALLING
  printf("  ReScheduling future Pipeline-Stalls in cylce:%i\n", machPtr->cycleCount);
#endif
  for (i=0; i<machPtr->pipelineDelay; i++) {
#ifdef DEBUG_STALLING
    if (arrayForStallingRequests_When[i]>0 &&  arrayForStallingRequests_When[i] >= machPtr->cycleCount) {
      printf("    Found a future Stalling-Request and ReScheduled it from cycle %i to cycle %i.\n", arrayForStallingRequests_When[i], arrayForStallingRequests_When[i]+plusWhat);
    }
#endif
    arrayForStallingRequests_When[i] += plusWhat;
  }
}

void checkForCurrentPipelineStallsAndPerformThem(DLX *machPtr) {
  int i;
#ifdef DEBUG_STALLING
  printf("Checking for Pipeline-Stalls in cylce %i\n", machPtr->cycleCount);
#endif
  for (i=0; i<machPtr->pipelineDelay; i++) {
    if (arrayForStallingRequests_When[i] == machPtr->cycleCount) {
#ifdef DEBUG_STALLING
      printf("  Found a current Stalling Request, which is to be performed now!\n");
#endif
      rescheduleRegisterWriteBacks(machPtr, machPtr->cycleCount-arrayForStallingRequests_Delay[i]+machPtr->pipelineDelay,
				   arrayForStallingRequests_HowLong[i]);
      rescheduleFuturePipelineStalls(machPtr, arrayForStallingRequests_HowLong[i]);
#ifdef DEBUG_STALLING
      printf("  Now changing cycleCounter from %i to %i.\n", machPtr->cycleCount, machPtr->cycleCount+arrayForStallingRequests_HowLong[i]);
#endif
      machPtr->cycleCount += arrayForStallingRequests_HowLong[i];
    }
  }
}

void modifyStallingTimeStampsForCycleCountWrapArround(DLX *machPtr, unsigned long newCycleCount) {
  int i;
#ifdef DEBUG_STALLING
  printf("Modifying Time-Stamps for Stalling-Schedule in cycle %i to new cycleCount-Value %i.\n", machPtr->cycleCount, newCycleCount);
#endif
  for (i=0; i<machPtr->pipelineDelay; i++) {
    if (arrayForStallingRequests_When[i] < machPtr->cycleCount) {
      /* This one is finished allready */
      arrayForStallingRequests_When[i] = -1;
    } else {
      /* This one is scheduled to the future */
#ifdef DEBUG_STALLING
      printf("  Found a stalling-request which was scheduled to cycle %i and which is now scheduled to %i.\n",
	     arrayForStallingRequests_When[i], newCycleCount + (arrayForStallingRequests_When[i]-(machPtr->cycleCount)) );
#endif
      arrayForStallingRequests_When[i] = newCycleCount + (arrayForStallingRequests_When[i]-(machPtr->cycleCount) );
    }
  }
}
/* END 'ASIP STALLING'
 * ------------------------------------------------------------------------------------------
 */



/*
 * The table below is used to translate bits 31:26 of the instruction
 * into a value suitable for the "opCode" field of a MemWord structure,
 * or into a special value for further decoding.
 */

#define SPECIAL 120

/* ASIP FLOAT :
#define FPARITH	121
*/

#define IFMT 1
#define JFMT 2
#define RFMT 3
#define TWO_IMM_FMT 4

typedef struct {
    int opCode;		/* Translated op code. */
    int format;		/* Format type (IFMT or JFMT or RFMT) */
} OpInfo;

/* NEW_COMMANDS:
 * -------------
 * add new instruction to optable. the position is relevant! (see.asm.c)
 */

OpInfo opTable[] = {
  /*  0: */ {SPECIAL, RFMT}, {OP_FORECAST, TWO_IMM_FMT},{OP_J, JFMT},{OP_JAL, JFMT},
  /*  4: */ {OP_BEQZ, IFMT}, {OP_BNEZ, IFMT},  {OP_RES, IFMT},  {OP_ROT, IFMT},
  /*  8: */ {OP_ADDI, IFMT}, {OP_ADDUI, IFMT}, {OP_SUBI, IFMT}, {OP_SUBUI, IFMT},
  /* 12: */ {OP_ANDI, IFMT}, {OP_ORI, IFMT},   {OP_XORI, IFMT}, {OP_LHI, IFMT},
  /* 16: */ {OP_RES, IFMT},  {OP_TRAP, IFMT},  {OP_JR, IFMT},   {OP_JALR, IFMT},
  /* 20: */ {OP_SLLI, IFMT}, {OP_BEQ, IFMT},   {OP_SRLI, IFMT}, {OP_SRAI, IFMT},
  /* 24: */ {OP_SEQI, IFMT}, {OP_SNEI, IFMT},  {OP_SLTI, IFMT}, {OP_SGTI, IFMT},
  /* 28: */ {OP_SLEI, IFMT}, {OP_SGEI, IFMT},  {OP_BNEQ, IFMT}, {OP_BGTU, IFMT},
  /* 32: */ {OP_LB, IFMT},   {OP_LH, IFMT},    {OP_BLEU, IFMT}, {OP_LW, IFMT},
  /* 36: */ {OP_LBU, IFMT},  {OP_LHU, IFMT},   {OP_RES, IFMT},  {OP_RES, IFMT},
  /* 40: */ {OP_SB, IFMT},   {OP_SH, IFMT},    {OP_BLTU, IFMT}, {OP_SW, IFMT},
  /* 44: */ {OP_BGEU, IFMT}, {OP_RES, IFMT},   {OP_RES, IFMT},  {OP_RES, IFMT},
  /* 48: */ {OP_RES, IFMT},  {OP_RES, IFMT},   {OP_RES, IFMT},  {OP_RES, IFMT},
  /* 52: */ {OP_RES, IFMT},  {OP_RES, IFMT},   {OP_RES, IFMT},  {OP_RES, IFMT},
  /* 56: */ {OP_RES, IFMT},  {OP_RES, IFMT},   {OP_RES, IFMT},  {OP_RES, IFMT},
  /* 60: */ {OP_RES, IFMT},  {OP_RES, IFMT},   {OP_RES, IFMT},  {OP_RES, IFMT}
};

/*
 * the table below is used to convert the "funct" field of SPECIAL
 * instructions into the "opCode" field of a MemWord.
 */

/* ASIP NEW_INSTRUCTIONS Change one of the OP_RES into your own command. */
int specialTable[] = {
  /*  0: */ OP_NOP,  OP_CMOV, OP_CADD, OP_MULT, OP_SLL,  OP_MULTU, OP_SRL,  OP_SRA,
  /*  8: */ OP_DIV,  OP_DIVU, OP_MOD,  OP_MODU, OP_TRAP, OP_RES, OP_RES,  OP_MAC,
  /* 16: */ OP_MAD,  OP_SWAP, OP_SLTU, OP_SGTU, OP_SLEU, OP_SGEU,  OP_XCHG, OP_AVG,

  /* 24: */ OP_AVGU, OP_FEX,  OP_MAX,  OP_LOOPFILTER,  OP_IPRED_HDC16X16,  OP_IPRED_VDC16X16,   OP_MC_HZ4,  OP_MINMAX,

  /* 32: */ OP_ADD,  OP_ADDU, OP_SUB,  OP_SUBU, OP_AND,  OP_OR,    OP_XOR,  OP_RES,
  /* 40: */ OP_SEQ,  OP_SNE,  OP_SLT,  OP_SGT,  OP_SLE,  OP_SGE,   OP_RES,  OP_RES,
  /* 48: */ OP_HT2X2CR, OP_HT4X4IL, OP_SATD4X4, OP_DCT4X4, OP_SAD16, OP_RES, OP_RES, OP_RES,
  /* 56: */ OP_RES,  OP_RES,  OP_RES,  OP_RES,  OP_RES,  OP_RES,   OP_RES,  OP_RES
};


/*
 * the table below is used to convert the "funct" field of FPARITH
 * instructions into the "opCode" field of a MemWord.
 *
int FParithTable[] = {
  OP_RES, OP_RES, OP_RES, OP_RES, OP_RES, OP_RES, OP_RES, OP_RES,
  OP_RES, OP_RES, OP_RES, OP_RES, OP_RES, OP_RES, OP_RES, OP_RES,
  OP_RES, OP_RES, OP_RES, OP_RES, OP_RES, OP_RES, OP_RES, OP_RES,
  OP_RES, OP_RES, OP_RES, OP_RES, OP_RES, OP_RES, OP_RES, OP_RES,
  OP_RES, OP_RES, OP_RES, OP_RES, OP_RES, OP_RES, OP_RES, OP_RES,
  OP_RES, OP_RES, OP_RES, OP_RES, OP_RES, OP_RES, OP_RES, OP_RES,
  OP_RES, OP_RES, OP_RES, OP_RES, OP_RES, OP_RES, OP_RES, OP_RES,
  OP_RES, OP_RES, OP_RES, OP_RES, OP_RES, OP_RES, OP_RES, OP_RES
  };
*/

/* ASIP NEW_INSTRUCTIONS
 * -------------
 * change a "" to the name of the new instruction.
 * The new name has to correspond with the number defined in dlx.h
 * TAKE CARE: The first entry is intentionally left blank, i.e. ""
 * TAKE CARE: If you leave an item blank, then all successing instructions won't be
 *            considered for cycle-counting in certain cases, which creates inconsistencies!
 * TAKE CARE: The last item has to be has to be left blank, this is used for determining
 *            the end of this aray
 */
char *operationNames[] = {
  /*  0: */ "", "ADD", "ADDI", "ADDU", "ADDUI", "AND", "ANDI", "BEQZ", "BNEZ",
  /*  9: */ "J", "JAL", "JALR", "JR", "LHI", "LB", "LH", "LW", "LBU", "LHU",
  /* 19: */ "SB", "SH", "SW", "MULT", "MULTU", "DIV", "DIVU", "MOD", "MODU",
  /* 28: */ "OR", "ORI", "SEQ", "SEQI", "SGE", "SGEI", "SGEU", "SGT", "SGTI",
  /* 37: */ "SGTU", "SLE", "SLEI", "SLEU", "SLL", "SLLI", "SLT", "SLTI", "SLTU",
  /* 46: */ "SNE", "SNEI", "SRA", "SRAI", "SRL", "SRLI", "SUB", "SUBI", "SUBU",
  /* 55: */ "SUBUI", "XOR", "XORI", "NOP", "CMOV", "BEQ", "BNEQ", "CADD", "BGTU",
  /* 64: */ "BLEU", "BLTU", "BGEU", "MAC", "MAD", "SWAP", "XCHG", "AVG", "AVGU",
  /* 73: */ "FEX", "MAX", "HT2X2CR", "HT4X4IL", "SATD4X4", "DCT4X4", "FORECAST",
  /* 80: */ "LOOPFILTER", "IPRED_HDC16X16", "IPRED_VDC16X16", "MC_HZ4", "SAD16",
  /* 85: */ "MINMAX", "ROT", ""
};



unsigned long long computeRealCycleCount(DLX* machPtr) {
  int i;
  unsigned long long realCycleCount, opCount;

  for (opCount=0, i=1; *operationNames[i]; i++) {
    opCount += machPtr->operationCount[i];
  }
  realCycleCount = opCount + machPtr->loadStoreStalls + machPtr->jumpStalls + machPtr->multDivModStalls + machPtr->specialInstructionStalls;
  //  printf("RealCycleCount=%llu; opcount=%llu; loadStoreStalls=%llu: jumpStalls=%llu; multDivModStalls=%llu; specialInstructionStalls=%llu\n", realCycleCount, opCount, machPtr->loadStoreStalls, machPtr->jumpStalls, machPtr->multDivModStalls, machPtr->specialInstructionStalls);
  return realCycleCount;
}

char* computeAndPrintRealCycleCount(DLX* machPtr) {
  int i, comma;
  static char retVal[20];
  unsigned long long cc1, cc2;

  cc1 = computeRealCycleCount(machPtr);
  for (i=0, cc2=cc1, comma=0; cc2>=1000; i+=3, comma=cc2%1000, cc2/=1000);
  comma /= 100;
  snprintf(retVal, sizeof(retVal), "%llu,%ie%i(%llu)", cc2, comma, i, cc1);
  return retVal;
}


/* The following value is used to handle virtually all special cases
 * while simulating.  The simulator normally executes in a fast path
 * where it ignores all special cases.  However, after executing each
 * instruction it checks the current serial number (total # of instructions
 * executed) agains the value below.  If that serial number has been
 * executed, then the simulator pauses to check for all possible special
 * conditions (stops, callbacks, errors, etc.).  Thus anyone that wants
 * to get a special condition handled must be sure to set checkNum below
 * so that the special-check code will be executed.  This facility means
 * that the simulator only has to check a single condition in its fast
 * path.
 */
static int checkNum;

/*
 * Forward declarations for procedures defined later in this file:
 */
static int	AddressError();
static int	BusError();
static void	Compile();
static int	ReadMem();
static int	Simulate();
static int	WriteMem();

/*
 *----------------------------------------------------------------------
 *
 * Sim_Create --
 *
 *	Create a description of an DLX machine.
 *
 * Results:
 *	The return value is a pointer to the description of the DLX
 *	machine.
 *
 * Side effects:
 *	The DLX structure gets allocated and initialized.  Several
 *	Tcl commands get registered for interp.
 *
 *----------------------------------------------------------------------
 */

DLX *
Sim_Create(memSize, interp, au, al, mu, ml, du, dl, pd)
    int memSize;		/* Number of bytes of memory to be
				 * allocated for the machine. */
    Tcl_Interp *interp;		/* Interpreter to associate with machine. */
    int au, mu, du;		/* latencies for add, multiply, and divide */
    int al, ml, dl;		/* number of add, multiply, and divide units */
    int pd;                     /* Pipeline Delay */
{
    register DLX *machPtr;
    register MemWord *wordPtr;
    int i, j;
    extern int Main_QuitCmd();

    machPtr = (DLX *) calloc(1, sizeof(DLX));
    machPtr->interp = interp;
    machPtr->numWords = (memSize+3) & ~0x3;
    machPtr->pipelineDelay = pd;

    /* ASIP STATS: imCount initialisiert.*/
    machPtr->imCount = (int*) malloc (sizeof(int) * machPtr->numWords);
    machPtr->imTolerance = 4;

    machPtr->numChars = machPtr->numWords * 4;
    machPtr->memPtr = (MemWord*)calloc(1, (unsigned)(sizeof(MemWord) * machPtr->numWords));
    if (machPtr->memPtr == 0) {
      printf("-------------------\n");
      printf("-- FATAL: Couldn't allocate enough memory to initialize the DLX-System.\n");
      printf("          Try to reduce the simulated memory with the \"-ms\" start parameter.\n\n");
      return (DLX*)0;
    }
    for (i = machPtr->numWords, wordPtr = machPtr->memPtr; i > 0;
	    i--, wordPtr++) {
	wordPtr->value = 0;
	wordPtr->opCode = OP_NOT_COMPILED;
	wordPtr->stopList = NULL;
    }
    machPtr->memScratch = (char *) malloc (machPtr->numChars);
    machPtr->endScratch = machPtr->memScratch + machPtr->numChars;


    /* ASIP PIPELINE : Initialize the values and timeStamps for the registers */
    for (i=0; i < NUM_GPRS; i++) {
      machPtr->regs[i].lastRead = 0;
      machPtr->regs[i].writePosition = 0;
      machPtr->regs[i].historyValue = (int*) malloc(machPtr->pipelineDelay * sizeof(int) );
      machPtr->regs[i].historyTimeStamp = (unsigned long*) malloc(machPtr->pipelineDelay * sizeof(unsigned long) );
      for (j=0; j < machPtr->pipelineDelay; j++) {
	machPtr->regs[i].historyValue[j] = 0;
	machPtr->regs[i].historyTimeStamp[j] = 0;
      }
    }
    writeRegister(machPtr, PC_REG, 0, 0);
    writeRegister(machPtr, NEXT_PC_REG, 1, 0);


    /* ASIP STALLING : Initialize the values for the stalling-requests */
    arrayForStallingRequests_When = (int*) malloc(machPtr->pipelineDelay * sizeof(int) );
    arrayForStallingRequests_HowLong = (int*) malloc(machPtr->pipelineDelay * sizeof(int) );
    arrayForStallingRequests_Delay = (int*) malloc(machPtr->pipelineDelay * sizeof(int) );
    for (i=0; i<machPtr->pipelineDelay; i++) {
      arrayForStallingRequests_When[i] = -1;
      arrayForStallingRequests_HowLong[i] = -1;
      arrayForStallingRequests_Delay[i] = -1;
    }
    arrayForStallingRequests_WritePosition = 0;

    /* ASIP : Miscellaneous stuff */
    machPtr->debugAssembly = 1;
    machPtr->debugBaseBlocks = 0;
    machPtr->maxTextAddr = 0;
    machPtr->maxDataAddr = 0;

    initializeForecasts();

    machPtr->badPC = 0;
    machPtr->addrErrNum = 0;
    machPtr->cycleCount = 0;
    machPtr->insCount = 0;
    machPtr->firstIns = 0;
    machPtr->branchSerial = -1;
    machPtr->branchPC = 0;
    machPtr->flags = 0;
    machPtr->stopNum = 1;
    machPtr->num_add_units = au;
    machPtr->num_mul_units = mu;
    machPtr->num_div_units = du;
    machPtr->fp_add_latency = al;
    machPtr->fp_mul_latency = ml;
    machPtr->fp_div_latency = dl;
    machPtr->stopList = NULL;
    machPtr->callBackList = NULL;
    Hash_InitTable(&machPtr->symbols, 0, HASH_STRING_KEYS);
    Io_Init(machPtr);
    Cop0_Init(machPtr);

    void Init_Handle_Trap(DLX* machPtr); /* Declaration. Implemented in stats.c */
    Init_Handle_Trap(machPtr);

    /* initialize counters */
    void statsReset(DLX* machPtr);
    statsReset(machPtr);

    Tcl_CreateCommand(interp, "asm", Asm_AsmCmd, (ClientData) machPtr,
		      (void (*)()) NULL);
    /* ASIP FLOAT :
    Tcl_CreateCommand(interp, "fget", Gp_FGetCmd, (ClientData) machPtr,
		      (void (*)()) NULL);
    Tcl_CreateCommand(interp, "fput", Gp_FPutCmd, (ClientData) machPtr,
		      (void (*)()) NULL);
    */
    Tcl_CreateCommand(interp, "get", Gp_GetCmd, (ClientData) machPtr,
		      (void (*)()) NULL);
    Tcl_CreateCommand(interp, "go", Sim_GoCmd, (ClientData) machPtr,
		      (void (*)()) NULL);
    Tcl_CreateCommand(interp, "load", Asm_LoadCmd, (ClientData) machPtr,
		      (void (*)()) NULL);
    Tcl_CreateCommand(interp, "put", Gp_PutCmd, (ClientData) machPtr,
		      (void (*)()) NULL);
    Tcl_CreateCommand(interp, "quit", Main_QuitCmd, (ClientData) machPtr,
		      (void (*)()) NULL);
    Tcl_CreateCommand(interp, "exit", Main_QuitCmd, (ClientData) machPtr,
		      (void (*)()) NULL);
    Tcl_CreateCommand(interp, "stats", Sim_DumpStats, (ClientData) machPtr,
		      (void (*)()) NULL);
    Tcl_CreateCommand(interp, "step", Sim_StepCmd, (ClientData) machPtr,
		      (void (*)()) NULL);
    Tcl_CreateCommand(interp, "stop", Stop_StopCmd, (ClientData) machPtr,
		      (void (*)()) NULL);
    Tcl_CreateCommand(interp, "trace", Sim_TraceCmd, (ClientData) machPtr,
		      (void (*)()) NULL);
    Sym_AddSymbol(machPtr, "", "memSize", memSize * 4, SYM_GLOBAL);

    return machPtr;
}

/*
 *----------------------------------------------------------------------
 * statsReset --
 *
 *	This procedure clears the various statistics which are kept on
 *	dynamic execution of the code.
 *
 * Results:
 *	None
 *
 * Side effects:
 *	Changes the related global variables.
 *
 *----------------------------------------------------------------------
 */

void statsReset(DLX* machPtr) {
    int i;

    machPtr->multDivModStalls = 0;
    machPtr->loadStoreStalls = 0;
    //    machPtr->FPstalls = 0; /* ASIP FLOAT */
    machPtr->jumpStalls = 0; /* ASIP JUMP : */
    machPtr->specialInstructionStalls = 0;
    machPtr->branchYes = 0;
    machPtr->branchNo = 0;
    for (i = 0; i <= OP_LAST; i++) {
	machPtr->operationCount[i] = 0;
	/* ASIP STATS: imCount zurckgesetzt: */
	machPtr->imCount[i] = 0;
    }

    // TODO: I think there are more stats that need to be cleared
}


/*
 *----------------------------------------------------------------------
 *
 * Sim_DumpStats --
 *
 *	This procedure is invoked to process the "stats" Tcl command.
 *	See the user documentation for details on what it does.
 *
 * Results:
 *	A standard Tcl result.
 *
 * Side effects:
 *	See the user documentation.
 *
 *----------------------------------------------------------------------
 */

int
Sim_DumpStats(machPtr, interp, argc, argv)
    DLX *machPtr;			/* Machine description. */
    Tcl_Interp *interp;			/* Current interpreter. */
    int argc;				/* Number of arguments. */
    char **argv;			/* Argument strings. */
{
    /* ASIP STATS: doIMCount und doBaseBlocks hinzugefgt und den imCount im laufe der Methode ausgewertet*/
    int i, intCount;
    int doStalls = 0, doOpCount = 0, doFPpending = 0, 
        doBranch = 0, doHW = 0, doReset = 0, doIMCount = 0, doIMCountColumn = 0,
        doBaseBlocks = 0, doWarnings = 0;
    char *opName = *argv;
    char tempString[101];
    entry *tempEntry;
    int imLineNumberFrom, imCountMax, imCountMin, imCurrentCount, imNumberOfBlocks;
    FILE* profileBaseBlocksFile = 0;
    FILE* profileAddressesFile = 0;

    /* default is to perform the ALL operation */
    if (argc == 1) {
	doStalls = doOpCount = doFPpending = doBranch = doHW = doIMCount = doBaseBlocks = doWarnings = 1;
    } else while (++argv, --argc) {
      for (i=0; i<100 && (*argv)[i]!='\0'; i++) tempString[i] = toupper((*argv)[i]);
      tempString[i] = '\0';
	if        (!strcmp(tempString, "RESET")) {
	    doReset = 1;
	} else if (!strcmp(tempString, "STALLS")) {
	    doStalls = 1;
	} else if (!strcmp(tempString, "OPCOUNT")) {
	    doOpCount = 1;
	} else if (!strcmp(tempString, "BRANCH")) {
	    doBranch = 1;
	} else if (!strcmp(tempString, "HW")) {
	    doHW = 1;
	} else if (!strcmp(tempString, "WARNINGS")) {
	    doWarnings = 1;
	} else if (!strcmp(tempString, "IMCOUNT")) {
	    doIMCount = 1;
	    doIMCountColumn = 0;
	} else if (!strcmp(tempString, "IMCOUNT2")) {
	    doIMCount = 1;
	    doIMCountColumn = 1;
	} else if (!strcmp(tempString, "IMCOUNT3")) {
	    doIMCount = 1;
	    doIMCountColumn = 2;
	} else if (!strcmp(tempString, "BASEBLOCKS")) {
	    doBaseBlocks = 1;
	} else if (!strcmp(tempString, "ALL")) {
	    /* all prints everything, but does not reset */
	    doStalls = doOpCount = doFPpending = doBranch = doHW = doIMCount = doBaseBlocks = doWarnings = 1;
	    doIMCountColumn = 0;
	} else {
	    sprintf(interp->result,
		"illegal option:  should be \"%.50s\"[hw] [opcount] [stalls] [branch] [imcount] [imcount2] [imcount3] [baseblocks] [reset] [warnings] [all]", opName);
	    return TCL_ERROR;
	}
    }

    if (doHW) {
      printf("\nMemory size: %lli bytes = %lli words. Maximum address you can \"get\": 0x%llx. \n",
	     (long long)4*machPtr->numWords, (long long)machPtr->numWords, (long long)(4*machPtr->numWords-4)  );
    }

    if (doWarnings) {
      printf("\n%u Warnings for unresolved data dependencies printed,\n", warningCounter_UnresolvedDependency);
      printf("%u Warnings for successive load/store commands printed and\n", warningCounter_SuccessiveLoadStore);
      printf("%u Warnings for load/stores in the text section printed.\n", warningCounter_LoadStoreTextSection);
    }

    if (doOpCount) {
	printf("\n\t\t\t\tINTEGER OPERATIONS\n");
	printf("\t\t\t\t==================\n");
	for (intCount = 0, i = 1; *operationNames[i]; i++) {
	    if (i % 4 == 1)
	        putchar('\n');
	    printf("%8s %8d  ", operationNames[i], machPtr->operationCount[i]);
	    intCount += machPtr->operationCount[i];
	}
	printf("\nTotal integer operations = %d\n\n", intCount);
	printf("Total cycles = %s\n", computeAndPrintRealCycleCount(machPtr));
	printf("Current cycleCount = %lu  (Differs from the total cycles, if an cycleCount-overflow happened)\n", machPtr->cycleCount==0?0:machPtr->cycleCount-1);
	interp->result[0] = '\0';
    }

    if (doStalls) {
      printf("\nMult/Div/Mod Stalls = %llu cycles\n", machPtr->multDivModStalls);
      printf("Load/Store Stalls = %llu cycles\n", machPtr->loadStoreStalls);
      printf("Jump/Branch Stalls = %llu cycles (for all jumps and taken branches)\n", machPtr->jumpStalls);  /* ASIP JUMP : */
      printf("SpecialInstruction Stalls = %llu cycles\n", machPtr->specialInstructionStalls);
    }

    if (doBranch) {
      int total = machPtr->branchYes + machPtr->branchNo;
      if (!total) printf ("\nNo branch instructions executed.\n");
      else 
	printf ("\nBranches:  total %d, taken %d (%.2lf%%), untaken %d (%.2lf%%)\n", 
		total, machPtr->branchYes, 100.0 * machPtr->branchYes / total, 
		machPtr->branchNo, 100.0 * machPtr->branchNo / total);
    }

    if (doIMCount) {
      printf("\n\t\tINSTRUCTION MEMORY COUNT\n");
      printf("\t\t========================\n");

      if ( initializeSortArray(machPtr->numWords) < 0) {
	printf("Couldn't allocat memory to sort the internal array.\n");
	printf("These stats won't be printed. Reduce the simulated MemorySize (-ms starting parameter) or increase the free memory\n");
      } else {
	imCountMax = 0;
	imCountMin = 0;
	imNumberOfBlocks = 0;
	for (intCount=0; intCount<machPtr->numWords; intCount++) {
	  imCurrentCount = machPtr->imCount[intCount];
	  if (imCurrentCount > 0) {
	    if (imCountMax==0) {
	      imCountMax = imCurrentCount;
	      imCountMin = imCurrentCount;
	      imLineNumberFrom = intCount;
	      continue;
	    }
	    if (imCurrentCount<=imCountMax && imCurrentCount>=imCountMin) {
	      continue;
	    }
	    if (imCurrentCount<imCountMin && imCountMax-imCurrentCount <= machPtr->imTolerance) {
	      imCountMin = imCurrentCount;
	      continue;
	    }
	    if (imCurrentCount>imCountMax && imCurrentCount-imCountMin <= machPtr->imTolerance) {
	      imCountMax = imCurrentCount;
	      continue;
	    }
	  }
	  if (imCountMax > 0) {
	    addEntry(imLineNumberFrom, intCount, imCountMin, imCountMax);
	    imNumberOfBlocks++;
	  }
	  imCountMax = imCurrentCount;
	  imCountMin = imCurrentCount;
	  imLineNumberFrom = intCount;
	}
	sortArray(0, imNumberOfBlocks-1, doIMCountColumn);

	printf("# of executions\t    starting address\t# of commands\n");
	for (intCount=0; intCount<machPtr->numWords; intCount++) {
	  tempEntry = getEntry(intCount);
	  if (tempEntry->lineCounterMax>0) {
	    printf("\t%i +- %i\t\t    %i\t\t    %i\n", (tempEntry->lineCounterMin+tempEntry->lineCounterMax)/2, (int)((tempEntry->lineCounterMax-tempEntry->lineCounterMin+1)/2), 4*tempEntry->lineNumberFrom, tempEntry->lineNumberTo-tempEntry->lineNumberFrom);
	  }
	}
	printf("\nTo watch the commands use: \"get {startingAddress} i{#OfCommands}\".\n");
      }
      if (machPtr->profileAddressesFileName!=0) {
	  profileAddressesFile = fopen(machPtr->profileAddressesFileName, "w");
	  int stop=0;
	  for (intCount=0; intCount<machPtr->maxTextAddr; intCount++)
	    if(machPtr->imCount[intCount]!=0)
	      stop=intCount;
	  for (intCount=0; intCount<stop; intCount++) {
	    fprintf(profileAddressesFile, "%i\n", machPtr->imCount[intCount]);  // TODO: Multicycle mitz�hlen
	  }
	  fclose(profileAddressesFile);
	  profileAddressesFile = 0;
	}

    }

    if (doBaseBlocks) {
	printf("\n%s\n", align("BASE BLOCKS", 68, 1));
	printf("%s\n",   align("===========", 68, 1));
	printf("---------------------------------------------------------------------------------------------------------------\n");
	printf("%s|%s|%s| NumberOfExecutions:\n", align("StartAddress:", 34, 0), align("EndAddress:", 34, 0), align("NumberOfCommands:", 19, 0) );
	printf("----------------------------------|----------------------------------|-------------------|---------------------\n");
	for (intCount=0; intCount<numberOfBaseBlocks; intCount++) {
	  snprintf(tempString, 20, "%li", baseBlockList[intCount].startAddress);
	  printf("%s:", align(tempString, 6, 1) );
	  snprintf(tempString, 20, "%s %s", baseBlockList[intCount].startName, baseBlockList[intCount].startJumpTarget);
	  printf(" %s|", align(tempString, 26, -1) );

	  snprintf(tempString, 20, "%li", baseBlockList[intCount].endAddress);
	  printf("%s:", align(tempString, 6, 1) );
	  snprintf(tempString, 20, "%s %s", baseBlockList[intCount].endName, baseBlockList[intCount].endJumpTarget);
	  printf(" %s|", align(tempString, 26, -1) );

	  snprintf(tempString, 20, "%li", (baseBlockList[intCount].endAddress-baseBlockList[intCount].startAddress+4)/4);
	  printf("%s|", align(tempString, 19, 0) );
	  snprintf(tempString, 20, "%i", machPtr->imCount[ baseBlockList[intCount].startAddress/4 ]);
	  printf("%s\n", align(tempString, 10, 1) );
	}
	printf("\nTo see the commands of a specific BaseBlock use \"get {StartAddress} i{NumberOfCommands}\".\n\n");

	if (machPtr->profileBaseBlocksFileName!=0) {
	  profileBaseBlocksFile = fopen(machPtr->profileBaseBlocksFileName, "w");
	  fprintf(profileBaseBlocksFile, "#### List of different label names for the same address:\n");
	  fprintf(profileBaseBlocksFile, "#### Syntax: #:<TAB>LabelA_Name<TAB>LabelA_JumpTarget<TAB>LabelB_Name<TAB>LabelB_JumpTarget\n");
	  for (intCount=0; intCount<numberOfEqualLabels; intCount++) {
	    fprintf(profileBaseBlocksFile, "#:\t%s\n", equalLabelsList[intCount]);
	  }
	  fprintf(profileBaseBlocksFile, "\n#### List of base blocks with number of executions and used special instructions:\n");
	  fprintf(profileBaseBlocksFile,   "#### Syntax: startLabel<TAB>startJumpInstruction<TAB>endLabel<TAB>endJumpInstruction<TAB>\n");
	  fprintf(profileBaseBlocksFile,   "####         startAddress<TAB>numberOfExecutions<TAB>executionTime<TAB>CSV{specialInstructions}<TAB>\n");
	  fprintf(profileBaseBlocksFile,   "####         CSV{SuccessingBaseBlocks(StartingAddress, Counter)}\n");
	  for (intCount=0; intCount<numberOfBaseBlocks; intCount++) {
	    fprintf(profileBaseBlocksFile, "%s\t%s\t%s\t%s\t%lu\t%i\t%i\t%s\t", baseBlockList[intCount].startLabel, baseBlockList[intCount].startJumpInstruction,
		    baseBlockList[intCount].endLabel, baseBlockList[intCount].endJumpInstruction, baseBlockList[intCount].startAddress/4,
		    machPtr->imCount[ baseBlockList[intCount].startAddress/4 ], baseBlockList[intCount].executionTime, baseBlockList[intCount].specialInstructions);
	    char* sepa = "";
	    int idx;
	    int successorNumber;
	    // print the CSVs for the successing baseblocks (how often are they reached from this baseblock
	    for (idx=0; idx < baseBlockList[intCount].successingBaseBlocks_Position; idx++) {
	      successorNumber = baseBlockList[intCount].successingBaseBlocksNumbers_List[idx];
	      fprintf(profileBaseBlocksFile, "%s%lu:%i", sepa, baseBlockList[successorNumber].startAddress/4,
		      baseBlockList[intCount].successingBaseBlocksCounters_List[idx]);
	      sepa = ", ";
	    }
	    fprintf(profileBaseBlocksFile, "\n");

	  }
	  fprintf(profileBaseBlocksFile, "\n#### List of JumpTable Usages:");
	  fprintf(profileBaseBlocksFile, "\n####   Syntax is: \"#;<TAB>BaseBlockLabel<TAB>CSV(JumpTargets)\"");
	  fprintf(profileBaseBlocksFile, "\n####   \"BaseBlockLabel\" is the starting label of the baseBlock where the JumpTable is used, e.g. L10.");
	  fprintf(profileBaseBlocksFile, "\n####   Then in the above Base Block List there must be something like: \"L10<TAB><TAB><TAB>jr\".");
	  fprintf(profileBaseBlocksFile, "\n####   \"CSV\" are the Comma Seperated Values of the possible Jump Targets in this Jump Table\n");
	  for (intCount=0; intCount<getNumberOfJumpTableUsages(); intCount++) {
	    fprintf(profileBaseBlocksFile, "#;\t");
	    printJumpTableUsage(profileBaseBlocksFile, intCount);
	    fprintf(profileBaseBlocksFile, "\n");
	  }
	  fclose(profileBaseBlocksFile);
	  profileBaseBlocksFile = 0;
	}
    }

    if (doReset) {
	statsReset(machPtr);
    }

    return TCL_OK;
}

/*
 *----------------------------------------------------------------------
 *
 * Sim_GoCmd --
 *
 *	This procedure is invoked to process the "go" Tcl command.
 *	See the user documentation for details on what it does.
 *
 * Results:
 *	A standard Tcl result.
 *
 * Side effects:
 *	See the user documentation.
 *
 *----------------------------------------------------------------------
 */

int
Sim_GoCmd(machPtr, interp, argc, argv)
    DLX *machPtr;			/* Machine description. */
    Tcl_Interp *interp;			/* Current interpreter. */
    int argc;				/* Number of arguments. */
    char **argv;			/* Argument strings. */
{
    if (argc > 2) {
	sprintf(interp->result,
		"too many args:  should be \"%.50s\" [address]", argv[0]);
	return TCL_ERROR;
    }

    if (argc == 2) {
	char *end;
	int newPc;

	if (Sym_EvalExpr(machPtr, (char *) NULL, argv[1], 0, &newPc, &end)
		!= TCL_OK) {
	    return TCL_ERROR;

	  }
	if ((*end != 0) || (newPc & 0x3)) {
	    sprintf(interp->result,
		    "\"%.50s\" isn't a valid starting address", argv[1]);
	    return TCL_ERROR;
	}
	writeRegister(machPtr, PC_REG, ADDR_TO_INDEX(newPc), 0 );
	writeRegister(machPtr, NEXT_PC_REG, ADDR_TO_INDEX(newPc)+1, 0);
	machPtr->flags = 0;
	machPtr->badPC = 0;
    }

    return Simulate(machPtr, interp, 0);
}

/*
 *----------------------------------------------------------------------
 *
 * Sim_StepCmd --
 *
 *	This procedure is invoked to process the "step" Tcl command.
 *	See the user documentation for details on what it does.
 *
 * Results:
 *	A standard Tcl result.
 *
 * Side effects:
 *	See the user documentation.
 *
 *----------------------------------------------------------------------
 */

int
Sim_StepCmd(machPtr, interp, argc, argv)
    DLX *machPtr;			/* Machine description. */
    Tcl_Interp *interp;			/* Current interpreter. */
    int argc;				/* Number of arguments. */
    char **argv;			/* Argument strings. */
{
    int numberOfSteps = 1;
    if (argc > 2) {
	sprintf(interp->result,
		"too many args:  should be \"%.50s\" [address]", argv[0]);
	return TCL_ERROR;
    }
    if (argc == 2) {
      /* ASIP : New Step Command: "Step {Number}" will make {Number} Steps. Default is 1.
	char *end;
	int newPc;

	if (Sym_EvalExpr(machPtr, (char *) NULL, argv[1], 0, &newPc, &end)
		!= TCL_OK) {
	    return TCL_ERROR;
	}
	if ((*end != 0) || (newPc & 0x3)) {
	    sprintf(interp->result,
		    "\"%.50s\" isn't a valid address", argv[1]);
	    return TCL_ERROR;
	}
	writeRegister(machPtr, PC_REG, ADDR_TO_INDEX(newPc), 0);
	writeRegister(machPtr, NEXT_PC_REG, ADDR_TO_INDEX(newPc)+1, 0);
	machPtr->flags = 0;
	machPtr->badPC = 0;
      */
      numberOfSteps = atoi(argv[1]);
      if (numberOfSteps<1) {
	printf("Unexpected Step-size.   No step will be made.\n");
	return 0;
      }
    }

    return Simulate(machPtr, interp, numberOfSteps);
}

/*
 *----------------------------------------------------------------------
 *
 * Sim_CallBack --
 *
 *	Arrange for a particular procedure to be invoked after a given
 *	number of instructions have been simulated.
 *
 * Results:
 *	None.
 *
 * Side effects:
 *	After numIns instructions have been executed, proc will be
 *	invoked in the following way:
 *
 *	void
 *	proc(clientData, machPtr)
 *	    ClientData clientData;
 *	    DLX *machPtr;
 *	{
 *	}
 *
 *	The clientData and machPtr arguments will be the same as those
 *	passed to this procedure.
 *----------------------------------------------------------------------
 */

void
Sim_CallBack(machPtr, numIns, proc, clientData)
    DLX *machPtr;		/* Machine of interest. */
    int numIns;			/* Call proc after this many instructions
				 * have been executed in machPtr. */
    void (*proc)();		/* Procedure to call. */
    ClientData clientData;	/* Arbitrary one-word value to pass to proc. */
{
    register CallBack *cbPtr;

    cbPtr = (CallBack *) calloc(1, sizeof(CallBack));
    cbPtr->serialNum = machPtr->insCount + numIns;
    cbPtr->proc = proc;
    cbPtr->clientData = clientData;
    if ((machPtr->callBackList == NULL) ||
	    (cbPtr->serialNum < machPtr->callBackList->serialNum)) {
	cbPtr->nextPtr = machPtr->callBackList;
	machPtr->callBackList = cbPtr;
    } else {
	register CallBack *cbPtr2;

	for (cbPtr2 = machPtr->callBackList; cbPtr2->nextPtr != NULL;
		cbPtr2 = cbPtr2->nextPtr) {
	    if (cbPtr->serialNum < cbPtr2->nextPtr->serialNum) {
		break;
	    }
	}
	cbPtr->nextPtr = cbPtr2->nextPtr;
	cbPtr2->nextPtr = cbPtr;
    }
    if (cbPtr->serialNum < checkNum) {
	checkNum = cbPtr->serialNum;
    }
}

/*
 *----------------------------------------------------------------------
 *
 * Sim_Stop --
 *
 *	Arrange for the execution of the machine to stop after the
 *	current instruction.
 *
 * Results:
 *	None.
 *
 * Side effects:
 *	The machine will stop executing (if it was executing in the
 *	first place).
 *
 *----------------------------------------------------------------------
 */

void
Sim_Stop(machPtr)
    DLX *machPtr;			/* Machine to stop. */
{
    machPtr->flags |= STOP_REQUESTED;
    checkNum = machPtr->insCount + 1;
}

/*
 *----------------------------------------------------------------------
 *
 * Sim_GetPC --
 *
 *	This procedure computes the current program counter for
 *	machPtr.
 *
 * Results:
 *	The return value is the current program counter for the
 *	machine.  This is a bit tricky to compute because the PC
 *	is stored as an index, and there may have been an unaligned
 *	value put in the PC.
 *
 * Side effects:
 *	None.
 *
 *----------------------------------------------------------------------
 */

unsigned int
Sim_GetPC(machPtr)
    register DLX *machPtr;		/* Machine whose PC is wanted. */
{
    if ((machPtr->badPC != 0) && (machPtr->insCount >= machPtr->addrErrNum)) {
	return machPtr->badPC;
    }
    return INDEX_TO_ADDR( readRegister(machPtr, PC_REG, 0) );
}

/*
 *----------------------------------------------------------------------
 *
 * ReadMem --
 *
 *	Read a word from DLX memory.
 *
 * Results:
 *	Under normal circumstances, the result is 1 and the word at
 *	*valuePtr is modified to contain the DLX word at the given
 *	address.  If no such memory address exists, or if a stop is
 *	set on the memory location, then 0 is returned to signify that
 *	simulation should stop.
 *
 * Side effects:
 *	None.
 *
 *----------------------------------------------------------------------
 */

static int
ReadMem(machPtr, address, valuePtr)
    register DLX *machPtr;	/* Machine whose memory is being read. */
    unsigned int address;	/* Desired word address. */
    int *valuePtr;		/* Store contents of given word here. */
{
    unsigned int index;
    int result;
    register MemWord *wordPtr;

    index = ADDR_TO_INDEX(address);
    if (index < machPtr->numWords) {
	wordPtr = &machPtr->memPtr[index];
	if ((wordPtr->stopList != NULL)
		&& (machPtr->insCount != machPtr->firstIns)) {
	    result = Stop_Execute(machPtr, wordPtr->stopList);
	    if ((result != TCL_OK) || (machPtr->flags & STOP_REQUESTED)) {
		return 0;
	    }
	}
	if (machPtr->refTraceFile)
	  fprintf( machPtr->refTraceFile, "0 %x\n", address );
	*valuePtr = wordPtr->value;
	return 1;
    }

    /*
     * The word isn't in the main memory.  See if it is an I/O
     * register.
     */

    if (Io_Read(machPtr, (address & ~0x3), valuePtr) == 1) {
	return 1;
    }

    /*
     * The word doesn't exist.  Register a bus error.  If interrupts
     * ever get implemented for bus errors, this code will have to
     * change a bit.
     */

    (void) BusError(machPtr, address, 0);
    return 0;
}

/*
 *----------------------------------------------------------------------
 *
 * WriteMem --
 *
 *	Write a value into the DLX's memory.
 *
 * Results:
 *	If the write completed successfully then 1 is returned.  If
 *	any sort of problem occurred (such as an addressing error or
 *	a stop) then 0 is returned;  the caller should stop simulating.
 *
 * Side effects:
 *	The DLX memory gets updated with a new byte, halfword, or word
 *	value.
 *
 *----------------------------------------------------------------------
 */

static int
WriteMem(machPtr, address, size, value)
    register DLX *machPtr;	/* Machine whose memory is being read. */
    unsigned int address;	/* Desired word address. */
    int size;			/* Size to be written (1, 2, or 4 bytes). */
    int value;			/* New value to write into memory. */
{
    unsigned int index;
    int result;
    register MemWord *wordPtr;

    if (((size == 4) && (address & 0x3)) || ((size == 2) && (address & 0x1))) {
	(void) AddressError(machPtr, address, 0);
	return 0;
    }
    index = ADDR_TO_INDEX(address);
    if (index < machPtr->numWords) {
	wordPtr = &machPtr->memPtr[index];
	if ((wordPtr->stopList != NULL)
		&& (machPtr->insCount != machPtr->firstIns)) {
	    result = Stop_Execute(machPtr, wordPtr->stopList);
	    if ((result != TCL_OK) || (machPtr->flags & STOP_REQUESTED)) {
		return 0;
	    }
	}
	if (machPtr->refTraceFile)
	  fprintf(machPtr->refTraceFile, "1 %x\n", address);
	if (size == 4) {
	    wordPtr->value = value;
	} else if (size == 2) {
	    if (address & 0x2) {
		wordPtr->value = (wordPtr->value & 0xffff0000)
			| (value & 0xffff);
	    } else {
		wordPtr->value = (wordPtr->value & 0xffff)
			| (value << 16);
	    }
	} else {
	    switch (address & 0x3) {
		case 0:
		    wordPtr->value = (wordPtr->value & 0x00ffffff)
			    | (value << 24);
		    break;
		case 1:
		    wordPtr->value = (wordPtr->value & 0xff00ffff)
			    | ((value & 0xff) << 16);
			    break;
		case 2:
		    wordPtr->value = (wordPtr->value & 0xffff00ff)
			    | ((value & 0xff) << 8);
		    break;
		case 3:
		    wordPtr->value = (wordPtr->value & 0xffffff00)
			    | (value & 0xff);
		    break;
	    }
	}
	wordPtr->opCode = OP_NOT_COMPILED;
	return 1;
    }

    /*
     * Not in main memory.  See if it's an I/O device register.
     */

    if (Io_Write(machPtr, address, value, size) == 1) {
	return 1;
    }

    (void) BusError(machPtr, address, 0);
    return 0;
}

/*
 *----------------------------------------------------------------------
 *
 * Simulate --
 *
 *	This procedure forms the core of the simulator.  It executes
 *	instructions until either a break occurs or an error occurs
 *	(or until a single instruction has been executed, if single-
 *	stepping is requested).
 *
 * Results:
 *	A standard Tcl result.
 *
 * Side effects:
 *	The state of *machPtr changes in response to the simulation.
 *	Return information may be left in *interp.
 *
 *----------------------------------------------------------------------
 */


/* ASIP PIPELINE : Einlesen der Quellregister */
#define LoadRegisterS1	rs1 = readRegister(machPtr, wordPtr->rs1, 1);
#define LoadRegisterS2	rs2 = readRegister(machPtr, wordPtr->rs2, 1);
#define LoadRegisterS3	rs3 = readRegister(machPtr, wordPtr->rs3, 1);
#define LoadRegisterD	rd  = readRegister(machPtr, wordPtr->rd,  1);

/* ASIP : Zum pruefen auf die Load/Store - Probleme der ASIP CPU. */
#define LoadStore_None  0
#define LoadStore_Load  1
#define LoadStore_Store 2

#define CYC_CNT_RESET 2097151  // i.e. 2^21 - 1
//(((unsigned int)-1)>>1)     /* OLD:16348 How often to reset the cycle count to prevent wrap around problems. */
static int
Simulate(machPtr, interp, singleStep)
    register DLX *machPtr;		/* Machine description. */
    Tcl_Interp *interp;			/* Tcl interpreter, for results and
					 * break commands. */
    int singleStep;			/* Non-zero means execute exactly
					 * one instruction, regardless of
					 * breaks found. */
{
    register MemWord *wordPtr;		/* Memory word for instruction. */
    register unsigned int pc;		/* Current ins. address, then new
					 * nextPc value. */
    unsigned int tmp;
#define TEMP_STRING_SIZE 32
    char tempString[TEMP_STRING_SIZE];
    static char symGetString_Backup[100];  /*  A Backup from a Sym_GetString() result. This is needed, because the method
					       re-uses it's output-space. Used for DEBUG_ASSEMBLY. */
    int rs1, rs2, rs3, rd, result, value;
    char *errMsg, msg[20];
    int last_pc, stalled, trapCaught;
    int memoryMapped, stallTime;

    /* ASIP Jump : ASIP meister has 2 delay slots for jumps, although the 2nd does not get a WriteEnabled-Signal.
                   If a branch is taken, then this variable should be set to 2.
	           If the value is <0 then do nothing, else decrease it. If the decreased value is 0 then add another clock-cycle.
                   This simulates 1 Delay-Slot with 1 following command without WriteEnabled-Signal. */
    static int additionalClockCycleForJump = 0;
    static unsigned int clockcounter = 0;


    /* ASIP : These are used to test for the Load/Store - Problems from the ASIP Meister CPUs. */
    static int loadStore_lastCommand, loadStore_thisCommand = LoadStore_None;

    /*
     * Can't continue from an addressing error on the program counter.
     */
    if ((machPtr->badPC != 0) && (machPtr->addrErrNum == machPtr->insCount)) {
	sprintf(interp->result,
		"address error on instruction fetch, pc = 0x%x",
		machPtr->badPC);
	return TCL_ERROR;
    }

    machPtr->flags &= ~STOP_REQUESTED;
    machPtr->firstIns = machPtr->insCount;
    Io_BeginSim(machPtr);

    setCheckNum:
    if (machPtr->callBackList != NULL) {
	checkNum = machPtr->callBackList->serialNum;
    } else {
	checkNum = machPtr->insCount+100000;
    }
    if ((machPtr->badPC != 0) && (machPtr->addrErrNum > machPtr->insCount)) {
	if (checkNum > machPtr->addrErrNum) {
	    checkNum = machPtr->addrErrNum;
	}
    } else {
	machPtr->badPC = 0;
    }
    if (singleStep) {
	checkNum = machPtr->insCount+1;
    }
    while (1) {
	stalled = 0;
	trapCaught = 0;

	clockcounter++;

	/*
	 * Fetch an instruction, and compute the new next pc (but don't
	 * store it yet, in case the instruction doesn't complete).
	 */
	pc = readRegister(machPtr, PC_REG, 0);
	if (pc >= machPtr->numWords) {
	    result = BusError(machPtr, INDEX_TO_ADDR(pc), 1);
	    if (result != TCL_OK) {
		goto stopSimulation;
	    } else {
		goto endOfIns;
	    }
	}
	/*
	 * Check, whether a new Base Block has started and if yes
	 * write the start address of this Base Block to the
	 * trace File, if requested.
	 */
	if (machPtr->traceBaseBlocksFile!=0 || machPtr->profileBaseBlocksFileName!=0) {
	  static int baseBlockNumber = -1;
	  static int lastBaseBlockCycleCount = 0;
	  static int traceBaseBlocksFileCounter = 0;
	  int tempBaseBlockNumber = isAddressBBStart(pc*4);
	  int cycleCount;
	  if (tempBaseBlockNumber>=0) {
	    if (baseBlockNumber >= 0) {
	      cycleCount = machPtr->cycleCount-lastBaseBlockCycleCount;
	      //printf("___ Takt %lu: BB %i an Adresse %lu wurde fuer %i Takte ausgefuehrt\n", machPtr->cycleCount, baseBlockNumber, baseBlockList[baseBlockNumber].startAddress, cycleCount);

	      /* Sometimes the execution time for one basic block varies +-1 cycles. This code is meant for reporting this.
	      if (baseBlockList[baseBlockNumber].executionTime!=0 && baseBlockList[baseBlockNumber].executionTime!=cycleCount) {
		printf("\n++++ WARNING: Old Cunter:%i New Counter:%i\n", baseBlockList[baseBlockNumber].executionTime, cycleCount);
		printf("___ Takt %lu: BB %i an Adresse %lu wurde fr %i Takte ausgefhrt\n", machPtr->cycleCount, baseBlockNumber, baseBlockList[baseBlockNumber].startAddress, cycleCount);
		printf("%s\t%s\t%s\t%s\t%lu\t%i\t%i\t%s\n", baseBlockList[baseBlockNumber].startLabel, baseBlockList[baseBlockNumber].startJumpInstruction,
		    baseBlockList[baseBlockNumber].endLabel, baseBlockList[baseBlockNumber].endJumpInstruction, baseBlockList[baseBlockNumber].startAddress/4,
		    machPtr->imCount[ baseBlockList[baseBlockNumber].startAddress/4 ], baseBlockList[baseBlockNumber].executionTime, baseBlockList[baseBlockNumber].specialInstructions);
	      }
	      */
	      baseBlockList[baseBlockNumber].executionTime = cycleCount;

	      // Each baseblock B has some successors and here we count how
	      // often each of those successors will be reached from baseblock B.
	      //   Here: 'tempBaseBlockNumer' is the successing baseBlockNumber,
	      //   which will be counted in 'baseBlockNumber'.
	      increaseSuccessingBaseBlockCount(baseBlockNumber, tempBaseBlockNumber);
	    }

	    baseBlockNumber = tempBaseBlockNumber;
	    lastBaseBlockCycleCount = machPtr->cycleCount;
	    if (machPtr->traceBaseBlocksFile!=0) {
	      fprintf(machPtr->traceBaseBlocksFile, "%i", pc);
	      if (traceBaseBlocksFileCounter++>9) {
		fprintf(machPtr->traceBaseBlocksFile, "\n");
		traceBaseBlocksFileCounter = 0;
	      } else {
		fprintf(machPtr->traceBaseBlocksFile, "\t");
	      }
	    }

	  }
	}


	/* ASIP JUMP : ASIP meister has 2 delay slots for jumps, although the 2nd does not get a WriteEnabled-Signal.
                       If a branch is taken, then this variable should be set to 2.
	               If the value is <0 then do nothing, else decrease it. If the decreased value is 0
		       then add another clock-cycle.
                       This simulates 1 Delay-Slot with 1 following command without WriteEnabled-Signal. */
	if (additionalClockCycleForJump>=0) {
	  additionalClockCycleForJump--;
	  if (additionalClockCycleForJump==0) {
	    machPtr->cycleCount++;
	    machPtr->jumpStalls++;
	  }
	}

	/* ASIP STALLING : Check for a pending request for a pipeline stall and perform it if necessary */
	checkForCurrentPipelineStallsAndPerformThem(machPtr);


	/* ASIP STATS: increase IMCount: */
	machPtr->imCount[pc]++;

	if (machPtr->refTraceFile)
	  fprintf(machPtr->refTraceFile, "2 %x\n", INDEX_TO_ADDR(pc));
	wordPtr = &machPtr->memPtr[pc];
	last_pc = pc;
	pc = readRegister(machPtr, NEXT_PC_REG, 0) + 1;

	/*
	 * Handle breaks on the instruction, if this isn't the first
	 * instruction executed.
	 */
	if ((wordPtr->stopList != NULL)
		&& (machPtr->insCount != machPtr->firstIns)) {
	    result = Stop_Execute(machPtr, wordPtr->stopList);
	    if ((result != TCL_OK) || (machPtr->flags & STOP_REQUESTED)) {
		goto stopSimulation;
	    }
	}

        loadStore_lastCommand = loadStore_thisCommand;
        loadStore_thisCommand = LoadStore_None;
	/*
	 * Execute the instruction.
	 */
	execute:
	machPtr->operationCount[(int)wordPtr->opCode]++;


	/* ASIP COMMANDS ASIP NEW_INSTRUCTIONS : In diesem Switch die Implementierung der neuen Befehle eintragen. */
	/* ASIP PIPELINE : In jedem Befehl den Zugriff auf die Register an die Methoden delegiert.
	                   Das wird jetzt durch die LoadRegister Makros erledigt. */
	switch (wordPtr->opCode) {

          /* ASIP COMMANDS : */  
          case OP_CMOV:  /* Format: cmov rd, rs1, rcond */
            LoadRegisterS1 LoadRegisterS2
	      /* printf("Conditional Move gefunden! ConditionalRegister r%i hat den Wert %i\n", wordPtr->rs2, rs2 );*/
            if ( rs2 != 0 ) {
	      /* printf("Conditional Move von r%i nach r%i wurde ausgefhrt!\n", wordPtr->rs1, wordPtr->rd);*/
              writeRegister(machPtr, wordPtr->rd, rs1, 0);
            } else {
              /* printf("Conditional Move von r%i nach r%i wurde NICHT ausgefhrt!\n", wordPtr->rs1, wordPtr->rd);*/
            }
          break;


	  /* ASIP COMMANDS : */
          case OP_CADD:  /* Format: cadd rd, rs1, rs2, rcond */
            LoadRegisterS1 LoadRegisterS2 LoadRegisterS3
	    /* printf("Conditional Add gefunden! ConditionalRegister r%i hat den Wert %i\n", wordPtr->rs3, rs3);*/
            if ( rs3 != 0 ) {
              /* printf("Conditional Add mit r%i + r%i nach r%i wurde ausgefhrt!\n",
		 wordPtr->rs1, wordPtr->rs2, wordPtr->rd);*/
              writeRegister(machPtr, wordPtr->rd, rs1 + rs2, 0);
            } else {
              /*printf("Conditional Add mit r%i + r%i nach r%i wurde NICHT ausgefhrt!\n",
		wordPtr->rs1, wordPtr->rs2, wordPtr->rd);*/
            }
          break;


	  /* ASIP COMMANDS : MERGE SEQ BEZ */
          case OP_BEQ:  /* Format: beq rs1, rs2, label */
            LoadRegisterS1 LoadRegisterS2
            if(rs1 == rs2) {
	      pc = readRegister(machPtr, NEXT_PC_REG, 0) + ADDR_TO_INDEX(wordPtr->extra);
	      machPtr->branchYes++;
              /* ASIP JUMP : */
              additionalClockCycleForJump = 2;
	      if (machPtr->debugAssembly) {
		memcpy(symGetString_Backup, Sym_GetString(machPtr, INDEX_TO_ADDR(last_pc)), 100*sizeof(char) );
		printf("debug:\tCycle:%lu  \tIM-Addr:0x%x(%.100s)  \t\tBEQ to IM-Addr:0x%x(%.100s).\n",
		       machPtr->cycleCount,
		       INDEX_TO_ADDR(last_pc), symGetString_Backup,
		       INDEX_TO_ADDR(pc), Sym_GetString(machPtr, INDEX_TO_ADDR(pc)) );
	      }
	      addBranchToTraceFile(machPtr, INDEX_TO_ADDR(last_pc), INDEX_TO_ADDR(pc) );
            } else machPtr->branchNo++;
	    machPtr->branchSerial = machPtr->insCount;
            machPtr->branchPC = INDEX_TO_ADDR( readRegister(machPtr, PC_REG, 0) );
          break;


          /* ASIP COMMANDS : MERGE SEQ BNEZ*/ 		
          case OP_BNEQ:  /* Format: beq rs1, rs2, label */
            LoadRegisterS1 LoadRegisterS2
            if(rs1 != rs2) {
	      pc = readRegister(machPtr, NEXT_PC_REG, 0) + ADDR_TO_INDEX(wordPtr->extra);
	      machPtr->branchYes++;
              /* ASIP JUMP : */
              additionalClockCycleForJump = 2;
	      if (machPtr->debugAssembly) {
		memcpy(symGetString_Backup, Sym_GetString(machPtr, INDEX_TO_ADDR(last_pc)), 100*sizeof(char) );
		printf("debug:\tCycle:%lu  \tIM-Addr:0x%x(%.100s)  \t\tBNEQ to IM-Addr:0x%x(%.100s).\n",
		       machPtr->cycleCount,
		       INDEX_TO_ADDR(last_pc), symGetString_Backup,
		       INDEX_TO_ADDR(pc), Sym_GetString(machPtr, INDEX_TO_ADDR(pc)) );
	      }
	      addBranchToTraceFile(machPtr, INDEX_TO_ADDR(last_pc), INDEX_TO_ADDR(pc) );
            } else machPtr->branchNo++;
            machPtr->branchSerial = machPtr->insCount;
            machPtr->branchPC = INDEX_TO_ADDR( readRegister(machPtr, PC_REG, 0) );
          break;


          /* ASIP COMMANDS : MERGE SGTU BEZ */ 
          case OP_BGTU:  /* Format: bgtu rs1, rs2, label */  
            LoadRegisterS1 LoadRegisterS2
            if((unsigned int)rs1 > (unsigned int)rs2) {
	      pc = readRegister(machPtr, NEXT_PC_REG, 0) + ADDR_TO_INDEX(wordPtr->extra);
	      machPtr->branchYes++;
              /* ASIP JUMP : */
              additionalClockCycleForJump = 2;
	      if (machPtr->debugAssembly) {
		memcpy(symGetString_Backup, Sym_GetString(machPtr, INDEX_TO_ADDR(last_pc)), 100*sizeof(char) );
		printf("debug:\tCycle:%lu  \tIM-Addr:0x%x(%.100s)  \t\tBGTU to IM-Addr:0x%x(%.100s).\n",
		       machPtr->cycleCount,
		       INDEX_TO_ADDR(last_pc), symGetString_Backup,
		       INDEX_TO_ADDR(pc), Sym_GetString(machPtr, INDEX_TO_ADDR(pc)) );
	      }
	      addBranchToTraceFile(machPtr, INDEX_TO_ADDR(last_pc), INDEX_TO_ADDR(pc) );
            } else machPtr->branchNo++;
            machPtr->branchSerial = machPtr->insCount;
            machPtr->branchPC = INDEX_TO_ADDR( readRegister(machPtr, PC_REG, 0) );
          break;


          /* ASIP COMMANDS : MERGE SLEU BEZ */ 
          case OP_BLEU:  /* Format: bleu rs1, rs2, label */  
            LoadRegisterS1 LoadRegisterS2
            if((unsigned int)rs1 <= (unsigned int)rs2) {
	      pc = readRegister(machPtr, NEXT_PC_REG, 0) + ADDR_TO_INDEX(wordPtr->extra);
	      machPtr->branchYes++;
              /* ASIP JUMP : */
              additionalClockCycleForJump = 2;
	      if (machPtr->debugAssembly) {
		memcpy(symGetString_Backup, Sym_GetString(machPtr, INDEX_TO_ADDR(last_pc)), 100*sizeof(char) );
		printf("debug:\tCycle:%lu  \tIM-Addr:0x%x(%.100s)  \t\tBLEU to IM-Addr:0x%x(%.100s).\n",
		       machPtr->cycleCount,
		       INDEX_TO_ADDR(last_pc), symGetString_Backup,
		       INDEX_TO_ADDR(pc), Sym_GetString(machPtr, INDEX_TO_ADDR(pc)) );
	      }
	      addBranchToTraceFile(machPtr, INDEX_TO_ADDR(last_pc), INDEX_TO_ADDR(pc) );
            } else machPtr->branchNo++;
            machPtr->branchSerial = machPtr->insCount;
            machPtr->branchPC = INDEX_TO_ADDR( readRegister(machPtr, PC_REG, 0) );
          break;


          /* ASIP COMMANDS : MERGE SLTU BEZ */ 
          case OP_BLTU:  /* Format: bltu rs1, rs2, label */  
            LoadRegisterS1 LoadRegisterS2
            if((unsigned int)rs1 < (unsigned int)rs2) {
	      pc = readRegister(machPtr, NEXT_PC_REG, 0) + ADDR_TO_INDEX(wordPtr->extra);
	      machPtr->branchYes++;
              /* ASIP JUMP : */
              additionalClockCycleForJump = 2;
	      if (machPtr->debugAssembly) {
		memcpy(symGetString_Backup, Sym_GetString(machPtr, INDEX_TO_ADDR(last_pc)), 100*sizeof(char) );
		printf("debug:\tCycle:%lu  \tIM-Addr:0x%x(%.100s)  \t\tBLTU to IM-Addr:0x%x(%.100s).\n",
		       machPtr->cycleCount,
		       INDEX_TO_ADDR(last_pc), symGetString_Backup,
		       INDEX_TO_ADDR(pc), Sym_GetString(machPtr, INDEX_TO_ADDR(pc)) );
	      }
	      addBranchToTraceFile(machPtr, INDEX_TO_ADDR(last_pc), INDEX_TO_ADDR(pc) );
            } else machPtr->branchNo++;
            machPtr->branchSerial = machPtr->insCount;
            machPtr->branchPC = INDEX_TO_ADDR( readRegister(machPtr, PC_REG, 0) );
          break;


          /* ASIP COMMANDS : MERGE SGEU BEZ */ 
          case OP_BGEU:  /* Format: bgeu rs1, rs2, label */  
            LoadRegisterS1 LoadRegisterS2
            if((unsigned int)rs1 >= (unsigned int)rs2) {
              pc = readRegister(machPtr, NEXT_PC_REG, 0) + ADDR_TO_INDEX(wordPtr->extra);
              machPtr->branchYes++;
              /* ASIP JUMP : */
              additionalClockCycleForJump = 2;
	      if (machPtr->debugAssembly) {
		memcpy(symGetString_Backup, Sym_GetString(machPtr, INDEX_TO_ADDR(last_pc)), 100*sizeof(char) );
		printf("debug:\tCycle:%lu  \tIM-Addr:0x%x(%.100s)  \t\tBGEU to IM-Addr:0x%x(%.100s).\n",
		       machPtr->cycleCount,
		       INDEX_TO_ADDR(last_pc), symGetString_Backup,
		       INDEX_TO_ADDR(pc), Sym_GetString(machPtr, INDEX_TO_ADDR(pc)) );
	      }
	      addBranchToTraceFile(machPtr, INDEX_TO_ADDR(last_pc), INDEX_TO_ADDR(pc) );
            } else machPtr->branchNo++;
            machPtr->branchSerial = machPtr->insCount;
            machPtr->branchPC = INDEX_TO_ADDR( readRegister(machPtr, PC_REG, 0) );
          break;

	  case OP_MAC:  /* Format: mac rd, rs1, rs2;   Semantic: rd += rs1*rs2; */
	    LoadRegisterS1 LoadRegisterS2 LoadRegisterD
	      /* printf("MAC: rd=%i, rs1=%i, rs2=%i\n", rd, rs1, rs2);*/
	    writeRegister(machPtr, wordPtr->rd, rd+(rs1*rs2), 0);
	    /* ASIP STALLING : We only stall, if we use our usual DLX-Pipeline.*/
	    if (machPtr->pipelineDelay==4) requestPipelineStalling(machPtr, 1, 34);
	    else if (machPtr->pipelineDelay==1) machPtr->cycleCount += 34;
	    machPtr->multDivModStalls += 34;
	  break;

	  case OP_MAD:  /* Format: mad rd, rs1, rs2, rs3;   Semantic: rd = rs1*rs2 + rs3; */
	    LoadRegisterS1 LoadRegisterS2 LoadRegisterS3
	      /*  printf("MAD: rs1=%i, rs2=%i, rs3=%i\n", rs1, rs2, rs3);*/
	    writeRegister(machPtr, wordPtr->rd, (rs1*rs2)+rs3, 0);
	    /* ASIP STALLING : We only stall, if we use our usual DLX-Pipeline.*/
	    if (machPtr->pipelineDelay==4) requestPipelineStalling(machPtr, 1, 34);
	    else if (machPtr->pipelineDelay==1) machPtr->cycleCount += 34;
	    machPtr->multDivModStalls += 34;
	  break;

	  case OP_SWAP:  /* Format: swap rd, rs1;   Semantic: rd[15,0]=rs1[31,16]; rd[31,16]=rs1[15,0]; */
	    LoadRegisterS1
	    tmp = (rs1 & 0x0000FFFF) << 16;
	    rs1 = (rs1 & 0xFFFF0000) >> 16;
	    writeRegister(machPtr, wordPtr->rd, tmp|rs1, 0);
	  break;

	  case OP_XCHG:  /* Format: xchg rd, rs1;   Semantic: rd=rs1 & rs1=rd; */
	    LoadRegisterS1 LoadRegisterD
	    writeRegister(machPtr, wordPtr->rd, rs1, 0);
	    writeRegister(machPtr, wordPtr->rs1, rd, 0);
	  break;

	  case OP_AVG:  /* Format: avg rd, rs1, rs2;   Semantic: rd = (rs1+rs2) / 2; */
	    LoadRegisterS1 LoadRegisterS2
	    /*printf("AVG(r%i:%i, r%i:%i)->r%i:%i\n", wordPtr->rs1, rs1, wordPtr->rs2, rs2, wordPtr->rd, (rs1+rs2)/2 );*/
	    writeRegister(machPtr, wordPtr->rd, (rs1+rs2)/2, 0);
	  break;

	  case OP_AVGU:  /* Format: avgu rd, rs1, rs2;   Semantic: rd = (rs1+rs2) / 2; */
	    LoadRegisterS1 LoadRegisterS2
	    /*printf("AVGU(r%i:%i, r%i:%i)->r%i:%i\n", wordPtr->rs1, rs1, wordPtr->rs2, rs2, wordPtr->rd, (rs1+rs2)/2 );*/
	    writeRegister(machPtr, wordPtr->rd, (unsigned) ( (unsigned)rs1+(unsigned)rs2)/(unsigned)2, 0);
	  break;

	  case OP_FEX:  /* Format: fex rd, rs, maks, shamt;   Semantic: rd = (rs & mask) >> shamt; */
	    LoadRegisterS1 LoadRegisterS2
	      /*printf("FEX(r%i:0x%x, r%i:0x%x, imm:%i)->r%i:0x%x\n",
		wordPtr->rs1, rs1, wordPtr->rs2, rs2, wordPtr->extra, wordPtr->rd, (rs1&rs2)>>wordPtr->extra );*/
	    writeRegister(machPtr, wordPtr->rd, (rs1&rs2)>>wordPtr->extra, 0);
	  break;

	  case OP_MAX:  /* Format: max rd, rs1, rs2;   Semantic: rd = (rs1>rs2) ? rs1 : rs2; */
	    LoadRegisterS1 LoadRegisterS2
	    writeRegister(machPtr, wordPtr->rd, (rs1>rs2 ? rs1 : rs2), 0);
	  break;

	  case OP_MINMAX:   /* Format: minmax rd, rs1, rs2, rs3;   Semantic: rd=MIN(rs2, rs3), rs1=MAX(rs2, rs3) */
	    LoadRegisterS2; LoadRegisterS3;
	    writeRegister(machPtr, wordPtr->rd,  (rs2<rs3 ? rs2 : rs3), 0);
	    writeRegister(machPtr, wordPtr->rs1, (rs2<rs3 ? rs3 : rs2), 0);
	  break;

#define ror(a, b) ( ((a)>>(b)) | ((a)<<(32-(b))) )
          case OP_ROT:
            LoadRegisterS1;
	    //printf("--- ROT: dest: r%i, input=%i, amount=%i\n", wordPtr->rd, rs1, wordPtr->extra);
	    writeRegister(machPtr, wordPtr->rd, ror(rs1, wordPtr->extra & 0xFF), 0);
          break;

	  case OP_FORECAST:
	    {
	      //printf("OP_FORECAST: %i, %i\n", wordPtr->imm1, wordPtr->imm2);
	      if (wordPtr->imm2 == 0) {
		notifySITermination(machPtr, last_pc, wordPtr->imm1);
	      } else {
		notifySIForecast(machPtr, last_pc, wordPtr->imm1);
	      }
	      unsigned long long currentCycleCount = computeRealCycleCount(machPtr);
	      if (machPtr->traceSIFile) {
		fprintf(machPtr->traceSIFile, "%llu\tforecast\t%i\t%i\n", currentCycleCount, wordPtr->imm1, wordPtr->imm2);
	      }
	    }
	  break;

	  case OP_HT2X2CR:  /* Format: ht2x2cr rd, rs1, rs2, rs3;   Semantic: rd:out, rs1:out(!), rs2:in, rs3:in */
	    {
	      LoadRegisterS2; LoadRegisterS3;
	      /*printf("OP_HT2X2CR: rd:#%i; rs1:#%i; rs2:#%i, content=%i; rs3:#%i, content=%i; \n",
		wordPtr->rd, wordPtr->rs1, wordPtr->rs2, rs2, wordPtr->rs3, rs3);*/
	      notifySIExecution(machPtr, last_pc, FC_HT_2X2);
	      /*
	      int temp0, temp1, temp2, temp3;
	      int t0, t1, t2, t3;
	      int dest0, dest1;
	      // DATA EXTRACTION
	      temp0	=	((rs2&0xFFFF0000)>>16);
	      temp1	=	((rs3&0xFFFF0000)>>16);
	      temp2	=	(((rs2&0x0000FFFF)<<16)>>16);
	      temp3	=	(((rs3&0x0000FFFF)<<16)>>16);
	      // 2X2 transform of DC coeffs
	      t0	=	((temp0 + temp2) + (temp1 + temp3));
	      t1	=	((temp0 - temp2) + (temp1 - temp3));
	      t2	=	((temp1 - temp3) - (temp0 - temp2));
	      t3	=	((temp1 + temp3) - (temp0 + temp2));
	      // DATA PACKING
	      dest0	=	(((t0&0x0000FFFF)<<16) | (t2&0x0000FFFF));
	      dest1	=	(((t1&0x0000FFFF)<<16) | (t3&0x0000FFFF));
	      writeRegister(machPtr, wordPtr->rd,  dest0, 0);
	      writeRegister(machPtr, wordPtr->rs1, dest1, 0);
	      */
	      // ASIP STALLING : We only stall, if we use our usual DLX-Pipeline.
	      // SHAF:  CYCLE INCREMENT
	      if (machPtr->pipelineDelay==4) requestPipelineStalling(machPtr, 1, HT2_Count);
	      else if (machPtr->pipelineDelay==1) machPtr->cycleCount += HT2_Count;
	      machPtr->specialInstructionStalls += HT2_Count;
	    }
	  break;

	  case OP_HT4X4IL:  /* Format: ht4x4il rs1, rs2;   Semantic: rd = &DCT_start; rs1 = &HT_start */
	    {
	      LoadRegisterD; LoadRegisterS1;
	      /*printf("OP_HT4X4IL: rd:#%i; rs1:#%i, content=%i; rs2:#%i, content=%i; \n",
	        wordPtr->rd, wordPtr->rs1, rs1, wordPtr->rs2, rs2);*/
	      notifySIExecution(machPtr, last_pc, FC_HT_4X4);
	      /*
	      int temp0, temp1, temp2, temp3, temp4, temp5, temp6, temp7;
	      int temp8, temp9, temp10, temp11, temp12, temp13, temp14, temp15;
	      int m0, m1, m2, m3;
	      int t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15;
	      int x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15;
	      // FORMAT: DCT_start [0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 ...... 255]
	      tmp = (unsigned)(rd);
	      if (tmp & 0x3) {
		result = AddressError(machPtr, tmp, 1);
		if (result != TCL_OK) goto stopSimulation;
		else goto endOfIns;
	      }
	      if (tmp <= machPtr->maxTextAddr) {
		printf("\nWARNING: In cycle %ld the Load-Command at instruction memory address %u\n",
		       machPtr->cycleCount, 4*machPtr->regs[PC_REG].lastRead);
		printf("		 is accessing an address in the TEXT-SECTION !!\n\n");
		warningCounter_LoadStoreTextSection++;
	      }
	      // DATA EXTRACTION
#define DATA_EXTRACTION(i) \
	      if (ReadMem(machPtr, tmp, &value) == 0) goto stopSimulation; \
	      temp##i = ((value&0xFFFF0000)>>16);
	      tmp+=(8*4);

	      DATA_EXTRACTION(0);
	      DATA_EXTRACTION(1);
	      DATA_EXTRACTION(2);
	      DATA_EXTRACTION(3);
	      DATA_EXTRACTION(4);
	      DATA_EXTRACTION(5);
	      DATA_EXTRACTION(6);
	      DATA_EXTRACTION(7);
	      DATA_EXTRACTION(8);
	      DATA_EXTRACTION(9);
	      DATA_EXTRACTION(10);
	      DATA_EXTRACTION(11);
	      DATA_EXTRACTION(12);
	      DATA_EXTRACTION(13);
	      DATA_EXTRACTION(14);
	      DATA_EXTRACTION(15);
	      // HORIZONTAL TRANSFORM
	      m0 = temp0 + temp12; m3 = temp0 - temp12; m1 = temp4 + temp8; m2 = temp4 - temp8;
	      x0 = m0 + m1; x8 = m0 - m1; x4 = m3 + m2; x12 = m3 - m2;	    
	      m0 = temp1 + temp13; m3 = temp1 - temp13; m1 = temp5 + temp9; m2 = temp5 - temp9;
	      x1 = m0 + m1; x9 = m0 - m1; x5 = m3 + m2; x13 = m3 - m2;
	      m0 = temp2 + temp14; m3 = temp2 - temp14; m1 = temp6 + temp10; m2 = temp6 - temp10;
	      x2 = m0 + m1; x10 = m0 - m1; x6 = m3 + m2; x14 = m3 - m2;
	      m0 = temp3 + temp15; m3 = temp3 - temp15; m1 = temp7 + temp11; m2 = temp7 - temp11;
	      x3 = m0 + m1; x11 = m0 - m1; x7 = m3 + m2; x15 = m3 - m2;
	      // VERTICAL TRANSFORM
	      m0 = x0 + x3; m3 = x0 - x3; m1 = x1 + x2; m2 = x1 - x2;
	      t0 = ((m0 + m1)>>1); t2 = ((m0 - m1)>>1); t1 = ((m3 + m2)>>1); t3 = ((m3 - m2)>>1);
	      m0 = x4 + x7; m3 = x4 - x7; m1 = x5 + x6; m2 = x5 - x6;
	      t4 = ((m0 + m1)>>1); t6 = ((m0 - m1)>>1); t5 = ((m3 + m2)>>1); t7 = ((m3 - m2)>>1);
	      m0 = x8 + x11; m3 = x8 - x11; m1 = x9 + x10; m2 = x9 - x10;
	      t8 = ((m0 + m1)>>1); t10 = ((m0 - m1)>>1); t9 = ((m3 + m2)>>1); t11 = ((m3 - m2)>>1);
	      m0 = x12 + x15; m3 = x12 - x15; m1 = x13 + x14; m2 = x13 - x14;
	      t12 = ((m0 + m1)>>1); t14 = ((m0 - m1)>>1); t13 = ((m3 + m2)>>1); t15 = ((m3 - m2)>>1);
	      // DATA PACKING
	      tmp = (unsigned)(rs1);
	      if (tmp & 0x3) {
		result = AddressError(machPtr, tmp, 1);
		if (result != TCL_OK) goto stopSimulation;
		else goto endOfIns;
	      }
	      if (tmp <= machPtr->maxTextAddr) {
		printf("\nWARNING: In cycle %ld the Store-Command at instruction memory address %u\n",
		       machPtr->cycleCount, 4*machPtr->regs[PC_REG].lastRead);
		printf("		 is accessing an address in the TEXT-SECTION !!\n\n");
		warningCounter_LoadStoreTextSection++;
	      }
#define DATA_PACKING(a, b) \
	      rd =   (((t##a&0x0000FFFF)<<16)  | (t##b&0x0000FFFF)); \
	      if (WriteMem(machPtr, tmp, 4, rd) == 0) goto stopSimulation; \
	      tmp += 4;

	      DATA_PACKING(0,3);
	      DATA_PACKING(1,2);
	      DATA_PACKING(4,7);
	      DATA_PACKING(5,6);
	      DATA_PACKING(8,11);
	      DATA_PACKING(9,10);
	      DATA_PACKING(12,15);
	      DATA_PACKING(13,14);
	      // ASIP STALLING : We only stall, if we use our usual DLX-Pipeline.
	      // SHAF:  CYCLE INCREMENT
	      if (machPtr->pipelineDelay==4) requestPipelineStalling(machPtr, 1, HT4_Count);
	      else if (machPtr->pipelineDelay==1) machPtr->cycleCount += HT4_Count;
	      machPtr->specialInstructionStalls += HT4_Count;
	      */
	    }
	  break;

	  case OP_SATD4X4:  /* Format: satd4x4 rd, rs1, rs2, rs3;   Semantic:  rd=Satd;  rs1 = &SB_start; rs2=Stride; rs3 = &Cand_start */
	    {
	      LoadRegisterS1; LoadRegisterS2; LoadRegisterS3;
	      /*printf("OP_SATD4X4: rd:#%i, content=%i; rs1:#%i, content=%i; rs2:#%i, content=%i; rs3:#%i, content=%i;\n",
		wordPtr->rd, rd, wordPtr->rs1, rs1, wordPtr->rs2, rs2, wordPtr->rs3, rs3);*/
	      notifySIExecution(machPtr, last_pc, FC_SATD_4X4);
	      /*
	      int satd = 0;
	      int diff0, diff1, diff2, diff3, diff4, diff5, diff6, diff7;
	      int temp0, temp1, temp2, temp3, temp4, temp5, temp6, temp7;
	      int temp8, temp9, temp10, temp11, temp12, temp13, temp14, temp15;
	      int m0, m1, m2, m3;
	      int t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15;
	      int x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15;
	      int address1, address2;
	      int value1, value2;
#define ABS(A) (((A)<0)?(-(A)):((A))) 
	      // FORMAT: DCT_start [0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15	16 ...... 255]
	      address1 = (unsigned)(rs1);
	      if (address1 & 0x3) {
		result = AddressError(machPtr, address1, 1);
		if (result != TCL_OK) goto stopSimulation;
		else goto endOfIns;
	      }
	      if (address1 <= machPtr->maxTextAddr) {
		printf("\nWARNING: In cycle %ld the Load-Command at instruction memory address %u\n",
		       machPtr->cycleCount, 4*machPtr->regs[PC_REG].lastRead);
		printf("		   is accessing an address in the TEXT-SECTION !!\n\n");
		warningCounter_LoadStoreTextSection++;
	      }
	      address2 = (unsigned)(rs3);
	      if (address2 & 0x3) {
		result = AddressError(machPtr, address2, 1);
		if (result != TCL_OK) goto stopSimulation;
		else goto endOfIns;
	      }
	      if (address2 <= machPtr->maxTextAddr) {
		printf("\nWARNING: In cycle %ld the Load-Command at instruction memory address %u\n",
		       machPtr->cycleCount, 4*machPtr->regs[PC_REG].lastRead);
		printf("		   is accessing an address in the TEXT-SECTION !!\n\n");
		warningCounter_LoadStoreTextSection++;
	      }
	      // DATA EXTRACTION
	      // DIFFERENCE CALCULATION
	      if (ReadMem(machPtr, address1, &value1) == 0) goto stopSimulation;
	      if (ReadMem(machPtr, address2, &value2) == 0) goto stopSimulation;
	      diff0 = (((((value1&0xFF000000)>>24) - ((value2 & 0xFF000000)>>24))<<16)
		       | ((((value1&0x00FF0000)>>16) - ((value2 & 0x00FF0000)>>16))&0x0000FFFF));
	      diff1 = (((((value1&0x0000FF00)>>8) - ((value2 & 0x0000FF00)>>8))<<16)
		       | (((value1&0x000000FF) - (value2 & 0x000000FF))&0x0000FFFF));
	      address1 += (rs2*4); address2 += (4*4);
	      if (ReadMem(machPtr, address1, &value1) == 0) goto stopSimulation;
	      if (ReadMem(machPtr, address2, &value2) == 0) goto stopSimulation;
	      diff2 = (((((value1&0xFF000000)>>24) - ((value2 & 0xFF000000)>>24))<<16)
		       | ((((value1&0x00FF0000)>>16) - ((value2 & 0x00FF0000)>>16))&0x0000FFFF));
	      diff3 = (((((value1&0x0000FF00)>>8) - ((value2 & 0x0000FF00)>>8))<<16)
		       | (((value1&0x000000FF) - (value2 & 0x000000FF))&0x0000FFFF));
	      address1 += (rs2*4); address2 +=	(4*4);
	      if (ReadMem(machPtr, address1, &value1) == 0) goto stopSimulation;
	      if (ReadMem(machPtr, address2, &value2) == 0) goto stopSimulation;
	      diff4 = (((((value1&0xFF000000)>>24) - ((value2 & 0xFF000000)>>24))<<16)
		       | ((((value1&0x00FF0000)>>16) - ((value2 & 0x00FF0000)>>16))&0x0000FFFF));
	      diff5 = (((((value1&0x0000FF00)>>8) - ((value2 & 0x0000FF00)>>8))<<16)
		       | (((value1&0x000000FF) - (value2 & 0x000000FF))&0x0000FFFF));
	      address1 += (rs2*4); address2 += (4*4);
	      if (ReadMem(machPtr, address1, &value1) == 0) goto stopSimulation;
	      if (ReadMem(machPtr, address2, &value2) == 0) goto stopSimulation;
	      diff6 = (((((value1&0xFF000000)>>24) - ((value2 & 0xFF000000)>>24))<<16)
		       | ((((value1&0x00FF0000)>>16) - ((value2 & 0x00FF0000)>>16))&0x0000FFFF));
	      diff7 = (((((value1&0x0000FF00)>>8) - ((value2 & 0x0000FF00)>>8))<<16)
		       | (((value1&0x000000FF) - (value2 & 0x000000FF))&0x0000FFFF));
	      // DATA EXTRACTION
	      temp0 = (((int)(diff0&0xFFFF0000))>>16);
	      temp1 = (((diff0&0x0000FFFF)<<16)>>16);
	      temp2 = (((int)(diff1&0xFFFF0000))>>16);
	      temp3 = (((diff1&0x0000FFFF)<<16)>>16);
	      temp4 = (((int)(diff2&0xFFFF0000))>>16);
	      temp5 = (((diff2&0x0000FFFF)<<16)>>16);
	      temp6 = (((int)(diff3&0xFFFF0000))>>16);
	      temp7 = (((diff3&0x0000FFFF)<<16)>>16);
	      temp8 = (((int)(diff4&0xFFFF0000))>>16);
	      temp9 = (((diff4&0x0000FFFF)<<16)>>16);
	      temp10 = (((int)(diff5&0xFFFF0000))>>16);
	      temp11 = (((diff5&0x0000FFFF)<<16)>>16);
	      temp12 = (((int)(diff6&0xFFFF0000))>>16);
	      temp13 = (((diff6&0x0000FFFF)<<16)>>16);
	      temp14 = (((int)(diff7&0xFFFF0000))>>16);
	      temp15 = (((diff7&0x0000FFFF)<<16)>>16);
	      // HORIZONTAL TRANSFORM
	      m0 = temp0 + temp12; m3 = temp0 - temp12; m1 = temp4 + temp8; m2 = temp4 - temp8;
	      x0 = m0 + m1; x8 = m0 - m1; x4 = m3 + m2; x12 = m3 - m2;
	      m0 = temp1 + temp13; m3 = temp1 - temp13; m1 = temp5 + temp9; m2 = temp5 - temp9;
	      x1 = m0 + m1; x9 = m0 - m1; x5 = m3 + m2; x13 =	m3 - m2;
	      m0 = temp2 + temp14; m3 = temp2 - temp14; m1 = temp6 + temp10; m2 = temp6 - temp10;
	      x2 = m0 + m1; x10 = m0 - m1; x6 = m3 + m2; x14 = m3 - m2;
	      m0 = temp3 + temp15; m3 = temp3 - temp15; m1 = temp7 + temp11; m2 = temp7 - temp11;
	      x3 = m0 + m1; x11 = m0 - m1; x7 = m3 + m2; x15 = m3 - m2;
	      // VERTICAL TRANSFORM
	      m0 = x0 + x3; m3 = x0 - x3; m1 = x1 + x2; m2 = x1 - x2;
	      t0 = ((m0 + m1)>>1); t2 = ((m0 - m1)>>1); t1 = ((m3 + m2)>>1); t3 = ((m3 - m2)>>1);
	      satd += (ABS(t0)); satd += (ABS(t1)); satd += (ABS(t2)); satd += (ABS(t3));
	      m0 = x4 + x7; m3 = x4 - x7; m1 = x5 + x6; m2 = x5 - x6;
	      t4 = ((m0 + m1)>>1); t6 = ((m0 - m1)>>1); t5 = ((m3 + m2)>>1); t7 = ((m3 - m2)>>1);
	      satd += (ABS(t4)); satd += (ABS(t5)); satd += (ABS(t6)); satd += (ABS(t7));
	      m0 = x8 + x11; m3 = x8 - x11; m1 = x9 + x10; m2 = x9 - x10;
	      t8 = ((m0 + m1)>>1); t10 = ((m0 - m1)>>1); t9 = ((m3 + m2)>>1); t11 = ((m3 - m2)>>1);
	      satd += (ABS(t8)); satd += (ABS(t9)); satd += (ABS(t10)); satd += (ABS(t11));
	      m0 = x12 + x15; m3 = x12 - x15; m1 = x13 + x14; m2 = x13 - x14;
	      t12 = ((m0 + m1)>>1); t14 = ((m0 - m1)>>1); t13 = ((m3 + m2)>>1); t15 = ((m3 - m2)>>1);
	      satd += (ABS(t12)); satd += (ABS(t13)); satd += (ABS(t14)); satd += (ABS(t15));

	      writeRegister(machPtr, wordPtr->rd,  satd, 0);
	      // ASIP STALLING : We only stall, if we use our usual DLX-Pipeline.
	      // SHAF:  CYCLE INCREMENT
	      */
	      if (machPtr->pipelineDelay==4) requestPipelineStalling(machPtr, 1, SATD_Count);
	      else if (machPtr->pipelineDelay==1) machPtr->cycleCount += SATD_Count;
	      machPtr->specialInstructionStalls += SATD_Count;
	    }
	  break;

	  case OP_DCT4X4:  /* Format: dct4x4 rd, rs1, rs2, rs3;   Semantic: rd = &DCT_start;  rs1 = &SB_start; rs2=Stride; rs3 = &SubPred_start */
	    {
	      LoadRegisterD; LoadRegisterS1; LoadRegisterS2; LoadRegisterS3;
	      /*printf("OP_DCT4X4: rd:#%i, content=%i; rs1:#%i, content=%i; rs2:#%i, content=%i; rs3:#%i, content=%i;\n",
		wordPtr->rd, rd, wordPtr->rs1, rs1, wordPtr->rs2, rs2, wordPtr->rs3, rs3);*/
	      notifySIExecution(machPtr, last_pc, FC_DCT_4X4);
	      /*
	      int diff0, diff1, diff2, diff3, diff4, diff5, diff6, diff7;		
	      int temp0, temp1, temp2, temp3, temp4, temp5, temp6, temp7;
	      int temp8, temp9, temp10, temp11, temp12, temp13, temp14, temp15;
	      int m0, m1, m2, m3;
	      int t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15;
	      int x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15;
	      int address1, address2, address3;
	      int value1, value2;
	      // FORMAT: DCT_start [0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15	16 ...... 255]
	      address1 = (unsigned)(rs1);
	      if (address1 & 0x3) {
		result = AddressError(machPtr, address1, 1);
		if (result != TCL_OK) goto stopSimulation;
		else goto endOfIns;
	      }
	      if (address1 <= machPtr->maxTextAddr) {
		printf("\nWARNING: In cycle %ld the Load-Command at instruction memory address %u\n",
		       machPtr->cycleCount, 4*machPtr->regs[PC_REG].lastRead);
		printf("		   is accessing an address in the TEXT-SECTION !!\n\n");
		warningCounter_LoadStoreTextSection++;
	      }
	      address2 = (unsigned)(rs3);
	      if (address2 & 0x3) {
		result = AddressError(machPtr, address2, 1);
		if (result != TCL_OK) goto stopSimulation;
		else goto endOfIns;
	      }
	      if (address2 <= machPtr->maxTextAddr) {
		printf("\nWARNING: In cycle %ld the Load-Command at instruction memory address %u\n",
		       machPtr->cycleCount, 4*machPtr->regs[PC_REG].lastRead);
		printf("		   is accessing an address in the TEXT-SECTION !!\n\n");
		warningCounter_LoadStoreTextSection++;
	      }
	      // DATA EXTRACTION
	      // DIFFERENCE CALCULATION
	      if (ReadMem(machPtr, address1, &value1) == 0) goto stopSimulation;
	      if (ReadMem(machPtr, address2, &value2) == 0) goto stopSimulation;
	      diff0 = (((((value1 & 0xFF000000)>>24) - ((value2 & 0xFF000000)>>24))<<16)
		       | ((((value1 & 0x00FF0000)>>16) - ((value2 & 0x00FF0000)>>16))&0x0000FFFF));
	      diff1 = (((((value1 & 0x0000FF00)>>8) - ((value2 & 0x0000FF00)>>8))<<16)
		       | (((value1 & 0x000000FF) - (value2 & 0x000000FF))&0x0000FFFF));
	      address1 += (rs2*4); address2 += 4;
	      if (ReadMem(machPtr, address1, &value1) == 0) goto stopSimulation;
	      if (ReadMem(machPtr, address2, &value2) == 0) goto stopSimulation;
	      diff2 = (((((value1 & 0xFF000000)>>24) - ((value2 & 0xFF000000)>>24))<<16)
		       | ((((value1 & 0x00FF0000)>>16) - ((value2 & 0x00FF0000)>>16))&0x0000FFFF));
	      diff3 = (((((value1 & 0x0000FF00)>>8) - ((value2 & 0x0000FF00)>>8))<<16)
		       | (((value1 & 0x000000FF) - (value2 & 0x000000FF))&0x0000FFFF));
	      address1 += (rs2*4); address2 += 4;
	      if (ReadMem(machPtr, address1, &value1) == 0) goto stopSimulation;
	      if (ReadMem(machPtr, address2, &value2) == 0) goto stopSimulation;
	      diff4 = (((((value1 & 0xFF000000)>>24) - ((value2 & 0xFF000000)>>24))<<16)
		       | ((((value1 & 0x00FF0000)>>16) - ((value2 & 0x00FF0000)>>16))&0x0000FFFF));
	      diff5 = (((((value1 & 0x0000FF00)>>8) - ((value2 & 0x0000FF00)>>8))<<16)
		       | (((value1 & 0x000000FF) - (value2 & 0x000000FF))&0x0000FFFF));
	      address1 += (rs2*4); address2 += 4;
	      if (ReadMem(machPtr, address1, &value1) == 0) goto stopSimulation;
	      if (ReadMem(machPtr, address2, &value2) == 0) goto stopSimulation;
	      diff6 = (((((value1 & 0xFF000000)>>24) - ((value2 & 0xFF000000)>>24))<<16)
		       | ((((value1 & 0x00FF0000)>>16) - ((value2 & 0x00FF0000)>>16))&0x0000FFFF));
	      diff7 = (((((value1 & 0x0000FF00)>>8) - ((value2 & 0x0000FF00)>>8))<<16)
		       | (((value1 & 0x000000FF) - (value2 & 0x000000FF))&0x0000FFFF));	
	      // DATA EXTRACTION
	      temp0	=	(((int)(diff0&0xFFFF0000))>>16);
	      temp1	=	(((diff0&0x0000FFFF)<<16)>>16);
	      temp2	=	(((int)(diff1&0xFFFF0000))>>16);
	      temp3	=	(((diff1&0x0000FFFF)<<16)>>16);
	      temp4	=	(((int)(diff2&0xFFFF0000))>>16);
	      temp5	=	(((diff2&0x0000FFFF)<<16)>>16);
	      temp6	=	(((int)(diff3&0xFFFF0000))>>16);
	      temp7	=	(((diff3&0x0000FFFF)<<16)>>16);
	      temp8	=	(((int)(diff4&0xFFFF0000))>>16);
	      temp9	=	(((diff4&0x0000FFFF)<<16)>>16);
	      temp10	=	(((int)(diff5&0xFFFF0000))>>16);
	      temp11	=	(((diff5&0x0000FFFF)<<16)>>16);
	      temp12	=	(((int)(diff6&0xFFFF0000))>>16);
	      temp13	=	(((diff6&0x0000FFFF)<<16)>>16);
	      temp14	=	(((int)(diff7&0xFFFF0000))>>16);
	      temp15	=	(((diff7&0x0000FFFF)<<16)>>16);
	      // HORIZONTAL TRANSFORM
	      m0 = temp0 + temp12; m3 = temp0 - temp12; m1 = temp4 + temp8; m2 = temp4 - temp8;
	      x0 = m0 + m1; x8 = m0 - m1; x4 = ((m3 *2)+ m2); x12 = (m3 - (m2*2));
	      m0 = temp1 + temp13; m3 = temp1 - temp13; m1 = temp5 + temp9; m2 = temp5 - temp9;
	      x1 = m0 + m1; x9 = m0 - m1; x5 = ((m3 *2)+ m2); x13 = (m3 - (m2*2));
	      m0 = temp2 + temp14; m3 = temp2 - temp14; m1 = temp6 + temp10; m2 = temp6 - temp10;
	      x2 = m0 + m1; x10 = m0 - m1; x6 = ((m3 *2)+ m2); x14 = (m3 - (m2*2));
	      m0 = temp3 + temp15; m3 = temp3 - temp15; m1 = temp7 + temp11; m2 = temp7 - temp11;
	      x3 = m0 + m1; x11 = m0 - m1; x7 = ((m3 *2)+ m2); x15 = (m3 - (m2*2));
	      // VERTICAL TRANSFORM
	      m0 = x0 + x3; m3 = x0 - x3; m1 = x1 + x2; m2 = x1 - x2;
	      t0 = (m0 + m1); t2 = (m0 - m1); t1 = ((m3*2) + m2); t3 = (m3 - (m2*2));
	      m0 = x4 + x7; m3 = x4 - x7; m1 = x5 + x6; m2 = x5 - x6;
	      t4 = (m0 + m1); t6 = (m0 - m1); t5 = ((m3*2) + m2); t7 = (m3 - (m2*2));
	      m0 = x8 + x11; m3 = x8 - x11; m1 = x9 + x10; m2 = x9 - x10;
	      t8 = (m0 + m1); t10 = (m0 - m1); t9 = ((m3*2) + m2); t11 = (m3 - (m2*2));
	      m0 = x12 + x15; m3 = x12 - x15; m1 = x13 + x14; m2 = x13 - x14;
	      t12 = (m0 + m1); t14 = (m0 - m1); t13 = ((m3*2) + m2); t15 = (m3 - (m2*2));
	      // DATA PACKING
	      address3= (unsigned)(rd);
	      if (address3 & 0x3) {
		result = AddressError(machPtr, address3, 1);
		if (result != TCL_OK) goto stopSimulation;
		else goto endOfIns;
	      }
	      if (address3 <= machPtr->maxTextAddr) {
		printf("\nWARNING: In cycle %ld the Store-Command at instruction memory address %u\n",
		       machPtr->cycleCount, 4*machPtr->regs[PC_REG].lastRead);
		printf("			 is accessing an address in the TEXT-SECTION !!\n\n");
		warningCounter_LoadStoreTextSection++;
	      }
#define DATA_PACKING2(a, b) \
	      rd = (((t##a&0x0000FFFF)<<16) | (t##b&0x0000FFFF)); \
	      if (WriteMem(machPtr, address3, 4, rd) == 0) goto stopSimulation; \
	      address3 += 4;

	      DATA_PACKING2(0,3);
	      DATA_PACKING2(1,2);
	      DATA_PACKING2(4,7);
	      DATA_PACKING2(5,6);
	      DATA_PACKING2(8,11);
	      DATA_PACKING2(9,10);
	      DATA_PACKING2(12,15);
	      DATA_PACKING2(13,14);
	      // ASIP STALLING : We only stall, if we use our usual DLX-Pipeline.
	      // SHAF:  CYCLE INCREMENT
	      */
	      if (machPtr->pipelineDelay==4) requestPipelineStalling(machPtr, 1, DCT_Count);
	      else if (machPtr->pipelineDelay==1) machPtr->cycleCount += DCT_Count;
	      machPtr->specialInstructionStalls += DCT_Count;
	    }
	  break;

	case OP_LOOPFILTER:
	  notifySIExecution(machPtr, last_pc, FC_LOOPFILTER);
	  break;

	case OP_IPRED_HDC16X16:
	  notifySIExecution(machPtr, last_pc, FC_IPRED_HDC16X16);
	  break;

	case OP_IPRED_VDC16X16:
	  notifySIExecution(machPtr, last_pc, FC_IPRED_VDC16X16);
	  break;

	case OP_MC_HZ4:
	  notifySIExecution(machPtr, last_pc, FC_MC_HZ4);
	  break;

	case OP_SAD16:
	  notifySIExecution(machPtr, last_pc, FC_SAD_16);
	  break;


	/* NEW_COMMANDS:
  	* ------------
   	* add behavior of custom instruction here. see examples above for some help for this task.
  	*/

	case OP_MULT:
            LoadRegisterS1 LoadRegisterS2
            writeRegister(machPtr, wordPtr->rd, rs1*rs2, 0);
	    /* ASIP STALLING : We only stall, if we use our usual DLX-Pipeline.*/
	    if (machPtr->pipelineDelay==4) requestPipelineStalling(machPtr, 1, 34);
	    else if (machPtr->pipelineDelay==1) machPtr->cycleCount += 34;
	    machPtr->multDivModStalls += 34;
          break;

          case OP_MULTU:
            LoadRegisterS1 LoadRegisterS2
            writeRegister(machPtr, wordPtr->rd, (unsigned int)( (unsigned int)rs1 * (unsigned int)rs2 ), 0);
	    /* ASIP STALLING : We only stall, if we use our usual DLX-Pipeline.*/
	    if (machPtr->pipelineDelay==4) requestPipelineStalling(machPtr, 1, 34);
	    else if (machPtr->pipelineDelay==1) machPtr->cycleCount += 34;
	    machPtr->multDivModStalls += 34;
          break;

          case OP_DIV:
            LoadRegisterS1 LoadRegisterS2
            writeRegister(machPtr, wordPtr->rd, rs1/rs2, 0);
	    /* ASIP STALLING : We only stall, if we use our usual DLX-Pipeline.*/
	    if (machPtr->pipelineDelay==4) requestPipelineStalling(machPtr, 1, 34);
	    else if (machPtr->pipelineDelay==1) machPtr->cycleCount += 34;
	    machPtr->multDivModStalls += 34;
          break;

          case OP_DIVU:
            LoadRegisterS1 LoadRegisterS2
            writeRegister(machPtr, wordPtr->rd, (unsigned int)( (unsigned int)rs1 / (unsigned int)rs2 ), 0);
	    /* ASIP STALLING : We only stall, if we use our usual DLX-Pipeline.*/
	    if (machPtr->pipelineDelay==4) requestPipelineStalling(machPtr, 1, 34);
	    else if (machPtr->pipelineDelay==1) machPtr->cycleCount += 34;
	    machPtr->multDivModStalls += 34;
          break;

          case OP_MOD:
            LoadRegisterS1 LoadRegisterS2
            writeRegister(machPtr, wordPtr->rd, rs1%rs2, 0);
	    /* ASIP STALLING : We only stall, if we use our usual DLX-Pipeline.*/
	    if (machPtr->pipelineDelay==4) requestPipelineStalling(machPtr, 1, 34);
	    else if (machPtr->pipelineDelay==1) machPtr->cycleCount += 34;
	    machPtr->multDivModStalls += 34;
          break;

          case OP_MODU:
            LoadRegisterS1 LoadRegisterS2
            writeRegister(machPtr, wordPtr->rd, (unsigned int)( (unsigned int)rs1 % (unsigned int)rs2 ), 0);
	    /* ASIP STALLING : We only stall, if we use our usual DLX-Pipeline.*/
	    if (machPtr->pipelineDelay==4) requestPipelineStalling(machPtr, 1, 34);
	    else if (machPtr->pipelineDelay==1) machPtr->cycleCount += 34;
	    machPtr->multDivModStalls += 34;
          break;

          case OP_ADD:
            LoadRegisterS1 LoadRegisterS2
            writeRegister(machPtr, wordPtr->rd, rs1+rs2, 0);
          break;

          case OP_ADDI:
            LoadRegisterS1
            writeRegister(machPtr, wordPtr->rd, rs1+wordPtr->extra, 0);
          break;

          case OP_ADDU:
            LoadRegisterS1 LoadRegisterS2
            writeRegister(machPtr, wordPtr->rd, rs1+rs2, 0);
          break;

          case OP_ADDUI:
            LoadRegisterS1
            writeRegister(machPtr, wordPtr->rd, rs1 + (wordPtr->extra & 0xffff), 0);
          break;

          case OP_AND:
            LoadRegisterS1 LoadRegisterS2
            writeRegister(machPtr, wordPtr->rd, rs1 & rs2, 0);
          break;

          case OP_ANDI:
            LoadRegisterS1
            writeRegister(machPtr, wordPtr->rd, rs1 & (wordPtr->extra & 0xffff), 0);
          break;

          case OP_BEQZ:
            LoadRegisterS1
            if (rs1 == 0) {
              pc = readRegister(machPtr, NEXT_PC_REG, 0) + ADDR_TO_INDEX(wordPtr->extra);
              machPtr->branchYes++;
              /* ASIP JUMP : */
              additionalClockCycleForJump = 2;
	      if (machPtr->debugAssembly) {
		memcpy(symGetString_Backup, Sym_GetString(machPtr, INDEX_TO_ADDR(last_pc)), 100*sizeof(char) );
		printf("debug:\tCycle:%lu  \tIM-Addr:0x%x(%.100s)  \t\tBEQZ to IM-Addr:0x%x(%.100s).\n",
		       machPtr->cycleCount,
		       INDEX_TO_ADDR(last_pc), symGetString_Backup,
		       INDEX_TO_ADDR(pc), Sym_GetString(machPtr, INDEX_TO_ADDR(pc)) );
	      }
	      addBranchToTraceFile(machPtr, INDEX_TO_ADDR(last_pc), INDEX_TO_ADDR(pc) );
            } else machPtr->branchNo++;
            machPtr->branchSerial = machPtr->insCount;
            machPtr->branchPC = INDEX_TO_ADDR( readRegister(machPtr, PC_REG, 0) );
          break;

          case OP_BNEZ:
            LoadRegisterS1
            if (rs1 != 0) {
              pc = readRegister(machPtr, NEXT_PC_REG, 0) + ADDR_TO_INDEX(wordPtr->extra);
              machPtr->branchYes++;
              /* ASIP JUMP : */
              additionalClockCycleForJump = 2;
	      if (machPtr->debugAssembly) {
		memcpy(symGetString_Backup, Sym_GetString(machPtr, INDEX_TO_ADDR(last_pc)), 100*sizeof(char) );
		printf("debug:\tCycle:%lu  \tIM-Addr:0x%x(%.100s)  \t\tBNEZ to IM-Addr:0x%x(%.100s).\n",
		       machPtr->cycleCount,
		       INDEX_TO_ADDR(last_pc), symGetString_Backup,
		       INDEX_TO_ADDR(pc), Sym_GetString(machPtr, INDEX_TO_ADDR(pc)) );
	      }
	      addBranchToTraceFile(machPtr, INDEX_TO_ADDR(last_pc), INDEX_TO_ADDR(pc) );
            } else machPtr->branchNo++;
            machPtr->branchSerial = machPtr->insCount;
            machPtr->branchPC = INDEX_TO_ADDR( readRegister(machPtr, PC_REG, 0) );
          break;

          case OP_JAL:
            writeRegister(machPtr, R31, INDEX_TO_ADDR(readRegister(machPtr, NEXT_PC_REG, 0)+1), 0);
            /* continue with OP_J */
          case OP_J:
            pc = last_pc + 1 + ADDR_TO_INDEX(wordPtr->extra);
            machPtr->branchSerial = machPtr->insCount;
            machPtr->branchPC = INDEX_TO_ADDR( readRegister(machPtr, PC_REG, 0) );
	    if (machPtr->debugAssembly) {
	      if (wordPtr->opCode==OP_JAL) snprintf(tempString, TEMP_STRING_SIZE, "AL");
	      else tempString[0] = '\0';
	      memcpy(symGetString_Backup, Sym_GetString(machPtr, INDEX_TO_ADDR(last_pc)), 100*sizeof(char) );
	      printf("debug:\tCycle:%lu  \tIM-Addr:0x%x(%.100s)  \t\tJ%s to IM-Addr:0x%x(%.100s).\n",
		     machPtr->cycleCount,
		     INDEX_TO_ADDR(last_pc), symGetString_Backup,
		     tempString,
		     INDEX_TO_ADDR(pc), Sym_GetString(machPtr, INDEX_TO_ADDR(pc)) );
	    }
	    addBranchToTraceFile(machPtr, INDEX_TO_ADDR(last_pc), INDEX_TO_ADDR(pc) );

            /* ASIP JUMP : */
            additionalClockCycleForJump = 2;
          break;

          case OP_JALR:
            writeRegister(machPtr, R31, INDEX_TO_ADDR( readRegister(machPtr, NEXT_PC_REG, 0)+1), 0);
            /* continue with OP_JR */
          case OP_JR:
            LoadRegisterS1
            pc = ADDR_TO_INDEX(rs1);
            if ((rs1 & 0x3) && (machPtr->badPC == 0)) {
              machPtr->badPC = rs1;
              machPtr->addrErrNum = machPtr->insCount + 2;
              if (checkNum > machPtr->addrErrNum) checkNum = machPtr->addrErrNum;
            }
            machPtr->branchSerial = machPtr->insCount;
            machPtr->branchPC = INDEX_TO_ADDR(readRegister(machPtr, PC_REG, 0) );
	    if (machPtr->debugAssembly) {
	      if (wordPtr->opCode==OP_JALR) snprintf(tempString, TEMP_STRING_SIZE, "AL");
	      else tempString[0] = '\0';
	      memcpy(symGetString_Backup, Sym_GetString(machPtr, INDEX_TO_ADDR(last_pc)), 100*sizeof(char) );
	      printf("debug:\tCycle:%lu  \tIM-Addr:0x%x(%.100s)  \t\tJ%sR to IM-Addr:0x%x(%.100s).\n",
		     machPtr->cycleCount,
		     INDEX_TO_ADDR(last_pc), symGetString_Backup,
		     tempString,
		     INDEX_TO_ADDR(pc), Sym_GetString(machPtr, INDEX_TO_ADDR(pc)) );
	    }
	    addBranchToTraceFile(machPtr, INDEX_TO_ADDR(last_pc), INDEX_TO_ADDR(pc) );

            /* ASIP JUMP : */
            additionalClockCycleForJump = 2;
          break;

          case OP_LHI:
            writeRegister(machPtr, wordPtr->rd, wordPtr->extra << 16, 0);
          break;

	  case OP_LB:
	  case OP_LBU:
	    /*
            if (loadStore_lastCommand==LoadStore_Store) {
              printf("\nWARNING: In cycle %ld the Load-Command at instruction memory address \"%s\"\n",
		     machPtr->cycleCount, Sym_GetString(machPtr, 4*machPtr->regs[PC_REG].lastRead) );
              printf("         is immediately following a Store-Command. The ASIP-CPU does not support\n");
              printf("         switching from Store to Load without any other command in between !!\n\n");
	      warningCounter_SuccessiveLoadStore++;
            }
	    */
	    loadStore_thisCommand = LoadStore_Load;
	    LoadRegisterS1
	    tmp = (unsigned)(rs1 + wordPtr->extra);
	    if (tmp <= machPtr->maxTextAddr) {
              printf("\nWARNING: In cycle %ld the Load-Command at instruction memory address %u\n",
		     machPtr->cycleCount, 4*machPtr->regs[PC_REG].lastRead);
              printf("         is accessing an address in the TEXT-SECTION !!\n\n");
	      warningCounter_LoadStoreTextSection++;
            }

	    if (ReadMem(machPtr, tmp, &value) == 0) goto stopSimulation;
	    switch (tmp & 0x3) {
	      case 0:
		value >>= 24;
		break;
	      case 1:
		value >>= 16;
		break;
	      case 2:
		value >>= 8;
	    }
	    if ((value & 0x80) && (wordPtr->opCode == OP_LB)) {
	      value |= 0xffffff00;
	    } else {
	      value &= 0xff;
	    }
            writeRegister(machPtr, wordPtr->rd, value, 0);

	    if (machPtr->debugAssembly) {
	      if (wordPtr->opCode == OP_LBU) snprintf(tempString, TEMP_STRING_SIZE, "U");
	      else tempString[0] = '\0';
	      memcpy(symGetString_Backup, Sym_GetString(machPtr, INDEX_TO_ADDR(last_pc)), 100*sizeof(char) );
	      printf("debug:\tCycle:%lu  \tIM-Addr:0x%x(%.100s)  \t\tLB%s: value 0x%x(%i) from Mem:%.100s to r%i.\n",
		     machPtr->cycleCount,
		     INDEX_TO_ADDR(last_pc), symGetString_Backup,
		     tempString,
		     value, value,
		     Sym_GetString(machPtr, tmp),
		     wordPtr->rd );
	    }
	    /* ASIP STALLING : We only stall, if we use our usual DLX-Pipeline.*/
	    if (machPtr->pipelineDelay==4) requestPipelineStalling(machPtr, 2, MEMORY_LATENCY);
	    else if (machPtr->pipelineDelay==1) machPtr->cycleCount += MEMORY_LATENCY;
            machPtr->loadStoreStalls += MEMORY_LATENCY;
	  break;

	  case OP_LH:
	  case OP_LHU:
	    /*
            if (loadStore_lastCommand==LoadStore_Store) {
              printf("\nWARNING: In cycle %ld the Load-Command at instruction memory address \"%s\"\n",
		     machPtr->cycleCount, Sym_GetString(machPtr, 4*machPtr->regs[PC_REG].lastRead) );
              printf("         is immediately following a Store-Command. The ASIP-CPU does not support\n");
              printf("         switching from Store to Load without any other command in between !!\n\n");
	      warningCounter_SuccessiveLoadStore++;
            }
	    */
	    loadStore_thisCommand = LoadStore_Load;
	    LoadRegisterS1
	    tmp = (unsigned)(rs1 + wordPtr->extra);
	    if (tmp & 0x1) {
	      result = AddressError(machPtr, tmp, 1);
	      if (result != TCL_OK) goto stopSimulation;
	      else goto endOfIns;
	    }
	    if (tmp <= machPtr->maxTextAddr) {
              printf("\nWARNING: In cycle %ld the Load-Command at instruction memory address %u\n",
		     machPtr->cycleCount, 4*machPtr->regs[PC_REG].lastRead);
              printf("         is accessing an address in the TEXT-SECTION !!\n\n");
	      warningCounter_LoadStoreTextSection++;
            }
	    if (ReadMem(machPtr, tmp, &value) == 0) goto stopSimulation;
	    if (!(tmp & 0x2)) value >>= 16;
	    if ((value & 0x8000) && (wordPtr->opCode == OP_LH)) value |= 0xffff0000;
	    else value &= 0xffff;
            writeRegister(machPtr, wordPtr->rd, value, 0);

	    if (machPtr->debugAssembly) {
	      if (wordPtr->opCode == OP_LHU) snprintf(tempString, TEMP_STRING_SIZE, "U");
	      else tempString[0] = '\0';
	      memcpy(symGetString_Backup, Sym_GetString(machPtr, INDEX_TO_ADDR(last_pc)), 100*sizeof(char) );
	      printf("debug:\tCycle:%lu  \tIM-Addr:0x%x(%.100s)  \t\tLH%s: value 0x%x(%i) from Mem:%.100s to r%i.\n",
		     machPtr->cycleCount,
		     INDEX_TO_ADDR(last_pc), symGetString_Backup,
		     tempString,
		     value, value,
		     Sym_GetString(machPtr, tmp),
		     wordPtr->rd );
	    }
	    /* ASIP STALLING : We only stall, if we use our usual DLX-Pipeline.*/
	    if (machPtr->pipelineDelay==4) requestPipelineStalling(machPtr, 2, MEMORY_LATENCY);
	    else if (machPtr->pipelineDelay==1) machPtr->cycleCount += MEMORY_LATENCY;
            machPtr->loadStoreStalls += MEMORY_LATENCY;
	  break;

          case OP_LW:
	    /*
            if (loadStore_lastCommand==LoadStore_Store) {
              printf("\nWARNING: In cycle %ld the Load-Command at instruction memory address \"%s\"\n",
		     machPtr->cycleCount, Sym_GetString(machPtr, 4*machPtr->regs[PC_REG].lastRead) );
              printf("         is immediately following a Store-Command. The ASIP-CPU does not support\n");
              printf("         switching from Store to Load without any other command in between !!\n\n");
	      warningCounter_SuccessiveLoadStore++;
            }
	    */
	    loadStore_thisCommand = LoadStore_Load;
            LoadRegisterS1
            tmp = (unsigned)(rs1 + wordPtr->extra);
            if (tmp & 0x3) {
              result = AddressError(machPtr, tmp, 1);
              if (result != TCL_OK) goto stopSimulation;
              else goto endOfIns;
            }
	    if (tmp <= machPtr->maxTextAddr) {
              printf("\nWARNING: In cycle %ld the Load-Command at instruction memory address %u\n",
		     machPtr->cycleCount, 4*machPtr->regs[PC_REG].lastRead);
              printf("         is accessing an address in the TEXT-SECTION !!\n\n");
	      warningCounter_LoadStoreTextSection++;
            }

            if (tmp == 0x3000000) {
	      memoryMapped = 1;
	      writeRegister(machPtr, wordPtr->rd, clockcounter, 0);
            } else {
	      memoryMapped = 0;
	    }

            if (!memoryMapped) {
	      if (ReadMem(machPtr, tmp, &value) == 0) goto stopSimulation;
	      writeRegister(machPtr, wordPtr->rd, value, 0);
	    }
	    if (machPtr->debugAssembly) {
	      memcpy(symGetString_Backup, Sym_GetString(machPtr, INDEX_TO_ADDR(last_pc)), 100*sizeof(char) );
	      printf("debug:\tCycle:%lu  \tIM-Addr:0x%x(%.100s)  \t\tLW: value 0x%x(%i) from Mem:%.100s to r%i.\n",
		     machPtr->cycleCount,
		     INDEX_TO_ADDR(last_pc), symGetString_Backup,
		     value, value,
		     Sym_GetString(machPtr, tmp),
		     wordPtr->rd );
	    }

	    if (memoryMapped) stallTime = 2;
	    else stallTime = MEMORY_LATENCY;
	    /* ASIP STALLING : We only stall, if we use our usual DLX-Pipeline.*/
	    if (machPtr->pipelineDelay==4) requestPipelineStalling(machPtr, 2, stallTime);
	    else if (machPtr->pipelineDelay==1) machPtr->cycleCount += stallTime;
            machPtr->loadStoreStalls += stallTime;
          break;

	  case OP_SB:
	    /*
            if (loadStore_lastCommand==LoadStore_Load) {
              printf("\nWARNING: In cycle %ld the Store-Command at instruction memory address \"%s\"\n",
		     machPtr->cycleCount, Sym_GetString(machPtr, 4*machPtr->regs[PC_REG].lastRead) );
              printf("         is immediately following a Load-Command. The ASIP-CPU does not support\n");
              printf("         switching from Load to Store without any other command in between !!\n\n");
	      warningCounter_SuccessiveLoadStore++;
            }
	    */
	    loadStore_thisCommand = LoadStore_Store;
            LoadRegisterS1 LoadRegisterD
	    tmp = (unsigned)(rs1 + wordPtr->extra);
	    if (tmp <= machPtr->maxTextAddr) {
              printf("\nWARNING: In cycle %ld the Store-Command at instruction memory address %u\n",
		     machPtr->cycleCount, 4*machPtr->regs[PC_REG].lastRead);
              printf("         is accessing an address in the TEXT-SECTION !!\n\n");
	      warningCounter_LoadStoreTextSection++;
            }
	    if (WriteMem(machPtr, tmp, 1, rd) == 0) goto stopSimulation;
	    if (machPtr->debugAssembly) {
	      memcpy(symGetString_Backup, Sym_GetString(machPtr, INDEX_TO_ADDR(last_pc)), 100*sizeof(char) );
	      printf("debug:\tCycle:%lu  \tIM-Addr:0x%x(%.100s)  \t\tSB: value 0x%x(%i) from r%i to Mem:%.100s.\n",
		     machPtr->cycleCount,
		     INDEX_TO_ADDR(last_pc), symGetString_Backup,
		     rd&0xFF, rd&0xFF,
		     wordPtr->rd,
		     Sym_GetString(machPtr, tmp) );
	    }
	    /* ASIP STALLING : We only stall, if we use our usual DLX-Pipeline.*/
	    if (machPtr->pipelineDelay==4) requestPipelineStalling(machPtr, 2, MEMORY_LATENCY);
	    else if (machPtr->pipelineDelay==1) machPtr->cycleCount += MEMORY_LATENCY;
            machPtr->loadStoreStalls += MEMORY_LATENCY;
	  break;

	  case OP_SH:
	    /*
            if (loadStore_lastCommand==LoadStore_Load) {
              printf("\nWARNING: In cycle %ld the Store-Command at instruction memory address \"%s\"\n",
		     machPtr->cycleCount, Sym_GetString(machPtr, 4*machPtr->regs[PC_REG].lastRead) );
              printf("         is immediately following a Load-Command. The ASIP-CPU does not support\n");
              printf("         switching from Load to Store without any other command in between !!\n\n");
	      warningCounter_SuccessiveLoadStore++;
            }
	    */
	    loadStore_thisCommand = LoadStore_Store;
            LoadRegisterS1 LoadRegisterD
            tmp = (unsigned)(rs1 + wordPtr->extra);
            if (tmp & 0x1) {
              result = AddressError(machPtr, tmp, 1);
              if (result != TCL_OK) goto stopSimulation;
              else goto endOfIns;
            }
	    if (tmp <= machPtr->maxTextAddr) {
              printf("\nWARNING: In cycle %ld the Store-Command at instruction memory address %u\n",
		     machPtr->cycleCount, 4*machPtr->regs[PC_REG].lastRead);
              printf("         is accessing an address in the TEXT-SECTION !!\n\n");
	      warningCounter_LoadStoreTextSection++;
            }
	    if (WriteMem(machPtr, tmp, 2, rd) == 0) goto stopSimulation;
	    if (machPtr->debugAssembly) {
	      memcpy(symGetString_Backup, Sym_GetString(machPtr, INDEX_TO_ADDR(last_pc)), 100*sizeof(char) );
	      printf("debug:\tCycle:%lu  \tIM-Addr:0x%x(%.100s)  \t\tSH: value 0x%x(%i) from r%i to Mem:%.100s.\n",
		     machPtr->cycleCount,
		     INDEX_TO_ADDR(last_pc), symGetString_Backup,
		     rd&0xFFFF, rd&0xFFFF,
		     wordPtr->rd,
		     Sym_GetString(machPtr, tmp) );
	    }
	    /* ASIP STALLING : We only stall, if we use our usual DLX-Pipeline.*/
	    if (machPtr->pipelineDelay==4) requestPipelineStalling(machPtr, 2, MEMORY_LATENCY);
	    else if (machPtr->pipelineDelay==1) machPtr->cycleCount += MEMORY_LATENCY;
            machPtr->loadStoreStalls += MEMORY_LATENCY;
	  break;

          case OP_SW:
	    /*
            if (loadStore_lastCommand==LoadStore_Load) {
	      printf("\nWARNING: In cycle %ld the Store-Command at instruction memory address \"%s\"\n",
		     machPtr->cycleCount, Sym_GetString(machPtr, 4*machPtr->regs[PC_REG].lastRead) );
	      printf("         is immediately following a Load-Command. The ASIP-CPU does not support\n");
	      printf("         switching from Load to Store without any other command in between !!\n\n");
	      warningCounter_SuccessiveLoadStore++;
            }
	    */
	    loadStore_thisCommand = LoadStore_Store;
            LoadRegisterS1 LoadRegisterD
            tmp = (unsigned)(rs1 + wordPtr->extra);
            if (tmp & 0x3) {
              result = AddressError(machPtr, tmp, 1);
              if (result != TCL_OK) goto stopSimulation;
              else goto endOfIns;
            }
	    if (tmp <= machPtr->maxTextAddr) {
              printf("\nWARNING: In cycle %ld the Store-Command at instruction memory address %u\n",
		     machPtr->cycleCount, 4*machPtr->regs[PC_REG].lastRead);
              printf("         is accessing an address in the TEXT-SECTION !!\n\n");
	      warningCounter_LoadStoreTextSection++;
            }

	    memoryMapped = 0;

	    // Memory-Mapped LCD
            if (tmp == 0x2000000) {
	      memoryMapped = 1;
	      if (machPtr->lcdFile == 0) {
		printf("LCD: %s ", align(formatChar(rd, 0), 5, -1));
		snprintf(tempString, 10, "%i", rd);
		printf("  %s", align(tempString, 10, -1) );
		snprintf(tempString, 10, "0x%.2x", rd);
		printf("%s\n", align(tempString, 10, -1) );
	      } else {
		fprintf(machPtr->lcdFile, "%s", formatChar(rd, 1));
	      }
            }

	    // Memory-Mapped UART
            if (tmp == 0x1000000) {
	      memoryMapped = 1;
	      if (machPtr->uartFile == 0) {
		printf("UART: %s ", align(formatChar(rd, 0), 5, -1));
		snprintf(tempString, 10, "%i", rd);
		printf("  %s", align(tempString, 10, -1) );
		snprintf(tempString, 10, "0x%.2x", rd);
		printf("%s\n", align(tempString, 10, -1) );
	      } else {
		fprintf(machPtr->uartFile, "%s", formatChar(rd, 1));
	      }
            }

	    // Memory-Mapped AudioOut R
            if (tmp == 40000004) {
	      memoryMapped = 1;
	      snprintf(tempString, 10, "%i", rd);
	      if (machPtr->audioFile == 0) {
		printf("AUDIO_R: %s\t(0x%.4x)\n", align(tempString, 8, 1), rd);
	      } else {
		fprintf(machPtr->audioFile, " R: %s\t(0x%.4x)\n", align(tempString, 8, 1), rd);
	      }
            }

	    // Memory-Mapped AudioOut L
            if (tmp == 40000008) {
	      memoryMapped = 1;
	      snprintf(tempString, 10, "%i", rd);
	      if (machPtr->audioFile == 0) {
		printf("AUDIO_L: %s\t(0x%.4x)\n", align(tempString, 8, 1), rd);
	      } else {
		fprintf(machPtr->audioFile, "L : %s\t(0x%.4x)\n", align(tempString, 8, 1), rd);
	      }
            }

	    // Memory-Mapped Clock Counter
            if (tmp == 0x3000000) {
	      memoryMapped = 1;
	      clockcounter = rd;
              break;
            }

            if (!memoryMapped && WriteMem(machPtr, tmp, 4, rd) == 0) goto stopSimulation;
	    if (machPtr->debugAssembly) {
	      memcpy(symGetString_Backup, Sym_GetString(machPtr, INDEX_TO_ADDR(last_pc)), 100*sizeof(char) );
	      printf("debug:\tCycle:%lu  \tIM-Addr:0x%x(%.100s)  \t\tSW: value 0x%x(%i) from r%i to Mem:%.100s.\n",
		     machPtr->cycleCount,
		     INDEX_TO_ADDR(last_pc), symGetString_Backup,
		     rd, rd,
		     wordPtr->rd,
		     Sym_GetString(machPtr, tmp) );
	    }

	    if (memoryMapped) stallTime = 2;
	    else stallTime = MEMORY_LATENCY;
	    /* ASIP STALLING : We only stall, if we use our usual DLX-Pipeline. */
	    if (machPtr->pipelineDelay==4) requestPipelineStalling(machPtr, 2, stallTime);
	    else if (machPtr->pipelineDelay==1) machPtr->cycleCount += stallTime;
            machPtr->loadStoreStalls += stallTime;
          break;

          case OP_OR:
            LoadRegisterS1 LoadRegisterS2
            writeRegister(machPtr, wordPtr->rd, rs1|rs2, 0);
          break;

          case OP_ORI:
            LoadRegisterS1
            writeRegister(machPtr, wordPtr->rd, rs1|(wordPtr->extra & 0xffff), 0);
          break;

          case OP_SEQ:
            LoadRegisterS1 LoadRegisterS2
            if (rs1 == rs2) writeRegister(machPtr, wordPtr->rd, 1, 0);
            else writeRegister(machPtr, wordPtr->rd, 0, 0);
          break;

          case OP_SEQI:
            LoadRegisterS1
            if (rs1 == wordPtr->extra) writeRegister(machPtr, wordPtr->rd, 1, 0);
            else writeRegister(machPtr, wordPtr->rd, 0, 0);
          break;

          case OP_SGE:
            LoadRegisterS1 LoadRegisterS2
            if (rs1 >= rs2) writeRegister(machPtr, wordPtr->rd, 1, 0);
            else writeRegister(machPtr, wordPtr->rd, 0, 0);
          break;

          case OP_SGEI:
            LoadRegisterS1
            if (rs1 >= wordPtr->extra) writeRegister(machPtr, wordPtr->rd, 1, 0);
            else writeRegister(machPtr, wordPtr->rd, 0, 0);
          break;

          case OP_SGEU:
            LoadRegisterS1 LoadRegisterS2
            if (((unsigned int) rs1) >= ((unsigned int) rs2)) writeRegister(machPtr, wordPtr->rd, 1, 0);
            else writeRegister(machPtr, wordPtr->rd, 0, 0);
          break;

          case OP_SGT:
            LoadRegisterS1 LoadRegisterS2
            if (rs1 > rs2) writeRegister(machPtr, wordPtr->rd, 1, 0);
            else writeRegister(machPtr, wordPtr->rd, 0, 0);
          break;

          case OP_SGTI:
            LoadRegisterS1
            if (rs1 > wordPtr->extra) writeRegister(machPtr, wordPtr->rd, 1, 0);
            else writeRegister(machPtr, wordPtr->rd, 0, 0);
          break;

          case OP_SGTU:
            LoadRegisterS1 LoadRegisterS2
            if (((unsigned int) rs1) > ((unsigned int) rs2)) writeRegister(machPtr, wordPtr->rd, 1, 0);
            else writeRegister(machPtr, wordPtr->rd, 0, 0);
          break;

          case OP_SLE:
            LoadRegisterS1 LoadRegisterS2
            if (rs1 <= rs2) writeRegister(machPtr, wordPtr->rd, 1, 0);
            else writeRegister(machPtr, wordPtr->rd, 0, 0);
          break;

          case OP_SLEI:
            LoadRegisterS1
            if (rs1 <= wordPtr->extra) writeRegister(machPtr, wordPtr->rd, 1, 0);
            else writeRegister(machPtr, wordPtr->rd, 0, 0);
          break;

          case OP_SLEU:
            LoadRegisterS1 LoadRegisterS2
            if (((unsigned int)rs1) <= ((unsigned int)rs2)) writeRegister(machPtr, wordPtr->rd, 1, 0);
            else writeRegister(machPtr, wordPtr->rd, 0, 0);
          break;

          case OP_SLL:
            LoadRegisterS1 LoadRegisterS2
            writeRegister(machPtr, wordPtr->rd, rs1 << (rs2 & 0x1f), 0);
          break;

          case OP_SLLI:
            LoadRegisterS1
            writeRegister(machPtr, wordPtr->rd, rs1 << (wordPtr->extra & 0x1f), 0);
          break;

          case OP_SLT:
            LoadRegisterS1 LoadRegisterS2
            if (rs1 < rs2) writeRegister(machPtr, wordPtr->rd, 1, 0);
            else writeRegister(machPtr, wordPtr->rd, 0, 0);
          break;

          case OP_SLTI:
            LoadRegisterS1
            if (rs1 < wordPtr->extra) writeRegister(machPtr, wordPtr->rd, 1, 0);
            else writeRegister(machPtr, wordPtr->rd, 0, 0);
          break;

          case OP_SLTU:
            LoadRegisterS1 LoadRegisterS2
            if (((unsigned int)rs1) < ((unsigned int)rs2)) writeRegister(machPtr, wordPtr->rd, 1, 0);
            else writeRegister(machPtr, wordPtr->rd, 0, 0);
          break;

          case OP_SNE:
            LoadRegisterS1 LoadRegisterS2
            if (rs1 != rs2) writeRegister(machPtr, wordPtr->rd, 1, 0);
            else writeRegister(machPtr, wordPtr->rd, 0, 0);
          break;

          case OP_SNEI:
            LoadRegisterS1
            if (rs1 != wordPtr->extra) writeRegister(machPtr, wordPtr->rd, 1, 0);
            else writeRegister(machPtr, wordPtr->rd, 0, 0);
          break;

          case OP_SRA:
            LoadRegisterS1 LoadRegisterS2
            writeRegister(machPtr, wordPtr->rd, ((signed int)rs1) >> (rs2 & 0x1f), 0);
          break;

          case OP_SRAI:
            LoadRegisterS1
	      //printf("SRAI: 0x%.8X -> 0x%.8X\n", rs1, ((signed int)rs1) >> (wordPtr->extra & 0x1f));
            writeRegister(machPtr, wordPtr->rd, ((signed int)rs1) >> (wordPtr->extra & 0x1f), 0);
          break;

          case OP_SRL:
            LoadRegisterS1 LoadRegisterS2
            writeRegister(machPtr, wordPtr->rd, ((unsigned int)rs1) >> (rs2 & 0x1f), 0);
          break;

          case OP_SRLI:
            LoadRegisterS1
	      //printf("SRLI: 0x%.8X -> 0x%.8X\n", rs1, ((unsigned int)rs1) >> (wordPtr->extra & 0x1f));
            writeRegister(machPtr, wordPtr->rd, ((unsigned int)rs1) >> (wordPtr->extra & 0x1f), 0);
	  break;

          case OP_SUB:
            LoadRegisterS1 LoadRegisterS2
            writeRegister(machPtr, wordPtr->rd, rs1-rs2, 0);
          break;

          case OP_SUBI:
            LoadRegisterS1
            writeRegister(machPtr, wordPtr->rd, rs1-wordPtr->extra, 0);
          break;

          case OP_SUBU:
            LoadRegisterS1 LoadRegisterS2
            writeRegister(machPtr, wordPtr->rd, rs1 - rs2, 0);
          break;

          case OP_SUBUI:
            LoadRegisterS1
            writeRegister(machPtr, wordPtr->rd, rs1 - (wordPtr->extra & 0xffff), 0);
          break;

          case OP_XOR:
            LoadRegisterS1 LoadRegisterS2
            writeRegister(machPtr, wordPtr->rd, rs1 ^ rs2, 0);
          break;

          case OP_XORI:
            LoadRegisterS1
            writeRegister(machPtr, wordPtr->rd, rs1 ^ (wordPtr->extra & 0xffff), 0);
	  break;

          case OP_NOP:
          break; 

          case OP_TRAP:
            switch (Handle_Trap(machPtr, (wordPtr->extra & 0x3ffffff))) {
              case 1 :
                printf("TRAP #%d failed\n", wordPtr->extra & 0x3ffffff);
                trapCaught = 1;
              break;
              case 2 :
                printf("TRAP #%d received\n", wordPtr->extra & 0x3ffffff);
		if ( (wordPtr->extra & 0x3ffffff) == 0) {  /* Simulation End */
		  int i, operationCount;
		  for (i = 1, operationCount = 0; *operationNames[i]; i++)
		    operationCount += machPtr->operationCount[i];
		  printf("Altogether %s cycles executed.\n", computeAndPrintRealCycleCount(machPtr) );
		  if (warningCounter_UnresolvedDependency == 0) 
		    printf("  %u Warnings for unresolved data dependencies printed.\n", warningCounter_UnresolvedDependency);
		  else printf("  %u WARNINGS for unresolved data dependencies printed!!!\n", warningCounter_UnresolvedDependency);
		  if (warningCounter_SuccessiveLoadStore == 0)
		    printf("  %u Warnings for successive load/store commands printed.\n", warningCounter_SuccessiveLoadStore);
		  else printf("  %u WARNINGS for successive load/store commands printed!!!\n", warningCounter_SuccessiveLoadStore);
		  if (warningCounter_LoadStoreTextSection == 0)
		    printf("  %u Warnings for load/stores in the text section printed.\n", warningCounter_LoadStoreTextSection);
		  else printf("  %u WARNINGS for load/stores in the text section printed!!!\n", warningCounter_LoadStoreTextSection);
		  /* Finalize the trace file for Jumps */
		  if (machPtr->traceJumpsFile > 0) {
		    writeTraceJumpDictionary(machPtr);
		    fclose(machPtr->traceJumpsDictionaryFile);
		    machPtr->traceJumpsDictionaryFile = 0;

		    // The following is a dummy call to force the last jump
		    //   (the last one is waiting for 'run length encoding')
		    addBranchToTraceFile(machPtr, 0, 0 );
		    fclose(machPtr->traceJumpsFile);
		    machPtr->traceJumpsFile = 0;
		  }

		  /* Close the trace file for BaseBlocks */
		  if (machPtr->traceBaseBlocksFile!=0) {
		    fclose(machPtr->traceBaseBlocksFile);
		    machPtr->traceBaseBlocksFile = 0;
		  }
		  /* Close the trace file for SIs */
		  if (machPtr->traceSIFile!=0) {
		    fclose(machPtr->traceSIFile);
		    machPtr->traceSIFile = 0;
		  }
		  printForecastStatistics();
		}
                trapCaught = 1;
              break;
            }
          break;

	  case OP_NOT_COMPILED:
            Compile(wordPtr);
            goto execute;
          break;

          case OP_RES:
            errMsg = "reserved operation";
          goto error;

          case OP_UNIMP:
            errMsg = "instruction not implemented in simulator";
          goto error;

          default:
            sprintf(interp->result,
              "internal error in Simulate():  bad opCode %d, pc = %.100s",
              wordPtr->opCode, Sym_GetString(machPtr, Sim_GetPC(machPtr)));
            result = TCL_ERROR;
            goto stopSimulation;
	  break;

        } /* end switch */


	if(machPtr->debugBaseBlocks) {
	  int baseBlockNumber;
	  static int registerSnapShot[32] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
	  int registerValue;
	  baseBlockNumber = isAddressBBStart(pc*4);
	  if (baseBlockNumber>=0) {
	    printf("debug BaseBlock Start:\tCycle:%lu\tIM-Addr:0x%x(%u) \"%s\"\n", machPtr->cycleCount, pc, pc, baseBlockList[baseBlockNumber].startName);
	    int i;
	    for (i=1; i<33; i++) {
	      registerValue = readRegister(machPtr, i, 0);
	      if (registerValue!=registerSnapShot[i]) {
		printf("                      \tr%i: 0x%x(%i)\n", i, registerValue, registerValue );
		registerSnapShot[i] = registerValue;
	      }
	    }
	  }
	}

	machPtr->cycleCount++;
	/* re-zero the cycle count periodically to avoid wrap around probs */
	if (machPtr->cycleCount >= CYC_CNT_RESET) {
          printf("INFORMATION: The cycleCount has reached a critical value (%lu) and will be resetted to 0 to prevent an unattended overflow!\n", machPtr->cycleCount);
	  printf("         So far %s cycles simulated\n\n", computeAndPrintRealCycleCount(machPtr));

	  /* ASIP PIPELINE : For the CycleCount-WrapAround the register-files TimeStamp needs to be modified! */
	  modifyRegisterTimeStampsForCycleCountWrapArround(machPtr, 0);

	  /* ASIP STALLING : The stalling-timestamps need to be adjusted, too. */
	  modifyStallingTimeStampsForCycleCountWrapArround(machPtr, 0);
	  

	  machPtr->cycleCount = 0;
	}

	/*
	 * Advance program counters.
	 */
	writeRegister(machPtr, PC_REG, readRegister(machPtr, NEXT_PC_REG, 0), 0);
	writeRegister(machPtr, NEXT_PC_REG, pc, 0);
	/*
	 * Check flags for special actions to perform after the instruction.
	 */
	if (trapCaught) {
	    result = TCL_OK;
	    goto stopSimulation;
	}

	if ((machPtr->insCount += 1) >= checkNum) {
	  int counter=0;
	    while (machPtr->callBackList != NULL) {

	      // TODO: This is a workarround for a potential bug.
	      //       This situation appears (in bursts) after a long (!) simulation time.
	      if (counter++ > 10) {
		printf("WARNING: In cycle %llu aborting callBack-Loop due to potential infinite loop!!\n", computeRealCycleCount(machPtr));
		break;
	      }
	        register CallBack *cbPtr;

		cbPtr = machPtr->callBackList;
		if (machPtr->insCount < cbPtr->serialNum) {
		    break;
		}
		machPtr->callBackList = cbPtr->nextPtr;
		(*cbPtr->proc)(cbPtr->clientData, machPtr);
		free((char *) cbPtr);
	    }
	    if ((machPtr->badPC != 0)
		    && (machPtr->insCount == machPtr->addrErrNum)) {
		result = AddressError(machPtr, machPtr->badPC, 1);
		if (result != TCL_OK) {
		    goto stopSimulation;
		}
	    }
	    if (singleStep==1) {
		tmp = Sim_GetPC(machPtr);
		sprintf(interp->result,
			"stopped after (single) step, pc = %.100s: %.50s",
			Sym_GetString(machPtr, tmp),
			Asm_Disassemble(machPtr,
				machPtr->memPtr[ readRegister(machPtr, PC_REG, 0) ].value,
				tmp & ~0x3));
		result = TCL_OK;
		goto stopSimulation;
	    }
	    if (singleStep>1) singleStep--;

	    if (machPtr->flags & STOP_REQUESTED) {
		errMsg = "execution stopped";
		goto error;
	    }
	    goto setCheckNum;
	}
	endOfIns:
	continue;
    }

    error:
    tmp = Sim_GetPC(machPtr);
    sprintf(interp->result, "ERROR: %s, pc = %.50s: %.60s", errMsg,
	    Sym_GetString(machPtr, tmp),
	    Asm_Disassemble(machPtr,
		    machPtr->memPtr[ readRegister(machPtr, PC_REG, 0) ].value, tmp & ~0x3));
    result = TCL_ERROR;

    /*
     * Before returning, store the current instruction serial number
     * in a Tcl variable.
     */

    stopSimulation:
    Io_EndSim(machPtr);
    sprintf(msg, "%d", machPtr->insCount);
    Tcl_SetVar(machPtr->interp, "insCount", msg, 1);
    if (machPtr->refTraceFile)
      fflush(machPtr->refTraceFile);
    return result;
}

/*
 *----------------------------------------------------------------------
 *
 * Compile --
 *
 *	Given a memory word, decode it into a set of fields that
 *	permit faster interpretation.
 *
 *
 * Results:
 *	None.
 *
 * Side effects:
 *	The contents of *wordPtr are modified.
 *
 *----------------------------------------------------------------------
 */

#define DEBUG_COMPILE 0

static void
Compile(wordPtr)
    register MemWord *wordPtr;		/* Memory location to be compiled. */
{
  register OpInfo *opPtr;

  wordPtr->rs1 = (wordPtr->value >> 21) & 0x1f; 
  wordPtr->rs2 = (wordPtr->value >> 16) & 0x1f;
  wordPtr->rd = (wordPtr->value >> 11) & 0x1f;
  wordPtr->rs3 = (wordPtr->value >> 6) & 0x1f;
  opPtr = &opTable[(wordPtr->value >> 26) & 0x3f];
#if DEBUG_COMPILE
  printf("Compile: opPtr = &opTable[%i]; format = %i\n", (wordPtr->value >> 26) & 0x3f, opPtr->format);
#endif
  wordPtr->opCode = opPtr->opCode;
  if (opPtr->format == IFMT) {
#if DEBUG_COMPILE
    printf("Compile: IFMT-format.\n");
#endif
    wordPtr->rd = wordPtr->rs2;
    wordPtr->extra = wordPtr->value & 0xffff;
    if (wordPtr->extra & 0x8000) {
      wordPtr->extra |= 0xffff0000;
    }
  }
  /* ASIP COMMANDS : TWO_IMM_FMT*/ 
  else if (opPtr->format == TWO_IMM_FMT) {
    wordPtr->imm1 = (wordPtr->value >> 16) & 0x3ff;
    wordPtr->imm2 = wordPtr->value & 0xffff;
#if DEBUG_COMPILE
    printf("Compile: TWO_IMM_FMT-format.\n");
    printf("  imm1: %i(0x%X), imm2:%i(0x%X)\n", wordPtr->imm1, wordPtr->imm1, wordPtr->imm2, wordPtr->imm2);
#endif
  }
  else if (opPtr->format == RFMT) {
#if DEBUG_COMPILE
    printf("Compile: RFMT-format.\n");
#endif
    wordPtr->extra = (wordPtr->value >> 6) & 0x1f;
  } else {
    wordPtr->extra = wordPtr->value & 0x3ffffff;
    if (wordPtr->extra & 0x2000000) {
      wordPtr->extra |= 0xfc000000;
    }
  }
  if (wordPtr->opCode == SPECIAL) {
#if DEBUG_COMPILE
    printf("  SPECIAL OPCODE. Position %i\n", wordPtr->value & 0x3f);
    printf("    rd:%i; rs1:%i; rs2:%i; rs3:%i; extra:%i\n", wordPtr->rd, wordPtr->rs1, wordPtr->rs2, wordPtr->rs3, wordPtr->extra);
#endif
    wordPtr->opCode = specialTable[wordPtr->value & 0x3f];
  }
#if DEBUG_COMPILE
  printf("  OpCode: 0x%x\n", wordPtr->opCode);
#endif
}

/*
 *----------------------------------------------------------------------
 *
 * BusError --
 *
 *	Handle bus error execptions.
 *
 * Results:
 *	A standard Tcl return value.  If TCL_OK, then there is no return
 *	string and it's safe to keep on simulating.
 *
 * Side effects:
 *	May simulate a trap for the machine.
 *
 *----------------------------------------------------------------------
 */

/* ARGSUSED */
static int
BusError(machPtr, address, iFetch)
    DLX *machPtr;		/* Machine description. */
    unsigned int address;	/* Location that was referenced but doesn't
				 * exist. */
    int iFetch;			/* 1 means error occurred during instruction
				 * fetch.  0 means during a load or store. */
{
    unsigned int pcAddr;

    pcAddr = Sim_GetPC(machPtr);
    if (iFetch) {
	sprintf(machPtr->interp->result,
		"bus error: tried to fetch instruction at 0x%x",
		address);
    } else {
	sprintf(machPtr->interp->result,
		"bus error: referenced 0x%x during load or store, pc = %.100s: %s",
		address, Sym_GetString(machPtr, pcAddr),
		Asm_Disassemble(machPtr,
			machPtr->memPtr[ readRegister(machPtr, PC_REG, 0) ].value,
			pcAddr & ~0x3));
    }
    return TCL_ERROR;
}

/*
 *----------------------------------------------------------------------
 *
 * AddressError --
 *
 *	Handle address error execptions.
 *
 * Results:
 *	A standard Tcl return value.  If TCL_OK, then there is no return
 *	string and it's safe to keep on simulating.
 *
 * Side effects:
 *	May simulate a trap for the machine.
 *
 *----------------------------------------------------------------------
 */

/* ARGSUSED */
static int
AddressError(machPtr, address, load)
    DLX *machPtr;		/* Machine description. */
    unsigned int address;	/* Location that was referenced but doesn't
				 * exist. */
    int load;			/* 1 means error occurred during instruction
				 * fetch or load, 0 means during a store. */
{
    sprintf(machPtr->interp->result,
	    "address error (e.g. an unaligned word-access to memory, e.g. \"lw r1, 1(r0)\" ):  referenced 0x%x, pc = %.100s", address,
	    Sym_GetString(machPtr, Sim_GetPC(machPtr)));
    return TCL_ERROR;
}


static char *errstring()
{
	extern int errno, sys_nerr;
	static char msgbuf[64];

	if( !errno )
		return "no error";
	if( errno >= sys_nerr ) {
		sprintf( msgbuf, "unknown error %d", errno );
		return msgbuf;
	}
	return (char*)sys_errlist[errno];
}



/*
 *----------------------------------------------------------------------
 *
 * Sim_TraceCmd --
 *
 *	This command turns on or off tracing in the simulator.
 *
 * Results:
 *	A standard Tcl result.
 *
 * Side effects:
 *	See the user documentation.
 *
 *----------------------------------------------------------------------
 */
int
Sim_TraceCmd(machPtr, interp, argc, argv)
    DLX *machPtr;			/* Machine description. */
    Tcl_Interp *interp;			/* Current interpreter. */
    int argc;				/* Number of arguments. */
    char **argv;			/* Argument strings. */
{
	if( argc == 2 && !strcmp( argv[1], "off" ) ) {
		if( !machPtr->refTraceFile ) {
			sprintf( interp->result, "tracing wasn't on" );
			return TCL_ERROR;
		}
		fclose( machPtr->refTraceFile );
		machPtr->refTraceFile = NULL;
		return TCL_OK;
	}
	if( argc == 3 && !strcmp( argv[1], "on" ) ) {
		if( machPtr->refTraceFile ) {
			sprintf( interp->result,
 			  "tracing already on -- turn it off first" );
			return TCL_ERROR;
		}
		if( !(machPtr->refTraceFile = fopen( argv[2], "a" )) ) {
			sprintf( interp->result, "couldn't open \"%s\": %s",
			  argv[2], errstring() );
			return TCL_ERROR;
		}
		return TCL_OK;
	}
	sprintf( interp->result, "bad option to trace: should be 'on' <filename> or 'off'." );
	return TCL_ERROR;
}
