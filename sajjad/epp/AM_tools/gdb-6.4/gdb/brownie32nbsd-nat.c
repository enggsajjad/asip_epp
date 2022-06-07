/* Native-dependent code for BROWNIE32 systems running NetBSD.

   Copyright 2000, 2001, 2002, 2004 Free Software Foundation, Inc.

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
#include "inferior.h"
#include "regcache.h"
#include "target.h"

#include <sys/types.h>
#include <sys/ptrace.h>
#include <machine/reg.h>

#include "brownie32-tdep.h"
#include "brownie32nbsd-tdep.h"
#include "inf-ptrace.h"

/* Determine if PT_GETREGS fetches this register.  */
static int
getregs_supplies (int regno)
{
  return ((regno) >= BROWNIE32_ZERO_REGNUM && (regno) <= PC_REGNUM);
}

static void
brownie32nbsd_fetch_inferior_registers (int regno)
{
  if (regno == -1 || getregs_supplies (regno))
    {
      struct reg regs;

      if (ptrace (PT_GETREGS, PIDGET (inferior_ptid),
		  (PTRACE_TYPE_ARG3) &regs, 0) == -1)
	perror_with_name (_("Couldn't get registers"));
      
      brownie32nbsd_supply_reg ((char *) &regs, regno);
      if (regno != -1)
	return;
    }

  if (regno == -1 || regno >= FP0_REGNUM)
    {
      struct fpreg fpregs;

      if (ptrace (PT_GETFPREGS, PIDGET (inferior_ptid),
		  (PTRACE_TYPE_ARG3) &fpregs, 0) == -1)
	perror_with_name (_("Couldn't get floating point status"));

      brownie32nbsd_supply_fpreg ((char *) &fpregs, regno);
    }
}

static void
brownie32nbsd_store_inferior_registers (int regno)
{
  if (regno == -1 || getregs_supplies (regno))
    {
      struct reg regs;

      if (ptrace (PT_GETREGS, PIDGET (inferior_ptid),
		  (PTRACE_TYPE_ARG3) &regs, 0) == -1)
	perror_with_name (_("Couldn't get registers"));

      brownie32nbsd_fill_reg ((char *) &regs, regno);

      if (ptrace (PT_SETREGS, PIDGET (inferior_ptid), 
		  (PTRACE_TYPE_ARG3) &regs, 0) == -1)
	perror_with_name (_("Couldn't write registers"));

      if (regno != -1)
	return;
    }

  if (regno == -1 || regno >= FP0_REGNUM)
    {
      struct fpreg fpregs; 

      if (ptrace (PT_GETFPREGS, PIDGET (inferior_ptid),
		  (PTRACE_TYPE_ARG3) &fpregs, 0) == -1)
	perror_with_name (_("Couldn't get floating point status"));

      brownie32nbsd_fill_fpreg ((char *) &fpregs, regno);

      if (ptrace (PT_SETFPREGS, PIDGET (inferior_ptid),
		  (PTRACE_TYPE_ARG3) &fpregs, 0) == -1)
	perror_with_name (_("Couldn't write floating point status"));
    }
}


/* Provide a prototype to silence -Wmissing-prototypes.  */
void _initialize_brownie32nbsd_nat (void);

void
_initialize_brownie32nbsd_nat (void)
{
  struct target_ops *t;

  t = inf_ptrace_target ();
  t->to_fetch_registers = brownie32nbsd_fetch_inferior_registers;
  t->to_store_registers = brownie32nbsd_store_inferior_registers;
  add_target (t);
}
