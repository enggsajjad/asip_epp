/* 
 * trap.c --
 *
 *	This file contains functions that handle various predefined
 *	trap numbers, which are used to perform system calls.
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

/* one possible problem exists below in the Handle_Printf function.  I
 * did not have access to the output of the DLX compiler, so I assumed
 * that the compiler, when passing a floating point value to a function,
 * places the lower floating point register in the lower address (eg.
 * F0 in 0(r14), and F1 in 4(r14)).  If this is not correct, exchange the
 * assignments to ta[0] and ta[1].
 */

#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <values.h>
#include <tcl.h>
#include <sys/errno.h>
#include "asm.h"
#include "dlx.h"
#include "sym.h"
#include "syscall.h"

extern int errno;

#define ARG(n)  (machPtr->memPtr[ADDR_TO_INDEX(readRegister(machPtr, 14, 1))+(n)].value)
#define SCRATCH_ADDR(n)  ((char *)machPtr->memScratch + (n))

/*
 *----------------------------------------------------------------------
 *
 * Init_Handle_Trap --
 *
 *	Prepare the system for handling traps.  This mainly makes
 *      copies of the stdin, stdout, and stderr for use by the
 *      simluated program.
 *
 * Results:
 *      None.
 *
 * Side effects:
 *      The fd_map is set up.
 *
 *----------------------------------------------------------------------
 */

void Init_Handle_Trap(DLX* machPtr) {
  int i;

  for (i = 0; i < FD_SIZE; i++)
    machPtr->fd_map[i] = -1;
  if ((machPtr->fd_map[0] = dup(0)) == -1)
    printf("Could not open simulated standard input\n");
  if ((machPtr->fd_map[1] = dup(1)) == -1)
    printf("Could not open simulated standard output\n");
  if ((machPtr->fd_map[2] = dup(2)) == -1)
    printf("Could not open simulated standard error\n");
}

/*
 *----------------------------------------------------------------------
 *
 * Block_To_Scratch --
 *
 *	Copy a block of memory from the simulated memory to the scratch
 *      pad.
 *
 * Results:
 *	The return value is 0 if no error occured, 1 if a problem
 *      arises.
 *
 * Side effects:
 *      The memScratch is altered.
 *
 *----------------------------------------------------------------------
 */

int Block_To_Scratch(DLX* machPtr, register int firstAddr, register int length) {
  char *first, *last, bytes[4];
  register unsigned int word;
  MemWord *wordPtr;

  if (!length)
    return 0;
  length--;
  if (length < 0) {
    printf("Invalid block movement\n");
    return 1;
  }
  if ((firstAddr < 0) || (firstAddr + length >= machPtr->numChars)) {
    printf("Memory reference out of range\n");
    return 1;
  }

  first = SCRATCH_ADDR(firstAddr);
  last = first + length;
  wordPtr = machPtr->memPtr + ADDR_TO_INDEX(firstAddr);
  word = wordPtr->value;
  bytes[3] = (word & 0xff);
  bytes[2] = ((word >>= 8) & 0xff);
  bytes[1] = ((word >>= 8) & 0xff);
  bytes[0] = ((word >> 8) & 0xff);
  while (first <= last) {
    *first = bytes[firstAddr & 0x3];
    firstAddr++; first++;
    if (!(firstAddr & 0x3)) {
      word = (++wordPtr)->value;
      bytes[3] = (word & 0xff);
      bytes[2] = ((word >>= 8) & 0xff);
      bytes[1] = ((word >>= 8) & 0xff);
      bytes[0] = ((word >> 8) & 0xff);
    }
  }
  return 0;
}

/*
 *----------------------------------------------------------------------
 *
 * Block_From_Scratch --
 *
 *	Copy a block of memory from the scratch pad to the simulated
 *      memory.
 *
 * Results:
 *	The return value is 0 if no error occured, 1 if a problem
 *      arises.
 *
 * Side effects:
 *      The memPtr data is altered.
 *
 *----------------------------------------------------------------------
 */

