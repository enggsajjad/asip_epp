/* Native-dependent code for GNU/Linux on BROWNIE32 processors.

   Copyright 2001, 2002, 2003, 2004, 2005 Free Software Foundation, Inc.
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

#include "defs.h"
#include "brownie32-tdep.h"
#include "target.h"
#include "linux-nat.h"

/* Pseudo registers can not be read.  ptrace does not provide a way to
   read (or set) BROWNIE32_PS_REGNUM, and there's no point in reading or
   setting BROWNIE32_ZERO_REGNUM.  We also can not set BADVADDR, CAUSE, or
   FCRIR via ptrace().  */

int
brownie32_linux_cannot_fetch_register (int regno)
{
  if (regno > BROWNIE32_ZERO_REGNUM && regno < BROWNIE32_ZERO_REGNUM + 32)
    return 0;
  else if (regno >= brownie32_regnum (current_gdbarch)->fp0
	   && regno <= brownie32_regnum (current_gdbarch)->fp0 + 32)
    return 0;
  else if (regno == brownie32_regnum (current_gdbarch)->lo
	   || regno == brownie32_regnum (current_gdbarch)->hi
	   || regno == brownie32_regnum (current_gdbarch)->badvaddr
	   || regno == brownie32_regnum (current_gdbarch)->cause
	   || regno == brownie32_regnum (current_gdbarch)->pc
	   || regno == brownie32_regnum (current_gdbarch)->fp_control_status
	   || regno == brownie32_regnum (current_gdbarch)->fp_implementation_revision)
    return 0;
  else
    return 1;
}

int
brownie32_linux_cannot_store_register (int regno)
{
  if (regno > BROWNIE32_ZERO_REGNUM && regno < BROWNIE32_ZERO_REGNUM + 32)
    return 0;
  else if (regno >= FP0_REGNUM && regno <= FP0_REGNUM + 32)
    return 0;
  else if (regno == brownie32_regnum (current_gdbarch)->lo
	   || regno == brownie32_regnum (current_gdbarch)->hi
	   || regno == brownie32_regnum (current_gdbarch)->pc
	   || regno == brownie32_regnum (current_gdbarch)->fp_control_status)
    return 0;
  else
    return 1;
}

void _initialize_brownie32_linux_nat (void);

void
_initialize_brownie32_linux_nat (void)
{
  add_target (linux_target ());
}
