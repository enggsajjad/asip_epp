/*
 * dlx.h --
 *
 *	Declarations of structures used to simulate the MIPS
 *	architecture.
 *
 * Copyright 1989 Regents of the University of California
 * Permission to use, copy, modify, and distribute this
 * software and its documentation for any purpose and without
 * fee is hereby granted, provided that the above copyright
 * notice appear in all copies.  The University of California
 * makes no representations about the suitability of this
 * software for any purpose.  It is provided "as is" without
 * express or implied warranty.
 *
 * $Header: /home/cvs/cvs_repos/dlxsim/dlx/dlxsim/dlx.h,v 1.3 2004/08/19 15:34:19 sascha Exp $ SPRITE (Berkeley)
 *
 * Incorporates additions from Bart Massey (bart@cs.uoregon.edu) to add
 * a trace command that produces output for use with the dinero utility.
 */

#ifndef _DLX_H
#define _DLX_H

#include <stdio.h>

#ifndef _TCL
#include <tcl.h>
#endif
#ifndef _HASH
#include <hash.h>
#endif
#ifndef _MIPSIM_IO
#include "io.h"
#endif
#ifndef _COP0
#include "cop0.h"
#endif

/*
 * The following structure is used for each "stop" that has
 * been requested for a machine.
 */

typedef struct Stop {
    char *command;		/* Tcl command to execute, or NULL if
				 * this is a simple stop. */
    int number;			/* Number that identifies this stop for
				 * deletion purposes. */
    unsigned int address;	/* Address (in DLX memory) of memory word
				 * associated with stop. */
    struct Stop *nextPtr;	/* Next in list of stops associated with
				 * same memory location (NULL for end of
				 * list). */
    struct Stop *overallPtr;	/* Next in list of all stops set for
				 * machine (NULL for end of list). */
} Stop;

/*
 * Each memory word is represented by a structure of the following
 * format.  In order to interpret instructions efficiently, they
 * get decoded into several fields on the first execution after each
 * change to the word.
 */

typedef struct {
    int value;			/* Contents of the memory location. */
    char opCode;		/* Type of instruction.  This is NOT
				 * the same as the opcode field from the
				 * instruction:  see #defines below
				 * for details. */
    char rs1, rs2, rs3, rd;	/* Three registers from instruction. */
    int extra;			/* Immediate or target or shamt field
				 * or offset.  Immediates are sign-extended. */
    int imm1, imm2;             /* Two immediates for the TWO_IMM_FMT for 'forecast'*/
    Stop *stopList;		/* List of stops to invoke whenever
				 * this memory location is accessed. */
} MemWord;

/*
 * For each callback registered through Sim_CallBack, there is a structure
 * of the following form:
 */

typedef struct CallBack {
    int serialNum;		/* Call the procedure after executing the
				 * instruction with this serial number. */
    void (*proc)();		/* Procedure to call. */
    ClientData clientData;	/* Argument to pass to proc. */
    struct CallBack *nextPtr;	/* Next callback in list of all those
				 * associated with this machine.  NULL
				 * means end of list. */
} CallBack;

/*
 * For each pending floating point operation, there is a structure of the
 * following form:
 */

typedef struct FPop {
  int type;                    /* type of operation */
  int unit;                    /* fp unit number */
  int dest;                    /* destination register */
  int resultType;              /* see FP_*_OP values */
  long result[2];              /* result[0] is result of single precision
				  operation, both elements used for double
				  precision.

				  A single precision float, and a long
				  integer must be the same size.  */
  int ready;                   /* cycle when result will be ready */
  struct FPop *nextPtr;        /* Next FPop in the list of all those
				* associated with this machine.  NULL
				* means end of list. */
} FPop;

/*
 * The structure below describes the state of an DLX machine.
 */

/* ASIP FLOAT : Die 32 Float Register fallen weg, darum nur noch 32 statt 64 GPR's. */
#define NUM_GPRS 32
#define PC_REG (NUM_GPRS)
#define NEXT_PC_REG (NUM_GPRS+1)
#define TOTAL_REGS 34



/* default values for number of fp units and latencies */
#define MAX_FP_UNITS  20        /* Maximum allowable number of any particular
				   type of floating point unit. */
#define NUM_ADD_UNITS 1         /* Number of fp adder units. */
#define NUM_DIV_UNITS 1         /* Number of fp divider units. */
#define NUM_MUL_UNITS 1         /* Number of fp multiplier units. */
#define FP_ADD_LATENCY 2        /* Latency for an FP add. */
#define FP_DIV_LATENCY 19       /* Latency for an FP divide. */
#define FP_MUL_LATENCY 5        /* Latency for an FP multiply. */

