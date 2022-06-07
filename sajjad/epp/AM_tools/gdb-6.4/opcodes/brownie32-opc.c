/* brownie32-opc.c -- BROWNIE32 opcode list.
   Copyright 1993, 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002
   2003, 2004, 2005 Free Software Foundation, Inc.
   Contributed by Ralph Campbell and OSF
   Commented and modified by Ian Lance Taylor, Cygnus Support
   Extended for BROWNIE3232 support by Anders Norlander, and by SiByte, Inc.
   BROWNIE32-3D, MDMX, and BROWNIE3232 Release 2 support added by Broadcom
   Corporation (SiByte).

   Copyright (C) 2005,2006  Upwind technology, Inc.

This file is part of GDB, GAS, and the GNU binutils.

GDB, GAS, and the GNU binutils are free software; you can redistribute
them and/or modify them under the terms of the GNU General Public
License as published by the Free Software Foundation; either version
1, or (at your option) any later version.

GDB, GAS, and the GNU binutils are distributed in the hope that they
will be useful, but WITHOUT ANY WARRANTY; without even the implied
warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See
the GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this file; see the file COPYING.  If not, write to the Free
Software Foundation, 51 Franklin Street - Fifth Floor, Boston, MA 02110-1301, USA.  */

#include <stdio.h>
#include "sysdep.h"
#include "opcode/brownie32.h"

const struct brownie32_opcode brownie32_opcodes[] =
  {

  /* Arithmetic and Logic RR-TYPE instructions.  */
    { "add",      (RRTYPOP|ADDFUNC|ADDFTYP),     "e,a,d" }, /* ADD  (Rm + Rn)                    */
    { "sub",      (RRTYPOP|SUBFUNC|SUBFTYP),     "e,a,d" }, /* SUB  (Rm - Rn)                    */
    { "mul",      (RRTYPOP|MULFUNC|MULFTYP),     "e,a,d" }, /* MULTIPLY  (Rm * Rn)               */
    { "div",      (RRTYPOP|DIVFUNC|DIVFTYP),     "e,a,d" }, /* DIVIDE    (Rm / Rn)               */
    { "mod",      (RRTYPOP|MODFUNC|MODFTYP),     "e,a,d" }, /* MOD       (Rm % Rn)               */
    { "and",      (RRTYPOP|ANDFUNC|ANDFTYP),     "e,a,d" }, /* AND       (Rm & Rn)               */
    { "or",       (RRTYPOP|ORFUNC|ORFTYP),       "e,a,d" }, /* OR        (Rm | Rn)               */
    { "xor",      (RRTYPOP|XORFUNC|XORFTYP),     "e,a,d" }, /* EXCLUSIVE OR  (Rm ^ Rn)           */
    { "lls",      (RRTYPOP|LLSFUNC|LLSFTYP),     "e,a,d" }, /* LOGICAL LEFT SHIFT                */
    { "lrs",      (RRTYPOP|LRSFUNC|LRSFTYP),     "e,a,d" }, /* LOGICAL RIGHT SHIFT               */
    { "ars",      (RRTYPOP|ARSFUNC|ARSFTYP),     "e,a,d" }, /* ARITHMETIC RIGHT SHIFT            */
    { "elt",      (RRTYPOP|ELTFUNC|ELTFTYP),     "e,a,d" },  /* SET IF LESS   SIGNED             */
    { "eltu",     (RRTYPOP|ELTUFUNC|ELTUFTYP),   "e,a,d" }, /* SET IF LESS UNSIGNED              */
    { "eeq",      (RRTYPOP|EEQFUNC|EEQFTYP),     "e,a,d" }, /* SET IF EQUAL                      */
    { "eneq",      (RRTYPOP|ENEQFUNC|ENEQFTYP),  "e,a,d" }, /* SET IF NOT EQUAL                  */
  /* Arithmetic and Logic RI-TYPE instructions.  */
    { "addi",     (ADDIOP),   "f,b,i" },                    /* ADD  (Rm + Immediate)             */
    { "subi",     (SUBIOP),   "f,b,i" },                    /* SUB  (Rm - Immediate)             */
    { "andi",     (ANDIOP),   "f,b,i" },                    /* AND  (Rm & Immediate)             */
    { "ori",       (ORIOP),   "f,b,i" },                    /* OR   (Rm | Immediate)             */
    { "xori",     (XORIOP),   "f,b,i" },                    /* EXCLUSIVE OR  (Rm ^ Immediate)    */
    { "llsi",     (LLSIOP),   "f,b,i" },                    /* LOGICAL LEFT SHIFT Immediate      */
    { "lrsi",     (LRSIOP),   "f,b,i" },                    /* LOGICAL LEFT SHIFT Immediate      */
    { "arsi",     (ARSIOP),   "f,b,i" },                    /* ARITHMETIC RIGHT SHIFT Immediate  */
    { "lsoi",     (LSOIOP),   "f,b,i" },                    /* 16bit LEFT SHIFT and OR Immediate */
  /* Arithmetic and Logic MA-TYPE instructions.  */
    { "lb",     (LBOP),    "f,b,o" },                       /* LOAD 1BYTE DATA                   */
    { "lh",     (LHOP),    "f,b,o" },                       /* LOAD 2BYTE DATA                   */
    { "lw",     (LWOP),    "f,b,o" },                       /* LOAD 4BYTE DATA                   */
    { "sb",     (SBOP),    "b,f,o" },                       /* STORE 1BYTE DATA                  */
    { "sh",     (SHOP),    "b,f,o" },                       /* STORE 2BYTE DATA                  */
    { "sw",     (SWOP),    "b,f,o" },                       /* STORE 4BYTE DATA                  */
  /* Arithmetic and Logic BR-TYPE instructions.  */
    { "brz",     (BRZOP),   "b,o" },                        /* BRANCH IF RS1 == 0                */
    { "brnz",    (BRNZOP),  "b,o" },                        /* BRANCH IF RS1 != 0                */
  /* Arithmetic and Logic JP-TYPE instructions.  */
    { "jp",     (JPOP),     "O" },                        /* RELATIVE JUMP                    */
    { "jpl",    (JPLOP),    "O" },                        /* SET NEXT ADDR AND RELATIVE JUMP  */
    { "trap",   (TRAPOP),   "O" },                        /* OCCURE SOFTWARE INTERRUPT        */
  /* Arithmetic and Logic JPR-TYPE instructions.  */
    { "jpr",     (JPROP),    "c" },                        /* ABSOLUTE JUMP                    */
    { "jprl",    (JPRLOP),   "c" },                        /* SET NEXT ADDR AND ABSOLUTE JUMP  */
  /* Arithmetic and Logic SP-TYPE instructions.  */
    { "nop",     (NOPOP),   "N" },                        /* NOT OPERATTON                    */
    { "reti",    (RETIOP),  "N" },                        /* RETURN FROM INTERRUPT ROUTINE    */

    { "", 0x0, "" }		/* Dummy entry, not included in NUM_OPCODES.
				   This lets code examine entry i + 1 without
				   checking if we've run off the end of the table.  */

  };

#define BROWNIE32_NUM_OPCODES \
	(((sizeof brownie32_opcodes) / (sizeof brownie32_opcodes[0])) - 1);
const int num_brownie32_opcodes = BROWNIE32_NUM_OPCODES;

/* const removed from the following to allow for dynamic extensions to the
 * built-in instruction set. */
int bfd_brownie32_num_opcodes = BROWNIE32_NUM_OPCODES;
#undef BROWNIE32_NUM_OPCODES
