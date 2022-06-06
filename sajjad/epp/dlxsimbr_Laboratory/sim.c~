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

/*
 * Forward declarations for procedures defined later in this file:
 */
static int	AddressError();
static int	BusError();
static void	Compile();
static int	ReadMem();
static int	Simulate();
static int	WriteMem();

char* formatChar(int c, int useAsciiReplacements);
int readRegister(DLX *machPtr, int registerNumber, int warnings /* 1:true, 0:false*/);
void writeRegister(DLX *machPtr, int registerNumber, int value, int now) ;
void modifyRegisterTimeStampsForCycleCountWrapArround(DLX *machPtr, unsigned long newCycleCount);
// ASIP STALLING : Methods to simulate the concept of Pipeline-Stalling, like the load and store commands use it.
void requestPipelineStalling(DLX *machPtr, unsigned int afterHowManyCycles, unsigned int howLong);
void rescheduleRegisterWriteBacks(DLX *machPtr, unsigned int sinceWhen, unsigned int plusWhat);
void rescheduleFuturePipelineStalls(DLX *machPtr, unsigned int plusWhat);
void checkForCurrentPipelineStallsAndPerformThem(DLX *machPtr);
void modifyStallingTimeStampsForCycleCountWrapArround(DLX *machPtr, unsigned long newCycleCount);

unsigned long long computeRealCycleCount(DLX* machPtr);
char* computeAndPrintRealCycleCount(DLX* machPtr);


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
// Sajjad TODO May be we have to change
#define MEMORY_LATENCY 1
//#define DEBUG_STALLING
#define ALLREADY_WARNED_ARRAY_SIZE 1024

unsigned int warningCounter_SuccessiveLoadStore=0;
unsigned int warningCounter_LoadStoreTextSection=0;
unsigned int warningCounter_UnresolvedDependency=0;
int* arrayForStallingRequests_When; // In which cycle the stalling is to be performed
int* arrayForStallingRequests_HowLong; // how many cycles the stalling shall take
int* arrayForStallingRequests_Delay; // after how many cycles the stalling should start (redundant with 'when' but helpful anyhow)
int arrayForStallingRequests_WritePosition; // Write-Position in the circular buffers
unsigned int allreadyWarnedArray[ALLREADY_WARNED_ARRAY_SIZE];
unsigned int allreadyWarnedArray_writePosition=0;
char* asciiSymbols[33] = {"NUL", "SOH", "STX", "ETX", "EOT", "ENQ",
			  "ACK", "BEL", "BS", "HT", "LF", "VT", "FF",
			  "CR", "SO", "SI", "DLE", "DC1", "DC2", "DC3",
			  "DC4", "NAK", "SYN", "ETB", "CAN", "EM", "SUB",
			  "ESC", "FSP", "GSP", "RSP", "USP", "DEL"};
char* asciiReplacements[2] = {"\n", "\t"};


/*
 * The table below is used to translate bits 31:26 of the instruction
 * into a value suitable for the "opCode" field of a MemWord structure,
 * or into a special value for further decoding.
 */

#define SPECIAL 120
//Sajjad
#define SPECIAL2 121
//Sajjad end

/* ASIP FLOAT :
#define FPARITH	121
*/

//Sajjad
#define RRFMT 1		//R-R
#define RIFMT 2		//R-I
#define MAFMT 3		//Memory Access
#define BRFMT 4		//Branch
#define JPFMT 5		//Jump
#define JPRFMT 6	//Jump Relative
#define SPFMT 7		//Special
#define IIFMT 9		//Two immidiate values
#define NFMT 10		//New Formate
//Sajjad End

typedef struct {
    int opCode;		/* Translated op code. */
    int format;		/* Format type (IFMT or JFMT or RFMT) */
} OpInfo;


/* NEW_COMMANDS:
 * -------------
 * add new instruction to optable. the position is relevant! (see.asm.c)
 */

OpInfo opTable[] = {
  /*  0: */ {SPECIAL2, SPFMT},	{SPECIAL, RRFMT}, {OP_LB, MAFMT}, {OP_LH, MAFMT},
  /*  4: */ {OP_LW, MAFMT}, {OP_SB, MAFMT}, {OP_SH, MAFMT}, {OP_SW, MAFMT},
  /*  8: */ {OP_RES, RIFMT}, {OP_BRZ, BRFMT}, {OP_BRNZ, BRFMT}, {OP_JP, JPFMT},
  /* 12: */ {OP_JPL, JPFMT}, {OP_TRP, JPFMT}, {OP_JPR, JPRFMT}, {OP_JPRL, JPRFMT},
  /* 16: */ {OP_ADDUI, RIFMT},  {OP_BGEU, BRFMT},  {OP_SUBUI, RIFMT},  {OP_LHI, RIFMT},
  /* 20: */ {OP_BEQ, RIFMT},  {OP_EEQI, RIFMT},  {OP_ENEQI, RIFMT},  {OP_ELTI, RIFMT},
  /* 24: */ {OP_EGTI, RIFMT},  {OP_ELEI, RIFMT},  {OP_EGEI, RIFMT},  {OP_BNEQ, BRFMT},
  /* 28: */ {OP_BGTU, BRFMT},  {OP_BLEU, BRFMT},  {OP_LBU, MAFMT},  {OP_LHU, MAFMT},
  /* 32: */ {OP_ADDI, RIFMT},  {OP_SUBI, RIFMT},  {OP_ANDI, RIFMT},  {OP_ORI, RIFMT},
  /* 36: */ {OP_XORI, RIFMT},  {OP_LLSI, RIFMT},  {OP_LRSI, RIFMT},  {OP_ARSI, RIFMT},
  /* 40: */ {OP_LSOI, RIFMT},  {OP_BLTU, BRFMT},  {OP_RES, RIFMT},  {OP_RES, RIFMT},
  /* 44: */ {OP_RES, RIFMT},  {OP_RES, RIFMT},  {OP_RES, RIFMT},  {OP_RES, RIFMT},
  /* 48: */ {OP_RES, IIFMT},  {OP_TRAP, RIFMT},  {OP_RES, RIFMT},  {OP_RES, RIFMT},
  /* 52: */ {OP_RES, RIFMT},  {OP_RES, RIFMT},  {OP_RES, RIFMT},  {OP_RES, RIFMT},
  /* 56: */ {OP_RES, RIFMT},  {OP_RES, RIFMT},  {OP_RES, RIFMT},  {OP_RES, RIFMT},
  /* 64: */ {OP_RES, RIFMT},  {OP_RES, RIFMT},  {OP_RES, RIFMT},  {OP_RES, RIFMT}
};

/*
 * the table below is used to convert the "funct" field of SPECIAL
 * instructions into the "opCode" field of a MemWord.
 */

/* ASIP NEW_INSTRUCTIONS Change one of the OP_RES into your own command. */