#define FP_ADD 0
#define FP_DIV 1
#define FP_MUL 2
#define FP_SUB 3
#define INT_MUL 4
#define INT_UMUL 5
#define INT_DIV 6
#define INT_UDIV 7

#define FP_INT_OP 0
#define FP_SINGLE_FP_OP 1
#define FP_DOUBLE_FP_OP 2

#define FD_SIZE 32              /* Number of simulated file descriptors */

/*
 * OpCode values for MemWord structs.  These are straight from the MIPS
 * manual except for the following special values:
 *
 * OP_NOT_COMPILED -	means the value of the memory location has changed
 *			so the instruction needs to be recompiled.
 * OP_UNIMP -		means that this instruction is legal, but hasn't
 *			been implemented in the simulator yet.
 * OP_RES -		means that this is a reserved opcode (it isn't
 *			supported by the architecture).
 */


#define OP_ADD 	   1
#define OP_ADDI    2
#define OP_ADDU    3
#define OP_ADDUI   4
#define OP_AND 	   5
#define OP_ANDI    6
#define OP_BEQZ    7
#define OP_BNEZ    8
#define OP_J 	   9
#define OP_JAL 	  10
#define OP_JALR   11
#define OP_JR 	  12
#define OP_LHI 	  13
#define OP_LB     14
#define OP_LH     15
#define OP_LW 	  16
#define OP_LBU    17
#define OP_LHU    18
#define OP_SB     19
#define OP_SH     20
#define OP_SW     21
#define OP_MULT   22
#define OP_MULTU  23
#define OP_DIV    24
#define OP_DIVU   25
#define OP_MOD    26
#define OP_MODU   27
#define OP_OR 	  28
#define OP_ORI 	  29
#define OP_SEQ 	  30
#define OP_SEQI   31
#define OP_SGE 	  32
#define OP_SGEI   33
#define OP_SGEU   34
#define OP_SGT 	  35
#define OP_SGTI   36
#define OP_SGTU   37
#define OP_SLE 	  38
#define OP_SLEI   39
#define OP_SLEU   40
#define OP_SLL 	  41
#define OP_SLLI   42
#define OP_SLT 	  43
#define OP_SLTI   44
#define OP_SLTU   45
#define OP_SNE 	  46
#define OP_SNEI   47
#define OP_SRA 	  48
#define OP_SRAI   49
#define OP_SRL 	  50
#define OP_SRLI   51
#define OP_SUB 	  52
#define OP_SUBI   53
#define OP_SUBU   54
#define OP_SUBUI  55
#define OP_XOR 	  56
#define OP_XORI   57
#define OP_NOP    58

/* ASIP NEW_INSTRUCTIONS
------------------------------------------ */
/* TAKE CARE: If you leave an intermediate number unused (e.g. 59, 60, 62, 63, ...), then
 * all successing instructions won't be considered for cycle-counting in certain cases,
 * which creates inconsistencies!
 */
#define OP_CMOV   59
#define OP_BEQ    60
#define OP_BNEQ   61
#define OP_CADD   62
#define OP_BGTU	  63
#define OP_BLEU	  64
#define OP_BLTU	  65
#define OP_BGEU	  66
#define OP_MAC    67
#define OP_MAD    68
#define OP_SWAP   69
#define OP_XCHG   70
#define OP_AVG    71
#define OP_AVGU   72
#define OP_FEX    73
#define OP_MAX    74
#define OP_HT2X2CR 75
#define OP_HT4X4IL 76
#define OP_SATD4X4 77
#define OP_DCT4X4  78
#define OP_FORECAST 79
#define OP_LOOPFILTER 80
#define OP_IPRED_HDC16X16 81
#define OP_IPRED_VDC16X16 82
#define OP_MC_HZ4 83
#define OP_SAD16  84
#define OP_MINMAX 85
#define OP_ROT    86




/* special "opcodes", give these values after the above op values */
#define OP_TRAP 	 100
#define OP_NOT_COMPILED  101
#define OP_UNIMP 	 102
#define OP_RES 		 103

/* ASIP COMMANDS : musste erweitert werden - dient zur Dimensionierung des Instruction Count Arrays fr die Stats */
#define OP_LAST          110



/* ASIP PIPELINE : Value-History fr die normalen Register. Dieses Strukt wird auch fr 
                   PC_REG und NEXT_PC_REG benutzt, dort aber mit direktem Zugriff auf die
                   Daten ber lastRead. Bei PC_REG und NEXT_PC_REG sind also alle anderen
                   Felder (ausser lastRead) nicht initialisiert! */