int Block_From_Scratch(machPtr, firstAddr, length)
DLX *machPtr;
register int firstAddr, length;
{
  char *first, *last;
  register unsigned int word;
  MemWord *wordPtr;

  if (!length)
    return 0;
  length--;
  if (length < 0) {
    printf("Invalid block movement\n");
    return 1;
  }
  if ((firstAddr < 0) || (firstAddr + length >= machPtr->numChars)) {
    printf("Memory reference out of range\n");
    return 1;
  }

  wordPtr = machPtr->memPtr + ADDR_TO_INDEX(firstAddr);
  word = wordPtr->value;
  first = SCRATCH_ADDR(firstAddr);
  last = first + length;
  while (first <= last) {
    switch (firstAddr & 0x3) {
    case 0 :
      word = (word & 0x00ffffff) | (*first << 24);
      break;
    case 1 :
      word = (word & 0xff00ffff) | (*first << 16);
      break;
    case 2 :
      word = (word & 0xffff00ff) | (*first << 8);
      break;
    case 3 :
      word = (word & 0xffffff00) | *first;
      wordPtr->value = word;
      wordPtr->opCode = OP_NOT_COMPILED;
      word = (++wordPtr)->value;
      break;
    }
    firstAddr++; first++;
  }
  if (wordPtr->value != word) {
    wordPtr->value = word;    /* update the last word */
    wordPtr->opCode = OP_NOT_COMPILED;
  }
  return 0;
}

/*
 *----------------------------------------------------------------------
 *
 * String_To_Scratch --
 *
 *	Copy a NULL terminated string from simulator memory to the
 *      scratch pad.
 *
 * Results:
 *	The return value is 0 if no error occured, 1 if a problem
 *      arises.
 *
 * Side effects:
 *      The memScratch data is altered.
 *
 *----------------------------------------------------------------------
 */

int String_To_Scratch(machPtr, firstAddr)
DLX *machPtr;
register int firstAddr;
{
  char *first, *endMem = machPtr->endScratch;
  register unsigned int word;
  unsigned char bytes[4];
  MemWord *wordPtr;

  if ((firstAddr < 0) || (firstAddr >= machPtr->numChars)) {
    printf("Memory reference out of range\n");
    return 1;
  }

  first = SCRATCH_ADDR(firstAddr);
  wordPtr = machPtr->memPtr + ADDR_TO_INDEX(firstAddr);
  word = wordPtr->value;
  bytes[3] = (word & 0xff);
  bytes[2] = ((word >>= 8) & 0xff);
  bytes[1] = ((word >>= 8) & 0xff);
  bytes[0] = ((word >> 8) & 0xff);
  while (first < endMem) {
    if (!(*first = bytes[firstAddr & 0x3]))
      break;
    firstAddr++; first++;
    if (!(firstAddr & 0x3)) {
      word = (++wordPtr)->value;
      bytes[3] = (word & 0xff);
      bytes[2] = ((word >>= 8) & 0xff);
      bytes[1] = ((word >>= 8) & 0xff);
      bytes[0] = ((word >> 8) & 0xff);
    }
  }

  if (first >= endMem) {
    printf("Memory reference out of range\n");
    return 1;
  }
  return 0;
}


/*
 *----------------------------------------------------------------------
 *
 * system calls
 *
 *----------------------------------------------------------------------
 */

#include "syscall.c"


/*
 *----------------------------------------------------------------------
 *
 * Set_Errno
 *
 *	Set the _error variable (if it exists)
 *
 * Results:
 *      None.
 *
 * Side effects:
 *      See the description above
 *
 *----------------------------------------------------------------------
 */

void Set_Errno(DLX* machPtr, int errorNumber) {
  char *p, *end;
  int addr, index;

  p = Tcl_GetVar(machPtr->interp, "_errno", 0);
  if (*p != 0) {
    addr = strtoul(p, &end, 0);
    if (*end != 0) return;
    index = ADDR_TO_INDEX(addr);
    if (index < machPtr->numWords)
      machPtr->memPtr[index].value = errorNumber;
  }
}