int specialTable[] = {
  /*  0: 0x00*/ OP_ADD,  OP_SUB, OP_MUL, OP_DIV, OP_MOD,  OP_DIVU, OP_MODU,  OP_RES,
  /*  8: 0x08*/ OP_RES,  OP_RES, OP_RES,  OP_CMOV, OP_RES, OP_CADD, OP_RES,  OP_RES,
  /* 16: 0x10*/ OP_AND,  OP_OR, OP_XOR, OP_NAND, OP_NOR, OP_RES,  OP_RES, OP_EGTU,
  /* 24: 0x18*/ OP_ELEU, OP_EGEU,  OP_RES,  OP_RES,  OP_RES,  OP_RES,   OP_RES,  OP_RES,
  /* 32: 0x20*/ OP_LLS,  OP_LRS, OP_ARS,  OP_RES, OP_RES,  OP_RES,    OP_RES,  OP_ADDU,
  /* 40: 0x28*/ OP_SUBU,  OP_EGT,  OP_ELE,  OP_EGE,  OP_RES,  OP_RES,   OP_RES,  OP_RES,
  /* 48: 0x30*/ OP_ELT,  OP_ELTU,  OP_EEQ,  OP_ENEQ,  OP_RES,  OP_RES,   OP_RES,  OP_RES,
  /* 56: 0x38*/ OP_RES,  OP_RES,  OP_RES,  OP_RES,  OP_RES,  OP_RES,   OP_RES,  OP_RES
};

int special2Table[] = {
  /*  0: 0x00*/ OP_NOP,  OP_RETI,  OP_EXBW,  OP_RES,  OP_RES,  OP_RES,   OP_RES,  OP_RES,
  /*  8: 0x08*/ OP_RES,  OP_RES,  OP_RES,  OP_RES,  OP_RES,  OP_RES,   OP_RES,  OP_RES,
  /* 16: 0x10*/ OP_RES,  OP_RES,  OP_RES,  OP_RES,  OP_RES,  OP_RES,   OP_RES,  OP_RES,
  /* 24: 0x18*/ OP_RES,  OP_RES,  OP_RES,  OP_RES,  OP_RES,  OP_RES,   OP_RES,  OP_RES,
  /* 32: 0x20*/ OP_RES,  OP_RES,  OP_EXHW,  OP_RES,  OP_RES,  OP_RES,   OP_RES,  OP_RES,
  /* 40: 0x28*/ OP_RES,  OP_RES,  OP_RES,  OP_RES,  OP_RES,  OP_RES,   OP_RES,  OP_RES,
  /* 48: 0x30*/ OP_RES,  OP_RES,  OP_RES,  OP_RES,  OP_RES,  OP_RES,   OP_RES,  OP_RES,
  /* 56: 0x38*/ OP_RES,  OP_RES,  OP_RES,  OP_RES,  OP_RES,  OP_RES,   OP_RES,  OP_RES
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
  /*  0: */  "", "ADD", "SUB", "MUL", "DIV", "DIVU", "MOD", "MODU",
  /*  8: */  "AND", "NAND", "OR", "NOR", "XOR", "LLS", "LRS", "ARS",
  /* 16: */ "ELT", "ELTU", "EEQ", "ENEQ", "ADDI", "SUBI", "ANDI", "ORI",
  /* 24: */ "XORI", "LLSI", "LRSI", "ARSI", "LSOI", "LB", "LH", "LW",
  /* 32: */ "SB", "SH", "SW", "BRZ", "BRNZ", "JP", "JPL", "TRP", "JPR",
  /* 40: */ "JPRL", "NOP", "RETI", "EXBW", "EXHW", "ADDU", "ADDUI", "LHI",
  /* 48: */ "LBU", "LHU", "MULU", "EEQI", "EGE", "EGEI", "EGEU", "EGT",
  /* 56: */ "EGTI", "EGTU", "ELE", "ELEI", "ELEU", "ELTI", "ENEQI", "SUBU",
  /* 64: */ "SUBUI", "CMOV", "BEQ", "BNEQ", "CADD", "BGTU", "BLEU", "BLTU",
  /* 72: */ "BGEU", "", "", "", "", "", "", "",
  /* 80: */ "", "", "", "", "", "", "", "",
  /* 88: */ "", "", "", "", "",  "", "", "",
  /* 96  */ "", "", "", "", "", ""
};

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

DLX * Sim_Create(memSize, interp, au, al, mu, ml, du, dl, pd, pf)
    int memSize;			/* Number of bytes of memory to be
				 	 	 	 * allocated for the machine. */
    Tcl_Interp *interp;		/* Interpreter to associate with machine. */
    int au, mu, du;			/* latencies for add, multiply, and divide */
    int al, ml, dl;			/* number of add, multiply, and divide units */
    int pd;                 /* Pipeline Delay */
    int pf;                 /* Pipeline Forwarding */
{
    register DLX *machPtr;
    register MemWord *wordPtr;
    int i, j;
    extern int Main_QuitCmd();

    machPtr = (DLX *) calloc(1, sizeof(DLX));
    machPtr->interp = interp;
    machPtr->numWords = (memSize+3) & ~0x3;
    //Brownie TODO may be we have to fix it for Brownie
    machPtr->pipelineDelay = pd;
    machPtr->pipelineForwarding = pf;
    //Brownie End

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

int Sim_DumpStats(machPtr, interp, argc, argv)
    DLX *machPtr;			/* Machine description. */
    Tcl_Interp *interp;		/* Current interpreter. */
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
			//Brownie
			//if (strcmp(operationNames[i], "NOP") == 0) machPtr->operationCount[i]-=machPtr->orgStall;
			//Brownie end
			printf("%8s %8d  ", operationNames[i], machPtr->operationCount[i]);
			intCount += machPtr->operationCount[i];
		}
		printf("\nTotal integer operations = %d\n\n", intCount);
		printf("Total cycles = %s\n", computeAndPrintRealCycleCount(machPtr));
		//Brownie
		//printf("Current cycleCount = %lu  (Differs from the total cycles, if an cycleCount-overflow happened)\n", machPtr->cycleCount==0?0:machPtr->cycleCount-1);
		printf("Current cycleCount = %lu  (Differs from the total cycles, if an cycleCount-overflow happened)\n", machPtr->cycleCount==0?0:machPtr->cycleCount-machPtr->orgStall-1);
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
      else 	printf ("\nBranches:  total %d, taken %d (%.2lf%%), untaken %d (%.2lf%%)\n",
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

int Sim_GoCmd(machPtr, interp, argc, argv)
    DLX *machPtr;			/* Machine description. */
    Tcl_Interp *interp;		/* Current interpreter. */
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

int Sim_StepCmd(machPtr, interp, argc, argv)
    DLX *machPtr;			/* Machine description. */
    Tcl_Interp *interp;		/* Current interpreter. */
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
		    	"\"%.50s\" isn't a valid address", argprintf("Test 7\n");v[1]);
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

