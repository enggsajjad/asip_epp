
/* 
 * asm.c --
 *
 *	The procedures in this file do assembly and dis-assembly of
 *	DLX assembler instructions.
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

#ifndef lint
/*static char rcsid[] = "$Header: /home/cvs/cvs_repos/dlxsim/dlx/dlxsim/asm.c,v 1.4 2004/08/30 09:07:26 sascha Exp $ SPRITE (Berkeley)";*/
#endif

#include <ctype.h>
#include <errno.h>
#include <hash.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include <tcl.h>
#include "dlx.h"
#include "asm.h"
#include "gp.h"
#include "sym.h"
#include "BaseBlocks.h"
#include "JumpTable.h"

#define SET_DEBUG 0
#define DEBUG_BASEBLOCKS 0
#define JUMPTABLE 0

/*
 * The following structure type encapsulates the state of loading one
 * or more assembler files, and is used for communication between the
 * procedures that do assembly.
 */
typedef struct {
    char *file;			/* Name of file currently being assembled
				 	 	 * (none means info to assemble comes from
				 	 	 * some source other than file). */
    int lineNum;		/* Line number within file (-1 if info being
				 	 	 * assembled doesn't come from file). */
    char *line;			/* Contents of entire line being assembled
				 	 	 * (useful for error messages). */
    unsigned int codeAddr;	/* Next address to place information in
				 	 	 	 * code area. */
    unsigned int dataAddr;	/* Next address to place information in
				 	 	 	 * data area. */
    unsigned int dot;		/* Address at which to place information
				 	 	 	 * (can be either code or data).*/
    /*
     * Information used to build up a concatenated version of all the
     * error strings that occur while reading the files:
     */
    char *message;			/* Pointer to current message (calloc-ed).
				 	 	 	 * NULL means no error has occurred so far. */
    char *end;				/* Address of NULL byte at end of message;
				 	 	 	 * append new messages here. */
    int totalBytes;			/* # of bytes allocated at message. 0 means
				 	 	 	 * no error has occurred yet. */
    int errorCount;			/* If too many errors occur, give up. */

    int flags;				/* Various flags:  see below for values. */
} LoadInfo;

/*
 * Flags for LoadInfo structures:
 *
 * ASM_CODE -			1 means currently assembling into code
 *						area;  0 means currently assembling into
 *						data area.
 * ASM_SIZE_ONLY -		1 means this is the first pass, where the
 *						only important thing is size (suppress
 *						all error messages).
 * ASM_ALIGN_0 -		1 means that an "align 0" command is in
 *						effect.
 */
#define ASM_CODE		1
#define ASM_SIZE_ONLY	2
#define ASM_ALIGN_0		4

#define ASM_MAX_ERRORS	2000

/*
 * The #defines below specify the different classes of instructions,
 * as defined on pp. D-4 to D-6 of Kane's book.  These classes are used
 * during assembly, and indicate the different formats that may be taken
 * by operand specifiers for a particular opcode.
 * 
 * NO_ARGS -		no operands
 * LOAD -			(register, address)
 * STORE -			(address, register)
 * LUI -			(dest, 16-bit expression)
 * ARITH_2PARAM -	(dest, src) OR (dest, 16-bit immediate) OR "dest" replaced by "dest/src1"
 * ARITH_3PARAM -	(dest, src1, sr2c) OR (dest/src1, src2)
 *					OR (dest, src1, 16-bit immediate)
 *					OR (dest/src1, 16-bit immediate)
 * ARITH_4PARAM -   (rd, rs1, rs2, rs3) OR (rd, rs1, rs2, 5-bit immediate)
 * MULDIV -			same as ARITH_3PARAM (special subset to handle
 *					mult/divide/rem instructions because they
 *                  operate on floating point registers)
 * BRANCH_0_OP -	(label) the source register is implied
 * BRANCH_1_OP -	(src1, label)
 * BRANCH_2_OP -	(src1, src2, label)
 * JUMP -			(label) OR (src1)
 * SRC1 -			(src1)
 * LABEL -			(label)
 * MOVE -			(dest,src1)
 * FLOAD -			like LOAD, for floating/double
 * FSTORE -			like STORE, for floating/double
 * FARITH -			like ARITH, for floating point
 * FCOMPARE -		compare two floating point numbers
 * TRAP -			(trap number)
 */
#define NO_ARGS			0
#define LOAD			1
#define STORE			2
#define LUI				3
#define ARITH_3PARAM	4
#define MULDIV			5
#define BRANCH_0_OP		7
#define BRANCH_1_OP		8
#define BRANCH_2_OP		18
#define JUMP			9
#define SRC1			10
#define LABEL			11
#define MOVE			12
#define FLOAD			13
#define FSTORE			14
#define FARITH			15
#define FCOMPARE		16
#define TRAP			17
#define ARITH_4PARAM	19
#define ARITH_2PARAM    20
#define TWO_IMM         21

/* ASIP NEW_FORMAT: define name for new instruction-format here. Make sure, that the
 * defined number is not used by another format.
 */



/*
 * The tables below give the maximum and minimum # of arguments
 * permissible for each class above.
 */


/* ASIP NEW_FORMAT : add min/max arguments for your instruction class at the defined position */ 
static int minArgs[] =
    {0, 3, 3, 2, 3, 3, 3, 1, 2, 1, 1, 1, 2, 3, 3, 3, 2, 1, 3, 4, 2, 2};
static int maxArgs[] =
    {0, 3, 3, 2, 3, 3, 3, 1, 2, 1, 1, 1, 2, 3, 3, 3, 2, 1, 3, 4, 2, 2};

/*
 * Structures of the following type are used during assembly and
 * disassembly.  One such structure exists for each defined op code.
 */
typedef struct {
    char *name;			/* Opcode name, e.g. "add". */
    int class;			/* Class of instruction (see table above). */
    int op;				/* Bit pattern corresponding to this
				 	 	 * instruction. */
    int mask;			/* Used for disassembly:  if these bits match
				 	 	 * op, then use this opcode for disassembly.
						 * 0 means this is a synthesized instruction
						 * that doesn't exist in native form, so
						 * it should be ignored during disassembly. */
    int other;			/* This field is used when the assembler
						 * is generating multiple instructions for
						 * a single opcode, or when different
						 * instructions may be generated for the
						 * same opcode (e.g. add -> addi).  The
						 * meaning of the field depends on class;
						 * see the code in Asm_Assemble. */
    int flags;			/* OR-ed combination of bits, giving various
						 * information for use during assembly, such
						 * as for range checking.  See below for
						 * values. */
    int rangeMask;		/* Mask for use in range check:  for unsigned
						 * check, none of these bits must be set.  For
						 * sign-extended check, either all or none
						 * must be set. */
} OpcodeInfo;

/*
 * Bits for "flags" field, used for range checking:
 *
 * CHECK_FIRST -		1 means check first argument, if it is an immediate
 * CHECK_LAST -			1 means check last argument, if it is
 *						an immediate.
 * CHECK_NEXT_TO_LAST -	1 means check next-to-last argument, if it
 *						is an immediate.
 * IMMEDIATE_REQ -		1 means the argument given above MUST be
 *						an immediate.
 * SIGN_EXTENDED -		1 means the immediate will be sign-extended.
 * FIRST_F
 * SECOND_F
 * THIRD_F				Must the 1st/2nd/3rd be a single or double prec.
 *						floating point register
 * FIRST_D
 * SECOND_D
 * THIRD_D				Must the 1st/2nd/3rd be a double prec. register?
 */
#define CHECK_LAST			0x1
#define CHECK_NEXT_TO_LAST	0x2
#define IMMEDIATE_REQ		0x4
#define SIGN_EXTENDED		0x8
#define CHECK_FIRST			0x10
#define FIRST_INT			0x20
#define SECOND_INT			0x40
#define THIRD_INT			0x80
#define FIRST_F				0x100
#define SECOND_F			0x200
#define THIRD_F				0x400
#define FIRST_D				0x800
#define SECOND_D			0x1000
#define THIRD_D				0x2000

/*
 * Table of all known instructions:
 */