typedef struct {
  int lastRead;
  int* historyValue;
  unsigned long* historyTimeStamp;
  int writePosition;
} RegisterType;


typedef struct {
    Tcl_Interp *interp;		/* Interpreter associated with machine (used
				 * for interpreting commands, returning
				 * errors, etc.) */
    int numWords;		/* Number of words of memory simulated for
				 * this machine. */
    int numChars;               /* Number of characters of memory */
    MemWord *memPtr;		/* Array of MemWords, sufficient to provide
				 * memSize bytes of storage. */
    char *memScratch;           /* Scratchpad for use by trap handlers */
    char *endScratch;           /* Pointer to the end of the scratch pad */
    int fd_map[FD_SIZE];        /* maps simulated fd's to actual fd's.
				 * mainly protects the real standard
				 * input, output, and error from the
				 * program.  A value of -1 means that
				 * fd is not currently in use.  */
    unsigned int badPC;		/* If an addressing error occurs during
				 * instruction fetch, this value records
				 * the bad address.  0 means no addressing
				 * error is pending. */
    int addrErrNum;		/* If badPC is non-zero, this gives the
				 * serial number (insCount value) of the
				 * instruction after which the addressing
				 * error is to be registered. */

  /* ASIP MEMORYDELAY: Aren't needed any longer, because now every load instruction
   * triggers a stall and afterwards directly writes into the correct register */

  /* int loadReg1, loadReg2;*/	/* For loads, register loaded by last instruction.
				 * used to watch for stalls (0 means last
				 * instruction was not a load).  loadReg2 is
				 * used when a load double is done.  */
  /* int loadValue1, loadValue2;*/ /* For loads, register value to load on next
				 * cycle.  */


    int insCount;		/* Count of total # of instructions executed
				 * in this machine (i.e. serial number of
				 * current instruction). */
    int firstIns;		/* Serial number corresponding to first
				 * instruction executed in particular run;
				 * used to ignore stops on first ins. */
    int branchSerial;		/* Serial number of most recent branch/jump
				 * instruction;  used to set BD bit during
				 * exceptions. */
    int branchPC;		/* PC of instruction given by "branchSerial":
				 * also used during exceptions. */
    int flags;			/* Used to indicate special conditions during
				 * simulation (for greatest speed, should
				 * normally be zero).  See below for
				 * definitions. */
    int stopNum;		/* Used to assign increasing reference
				 * numbers to stops. */
    Stop *stopList;		/* First in chain of all spies and stops
				 * associated with this machine (NULL means
				 * none). */
    CallBack *callBackList;	/* First in linked list of all callbacks
				 * currently registered for this machine,
				 * sorted in increasing order of serialNum. */
    Hash_Table symbols;		/* Records addresses of all symbols read in
				 * by assembler for machine. */
    IoState ioState;		/* I/O-related information for machine (see
				 * io.h and io.c for details). */
    Cop0 cop0;			/* State of coprocessor 0 (see cop0.h and
				 * cop0.c for details). */

    /* statistics */
    unsigned long long multDivModStalls;
    unsigned long long loadStoreStalls;        /* Counts load/store stalls */
    unsigned long long jumpStalls;             /* ASIP JUMP : count them for the statistics */
    unsigned long long specialInstructionStalls; 
//    int FPstalls;               /* Counts floating point stalls */ /* ASIP FLOAT */
    int branchYes;              /* Count taken branches. */
    int branchNo;               /* Count not taken branches. */
    int	operationCount
      [OP_LAST+1];              /* Dynamic instruction counts */

    /* ASIP STATS: imCount hinzugefgt; */
    int *imCount;
    int imTolerance;

    /* ASIP : Miscellanous stuff */
    int pipelineDelay;
    int debugAssembly;
    int debugBaseBlocks;
    int maxTextAddr;
    int maxDataAddr;
    int checkDataDependecy;     /* Checks for scheduled writeBacks in the future whenever
				 * a Register-read is performed and prints a warning if necessary. */
    int warnSpecificDependencyOnce;  /* if this is enabled (value != 0), then a warning for a possible
				      * data-dependecy will appear at most 1 time, no matter how often
				      * it is detected, e.g. if it is in a loop. */



    /* floating point stuff */
    int num_add_units;         /* Number FP add units for this machine. */
    int num_div_units;         /* Number FP divide units for this machine. */
    int num_mul_units;         /* Number FP multiply units for this machine. */
    int fp_add_latency;        /* FP add/subtract latency for this machine. */
    int fp_div_latency;        /* FP divide latency for this machine. */
    int fp_mul_latency;        /* FP multiply latency for this machine. */

    int FPstatusReg;           /* Floating point status register.  Written
				  on floating point compares, read on BFPT
				  and BFPF instructions. */
    int fp_add_units
      [MAX_FP_UNITS];          /* 0 means unit is available, otherwise number
				  indicates cycle count when the adder will 
				  complete its current operation. */
    int fp_div_units        
      [MAX_FP_UNITS];          /* 0 means unit is available, otherwise number
				  indicates cycle count when the divider will 
				  complete its current operation. */
    int fp_mul_units        
      [MAX_FP_UNITS];          /* 0 means unit is available, otherwise number
				  indicates cycle count when the multiplier will 
				  complete its current operation. */

    int *fp_units[3];          /* Top level array structure used to access
				  fp_add_units, fp_div_units, and fp_mul_units. */

    int waiting_FPRs[32];      /* A non-zero value in element i means FP
				  register i is waiting for a result from an
				  FP unit.  The value indicates the cycle
				  count when the result will be ready. */

    FPop *FPopsList;           /* First in a linked list of all pending floating
				  point operations associated with this 
				  machine; NULL means none. */

    unsigned long cycleCount;  /* Keep track of how many cycles have been
				  executed to monitor floating point units. */

    int checkFP;               /* Similar to the checkNum variable in sim.c.
				  Represents the next cycle count at which
				  some FP unit will complete an operation.
				  Allows for quick checking in fast path. */

    FILE* refTraceFile;        /* Pointer to a file into which to write memory
				  references for the cache simulator. */

    FILE* traceBaseBlocksFile; /* Trace File for executions order of Base Blocks */

    FILE* traceJumpsFile;      /* Trace File for all taken Jumps (the 'RotationsManager' needs this as input) */
    FILE* traceJumpsDictionaryFile;

    FILE* traceSIFile;         /* Trace File for SpecialInstructions (and ForeCasts) */

    FILE* lcdFile;             /* File for the output to the LCD */
    FILE* uartFile;            /* File for the output of the UART */
    FILE* audioFile;           /* File for the output of the AudioOut */

    char* profileBaseBlocksFileName; /* FileName for (profiled) Base Blocks */
    char* profileAddressesFileName; /* FileName for (profiled) Addresses: how much time (cycles) was spend for which address (instruction)? */

    /* ASIP PIPELINE : */
    RegisterType regs
      [TOTAL_REGS];            /* General-purpose registers, followed by 
			        * program counter and next program counter. */
} DLX;

