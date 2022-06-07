/* bfd back-end for brownie32 support
   Copyright 1990, 1991, 1993, 1994, 1995, 1996, 1997, 1998, 2000, 2001,
   2002, 2003, 2004 Free Software Foundation, Inc.
   Written by Steve Chamberlain of Cygnus Support.

   Copyright (C) 2005,2006  Upwind technology, Inc.

This file is part of BFD, the Binary File Descriptor library.

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
Foundation, Inc., 51 Franklin Street - Fifth Floor, Boston, MA 02110-1301, USA.  */

#include "bfd.h"
#include "sysdep.h"
#include "libbfd.h"

static const bfd_arch_info_type *brownie32_compatible
  (const bfd_arch_info_type *, const bfd_arch_info_type *);

/* The default routine tests bits_per_word, which is wrong on brownie32 as
   brownie32 word size doesn't correlate with reloc size.  */

static const bfd_arch_info_type *
brownie32_compatible (const bfd_arch_info_type *a, const bfd_arch_info_type *b)
{
  if (a->arch != b->arch)
    return NULL;

  /* Machine compatibility is checked in
     _bfd_brownie32_elf_merge_private_bfd_data.  */

  return a;
}

#if 0  // C.Katano
#define N(BITS_WORD, BITS_ADDR, NUMBER, PRINT, DEFAULT, NEXT)		\
  {							\
    BITS_WORD, /*  bits in a word */			\
    BITS_ADDR, /* bits in an address */			\
    8,	/* 8 bits in a byte */				\
    bfd_arch_brownie32,					\
    NUMBER,						\
    "brownie32",						\
    PRINT,						\
    3,							\
    DEFAULT,						\
    brownie32_compatible,					\
    bfd_default_scan,					\
    NEXT,						\
  }
#else
#define N(BITS_WORD, BITS_ADDR, NUMBER, PRINT, DEFAULT, NEXT)		\
  {							\
    BITS_WORD, /*  bits in a word */			\
    BITS_ADDR, /* bits in an address */			\
    8,	/* 8 bits in a byte */				\
    bfd_arch_brownie32,					\
    NUMBER,						\
    "brownie32",						\
    PRINT,						\
    4,							\
    DEFAULT,						\
    brownie32_compatible,					\
    bfd_default_scan,					\
    NEXT,						\
  }
#endif
enum
{
  I_brownie32_std,
};

#if 0  // C.Katano
#define NN(index) (&arch_info_struct[(index) + 1])

static const bfd_arch_info_type arch_info_struct[] =
{
  N (32, 32, bfd_mach_brownie32_std, "brownie32:STD ",      FALSE, NN(I_brownie32_std))
};
#endif
/* The default architecture is brownie32:3000, but with a machine number of
   zero.  This lets the linker distinguish between a default setting
   of brownie32, and an explicit setting of brownie32:3000.  */

const bfd_arch_info_type bfd_brownie32_arch =
N (32, 32, 0, "brownie32", TRUE, 0);