OpcodeInfo opcodes[] = {
	//name		class			op			mask		other		flags					rangeMask
    {"add",  ARITH_3PARAM, 0x001,  		0x1ffff,    0x20, 		CHECK_LAST|SIGN_EXTENDED, 							0xffff8000},// basic from Brownie
    {"sub",  ARITH_3PARAM, 0x041, 		0x1ffff, 	0x21, 		CHECK_LAST|SIGN_EXTENDED, 							0xffff8000},// basic from Brownie
    {"mul",  ARITH_3PARAM, 0x081, 		0x1ffff, 	0, 			0, 													0},// basic from Brownie
    {"div",  ARITH_3PARAM, 0x0c1, 		0x1ffff, 	0, 			0, 													0},// basic from Brownie
    {"mod",  ARITH_3PARAM, 0x101, 		0x1ffff, 	0, 			0, 													0},// basic from Brownie
    {"divu", ARITH_3PARAM, 0x141, 		0x1ffff, 	0, 			0, 													0},// basic from Brownie
    {"modu", ARITH_3PARAM, 0x181, 		0x1ffff, 	0, 			0, 													0},// basic from Brownie
    {"nop",  NO_ARGS,      0x000, 		0xffffffff, 0, 			0, 													0},// basic from Brownie
    {"reti", NO_ARGS,      0x040, 		0xffffffff, 0, 			0, 													0},// basic from Brownie
    {"exbw", ARITH_2PARAM, 0x080, 		0x1ffff,    0, 			CHECK_LAST|SIGN_EXTENDED, 							0xffff8000},// basic from Brownie
    {"exhw", ARITH_2PARAM, 0x880, 		0x1ffff,    0, 			CHECK_LAST|SIGN_EXTENDED, 							0xffff8000},// basic from Brownie
    {"cmov", ARITH_3PARAM, 0x301,       0x1ffff, 	0x20, 		0                       , 							0xffff8000 },//added as it is from dlxsim
    {"cadd", ARITH_4PARAM, 0x341,       0x1ffff, 	0x20, 		0                       , 							0          },//added as it is from dlxsim
    {"mac",  ARITH_3PARAM, 0x381,       0x1ffff, 	0x20, 		0                       , 							0xffff8000 },//added as it is from dlxsim
    {"mad",  ARITH_4PARAM, 0x3c1,       0x1ffff, 	0x20, 		0                       , 							0xffff8000 },//added as it is from dlxsim
    {"and",  ARITH_3PARAM, 0x401, 		0x1ffff, 	0x22, 		CHECK_LAST, 										0xffff0000},// basic from Brownie
    {"or",   ARITH_3PARAM, 0x441, 		0x1ffff, 	0x23, 		CHECK_LAST, 										0xffff0000},// basic from Brownie
    {"xor",  ARITH_3PARAM, 0x481, 		0x1ffff, 	0x24, 		CHECK_LAST, 										0xffff0000},// basic from Brownie
    {"nand", ARITH_3PARAM, 0x4c1, 		0x1ffff, 	0, 			CHECK_LAST, 										0xffff0000},// basic from Brownie
    {"nor",  ARITH_3PARAM, 0x501, 		0x1ffff, 	0, 			CHECK_LAST, 										0xffff0000},// basic from Brownie
    {"swap",  ARITH_2PARAM, 0x541,      0x1ffff, 	0x20, 		0                       , 							0xffff8000 },//added as it is from dlxsim
    {"sad16", ARITH_4PARAM, 0x581,      0x1ffff, 	0x20, 		0                       , 							0xffff8000 },//added as it is from dlxsim
    {"egtu",  ARITH_3PARAM, 0x5c1,      0x1ffff, 	0x2c, 		CHECK_LAST, 										0xffff0000},//added as it is from dlxsim
    {"eleu",  ARITH_3PARAM, 0x601,      0x1ffff, 	0x2d, 		CHECK_LAST, 										0xffff0000},//added as it is from dlxsim
    {"egeu",  ARITH_3PARAM, 0x641,      0x1ffff, 	0x2b, 		CHECK_LAST, 										0xffff0000},//added as it is from dlxsim
    {"xchg",  ARITH_2PARAM, 0x681,      0x1ffff, 	0x20, 		0                       , 							0xffff8000 },//added as it is from dlxsim
    {"avg",   ARITH_3PARAM, 0x6c1,      0x1ffff, 	0x20, 		0                       , 							0xffff8000 },//added as it is from dlxsim
    {"avgu",  ARITH_3PARAM, 0x701,      0x1ffff, 	0x20, 		0                       , 							0xffff8000 },//added as it is from dlxsim
    {"fex",   ARITH_4PARAM, 0x741,      0x1ffff, 	0x20, 		CHECK_LAST|IMMEDIATE_REQ, 							0xffffffe0 },//added as it is from dlxsim
    {"max",   ARITH_3PARAM, 0x781,      0x1ffff, 	0x20, 		0                       , 							0xffff8000 },//added as it is from dlxsim
    {"loopfilter", ARITH_3PARAM, 0x7c1, 0x1ffff, 	0x20, 		0                       , 							0xffff8000 },//added as it is from dlxsim
    {"lls",  ARITH_3PARAM, 0x801, 		0x1ffff, 	0x25, 		CHECK_LAST, 										0xffffffe0},// basic from Brownie
    {"lrs",  ARITH_3PARAM, 0x841, 		0x1ffff, 	0x26,		CHECK_LAST, 										0xffffffe0},// basic from Brownie
    {"ars",  ARITH_3PARAM, 0x881, 		0x1ffff, 	0x27, 		CHECK_LAST, 										0xffffffe0},// basic from Brownie
    {"ipred_hdc16x16", ARITH_4PARAM, 0x8c1,       0x1ffff, 0x20, 0                       , 							0xffff8000 },//added as it is from dlxsim
    {"ipred_vdc16x16", ARITH_3PARAM, 0x901,       0x1ffff, 0x20, 0                       , 							0xffff8000 },//added as it is from dlxsim
    {"mc_hz4",         ARITH_3PARAM, 0x941,       0x1ffff, 0x20, 0                       , 							0xffff8000 },//added as it is from dlxsim
    {"minmax", ARITH_4PARAM, 0x981,     0xfff, 	0x20, 		0                       , 							0xffff8000 },//added as it is from dlxsim
    {"addu",   ARITH_3PARAM, 0x9c1,     0x1ffff, 	0x10, 		CHECK_LAST, 										0xffff0000},//added as it is from dlxsim
    {"subu",   ARITH_3PARAM, 0xa01,     0x1ffff, 	0x12, 		CHECK_LAST, 										0xffff0000},//added as it is from dlxsim
    {"egt",    ARITH_3PARAM, 0xa41,     0x1ffff, 	0x18, 		CHECK_LAST|SIGN_EXTENDED, 							0xffff8000},//added as it is from dlxsim
    {"ele",    ARITH_3PARAM, 0xa81,     0x1ffff, 	0x19, 		CHECK_LAST|SIGN_EXTENDED, 							0xffff8000},//added as it is from dlxsim
    {"ege",    ARITH_3PARAM, 0xac1,     0x1ffff, 	0x1a, 		CHECK_LAST|SIGN_EXTENDED, 							0xffff8000},//added as it is from dlxsim
    {"ht2x2cr", ARITH_4PARAM, 0xb01,    0x1ffff, 	0x20, 		0                       , 							0xffff8000 },//added as it is from dlxsim
    {"ht4x4il", ARITH_2PARAM, 0xb41,    0x1ffff, 	0x20, 		0                       , 							0xffff8000 },//added as it is from dlxsim
    {"satd4x4", ARITH_4PARAM, 0xb81,    0x1ffff, 	0x20, 		0                       , 							0xffff8000 },//added as it is from dlxsim
    {"dct4x4",  ARITH_4PARAM, 0xbc1,    0x1ffff, 	0x20, 		0                       , 							0xffff8000 },//added as it is from dlxsim
    {"elt",  ARITH_3PARAM, 0xc01, 		0x1ffff, 	0x17,		CHECK_LAST|SIGN_EXTENDED, 							0xffff8000},// basic from Brownie
    {"eltu", ARITH_3PARAM, 0xc41, 		0x1ffff, 	0x2e,		CHECK_LAST, 										0xffff0000},// basic from Brownie
    {"eeq",  ARITH_3PARAM, 0xc81, 		0x1ffff, 	0x15,		CHECK_LAST|SIGN_EXTENDED, 							0xffff8000},// basic from Brownie
    {"eneq", ARITH_3PARAM, 0xcc1, 		0x1ffff, 	0x16, 		CHECK_LAST|SIGN_EXTENDED, 							0xffff8000},// basic from Brownie
    {"eequ",   ARITH_3PARAM, 0xd01,     0x1ffff, 	0x2a,       CHECK_LAST, 										0xffff0000},//added as it is from dlxsim
    {"enequ",   ARITH_3PARAM, 0xd41,     0x1ffff, 	0x2f, 		CHECK_LAST, 										0xffff0000},//added as it is from dlxsim
    {"putc",   SRC1,         0xd81,     0x1ffff, 	0x20, 		0, 													0xffffffe0 },  // TODO: ENTFERNEN !!!//added as it is from dlxsim
    {"getc",   SRC1,         0xdc1,     0x1ffff, 	0x20, 		0, 													0xffffffe0 },  // TODO: ENTFERNEN !!!//added as it is from dlxsim
/*
 * float/double
    {"addd",   FARITH,       0x04000004, 0xfc00003f, 0, FIRST_D|SECOND_D|THIRD_D, 0},//added as it is from dlxsim
//  {"addf",   FARITH,       0x04000000, 0xfc00003f, 0, FIRST_F|SECOND_F|THIRD_F, 0},//added as it is from dlxsim
    {"cvtd2f", MOVE,         0x0400000a, 0xfc00003f, 0, FIRST_F|SECOND_D, 0},//added as it is from dlxsim
    {"cvtd2i", MOVE,         0x0400000b, 0xfc00003f, 0, FIRST_F|SECOND_D, 0},//added as it is from dlxsim
    {"cvtf2d", MOVE,         0x04000008, 0xfc00003f, 0, FIRST_D|SECOND_F, 0},//added as it is from dlxsim
    {"cvtf2i", MOVE,         0x04000009, 0xfc00003f, 0, FIRST_F|SECOND_F, 0},//added as it is from dlxsim
    {"cvti2d", MOVE,         0x0400000d, 0xfc00003f, 0, FIRST_D|SECOND_F, 0},//added as it is from dlxsim
    {"cvti2f", MOVE,         0x0400000c, 0xfc00003f, 0, FIRST_F|SECOND_F, 0},//added as it is from dlxsim
    {"divd",   FARITH,       0x04000007, 0xfc00003f, 0, FIRST_D|SECOND_D|THIRD_D, 0},//added as it is from dlxsim
    {"divf",   FARITH,       0x04000003, 0xfc00003f, 0, FIRST_F|SECOND_F|THIRD_F, 0},//added as it is from dlxsim
    {"eqd",    FCOMPARE,     0x04000018, 0xfc00003f, 0, FIRST_D|SECOND_D, 0},//added as it is from dlxsim
    {"eqf",    FCOMPARE,     0x04000010, 0xfc00003f, 0, FIRST_F|SECOND_F, 0},//added as it is from dlxsim
    {"ged",    FCOMPARE,     0x0400001d, 0xfc00003f, 0, FIRST_D|SECOND_D, 0},//added as it is from dlxsim
    {"gef",    FCOMPARE,     0x04000015, 0xfc00003f, 0, FIRST_F|SECOND_F, 0},//added as it is from dlxsim
    {"gtd",    FCOMPARE,     0x0400001b, 0xfc00003f, 0, FIRST_D|SECOND_D, 0},//added as it is from dlxsim
    {"gtf",    FCOMPARE,     0x04000013, 0xfc00003f, 0, FIRST_F|SECOND_F, 0},//added as it is from dlxsim
    {"led",    FCOMPARE,     0x0400001c, 0xfc00003f, 0, FIRST_D|SECOND_D, 0},//added as it is from dlxsim
    {"lef",    FCOMPARE,     0x04000014, 0xfc00003f, 0, FIRST_F|SECOND_F, 0},//added as it is from dlxsim
    {"ltd",    FCOMPARE,     0x0400001a, 0xfc00003f, 0, FIRST_D|SECOND_D, 0},//added as it is from dlxsim
    {"ltf",    FCOMPARE,     0x04000012, 0xfc00003f, 0, FIRST_F|SECOND_F, 0},//added as it is from dlxsim
    {"multd",  FARITH,       0x04000006, 0xfc00003f, 0, FIRST_D|SECOND_D|THIRD_D, 0},//added as it is from dlxsim
    {"multf",  FARITH,       0x04000002, 0xfc00003f, 0, FIRST_F|SECOND_F|THIRD_F, 0},//added as it is from dlxsim
    {"ned",    FCOMPARE,     0x04000019, 0xfc00003f, 0, FIRST_D|SECOND_D, 0},//added as it is from dlxsim
    {"nef",    FCOMPARE,     0x04000011, 0xfc00003f, 0, FIRST_F|SECOND_F, 0},//added as it is from dlxsim
    {"subd",   FARITH,       0x04000005, 0xfc00003f, 0, FIRST_D|SECOND_D|THIRD_D, 0},//added as it is from dlxsim
    {"subf",   FARITH,       0x04000001, 0xfc00003f, 0, FIRST_F|SECOND_F|THIRD_F, 0},//added as it is from dlxsim
    //{"movd",   MOVE,         0x33,       0xfc00003f, 0, FIRST_D|SECOND_D, 0},//added as it is from dlxsim
    //{"movf",   MOVE,         0x32,       0xfc00003f, 0, FIRST_F|SECOND_F, 0},//added as it is from dlxsim
    //{"movfp2i",MOVE,         0x34,       0xfc00003f, 0, SECOND_F, 0},//added as it is from dlxsim
    //{"movi2fp",MOVE,         0x35,       0xfc00003f, 0, FIRST_F, 0},//added as it is from dlxsim
    //{"movi2s", MOVE,         0x30,       0xfc00003f, 0, 0, 0},//added as it is from dlxsim
    //{"movs2i", MOVE,         0x31,       0xfc00003f, 0, 0, 0},//added as it is from dlxsim
*/
    // added from dlxsim


    {"lb",   LOAD,         0x2, 		0x3f, 		0, 			CHECK_NEXT_TO_LAST|IMMEDIATE_REQ|SIGN_EXTENDED, 	0xffff8000},// basic from Brownie
	{"lh",   LOAD,         0x3, 		0x3f, 		0, 			CHECK_NEXT_TO_LAST|IMMEDIATE_REQ|SIGN_EXTENDED, 	0xffff8000},// basic from Brownie
	{"lw",   LOAD,         0x4, 		0x3f, 		0, 			CHECK_NEXT_TO_LAST|IMMEDIATE_REQ|SIGN_EXTENDED, 	0xffff8000},// basic from Brownie
	{"sb",   STORE,        0x5, 		0x3f, 		0, 			CHECK_FIRST|IMMEDIATE_REQ|SIGN_EXTENDED, 			0xffff8000},// basic from Brownie
	{"sh",   STORE,        0x6, 		0x3f, 		0, 			CHECK_FIRST|IMMEDIATE_REQ|SIGN_EXTENDED, 			0xffff8000},// basic from Brownie
	{"sw",   STORE,        0x7, 		0x3f, 		0, 			CHECK_FIRST|IMMEDIATE_REQ|SIGN_EXTENDED, 			0xffff8000},// basic from Brownie
	{"rot",  ARITH_3PARAM, 0x8, 		0x3f, 		0,          CHECK_LAST|IMMEDIATE_REQ, 0xffff8000 },//added as it is from dlxsim
	{"brz",  BRANCH_1_OP,  0x9, 		0x3f, 		0, 			0, 													0},// basic from Brownie
	{"brnz", BRANCH_1_OP,  0xa, 		0x3f, 		0, 			0, 													0},// basic from Brownie
	{"jp",   JUMP,         0xb, 		0x3f, 		0xe, 		0, 													0},// basic from Brownie
	{"jpl",  JUMP,         0xc, 		0x3f, 		0xf, 		0, 													0},// basic from Brownie
	{"trp",  JUMP,         0xd, 		0x3f, 		0, 			0, 													0},// basic from Brownie
	{"jpr",  SRC1,         0xe, 		0x3f, 		0, 			0, 													0},// basic from Brownie
	{"jprl", SRC1,         0xf, 		0x3f, 		0, 			0, 													0},// basic from Brownie
	{"addui", ARITH_3PARAM, 0x10, 		0x3f, 		0, 			CHECK_LAST|IMMEDIATE_REQ, 							0xffff0000},//added as it is from dlxsim
	{"bgeu",  BRANCH_2_OP,  0x11, 		0x3f, 		0,          0                       , 							0},//added as it is from dlxsim
    {"subui", ARITH_3PARAM, 0x12, 		0x3f, 		0, 			CHECK_LAST|IMMEDIATE_REQ, 							0xffff0000},//added as it is from dlxsim
    {"lhi",   LUI,         0x13, 		0x3f, 		0, 			CHECK_LAST|IMMEDIATE_REQ, 							0xffff0000},//added as it is from dlxsim
    {"beq",   BRANCH_2_OP,  0x14, 		0x3f, 		0,          0                       , 							0          },//added as it is from dlxsim
    {"eeqi",  ARITH_3PARAM, 0x15, 		0x3f, 		0, 			CHECK_LAST|SIGN_EXTENDED|IMMEDIATE_REQ, 			0xffff8000},//added as it is from dlxsim
	{"eneqi",  ARITH_3PARAM, 0x16, 		0x3f, 		0, 			CHECK_LAST|SIGN_EXTENDED|IMMEDIATE_REQ, 			0xffff8000},//added as it is from dlxsim
	{"elti",  ARITH_3PARAM, 0x17, 		0x3f, 		0, 			CHECK_LAST|SIGN_EXTENDED|IMMEDIATE_REQ, 			0xffff8000},//added as it is from dlxsim
	{"egti",  ARITH_3PARAM, 0x18, 		0x3f, 		0, 			CHECK_LAST|SIGN_EXTENDED|IMMEDIATE_REQ, 			0xffff8000},//added as it is from dlxsim
    {"elei",  ARITH_3PARAM, 0x19, 		0x3f, 		0, 			CHECK_LAST|SIGN_EXTENDED|IMMEDIATE_REQ, 			0xffff8000},//added as it is from dlxsim
    {"egei",  ARITH_3PARAM, 0x1a, 		0x3f, 		0, 			CHECK_LAST|SIGN_EXTENDED|IMMEDIATE_REQ, 			0xffff8000},//added as it is from dlxsim
    {"bneq",  BRANCH_2_OP,  0x1b, 		0x3f, 		0,          0                       , 							0          },//added as it is from dlxsim
    {"bgtu",  BRANCH_2_OP,  0x1c, 		0x3f, 		0,          0                       , 							0          },//added as it is from dlxsim
    {"bleu",  BRANCH_2_OP,  0x1d, 		0x3f, 		0,          0                       , 							0          },//added as it is from dlxsim
    {"lbu",   LOAD,         0x1e, 		0x3f, 		0, 			CHECK_NEXT_TO_LAST|IMMEDIATE_REQ|SIGN_EXTENDED, 	0xffff8000},//added as it is from dlxsim
    {"lhu",   LOAD,         0x1f, 		0x3f, 		0, 			CHECK_NEXT_TO_LAST|IMMEDIATE_REQ|SIGN_EXTENDED, 	0xffff8000},//added as it is from dlxsim
    {"addi", ARITH_3PARAM, 0x20, 		0x3f, 		0, 			CHECK_LAST|SIGN_EXTENDED|IMMEDIATE_REQ, 			0xffff8000},// basic from Brownie
    {"subi", ARITH_3PARAM, 0x21, 		0x3f, 		0, 			CHECK_LAST|SIGN_EXTENDED|IMMEDIATE_REQ, 			0xffff8000},// basic from Brownie
    {"andi", ARITH_3PARAM, 0x22, 		0x3f, 		0, 			CHECK_LAST|IMMEDIATE_REQ|SIGN_EXTENDED, 			0xffff0000},// basic from Brownie
    {"ori",  ARITH_3PARAM, 0x23, 		0x3f, 		0, 			CHECK_LAST|IMMEDIATE_REQ|SIGN_EXTENDED, 			0xffff0000},// basic from Brownie
    {"xori", ARITH_3PARAM, 0x24, 		0x3f, 		0, 			CHECK_LAST|IMMEDIATE_REQ|SIGN_EXTENDED, 			0xffff0000},// basic from Brownie
    {"llsi", ARITH_3PARAM, 0x25, 		0x3f, 		0, 			CHECK_LAST|IMMEDIATE_REQ, 							0xffff0000},// basic from Brownie
    {"lrsi", ARITH_3PARAM, 0x26, 		0x3f, 		0, 			CHECK_LAST|IMMEDIATE_REQ, 							0xffff0000},// basic from Brownie
    {"arsi", ARITH_3PARAM, 0x27, 		0x3f, 		0, 			CHECK_LAST|IMMEDIATE_REQ, 							0xffff0000},// basic from Brownie
    {"lsoi", ARITH_3PARAM, 0x28, 		0x3f, 		0, 			CHECK_LAST|IMMEDIATE_REQ, 							0xffff0000},// basic from Brownie
    {"bltu",  BRANCH_2_OP, 0x29, 		0x3f, 		0,          0                       , 							0          },//added as it is from dlxsim
    {"eequi",  ARITH_3PARAM, 0x2a, 		0x3f, 		0, 			CHECK_LAST|IMMEDIATE_REQ, 							0xffff0000},//added as it is from dlxsim
    {"egeui",  ARITH_3PARAM, 0x2b, 		0x3f, 		0, 			CHECK_LAST|IMMEDIATE_REQ, 							0xffff0000},//added as it is from dlxsim
    {"egtui",  ARITH_3PARAM, 0x2c, 		0x3f, 		0, 			CHECK_LAST|IMMEDIATE_REQ, 							0xffff0000},//added as it is from dlxsim
    {"eleui",  ARITH_3PARAM, 0x2d, 		0x3f, 		0, 			CHECK_LAST|IMMEDIATE_REQ, 							0xffff0000},//added as it is from dlxsim
    {"eltui",  ARITH_3PARAM, 0x2e, 		0x3f, 		0, 			CHECK_LAST|IMMEDIATE_REQ, 							0xffff0000},//added as it is from dlxsim
    {"enequi",  ARITH_3PARAM, 0x2f, 		0x3f, 		0, 			CHECK_LAST|IMMEDIATE_REQ, 							0xffff0000},//added as it is from dlxsim
    {"forecast", TWO_IMM,  0x30, 		0x3f, 		0x20, 		CHECK_LAST|IMMEDIATE_REQ, 							0xffff8000 },//added as it is from dlxsim
    {"trap", TRAP,         0x31, 		0x3f, 		0, 			CHECK_FIRST|IMMEDIATE_REQ, 							0xfc000000},// basic from Brownie
/*
 * float/double
    {"bfpf",   BRANCH_0_OP,  0x18000000, 0xfc000000, 0, 0, 0},//added as it is from dlxsim
    {"bfpt",   BRANCH_0_OP,  0x1c000000, 0xfc000000, 0, 0, 0},//added as it is from dlxsim
    {"ld",     FLOAD,        0x9c000000, 0xfc000000, 0, CHECK_NEXT_TO_LAST|IMMEDIATE_REQ|SIGN_EXTENDED|FIRST_D, 0xffff8000},//added as it is from dlxsim
    {"lf",     FLOAD,        0x98000000, 0xfc000000, 0, CHECK_NEXT_TO_LAST|IMMEDIATE_REQ|SIGN_EXTENDED|FIRST_F, 0xffff8000},//added as it is from dlxsim
    {"rfe",    LABEL,        0x40000000, 0xfc000000, 0, 0, 0xfe000000},//added as it is from dlxsim
    {"sd",     FSTORE,       0xbc000000, 0xfc000000, 0, CHECK_FIRST|IMMEDIATE_REQ|SIGN_EXTENDED|THIRD_D, 0xffff8000},//added as it is from dlxsim
    {"sf",     FSTORE,       0xb8000000, 0xfc000000, 0, CHECK_FIRST|IMMEDIATE_REQ|SIGN_EXTENDED|THIRD_F, 0xffff8000},//added as it is from dlxsim
 */

    /* ASIP NEW_INSTRUCTIONS
       -------------
       {instr_name, op_class, opcode, disasm_mask, mult_instr_info, flags, rangecheck}
    */

    {NULL, NO_ARGS, 0, 0, 0, 0, 0}
};



