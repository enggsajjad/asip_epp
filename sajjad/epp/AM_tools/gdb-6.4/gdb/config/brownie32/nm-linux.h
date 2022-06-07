/* Native-dependent definitions for GNU/Linux on BROWNIE32.

   Copyright 1996, 2001, 2002, 2003 Free Software Foundation, Inc.

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

#ifndef NM_BROWNIE32LINUX_H
#define NM_BROWNIE32LINUX_H

#include "config/nm-linux.h"

/* Return sizeof user struct to callers in less machine dependent
   routines.  Hard coded for cross-compilation friendliness. */

#define KERNEL_U_SIZE 504

/* ptrace register ``addresses'' are absolute.  */

#define U_REGS_OFFSET 0

/* ptrace transfers longs, and expects addresses as longs.  */

#define PTRACE_ARG3_TYPE long
#define PTRACE_XFER_TYPE long

#define REGISTER_U_ADDR(addr, blockend, regno) \
  (addr) = brownie32_register_addr ((regno),(blockend))

int brownie32_linux_cannot_fetch_register (int regno);
int brownie32_linux_cannot_store_register (int regno);
#define CANNOT_FETCH_REGISTER(regno) brownie32_linux_cannot_fetch_register (regno)
#define CANNOT_STORE_REGISTER(regno) brownie32_linux_cannot_store_register (regno)

#endif /* NM_brownie32LINUX_H */
