/* Prototypes for brownie32.c functions used in the md file & elsewhere.
   Copyright (C) 2008 Free Software Foundation, Inc.
   Contributed by SRA.

This file is part of GCC.

GCC is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 3, or (at your option)
any later version.

GCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with GCC; see the file COPYING3.  If not see
<http://www.gnu.org/licenses/>.  */


extern void brownie32_override_options (void);


extern rtx brownie32_legitimize_address (rtx, rtx, enum machine_mode);


extern rtx 
     brownie32_function_arg (CUMULATIVE_ARGS *, enum machine_mode, tree, int);



rtx mips_subword (rtx, int);

/*
***************************************************************************
*
* Comparison stuff.
* Modeled off of the RS6000 description.
*
*/

extern struct rtx_def *dlx_compare_op0, *dlx_compare_op1;
extern enum machine_mode dlx_compare_mode;

/* so local labels are (fairly) unique. */
/* Changed by Kenichi Nakamura */
extern char *fn_minus_ext(void);