/*
 * Opcode values that are used in the code of this module:
 */
/*                	ASIP UNUSED :
#define SUBU_OP				0x23
#define ADDI_OP				0x20000000
#define ADDIU_OP			0x24000000
#define LUI_OP				0x3c000000
#define ORI_OP				0x34000000
#define LOAD_IMM(reg, x)	(0x20000000 | ((reg) << 16) | ((x) & 0xffff))
#define LOAD_IMM_UNS(reg, x)	(0x34000000 | ((reg) << 16) | ((x) & 0xffff))
*/

/*
 * ASIP: For determining the Special Instructions for a specific BaseBlocks
 */
#define DEBUG_SPECIAL_INSTRUCTION 0
static const char* const staticEmptyString = "";
static const char* const staticReturnString = "return";
static char* specialInstructionsList = 0;
static int specialInstructionsList_Size = 0;
static int specialInstructionsList_Position = 0;  /* the INDEX where to write the next char into 'specialInstructionsList'. 0 if empty. */

int isSpecialInstruction(const char* const instruction);
void appendSpecialInstruction(const char* const instruction);
const char* const getSpecialInstructions();


/*
 * Table mapping from register number to register name.
 */
char *Asm_RegNames[] = {
    "r0", "r1", "r2", "r3",
    "r4", "r5", "r6", "r7",
    "r8", "r9", "r10", "r11",
    "r12", "r13", "r14", "r15",
    "r16", "r17", "r18", "r19",
    "r20", "r21", "r22", "r23",
    "r24", "r25", "r26", "r27",
    "r28", "r29", "r30", "r31",
    "pc", "npc"
};


/*
 * Size of largest instruction we can assemble, in words:
 */
#define ASM_MAX_WORDS 5		/* probably 1 <bly> */

/*
 * Forward declarations for procedures defined in this file:
 */
static void	AddErrMsg();
static void	IndicateError();
static void	ReadFile();
static int	StoreWords();

/*
 *----------------------------------------------------------------------
 *
 * Asm_Assemble --
 *
 *	Given a string describing an assembler instruction, return
 *	the binary code corresponding to the instruction.
 *
 * Results:
 *	The return value is a standard Tcl result (normally TCL_OK plus
 *	an empty string).  If the assembly completed successfully, then
 *	*sizePtr gets filled in with the # of instruction words assembled
 *	(may be more than 1 for special pseudo-instructions), and the
 *	word(s) at *codePtr get filled in with the actual instruction.
 *
 * Side effects:
 *	None.
 *
 *----------------------------------------------------------------------
 */

int trapCounter; /* global int to count the number of "trap #0" commands. If there is none, then
		    a warning will be printed from "Asm_LoadCommand(...)". */

#define MAX_NUMBER_OF_OPERANDS 4

// Some labels, that are stored for detecting jumpTables
char* lastLabel = 0;
char* jumpTableUsage_BBLabel = 0;
char* jumpTableUsage_JumpTableLabel = 0;

