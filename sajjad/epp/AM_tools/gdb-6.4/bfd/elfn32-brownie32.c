/* BROWNIE32-specific support for 32-bit ELF
   Copyright 1993, 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002,
   2003, 2004, 2005 Free Software Foundation, Inc.

   Copyright (C) 2005,2006  Upwind technology, Inc.

   Most of the information added by Ian Lance Taylor, Cygnus Support,
   <ian@cygnus.com>.
   N32/64 ABI support added by Mark Mitchell, CodeSourcery, LLC.
   <mark@codesourcery.com>
   Traditional BROWNIE32 targets support added by Koundinya.K, Dansk Data
   Elektronik & Operations Research Group. <kk@ddeorg.soft.net>

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

/* This file handles BROWNIE32 ELF targets.  SGI Irix 5 uses a slightly
   different BROWNIE32 ELF from other targets.  This matters when linking.
   This file supports both, switching at runtime.  */

#include "bfd.h"
#include "sysdep.h"
#include "libbfd.h"
#include "bfdlink.h"
#include "genlink.h"
#include "elf-bfd.h"
#include "elfxx-brownie32.h"
#include "elf/brownie32.h"

/* Get the ECOFF swapping routines.  */
#include "coff/sym.h"
#include "coff/symconst.h"
#include "coff/internal.h"
#include "coff/ecoff.h"
#include "coff/brownie32.h"
#define ECOFF_SIGNED_32
#include "ecoffswap.h"

static bfd_boolean brownie32_elf_assign_gp
  (bfd *, bfd_vma *);
static bfd_reloc_status_type brownie32_elf_final_gp
  (bfd *, asymbol *, bfd_boolean, char **, bfd_vma *);
static bfd_reloc_status_type brownie32_elf_gprel16_reloc
  (bfd *, arelent *, asymbol *, void *, asection *, bfd *, char **);
static bfd_reloc_status_type brownie32_elf_literal_reloc
  (bfd *, arelent *, asymbol *, void *, asection *, bfd *, char **);
static bfd_reloc_status_type brownie32_elf_gprel32_reloc
  (bfd *, arelent *, asymbol *, void *, asection *, bfd *, char **);
static bfd_reloc_status_type gprel32_with_gp
  (bfd *, asymbol *, arelent *, asection *, bfd_boolean, void *, bfd_vma);
static bfd_reloc_status_type brownie32_elf_shift6_reloc
  (bfd *, arelent *, asymbol *, void *, asection *, bfd *, char **);
static reloc_howto_type *bfd_elf32_bfd_reloc_type_lookup
  (bfd *, bfd_reloc_code_real_type);
static reloc_howto_type *brownie32_elf_n32_rtype_to_howto
  (unsigned int, bfd_boolean);
static void brownie32_info_to_howto_rel
  (bfd *, arelent *, Elf_Internal_Rela *);
static void brownie32_info_to_howto_rela
  (bfd *, arelent *, Elf_Internal_Rela *);
static bfd_boolean brownie32_elf_sym_is_global
  (bfd *, asymbol *);
static bfd_boolean brownie32_elf_n32_object_p
  (bfd *);
static bfd_boolean elf32_brownie32_grok_prstatus
  (bfd *, Elf_Internal_Note *);
static bfd_boolean elf32_brownie32_grok_psinfo
  (bfd *, Elf_Internal_Note *);
static irix_compat_t elf_n32_brownie32_irix_compat
  (bfd *);

extern const bfd_target bfd_elf32_nbigbrownie32_vec;
extern const bfd_target bfd_elf32_nlittlebrownie32_vec;

/* Nonzero if ABFD is using the N32 ABI.  */
#define ABI_N32_P(abfd) \
  ((elf_elfheader (abfd)->e_flags & EF_BROWNIE32_ABI2) != 0)

/* Whether we are trying to be compatible with IRIX at all.  */
#define SGI_COMPAT(abfd) \
  (elf_n32_brownie32_irix_compat (abfd) != ict_none)

/* The number of local .got entries we reserve.  */
#define BROWNIE32_RESERVED_GOTNO (2)

/* In case we're on a 32-bit machine, construct a 64-bit "-1" value
   from smaller values.  Start with zero, widen, *then* decrement.  */
#define MINUS_ONE	(((bfd_vma)0) - 1)

/* The relocation table used for SHT_REL sections.  */

