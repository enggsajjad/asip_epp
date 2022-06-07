/* Table of opcodes for the BROWNIE32 microprocess.
   Copyright 2002 Free Software Foundation, Inc.

   This file is part of GDB and GAS.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.

   Initially created by Kuang Hwa Lin, 2002.   */

/* Following 1 opecode is used for all RR-TYPE instructions */
#define  RRTYPOP     0x00000001

/* Following 9 opecode is used for RI-TYPE instructions */
#define  ADDIOP      0x00000020
#define  SUBIOP      0x00000021
#define  ANDIOP      0x00000022
#define  ORIOP       0x00000023
#define  XORIOP      0x00000024
#define  LLSIOP      0x00000025
#define  LRSIOP      0x00000026
#define  ARSIOP      0x00000027
#define  LSOIOP      0x00000028

/* Following 6 opecode is used for MA-TYPE instructions */
#define  LBOP        0x00000002
#define  LHOP        0x00000003
#define  LWOP        0x00000004
#define  SBOP        0x00000005
#define  SHOP        0x00000006
#define  SWOP        0x00000007

/* Following 2 opecode is used for BR-TYPE instructions */
#define  BRZOP       0x00000009
#define  BRNZOP      0x0000000A

/* Following 3 opecode is used for JP-TYPE instructions */
#define  JPOP        0x0000000B
#define  JPLOP       0x0000000C
#define  TRAPOP      0x0000000D

/* Following 2 opecode is used for JPR-TYPE instructions */
#define  JPROP       0x0000000E
#define  JPRLOP      0x0000000F

/* Following 2 opecode is used for SP-TYPE instructions */
#define  NOPOP       0x00000000
#define  RETIOP      0x00000040

/* Following opecode is used for RT-TYPE instructions */
#define  EXBWOP      0x00000080
#define  EXHWOP      0x00000880


/* "func" and "ftype" are a inidication that kind of RR-tpye instrucitons  */
#define  ADDFUNC     0x00000000
#define  SUBFUNC     0x00000040
#define  MULFUNC     0x00000080
#define  DIVFUNC     0x000000C0
#define  DIVUFUNC    0x00000140
#define  MODFUNC     0x00000100
#define  MODUFUNC    0x00000180
#define  ANDFUNC     0x00000000
#define  NANDFUNC    0x000000C0
#define  ORFUNC      0x00000040
#define  NORFUNC     0x00000100
#define  XORFUNC     0x00000080
#define  LLSFUNC     0x00000000
#define  LRSFUNC     0x00000040
#define  ARSFUNC     0x00000080
#define  ELTFUNC     0x00000000
#define  ELTUFUNC    0x00000040
#define  EEQFUNC     0x00000080
#define  ENEQFUNC    0x000000C0

#define  ADDFTYP     0x00000000
#define  SUBFTYP     0x00000000
#define  MULFTYP     0x00000000
#define  DIVFTYP     0x00000000
#define  DIVUFTYP    0x00000000
#define  MODFTYP     0x00000000
#define  MODUFTYP    0x00000000
#define  ANDFTYP     0x00004000
#define  NANDFTYP    0x00004000
#define  ORFTYP      0x00004000
#define  NORFTYP     0x00004000
#define  XORFTYP     0x00004000
#define  LLSFTYP     0x00008000
#define  LRSFTYP     0x00008000
#define  ARSFTYP     0x00008000
#define  ELTFTYP     0x0000C000
#define  ELTUFTYP    0x0000C000
#define  EEQFTYP     0x0000C000
#define  ENEQFTYP    0x0000C000

/* Use instruction extention library. */
#include "opcode/libccg-brownie32.h"

struct brownie32_opcode
{
  /* Name of the instruction.  */
  char *name;

  /* Opcode word.  */
  unsigned long opcode;