int Asm_Assemble(machPtr, fileName, string, dot, wholeLine, sizeOnly, sizePtr, codePtr, lineNum)
    DLX *machPtr;			/* Machine for which assembly is done:
							 * used for symbol table and error
							 * reporting. */
    char *fileName;			/* File name to use for symbol
							 * lookups.  See GetSym procedure in
							 * sym.c for more information. */
    char *string;			/* DLX assembler instruction. */
    unsigned int dot;		/* Where in memory instruction(s) will
					 	 	 * be placed. */
    char *wholeLine;		/* Entire line containing string;  used
					 	 	 * when printing error messages. */
    int sizeOnly;			/* Non-zero means this is the first
							 * pass, so ignore errors and just
							 * compute the size of the instruction.
							 */
    int *sizePtr;			/* Fill in with # words assembled
					 	 	 * for this instruction. */
    int *codePtr;			/* Pointer to ASM_MAX_WORDS words
							 * storage, which get filled in with
							 * assembled code. */
    int lineNum;            /* Linenumber inside filename we are working
					   	   	   with (for error messages) */
{
    register OpcodeInfo *insPtr;	/* Info about instruction. */
    register char *p;				/* Current character in string. */
    char *errMsg;
    char *opStart;
    char* lastOperand = 0;              /* label names for profiling the BaseBlocks */
    char* tempPointer = 0;
    int length;
    char msg[100];
    int isReg[MAX_NUMBER_OF_OPERANDS];      /* Tells whether each operand in the
					     	 	 	 	 	 * instruction is a register. */
    int operands[MAX_NUMBER_OF_OPERANDS];   /* Value of each operand (reg #,
					     	 	 	 	 	 * immediate, shift amount, etc.). */
    char *argStart[MAX_NUMBER_OF_OPERANDS]; /* First chars. of arguments (for
					     	 	 	 	 	 * error reporting). */
    int currentOperand;			    		/* Number of operands in the
					     	 	 	 	 	 * instruction. */
    int done;
    int requireF, requireD;		    		/* set if the current operand must be
					     	 	 	 	 	 * float or double */
    int temp, i;

    extern char* lastSymbol;
    if (lastSymbol!=0) {
      free(lastSymbol);
      lastSymbol=0;
    }
    
    /*
     * Parse off the instruction name, and look it up in the table.
     */
    for (p = string; (*p == ' ') || (*p == '\t'); p++) {
    	/* Empty loop body. */
    }
    opStart = p;
    for ( ; isalnum(*p) || *p=='_'; p++) {
    	/* Empty loop body. */
    }
    length = p-opStart;
    if (length > 0) {
		for (insPtr = opcodes; insPtr->name != NULL; insPtr++) {
			if ((insPtr->name[0] == opStart[0])
				&& (strncmp(insPtr->name, opStart, length) == 0)
				&& (insPtr->name[length] == 0)) {
				codePtr[0] = insPtr->op;
				goto gotIns;
			}
		}
    }

    /*
     * This instruction is a Special Instruction, so add it to the 'specialInstructionsList'
     */
    if (sizeOnly) {
    	tempPointer = (char*)malloc( (p-opStart+1)*sizeof(char) );
    	strncpy(tempPointer, opStart, p-opStart);
    	*(tempPointer+(p-opStart)) = '\0';
    	// Although it is an "unknown opcode", it could be "forecast", which is not a
    	// Special Instruction, thus we have to check here, too.
    	if (isSpecialInstruction(tempPointer)) {
    		appendSpecialInstruction(tempPointer);
    	}
    	free(tempPointer);
    	tempPointer=0;
    }
    errMsg= "unknown opcode";
    p =  opStart;
    goto error;

    gotIns:
		#if SET_DEBUG
		printf("Got Instruction: \"%s\" in line %i\n", insPtr->name, lineNum);
		#endif

		/*
		* If this instruction is a Special Instruction, then add it to the 'specialInstructionsList'
		*/
		if (sizeOnly && isSpecialInstruction(insPtr->name) ) {
			//      printf("__ %i \"%s\"\n", lineNum, wholeLine);
			appendSpecialInstruction(insPtr->name);
		}

		/*
		* Parse up to MAX_NUMBER_OF_OPERANDS operand fields in the instruction, storing
		* information in isReg[], operands[], and currentOperand.
		*/
		for (temp=0; temp<MAX_NUMBER_OF_OPERANDS; temp++) {
			isReg[temp] = 0;
			operands[temp] = 0;
		}
		for (currentOperand = 0; currentOperand < MAX_NUMBER_OF_OPERANDS; currentOperand++) {
			char *end, savedChar;
			int result;

			/*
			* Find the starting character for this operand specifier.
			*/
			while ((*p == ' ') || (*p == '\t')) {
				p++;
			}

			argStart[currentOperand] = p;
			/*
			* The code below is a special case to handle the second
			* specifier for instructions in the load-store class.  Accept
			* an optional expression followed by an optional register
			* name in parentheses.
			*/
			if (((currentOperand == 0) && ((insPtr->class == STORE) || (insPtr->class == FSTORE))) ||
					((currentOperand == 1) && ((insPtr->class == LOAD) || (insPtr->class == FLOAD)))) {
				if (*p == '(') {
					operands[currentOperand] = 0;
				} else {
					if (Sym_EvalExpr(machPtr, fileName, p, sizeOnly,
							&operands[currentOperand], &end) != TCL_OK) {
						errMsg = machPtr->interp->result;
						goto error;
					}
					p = end;
				}
				while ((*p == ' ') || (*p == '\t')) {
					p++;
				}
				argStart[++currentOperand] = p;
				isReg[currentOperand] = 1;
				operands[currentOperand] = 0;
				if (*p == '(') {
					for (p++; *p != ')'; p++) {
						if ((*p == 0)  || (*p == ';')) {
							p = argStart[currentOperand];
							errMsg = "missing ) after base register";
							goto error;
						}
					}
					savedChar = *p;
					*p = 0;
					result = Sym_GetSym(machPtr, fileName, argStart[currentOperand]+1,
							SYM_REGS_OK, (unsigned int *) &operands[currentOperand]);
					*p = savedChar;
					if (result != SYM_REGISTER) {
						p = argStart[currentOperand]+1;
						errMsg = "bad base register name";

						goto error;
					}
					p++;
				}
				/* read till we find a separator */
				for (done = 0; !done; ) {
					switch (*p) {
					case ',' :
					case '#' :
					case ';' :
					case '\n' :
					case '\0' :
						done = 1;
						break;
					case ' ' :
					case '\t' :
						break;
					default :
						errMsg = "unknown garbage in expression";
						goto error;
					}
					if (!done)
						p++;
				}
		    
				end = p;
				goto about_to_continue;
			}

			/*
			 * Back to the normal case.  Find the end of the current
			 * operand specifier.
			 */

			while ((*p != ',') && (*p != ';') && (*p != 0) && (*p != '\n')) {
				p++;
			}
			end = p;
			if (p == argStart[currentOperand]) {
				if (currentOperand == 0) {
					break;
				}
				errMsg = "empty operand specifier";

				goto error;
			}

			for (p--; (*p == ' ') || (*p == '\t'); p--) {
				/* Null loop body;  just backspace over space */
			}
			p++;

			/* ASIP: Profile Base Blocks: remembering the label names of jumps */
			if (lastOperand!=0) free(lastOperand);
			temp = end - argStart[currentOperand] + 1;
			lastOperand = (char*)malloc(sizeof(char)* (temp+2) );
			memcpy(lastOperand, argStart[currentOperand], temp);
			/* make sure, the lastOperand ends with ":\0" and has no blanks between the name and the colon */
			for (i=0, tempPointer=lastOperand; i < temp; i++, tempPointer++) {
				if (*tempPointer == ':' || *tempPointer == '\0'|| *tempPointer == ' ' || *tempPointer == '\t' || *tempPointer == '\n') {
					*tempPointer++ = ':';
					*tempPointer = '\0';
					break;
				}
			}

			/*
			 * Figure out what kind of operand this is.
			 */

			savedChar = *p;
			*p = 0;

			/* determine if we need a floating/double register now */
			requireF = ((currentOperand == 0) && (insPtr->flags & FIRST_F)) ||
					((currentOperand == 1) && (insPtr->flags & SECOND_F)) ||
					((currentOperand == 2) && (insPtr->flags & THIRD_F));
			requireD = ((currentOperand == 0) && (insPtr->flags & FIRST_D)) ||
					((currentOperand == 1) && (insPtr->flags & SECOND_D)) ||
					((currentOperand == 2) && (insPtr->flags & THIRD_D));

			if (requireF || requireD) {
				result = Sym_GetSym(machPtr, fileName, argStart[currentOperand],
						SYM_FREGS_OK, (unsigned int *) &operands[currentOperand]);
				if (result != SYM_REGISTER) {
					*p = savedChar;
					p = argStart[currentOperand];
					errMsg = "floating pointer register required";
					goto error;
				}
				isReg[currentOperand] = 1;
				if (requireD && (operands[currentOperand] & 1)) {
					*p = savedChar;
					p = argStart[currentOperand];
					errMsg = "double floating point register required";
					goto error;
				}
			} else {
				result = Sym_GetSym(machPtr, fileName, argStart[currentOperand],
						SYM_REGS_OK, (unsigned int *) &operands[currentOperand]);

				if (result == SYM_REGISTER) {
					#if SET_DEBUG
					printf("  Parameter %i: r%i\n", currentOperand, operands[currentOperand]);
					#endif
					isReg[currentOperand] = 1;
				}
				else if (result != SYM_FOUND) {
					char *term;
					if (Sym_EvalExpr(machPtr, (char *) NULL, argStart[currentOperand],
							sizeOnly, (int *) &operands[currentOperand], &term) != TCL_OK) {
						*p = savedChar;
						p = argStart[currentOperand];
						errMsg = "unrecognizable operand specifier";
						goto error;
					}
					if (*term != 0) {
						*p = savedChar;
						p = term;
						errMsg = "unknown garbage in expression";
						goto error;
					}
					#if SET_DEBUG
					printf("  Parameter %i: 0x%x\n", currentOperand, operands[currentOperand]);
					#endif
				}
			}
		*p = savedChar;

		/*
		 * See if this is the last argument.  If not, skip over the
		 * separating comma.
		 */
		about_to_continue:
			p = end;
			if (*p != ',') {
				currentOperand++;
				break;
			}
			if (currentOperand == MAX_NUMBER_OF_OPERANDS-1) {
				sprintf(msg, "more than %i operands", MAX_NUMBER_OF_OPERANDS);
				errMsg = msg;
				goto error;
			}
			p++;
		}

		/*
		 * Check argument count for propriety.
		 */
		if ((currentOperand < minArgs[insPtr->class])
				|| (currentOperand > maxArgs[insPtr->class])) {
			if (minArgs[insPtr->class] == maxArgs[insPtr->class]) {
				sprintf(msg, "wrong # operands (must be %d)",
						minArgs[insPtr->class]);
			} else {
				sprintf(msg, "wrong # operands (must be %d to %d)",
						minArgs[insPtr->class], maxArgs[insPtr->class]);
			}
			p = argStart[0];
			errMsg = msg;
			goto error;
		}

		/*
		* Check immediate arguments for proper range.
		*/
		if (insPtr->flags & (CHECK_LAST | CHECK_NEXT_TO_LAST | CHECK_FIRST)) {
			int i;

			if (insPtr->flags & CHECK_LAST) {
				i = currentOperand-1;
			} else if (insPtr->flags & CHECK_FIRST) {
				i = 0;
			} else {
				i = currentOperand-2;
			}
			if (i >= 0) {
				if (isReg[i]) {
					if (insPtr->flags & IMMEDIATE_REQ) {
						p = argStart[i];
						regIllegal:
						errMsg = "register operand not allowed";
						goto error;
					}
				} else {
					int j;
					j = operands[i] & insPtr->rangeMask;
					if (j != 0) {
						if (!(insPtr->flags & SIGN_EXTENDED) || (j != insPtr->rangeMask)) {
							/* ASIP: Old way was: report error, ignore the current command and let it's memory-place unchanged.
			       	   	       New way is : report warning, restrict the immediate and place the modified command in the memory.
		      	  	  	  	   p = argStart[i];
							 */
							#if SET_DEBUG
							printf("    immediate out of range: insPtr->flags: 0x%x; insPtr->flags & SIGN_EXTENDEN: 0x%x; j: 0x%x; insPtr->rangeMask: 0x%x\n",
									insPtr->flags, insPtr->flags&SIGN_EXTENDED, j, insPtr->rangeMask);
							#endif
		      
							sprintf(msg, "(warning) immediate operand 0x%x out of range. Restricted to 0x%x.", operands[i], operands[i] & ~insPtr->rangeMask);
							/*
							errMsg = msg;
							goto error;
							*/
							/* The "sizeOnly" is checked to print this warning only once. */
							if (sizeOnly==0) printf("%s(%i): %s: %s", fileName, lineNum, msg, wholeLine);
							operands[i] &= ~insPtr->rangeMask;
						}
					}
				}
			}
		}

		/*
		* Dispatch based on the class of instruction, and handle everything
		* else in a class-specific fashion.
		*/
		/* ASIP NEW_FORMAT: Implement how the parameters shall be stored */
		*sizePtr = 1;
		switch (insPtr->class) {
        case TWO_IMM:
			// The two immediates are 10 (first, i.e. SI number) and 16 (second, i.e. SI frequency) bit each
			// codePtr[0] = insPtr->op | ((operands[0]&0xFFF) << 12) | (operands[1]&0xFFF);
			//Brownie
        	codePtr[0] = insPtr->op | ((operands[0]&0xFFF) << 20) | ((operands[1] << 8) & 0xFFF);
			//Brownie End
			break;
        case NO_ARGS:
			codePtr[0] = insPtr->op;
			break;

        case LOAD:
        case FLOAD:
			//codePtr[0] = insPtr->op | (operands[0] << 16) | (operands[1] & 0xffff) | (operands[2] << 21);
        	//Brownie
			codePtr[0] = insPtr->op | (operands[0] << 6) | (operands[1] << 16) | (operands[2] << 11);
			//Brownie End
			break;

        case STORE:
        case FSTORE:
        	//Brownie
			//codePtr[0] = insPtr->op | (operands[0] & 0xffff) | (operands[1] << 21) | (operands[2] << 16);
			 codePtr[0] = insPtr->op | (operands[0] <<16) | (operands[1] << 11) | (operands[2] << 6);
			 //Brownie End
			break;

        case LUI:
        	if (!sizeOnly && lastSymbol!=0 && machPtr->profileBaseBlocksFileName!=0) {
			#if JUMPTABLE
        		if (isLabelAJumpTable(lastSymbol)) {
        			//printf("   lhi im BaseBlock nach Label \"%s\" f�r jumpTable \"%s\": ", lastLabel, lastSymbol);
        			//printJumpTable(lastSymbol);

        			if (jumpTableUsage_BBLabel!=0) free(jumpTableUsage_BBLabel);
        			jumpTableUsage_BBLabel = (char*)malloc( (1+strlen(lastLabel)) * sizeof(char));
        			strcpy(jumpTableUsage_BBLabel, lastLabel);
        			if (jumpTableUsage_JumpTableLabel!=0) free(jumpTableUsage_JumpTableLabel);
        			jumpTableUsage_JumpTableLabel = (char*)malloc( (1+strlen(lastSymbol))  * sizeof(char));
        			strcpy(jumpTableUsage_JumpTableLabel, lastSymbol);
        		}
			#endif
        	}
        	//codePtr[0] = insPtr->op | (operands[0] << 16) | (operands[1] & 0xffff);
        	//Brownie
        	codePtr[0] = insPtr->op | (operands[0] << 6) | ((operands[1] << 16) & 0xffff);
        	break;

		/*
		 * The main class of arithmetic instructions can get assembled
		 * in many different ways.  Most instructions can end using either
		 * the normal register-to-register opcode, or an immediate opcode,
		 * which is stored in insPtr->other.  If the instruction MUST use
		 * only the immediate form, a special value of insPtr->other
		 * indicates this fact.
		 */
        case ARITH_2PARAM:
        case ARITH_3PARAM:
        case ARITH_4PARAM:
        case FARITH:
        case MULDIV:
        	if (!isReg[0]) {
        		p = argStart[0];
        		regRequired:
        		errMsg = "operand must be a register";
        		goto error;
        	} else if (!isReg[1]) {
        		p = argStart[1];
        		goto regRequired;
        	}
        	if (insPtr->class == ARITH_2PARAM) {
				#if SET_DEBUG
        		printf("  ARITH_2PARAM instruction. opcode:0x%x\n", insPtr->op);
				#endif
        		//Brownie
        		//codePtr[0] = insPtr->op | (operands[0] << 11) | (operands[1] << 21);
        		codePtr[0] = insPtr->op | (operands[0] << 27) | (operands[1] << 22);
        	} else if (insPtr->class == ARITH_3PARAM) {
				#if SET_DEBUG
        		printf("  ARITH_3PARAM instruction. opcode:0x%x\n", insPtr->op);
				#endif
        		if (isReg[2] ) {
        			//Brownie
        			//codePtr[0] = insPtr->op | (operands[0] << 11) | (operands[1] << 21) | (operands[2] << 16);
        			codePtr[0] = insPtr->op | (operands[0] << 17) | (operands[1] << 27) | (operands[2] << 22);
        		} else if (insPtr->flags & IMMEDIATE_REQ) {
        			//Brownie
        			//codePtr[0] = insPtr->op | (operands[0] << 16) | (operands[1] << 21) | (operands[2] & 0xffff);
        			codePtr[0] = insPtr->op | (operands[0] << 6) | (operands[1] << 11) | (operands[2] << 16);
        		} else {
        			//Brownie
        			//codePtr[0] = insPtr->other | (operands[0] << 16) | (operands[1] << 21) | (operands[2] & 0xffff);
        			codePtr[0] = insPtr->op | (operands[0] << 6) | (operands[1] << 11) | (operands[2] << 16);
        		}
				#if SET_DEBUG
        		//Brownie
        		printf("    codePtr: 0x%x\n", codePtr[0]);
        		//Brownie End
				#endif
        	} else if ((insPtr->class == MULDIV) || (insPtr->class == FARITH)) {
        		if (!isReg[2]) {
        			p = argStart[2];
        			goto regRequired;
        		}
        		//Brownie
        		//codePtr[0] = insPtr->op | (operands[0] << 11) | (operands[1] << 21) | (operands[2] << 16);
        		codePtr[0] = insPtr->op | (operands[0] << 17) | (operands[1] << 27) | (operands[2] << 22);
        		/* ASIP COMMANDS : Instruction Format 4 Registers */
        	} else if (insPtr->class == ARITH_4PARAM) {
			#if SET_DEBUG
			printf("  ARITH_4PARAM instruction. opcode:0x%x\n", insPtr->op);
			#endif
			if (!isReg[2]) {
				errMsg = "3rd operand must be a register";
				goto error;
			} else {
				if (isReg[3]) {
					if (insPtr->flags&IMMEDIATE_REQ) {
						errMsg = "4th operand must be an immediate";
						goto error;
					} else {
						//Brownie
						//codePtr[0] = insPtr->op | (operands[0] << 11) | (operands[1] << 21) | (operands[2] << 16) | ( operands[3] << 6);
						codePtr[0] = insPtr->op | (operands[0] << 17) | (operands[1] << 27) | (operands[2] << 22) | ( operands[3] << 11);
						#if SET_DEBUG
						printf("    4th Register: CodePointer: %i\n", codePtr[0]);
						printf("    Operands: %i, %i, %i, %i\n",operands[0],operands[1],operands[2],operands[3]);
						printf("    Ins-Pointer: %i\n", insPtr->op);
						#endif
					}
				} else {
					if (insPtr->flags&IMMEDIATE_REQ) {
						//Brownie
						//codePtr[0] = insPtr->op | (operands[0] << 11) | (operands[1] << 21) | (operands[2] << 16) | ( (operands[3]&~insPtr->rangeMask) << 6);
						codePtr[0] = insPtr->op | (operands[0] << 17) | (operands[1] << 27) | (operands[2] << 22) | ( (operands[3]&~insPtr->rangeMask) << 12);
						#if SET_DEBUG
						printf("    4th Immediate: CodePointer: 0x%x; packed immediate: 0x%x\n", codePtr[0], (operands[3]&~insPtr->rangeMask)<<6);
						printf("    Operands: %i, %i, %i, %i\n",operands[0],operands[1],operands[2],operands[3]);
						printf("    Ins-Pointer: 0x%x\n", insPtr->op);
						#endif
					} else {
						errMsg = "4th operand must be a register";
						goto error;
					}
				}
			}
	    }
	    break;

		/*
		 * Branches:  generate (and check) the branch displacement, which
		 * is done the same for all branch instructions.  Then handle
		 * different sub-classes differently.
		 */
        case JUMP:
        	if (isReg[0])	/* treat it like SRC1 */
        		//codePtr[0] = insPtr->other | (operands[0] << 21);
        		//codePtr[0] = insPtr->op | (operands[0] << 17);
        		codePtr[0] = insPtr->op | (operands[0] << 6);
        	/* I know this falls through, this is just here to allow for
        	 *	the user to use j instead of jr for instance */
        case BRANCH_0_OP:
        case BRANCH_1_OP:
        case BRANCH_2_OP:
        case LABEL: {
        	int disp, mask;

        	if (isReg[currentOperand-1]) {
				p = argStart[currentOperand-1];
				goto regIllegal;
        	}
        	disp = operands[currentOperand-1];
        	if (disp & 0x3) {
        		p = argStart[currentOperand-1];
        		errMsg = "branch target not word-aligned";
        		goto error;
        	}
        	disp = disp - (dot+4);
        	if ((insPtr->class == JUMP) || (insPtr->class == LABEL))
        		mask = 0xfe000000;
        	else
        		mask = 0xffff8000;
        	if ((disp & mask) && ((disp & mask) != mask)) {
        		/*badDisp:*/
        		p = argStart[currentOperand-1];
        		/* This part is sometimes executed in the "size only" run. E.g. at a jump to a label that is
		   	   placed in the remainder of the file and thus doesn't have a 'Symbol' yet. */
        		sprintf(msg, "branch target too far away (offset 0x%x)", disp);
        		errMsg = msg;
        		goto error;
        	}

        	if (insPtr->class == BRANCH_2_OP) {
        		//Brownie
        		//codePtr[0] = insPtr->op | (disp & 0xffff) | (operands[0] << 21) | (operands[1] << 16);
        		codePtr[0] = insPtr->op | ((disp & 0xffff)<<16) | (operands[0] << 11) | (operands[1] << 6);
        	} else if (insPtr->class == BRANCH_1_OP) {
        		//Brownie
        		//codePtr[0] = insPtr->op | (disp & 0xffff) | (operands[0] << 21);
        		codePtr[0] = insPtr->op | ((disp & 0xffff)<<16) | (operands[0] << 11);
        	} else if (insPtr->class == BRANCH_0_OP) {
        		//Brownie
        		//codePtr[0] = insPtr->op | (disp & 0xffff);
        		codePtr[0] = insPtr->op | ((disp & 0xffff)<<16);
        	} else {  /* JUMP or LABEL */
        		//Brownie
        		//codePtr[0] = insPtr->op | (disp & 0x3ffffff);
        		codePtr[0] = insPtr->op | ((disp & 0x3ffffff)<<6);
        	}
        	/* ASIP BASEBLOCKS: */
        	if (sizeOnly) {
				#if DEBUG_BASEBLOCKS
        		printf("JUMP_2a : %i: \"%s\" \"%s\"\n", dot, insPtr->name, lastOperand);
        		//printf("JUMP_2a : 0x%x: \"%s\" \"%s\"##### %i __ %i %i %i \"%s\" %i\n", dot, insPtr->name, string, operands[currentOperand-1],
        		//operands[0], operands[1], operands[2], Sym_GetString(machPtr, operands[currentOperand-1]), insPtr->class);
				#endif
        		notifyBaseBlocks(dot, Separator_Jump, insPtr->name, lastOperand, getSpecialInstructions());
        		//Sajjad
        		//if (strcmp(insPtr->name, "jal")==0 ) notifyBaseBlocks(dot+8, Separator_Return, insPtr->name, lastOperand, getSpecialInstructions());
        		if (strcmp(insPtr->name, "jpl")==0 ) notifyBaseBlocks(dot+8, Separator_Return, insPtr->name, lastOperand, getSpecialInstructions());
        	}
        	break;
        }

        case TRAP:
        	if (isReg[0]) {
        		p = argStart[0];
        		goto regIllegal;
        	}
        	if (operands[0]==0) trapCounter++;
        	codePtr[0] = insPtr->op | (operands[0] & 0x3ffffff);
        	break;

        case SRC1:
        	if (!isReg[0]) {
        		p = argStart[0];
        		goto regRequired;
        	}
        	//Brownie
        	//codePtr[0] = insPtr->op | (operands[0] << 21);
        	//codePtr[0] = insPtr->op | (operands[0] << 17);
        	codePtr[0] = insPtr->op | (operands[0] << 6);
        	/* ASIP BASEBLOCKS: for jr and jalr */
        	if (sizeOnly) {
				#if DEBUG_BASEBLOCKS
        		printf("JUMP_2b : %i: \"%s\" \"%s\"\n", dot, insPtr->name, lastOperand);
				#endif
        		//Brownie
        		//if (strcmp(insPtr->name, "jr")==0 && strcmp(lastOperand, "r31:")==0) {
        		if (strcmp(insPtr->name, "jpr")==0 && strcmp(lastOperand, "r3:")==0) {
        			notifyBaseBlocks(dot, Separator_Jump, staticReturnString, staticEmptyString, getSpecialInstructions()); /* added for 'profile BaseBlocks' */
        		} else {
        			notifyBaseBlocks(dot, Separator_Jump, insPtr->name, staticEmptyString, getSpecialInstructions());
        		}
        		if (!strcmp(insPtr->name, "jprl") ) notifyBaseBlocks(dot+8, Separator_Return, insPtr->name, staticEmptyString, getSpecialInstructions());
        		//if (!strcmp(insPtr->name, "jalr") ) notifyBaseBlocks(dot+8, Separator_Return, insPtr->name, staticEmptyString, getSpecialInstructions());
        	} else {
        		//Brownie
        		//if (machPtr->profileBaseBlocksFileName!=0 && strcmp(insPtr->name, "jr")==0 && strcmp(lastOperand, "r31:")!=0) {
        		if (machPtr->profileBaseBlocksFileName!=0 && strcmp(insPtr->name, "jpr")==0 && strcmp(lastOperand, "r3:")!=0) {
        			// There is a "jr" that is not used as 'return'.
        			// Test, whether we have had a jump table in this baseblock:
					#if JUMPTABLE
        			if (strcmp(jumpTableUsage_BBLabel, lastLabel)==0) {
        				addJumpTableUsage(jumpTableUsage_BBLabel, jumpTableUsage_JumpTableLabel);
        				//printf("Found at label \"%s\" a lhi for jumpTable \"%s\"\n  with a 'jr' at the end of the baseblock that is not used as return.\n",
        				//jumpTableUsage_BBLabel, jumpTableUsage_JumpTableLabel);
        				//printf("  Most probably this 'jr' is jumping to one of the jump targets in this jump table, i.e.:\n  ");
        				//printJumpTable(jumpTableUsage_JumpTableLabel);
        				//printf("\n");
        			}
					#endif
        		}
        	}
        	break;

        case MOVE:
        	/* these are all R-type instructions */
        	if (!isReg[0]) {
        		p = argStart[0];
        		goto regRequired;
        	}
        	if (!isReg[1]) {
        		p = argStart[1];
        		goto regRequired;
        	}
        	//Brownie
        	//codePtr[0] = insPtr->op | (operands[0] << 11) | (operands[1] << 21);
        	codePtr[0] = insPtr->op | (operands[0] << 17) | (operands[1] << 27);
        	break;

        case FCOMPARE:
        	/* these are all R-type instructions */
        	if (!isReg[0]) {
        		p = argStart[0];
        		goto regRequired;
        	}
        	if (!isReg[1]) {
        		p = argStart[1];
        		goto regRequired;
        	}
        	//Brownie
        	//codePtr[0] = insPtr->op | (operands[0] << 21) | (operands[1] << 16);
        	codePtr[0] = insPtr->op | (operands[0] << 27) | (operands[1] << 22);
        	break;

		/* NEW_COMMANDS:
		 * -------------
		 * add new instruction-class here. We have to define how the
		 * assembly-instruction is translated into instruction-word
		 */

        default:
        	errMsg = "internal error:  unknown class for instruction";
        	goto error;
		}

		#if SET_DEBUG
		printf("codePtr[0] = 0x%.8X\n", codePtr[0]);
		#endif


		/*
		 * Make sure that there's no garbage left on the line after the
		 * instruction.
		 */
		while (isspace(*p)) {
			p++;
		}
		if ((*p != 0) && (*p != ';')) {
			errMsg = "extra junk at end of line";
			goto error;
		}
		return TCL_OK;

		/*
		 * Generate a reasonably-human-understandable error message.
		 */
		error:
			IndicateError(machPtr->interp, errMsg, wholeLine, p);
			return TCL_ERROR;
}