static reloc_howto_type elf_brownie32_howto_table_rel[] =
{
  /* No relocation.  */
  HOWTO (R_BROWNIE32_NONE,		/* type */
	 0,			/* rightshift */
	 0,			/* size (0 = byte, 1 = short, 2 = long) */
	 0,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_NONE",		/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0,			/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* 16 bit relocation.  */
  HOWTO (R_BROWNIE32_16,		/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_16",		/* name */
	 TRUE,			/* partial_inplace */
	 0x0000ffff,		/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* 32 bit relocation.  */
  HOWTO (R_BROWNIE32_32,		/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_32",		/* name */
	 TRUE,			/* partial_inplace */
	 0xffffffff,		/* src_mask */
	 0xffffffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* 32 bit symbol relative relocation.  */
  HOWTO (R_BROWNIE32_REL32,		/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_REL32",	/* name */
	 TRUE,			/* partial_inplace */
	 0xffffffff,		/* src_mask */
	 0xffffffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* 26 bit jump address.  */
  HOWTO (R_BROWNIE32_26,		/* type */
	 2,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 26,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 			/* This needs complex overflow
				   detection, because the upper four
				   bits must match the PC + 4.  */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_26",		/* name */
	 TRUE,			/* partial_inplace */
	 0x03ffffff,		/* src_mask */
	 0x03ffffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* R_BROWNIE32_HI16 and R_BROWNIE32_LO16 are unsupported for NewABI REL.
     However, the native IRIX6 tools use them, so we try our best. */

  /* High 16 bits of symbol value.  */
  HOWTO (R_BROWNIE32_HI16,		/* type */
	 16,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_brownie32_elf_hi16_reloc, /* special_function */
	 "R_BROWNIE32_HI16",		/* name */
	 TRUE,			/* partial_inplace */
	 0x0000ffff,		/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* Low 16 bits of symbol value.  */
  HOWTO (R_BROWNIE32_LO16,		/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_brownie32_elf_lo16_reloc, /* special_function */
	 "R_BROWNIE32_LO16",		/* name */
	 TRUE,			/* partial_inplace */
	 0x0000ffff,		/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* GP relative reference.  */
  HOWTO (R_BROWNIE32_GPREL16,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 brownie32_elf_gprel16_reloc, /* special_function */
	 "R_BROWNIE32_GPREL16",	/* name */
	 TRUE,			/* partial_inplace */
	 0x0000ffff,		/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* Reference to literal section.  */
  HOWTO (R_BROWNIE32_LITERAL,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 brownie32_elf_literal_reloc, /* special_function */
	 "R_BROWNIE32_LITERAL",	/* name */
	 TRUE,			/* partial_inplace */
	 0x0000ffff,		/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* Reference to global offset table.  */
  HOWTO (R_BROWNIE32_GOT16,		/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_brownie32_elf_got16_reloc, /* special_function */
	 "R_BROWNIE32_GOT16",	/* name */
	 TRUE,			/* partial_inplace */
	 0x0000ffff,		/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* 16 bit PC relative reference.  */
  HOWTO (R_BROWNIE32_PC16,		/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 TRUE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_PC16",		/* name */
	 TRUE,			/* partial_inplace */
	 0x0000ffff,		/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 TRUE),			/* pcrel_offset */

  /* 16 bit call through global offset table.  */
  HOWTO (R_BROWNIE32_CALL16,		/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_CALL16",	/* name */
	 TRUE,			/* partial_inplace */
	 0x0000ffff,		/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* 32 bit GP relative reference.  */
  HOWTO (R_BROWNIE32_GPREL32,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 brownie32_elf_gprel32_reloc, /* special_function */
	 "R_BROWNIE32_GPREL32",	/* name */
	 TRUE,			/* partial_inplace */
	 0xffffffff,		/* src_mask */
	 0xffffffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* The remaining relocs are defined on Irix 5, although they are
     not defined by the ABI.  */
  EMPTY_HOWTO (13),
  EMPTY_HOWTO (14),
  EMPTY_HOWTO (15),

  /* A 5 bit shift field.  */
  HOWTO (R_BROWNIE32_SHIFT5,		/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 5,			/* bitsize */
	 FALSE,			/* pc_relative */
	 6,			/* bitpos */
	 complain_overflow_bitfield, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_SHIFT5",	/* name */
	 TRUE,			/* partial_inplace */
	 0x000007c0,		/* src_mask */
	 0x000007c0,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* A 6 bit shift field.  */
  HOWTO (R_BROWNIE32_SHIFT6,		/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 6,			/* bitsize */
	 FALSE,			/* pc_relative */
	 6,			/* bitpos */
	 complain_overflow_bitfield, /* complain_on_overflow */
	 brownie32_elf_shift6_reloc,	/* special_function */
	 "R_BROWNIE32_SHIFT6",	/* name */
	 TRUE,			/* partial_inplace */
	 0x000007c4,		/* src_mask */
	 0x000007c4,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* A 64 bit relocation.  */
  HOWTO (R_BROWNIE32_64,		/* type */
	 0,			/* rightshift */
	 4,			/* size (0 = byte, 1 = short, 2 = long) */
	 64,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_64",		/* name */
	 TRUE,			/* partial_inplace */
	 MINUS_ONE,		/* src_mask */
	 MINUS_ONE,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* Displacement in the global offset table.  */
  HOWTO (R_BROWNIE32_GOT_DISP,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_GOT_DISP",	/* name */
	 TRUE,			/* partial_inplace */
	 0x0000ffff,		/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* Displacement to page pointer in the global offset table.  */
  HOWTO (R_BROWNIE32_GOT_PAGE,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_GOT_PAGE",	/* name */
	 TRUE,			/* partial_inplace */
	 0x0000ffff,		/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* Offset from page pointer in the global offset table.  */
  HOWTO (R_BROWNIE32_GOT_OFST,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_GOT_OFST",	/* name */
	 TRUE,			/* partial_inplace */
	 0x0000ffff,		/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* High 16 bits of displacement in global offset table.  */
  HOWTO (R_BROWNIE32_GOT_HI16,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_GOT_HI16",	/* name */
	 TRUE,			/* partial_inplace */
	 0x0000ffff,		/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* Low 16 bits of displacement in global offset table.  */
  HOWTO (R_BROWNIE32_GOT_LO16,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_GOT_LO16",	/* name */
	 TRUE,			/* partial_inplace */
	 0x0000ffff,		/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* 64 bit subtraction.  */
  HOWTO (R_BROWNIE32_SUB,		/* type */
	 0,			/* rightshift */
	 4,			/* size (0 = byte, 1 = short, 2 = long) */
	 64,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_SUB",		/* name */
	 TRUE,			/* partial_inplace */
	 MINUS_ONE,		/* src_mask */
	 MINUS_ONE,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* Insert the addend as an instruction.  */
  /* FIXME: Not handled correctly.  */
  HOWTO (R_BROWNIE32_INSERT_A,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_INSERT_A",	/* name */
	 TRUE,			/* partial_inplace */
	 0xffffffff,		/* src_mask */
	 0xffffffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* Insert the addend as an instruction, and change all relocations
     to refer to the old instruction at the address.  */
  /* FIXME: Not handled correctly.  */
  HOWTO (R_BROWNIE32_INSERT_B,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_INSERT_B",	/* name */
	 TRUE,			/* partial_inplace */
	 0xffffffff,		/* src_mask */
	 0xffffffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* Delete a 32 bit instruction.  */
  /* FIXME: Not handled correctly.  */
  HOWTO (R_BROWNIE32_DELETE,		/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_DELETE",	/* name */
	 TRUE,			/* partial_inplace */
	 0xffffffff,		/* src_mask */
	 0xffffffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* The BROWNIE32 ELF64 ABI Draft wants us to support these for REL relocations.
     We don't, because
       a) It means building the addend from a R_BROWNIE32_HIGHEST/R_BROWNIE32_HIGHER/
	  R_BROWNIE32_HI16/R_BROWNIE32_LO16 sequence with varying ordering, using
	  fallable heuristics.
       b) No other NewABI toolchain actually emits such relocations.  */
  EMPTY_HOWTO (R_BROWNIE32_HIGHER),
  EMPTY_HOWTO (R_BROWNIE32_HIGHEST),

  /* High 16 bits of displacement in global offset table.  */
  HOWTO (R_BROWNIE32_CALL_HI16,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_CALL_HI16",	/* name */
	 TRUE,			/* partial_inplace */
	 0x0000ffff,		/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* Low 16 bits of displacement in global offset table.  */
  HOWTO (R_BROWNIE32_CALL_LO16,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_CALL_LO16",	/* name */
	 TRUE,			/* partial_inplace */
	 0x0000ffff,		/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* Section displacement.  */
  HOWTO (R_BROWNIE32_SCN_DISP,       /* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_SCN_DISP",     /* name */
	 TRUE,			/* partial_inplace */
	 0xffffffff,		/* src_mask */
	 0xffffffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  HOWTO (R_BROWNIE32_REL16,		/* type */
	 0,			/* rightshift */
	 1,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_REL16",	/* name */
	 TRUE,			/* partial_inplace */
	 0xffff,		/* src_mask */
	 0xffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* These two are obsolete.  */
  EMPTY_HOWTO (R_BROWNIE32_ADD_IMMEDIATE),
  EMPTY_HOWTO (R_BROWNIE32_PJUMP),

  /* Similiar to R_BROWNIE32_REL32, but used for relocations in a GOT section.
     It must be used for multigot GOT's (and only there).  */
  HOWTO (R_BROWNIE32_RELGOT,		/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_RELGOT",	/* name */
	 TRUE,			/* partial_inplace */
	 0xffffffff,		/* src_mask */
	 0xffffffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* Protected jump conversion.  This is an optimization hint.  No
     relocation is required for correctness.  */
  HOWTO (R_BROWNIE32_JALR,	        /* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_JALR",	        /* name */
	 FALSE,			/* partial_inplace */
	 0x00000000,		/* src_mask */
	 0x00000000,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* TLS GD/LD dynamic relocations.  */
  HOWTO (R_BROWNIE32_TLS_DTPMOD32,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_TLS_DTPMOD32",	/* name */
	 TRUE,			/* partial_inplace */
	 0xffffffff,		/* src_mask */
	 0xffffffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  HOWTO (R_BROWNIE32_TLS_DTPREL32,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_TLS_DTPREL32",	/* name */
	 TRUE,			/* partial_inplace */
	 0xffffffff,		/* src_mask */
	 0xffffffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  EMPTY_HOWTO (R_BROWNIE32_TLS_DTPMOD64),
  EMPTY_HOWTO (R_BROWNIE32_TLS_DTPREL64),

  /* TLS general dynamic variable reference.  */
  HOWTO (R_BROWNIE32_TLS_GD,		/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_TLS_GD",	/* name */
	 TRUE,			/* partial_inplace */
	 0x0000ffff,		/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* TLS local dynamic variable reference.  */
  HOWTO (R_BROWNIE32_TLS_LDM,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_TLS_LDM",	/* name */
	 TRUE,			/* partial_inplace */
	 0x0000ffff,		/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* TLS local dynamic offset.  */
  HOWTO (R_BROWNIE32_TLS_DTPREL_HI16,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_TLS_DTPREL_HI16",	/* name */
	 TRUE,			/* partial_inplace */
	 0x0000ffff,		/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* TLS local dynamic offset.  */
  HOWTO (R_BROWNIE32_TLS_DTPREL_LO16,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_TLS_DTPREL_LO16",	/* name */
	 TRUE,			/* partial_inplace */
	 0x0000ffff,		/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* TLS thread pointer offset.  */
  HOWTO (R_BROWNIE32_TLS_GOTTPREL,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_TLS_GOTTPREL",	/* name */
	 TRUE,			/* partial_inplace */
	 0x0000ffff,		/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* TLS IE dynamic relocations.  */
  HOWTO (R_BROWNIE32_TLS_TPREL32,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_TLS_TPREL32",	/* name */
	 TRUE,			/* partial_inplace */
	 0xffffffff,		/* src_mask */
	 0xffffffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  EMPTY_HOWTO (R_BROWNIE32_TLS_TPREL64),

  /* TLS thread pointer offset.  */
  HOWTO (R_BROWNIE32_TLS_TPREL_HI16,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_TLS_TPREL_HI16", /* name */
	 TRUE,			/* partial_inplace */
	 0x0000ffff,		/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* TLS thread pointer offset.  */
  HOWTO (R_BROWNIE32_TLS_TPREL_LO16,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_TLS_TPREL_LO16", /* name */
	 TRUE,			/* partial_inplace */
	 0x0000ffff,		/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */
};

/* The relocation table used for SHT_RELA sections.  */

static reloc_howto_type elf_brownie32_howto_table_rela[] =
{
  /* No relocation.  */
  HOWTO (R_BROWNIE32_NONE,		/* type */
	 0,			/* rightshift */
	 0,			/* size (0 = byte, 1 = short, 2 = long) */
	 0,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_NONE",		/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0,			/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* 16 bit relocation.  */
  HOWTO (R_BROWNIE32_16,		/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_16",		/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x0000,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* 32 bit relocation.  */
  HOWTO (R_BROWNIE32_32,		/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_32",		/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0xffffffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* 32 bit symbol relative relocation.  */
  HOWTO (R_BROWNIE32_REL32,		/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_REL32",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0xffffffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* 26 bit jump address.  */
  HOWTO (R_BROWNIE32_26,		/* type */
	 2,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 26,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
				/* This needs complex overflow
				   detection, because the upper 36
				   bits must match the PC + 4.  */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_26",		/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x03ffffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* High 16 bits of symbol value.  */
  HOWTO (R_BROWNIE32_HI16,		/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_HI16",		/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* Low 16 bits of symbol value.  */
  HOWTO (R_BROWNIE32_LO16,		/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_LO16",		/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* GP relative reference.  */
  HOWTO (R_BROWNIE32_GPREL16,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 brownie32_elf_gprel16_reloc, /* special_function */
	 "R_BROWNIE32_GPREL16",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* Reference to literal section.  */
  HOWTO (R_BROWNIE32_LITERAL,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 brownie32_elf_literal_reloc, /* special_function */
	 "R_BROWNIE32_LITERAL",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* Reference to global offset table.  */
  HOWTO (R_BROWNIE32_GOT16,		/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_GOT16",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* 16 bit PC relative reference.  */
  HOWTO (R_BROWNIE32_PC16,		/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 TRUE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_PC16",		/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 TRUE),			/* pcrel_offset */

  /* 16 bit call through global offset table.  */
  HOWTO (R_BROWNIE32_CALL16,		/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_CALL16",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* 32 bit GP relative reference.  */
  HOWTO (R_BROWNIE32_GPREL32,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 brownie32_elf_gprel32_reloc, /* special_function */
	 "R_BROWNIE32_GPREL32",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0xffffffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  EMPTY_HOWTO (13),
  EMPTY_HOWTO (14),
  EMPTY_HOWTO (15),

  /* A 5 bit shift field.  */
  HOWTO (R_BROWNIE32_SHIFT5,		/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 5,			/* bitsize */
	 FALSE,			/* pc_relative */
	 6,			/* bitpos */
	 complain_overflow_bitfield, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_SHIFT5",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x000007c0,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* A 6 bit shift field.  */
  HOWTO (R_BROWNIE32_SHIFT6,		/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 6,			/* bitsize */
	 FALSE,			/* pc_relative */
	 6,			/* bitpos */
	 complain_overflow_bitfield, /* complain_on_overflow */
	 brownie32_elf_shift6_reloc,	/* special_function */
	 "R_BROWNIE32_SHIFT6",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x000007c4,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* 64 bit relocation.  */
  HOWTO (R_BROWNIE32_64,		/* type */
	 0,			/* rightshift */
	 4,			/* size (0 = byte, 1 = short, 2 = long) */
	 64,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_64",		/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 MINUS_ONE,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* Displacement in the global offset table.  */
  HOWTO (R_BROWNIE32_GOT_DISP,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_GOT_DISP",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* Displacement to page pointer in the global offset table.  */
  HOWTO (R_BROWNIE32_GOT_PAGE,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_GOT_PAGE",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* Offset from page pointer in the global offset table.  */
  HOWTO (R_BROWNIE32_GOT_OFST,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_GOT_OFST",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* High 16 bits of displacement in global offset table.  */
  HOWTO (R_BROWNIE32_GOT_HI16,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_GOT_HI16",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* Low 16 bits of displacement in global offset table.  */
  HOWTO (R_BROWNIE32_GOT_LO16,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_GOT_LO16",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* 64 bit subtraction.  */
  HOWTO (R_BROWNIE32_SUB,		/* type */
	 0,			/* rightshift */
	 4,			/* size (0 = byte, 1 = short, 2 = long) */
	 64,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_SUB",		/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 MINUS_ONE,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* Insert the addend as an instruction.  */
  /* FIXME: Not handled correctly.  */
  HOWTO (R_BROWNIE32_INSERT_A,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_INSERT_A",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0xffffffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* Insert the addend as an instruction, and change all relocations
     to refer to the old instruction at the address.  */
  /* FIXME: Not handled correctly.  */
  HOWTO (R_BROWNIE32_INSERT_B,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_INSERT_B",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0xffffffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* Delete a 32 bit instruction.  */
  /* FIXME: Not handled correctly.  */
  HOWTO (R_BROWNIE32_DELETE,		/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_DELETE",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0xffffffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* Get the higher value of a 64 bit addend.  */
  HOWTO (R_BROWNIE32_HIGHER,		/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_HIGHER",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* Get the highest value of a 64 bit addend.  */
  HOWTO (R_BROWNIE32_HIGHEST,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_HIGHEST",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* High 16 bits of displacement in global offset table.  */
  HOWTO (R_BROWNIE32_CALL_HI16,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_CALL_HI16",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* Low 16 bits of displacement in global offset table.  */
  HOWTO (R_BROWNIE32_CALL_LO16,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_CALL_LO16",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* Section displacement, used by an associated event location section.  */
  HOWTO (R_BROWNIE32_SCN_DISP,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_SCN_DISP",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0xffffffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* 16 bit relocation.  */
  HOWTO (R_BROWNIE32_REL16,		/* type */
	 0,			/* rightshift */
	 1,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_REL16",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0xffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* These two are obsolete.  */
  EMPTY_HOWTO (R_BROWNIE32_ADD_IMMEDIATE),
  EMPTY_HOWTO (R_BROWNIE32_PJUMP),

  /* Similiar to R_BROWNIE32_REL32, but used for relocations in a GOT section.
     It must be used for multigot GOT's (and only there).  */
  HOWTO (R_BROWNIE32_RELGOT,		/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_RELGOT",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0xffffffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* Protected jump conversion.  This is an optimization hint.  No
     relocation is required for correctness.  */
  HOWTO (R_BROWNIE32_JALR,	        /* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_JALR",	        /* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0,			/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* TLS GD/LD dynamic relocations.  */
  HOWTO (R_BROWNIE32_TLS_DTPMOD32,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_TLS_DTPMOD32",	/* name */
	 TRUE,			/* partial_inplace */
	 0xffffffff,		/* src_mask */
	 0xffffffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  HOWTO (R_BROWNIE32_TLS_DTPREL32,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_TLS_DTPREL32",	/* name */
	 TRUE,			/* partial_inplace */
	 0xffffffff,		/* src_mask */
	 0xffffffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  EMPTY_HOWTO (R_BROWNIE32_TLS_DTPMOD64),
  EMPTY_HOWTO (R_BROWNIE32_TLS_DTPREL64),

  /* TLS general dynamic variable reference.  */
  HOWTO (R_BROWNIE32_TLS_GD,		/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_TLS_GD",	/* name */
	 TRUE,			/* partial_inplace */
	 0x0000ffff,		/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* TLS local dynamic variable reference.  */
  HOWTO (R_BROWNIE32_TLS_LDM,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_TLS_LDM",	/* name */
	 TRUE,			/* partial_inplace */
	 0x0000ffff,		/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* TLS local dynamic offset.  */
  HOWTO (R_BROWNIE32_TLS_DTPREL_HI16,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_TLS_DTPREL_HI16",	/* name */
	 TRUE,			/* partial_inplace */
	 0x0000ffff,		/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* TLS local dynamic offset.  */
  HOWTO (R_BROWNIE32_TLS_DTPREL_LO16,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_TLS_DTPREL_LO16",	/* name */
	 TRUE,			/* partial_inplace */
	 0x0000ffff,		/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* TLS thread pointer offset.  */
  HOWTO (R_BROWNIE32_TLS_GOTTPREL,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_TLS_GOTTPREL",	/* name */
	 TRUE,			/* partial_inplace */
	 0x0000ffff,		/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* TLS IE dynamic relocations.  */
  HOWTO (R_BROWNIE32_TLS_TPREL32,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 32,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_TLS_TPREL32",	/* name */
	 TRUE,			/* partial_inplace */
	 0xffffffff,		/* src_mask */
	 0xffffffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  EMPTY_HOWTO (R_BROWNIE32_TLS_TPREL64),

  /* TLS thread pointer offset.  */
  HOWTO (R_BROWNIE32_TLS_TPREL_HI16,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_TLS_TPREL_HI16", /* name */
	 TRUE,			/* partial_inplace */
	 0x0000ffff,		/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */

  /* TLS thread pointer offset.  */
  HOWTO (R_BROWNIE32_TLS_TPREL_LO16,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_TLS_TPREL_LO16", /* name */
	 TRUE,			/* partial_inplace */
	 0x0000ffff,		/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 FALSE),		/* pcrel_offset */
};

/* GNU extension to record C++ vtable hierarchy */
static reloc_howto_type elf_brownie32_gnu_vtinherit_howto =
  HOWTO (R_BROWNIE32_GNU_VTINHERIT,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 0,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 NULL,			/* special_function */
	 "R_BROWNIE32_GNU_VTINHERIT", /* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0,			/* dst_mask */
	 FALSE);		/* pcrel_offset */

/* GNU extension to record C++ vtable member usage */
static reloc_howto_type elf_brownie32_gnu_vtentry_howto =
  HOWTO (R_BROWNIE32_GNU_VTENTRY,	/* type */
	 0,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 0,			/* bitsize */
	 FALSE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_dont, /* complain_on_overflow */
	 _bfd_elf_rel_vtable_reloc_fn, /* special_function */
	 "R_BROWNIE32_GNU_VTENTRY",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0,			/* dst_mask */
	 FALSE);		/* pcrel_offset */

/* 16 bit offset for pc-relative branches.  */
static reloc_howto_type elf_brownie32_gnu_rel16_s2 =
  HOWTO (R_BROWNIE32_GNU_REL16_S2,	/* type */
	 2,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 TRUE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_GNU_REL16_S2",	/* name */
	 TRUE,			/* partial_inplace */
	 0x0000ffff,		/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 TRUE);			/* pcrel_offset */

/* 16 bit offset for pc-relative branches.  */
static reloc_howto_type elf_brownie32_gnu_rela16_s2 =
  HOWTO (R_BROWNIE32_GNU_REL16_S2,	/* type */
	 2,			/* rightshift */
	 2,			/* size (0 = byte, 1 = short, 2 = long) */
	 16,			/* bitsize */
	 TRUE,			/* pc_relative */
	 0,			/* bitpos */
	 complain_overflow_signed, /* complain_on_overflow */
	 _bfd_brownie32_elf_generic_reloc, /* special_function */
	 "R_BROWNIE32_GNU_REL16_S2",	/* name */
	 FALSE,			/* partial_inplace */
	 0,			/* src_mask */
	 0x0000ffff,		/* dst_mask */
	 TRUE);			/* pcrel_offset */

/* Set the GP value for OUTPUT_BFD.  Returns FALSE if this is a
   dangerous relocation.  */

static bfd_boolean
brownie32_elf_assign_gp (bfd *output_bfd, bfd_vma *pgp)
{
  unsigned int count;
  asymbol **sym;
  unsigned int i;

  /* If we've already figured out what GP will be, just return it.  */
  *pgp = _bfd_get_gp_value (output_bfd);
  if (*pgp)
    return TRUE;

  count = bfd_get_symcount (output_bfd);
  sym = bfd_get_outsymbols (output_bfd);

  /* The linker script will have created a symbol named `_gp' with the
     appropriate value.  */
  if (sym == NULL)
    i = count;
  else
    {
      for (i = 0; i < count; i++, sym++)
	{
	  register const char *name;

	  name = bfd_asymbol_name (*sym);
	  if (*name == '_' && strcmp (name, "_gp") == 0)
	    {
	      *pgp = bfd_asymbol_value (*sym);
	      _bfd_set_gp_value (output_bfd, *pgp);
	      break;
	    }
	}
    }

  if (i >= count)
    {
      /* Only get the error once.  */
      *pgp = 4;
      _bfd_set_gp_value (output_bfd, *pgp);
      return FALSE;
    }

  return TRUE;
}

/* We have to figure out the gp value, so that we can adjust the
   symbol value correctly.  We look up the symbol _gp in the output
   BFD.  If we can't find it, we're stuck.  We cache it in the ELF
   target data.  We don't need to adjust the symbol value for an
   external symbol if we are producing relocatable output.  */

static bfd_reloc_status_type
brownie32_elf_final_gp (bfd *output_bfd, asymbol *symbol, bfd_boolean relocatable,
		   char **error_message, bfd_vma *pgp)
{
  if (bfd_is_und_section (symbol->section)
      && ! relocatable)
    {
      *pgp = 0;
      return bfd_reloc_undefined;
    }

  *pgp = _bfd_get_gp_value (output_bfd);
  if (*pgp == 0
      && (! relocatable
	  || (symbol->flags & BSF_SECTION_SYM) != 0))
    {
      if (relocatable)
	{
	  /* Make up a value.  */
	  *pgp = symbol->section->output_section->vma /*+ 0x4000*/;
	  _bfd_set_gp_value (output_bfd, *pgp);
	}
      else if (!brownie32_elf_assign_gp (output_bfd, pgp))
	{
	  *error_message =
	    (char *) _("GP relative relocation when _gp not defined");
	  return bfd_reloc_dangerous;
	}
    }

  return bfd_reloc_ok;
}

/* Do a R_BROWNIE32_GPREL16 relocation.  This is a 16 bit value which must
   become the offset from the gp register.  */

static bfd_reloc_status_type
brownie32_elf_gprel16_reloc (bfd *abfd ATTRIBUTE_UNUSED, arelent *reloc_entry,
			asymbol *symbol, void *data ATTRIBUTE_UNUSED,
			asection *input_section, bfd *output_bfd,
			char **error_message ATTRIBUTE_UNUSED)
{
  bfd_boolean relocatable;
  bfd_reloc_status_type ret;
  bfd_vma gp;

  if (output_bfd != NULL)
    relocatable = TRUE;
  else
    {
      relocatable = FALSE;
      output_bfd = symbol->section->output_section->owner;
    }

  ret = brownie32_elf_final_gp (output_bfd, symbol, relocatable, error_message,
			   &gp);
  if (ret != bfd_reloc_ok)
    return ret;

  return _bfd_brownie32_elf_gprel16_with_gp (abfd, symbol, reloc_entry,
					input_section, relocatable,
					data, gp);
}

/* Do a R_BROWNIE32_LITERAL relocation.  */

static bfd_reloc_status_type
brownie32_elf_literal_reloc (bfd *abfd, arelent *reloc_entry, asymbol *symbol,
			void *data, asection *input_section, bfd *output_bfd,
			char **error_message)
{
  bfd_boolean relocatable;
  bfd_reloc_status_type ret;
  bfd_vma gp;

  /* R_BROWNIE32_LITERAL relocations are defined for local symbols only.  */
  if (output_bfd != NULL
      && (symbol->flags & BSF_SECTION_SYM) == 0
      && (symbol->flags & BSF_LOCAL) != 0)
    {
      *error_message = (char *)
	_("literal relocation occurs for an external symbol");
      return bfd_reloc_outofrange;
    }

  /* FIXME: The entries in the .lit8 and .lit4 sections should be merged.  */
  if (output_bfd != NULL)
    relocatable = TRUE;
  else
    {
      relocatable = FALSE;
      output_bfd = symbol->section->output_section->owner;
    }

  ret = brownie32_elf_final_gp (output_bfd, symbol, relocatable, error_message,
			   &gp);
  if (ret != bfd_reloc_ok)
    return ret;

  return _bfd_brownie32_elf_gprel16_with_gp (abfd, symbol, reloc_entry,
					input_section, relocatable,
					data, gp);
}

/* Do a R_BROWNIE32_GPREL32 relocation.  This is a 32 bit value which must
   become the offset from the gp register.  */

static bfd_reloc_status_type
brownie32_elf_gprel32_reloc (bfd *abfd, arelent *reloc_entry, asymbol *symbol,
			void *data, asection *input_section, bfd *output_bfd,
			char **error_message)
{
  bfd_boolean relocatable;
  bfd_reloc_status_type ret;
  bfd_vma gp;

  /* R_BROWNIE32_GPREL32 relocations are defined for local symbols only.  */
  if (output_bfd != NULL
      && (symbol->flags & BSF_SECTION_SYM) == 0
      && (symbol->flags & BSF_LOCAL) != 0)
    {
      *error_message = (char *)
	_("32bits gp relative relocation occurs for an external symbol");
      return bfd_reloc_outofrange;
    }

  if (output_bfd != NULL)
    {
      relocatable = TRUE;
      gp = _bfd_get_gp_value (output_bfd);
    }
  else
    {
      relocatable = FALSE;
      output_bfd = symbol->section->output_section->owner;

      ret = brownie32_elf_final_gp (output_bfd, symbol, relocatable,
			       error_message, &gp);
      if (ret != bfd_reloc_ok)
	return ret;
    }

  return gprel32_with_gp (abfd, symbol, reloc_entry, input_section,
			  relocatable, data, gp);
}

static bfd_reloc_status_type
gprel32_with_gp (bfd *abfd, asymbol *symbol, arelent *reloc_entry,
		 asection *input_section, bfd_boolean relocatable,
		 void *data, bfd_vma gp)
{
  bfd_vma relocation;
  unsigned long val;

  if (bfd_is_com_section (symbol->section))
    relocation = 0;
  else
    relocation = symbol->value;

  relocation += symbol->section->output_section->vma;
  relocation += symbol->section->output_offset;

  if (reloc_entry->address > bfd_get_section_limit (abfd, input_section))
    return bfd_reloc_outofrange;

  if (reloc_entry->howto->src_mask == 0)
    val = 0;
  else
    val = bfd_get_32 (abfd, (bfd_byte *) data + reloc_entry->address);

  /* Set val to the offset into the section or symbol.  */
  val += reloc_entry->addend;

  /* Adjust val for the final section location and GP value.  If we
     are producing relocatable output, we don't want to do this for
     an external symbol.  */
  if (! relocatable
      || (symbol->flags & BSF_SECTION_SYM) != 0)
    val += relocation - gp;

  bfd_put_32 (abfd, val, (bfd_byte *) data + reloc_entry->address);

  if (relocatable)
    reloc_entry->address += input_section->output_offset;

  return bfd_reloc_ok;
}

/* Do a R_BROWNIE32_SHIFT6 relocation. The MSB of the shift is stored at bit 2,
   the rest is at bits 6-10. The bitpos already got right by the howto.  */

static bfd_reloc_status_type
brownie32_elf_shift6_reloc (bfd *abfd, arelent *reloc_entry, asymbol *symbol,
		       void *data, asection *input_section, bfd *output_bfd,
		       char **error_message)
{
  if (reloc_entry->howto->partial_inplace)
    {
      reloc_entry->addend = ((reloc_entry->addend & 0x00007c0)
			     | (reloc_entry->addend & 0x00000800) >> 9);
    }

  return _bfd_brownie32_elf_generic_reloc (abfd, reloc_entry, symbol, data,
				      input_section, output_bfd,
				      error_message);
}


/* A mapping from BFD reloc types to BROWNIE32 ELF reloc types.  */

struct elf_reloc_map {
  bfd_reloc_code_real_type bfd_val;
  enum elf_brownie32_reloc_type elf_val;
};

static const struct elf_reloc_map brownie32_reloc_map[] =
{
  { BFD_RELOC_NONE, R_BROWNIE32_NONE },
  { BFD_RELOC_16, R_BROWNIE32_16 },
  { BFD_RELOC_32, R_BROWNIE32_32 },
  /* There is no BFD reloc for R_BROWNIE32_REL32.  */
  { BFD_RELOC_CTOR, R_BROWNIE32_32 },
  { BFD_RELOC_64, R_BROWNIE32_64 },
  { BFD_RELOC_16_PCREL, R_BROWNIE32_PC16 },
  { BFD_RELOC_HI16_S, R_BROWNIE32_HI16 },
  { BFD_RELOC_LO16, R_BROWNIE32_LO16 },
  { BFD_RELOC_GPREL16, R_BROWNIE32_GPREL16 },
  { BFD_RELOC_GPREL32, R_BROWNIE32_GPREL32 },
  { BFD_RELOC_BROWNIE32_JMP, R_BROWNIE32_26 },
  { BFD_RELOC_BROWNIE32_LITERAL, R_BROWNIE32_LITERAL },
  { BFD_RELOC_BROWNIE32_GOT16, R_BROWNIE32_GOT16 },
  { BFD_RELOC_BROWNIE32_CALL16, R_BROWNIE32_CALL16 },
  { BFD_RELOC_BROWNIE32_SHIFT5, R_BROWNIE32_SHIFT5 },
  { BFD_RELOC_BROWNIE32_SHIFT6, R_BROWNIE32_SHIFT6 },
  { BFD_RELOC_BROWNIE32_GOT_DISP, R_BROWNIE32_GOT_DISP },
  { BFD_RELOC_BROWNIE32_GOT_PAGE, R_BROWNIE32_GOT_PAGE },
  { BFD_RELOC_BROWNIE32_GOT_OFST, R_BROWNIE32_GOT_OFST },
  { BFD_RELOC_BROWNIE32_GOT_HI16, R_BROWNIE32_GOT_HI16 },
  { BFD_RELOC_BROWNIE32_GOT_LO16, R_BROWNIE32_GOT_LO16 },
  { BFD_RELOC_BROWNIE32_SUB, R_BROWNIE32_SUB },
  { BFD_RELOC_BROWNIE32_INSERT_A, R_BROWNIE32_INSERT_A },
  { BFD_RELOC_BROWNIE32_INSERT_B, R_BROWNIE32_INSERT_B },
  { BFD_RELOC_BROWNIE32_DELETE, R_BROWNIE32_DELETE },
  { BFD_RELOC_BROWNIE32_HIGHEST, R_BROWNIE32_HIGHEST },
  { BFD_RELOC_BROWNIE32_HIGHER, R_BROWNIE32_HIGHER },
  { BFD_RELOC_BROWNIE32_CALL_HI16, R_BROWNIE32_CALL_HI16 },
  { BFD_RELOC_BROWNIE32_CALL_LO16, R_BROWNIE32_CALL_LO16 },
  { BFD_RELOC_BROWNIE32_SCN_DISP, R_BROWNIE32_SCN_DISP },
  { BFD_RELOC_BROWNIE32_REL16, R_BROWNIE32_REL16 },
  /* Use of R_BROWNIE32_ADD_IMMEDIATE and R_BROWNIE32_PJUMP is deprecated.  */
  { BFD_RELOC_BROWNIE32_RELGOT, R_BROWNIE32_RELGOT },
  { BFD_RELOC_BROWNIE32_JALR, R_BROWNIE32_JALR },
  { BFD_RELOC_BROWNIE32_TLS_DTPMOD32, R_BROWNIE32_TLS_DTPMOD32 },
  { BFD_RELOC_BROWNIE32_TLS_DTPREL32, R_BROWNIE32_TLS_DTPREL32 },
  { BFD_RELOC_BROWNIE32_TLS_DTPMOD64, R_BROWNIE32_TLS_DTPMOD64 },
  { BFD_RELOC_BROWNIE32_TLS_DTPREL64, R_BROWNIE32_TLS_DTPREL64 },
  { BFD_RELOC_BROWNIE32_TLS_GD, R_BROWNIE32_TLS_GD },
  { BFD_RELOC_BROWNIE32_TLS_LDM, R_BROWNIE32_TLS_LDM },
  { BFD_RELOC_BROWNIE32_TLS_DTPREL_HI16, R_BROWNIE32_TLS_DTPREL_HI16 },
  { BFD_RELOC_BROWNIE32_TLS_DTPREL_LO16, R_BROWNIE32_TLS_DTPREL_LO16 },
  { BFD_RELOC_BROWNIE32_TLS_GOTTPREL, R_BROWNIE32_TLS_GOTTPREL },
  { BFD_RELOC_BROWNIE32_TLS_TPREL32, R_BROWNIE32_TLS_TPREL32 },
  { BFD_RELOC_BROWNIE32_TLS_TPREL64, R_BROWNIE32_TLS_TPREL64 },
  { BFD_RELOC_BROWNIE32_TLS_TPREL_HI16, R_BROWNIE32_TLS_TPREL_HI16 },
  { BFD_RELOC_BROWNIE32_TLS_TPREL_LO16, R_BROWNIE32_TLS_TPREL_LO16 }
};


/* Given a BFD reloc type, return a howto structure.  */

static reloc_howto_type *
bfd_elf32_bfd_reloc_type_lookup (bfd *abfd ATTRIBUTE_UNUSED,
				 bfd_reloc_code_real_type code)
{
  unsigned int i;
  /* FIXME: We default to RELA here instead of choosing the right
     relocation variant.  */
  reloc_howto_type *howto_table = elf_brownie32_howto_table_rela;

  for (i = 0; i < sizeof (brownie32_reloc_map) / sizeof (struct elf_reloc_map);
       i++)
    {
      if (brownie32_reloc_map[i].bfd_val == code)
	return &howto_table[(int) brownie32_reloc_map[i].elf_val];
    }

  switch (code)
    {
    case BFD_RELOC_VTABLE_INHERIT:
      return &elf_brownie32_gnu_vtinherit_howto;
    case BFD_RELOC_VTABLE_ENTRY:
      return &elf_brownie32_gnu_vtentry_howto;
    case BFD_RELOC_16_PCREL_S2:
      return &elf_brownie32_gnu_rela16_s2;
    default:
      bfd_set_error (bfd_error_bad_value);
      return NULL;
    }
}

/* Given a BROWNIE32 Elf_Internal_Rel, fill in an arelent structure.  */

static reloc_howto_type *
brownie32_elf_n32_rtype_to_howto (unsigned int r_type, bfd_boolean rela_p)
{
  switch (r_type)
    {
    case R_BROWNIE32_GNU_VTINHERIT:
      return &elf_brownie32_gnu_vtinherit_howto;
    case R_BROWNIE32_GNU_VTENTRY:
      return &elf_brownie32_gnu_vtentry_howto;
    case R_BROWNIE32_GNU_REL16_S2:
      if (rela_p)
	return &elf_brownie32_gnu_rela16_s2;
      else
	return &elf_brownie32_gnu_rel16_s2;
    default:
      BFD_ASSERT (r_type < (unsigned int) R_BROWNIE32_max);
      if (rela_p)
	return &elf_brownie32_howto_table_rela[r_type];
      else
	return &elf_brownie32_howto_table_rel[r_type];
      break;
    }
}

/* Given a BROWNIE32 Elf_Internal_Rel, fill in an arelent structure.  */

static void
brownie32_info_to_howto_rel (bfd *abfd, arelent *cache_ptr, Elf_Internal_Rela *dst)
{
  unsigned int r_type;

  r_type = ELF32_R_TYPE (dst->r_info);
  cache_ptr->howto = brownie32_elf_n32_rtype_to_howto (r_type, FALSE);

  /* The addend for a GPREL16 or LITERAL relocation comes from the GP
     value for the object file.  We get the addend now, rather than
     when we do the relocation, because the symbol manipulations done
     by the linker may cause us to lose track of the input BFD.  */
  if (((*cache_ptr->sym_ptr_ptr)->flags & BSF_SECTION_SYM) != 0
      && (r_type == (unsigned int) R_BROWNIE32_GPREL16
	  || r_type == (unsigned int) R_BROWNIE32_LITERAL))
    cache_ptr->addend = elf_gp (abfd);
}

/* Given a BROWNIE32 Elf_Internal_Rela, fill in an arelent structure.  */

static void
brownie32_info_to_howto_rela (bfd *abfd ATTRIBUTE_UNUSED,
			 arelent *cache_ptr, Elf_Internal_Rela *dst)
{
  unsigned int r_type;

  r_type = ELF32_R_TYPE (dst->r_info);
  cache_ptr->howto = brownie32_elf_n32_rtype_to_howto (r_type, TRUE);
  cache_ptr->addend = dst->r_addend;
}

/* Determine whether a symbol is global for the purposes of splitting
   the symbol table into global symbols and local symbols.  At least
   on Irix 5, this split must be between section symbols and all other
   symbols.  On most ELF targets the split is between static symbols
   and externally visible symbols.  */

static bfd_boolean
brownie32_elf_sym_is_global (bfd *abfd ATTRIBUTE_UNUSED, asymbol *sym)
{
  if (SGI_COMPAT (abfd))
    return (sym->flags & BSF_SECTION_SYM) == 0;
  else
    return ((sym->flags & (BSF_GLOBAL | BSF_WEAK)) != 0
	    || bfd_is_und_section (bfd_get_section (sym))
	    || bfd_is_com_section (bfd_get_section (sym)));
}

/* Set the right machine number for a BROWNIE32 ELF file.  */

static bfd_boolean
brownie32_elf_n32_object_p (bfd *abfd)
{
  unsigned long mach;

  /* Irix 5 and 6 are broken.  Object file symbol tables are not always
     sorted correctly such that local symbols precede global symbols,
     and the sh_info field in the symbol table is not always right.  */
  if (SGI_COMPAT (abfd))
    elf_bad_symtab (abfd) = TRUE;

  mach = _bfd_elf_brownie32_mach (elf_elfheader (abfd)->e_flags);
  bfd_default_set_arch_mach (abfd, bfd_arch_brownie32, mach);

  if (! ABI_N32_P(abfd))
    return FALSE;

  return TRUE;
}

/* Support for core dump NOTE sections.  */
static bfd_boolean
elf32_brownie32_grok_prstatus (bfd *abfd, Elf_Internal_Note *note)
{
  int offset;
  unsigned int size;

  switch (note->descsz)
    {
      default:
	return FALSE;

      case 440:		/* Linux/BROWNIE32 N32 */
	/* pr_cursig */
	elf_tdata (abfd)->core_signal = bfd_get_16 (abfd, note->descdata + 12);

	/* pr_pid */
	elf_tdata (abfd)->core_pid = bfd_get_32 (abfd, note->descdata + 24);

	/* pr_reg */
	offset = 72;
	size = 360;

	break;
    }

  /* Make a ".reg/999" section.  */
  return _bfd_elfcore_make_pseudosection (abfd, ".reg", size,
					  note->descpos + offset);
}

static bfd_boolean
elf32_brownie32_grok_psinfo (bfd *abfd, Elf_Internal_Note *note)
{
  switch (note->descsz)
    {
      default:
	return FALSE;

      case 128:		/* Linux/BROWNIE32 elf_prpsinfo */
	elf_tdata (abfd)->core_program
	 = _bfd_elfcore_strndup (abfd, note->descdata + 32, 16);
	elf_tdata (abfd)->core_command
	 = _bfd_elfcore_strndup (abfd, note->descdata + 48, 80);
    }

  /* Note that for some reason, a spurious space is tacked
     onto the end of the args in some (at least one anyway)
     implementations, so strip it off if it exists.  */

  {
    char *command = elf_tdata (abfd)->core_command;
    int n = strlen (command);

    if (0 < n && command[n - 1] == ' ')
      command[n - 1] = '\0';
  }

  return TRUE;
}

/* Depending on the target vector we generate some version of Irix
   executables or "normal" BROWNIE32 ELF ABI executables.  */
static irix_compat_t
elf_n32_brownie32_irix_compat (bfd *abfd)
{
  if ((abfd->xvec == &bfd_elf32_nbigbrownie32_vec)
      || (abfd->xvec == &bfd_elf32_nlittlebrownie32_vec))
    return ict_irix6;
  else
    return ict_none;
}

/* ECOFF swapping routines.  These are used when dealing with the
   .mdebug section, which is in the ECOFF debugging format.  */
static const struct ecoff_debug_swap brownie32_elf32_ecoff_debug_swap = {
  /* Symbol table magic number.  */
  magicSym,
  /* Alignment of debugging information.  E.g., 4.  */
  4,
  /* Sizes of external symbolic information.  */
  sizeof (struct hdr_ext),
  sizeof (struct dnr_ext),
  sizeof (struct pdr_ext),
  sizeof (struct sym_ext),
  sizeof (struct opt_ext),
  sizeof (struct fdr_ext),
  sizeof (struct rfd_ext),
  sizeof (struct ext_ext),
  /* Functions to swap in external symbolic data.  */
  ecoff_swap_hdr_in,
  ecoff_swap_dnr_in,
  ecoff_swap_pdr_in,
  ecoff_swap_sym_in,
  ecoff_swap_opt_in,
  ecoff_swap_fdr_in,
  ecoff_swap_rfd_in,
  ecoff_swap_ext_in,
  _bfd_ecoff_swap_tir_in,
  _bfd_ecoff_swap_rndx_in,
  /* Functions to swap out external symbolic data.  */
  ecoff_swap_hdr_out,
  ecoff_swap_dnr_out,
  ecoff_swap_pdr_out,
  ecoff_swap_sym_out,
  ecoff_swap_opt_out,
  ecoff_swap_fdr_out,
  ecoff_swap_rfd_out,
  ecoff_swap_ext_out,
  _bfd_ecoff_swap_tir_out,
  _bfd_ecoff_swap_rndx_out,
  /* Function to read in symbolic data.  */
  _bfd_brownie32_elf_read_ecoff_info
};

#define ELF_ARCH			bfd_arch_brownie32
#define ELF_MACHINE_CODE		EM_BROWNIE32

#define elf_backend_collect		TRUE
#define elf_backend_type_change_ok	TRUE
#define elf_backend_can_gc_sections	TRUE
#define elf_info_to_howto		brownie32_info_to_howto_rela
#define elf_info_to_howto_rel		brownie32_info_to_howto_rel
#define elf_backend_sym_is_global	brownie32_elf_sym_is_global
#define elf_backend_object_p		brownie32_elf_n32_object_p
#define elf_backend_symbol_processing	_bfd_brownie32_elf_symbol_processing
#define elf_backend_section_processing	_bfd_brownie32_elf_section_processing
#define elf_backend_section_from_shdr	_bfd_brownie32_elf_section_from_shdr
#define elf_backend_fake_sections	_bfd_brownie32_elf_fake_sections
#define elf_backend_section_from_bfd_section \
					_bfd_brownie32_elf_section_from_bfd_section
#define elf_backend_add_symbol_hook	_bfd_brownie32_elf_add_symbol_hook
#define elf_backend_link_output_symbol_hook \
					_bfd_brownie32_elf_link_output_symbol_hook
#define elf_backend_create_dynamic_sections \
					_bfd_brownie32_elf_create_dynamic_sections
#define elf_backend_check_relocs	_bfd_brownie32_elf_check_relocs
#define elf_backend_adjust_dynamic_symbol \
					_bfd_brownie32_elf_adjust_dynamic_symbol
#define elf_backend_always_size_sections \
					_bfd_brownie32_elf_always_size_sections
#define elf_backend_size_dynamic_sections \
					_bfd_brownie32_elf_size_dynamic_sections
#define elf_backend_relocate_section	_bfd_brownie32_elf_relocate_section
#define elf_backend_finish_dynamic_symbol \
					_bfd_brownie32_elf_finish_dynamic_symbol
#define elf_backend_finish_dynamic_sections \
					_bfd_brownie32_elf_finish_dynamic_sections
#define elf_backend_final_write_processing \
					_bfd_brownie32_elf_final_write_processing
#define elf_backend_additional_program_headers \
					_bfd_brownie32_elf_additional_program_headers
#define elf_backend_modify_segment_map	_bfd_brownie32_elf_modify_segment_map
#define elf_backend_gc_mark_hook	_bfd_brownie32_elf_gc_mark_hook
#define elf_backend_gc_sweep_hook	_bfd_brownie32_elf_gc_sweep_hook
#define elf_backend_copy_indirect_symbol \
					_bfd_brownie32_elf_copy_indirect_symbol
#define elf_backend_hide_symbol		_bfd_brownie32_elf_hide_symbol
#define elf_backend_grok_prstatus	elf32_brownie32_grok_prstatus
#define elf_backend_grok_psinfo		elf32_brownie32_grok_psinfo
#define elf_backend_ecoff_debug_swap	&brownie32_elf32_ecoff_debug_swap

#define elf_backend_got_header_size	(4 * BROWNIE32_RESERVED_GOTNO)

/* BROWNIE32 n32 ELF can use a mixture of REL and RELA, but some Relocations
   work better/work only in RELA, so we default to this.  */
#define elf_backend_may_use_rel_p	1
#define elf_backend_may_use_rela_p	1
#define elf_backend_default_use_rela_p	1
#define elf_backend_sign_extend_vma	TRUE

#define elf_backend_discard_info	_bfd_brownie32_elf_discard_info
#define elf_backend_ignore_discarded_relocs \
					_bfd_brownie32_elf_ignore_discarded_relocs
#define elf_backend_write_section	_bfd_brownie32_elf_write_section
#define elf_backend_brownie32_irix_compat	elf_n32_brownie32_irix_compat
#define elf_backend_brownie32_rtype_to_howto	brownie32_elf_n32_rtype_to_howto
#define bfd_elf32_find_nearest_line	_bfd_brownie32_elf_find_nearest_line
#define bfd_elf32_find_inliner_info	_bfd_brownie32_elf_find_inliner_info
#define bfd_elf32_new_section_hook	_bfd_brownie32_elf_new_section_hook
#define bfd_elf32_set_section_contents	_bfd_brownie32_elf_set_section_contents
#define bfd_elf32_bfd_get_relocated_section_contents \
				_bfd_elf_brownie32_get_relocated_section_contents
#define bfd_elf32_bfd_link_hash_table_create \
					_bfd_brownie32_elf_link_hash_table_create
#define bfd_elf32_bfd_final_link	_bfd_brownie32_elf_final_link
#define bfd_elf32_bfd_merge_private_bfd_data \
					_bfd_brownie32_elf_merge_private_bfd_data
#define bfd_elf32_bfd_set_private_flags	_bfd_brownie32_elf_set_private_flags
#define bfd_elf32_bfd_print_private_bfd_data \
					_bfd_brownie32_elf_print_private_bfd_data
#define bfd_elf32_bfd_relax_section     _bfd_brownie32_relax_section

/* Support for SGI-ish brownie32 targets using n32 ABI.  */

#define TARGET_LITTLE_SYM               bfd_elf32_nlittlebrownie32_vec
#define TARGET_LITTLE_NAME              "elf32-nlittlebrownie32"
#define TARGET_BIG_SYM                  bfd_elf32_nbigbrownie32_vec
#define TARGET_BIG_NAME                 "elf32-nbigbrownie32"

/* The SVR4 BROWNIE32 ABI says that this should be 0x10000, but Irix 5 uses
   a value of 0x1000, and we are compatible.
   FIXME: How does this affect NewABI?  */
#define ELF_MAXPAGESIZE			0x1000

#include "elf32-target.h"

/* Support for traditional brownie32 targets using n32 ABI.  */
#undef TARGET_LITTLE_SYM
#undef TARGET_LITTLE_NAME
#undef TARGET_BIG_SYM
#undef TARGET_BIG_NAME

#undef ELF_MAXPAGESIZE

#define TARGET_LITTLE_SYM               bfd_elf32_ntradlittlebrownie32_vec
#define TARGET_LITTLE_NAME              "elf32-ntradlittlebrownie32"
#define TARGET_BIG_SYM                  bfd_elf32_ntradbigbrownie32_vec
#define TARGET_BIG_NAME                 "elf32-ntradbigbrownie32"

/* The SVR4 BROWNIE32 ABI says that this should be 0x10000, and Linux uses
   page sizes of up to that limit, so we need to respect it.  */
#define ELF_MAXPAGESIZE			0x10000
#define elf32_bed			elf32_tradbed

/* Include the target file again for this target.  */
#include "elf32-target.h"