void Sim_CallBack(machPtr, numIns, proc, clientData)
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
    if ((machPtr->callBackList == NULL) || (cbPtr->serialNum < machPtr->callBackList->serialNum)) {
    	cbPtr->nextPtr = machPtr->callBackList;
    	machPtr->callBackList = cbPtr;
    } else {
    	register CallBack *cbPtr2;

    	for (cbPtr2 = machPtr->callBackList; cbPtr2->nextPtr != NULL; cbPtr2 = cbPtr2->nextPtr) {
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

void Sim_Stop(machPtr)
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

unsigned int Sim_GetPC(machPtr)
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

static int ReadMem(machPtr, address, valuePtr)
    register DLX *machPtr;	/* Machine whose memory is being read. */
    unsigned int address;	/* Desired word address. */
    int *valuePtr;			/* Store contents of given word here. */
{
    unsigned int index;
    int result;
    register MemWord *wordPtr;

    index = ADDR_TO_INDEX(address);
    if (index < machPtr->numWords) {
    	wordPtr = &machPtr->memPtr[index];
    	if ((wordPtr->stopList != NULL) && (machPtr->insCount != machPtr->firstIns)) {
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

static int WriteMem(machPtr, address, size, value)
    register DLX *machPtr;	/* Machine whose memory is being read. */
    unsigned int address;	/* Desired word address. */
    int size;				/* Size to be written (1, 2, or 4 bytes). */
    int value;				/* New value to write into memory. */
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
    	if ((wordPtr->stopList != NULL) && (machPtr->insCount != machPtr->firstIns)) {
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
    			wordPtr->value = (wordPtr->value & 0xffff0000) | (value & 0xffff);
    		} else {
    			wordPtr->value = (wordPtr->value & 0xffff) | (value << 16);
    		}
    	} else {
    		switch (address & 0x3) {
    		case 0:
    			wordPtr->value = (wordPtr->value & 0x00ffffff) | (value << 24);
    			break;
    		case 1:
    			wordPtr->value = (wordPtr->value & 0xff00ffff) | ((value & 0xff) << 16);
			    break;
    		case 2:
    			wordPtr->value = (wordPtr->value & 0xffff00ff) | ((value & 0xff) << 8);
    			break;
    		case 3:
    			wordPtr->value = (wordPtr->value & 0xffffff00) | (value & 0xff);
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

static int Simulate(machPtr, interp, singleStep)
    register DLX *machPtr;		/* Machine description. */
    Tcl_Interp *interp;			/* Tcl interpreter, for results and
					 	 	 	 * break commands. */
    int singleStep;				/* Non-zero means execute exactly
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
    //static int additionalClockCycleForJump = 0;
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
    	//Sajjad TODO to avoid number of cycles for load or branches
    	//additionalClockCycleForJump=-1;
    	//Sajjad end
		/*if (additionalClockCycleForJump>=0) {
		  additionalClockCycleForJump--;
		  if (additionalClockCycleForJump==0) {
			machPtr->cycleCount++;
			machPtr->jumpStalls++;
		  }
		}*/

		/* ASIP STALLING : Check for a pending request for a pipeline stall and perform it if necessary */
		checkForCurrentPipelineStallsAndPerformThem(machPtr);

		/* ASIP STATS: increase IMCount: */
		machPtr->imCount[pc]++;

		if (machPtr->refTraceFile)
		  fprintf(machPtr->refTraceFile, "2 %x\n", INDEX_TO_ADDR(pc));
		wordPtr = &machPtr->memPtr[pc];
		last_pc = pc;
		pc = readRegister(machPtr, NEXT_PC_REG, 0) + 1;

		//printf("before last_pc = %d\n",last_pc); //Debug for Brownie
		//printf("before pc = %d\n",pc); //Debug for Brownie
		//printf("machPtr->cycleCount = %d\n",machPtr->cycleCount); //Debug for Brownie


		/*
		 * Handle breaks on the instruction, if this isn't the first
		 * instruction executed.
		 */
		if ((wordPtr->stopList != NULL) && (machPtr->insCount != machPtr->firstIns)) {
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

		//printf("execute wordPtr opCode %8x\n", wordPtr->opCode); //Debug for Brownie


		/* ASIP COMMANDS ASIP NEW_INSTRUCTIONS : In diesem Switch die Implementierung der neuen Befehle eintragen. */
		/* ASIP PIPELINE : In jedem Befehl den Zugriff auf die Register an die Methoden delegiert.
						   Das wird jetzt durch die LoadRegister Makros erledigt. */
		switch (wordPtr->opCode) {
			/* ASIP COMMANDS : */
		case OP_MUL:
			LoadRegisterS1 LoadRegisterS2
			writeRegister(machPtr, wordPtr->rd, rs1*rs2, 0);
			/* ASIP STALLING : We only stall, if we use our usual DLX-Pipeline.*/
			//Brownie TODO 34??
			//if (machPtr->pipelineDelay==4) (machPtr, 1, 34);
			//else if (machPtr->pipelineDelay==1) machPtr->cycleCount += 34;
			machPtr->cycleCount += 34;
			machPtr->multDivModStalls += 34;
			break;

		case OP_MULU:
			LoadRegisterS1 LoadRegisterS2
			writeRegister(machPtr, wordPtr->rd, (unsigned int)( (unsigned int)rs1 * (unsigned int)rs2 ), 0);
			// ASIP STALLING : We only stall, if we use our usual DLX-Pipeline.
			//Brownie
			//if (machPtr->pipelineDelay==4) (machPtr, 1, 34);
			//else if (machPtr->pipelineDelay==1) machPtr->cycleCount += 34;
			machPtr->cycleCount += 34;
			machPtr->multDivModStalls += 34;
			break;

		case OP_DIV:
			LoadRegisterS1 LoadRegisterS2
			writeRegister(machPtr, wordPtr->rd, rs1/rs2, 0);
			/* ASIP STALLING : We only stall, if we use our usual DLX-Pipeline.*/
			//Brownie
			//if (machPtr->pipelineDelay==4) (machPtr, 1, 34);
			//else if (machPtr->pipelineDelay==1) machPtr->cycleCount += 34;
			machPtr->cycleCount += 34;
			machPtr->multDivModStalls += 34;
			break;

		case OP_DIVU:
			LoadRegisterS1 LoadRegisterS2
			writeRegister(machPtr, wordPtr->rd, (unsigned int)( (unsigned int)rs1 / (unsigned int)rs2 ), 0);
			/* ASIP STALLING : We only stall, if we use our usual DLX-Pipeline.*/
			//Brownie
			//if (machPtr->pipelineDelay==4) (machPtr, 1, 34);
			//else if (machPtr->pipelineDelay==1) machPtr->cycleCount += 34;
			machPtr->cycleCount += 34;
			machPtr->multDivModStalls += 34;
			break;

		case OP_MOD:
			LoadRegisterS1 LoadRegisterS2
			writeRegister(machPtr, wordPtr->rd, rs1%rs2, 0);
			/* ASIP STALLING : We only stall, if we use our usual DLX-Pipeline.*/
			//Brownie
			//if (machPtr->pipelineDelay==4) (machPtr, 1, 34);
			//else if (machPtr->pipelineDelay==1) machPtr->cycleCount += 34;
			machPtr->cycleCount += 34;
			machPtr->multDivModStalls += 34;
			break;

		case OP_MODU:
			LoadRegisterS1 LoadRegisterS2
			writeRegister(machPtr, wordPtr->rd, (unsigned int)( (unsigned int)rs1 % (unsigned int)rs2 ), 0);
			/* ASIP STALLING : We only stall, if we use our usual DLX-Pipeline.*/
			//Brownie
			//if (machPtr->pipelineDelay==4) (machPtr, 1, 34);
			//else if (machPtr->pipelineDelay==1) machPtr->cycleCount += 34;
			machPtr->cycleCount += 34;
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

		case OP_NAND:
			LoadRegisterS1 LoadRegisterS2
			writeRegister(machPtr, wordPtr->rd, ~(rs1 & rs2), 0);
			break;

		case OP_OR:
			LoadRegisterS1 LoadRegisterS2
			writeRegister(machPtr, wordPtr->rd, rs1|rs2, 0);
			break;

		case OP_NOR:
			LoadRegisterS1 LoadRegisterS2
			writeRegister(machPtr, wordPtr->rd, ~(rs1|rs2), 0);
			break;

		case OP_ORI:
			LoadRegisterS1
			writeRegister(machPtr, wordPtr->rd, rs1|(wordPtr->extra & 0xffff), 0);
			break;

		case OP_EEQ:
			LoadRegisterS1 LoadRegisterS2
			if (rs1 == rs2) writeRegister(machPtr, wordPtr->rd, 1, 0);
			else writeRegister(machPtr, wordPtr->rd, 0, 0);
			break;

		case OP_EEQI:
			LoadRegisterS1
			if (rs1 == wordPtr->extra) writeRegister(machPtr, wordPtr->rd, 1, 0);
			else writeRegister(machPtr, wordPtr->rd, 0, 0);
			break;

		case OP_EGE:
			LoadRegisterS1 LoadRegisterS2
			if (rs1 >= rs2) writeRegister(machPtr, wordPtr->rd, 1, 0);
			else writeRegister(machPtr, wordPtr->rd, 0, 0);
			break;

		case OP_EGEI:
			LoadRegisterS1
			if (rs1 >= wordPtr->extra) writeRegister(machPtr, wordPtr->rd, 1, 0);
			else writeRegister(machPtr, wordPtr->rd, 0, 0);
			break;

		case OP_EGEU:
			LoadRegisterS1 LoadRegisterS2
			if (((unsigned int) rs1) >= ((unsigned int) rs2)) writeRegister(machPtr, wordPtr->rd, 1, 0);
			else writeRegister(machPtr, wordPtr->rd, 0, 0);
			break;

		case OP_EGT:
			LoadRegisterS1 LoadRegisterS2
			if (rs1 > rs2) writeRegister(machPtr, wordPtr->rd, 1, 0);
			else writeRegister(machPtr, wordPtr->rd, 0, 0);
			break;

		case OP_EGTI:
			LoadRegisterS1
			if (rs1 > wordPtr->extra) writeRegister(machPtr, wordPtr->rd, 1, 0);
			else writeRegister(machPtr, wordPtr->rd, 0, 0);
			break;

		case OP_EGTU:
			LoadRegisterS1 LoadRegisterS2
			if (((unsigned int) rs1) > ((unsigned int) rs2)) writeRegister(machPtr, wordPtr->rd, 1, 0);
			else writeRegister(machPtr, wordPtr->rd, 0, 0);
			break;

		case OP_ELE:
			LoadRegisterS1 LoadRegisterS2
			if (rs1 <= rs2) writeRegister(machPtr, wordPtr->rd, 1, 0);
			else writeRegister(machPtr, wordPtr->rd, 0, 0);
			break;

		case OP_ELEI:
			LoadRegisterS1
			if (rs1 <= wordPtr->extra) writeRegister(machPtr, wordPtr->rd, 1, 0);
			else writeRegister(machPtr, wordPtr->rd, 0, 0);
			break;

		case OP_ELEU:
			LoadRegisterS1 LoadRegisterS2
			if (((unsigned int)rs1) <= ((unsigned int)rs2)) writeRegister(machPtr, wordPtr->rd, 1, 0);
			else writeRegister(machPtr, wordPtr->rd, 0, 0);
			break;

		case OP_LLS:
			LoadRegisterS1 LoadRegisterS2
			writeRegister(machPtr, wordPtr->rd, rs1 << (rs2 & 0x1f), 0);
			break;

		case OP_LLSI:
			LoadRegisterS1
			writeRegister(machPtr, wordPtr->rd, rs1 << (wordPtr->extra & 0x1f), 0);
			break;

		case OP_ELT:
			LoadRegisterS1 LoadRegisterS2
			if (rs1 < rs2) writeRegister(machPtr, wordPtr->rd, 1, 0);
			else writeRegister(machPtr, wordPtr->rd, 0, 0);
			break;

		case OP_ELTI:
			LoadRegisterS1
			if (rs1 < wordPtr->extra) writeRegister(machPtr, wordPtr->rd, 1, 0);
			else writeRegister(machPtr, wordPtr->rd, 0, 0);
			break;

		case OP_ELTU:
			LoadRegisterS1 LoadRegisterS2
			if (((unsigned int)rs1) < ((unsigned int)rs2)) writeRegister(machPtr, wordPtr->rd, 1, 0);
			else writeRegister(machPtr, wordPtr->rd, 0, 0);
			break;

		case OP_ENEQ:
			LoadRegisterS1 LoadRegisterS2
			if (rs1 != rs2) writeRegister(machPtr, wordPtr->rd, 1, 0);
			else writeRegister(machPtr, wordPtr->rd, 0, 0);
			break;

		case OP_ENEQI:
			LoadRegisterS1
			if (rs1 != wordPtr->extra) writeRegister(machPtr, wordPtr->rd, 1, 0);
			else writeRegister(machPtr, wordPtr->rd, 0, 0);
			break;

		case OP_ARS:
			LoadRegisterS1 LoadRegisterS2
			writeRegister(machPtr, wordPtr->rd, ((signed int)rs1) >> (rs2 & 0x1f), 0);
			break;

		case OP_ARSI:
			LoadRegisterS1
			//printf("SRAI: 0x%.8X -> 0x%.8X\n", rs1, ((signed int)rs1) >> (wordPtr->extra & 0x1f));
			writeRegister(machPtr, wordPtr->rd, ((signed int)rs1) >> (wordPtr->extra & 0x1f), 0);
			break;

		case OP_LRS:
			LoadRegisterS1 LoadRegisterS2
			writeRegister(machPtr, wordPtr->rd, ((unsigned int)rs1) >> (rs2 & 0x1f), 0);
			break;

		case OP_LRSI:
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

		case OP_LSOI:
			//Brownie
			LoadRegisterS1
			writeRegister(machPtr, wordPtr->rd, (rs1 << 16) | (wordPtr->extra & 0xffff), 0);

			break;
		case OP_EXBW:
			//Brownie
			LoadRegisterS1
			writeRegister(machPtr, wordPtr->rd, ((rs1 & 0xff) | 0xffffff00), 0);
			break;
		case OP_EXHW:
			LoadRegisterS1
			writeRegister(machPtr, wordPtr->rd, ((rs1 & 0xffff) | 0xffff0000), 0);
			break;
		case OP_NOP:
			break;
		// BRANCH INSTRUCTIONS
		case OP_BRZ:
			LoadRegisterS1
			if (rs1 == 0) {
				pc = readRegister(machPtr, NEXT_PC_REG, 0) + ADDR_TO_INDEX(wordPtr->extra);
				//Brownie
				if (machPtr->pipelineForwarding==1){
					writeRegister(machPtr, NEXT_PC_REG, pc, 0);
					pc++;
				}
				//Brownie End
				machPtr->branchYes++;
				/* ASIP JUMP : */
				//Brownie no need fo additional cycles
				//additionalClockCycleForJump = 2;
				if (machPtr->debugAssembly) {
					memcpy(symGetString_Backup, Sym_GetString(machPtr, INDEX_TO_ADDR(last_pc)), 100*sizeof(char) );
					printf("debug:\tCycle:%lu  \tIM-Addr:0x%x(%.100s)  \t\tBEQZ to IM-Addr:0x%x(%.100s).\n",
							machPtr->cycleCount,
							INDEX_TO_ADDR(last_pc), symGetString_Backup,
							INDEX_TO_ADDR(pc), Sym_GetString(machPtr, INDEX_TO_ADDR(pc)) );
				}
				addBranchToTraceFile(machPtr, INDEX_TO_ADDR(last_pc), INDEX_TO_ADDR(pc) );
				//addBranchToTraceFile(machPtr->traceJumpsFile, INDEX_TO_ADDR(last_pc), INDEX_TO_ADDR(pc) );

			} else machPtr->branchNo++;
			machPtr->branchSerial = machPtr->insCount;
			machPtr->branchPC = INDEX_TO_ADDR( readRegister(machPtr, PC_REG, 0) );
			break;

		case OP_BRNZ:
			LoadRegisterS1
			if (rs1 != 0) {
				pc = readRegister(machPtr, NEXT_PC_REG, 0) + ADDR_TO_INDEX(wordPtr->extra);
				//Brownie
				if (machPtr->pipelineForwarding==1){
					writeRegister(machPtr, NEXT_PC_REG, pc, 0);
					pc++;
				}
				//Brownie End
				machPtr->branchYes++;
				/* ASIP JUMP : */
				//Brownie no need fo additional cycles
				//additionalClockCycleForJump = 2;
				if (machPtr->debugAssembly) {
					memcpy(symGetString_Backup, Sym_GetString(machPtr, INDEX_TO_ADDR(last_pc)), 100*sizeof(char) );
					printf("debug:\tCycle:%lu  \tIM-Addr:0x%x(%.100s)  \t\tBNEZ to IM-Addr:0x%x(%.100s).\n",
							machPtr->cycleCount,
							INDEX_TO_ADDR(last_pc), symGetString_Backup,
							INDEX_TO_ADDR(pc), Sym_GetString(machPtr, INDEX_TO_ADDR(pc)) );
				}
				//addBranchToTraceFile(machPtr->traceJumpsFile, INDEX_TO_ADDR(last_pc), INDEX_TO_ADDR(pc) );
				addBranchToTraceFile(machPtr, INDEX_TO_ADDR(last_pc), INDEX_TO_ADDR(pc) );
			} else machPtr->branchNo++;
			machPtr->branchSerial = machPtr->insCount;
			machPtr->branchPC = INDEX_TO_ADDR( readRegister(machPtr, PC_REG, 0) );
			break;
		/* ASIP COMMANDS : MERGE SEQ BEZ */
		case OP_BEQ:  /* Format: beq rs1, rs2, label */
			LoadRegisterS1 LoadRegisterS2
			if(rs1 == rs2) {
				pc = readRegister(machPtr, NEXT_PC_REG, 0) + ADDR_TO_INDEX(wordPtr->extra);
				//Brownie
				if (machPtr->pipelineForwarding==1){
					writeRegister(machPtr, NEXT_PC_REG, pc, 0);
					pc++;
				}
				//Brownie End
				machPtr->branchYes++;
				/* ASIP JUMP : */
				//Brownie no need fo additional cycles
				//additionalClockCycleForJump = 2;
				if (machPtr->debugAssembly) {
					memcpy(symGetString_Backup, Sym_GetString(machPtr, INDEX_TO_ADDR(last_pc)), 100*sizeof(char) );
					printf("debug:\tCycle:%lu  \tIM-Addr:0x%x(%.100s)  \t\tBEQ to IM-Addr:0x%x(%.100s).\n",
					  machPtr->cycleCount,
					  INDEX_TO_ADDR(last_pc), symGetString_Backup,
					  INDEX_TO_ADDR(pc), Sym_GetString(machPtr, INDEX_TO_ADDR(pc)));
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
				//Brownie
				if (machPtr->pipelineForwarding==1){
					writeRegister(machPtr, NEXT_PC_REG, pc, 0);
					pc++;
				}
				//Brownie End
				machPtr->branchYes++;
				/* ASIP JUMP : */
				//Brownie no need fo additional cycles
				//additionalClockCycleForJump = 2;
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
				//Brownie
				if (machPtr->pipelineForwarding==1){
					writeRegister(machPtr, NEXT_PC_REG, pc, 0);
					pc++;
				}
				//Brownie End
				machPtr->branchYes++;
				/* ASIP JUMP : */
				//Brownie no need fo additional cycles
				//additionalClockCycleForJump = 2;
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
				//Brownie
				if (machPtr->pipelineForwarding==1){
					writeRegister(machPtr, NEXT_PC_REG, pc, 0);
					pc++;
				}
				//Brownie End
				machPtr->branchYes++;
				/* ASIP JUMP : */
				//Brownie no need fo additional cycles
				//additionalClockCycleForJump = 2;
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
				//Brownie
				if (machPtr->pipelineForwarding==1){
					writeRegister(machPtr, NEXT_PC_REG, pc, 0);
					pc++;
				}
				//Brownie End
				machPtr->branchYes++;
				/* ASIP JUMP : */
				//Brownie no need fo additional cycles
				//additionalClockCycleForJump = 2;
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
				//Brownie
				if (machPtr->pipelineForwarding==1){
					writeRegister(machPtr, NEXT_PC_REG, pc, 0);
					pc++;
				}
				//Brownie End
				machPtr->branchYes++;
				/* ASIP JUMP : */
				//Brownie no need fo additional cycles
				//additionalClockCycleForJump = 2;
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

		// JUMP INSTRUCTIONS
		case OP_JPL:
			//Brownie
			//writeRegister(machPtr, R31, INDEX_TO_ADDR(readRegister(machPtr, NEXT_PC_REG, 0)+1), 0);
			//writeRegister(machPtr, R3, INDEX_TO_ADDR(readRegister(machPtr, NEXT_PC_REG, 0)+1), 0);//commented from 06112018
			writeRegister(machPtr, R3, INDEX_TO_ADDR(readRegister(machPtr, NEXT_PC_REG, 0)+0), 0);
			/* continue with OP_JP */
		case OP_JP:
			pc = last_pc + 1 + ADDR_TO_INDEX(wordPtr->extra);
			//Brownie
			if (machPtr->pipelineForwarding==1){
				writeRegister(machPtr, NEXT_PC_REG, pc, 0);
				pc++;
			}
			//Brownie End
			machPtr->branchSerial = machPtr->insCount;
			machPtr->branchPC = INDEX_TO_ADDR( readRegister(machPtr, PC_REG, 0) );

			//printf("last_pc=%d\n",last_pc);//Debug for Brownie
			//printf("pc=%d\n",pc);//Debug for Brownie

			if (machPtr->debugAssembly) {
				if (wordPtr->opCode==OP_JPL) snprintf(tempString, TEMP_STRING_SIZE, "AL");
				else tempString[0] = '\0';
				memcpy(symGetString_Backup, Sym_GetString(machPtr, INDEX_TO_ADDR(last_pc)), 100*sizeof(char) );
				printf("debug:\tCycle:%lu  \tIM-Addr:0x%x(%.100s)  \t\tJ%s to IM-Addr:0x%x(%.100s).\n",
						machPtr->cycleCount,
						INDEX_TO_ADDR(last_pc), symGetString_Backup,
						tempString,
						INDEX_TO_ADDR(pc), Sym_GetString(machPtr, INDEX_TO_ADDR(pc)) );
			}
			//addBranchToTraceFile(machPtr->traceJumpsFile, INDEX_TO_ADDR(last_pc), INDEX_TO_ADDR(pc) );
			addBranchToTraceFile(machPtr, INDEX_TO_ADDR(last_pc), INDEX_TO_ADDR(pc) );
			/* ASIP JUMP : */
			//Brownie no need fo additional cycles
			//additionalClockCycleForJump = 2;
			break;

		case OP_JPRL:
			//Brownie
			//writeRegister(machPtr, R31, INDEX_TO_ADDR( readRegister(machPtr, NEXT_PC_REG, 0)+1), 0);
			//writeRegister(machPtr, R3, INDEX_TO_ADDR( readRegister(machPtr, NEXT_PC_REG, 0)+1), 0); //commented 07112018
			writeRegister(machPtr, R3, INDEX_TO_ADDR( readRegister(machPtr, NEXT_PC_REG, 0)+0), 0);

			/* continue with OP_JPR */
		case OP_JPR:
			LoadRegisterS1
			//printf("JPR PC b4 = %d\n",pc);//Debug for Brownie
			pc = ADDR_TO_INDEX(rs1);
			//printf("JPR rs1 after = %d\n",rs1);//Debug for Brownie
			//printf("JPR PC after = %d\n",pc);//Debug for Brownie
			//printf("machPtr->pipelineForwarding %d \n",machPtr->pipelineForwarding);//Debug for Brownie
			//Brownie
			if (machPtr->pipelineForwarding==1){
				writeRegister(machPtr, NEXT_PC_REG, pc, 0);
				pc++;
			}

			//Brownie End
			if ((rs1 & 0x3) && (machPtr->badPC == 0)) {
				machPtr->badPC = rs1;
				machPtr->addrErrNum = machPtr->insCount + 2;
				if (checkNum > machPtr->addrErrNum) checkNum = machPtr->addrErrNum;
			}
			machPtr->branchSerial = machPtr->insCount;
			machPtr->branchPC = INDEX_TO_ADDR(readRegister(machPtr, PC_REG, 0) );
			if (machPtr->debugAssembly) {
				if (wordPtr->opCode==OP_JPRL) snprintf(tempString, TEMP_STRING_SIZE, "AL");
				else tempString[0] = '\0';
				memcpy(symGetString_Backup, Sym_GetString(machPtr, INDEX_TO_ADDR(last_pc)), 100*sizeof(char) );
				printf("debug:\tCycle:%lu  \tIM-Addr:0x%x(%.100s)  \t\tJ%sR to IM-Addr:0x%x(%.100s).\n",
						machPtr->cycleCount,
						INDEX_TO_ADDR(last_pc), symGetString_Backup,
						tempString,
						INDEX_TO_ADDR(pc), Sym_GetString(machPtr, INDEX_TO_ADDR(pc)) );
			}
			//addBranchToTraceFile(machPtr->traceJumpsFile, INDEX_TO_ADDR(last_pc), INDEX_TO_ADDR(pc) );
			addBranchToTraceFile(machPtr, INDEX_TO_ADDR(last_pc), INDEX_TO_ADDR(pc) );
			/* ASIP JUMP : */
			//Brownie no need fo additional cycles
			//additionalClockCycleForJump = 2;
			break;


		case OP_RETI:
			//Brownie
			pc = readRegister(machPtr, IR_REG, 0);
			writeRegister(machPtr, NEXT_PC_REG, pc, 0);
			pc++;
			//printf("pc1=%d\n",readRegister(machPtr, IR_REG, 0));//Debug for Brownie
			//printf("pc1=%d\n", INDEX_TO_ADDR( readRegister(machPtr, IR_REG, 0) ));//Debug for Brownie
			machPtr->branchSerial = machPtr->insCount;
			machPtr->branchPC = INDEX_TO_ADDR( readRegister(machPtr, PC_REG, 0) );
			if (machPtr->debugAssembly) {
				if (wordPtr->opCode==OP_RETI) snprintf(tempString, TEMP_STRING_SIZE, "AL");
				else tempString[0] = '\0';
				memcpy(symGetString_Backup, Sym_GetString(machPtr, INDEX_TO_ADDR(last_pc)), 100*sizeof(char) );
				printf("debug:\tCycle:%lu  \tIM-Addr:0x%x(%.100s)  \t\tJ%s to IM-Addr:0x%x(%.100s).\n",
						machPtr->cycleCount,
						INDEX_TO_ADDR(last_pc), symGetString_Backup,
						tempString,
						INDEX_TO_ADDR(pc), Sym_GetString(machPtr, INDEX_TO_ADDR(pc)) );
			}
			//addBranchToTraceFile(machPtr->traceJumpsFile, INDEX_TO_ADDR(last_pc), INDEX_TO_ADDR(pc) );
			addBranchToTraceFile(machPtr, INDEX_TO_ADDR(last_pc), INDEX_TO_ADDR(pc) );
			/* ASIP JUMP : */
			//Brownie no need fo additional cycles
			//additionalClockCycleForJump = 2;
			//Brownie End
			break;
		case OP_TRP:
			//Brownie
			//printf("R2=%d\n", readRegister(machPtr, IR_REG, 0));//Debug for Brownie
			//printf("PC=%d\n", pc);//Debug for Brownie
			//printf("Last PC=%d\n", last_pc);//Debug for Brownie
			//printf("PC_REG=%d\n", PC_REG);//Debug for Brownie
			//printf("NEXT_PC_REG=%d\n", NEXT_PC_REG);//Debug for Brownie
			//Brownie TODO TRAPBASE +
			pc = last_pc + 1 + ADDR_TO_INDEX(wordPtr->extra);
			writeRegister(machPtr, NEXT_PC_REG, pc, 0);
			writeRegister(machPtr, IR_REG, (last_pc+1), 1);
			pc++;
			//printf("PC=%d\n", pc);////Debug for Brownie
			machPtr->branchSerial = machPtr->insCount;
			machPtr->branchPC = INDEX_TO_ADDR( readRegister(machPtr, PC_REG, 0) );
			if (machPtr->debugAssembly) {
				if (wordPtr->opCode==OP_TRP) snprintf(tempString, TEMP_STRING_SIZE, "AL");
				else tempString[0] = '\0';
				memcpy(symGetString_Backup, Sym_GetString(machPtr, INDEX_TO_ADDR(last_pc)), 100*sizeof(char) );
				printf("debug:\tCycle:%lu  \tIM-Addr:0x%x(%.100s)  \t\tJ%s to IM-Addr:0x%x(%.100s).\n",
						machPtr->cycleCount,
						INDEX_TO_ADDR(last_pc), symGetString_Backup,
						tempString,
						INDEX_TO_ADDR(pc), Sym_GetString(machPtr, INDEX_TO_ADDR(pc)) );
			}
			//addBranchToTraceFile(machPtr->traceJumpsFile, INDEX_TO_ADDR(last_pc), INDEX_TO_ADDR(pc) );
			addBranchToTraceFile(machPtr, INDEX_TO_ADDR(last_pc), INDEX_TO_ADDR(pc) );

			/* ASIP JUMP : */
			//Brownie no need fo additional cycles
			//additionalClockCycleForJump = 2;
			//Brownie End
			break;

		//LOAD STORE INSTRUCTIONS
		case OP_LW:
        	/*if (loadStore_lastCommand==LoadStore_Store) {
        		printf("\nWARNING: In cycle %ld the Load-Command at instruction memory address \"%s\"\n",
        				machPtr->cycleCount, Sym_GetString(machPtr, 4*machPtr->regs[PC_REG].lastRead) );
        		printf("         is immediately following a Store-Command. The ASIP-CPU does not support\n");
        		printf("         switching from Store to Load without any other command in between !!\n\n");
        		warningCounter_SuccessiveLoadStore++;
        	}*/

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
        		//Brownie skips next instruction after load
    			//Brownie
    			if (machPtr->pipelineForwarding==1){
            		rescheduleRegisterWriteBacks(machPtr, machPtr->cycleCount+1, 2);
    			}
        		//Brownie End
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
        	//Brownie
        	/* ASIP STALLING : We only stall, if we use our usual DLX-Pipeline.*/
        	//if (machPtr->pipelineDelay==4) requestPipelineStalling(machPtr, 2, stallTime);
        	//else if (machPtr->pipelineDelay==1) machPtr->cycleCount += stallTime;
        	machPtr->cycleCount += stallTime;
        	machPtr->loadStoreStalls += stallTime;
        	break;

        case OP_LB:
		case OP_LBU:
			/*if (loadStore_lastCommand==LoadStore_Store) {
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
			//Brownie skips next instruction after load
			//rescheduleRegisterWriteBacks(machPtr, machPtr->cycleCount+1, 2);
		    if (machPtr->pipelineForwarding==1){
		    	rescheduleRegisterWriteBacks(machPtr, machPtr->cycleCount+1, 2);
		    }
			//Brownie End
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
	        //Brownie
	    	//if (machPtr->pipelineDelay==4) requestPipelineStalling(machPtr, 2, MEMORY_LATENCY);
	    	//else if (machPtr->pipelineDelay==1) machPtr->cycleCount += MEMORY_LATENCY;
	        machPtr->cycleCount += MEMORY_LATENCY;
	        machPtr->loadStoreStalls += MEMORY_LATENCY;
	    	break;

		case OP_LH:
		case OP_LHU:
		    /*if (loadStore_lastCommand==LoadStore_Store) {
		    	printf("\nWARNING: In cycle %ld the Load-Command at instruction memory address \"%s\"\n",
		    			machPtr->cycleCount, Sym_GetString(machPtr, 4*machPtr->regs[PC_REG].lastRead) );
		    	printf("         is immediately following a Store-Command. The ASIP-CPU does not support\n");
		    	printf("         switching from Store to Load without any other command in between !!\n\n");
		    	warningCounter_SuccessiveLoadStore++;
		    }*/

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
			//Brownie skips next instruction after load
			//rescheduleRegisterWriteBacks(machPtr, machPtr->cycleCount+1, 2);
			if (machPtr->pipelineForwarding==1){
				rescheduleRegisterWriteBacks(machPtr, machPtr->cycleCount+1, 2);
			}
			//Brownie End
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
			//Brownie
		    //if (machPtr->pipelineDelay==4) requestPipelineStalling(machPtr, 2, MEMORY_LATENCY);
		    //else if (machPtr->pipelineDelay==1) machPtr->cycleCount += MEMORY_LATENCY;
		    machPtr->cycleCount += MEMORY_LATENCY;
		    machPtr->loadStoreStalls += MEMORY_LATENCY;
		    break;

		case OP_LHI:
			writeRegister(machPtr, wordPtr->rd, wordPtr->extra << 16, 0);
			break;

        case OP_SB:
        	/*if (loadStore_lastCommand==LoadStore_Load) {
        		printf("\nWARNING: In cycle %ld the Store-Command at instruction memory address \"%s\"\n",
        				machPtr->cycleCount, Sym_GetString(machPtr, 4*machPtr->regs[PC_REG].lastRead) );
        		printf("         is immediately following a Load-Command. The ASIP-CPU does not support\n");
        		printf("         switching from Load to Store without any other command in between !!\n\n");
        		warningCounter_SuccessiveLoadStore++;
        	}*/

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
        	//Brownie
        	//if (machPtr->pipelineDelay==4) requestPipelineStalling(machPtr, 2, MEMORY_LATENCY);
        	//else if (machPtr->pipelineDelay==1) machPtr->cycleCount += MEMORY_LATENCY;
        	machPtr->cycleCount += MEMORY_LATENCY;
        	//Brownie
        	//machPtr->loadStoreStalls += MEMORY_LATENCY;
            break;

        case OP_SH:
        	/*if (loadStore_lastCommand==LoadStore_Load) {
        		printf("\nWARNING: In cycle %ld the Store-Command at instruction memory address \"%s\"\n",
        				machPtr->cycleCount, Sym_GetString(machPtr, 4*machPtr->regs[PC_REG].lastRead) );
        		printf("         is immediately following a Load-Command. The ASIP-CPU does not support\n");
        		printf("         switching from Load to Store without any other command in between !!\n\n");
        		warningCounter_SuccessiveLoadStore++;
        	}*/

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
            //Brownie
            /* ASIP STALLING : We only stall, if we use our usual DLX-Pipeline.*/
            //if (machPtr->pipelineDelay==4) requestPipelineStalling(machPtr, 2, MEMORY_LATENCY);
			//else if (machPtr->pipelineDelay==1) machPtr->cycleCount += MEMORY_LATENCY;
            machPtr->cycleCount += MEMORY_LATENCY;
            //Brownie
            //machPtr->loadStoreStalls += MEMORY_LATENCY;
            break;

        case OP_SW:
			/*if (loadStore_lastCommand==LoadStore_Load) {
				printf("\nWARNING: In cycle %ld the Store-Command at instruction memory address \"%s\"\n",
						machPtr->cycleCount, Sym_GetString(machPtr, 4*machPtr->regs[PC_REG].lastRead) );
				printf("         is immediately following a Load-Command. The ASIP-CPU does not support\n");
				printf("         switching from Load to Store without any other command in between !!\n\n");
				warningCounter_SuccessiveLoadStore++;
			}*/
        	loadStore_thisCommand = LoadStore_Store;
        	LoadRegisterS1 LoadRegisterD
        	tmp = (unsigned)(rs1 + wordPtr->extra);
			//printf("The Address %8x \n",tmp);
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
        	//Brownie
        	/* ASIP STALLING : We only stall, if we use our usual DLX-Pipeline. */
        	//if (machPtr->pipelineDelay==4) requestPipelineStalling(machPtr, 2, stallTime);
        	//else if (machPtr->pipelineDelay==1) machPtr->cycleCount += stallTime;
        	//Brownie
        	machPtr->loadStoreStalls += stallTime;
        	break;

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

		#define ror(a, b) ( ((a)>>(b)) | ((a)<<(32-(b))) )



		/* NEW_COMMANDS:
		 * ------------
		 * add behavior of custom instruction here. see examples above for some help for this task.
		 */
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
						{
							operationCount += machPtr->operationCount[i];
							//Brownie remove additioanl nops inserted due to .org
							if (strcmp(operationNames[i], "NOP") == 0){
								//printf("machPtr->operationCount[i]=%d, operationNames[i]=%s\n",machPtr->operationCount[i],operationNames[i]);
								machPtr->operationCount[i] -= machPtr->orgStall;
							}
							//Brownie
						}
						printf("Altogether %s cycles executed.\n", computeAndPrintRealCycleCount(machPtr) );
						printf("  %u Warnings for unresolved data dependencies printed.\n", warningCounter_UnresolvedDependency);
						printf("  %u Warnings for successive load/store commands printed.\n", warningCounter_SuccessiveLoadStore);
						printf("  %u Warnings for load/stores in the text section printed.\n", warningCounter_LoadStoreTextSection);
						/* Close the trace file for Jumps */
						if (machPtr->traceJumpsFile!=0) {
							fclose(machPtr->traceJumpsFile);
							machPtr->traceJumpsFile = 0;
						}
						/* Close the trace file for Jumps */
						if (machPtr->traceBaseBlocksFile!=0) {
							fclose(machPtr->traceBaseBlocksFile);
							machPtr->traceBaseBlocksFile = 0;
						}
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

	//printf("after pc = %d\n",pc);//Debug for Brownie

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
	    if ((machPtr->badPC != 0) && (machPtr->insCount == machPtr->addrErrNum)) {
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

static void Compile(wordPtr)
    register MemWord *wordPtr;		/* Memory location to be compiled. */
{
	register OpInfo *opPtr;
	//Sajjad
	//wordPtr->rs1 = (wordPtr->value >> 21) & 0x1f;
	//wordPtr->rs2 = (wordPtr->value >> 16) & 0x1f;
	//wordPtr->rd = (wordPtr->value >> 11) & 0x1f;
	//wordPtr->rs3 = (wordPtr->value >> 6) & 0x1f;
	//opPtr = &opTable[(wordPtr->value >> 26) & 0x3f];
	opPtr = &opTable[(wordPtr->value) & 0x3f];
	#if DEBUG_COMPILE
	printf("Compile: opPtr = &opTable[%i]; format = %i\n", (wordPtr->value ) & 0x3f, opPtr->format);
	#endif
	wordPtr->opCode = opPtr->opCode;

	//printf("  Pre OpCode: 0x%x\n", wordPtr->opCode);//Debug for Brownie

	//if (opPtr->format == IFMT) {
	if ((opPtr->format == RIFMT) || (opPtr->format == MAFMT) ){
		#if DEBUG_COMPILE
		printf("Compile: RIFMT-format.\n");
		#endif
		//wordPtr->rd = wordPtr->rs2;
		//wordPtr->extra = wordPtr->value & 0xffff;
		wordPtr->rs1 = (wordPtr->value >> 11) & 0x1f;
		wordPtr->rd = (wordPtr->value >> 6) & 0x1f;
		wordPtr->extra = (wordPtr->value >> 16) & 0xffff;
		if (wordPtr->extra & 0x8000) {
		  wordPtr->extra |= 0xffff0000;
		}
	}else if (opPtr->format == BRFMT) {
		#if DEBUG_COMPILE
		printf("Compile: BRFMT-format.\n");
		#endif
		wordPtr->rs2 = (wordPtr->value >> 6) & 0x1f;// for example for BGEU
		wordPtr->rs1 = (wordPtr->value >> 11) & 0x1f;
		wordPtr->extra = (wordPtr->value >> 16) & 0xffff;
		if (wordPtr->extra & 0x8000) {
		  wordPtr->extra |= 0xffff0000;
		}
	} else if (opPtr->format == JPRFMT){
		#if DEBUG_COMPILE
		printf("Compile: JPRFMT-format.\n");
		#endif
		wordPtr->rs1 = (wordPtr->value >> 6) & 0x1f;
	}
	/* ASIP COMMANDS : TWO_IMM_FMT*/
	else if (opPtr->format == IIFMT) {
	//else if (opPtr->format == TWO_IMM_FMT) {
		wordPtr->imm1 = (wordPtr->value >> 16) & 0x3ff;
		wordPtr->imm2 = wordPtr->value & 0xffff;
		#if DEBUG_COMPILE
		printf("Compile: TWO_IMM_FMT-format.\n");
		printf("  imm1: %i(0x%X), imm2:%i(0x%X)\n", wordPtr->imm1, wordPtr->imm1, wordPtr->imm2, wordPtr->imm2);
		#endif
	} else if (opPtr->format == SPFMT) {
		#if DEBUG_COMPILE
		printf("Compile: SP & RT FMT-format.\n");
		#endif
		wordPtr->rd = (wordPtr->value >> 27) & 0x1f;
		wordPtr->rs1 = (wordPtr->value >> 22) & 0x1f;
	}else if (opPtr->format == RRFMT) {
	//else if (opPtr->format == RFMT) {
		#if DEBUG_COMPILE
		printf("Compile: RRFMT-format.\n");
		#endif
		//wordPtr->extra = (wordPtr->value >> 6) & 0x1f;
		wordPtr->rs1 = (wordPtr->value >> 27) & 0x1f;
		wordPtr->rs2 = (wordPtr->value >> 22) & 0x1f;
		wordPtr->rd = (wordPtr->value >> 17) & 0x1f;
		wordPtr->rs3 = (wordPtr->value >> 12) & 0x1f;
		wordPtr->extra = (wordPtr->value >> 6) & 0x1f;
	} else { //JPFMT JFMT
		//wordPtr->extra = wordPtr->value & 0x3ffffff;
		wordPtr->extra = (wordPtr->value >>6) & 0x3ffffff;
		if (wordPtr->extra & 0x2000000) {
		  wordPtr->extra |= 0xfc000000;
		}
	}
	if (wordPtr->opCode == SPECIAL) {
		#if DEBUG_COMPILE
		printf("  SPECIAL OPCODE. Position %i\n", (wordPtr->value>>6) & 0x3f);
		printf("    rd:%i; rs1:%i; rs2:%i; rs3:%i; extra:%i\n", wordPtr->rd, wordPtr->rs1, wordPtr->rs2, wordPtr->rs3, wordPtr->extra);
		#endif
		// Sajjad
		//wordPtr->opCode = specialTable[wordPtr->value & 0x3f];
		wordPtr->opCode = specialTable[(wordPtr->value >> 6) & 0x3f];//(wordPtr->value >> 6) & 0x3f
	} else 	if (wordPtr->opCode == SPECIAL2) {
		#if DEBUG_COMPILE
		printf("  SPECIAL2 OPCODE. Position %i\n", wordPtr->value & 0x3f);
		printf("    rd:%i; rs1:%i; rs2:%i; rs3:%i; extra:%i\n", wordPtr->rd, wordPtr->rs1, wordPtr->rs2, wordPtr->rs3, wordPtr->extra);
		#endif
		// Sajjad
		//wordPtr->opCode = specialTable[wordPtr->value & 0x3f];
		wordPtr->opCode = special2Table[(wordPtr->value >> 6) & 0x3f];
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
static int BusError(machPtr, address, iFetch)
    DLX *machPtr;			/* Machine description. */
    unsigned int address;	/* Location that was referenced but doesn't
				 	 	 	 * exist. */
    int iFetch;				/* 1 means error occurred during instruction
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
static int AddressError(machPtr, address, load)
    DLX *machPtr;			/* Machine description. */
    unsigned int address;	/* Location that was referenced but doesn't
				 	 	 	 * exist. */
    int load;				/* 1 means error occurred during instruction
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
int Sim_TraceCmd(machPtr, interp, argc, argv)
    DLX *machPtr;			/* Machine description. */
    Tcl_Interp *interp;		/* Current interpreter. */
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
  //Sajjad
  if (registerNumber == IR_REG) return machPtr->regs[registerNumber].lastRead;
  //Sajjad end
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
  //Brownie
  if (registerNumber==IR_REG) {
    machPtr->regs[registerNumber].lastRead = value;
    return;
  }
  //printf("machPtr->pipelineDelay = %d\n", machPtr->pipelineDelay);//Debug for Brownie
  //printf("machPtr->regs[registerNumber].writePosition = %d\n", machPtr->regs[registerNumber].writePosition);//Debug for Brownie
  //Sajjad end
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


unsigned long long computeRealCycleCount(DLX* machPtr) {
  int i;
  unsigned long long realCycleCount, opCount;

  for (opCount=0, i=1; *operationNames[i]; i++) {
    opCount += machPtr->operationCount[i];
  }
  realCycleCount = opCount + machPtr->loadStoreStalls + machPtr->jumpStalls + machPtr->multDivModStalls + machPtr->specialInstructionStalls;
    /*printf("RealCycleCount=%llu; opcount=%llu; loadStoreStalls=%llu: jumpStalls=%llu; multDivModStalls=%llu; specialInstructionStalls=%llu; orgStall=%llu\n",
    		realCycleCount, opCount, machPtr->loadStoreStalls, machPtr->jumpStalls, machPtr->multDivModStalls, machPtr->specialInstructionStalls, machPtr->orgStall); Debug for Brownei
   */
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