/*
 *----------------------------------------------------------------------
 *
 * Asm_Disassemble --
 *
 *	Given an instruction, return a string describing the instruction
 *	in assembler format.
 *
 * Results:
 *	The return value is a string, which either describes the
 *	instruction or contains a message saying that the instruction
 *	didn't make sense.  The string is statically-allocated, meaning
 *	that it will change on the next call to this procedure.
 *
 * Side effects:
 *	None.
 *
 *----------------------------------------------------------------------
 */

char * Asm_Disassemble(machPtr, ins, pc)
    DLX *machPtr;			/* Machine to use for symbol table info. */
    int ins;				/* The contents of the instruction. */
    unsigned int pc;		/* Memory address at which instruction is
				 	 	 	 * located. */
{
    register OpcodeInfo *opPtr;
    OpcodeInfo *bestPtr;
    static char string[200];
    int field, bestMask;
    int reg1, reg2;

    /*
     * Match this instruction against our instruction table to find
     * out what instruction it is.  Look
     */
    for (bestMask = 0, opPtr = opcodes; opPtr->name != NULL; opPtr++) {
    	if (opPtr->mask == 0) {
    		continue;
    	}
    	if ((ins & opPtr->mask) != (opPtr->op)) {
    		continue;
    	}
    	if ((bestMask & opPtr->mask) != opPtr->mask) {
    		bestMask = opPtr->mask;
    		bestPtr = opPtr;
    	}
    }
    if (bestMask == 0) {
    	sprintf(string, "unrecognized instruction (0x%x)", ins);
    	return string;
    }
    opPtr = bestPtr;

    /*
     * Dispatch on the type of the instruction.
     */
    /* ASIP NEW_FORMAT: */
    switch (opPtr->class) {
    case TWO_IMM:
    	//Brownie
    	//sprintf(string, "%s %i,%i", opPtr->name, (ins>>12)&0xfff, ins&0xFFF);
    	sprintf(string, "%s %i,%i", opPtr->name, (ins>>20)&0xfff, (ins>>8)&0xFFF);
    	break;
	case NO_ARGS:
		sprintf(string, "%s", opPtr->name);
		break;

	case LOAD:
		//Brownie
		//field = ins & 0xffff;
		//sprintf(string, "%s %s,%s(%s)", opPtr->name,  Asm_RegNames[(ins >> 16) & 0x1f], Sym_GetString(machPtr, (unsigned) field), Asm_RegNames[(ins >> 21) & 0x1f]);
		field = (ins >>16) & 0xffff;
		sprintf(string, "%s %s,%s(%s)", opPtr->name,  Asm_RegNames[(ins >> 6) & 0x1f], Sym_GetString(machPtr, (unsigned) field), Asm_RegNames[(ins >> 11) & 0x1f]);
		break;

	case FLOAD:
		//Brownie
		//field = ins & 0xffff;
		//sprintf(string, "%s %s,%s(%s)", opPtr->name, Asm_RegNames[((ins >> 16) & 0x1f) + 32], Sym_GetString(machPtr, (unsigned) field), Asm_RegNames[(ins >> 21) & 0x1f]);
		field = (ins >>16) & 0xffff;
		sprintf(string, "%s %s,%s(%s)", opPtr->name, Asm_RegNames[((ins >> 6) & 0x1f) + 32], Sym_GetString(machPtr, (unsigned) field), Asm_RegNames[(ins >> 11) & 0x1f]);
		break;

	case STORE:
		//Brownie
		//field = ins & 0xffff;
		//sprintf(string, "%s %s(%s),%s", opPtr->name, Sym_GetString(machPtr, (unsigned) field), Asm_RegNames[(ins >> 21) & 0x1f], Asm_RegNames[(ins >> 16) & 0x1f]);
		field = (ins >>16) & 0xffff;
		sprintf(string, "%s %s(%s),%s", opPtr->name, Sym_GetString(machPtr, (unsigned) field), Asm_RegNames[(ins >> 11) & 0x1f], Asm_RegNames[(ins >> 6) & 0x1f]);
		break;

	case FSTORE:
		//Brownie
		//field = ins & 0xffff;
		//sprintf(string, "%s %s(%s),%s", opPtr->name, Sym_GetString(machPtr, (unsigned) field), Asm_RegNames[(ins >> 21) & 0x1f], Asm_RegNames[((ins >> 16) & 0x1f) + 32]);
		field = (ins >>16) & 0xffff;
		sprintf(string, "%s %s(%s),%s", opPtr->name, Sym_GetString(machPtr, (unsigned) field), Asm_RegNames[(ins >> 11) & 0x1f], Asm_RegNames[((ins >> 6) & 0x1f) + 32]);
		break;

	case LUI:
		//Brownie
		//field = ins & 0xffff;
		//sprintf(string, "%s %s,0x%x", opPtr->name, Asm_RegNames[(ins >> 16) & 0x1f], field);
		field = (ins >>16) & 0xffff;
		sprintf(string, "%s %s,0x%x", opPtr->name, Asm_RegNames[(ins >> 6) & 0x1f], field);
		break;

	case ARITH_2PARAM:
		//Brownie
		//sprintf(string, "%s %s,%s", opPtr->name, Asm_RegNames[(ins >> 11) & 0x1f], Asm_RegNames[(ins >> 21) & 0x1f]);
		sprintf(string, "%s %s,%s", opPtr->name, Asm_RegNames[(ins >> 27) & 0x1f], Asm_RegNames[(ins >> 22) & 0x1f]);
		break;

	case ARITH_3PARAM:
		if (opPtr->flags & IMMEDIATE_REQ) {
			field = (ins >>16) & 0xffff;
			//Brownie
			//field = ins & 0xffff;
			//sprintf(string, "%s %s,%s,0x%x", opPtr->name, Asm_RegNames[(ins >> 16) & 0x1f], Asm_RegNames[(ins >> 21) & 0x1f], field);
			sprintf(string, "%s %s,%s,0x%x", opPtr->name, Asm_RegNames[(ins >> 6) & 0x1f], Asm_RegNames[(ins >> 11) & 0x1f], field);
		} else {
			//Brownie
			//sprintf(string, "%s %s,%s,%s", opPtr->name,	Asm_RegNames[(ins >> 11) & 0x1f], Asm_RegNames[(ins >> 21) & 0x1f], Asm_RegNames[(ins >> 16) & 0x1f]);
			sprintf(string, "%s %s,%s,%s", opPtr->name,	Asm_RegNames[(ins >> 17) & 0x1f], Asm_RegNames[(ins >> 27) & 0x1f], Asm_RegNames[(ins >> 22) & 0x1f]);
		}
		break;
	case ARITH_4PARAM:
		if (opPtr->flags & IMMEDIATE_REQ) {
			//Brownie
			//field = (ins>>6) & 0x1f;
			//sprintf(string, "%s %s,%s,%s,0x%x", opPtr->name, Asm_RegNames[(ins >> 11) & 0x1f], Asm_RegNames[(ins >> 21) & 0x1f], Asm_RegNames[(ins >> 16) & 0x1f], field);
			field = (ins>>11) & 0x1f;
			sprintf(string, "%s %s,%s,%s,0x%x", opPtr->name, Asm_RegNames[(ins >> 17) & 0x1f], Asm_RegNames[(ins >> 27) & 0x1f], Asm_RegNames[(ins >> 22) & 0x1f], field);
		} else {
			//Brownie
			//sprintf(string, "%s %s,%s,%s,%s", opPtr->name, Asm_RegNames[(ins >> 11) & 0x1f], Asm_RegNames[(ins >> 21) & 0x1f], Asm_RegNames[(ins >> 16) & 0x1f], Asm_RegNames[(ins >> 6 ) & 0x1f]);
			sprintf(string, "%s %s,%s,%s,%s", opPtr->name, Asm_RegNames[(ins >> 17) & 0x1f], Asm_RegNames[(ins >> 27) & 0x1f], Asm_RegNames[(ins >> 22) & 0x1f], Asm_RegNames[(ins >> 12 ) & 0x1f]);
		}
		break;

	case FARITH:
	case MULDIV:
		//Brownie
		//sprintf(string, "%s %s,%s,%s", opPtr->name, Asm_RegNames[((ins >> 11) & 0x1f) + 32], Asm_RegNames[((ins >> 21) & 0x1f) + 32], Asm_RegNames[((ins >> 16) & 0x1f) + 32]);
		sprintf(string, "%s %s,%s,%s", opPtr->name, Asm_RegNames[((ins >> 17) & 0x1f) + 32], Asm_RegNames[((ins >> 27) & 0x1f) + 32], Asm_RegNames[((ins >> 22) & 0x1f) + 32]);
		break;

	case BRANCH_0_OP:
		//Brownie
		//field = (ins & 0xffff);
		field = (ins >>16) & 0xffff;
		if (field & 0x8000) {
			field |= 0xffff0000;
		}
		field += pc + 4;
		sprintf(string, "%s %s", opPtr->name, Sym_GetString(machPtr, (unsigned) field));
		break;

	case BRANCH_1_OP:
		//Brownie
		//field = (ins & 0xffff);
		field = (ins >>16) & 0xffff;
		if (field & 0x8000) {
			field |= 0xffff0000;
		}
		field += pc + 4;
		//Brownie
		//sprintf(string, "%s %s,%s", opPtr->name, Asm_RegNames[(ins >> 21) & 0x1f], Sym_GetString(machPtr, (unsigned) field));
		sprintf(string, "%s %s,%s", opPtr->name, Asm_RegNames[(ins >> 11) & 0x1f], Sym_GetString(machPtr, (unsigned) field));
		break;

	/* ASIP COMMANDS */
	case BRANCH_2_OP:
		//Brownie
		//field = (ins & 0xffff);
		field = (ins >>16) & 0xffff;
		if (field & 0x8000) {
			field |= 0xffff0000;
		}
		field += pc + 4;
		//Brownie
		//sprintf(string, "%s %s,%s,%s", opPtr->name, Asm_RegNames[(ins >> 21) & 0x1f], Asm_RegNames[(ins >> 16) & 0x1f], Sym_GetString(machPtr, (unsigned) field));
		sprintf(string, "%s %s,%s,%s", opPtr->name, Asm_RegNames[(ins >> 11) & 0x1f], Asm_RegNames[(ins >> 6) & 0x1f], Sym_GetString(machPtr, (unsigned) field));
		break;

	case TRAP:
		field = (ins & 0x3ffffff);
		sprintf(string, "%s 0x%x", opPtr->name, field);
		break;

	case LABEL:
	case JUMP:
		//Brownie
		//field = (ins & 0x3ffffff);
		field = ((ins >>6) & 0x3ffffff);
		if (field & 0x2000000) {
			field |= 0xfc000000;
		}
		field += pc + 4;
		//Brownie
		//sprintf(string, "%s %s", opPtr->name, Sym_GetString(machPtr, (unsigned) field));
		sprintf(string, "%s %s", opPtr->name, Sym_GetString(machPtr, (unsigned) field));
		break;

	case SRC1:
		//Brownie
		//sprintf(string, "%s %s", opPtr->name, Asm_RegNames[(ins >> 21) & 0x1f]);
		sprintf(string, "%s %s", opPtr->name, Asm_RegNames[(ins >> 6) & 0x1f]);
		break;

	case MOVE:
	case FCOMPARE:
		/* this is a R-type instruction */
		//Brownie
		//reg1 = (ins >> 11) & 0x1f;
		//reg2 = (ins >> 21) & 0x1f;
		reg1 = (ins >> 17) & 0x1f;
		reg2 = (ins >> 27) & 0x1f;
		if ((opPtr->flags & FIRST_F) || (opPtr->flags & FIRST_D))
			reg1 += 32;
		if ((opPtr->flags & SECOND_F) || (opPtr->flags & SECOND_D))
			reg2 += 32;
		sprintf(string, "%s %s,%s", opPtr->name, Asm_RegNames[reg1], Asm_RegNames[reg2]);
		break;

	/* NEW_COMMANDS:
	* -------------
	* define how to return a readable string describing the instruction
	* (debug output)
	*/

	default:
	    sprintf(string, "instruction confused dis-assembler (0x%x)", ins);
	    break;
    }
    return string;
}