  /* A string of characters which describe the operands.
     Valid characters are:
     ,        Itself.  The character appears in the assembly code.
     a        rs1      The register number is in bits 27-31 of the instruction. SOURCE
     b        rs1      The register number is in bits 11-15 of the instruction. SOURCE
     c        rs1      The register number is in bits  6-10 of the instruction. SOURCE
     p        rs1      The register number is in bits 22-26 of the instruction. SOURCE
     d        rs2      The register number is in bits 22-26 of the instruction. SOURCE
     e        rd       The register number is in bits 17-21 of the instruction. Destination
     f        rd       The register number is in bits  6-10 of the instruction. Destination
     q        rd       The register number is in bits 27-31 of the instruction. Destination
     i        An immediate operand is in bits 16-31 of the instruction. 0 extended
     I        An immediate operand is in bits 16-31 of the instruction. sign extended
     o	      An offset value is in bits 16-31 of the instruction.
     O	      An offset value is in bits  6-31 of the instruction.
     A        abusolute address
     N	      No opperands needed, for nops.    */

  char *args;

};

static const struct brownie32_opcode brownie32_opcodes[] =
  {

  /* Arithmetic and Logic RR-TYPE instructions.  */
    { "add",      (RRTYPOP|ADDFUNC|ADDFTYP),     "e,a,d" }, /* ADD  (Rm + Rn)                    */
    { "sub",      (RRTYPOP|SUBFUNC|SUBFTYP),     "e,a,d" }, /* SUB  (Rm - Rn)                    */
    { "mul",      (RRTYPOP|MULFUNC|MULFTYP),     "e,a,d" }, /* MULTIPLY  (Rm * Rn)               */
    { "div",      (RRTYPOP|DIVFUNC|DIVFTYP),     "e,a,d" }, /* DIVIDE    (Rm / Rn)               */
    { "divu",     (RRTYPOP|DIVUFUNC|DIVUFTYP),   "e,a,d" }, /* DIVU      (Rm / Rn)               */
    { "mod",      (RRTYPOP|MODFUNC|MODFTYP),     "e,a,d" }, /* MOD       (Rm % Rn)               */
    { "modu",     (RRTYPOP|MODUFUNC|MODUFTYP),   "e,a,d" }, /* MODU      (Rm % Rn)               */
    { "and",      (RRTYPOP|ANDFUNC|ANDFTYP),     "e,a,d" }, /* AND       (Rm & Rn)               */
    { "nand",     (RRTYPOP|NANDFUNC|NANDFTYP),   "e,a,d" }, /* NAND      (Rm & Rn)               */
    { "or",       (RRTYPOP|ORFUNC|ORFTYP),       "e,a,d" }, /* OR        (Rm | Rn)               */
    { "nor",      (RRTYPOP|NORFUNC|NORFTYP),     "e,a,d" }, /* NOR       (Rm | Rn)               */
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
    { "lb",     (LBOP),    "f,b,A" },                       /* LOAD 1BYTE DATA                   */
    { "lh",     (LHOP),    "f,b,A" },                       /* LOAD 2BYTE DATA                   */
    { "lw",     (LWOP),    "f,b,A" },                       /* LOAD 4BYTE DATA                   */
    { "sb",     (SBOP),    "b,f,A" },                       /* STORE 1BYTE DATA                  */
    { "sh",     (SHOP),    "b,f,A" },                       /* STORE 2BYTE DATA                  */
    { "sw",     (SWOP),    "b,f,A" },                       /* STORE 4BYTE DATA                  */
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
  /* Arithmetic and Logic RT-TYPE instructions.  */
    { "exbw",    (EXBWOP),  "q,p" },                      /* EXTEND BYTE TO WORD              */
    { "exhw",    (EXHWOP),  "q,p" },                      /* EXTEND HALF WORD TO WORD         */

    { "", 0x0, "" }		/* Dummy entry, not included in NUM_OPCODES.
				   This lets code examine entry i + 1 without
				   checking if we've run off the end of the table.  */

  };

const unsigned int num_brownie32_opcodes = (((sizeof brownie32_opcodes) / (sizeof brownie32_opcodes[0])) - 1);
