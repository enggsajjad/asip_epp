/* Common target dependent code for GDB on BROWNIE32 systems running NetBSD.

   Copyright 2002, 2004 Free Software Foundation, Inc.

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

#ifndef BROWNIE32NBSD_TDEP_H
#define BROWNIE32NBSD_TDEP_H

void brownie32nbsd_supply_reg (char *, int);
void brownie32nbsd_fill_reg (char *, int);

void brownie32nbsd_supply_fpreg (char *, int);
void brownie32nbsd_fill_fpreg (char *, int);

#define SIZEOF_STRUCT_REG	(38 * brownie32_isa_regsize (current_gdbarch))
#define SIZEOF_STRUCT_FPREG	(33 * brownie32_isa_regsize (current_gdbarch))

#endif /* BROWNIE32NBSD_TDEP_H */