/*
 *----------------------------------------------------------------------
 *
 * Asm_AsmCmd --
 *
 *	This procedure is invoked to process the "asm" Tcl command.
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

/* ARGSUSED */
int Asm_AsmCmd(machPtr, interp, argc, argv)
    DLX *machPtr;			/* Machine description. */
    Tcl_Interp *interp;		/* Current interpreter. */
    int argc;				/* Number of arguments. */
    char **argv;			/* Argument strings. */
{
    int result;
    unsigned int pc;
    char *end;
    int size, code[ASM_MAX_WORDS];

    if ((argc != 2) && (argc != 3)) {
    	sprintf(interp->result,
    			"wrong # args:  should be \"%.50s\" instruction [pc]",
    			argv[0]);
    	return TCL_ERROR;
    }

    if (argc == 3) {
    	pc = strtoul(argv[2], &end, 0);
    	if ((*end != 0) || (end == argv[2])) {
    		sprintf(interp->result, "bad pc \"%.50s\"", argv[2]);
    		return TCL_ERROR;
    	}
    } else {
    	pc = 0;
    }

    result = Asm_Assemble(machPtr, (char *) NULL, argv[1], pc, argv[1], 1, &size, code, 0);
    if (result != TCL_OK) {
    	return result;
    }
    sprintf(interp->result, "0x%x", code[0]);
    return TCL_OK;
}

/*
 *----------------------------------------------------------------------
 *
 * Asm_LoadCmd --
 *
 *	This procedure is invoked to process the "load" Tcl command.
 *	See the user documentation for details on what it does.
 *
 * Results:
 *	A standard Tcl return result.
 *
 * Side effects:
 *	See the user documentation.
 *
 *----------------------------------------------------------------------
 */

/* ARGSUSED */
int Asm_LoadCmd(machPtr, interp, argc, argv)
    DLX *machPtr;			/* Machine whose memory should be loaded. */
    Tcl_Interp *interp;		/* Current interpreter. */
    int argc;				/* Count of number of files in argv. */
    char **argv;			/* Array containing names of files to
				 	 	 	 * assemble. */
{
    unsigned int codeStart, dataStart;
    char *p, *end;
    LoadInfo info;
    int i;

    trapCounter = 0;

    /*
     * Figure out the starting addresses for code and data (check for
     * variables "codeStart" and "dataStart", and use their values if
     * they're defined;  otherwise use defaults).
     */
    codeStart = 0x0;
    p = Tcl_GetVar(machPtr->interp, "codeStart", 1);
    if (*p != 0) {
    	codeStart = strtoul(p, &end, 0);
    	if (*end != 0) {
    		sprintf(machPtr->interp->result,
    				"\"codeStart\" variable doesn't contain an address: \"%.50s\"",
    				p);
    		return TCL_ERROR;
    	}
    }
    dataStart = 0x1000;
    p = Tcl_GetVar(machPtr->interp, "dataStart", 1);
    if (*p != 0) {
    	dataStart = strtoul(p, &end, 0);
    	if (*end != 0) {
    		sprintf(machPtr->interp->result,
    				"\"dataStart\" variable doesn't contain an address: \"%.50s\"",
    				p);
    		return TCL_ERROR;
    	}
    }

    /*
     * Pass 1: delete old symbol definitions.
     */
    for (i = 1; i < argc; i++) {
    	Sym_DeleteSymbols(machPtr, argv[i]);
    }

    /*
     * Pass 2:  read through all of the files to build the symbol table.
     */
    info.codeAddr = codeStart;
    info.dataAddr = dataStart;
    info.message = NULL;
    info.end = NULL;
    info.totalBytes = 0;
    info.errorCount = 0;
    info.flags = ASM_SIZE_ONLY;
    for (i = 1; i < argc; i++) {
    	ReadFile(argv[i], machPtr, &info);
    }

    /*
     * Pass 3: read through the files a second time to actually assemble
     * the code.
     */
    info.codeAddr = codeStart;
    info.dataAddr = dataStart;
    info.flags = 0;
    for (i = 1; i < argc; i++) {
    	ReadFile(argv[i], machPtr, &info);
    	if (info.errorCount > ASM_MAX_ERRORS) {
    		break;
    	}
	}
    freeLabelList();
    if (trapCounter==0) {
      printf("\nWARNING!!! The loaded assembly-file did not contain a \"trap #0\"-command to terminate the simulation!\n\n");
    }

    if (info.message == NULL) {
    	return TCL_OK;
    }
    Tcl_Return(machPtr->interp, info.message, TCL_DYNAMIC);
    return TCL_ERROR;
}


/*
 *----------------------------------------------------------------------
 *
 * ReadFile --
 *
 *	Read in an assembler file.
 *
 * Results:
 *	None.
 *
 * Side effects:
 *	Information gets loaded into *machPtr's memory, and *infoPtr
 *	gets modified (to point to an error message, for example).
 *
 *----------------------------------------------------------------------
 */

