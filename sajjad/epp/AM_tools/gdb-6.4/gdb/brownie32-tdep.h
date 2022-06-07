/* Target-dependent header for the BROWNIE32 architecture, for GDB, the GNU Debugger.

   Copyright 2002, 2003 Free Software Foundation, Inc.

   Copyright (C) 2005,2006  Upwind technology, Inc.

   This file is part of GDB.

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
   Foundation, Inc., 59 Temple Place - Suite 330,
   Boston, MA 02111-1307, USA.  */

#ifndef BROWNIE32_TDEP_H
#define BROWNIE32_TDEP_H

struct gdbarch;

/* All the possible BROWNIE32 ABIs. */
enum brownie32_abi
  {
    BROWNIE32_ABI_UNKNOWN = 0,
    BROWNIE32_ABI_N32,
    BROWNIE32_ABI_O32,
    BROWNIE32_ABI_N64,
    BROWNIE32_ABI_O64,
    BROWNIE32_ABI_EABI32,
    BROWNIE32_ABI_EABI64,
    BROWNIE32_ABI_LAST
  };

/* Return the BROWNIE32 ABI associated with GDBARCH.  */
enum brownie32_abi brownie32_abi (struct gdbarch *gdbarch);

/* For wince :-(.  */
extern CORE_ADDR brownie32_next_pc (CORE_ADDR pc);

/* Return the BROWNIE32 ISA's register size.  Just a short cut to the BFD
   architecture's word size.  */
extern int brownie32_isa_regsize (struct gdbarch *gdbarch);

/* Return the current index for various BROWNIE32 registers.  */
struct brownie32_regnum
{
  int pc;
};
extern const struct brownie32_regnum *brownie32_regnum (struct gdbarch *gdbarch);

/* Register numbers of various important registers.  Note that some of
   these values are "real" register numbers, and correspond to the
   general registers of the machine, and some are "phony" register
   numbers which are too large to be actual register numbers as far as
   the user is concerned but do serve to get the desired values when
   passed to read_register.  */

enum
{
  BROWNIE32_ZERO_REGNUM = 0,		/* Read-only register, always 0.  */
  BROWNIE32_SR_REGNUM = 1,		/* Status register.  */
  BROWNIE32_IRR_REGNUM = 2,		/* Interrupt register.  */
  BROWNIE32_LNK_REGNUM = 3,		/* Link register.  */
  //BROWNIE32_RET_REGNUM = 4,		/* Return value register.  */
  //BROWNIE32_FRM_REGNUM = 5,		/* Frame pointer register.  */
  //BROWNIE32_SP_REGNUM = 6,		/* Stack pointer register.  */
  //BROWNIE32_FIRST_ARG_REGNUM = 7,
  //BROWNIE32_LAST_ARG_REGNUM = 14,
  BROWNIE32_FRM_REGNUM = 4,		/* Frame pointer register.  */
  BROWNIE32_SP_REGNUM = 5,		/* Stack pointer register.  */
  BROWNIE32_RET_REGNUM = 6,		/* Return value register.  */
  BROWNIE32_FIRST_ARG_REGNUM = 8,
  BROWNIE32_LAST_ARG_REGNUM = 15,
  BROWNIE32_EMBED_PC_REGNUM = 32,
  BROWNIE32_UNUSED_REGNUM =  0,	/* Never used, FIXME */
  BROWNIE32_FIRST_EMBED_REGNUM =  0,	/* First CP0 register for embedded use.  */
  BROWNIE32_PRID_REGNUM =  0,	/* Processor ID.  */
  BROWNIE32_LAST_EMBED_REGNUM = 33	/* Last one.  */
};

/* Defined in brownie32-tdep.c and used in remote-brownie32.c */
extern void deprecated_brownie32_set_processor_regs_hack (void);

/* Instruction sizes and other useful constants.  */
enum
{
  BROWNIE32_INSN16_SIZE = 2,
  BROWNIE32_INSN32_SIZE = 4,
  /* The number of floating-point or integer registers.  */
  BROWNIE32_NUMREGS = 32
};

/* Single step based on where the current instruction will take us.  */
extern void brownie32_software_single_step (enum target_signal, int);

/* Tell if the program counter value in MEMADDR is in a BROWNIE3216
   function.  */
extern int brownie32_pc_is_brownie3216 (bfd_vma memaddr);

/* Return the currently configured (or set) saved register size. */
extern unsigned int brownie32_abi_regsize (struct gdbarch *gdbarch);

#endif /* BROWNIE32_TDEP_H */