/* ASIP PIPELINE : Diese beiden Methoden werden in der sim.c implementiert. Glaubt bloss nicht,
                   dass ich nicht versucht haette eine dlx.c hinzuzufuegen...
		   Ach ja, die Methoden kapseln den Zugriff auf die Register und ermoeglichen so
		   ein Simuliertes Pipeline-Verhalten, wenn machPtr->pipelineDelay > 1 ist. */
extern int readRegister(DLX *machPtr, int registerNumber, int warnings);
extern void writeRegister(DLX *machPtr, int registerNumber, int value, int now);



/*
 * Flag values for DLX structures:
 *
 * STOP_REQUESTED:		1 means that the "stop" command has been
 *				executed and execution should stop ASAP.
 *				
 */

#define STOP_REQUESTED		0x4

/*
 * Conversion between DLX addresses and indexes, which are stored
 * in pc/nextPc fields of DLX structures and also used to address
 * the memPtr values:
 */

#define INDEX_TO_ADDR(index)	((unsigned) ((index) << 2))
#define ADDR_TO_INDEX(addr)	((addr) >> 2)

/*
 * Miscellaneous definitions:
 */

#define SIGN_BIT	0x80000000
#define R31		31

/*
 * Tcl command procedures provided by the simulator:
 */

extern int Gp_GetCmd(), Gp_PutCmd();
extern int Gp_FGetCmd(), Gp_FPutCmd();
extern int Sim_GoCmd(), Sim_StepCmd();
extern int Stop_StopCmd(), Sim_DumpStats();
extern int Sim_TraceCmd();

/*
 * Other procedures that are exported from one file to another:
 */

extern void		Sim_CallBack();
extern DLX *		Sim_Create();
extern unsigned int	Sim_GetPC();
extern void		Sim_Stop();

extern int		Stop_Execute();


#endif /* _DLX_H */