static void ReadFile(fileName, machPtr, infoPtr)
    char *fileName;		/* Name of assembler file to read. */
    DLX *machPtr;		/* Machine into whose memory the information
				 	 	 * is to be loaded. */
    register LoadInfo *infoPtr;	/* Information about the state of the
				 	 	 	 	 * assembly process. */
{
	#define MAX_LINE_SIZE 200
	#define MAX_NAME_SIZE 20
    char line[MAX_LINE_SIZE];
    char pseudoOp[MAX_NAME_SIZE+1];
    char tempString[MAX_NAME_SIZE+1];
    FILE *f;
    register char *p;
    int i, nullTerm;
    char *end, *curToken;
    char savedChar;
    double strtod();
    char st[5]="0000";
    int istr;
    int escape=0;

    f = fopen(fileName, "r");
    if (f == NULL) {
    	if (infoPtr->flags & ASM_SIZE_ONLY) {
    		return;
    	}
	sprintf(machPtr->interp->result,
			"couldn't open file \"%.50s\": %.100s", fileName,
			strerror(errno));
	AddErrMsg(machPtr->interp, infoPtr, 0);
	return;
	}

	/* ASIP BASEBLOCKS : notify Start of file */
	if (infoPtr->flags & ASM_SIZE_ONLY) {
		notifyBaseBlocks(0, Separator_Finish, "start", staticEmptyString, staticEmptyString);
    }

    /*
     * Process the file one line at a time.
     */
    infoPtr->file = fileName;
    infoPtr->dot = (infoPtr->codeAddr + 3) & ~3;
    infoPtr->flags |= ASM_CODE;
    for (infoPtr->lineNum = 1; ; infoPtr->lineNum++) {
    	infoPtr->line = fgets(line, MAX_LINE_SIZE, f);
    	if (infoPtr->line == NULL) {
    		if (!feof(f)) {
    			sprintf(machPtr->interp->result, "error reading file: %.100s",
    					strerror(errno));
    			AddErrMsg(machPtr->interp, infoPtr, 1);
    		}
    		break;
    	}

    	/* ASIP : Change Line to lowercase to make the parsing later easier */
    	for (p=line; *p!=0; p++) if (*p>='A' && *p<='Z') *p -= 'A'-'a';


    	/*
    	 * Skip leading blanks.
    	 */
    	for (p = line; (*p == ' ') || (*p == '\t'); p++) {
    		/* Null body:  just skip spaces. */
    	}

    	/*
    	 * Parse off an optional symbol at the beginning of the line.
    	 * Note:  force symbol-related error messages to be output
    	 * during pass 1, even though most other error messages get
    	 * ignored during pass 1.
    	 */
    	if (isalpha(*p) || (*p == '_') || (*p == '$')) {
    		curToken = p;
    		for (p++; isalnum(*p) || (*p == '_') || (*p == '$'); p++) {
    			/* Null body:  just skip past symbol. */
    		}
    		if (*p == ':') {
    			*p = 0;
    			if (machPtr->profileBaseBlocksFileName!=0) {
    				if (lastLabel!=0) free(lastLabel);  // LastLabel is remembererd for localizing jumpTables
    				lastLabel = (char*)malloc( (strlen(line)+1) * sizeof(char));
    				strcpy(lastLabel, line);
    			}

    			if (infoPtr->flags & ASM_SIZE_ONLY) {
    				Sym_AddSymbol(machPtr, fileName, curToken, infoPtr->dot, 0);
    				if (*machPtr->interp->result != 0) {
    					AddErrMsg(machPtr->interp, infoPtr, 1);
    				}
    				if ( ~infoPtr->flags & ASM_CODE ) {
    					addLabelToLabelList(line); // 'line' works as label name, cause the ':' and everything afterwards is cut off
    				}

    				/* ASIP BASEBLOCKS : */
					#if DEBUG_BASEBLOCKS
    				printf("LABEL: %i: \"%s\"\n", infoPtr->dot, line);
					#endif
    				notifyBaseBlocks(infoPtr->dot, Separator_Label, line, staticEmptyString, getSpecialInstructions());

    			}
    			*p = ':';
    			p++;
    		} else {
    			p = curToken;
    		}
    	}

		/*
		* Skip empty lines.
		*/
    	while ((*p == ' ') || (*p == '\t')) {
    		p++;
    	}
    	if ((*p == '\n') || (*p == 0)) {
    		continue;
    	}

    	/*
    	 * If this isn't an assembler pseudo-op, just assemble the
    	 * instruction and move on.
    	 */
    	while ((*p == ' ') || (*p == '\t')) {
    		p++;
    	}
    	if (*p == ';') {
    		continue;
    	}
    	if (*p != '.') {
    		int size, code[ASM_MAX_WORDS], result;

    		infoPtr->dot = (infoPtr->dot + 3) & ~3;
    		result = Asm_Assemble(machPtr, fileName, p, infoPtr->dot, line, infoPtr->flags & ASM_SIZE_ONLY, &size, code, infoPtr->lineNum);
    		// Brownie
    		//printf("line %s\n",infoPtr->line);//Debug for Brownie
    		//printf("size = %8x\n",size);//Debug for Brownie
    		//printf("infoPtr->dot %08x\n",infoPtr->dot);//Debug for Brownie
    		//printf("infoPtr->lineNum %8x\n",infoPtr->lineNum);//Debug for Brownie
    		//printf("code[0] = %08x\n",code[0]);//Debug for Brownie
    		// Brownie End

    		if (result == TCL_OK) {
    			result = StoreWords(machPtr, infoPtr->dot, code, size);
    		}
    		/* Remember maximal text-section address. */
    		if (infoPtr->dot > machPtr->maxTextAddr) machPtr->maxTextAddr = infoPtr->dot;
    		infoPtr->dot += size*4;
    		goto endOfLine;
    	}

    	/*
    	 * Handle an assembler pseudo-op.
    	 */
    	curToken = p;
    	for (i = 0, p++; (i < MAX_NAME_SIZE) && isalpha(*p); i++, p++) {
    		pseudoOp[i] = *p;
    	}
    	if (i >= MAX_NAME_SIZE) {
    		IndicateError(machPtr->interp, "pseudo-op name too long",
    				line, curToken);
    		goto endOfLine;
    	}
    	pseudoOp[i] = 0;
    	while ((*p == ' ') || (*p == '\t')) {
    		p++;
    	}
    	if ((pseudoOp[0] == 'a') && (strcmp(pseudoOp, "align") == 0)) {
    		if (Sym_EvalExpr(machPtr, fileName, p, 0, &i, &end) != TCL_OK) {
    			IndicateError(machPtr->interp, machPtr->interp->result,
    					line, p);
    			goto endOfLine;
    		}
    		p = end;
    		if (i == 0) {
    			machPtr->interp->result = "\".align 0\" not supported";
    			goto endOfLine;
    		} else {
    			// i = (1 << i) - 1;  // old
    			i = i-1;
    			infoPtr->dot = (infoPtr->dot + i) & ~i;
    		}
    	} else if ((pseudoOp[0] == 'a') && (strcmp(pseudoOp, "ascii") == 0)) {
    		nullTerm = 0;

			/*
			 * Read one or more ASCII strings from the input line.  Each
			 * must be surrounded by quotes, and they must be separated
			 * by commas.
			 */
    		doString:
    		while (1) {
    			while ((*p == ' ') || (*p == '\t')) {
    				p++;
    			}
    			if (*p != '"') {
    				IndicateError(machPtr->interp,
    						"missing \" at start of string", line, p);
    				goto endOfLine;
    			}
    			p++;
    			i = Gp_PutString(machPtr, p, '"', infoPtr->dot, nullTerm, &end);
    			if (*end != '"') {
    				IndicateError(machPtr->interp,
    						"missing \" at end of string", line, end-1);
    				goto endOfLine;
    			}
    			p = end+1;
    			infoPtr->dot += i;

    			/* Remember maximal data-section address. */
    			if (infoPtr->dot-1 > machPtr->maxDataAddr) machPtr->maxDataAddr = infoPtr->dot-1;

    			while ((*p == ' ') || (*p == '\t')) {
    				p++;
    			}
    			if (*p != ',') {
    				break;
    			}
    			p++;
    		}
    	} else if ((pseudoOp[0] == 'a') && (strcmp(pseudoOp, "asciiz") == 0)) {
    		nullTerm = 1;
    		goto doString;
    	} else if ((pseudoOp[0] == 'a') && (strcmp(pseudoOp, "addressing") == 0)) {
    		/* ASIP :  addressing is only for pas-assembler IM and will be ignored here. */
    		while (*p != '\n') p++;

    		/* ASIP: akzeptiert jetzt auch .data.8 */
    	} else if (    ((pseudoOp[0] == 'b') && (strcmp(pseudoOp, "byte") == 0))
    			|| ((pseudoOp[0] == 'd') && (strcmp(pseudoOp, "data") == 0) && (p[0]=='.') && (p[1]=='8'))  ) {
    		if (pseudoOp[0] == 'd') p += 3;
    		while (1) {
				curToken = p;
				if (Sym_EvalExpr(machPtr, fileName, p, 0, &i, &end)
						!= TCL_OK) {
					IndicateError(machPtr->interp, machPtr->interp->result,
							line, p);
					goto endOfLine;
				}
				/*printf("--- .data.8 stores %i @ %i\n", i, infoPtr->dot);*/
				if ( (i&~0xFF)!=0 && (i&~0x7F)!=0xFFFFFF80) printf("WARNING: In line %i: The \".data.8\"-Value \"%i\" does not fit into 8 Bits!\n", infoPtr->lineNum, i);
				Gp_PutByte(machPtr, infoPtr->dot, i);

				/* Remember maximal data-section address. */
				if (infoPtr->dot > machPtr->maxDataAddr) machPtr->maxDataAddr = infoPtr->dot;

				infoPtr->dot += 1;
				for (p = end; (*p == ' ') || (*p == '\t'); p++) {
					/* Null body;  just skip space. */
				}
				if (*p != ',') {
					break;
				}
				p++;
    		}
    		/* ASIP: for .data.16 */
    	} else if (    ((pseudoOp[0] == 's') && (strcmp(pseudoOp, "short") == 0))
    			|| ((pseudoOp[0] == 'd') && (strcmp(pseudoOp, "data") == 0) && (p[0]=='.') && (p[1]=='1') && p[2]=='6')  ) {
    		if (pseudoOp[0] == 'd') p += 3;
    		while (1) {
    			curToken = p;
    			if (Sym_EvalExpr(machPtr, fileName, p, 0, &i, &end)
    					!= TCL_OK) {
    				IndicateError(machPtr->interp, machPtr->interp->result,
    						line, p);
    				goto endOfLine;
    			}
    			/*printf("--- .data.16 stores %i @ %i  and  %i @ %i. Alltogether %i is stored.\n", i&0x00FF, infoPtr->dot, (i&0xFF00)>>8, infoPtr->dot+1, i);*/
    			if ( (i&~0xFFFF)!=0 && (i&~0x7FFF)!=0xFFFF8000) printf("WARNING: In line %i: The \".data.16\"-Value \"%i\" does not fit into 16 Bits!\n", infoPtr->lineNum, i);

    			Gp_PutByte(machPtr, infoPtr->dot, i & 0x00FF);
    			Gp_PutByte(machPtr, infoPtr->dot+1, (i & 0xFF00)>>8 );
    			infoPtr->dot += 2;

    			/* Remember maximal data-section address. */
    			if (infoPtr->dot-1 > machPtr->maxDataAddr) machPtr->maxDataAddr = infoPtr->dot-1;

    			for (p = end; (*p == ' ') || (*p == '\t'); p++) {
    				/* Null body;  just skip space. */
    			}
    			if (*p != ',') {
    				break;
    			}
    			p++;
    		}
			/* ASIP : Auskommentiert, damit z.B. ".data.32" in der unterabfrage von ".word" (s.u.) erkannt wird.
			} else if ((pseudoOp[0] == 'd') && (strcmp(pseudoOp, "data") == 0)) {
			if (infoPtr->flags & ASM_CODE) {
				infoPtr->codeAddr = infoPtr->dot;
			} else {
				infoPtr->dataAddr = infoPtr->dot;
			}
			if (Sym_EvalExpr(machPtr, fileName, p, 0, &i, &end) != TCL_OK) {
				Tcl_Return(machPtr->interp, (char *) NULL, TCL_STATIC);
			} else {
				p = end;
				infoPtr->dataAddr = i;
			}
			infoPtr->dot = infoPtr->dataAddr;
			infoPtr->flags &= ~ASM_CODE;
			 */
    } 	/* ASIP: for .string */
	else if (    ((pseudoOp[0] == 's') && (strcmp(pseudoOp, "string") == 0))
			) {

		if (pseudoOp[0] == 's') p += 1;
		int lStr = strlen(p)-3;

		for (istr=0;istr<(lStr);istr++)
		{
			char *ptr;
			if (*p == 92) escape=1;
			else
			{
				if (escape==1)
				{
					escape = 0;
					switch(*p)
					{
					case 'r':
						sprintf(st, "%d",13);
						break;
					case 'n':
						sprintf(st, "%d",10);
						break;
					}
				}else
					sprintf(st, "%d",*p);

				ptr = st;

				curToken = ptr;
				if (Sym_EvalExpr(machPtr, fileName, ptr, 0, &i, &end)	!= TCL_OK) {
					IndicateError(machPtr->interp, machPtr->interp->result, line, ptr);
					goto endOfLine;
				}
				//printf("--- .string stores %i @ %i\n", i, infoPtr->dot);
				Gp_PutByte(machPtr, infoPtr->dot, i);

				/* Remember maximal data-section address. */
				if (infoPtr->dot > machPtr->maxDataAddr) machPtr->maxDataAddr = infoPtr->dot;

				infoPtr->dot += 1;

			}
			p++;
		}
		p++;
	}else if ((pseudoOp[0] == 'g') && ((strcmp(pseudoOp, "global") == 0) || (strcmp(pseudoOp, "globl") == 0))) {
    		if (!isalpha(*p) && (*p != '_')) {
    			IndicateError(machPtr->interp,
    					"symbol name must start with letter or '_'", line, p);
    			goto endOfLine;
    		}
    		curToken = p;
    		while (isalnum(*p) || (*p == '_') || (*p == '$')) {
    			p++;
    		}
    		savedChar = *p;
    		*p = 0;
    		if (infoPtr->flags & ASM_SIZE_ONLY) {
    			Sym_AddSymbol(machPtr, fileName, curToken, 0,
    					SYM_GLOBAL|SYM_NO_ADDR);
    			if (*machPtr->interp->result != 0) {
    				AddErrMsg(machPtr->interp, infoPtr, 1);
    			}
    		}
    		*p = savedChar;
    	} else if ((pseudoOp[0] == 's') && (strcmp(pseudoOp, "space") == 0)) {
    		if (Sym_EvalExpr(machPtr, fileName, p, 0, &i, &end) != TCL_OK) {
    			IndicateError(machPtr->interp, machPtr->interp->result,
    					line, p);
    			goto endOfLine;
    		}
    		p = end;
    		while (i > 0) {
    			Gp_PutByte(machPtr, infoPtr->dot, 0);
    			infoPtr->dot += 1;
    			i -= 1;
    		}

    		/* Remember maximal data-section address. */
    		if (infoPtr->dot-1 > machPtr->maxDataAddr) machPtr->maxDataAddr = infoPtr->dot-1;


    	}else if ((pseudoOp[0] == 's') && (strcmp(pseudoOp, "size") == 0)) {
    		if (!isalpha(*p) && (*p != '_')) {
    			IndicateError(machPtr->interp,"symbol name must start with letter or '_'", line, p);
    			goto endOfLine;
    		}
    		curToken = p;
    		while (isalnum(*p) || (*p == '_') || (*p == '$') || (*p == '-') || (*p == '.') || (*p == ',')  || (*p == ' ') ) {
    			p++;
    		}
    		savedChar = *p;
    		*p = 0;
    		if (infoPtr->flags & ASM_SIZE_ONLY) {
    			Sym_AddSymbol(machPtr, fileName, curToken, 0,SYM_GLOBAL|SYM_NO_ADDR);
    			if (*machPtr->interp->result != 0) {
    				AddErrMsg(machPtr->interp, infoPtr, 1);
    			}
    		}
    		*p = savedChar;
    	}else if ((pseudoOp[0] == 't') && (strcmp(pseudoOp, "type") == 0)) {
    		if (!isalpha(*p) && (*p != '_')) {
    			IndicateError(machPtr->interp,
    					"symbol name must start with letter or '_'", line, p);
    			goto endOfLine;
    		}
    		curToken = p;
    		while (isalnum(*p) || (*p == '_') || (*p == '$')|| (*p == ',')|| (*p == ' ')|| (*p == '@')) {
    			p++;
    		}
    		savedChar = *p;
    		*p = 0;
    		if (infoPtr->flags & ASM_SIZE_ONLY) {
    			Sym_AddSymbol(machPtr, fileName, curToken, 0,
    					SYM_GLOBAL|SYM_NO_ADDR);
    			if (*machPtr->interp->result != 0) {
    				AddErrMsg(machPtr->interp, infoPtr, 1);
    			}
    		}
    		*p = savedChar;
    	}else if ((pseudoOp[0] == 'i') && (strcmp(pseudoOp, "ident") == 0)) {
    		/*if (!isalpha(*p) && (*p != '_')) {
    			IndicateError(machPtr->interp,
    					"symbol name must start with letter or '_'", line, p);
    			goto endOfLine;
    		}*/
    		curToken = p;
    		while (isalnum(*p) || (*p == '_') || (*p == '$') || (*p == ' ') || (*p == '"') || (*p == '.') || (*p == ':')|| (*p == '(')|| (*p == ')')) {
    			p++;
    		}
    		savedChar = *p;
    		*p = 0;
    		if (infoPtr->flags & ASM_SIZE_ONLY) {
    			Sym_AddSymbol(machPtr, fileName, curToken, 0,
    					SYM_GLOBAL|SYM_NO_ADDR);
    			if (*machPtr->interp->result != 0) {
    				AddErrMsg(machPtr->interp, infoPtr, 1);
    			}
    		}
    		*p = savedChar;
    	}
    	//Brownie TODO offset should be divisible by 4
    	else if ((pseudoOp[0] == 'o') && (strcmp(pseudoOp, "org") == 0)) {
    	    if (Sym_EvalExpr(machPtr, fileName, p, 0, &i, &end) != TCL_OK) {
    	    	IndicateError(machPtr->interp, machPtr->interp->result,	line, p);
    	    	goto endOfLine;
    	    }
    	    if (infoPtr->flags == ASM_SIZE_ONLY){
    	    	//printf("machPtr->maxDataAddr = %x\n", machPtr->maxDataAddr);//Debug for Brownie
    	    	//printf("machPtr->maxTextAddr = %x\n", machPtr->maxTextAddr);//Debug for Brownie
    	    	machPtr->orgStall += (i - machPtr->maxTextAddr - 4)/4;
    	    	//printf("machPtr->orgStall = %d\n", machPtr->orgStall);//Debug for Brownie
    	    }
    	    p = end;
    		Gp_PutByte(machPtr, infoPtr->dot, 0);
    		infoPtr->dot = i;
    		//infoPtr->dot += i;

    	    /* Remember maximal data-section address. */
    	    //if (infoPtr->dot-1 > machPtr->maxDataAddr) machPtr->maxDataAddr = infoPtr->dot-1;
    		if (infoPtr->dot-1 > machPtr->maxTextAddr) machPtr->maxTextAddr = infoPtr->dot-1;

    	//Brownie end
    	} else if ((pseudoOp[0] == 's') && (strcmp(pseudoOp, "section") == 0)) {
    		/* ASIP : */
    		char* temp = tempString;
    		/* while *p is not any kind of separator AND there is more room left in the tempString */
    		while (*p!=' ' && *p!='\t' && *p!='\0' && *p!='\n' && temp < tempString+MAX_NAME_SIZE) *temp++ = *p++;
    		*temp = '\0';
    		if (strcmp(tempString, ".text") == 0) {
    			infoPtr->flags &= ~ASM_CODE;
    		} else if ((strcmp(tempString, ".data") == 0) || (strcmp(tempString, ".rodata") == 0)) {
    			infoPtr->flags |= ASM_CODE;
    		} else {
    			printf("unknown section: \"%s\"\n", tempString);
    		}
        	} else if ((pseudoOp[0] == 't') && (strcmp(pseudoOp, "text") == 0)) {
        		if (infoPtr->flags & ASM_CODE) {
        			infoPtr->codeAddr = infoPtr->dot;
        		} else {
        			infoPtr->dataAddr = infoPtr->dot;
				}
        		if (Sym_EvalExpr(machPtr, fileName, p, 0, &i, &end) != TCL_OK) {
        			Tcl_Return(machPtr->interp, (char *) NULL, TCL_STATIC);
        		} else {
        			p = end;
        			infoPtr->codeAddr = i;
        		}
        		infoPtr->dot = infoPtr->codeAddr;
        		infoPtr->flags |= ASM_CODE;

        	} else if (    ((pseudoOp[0] == 'w') && (strcmp(pseudoOp, "word") == 0))
        			||     ((pseudoOp[0] == 'l') && (strcmp(pseudoOp, "long") == 0))
        			|| ( pseudoOp[0]=='d' && strcmp(pseudoOp, "data")==0 && p[0]=='.' && p[1]=='3' && p[2]=='2') ) {
        		/* ASIP : Zusammen mit der erweiterten if Abfrage sorgt diese AEnderung dafuer, dass
	              auch .data.32 Dateneintraege erkannt werden. */
        		if (pseudoOp[0] == 'd') p += 3;
        		while (1) {
        			char* jumpTargetInDataSection;
        			char* tempCharPointer;
        			char* oldP;

        			while ((*p == ' ') || (*p == '\t')) p++;
	      
        			curToken = p;
        			if (Sym_EvalExpr(machPtr, fileName, p, 0, &i, &end) != TCL_OK) {
        				IndicateError(machPtr->interp, machPtr->interp->result, line, p);
        				goto endOfLine;
        			}

					/* This code will detect jump target declarations (i.e. labels as data values) inside the data section.
					It is IMPORTANT to know, that this code will only work accurate, if the jump target declarations
					in the data section are completely behind the corresponding jump targets in the code section!
					Reason: Detecting jump targets and jump target declarations are done in one single pass,
					thus the targets have to be known, when they are declared.
					*/
        			if (machPtr->profileBaseBlocksFileName!=0 && infoPtr->flags & ASM_SIZE_ONLY) {
        				jumpTargetInDataSection = (char*)malloc( (end-p+2)*sizeof(char));
        				tempCharPointer = jumpTargetInDataSection;
        				oldP = p;
        				while ((*p != ' ') && (*p != '\t') && (*p != ';') && (*p != '\n') && (*p != '\0') ) *tempCharPointer++ = *p++;
        				*tempCharPointer = '\0';
        				p = oldP;
						#if JUMPTABLE
        				if (isLabelInLabelList(jumpTargetInDataSection)) {
        					addLabelToJumpTargetList(lastLabel, jumpTargetInDataSection);
        				}
        				free(jumpTargetInDataSection);
						#endif
        			}

        			infoPtr->dot = (infoPtr->dot + 3) & ~3;
        			StoreWords(machPtr, infoPtr->dot, &i, 1);
	      
        			/* Remember maximal data-section address. */
        			if (infoPtr->dot > machPtr->maxDataAddr) machPtr->maxDataAddr = infoPtr->dot;
	      
        			infoPtr->dot += 4;
        			for (p = end; (*p == ' ') || (*p == '\t'); p++) {
        				/* Null body;  just skip space. */
        			}
        			if (*p != ',') {
        				break;
        			}
        			p++;
        		}
        	} else if ((pseudoOp[0] == 'f') && (strcmp(pseudoOp, "float") == 0)) {
        		while (1) {
        			float f;
        			int *pi = (int *)&f;

        			curToken = p;
        			f = strtod(p, &end);
        			if (p == end) {
        				IndicateError(machPtr->interp, "illegal floating number", line, p);
        				goto endOfLine;
        			}
        			infoPtr->dot = (infoPtr->dot + 3) & ~3;
        			(void) StoreWords(machPtr, infoPtr->dot, pi, 1);

        			/* Remember maximal data-section address. */
        			if (infoPtr->dot > machPtr->maxDataAddr) machPtr->maxDataAddr = infoPtr->dot;

        			infoPtr->dot += 4;
        			for (p = end; (*p == ' ') || (*p == '\t'); p++) {
        				/* Null body;  just skip space. */
        			}
        			if (*p != ',') {
        				break;
        			}
        			p++;
        		}
        	} else if ((pseudoOp[0] == 'd') && (strcmp(pseudoOp, "double") == 0)) {
        		while (1) {
        			double d;
        			int *pi = (int *)&d;

        			curToken = p;
        			d = strtod(p, &end);
        			if (p == end) {
        				IndicateError(machPtr->interp, "illegal double number", line, p);
        				goto endOfLine;
        			}
        			infoPtr->dot = (infoPtr->dot + 3) & ~3;
        			(void) StoreWords(machPtr, infoPtr->dot, pi, 2);

        			/* Remember maximal data-section address. */
        			if (infoPtr->dot > machPtr->maxDataAddr) machPtr->maxDataAddr = infoPtr->dot;

        			infoPtr->dot += 8;
        			for (p = end; (*p == ' ') || (*p == '\t'); p++) {
        				/* Null body;  just skip space. */
        			}
        			if (*p != ',') {
        				break;
        			}
        			p++;
        		}
        	} else {
        		IndicateError(machPtr->interp, "unknown pseudo-op", line,
        				curToken);
        		goto endOfLine;
        	}

    		/*
    		 * Check for extraneous garbage at the end of the line.
    		 */
    		while (isspace(*p)) {
    			p++;
    		}
    		if ((*p != '#') && (*p != 0)) {
    			IndicateError(machPtr->interp, "extra junk at end of line",
    					line, p);
    		}

    		/*
    		 * Done with the line.  If there has been an error, add it onto
    		 * the list of error messages that has accumulated during the
    		 * assembly.  Increase the storage allocated to error messages
    		 * if necessary to accommodate the new message.
    		 */
    		endOfLine:
    		if (*machPtr->interp->result != 0) {
    			if (infoPtr->flags & ASM_SIZE_ONLY) {
    				Tcl_Return(machPtr->interp, (char *) NULL, TCL_STATIC);
    			} else {
    				AddErrMsg(machPtr->interp, infoPtr, 1);
    				if (infoPtr->errorCount > ASM_MAX_ERRORS) {
    					goto endOfFile;
    				}
    			}
    		}
    	}

    	endOfFile:
    	fclose(f);

    	/* ASIP BASEBLOCKS : notify End of file */
    	if (infoPtr->flags & ASM_SIZE_ONLY) {
    		notifyBaseBlocks(infoPtr->dot-4, Separator_Finish, "finish", staticEmptyString, getSpecialInstructions());
    		printf("Biggest used address for Text Section (word aligned): 0x%x\n", machPtr->maxTextAddr & ~0x3);
    		printf("Biggest used address for Data Section (word aligned): 0x%x\n", machPtr->maxDataAddr & ~0x3);
    	}

    	if (infoPtr->flags & ASM_CODE) {
    		infoPtr->codeAddr = infoPtr->dot;
    	} else {
    		infoPtr->dataAddr = infoPtr->dot;
    	}
}

/*
 *----------------------------------------------------------------------
 *
 * AddErrMsg --
 *
 *	Given an error message in an interpreter, add it onto a list of
 *	error messages being accumulated for an assembly and clear the
 *	interpreter's message.
 *
 * Results:
 *	None.
 *
 * Side effects:
 *	The message is added to the list of messages in infoPtr, and
 *	the interpreter's result is re-initialized.
 *
 *----------------------------------------------------------------------
 */

static void AddErrMsg(interp, infoPtr, addHeader)
    Tcl_Interp *interp;			/* Interpreter containing error
					 	 	 	 * message. */
    register LoadInfo *infoPtr;		/* State of assembly, to which error
					 	 	 	 	 * message is to be added. */
    int addHeader;					/* Non-zero means tack on message
					 	 	 	 	 * header identifying file and line
									 * number. */
{
    int length, hdrLength, totalLength;
    char header[100];

    length = strlen(interp->result)*sizeof(char);
    if (length == 0) {
    	return;
    }
    if (addHeader) {
    	sprintf(header, "%.50s(%d): ", infoPtr->file,
    			infoPtr->lineNum);
    } else {
    	header[0] = 0;
    }
    hdrLength = strlen(header)*sizeof(char);
    totalLength = hdrLength + length + 2;

    /*
     * Grow the error message area if the current area isn't large
     * enough.
     */

    if (totalLength > ((infoPtr->message + infoPtr->totalBytes)
	    - (infoPtr->end + 1))) {
    	char *newMsg;

    	if (infoPtr->totalBytes == 0) {
    		infoPtr->totalBytes = 4*totalLength;
    	} else {
    		infoPtr->totalBytes = 2*(infoPtr->totalBytes + totalLength);
    	}
    	newMsg = calloc(1, (unsigned) infoPtr->totalBytes);
    	if (infoPtr->message != NULL) {
    		strcpy(newMsg, infoPtr->message);
    		infoPtr->end += newMsg - infoPtr->message;
    	} else {
    		infoPtr->end = newMsg;
    	}
    	infoPtr->message = newMsg;
    }
    if (infoPtr->end != infoPtr->message) {
    	*infoPtr->end = '\n';
    	infoPtr->end += 1;
    }
    sprintf(infoPtr->end, "%s%s", header, interp->result);
    infoPtr->end += hdrLength + length;
    infoPtr->errorCount += 1;

    Tcl_Return(interp, (char *) NULL, TCL_STATIC);
}

/*
 *----------------------------------------------------------------------
 *
 * StoreBytes --
 *
 *	Place a given range of bytes in the memory of a machine.
 *
 * Results:
 *	A standard Tcl result (normally TCL_OK plus empty string);  error
 *	information is returned through machPtr->interp.
 *
 * Side effects:
 *	MachPtr's memory is modified to hold new information.
 *
 *----------------------------------------------------------------------
 */

static int StoreWords(machPtr, address, wordPtr, numWords)
    register DLX *machPtr;		/* Machine into which to store. */
    unsigned int address;		/* Word-aligned byte address in
					 	 	 	 * machine's memory. */
    int *wordPtr;				/* Words to store into machine's
					 	 	 	 * memory. */
    int numWords;				/* Number of words to store. */
{
    int index;
    register MemWord *memPtr;

    for ( ; numWords > 0; wordPtr++, address += 4, numWords--) {
    	index = ADDR_TO_INDEX(address);
    	if (index >= machPtr->numWords) {
    		sprintf(machPtr->interp->result,
    				"can't store at address 0x%x:  no such memory location",
    				address);
    		return TCL_ERROR;
    	}
    	memPtr = machPtr->memPtr + index;
    	memPtr->value = *wordPtr;
    	memPtr->opCode = OP_NOT_COMPILED;
    }
    return TCL_OK;
}

/*
 *----------------------------------------------------------------------
 *
 * IndicateError --
 *
 *	Generate an error message that also points out the position
 *	in a string where the error was detected.
 *
 * Results:
 *	There is no return value.  Interp's result is modified to hold
 *	errMsg followed by string, with position pos highlighted in
 *	string.
 *
 * Side effects:
 *	None.
 *
 *----------------------------------------------------------------------
 */

static void IndicateError(interp, errMsg, string, pos)
    Tcl_Interp *interp;		/* Interpreter to hold error message.  The
				 	 	 	 * result area must be in the initial
							 * empty state. */
    char *errMsg;			/* Message describing the problem. */
    char *string;			/* Input string that contained the problem. */
    char *pos;				/* Location in string of the character where
				 	 	 	 * problem was detected. */
{
    int msgLength, stringLength, length;
    char *newMsg;

    msgLength = strlen(errMsg)*sizeof(char);
    stringLength = strlen(string)*sizeof(char);
    if (string[stringLength-1] == '\n') {
    	stringLength -= 1;
    }

    /*
     * Always allocate new storage for the new message.  This is needed
     * because (a) the space required may exceed the size of the static
     * result buffer, and (b) "errMsg" may actually be in the static
     * buffer so we have to be careful not to trash it while generating
     * the new message.
     */
    length = sizeof(char) * (msgLength + stringLength + 10);
    newMsg = malloc((unsigned)length);
    snprintf(newMsg, length, "%s: %.*s => %.*s", errMsg, pos-string, string, stringLength - (pos-string), pos);
    Tcl_Return(interp, newMsg, TCL_DYNAMIC);
}


/*
 * ASIP: For determining what are Special Instructions
 */
int isSpecialInstruction(const char* const instruction) {
	static const char* const normalInstructions[] = {
	  "add", "sub", "mul", "div", "divu", "mod", "modu", "and", "nand", "or", "nor", "addu",
	  "xor", "lls", "lrs", "ars", "elt", "eltu", "eeq", "eneq","eeqi", "eequ", "eequi", "ege",
	  "egei", "egeu", "egeui", "egt", "egti", "egtu", "egtui", "ele", "elei",
	  "eleu", "eleui", "elti", "eltu", "eltui", "ene", "eneqi", "enequ", "enequi", "subu", "subui",
	  "addi", "subi", "andi", "ori", "xori", "llsi", "lrsi", "arsi", "lsoi", "addui",
	  "lb", "lh", "lw", "sb", "sh", "sw", "lbu", "lhi", "lhu",
	  "brz", "brnz",
	  "jp", "jpl", "trap",
	  "jpr", "jprl",
	  "nop",  "reti",
	  "exbw", "exhw",
	  "beq", "bneq", "bgtu", "bleu", "bltu", "bgeu",
	  "trap", "forecast", "\0" /* this \0 is needed to terminate the array */
	};
	int i;

	if (instruction==0 || *instruction==0) return 0;
	for (i=0; normalInstructions[i][0] != '\0'; i++) {
		if (strcasecmp(instruction, normalInstructions[i])==0) return 0;
	}
	return 1;
}


/*
 * ASIP: For determining the Special Instructions for a specific BaseBlocks
 */


void appendSpecialInstruction(const char* const instruction) {
	//int i;
	int instructionSize = 0;
	char* tempPointer;
	//char* idx;

	#if DEBUG_SPECIAL_INSTRUCTION
	printf("appendSpecialInstruction(\"%s\");  // Size:%i Position:%i\n",
	instruction, specialInstructionsList_Size, specialInstructionsList_Position);
	#endif
	if (instruction==0 || *instruction==0) return;
	if (specialInstructionsList_Size == 0) {
		specialInstructionsList_Size = 16;
		specialInstructionsList = (char*)malloc(specialInstructionsList_Size*sizeof(char));
		specialInstructionsList_Position = 0;
	}
	instructionSize = strlen(instruction)*sizeof(char); // the size without the '\0'
	tempPointer = specialInstructionsList;

	// Commented out to allow a special instruction to be mentioned more than once in the created profile file
	/*
	for (i=0; i<specialInstructionsList_Position;) {
		if (strncmp(tempPointer, instruction, instructionSize) == 0) {
			#if DEBUG_SPECIAL_INSTRUCTION
			printf("  already existing!\n");
			#endif
			return;
		}
		idx = index(tempPointer, ',');
		if (idx==0) break;
		i += idx-tempPointer+2;
		tempPointer = idx+2;  // +2 skipps ", "
	}
*/
	tempPointer = 0;
	// The '+3' in the while condition is: +1 for '\0' and +2 for ", "
	while (specialInstructionsList_Position+instructionSize+3 > specialInstructionsList_Size) {
		#if DEBUG_SPECIAL_INSTRUCTION
		printf("  resize specialInstructionList!  From:%i To:%i\n", specialInstructionsList_Size, 2*specialInstructionsList_Size);
		#endif
		tempPointer = (char*)malloc(2*specialInstructionsList_Size*sizeof(char));
		strncpy(tempPointer, specialInstructionsList, specialInstructionsList_Size);
		free(specialInstructionsList);
		specialInstructionsList = tempPointer;
		tempPointer = 0;
		specialInstructionsList_Size *= 2;
	}
	tempPointer = specialInstructionsList + specialInstructionsList_Position;
	if (specialInstructionsList_Position>0) {
		*tempPointer++ = ',';
		*tempPointer++ = ' ';
		specialInstructionsList_Position += 2;
		}
		strcpy(tempPointer, instruction);
		specialInstructionsList_Position += instructionSize;
		tempPointer = 0;
		#if DEBUG_SPECIAL_INSTRUCTION
		printf("  specialInstructionsList: \"%s\" Size:%i Position:%i\n", specialInstructionsList, specialInstructionsList_Size, specialInstructionsList_Position);
		#endif
	}

const char* const getSpecialInstructions() {
	char* retVal;
	#if DEBUG_SPECIAL_INSTRUCTION
	//  printf("getSpecialInstructions();  // Size:%i Position:%i\n", specialInstructionsList_Position, specialInstructionsList_Size);
	#endif
	if (specialInstructionsList_Position <= 0) return staticEmptyString;
	retVal = (char*)malloc( (specialInstructionsList_Position+1)*sizeof(char) );
	strncpy(retVal, specialInstructionsList, specialInstructionsList_Position+1);
	specialInstructionsList_Position = 0;
	return retVal;
}
