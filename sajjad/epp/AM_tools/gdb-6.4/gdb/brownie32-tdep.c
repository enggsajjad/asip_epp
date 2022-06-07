/* Target-dependent code for the BROWNIE32 architecture, for GDB, the GNU Debugger.

   Copyright 1988, 1989, 1990, 1991, 1992, 1993, 1994, 1995, 1996,
   1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005
   Free Software Foundation, Inc.

   Contributed by Alessandro Forin(af@cs.cmu.edu) at CMU
   and by Per Bothner(bothner@cs.wisc.edu) at U.Wisconsin.

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
#include "gdb_string.h"
#include "gdb_assert.h"
#include "frame.h"
#include "inferior.h"
#include "symtab.h"
#include "value.h"
#include "gdbcmd.h"
#include "language.h"
#include "gdbcore.h"
#include "symfile.h"
#include "objfiles.h"
#include "gdbtypes.h"
#include "target.h"
#include "arch-utils.h"
#include "regcache.h"
#include "osabi.h"
#include "brownie32-tdep.h"
#include "block.h"
#include "reggroups.h"
#include "opcode/brownie32.h"
#include "elf/brownie32.h"
#include "elf-bfd.h"
#include "symcat.h"
#include "sim-regno.h"
#include "dis-asm.h"
#include "frame-unwind.h"
#include "frame-base.h"
#include "trad-frame.h"
#include "infcall.h"
#include "floatformat.h"

#include "opcode/libccg-brownie32.h"

#define DEBUGPRINT printf
static const struct objfile_data *brownie32_pdr_data;

static struct type *brownie32_register_type (struct gdbarch *gdbarch, int regnum);

static const char *brownie32_abi_string;

static const char *brownie32_abi_strings[] = {
  "auto",
  "n32",
  "o32",
  "n64",
  "o64",
  "eabi32",
  "eabi64",
  NULL
};

/* Various BROWNIE32 ISA options (related to stack analysis) can be
   overridden dynamically.  Establish an enum/array for managing
   them. */

static const char size_auto[] = "auto";
static const char size_32[] = "32";
static const char size_64[] = "64";

static const char *size_enums[] = {
  size_auto,
  size_32,
  size_64,
  0
};

/* Some BROWNIE32 boards don't support floating point while others only
   support single-precision floating-point operations.  */

enum brownie32_fpu_type
{
  BROWNIE32_FPU_DOUBLE,		/* Full double precision floating point.  */
  BROWNIE32_FPU_SINGLE,		/* Single precision floating point (R4650).  */
  BROWNIE32_FPU_NONE			/* No floating point.  */
};

#ifndef BROWNIE32_DEFAULT_FPU_TYPE
#define BROWNIE32_DEFAULT_FPU_TYPE BROWNIE32_FPU_DOUBLE
#endif
static int brownie32_fpu_type_auto = 1;
static enum brownie32_fpu_type brownie32_fpu_type = BROWNIE32_DEFAULT_FPU_TYPE;

static int brownie32_debug = 0;

/* BROWNIE32 specific per-architecture information */
struct gdbarch_tdep
{
  /* from the elf header */
  int elf_flags;

  /* brownie32 options */
  enum brownie32_abi brownie32_abi;
  enum brownie32_abi found_abi;
  enum brownie32_fpu_type brownie32_fpu_type;
  int brownie32_first_arg_regnum;
  int brownie32_last_arg_regnum;
  int brownie32_last_fp_arg_regnum;
  int default_mask_address_p;
  /* Is the target using 64-bit raw integer registers but only
     storing a left-aligned 32-bit value in each?  */
  int brownie3264_transfers_32bit_regs_p;
  /* Indexes for various registers.  IRIX and embedded have
     different values.  This contains the "public" fields.  Don't
     add any that do not need to be public.  */
  const struct brownie32_regnum *regnum;
  /* Register names table for the current register set.  */
  const char **brownie32_processor_reg_names;
};

static int
n32n64_floatformat_always_valid (const struct floatformat *fmt,
                                 const void *from)
{
  return 1;
}

/* FIXME: brobecker/2004-08-08: Long Double values are 128 bit long.
   They are implemented as a pair of 64bit doubles where the high
   part holds the result of the operation rounded to double, and
   the low double holds the difference between the exact result and
   the rounded result.  So "high" + "low" contains the result with
   added precision.  Unfortunately, the floatformat structure used
   by GDB is not powerful enough to describe this format.  As a temporary
   measure, we define a 128bit floatformat that only uses the high part.
   We lose a bit of precision but that's probably the best we can do
   for now with the current infrastructure.  */

static const struct floatformat floatformat_n32n64_long_double_big =
{
  floatformat_big, 128, 0, 1, 11, 1023, 2047, 12, 52,
  floatformat_intbit_no,
  "floatformat_ieee_double_big",
  n32n64_floatformat_always_valid
};

const struct brownie32_regnum *
brownie32_regnum (struct gdbarch *gdbarch)
{
  return gdbarch_tdep (gdbarch)->regnum;
}

#define BROWNIE32_EABI (gdbarch_tdep (current_gdbarch)->brownie32_abi == BROWNIE32_ABI_EABI32 \
		   || gdbarch_tdep (current_gdbarch)->brownie32_abi == BROWNIE32_ABI_EABI64)

#define BROWNIE32_LAST_FP_ARG_REGNUM (gdbarch_tdep (current_gdbarch)->brownie32_last_fp_arg_regnum)

#define BROWNIE32_LAST_ARG_REGNUM (gdbarch_tdep (current_gdbarch)->brownie32_last_arg_regnum)

#define BROWNIE32_FPU_TYPE (gdbarch_tdep (current_gdbarch)->brownie32_fpu_type)

/* Return the contents of register REGNUM as a signed integer.  */

static LONGEST
read_signed_register (int regnum)
{
  LONGEST val;
  regcache_cooked_read_signed (current_regcache, regnum, &val);
  return val;
}

static LONGEST
read_signed_register_pid (int regnum, ptid_t ptid)
{
  ptid_t save_ptid;
  LONGEST retval;

  if (ptid_equal (ptid, inferior_ptid))
  {
    return read_signed_register (regnum);
  }
  save_ptid = inferior_ptid;

  inferior_ptid = ptid;

  retval = read_signed_register (regnum);

  inferior_ptid = save_ptid;

  return retval;
}

/* Return the BROWNIE32 ABI associated with GDBARCH.  */
enum brownie32_abi
brownie32_abi (struct gdbarch *gdbarch)
{
  return gdbarch_tdep (gdbarch)->brownie32_abi;
}

int
brownie32_isa_regsize (struct gdbarch *gdbarch)
{
  return (gdbarch_bfd_arch_info (gdbarch)->bits_per_word
	  / gdbarch_bfd_arch_info (gdbarch)->bits_per_byte);
}

/* Return the currently configured (or set) saved register size. */

static const char *brownie32_abi_regsize_string = size_auto;

unsigned int
brownie32_abi_regsize (struct gdbarch *gdbarch)
{
    return 4;
}

/* Functions for setting and testing a bit in a minimal symbol that
   marks it as 16-bit function.  The MSB of the minimal symbol's
   "info" field is used for this purpose.

   ELF_MAKE_MSYMBOL_SPECIAL tests whether an ELF symbol is "special",
   i.e. refers to a 16-bit function, and sets a "special" bit in a
   minimal symbol to mark it as a 16-bit function

   MSYMBOL_IS_SPECIAL   tests the "special" bit in a minimal symbol  */

static void
brownie32_elf_make_msymbol_special (asymbol * sym, struct minimal_symbol *msym)
{
}

/* The amount of space reserved on the stack for registers. This is
   different to BROWNIE32_ABI_REGSIZE as it determines the alignment of
   data allocated after the registers have run out. */

static const char *brownie32_stack_argsize_string = size_auto;

static unsigned int
brownie32_stack_argsize (struct gdbarch *gdbarch)
{
  if (brownie32_stack_argsize_string == size_auto)
    return brownie32_abi_regsize (gdbarch);
  else if (brownie32_stack_argsize_string == size_64)
    return 8;
  else				/* if (brownie32_stack_argsize_string == size_32) */
    return 4;
}

#define VM_MIN_ADDRESS (CORE_ADDR)0x400000

static CORE_ADDR heuristic_proc_start (CORE_ADDR);

static CORE_ADDR read_next_frame_reg (struct frame_info *, int);

static void reinit_frame_cache_sfunc (char *, int, struct cmd_list_element *);

/* The list of available "set brownie32 " and "show brownie32 " commands */

static struct cmd_list_element *setbrownie32cmdlist = NULL;
static struct cmd_list_element *showbrownie32cmdlist = NULL;

/* Integer registers 0 thru 31 are handled explicitly by
   brownie32_register_name().  Processor specific registers 32 and above
   are listed in the followign tables.  */

enum
{ NUM_BROWNIE32_PROCESSOR_REGS = (90-32) };
/* Generic BROWNIE32.  */

static const char *brownie32_generic_reg_names[NUM_BROWNIE32_PROCESSOR_REGS] = {
  "pc",  
  "", "", "", "", "", "", "", 
  "", "", "", "", "", "", "", 
  "", "", "", "", "", "", "", 
  "", "", "", "", "", "", "", 
  "", "", "", "", "", "", "", 
  "", "", "", "", "", "", "", 
  "", "", "", "", "", "", "", 
  "", "", "", "", "", "", "", 
  ""
};

/* Return the name of the register corresponding to REGNO.  */
static const char *
brownie32_register_name (int regno)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (current_gdbarch);
  /* GPR names for all ABIs other than n32/n64.  */
#if 0
  static char *brownie32_gpr_names[] = {
    "gpr00", "gpr01", "gpr02", "gpr03", "gpr04", "gpr05", "gpr06", "gpr07",
    "gpr08", "gpr09", "gpr10", "gpr11", "gpr12", "gpr13", "gpr14", "gpr15",
    "gpr16", "gpr17", "gpr18", "gpr19", "gpr20", "gpr21", "gpr22", "gpr23",
    "gpr24", "gpr25", "gpr26", "gpr27", "gpr28", "gpr29", "gpr30", "gpr31"
  };
#endif
  static char *brownie32_gpr_names[] = {
    "r0", "r1", "r2", "r3", "r4", "r5", "r6", "r7",
    "r8", "r9", "r10", "r11", "r12", "r13", "r14", "r15",
    "r16", "r17", "r18", "r19", "r20", "r21", "r22", "r23",
    "r24", "r25", "r26", "r27", "r28", "r29", "r30", "r31"
  };


  enum brownie32_abi abi = brownie32_abi (current_gdbarch);

  /* Map [NUM_REGS .. 2*NUM_REGS) onto the raw registers, but then
     don't make the raw register names visible.  */

  int rawnum = regno % NUM_REGS;
//DEBUGPRINT("rawnum=%d regno=%d NUM_REGS=%d\n",rawnum,regno,NUM_REGS);
  if (regno < NUM_REGS)
    return "";

  /* The BROWNIE32 integer registers are always mapped from 0 to 31.  The
     names of the registers (which reflects the conventions regarding
     register use) vary depending on the ABI.  */
  if (0 <= rawnum && rawnum < 32)
    {
	return brownie32_gpr_names[rawnum];
    }
  else if (32 <= rawnum && rawnum < NUM_REGS)
    {
      gdb_assert (rawnum - 32 < NUM_BROWNIE32_PROCESSOR_REGS);
      return tdep->brownie32_processor_reg_names[rawnum - 32];
    }
  else
    internal_error (__FILE__, __LINE__,
		    _("brownie32_register_name: bad register number %d"), rawnum);
}

/* Return the groups that a BROWNIE32 register can be categorised into.  */

static int
brownie32_register_reggroup_p (struct gdbarch *gdbarch, int regnum,
			  struct reggroup *reggroup)
{
  int vector_p;
  int float_p;
  int raw_p;
  int rawnum = regnum % NUM_REGS;
  int pseudo = regnum / NUM_REGS;
  if (reggroup == all_reggroup)
    return pseudo;
  vector_p = TYPE_VECTOR (register_type (gdbarch, regnum));
  float_p = TYPE_CODE (register_type (gdbarch, regnum)) == TYPE_CODE_FLT;
  /* FIXME: cagney/2003-04-13: Can't yet use gdbarch_num_regs
     (gdbarch), as not all architectures are multi-arch.  */
  raw_p = rawnum < NUM_REGS;
  if (REGISTER_NAME (regnum) == NULL || REGISTER_NAME (regnum)[0] == '\0')
    return 0;
  if (reggroup == float_reggroup)
    return float_p && pseudo;
  if (reggroup == vector_reggroup)
    return vector_p && pseudo;
  if (reggroup == general_reggroup)
    return (!vector_p && !float_p) && pseudo;
  /* Save the pseudo registers.  Need to make certain that any code
     extracting register values from a saved register cache also uses
     pseudo registers.  */
  if (reggroup == save_reggroup)
    return raw_p && pseudo;
  /* Restore the same pseudo register.  */
  if (reggroup == restore_reggroup)
    return raw_p && pseudo;
  return 0;
}

/* Map the symbol table registers which live in the range [1 *
   NUM_REGS .. 2 * NUM_REGS) back onto the corresponding raw
   registers.  Take care of alignment and size problems.  */

static void
brownie32_pseudo_register_read (struct gdbarch *gdbarch, struct regcache *regcache,
			   int cookednum, gdb_byte *buf)
{
  int rawnum = cookednum % NUM_REGS;
  gdb_assert (cookednum >= NUM_REGS && cookednum < 2 * NUM_REGS);
  if (register_size (gdbarch, rawnum) == register_size (gdbarch, cookednum))
    regcache_raw_read (regcache, rawnum, buf);
  else if (register_size (gdbarch, rawnum) >
	   register_size (gdbarch, cookednum))
    {
      if (gdbarch_tdep (gdbarch)->brownie3264_transfers_32bit_regs_p
	  || TARGET_BYTE_ORDER == BFD_ENDIAN_LITTLE)
	regcache_raw_read_part (regcache, rawnum, 0, 4, buf);
      else
	regcache_raw_read_part (regcache, rawnum, 4, 4, buf);
    }
  else
    internal_error (__FILE__, __LINE__, _("bad register size"));
}

static void
brownie32_pseudo_register_write (struct gdbarch *gdbarch,
			    struct regcache *regcache, int cookednum,
			    const gdb_byte *buf)
{
  int rawnum = cookednum % NUM_REGS;
  gdb_assert (cookednum >= NUM_REGS && cookednum < 2 * NUM_REGS);
  if (register_size (gdbarch, rawnum) == register_size (gdbarch, cookednum))
    regcache_raw_write (regcache, rawnum, buf);
  else if (register_size (gdbarch, rawnum) >
	   register_size (gdbarch, cookednum))
    {
      if (gdbarch_tdep (gdbarch)->brownie3264_transfers_32bit_regs_p
	  || TARGET_BYTE_ORDER == BFD_ENDIAN_LITTLE)
	regcache_raw_write_part (regcache, rawnum, 0, 4, buf);
      else
	regcache_raw_write_part (regcache, rawnum, 4, 4, buf);
    }
  else
    internal_error (__FILE__, __LINE__, _("bad register size"));
}

/* Heuristic_proc_start may hunt through the text section for a long
   time across a 2400 baud serial line.  Allows the user to limit this
   search.  */

static unsigned int heuristic_fence_post = 0;

/* Number of bytes of storage in the actual machine representation for
   register N.  NOTE: This defines the pseudo register type so need to
   rebuild the architecture vector.  */

static int brownie3264_transfers_32bit_regs_p = 0;

static void
set_brownie3264_transfers_32bit_regs (char *args, int from_tty,
				 struct cmd_list_element *c)
{
  struct gdbarch_info info;
  gdbarch_info_init (&info);
  /* FIXME: cagney/2003-11-15: Should be setting a field in "info"
     instead of relying on globals.  Doing that would let generic code
     handle the search for this specific architecture.  */
  if (!gdbarch_update_p (info))
    {
      brownie3264_transfers_32bit_regs_p = 0;
      error (_("32-bit compatibility mode not supported"));
    }
}

/* Convert to/from a register and the corresponding memory value.  */

static int
brownie32_convert_register_p (int regnum, struct type *type)
{
#if 0
  return (TARGET_BYTE_ORDER == BFD_ENDIAN_BIG
	  && register_size (current_gdbarch, regnum) == 4
	  && (regnum % NUM_REGS) >= brownie32_regnum (current_gdbarch)->fp0
	  && (regnum % NUM_REGS) < brownie32_regnum (current_gdbarch)->fp0 + 32
	  && TYPE_CODE (type) == TYPE_CODE_FLT && TYPE_LENGTH (type) == 8);
#else
return -1;
#endif
}

static void
brownie32_register_to_value (struct frame_info *frame, int regnum,
			struct type *type, gdb_byte *to)
{
//  get_frame_register (frame, regnum + 0, to + 4);
//  get_frame_register (frame, regnum + 1, to + 0);
  get_frame_register (frame, regnum , to );
}

static void
brownie32_value_to_register (struct frame_info *frame, int regnum,
			struct type *type, const gdb_byte *from)
{
//  put_frame_register (frame, regnum + 0, from + 4);
//  put_frame_register (frame, regnum + 1, from + 0);
  put_frame_register (frame, regnum , from );
}

/* Return the GDB type object for the "standard" data type of data in
   register REG.  */

static struct type *
brownie32_register_type (struct gdbarch *gdbarch, int regnum)
{
//DEBUGPRINT("---> regnum=%d\n",regnum);
  gdb_assert (regnum >= 0 && regnum < 2 * NUM_REGS);
  if (regnum < NUM_REGS)
    {
      /* The raw or ISA registers.  These are all sized according to
	 the ISA regsize.  */
      if (brownie32_isa_regsize (gdbarch) == 4)
	return builtin_type_int32;
      else
	return builtin_type_int64;
    }
  else
    {
      /* The cooked or ABI registers.  These are sized according to
	 the ABI (with a few complications).  */
      if (gdbarch_tdep (gdbarch)->brownie3264_transfers_32bit_regs_p)
	/* The target, while possibly using a 64-bit register buffer,
	   is only transfering 32-bits of each integer register.
	   Reflect this in the cooked/pseudo (ABI) register value.  */
	return builtin_type_int32;
      else if (brownie32_abi_regsize (gdbarch) == 4)
	/* The ABI is restricted to 32-bit registers (the ISA could be
	   32- or 64-bit).  */
	return builtin_type_int32;
      else
	/* 64-bit ABI.  */
	return builtin_type_int64;
    }
}

/* TARGET_READ_SP -- Remove useless bits from the stack pointer.  */

static CORE_ADDR
brownie32_read_sp (void)
{
  return read_signed_register (BROWNIE32_SP_REGNUM);
}

/* Should the upper word of 64-bit addresses be zeroed? */
enum auto_boolean mask_address_var = AUTO_BOOLEAN_AUTO;

static int
brownie32_mask_address_p (struct gdbarch_tdep *tdep)
{
  switch (mask_address_var)
    {
    case AUTO_BOOLEAN_TRUE:
      return 1;
    case AUTO_BOOLEAN_FALSE:
      return 0;
      break;
    case AUTO_BOOLEAN_AUTO:
      return tdep->default_mask_address_p;
    default:
      internal_error (__FILE__, __LINE__, _("brownie32_mask_address_p: bad switch"));
      return -1;
    }
}

static void
show_mask_address (struct ui_file *file, int from_tty,
		   struct cmd_list_element *c, const char *value)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (current_gdbarch);

  deprecated_show_value_hack (file, from_tty, c, value);
  switch (mask_address_var)
    {
    case AUTO_BOOLEAN_TRUE:
      printf_filtered ("The 32 bit brownie32 address mask is enabled\n");
      break;
    case AUTO_BOOLEAN_FALSE:
      printf_filtered ("The 32 bit brownie32 address mask is disabled\n");
      break;
    case AUTO_BOOLEAN_AUTO:
      printf_filtered
	("The 32 bit address mask is set automatically.  Currently %s\n",
	 brownie32_mask_address_p (tdep) ? "enabled" : "disabled");
      break;
    default:
      internal_error (__FILE__, __LINE__, _("show_mask_address: bad switch"));
      break;
    }
}

/* BROWNIE32 believes that the PC has a sign extended value.  Perhaps the
   all registers should be sign extended for simplicity? */

static CORE_ADDR
brownie32_read_pc (ptid_t ptid)
{
  return read_signed_register_pid (brownie32_regnum (current_gdbarch)->pc, ptid);
}

static CORE_ADDR
brownie32_unwind_pc (struct gdbarch *gdbarch, struct frame_info *next_frame)
{
  return frame_unwind_register_signed (next_frame,
				       NUM_REGS + brownie32_regnum (gdbarch)->pc);
}

/* Assuming NEXT_FRAME->prev is a dummy, return the frame ID of that
   dummy frame.  The frame ID's base needs to match the TOS value
   saved by save_dummy_frame_tos(), and the PC match the dummy frame's
   breakpoint.  */

static struct frame_id
brownie32_unwind_dummy_id (struct gdbarch *gdbarch, struct frame_info *next_frame)
{
  return frame_id_build (frame_unwind_register_signed (next_frame, NUM_REGS + BROWNIE32_FRM_REGNUM),
			 frame_pc_unwind (next_frame));
}

static void
brownie32_write_pc (CORE_ADDR pc, ptid_t ptid)
{
  write_register_pid (brownie32_regnum (current_gdbarch)->pc, pc, ptid);
}

/* Fetch and return instruction from the specified location.  If the PC
   is odd, assume it's a BROWNIE3216 instruction; otherwise BROWNIE3232.  */

static ULONGEST
brownie32_fetch_instruction (CORE_ADDR addr)
{
  gdb_byte buf[BROWNIE32_INSN32_SIZE];
  int instlen;
  int status;
  ULONGEST inst;
  int n;
  instlen = BROWNIE32_INSN32_SIZE;
  status = deprecated_read_memory_nobpt (addr, buf, instlen);
//printf ("DEBUG: sizeof(ULONGEST) = %d\n", sizeof(ULONGEST));
//for (n = 0; n < instlen; n++)
//{
//printf ("DEBUG: buf[%d]=0x%x\n", n, buf[n]);
//}
  if (status)
    memory_error (status, addr);
  inst = extract_unsigned_integer (buf, instlen);
//printf ("DEBUG: addr = 0x%lx, inst = 0x%llx\n", addr, inst);
  return inst;
}

/* These the fields of 32 bit brownie32 instructions */
#define brownie32_op(x) (x & 0x3f)
#define rrtype_func(x) ((x >> 6) & 0x7ff)
#define rrtype_rs1(x) ((x >> 27) & 0x1f)
#define rrtype_rs2(x) ((x >> 22) & 0x1f)
#define rrtype_rd(x) ((x >> 17) & 0x1f)
#define ritype_immediate(x) ((x >> 16) & 0xffff)
#define ritype_rs1(x) ((x >> 11) & 0x1f)
#define ritype_rd(x) ((x >> 6) & 0x1f)
#define matype_offset(x) ((x >> 16) & 0xffff)
#define matype_rs1(x) ((x >> 11) & 0x1f)
#define matype_rd(x) ((x >> 6) & 0x1f)

#define brtype_offset(x) ((x >> 16) & 0xffff)
#define brtype_rs1(x) ((x >> 11) & 0x1f)

#define jptype_offset(x) ((x >> 6) & 0x3ffffff)

#define jprtype_rs1(x) ((x >> 6) & 0x1f)

#define sptype_func(x) ((x >> 6) & 0x1f)


/* The brownie32_next_pc function supports single_step when the remote
   target monitor or stub is not developed enough to do a single_step.
   It works by decoding the current instruction and predicting where a
   branch will go. This isnt hard because all the data is available.
   The BROWNIE3232 and BROWNIE3216 variants are quite different */
CORE_ADDR
brownie32_next_pc (CORE_ADDR pc)
{
  unsigned long inst;
  int op;
  CORE_ADDR val;
  int reg;

//printf("DEBUG: brownie32_next_pc in pc = 0x%lx\n", pc);
  inst = brownie32_fetch_instruction (pc);
//printf("DEBUG: brownie32_next_pc inst = 0x%lx\n", brownie32_op (inst));
  switch (brownie32_op (inst))
    {
    case 0x9:   /* BRZ */
      reg = read_signed_register (brtype_rs1 (inst));
      if (reg == 0)
        {
          val = brtype_offset (inst);
          if ((val & 0x8000) == 0x8000)
            {
              val = 0xffff | val;
            }
          pc += BROWNIE32_INSN32_SIZE + val;
        }
      else
        {
          pc += BROWNIE32_INSN32_SIZE;
        }
      break;
    case 0xa:  /* BRNZ */
      reg = read_signed_register (brtype_rs1 (inst));
      if (reg != 0)
        {
          val = brtype_offset (inst);
          if ((val & 0x8000) == 0x8000)
            {
              val = 0xffff0000 | val;
            }
          pc += BROWNIE32_INSN32_SIZE + val;
        }
      else
        {
          pc += BROWNIE32_INSN32_SIZE;
        }
      break;
    case 0xb:   /* JP */
      val = jptype_offset (inst);
      if ((val & 0x02000000) == 0x02000000)
        {
          val = 0xfc000000 | val;
        }
      pc += BROWNIE32_INSN32_SIZE + val;
      break;
    case 0xc:   /* JPL */
      val = jptype_offset (inst);
      if ((val & 0x02000000) == 0x02000000)
        {
          val = 0xfc000000 | val;
        }
      pc += BROWNIE32_INSN32_SIZE + val;
      break;
    case 0xe:   /* JPR */
      reg = read_signed_register (jprtype_rs1 (inst));
      pc = reg;
      break;
    case 0xf:   /* JPRL */
      reg = read_signed_register (jprtype_rs1 (inst));
      pc = reg;
      break;
    case 0x0:   /* SP Type */
      switch (sptype_func (inst))
        {
        case 0: /* NOP */
          pc += BROWNIE32_INSN32_SIZE;
          break;
        case 0x1: /* RETI */
          reg = read_signed_register (BROWNIE32_IRR_REGNUM);
          pc = reg;
          break;
        default:
          printf ("DEBUG: SPTYPE unknown func %d\n", sptype_func(inst));
          pc += BROWNIE32_INSN32_SIZE;
          break;
        }
      break;
    case 0xd:  /* TRAP */
      val = jptype_offset (inst);
      pc += BROWNIE32_INSN32_SIZE; /* FIXME */
      break;
    default:
      pc += BROWNIE32_INSN32_SIZE;
    }
//printf("DEBUG: brownie32_next_pc out pc = 0x%lx\n", pc);
  return pc;
}

struct brownie32_frame_cache
{
  CORE_ADDR base;
  struct trad_frame_saved_reg *saved_regs;
};

#if 0
/* Set a register's saved stack address in temp_saved_regs.  If an
   address has already been set for this register, do nothing; this
   way we will only recognize the first save of a given register in a
   function prologue.

   For simplicity, save the address in both [0 .. NUM_REGS) and
   [NUM_REGS .. 2*NUM_REGS).  Strictly speaking, only the second range
   is used as it is only second range (the ABI instead of ISA
   registers) that comes into play when finding saved registers in a
   frame.  */

static void
set_reg_offset (struct brownie32_frame_cache *this_cache, int regnum,
		CORE_ADDR offset)
{
  if (this_cache != NULL
      && this_cache->saved_regs[regnum].addr == -1)
    {
      this_cache->saved_regs[regnum + 0 * NUM_REGS].addr = offset;
      this_cache->saved_regs[regnum + 1 * NUM_REGS].addr = offset;
    }
}
#endif

/* Mark all the registers as unset in the saved_regs array
   of THIS_CACHE.  Do nothing if THIS_CACHE is null.  */

void
reset_saved_regs (struct brownie32_frame_cache *this_cache)
{
  if (this_cache == NULL || this_cache->saved_regs == NULL)
    return;

  {
    const int num_regs = NUM_REGS;
    int i;

    for (i = 0; i < num_regs; i++)
      {
        this_cache->saved_regs[i].addr = -1;
      }
  }
}

/* Analyze the function prologue from START_PC to LIMIT_PC. Builds
   the associated FRAME_CACHE if not null.  
   Return the address of the first instruction past the prologue.  */

static CORE_ADDR
brownie32_scan_prologue (CORE_ADDR start_pc, CORE_ADDR limit_pc,
                      struct frame_info *next_frame,
                      struct brownie32_frame_cache *this_cache)
{
  CORE_ADDR cur_pc;
  CORE_ADDR frame_addr = 0; /* Value of $r30. Used by gcc for frame-pointer */
  CORE_ADDR sp;
  long frame_offset;
//  int  frame_reg = BROWNIE32_SP_REGNUM;
  int  frame_reg = BROWNIE32_FRM_REGNUM;

  CORE_ADDR end_prologue_addr = 0;
  int seen_sp_adjust = 0;
  int load_immediate_bytes = 0;

  /* Can be called when there's no process, and hence when there's no
     NEXT_FRAME.  */
  if (next_frame != NULL)
//    sp = read_next_frame_reg (next_frame, NUM_REGS + BROWNIE32_SP_REGNUM);
    sp = read_next_frame_reg (next_frame, NUM_REGS + BROWNIE32_FRM_REGNUM);
  else
    sp = 0;

  if (limit_pc > start_pc + 200)
    limit_pc = start_pc + 200;

  frame_offset = 0;
//printf("DEBUG: start_pc = 0x%lx\n", start_pc);
//printf("DEBUG: limit_pc = 0x%lx\n", limit_pc);
  for (cur_pc = start_pc; cur_pc < limit_pc; cur_pc += BROWNIE32_INSN32_SIZE)
    {
      unsigned long inst;

//printf("DEBUG: cur_pc = 0x%lx\n", cur_pc);
      /* Fetch the instruction.   */
      inst = (unsigned long) brownie32_fetch_instruction (cur_pc);
/*
       prologe code:
       sw -4(SP), r3   ; push Link register
       sw -8(SP), FP   ; push frame pointer
       addi FP, SP, #-8 ; frame pointer = stack pointer - 8
       addi SP, SP, #-X ; alloc local storage
       sw Y(SP), r8   ; first arg reg. save
       sw Y+4(SP), r9 ; second arg reg. save
        ...
       sw Y+M(SP), r15 ; last arg reg. save
*/

      if (brownie32_op(inst) == 0x7 
	&& matype_rd(inst) == BROWNIE32_SP_REGNUM
        && matype_rs1(inst) == BROWNIE32_LNK_REGNUM
        && matype_offset(inst) == 0xfffc)  /* sw -4(SP),r3 */
        {
//printf ("DEBUG: cur_pc = 0x%lx, push link register - sw -4(SP),r3\n", cur_pc);
        }
      else if (brownie32_op(inst) == 0x7 
	&& matype_rd(inst) == BROWNIE32_SP_REGNUM
        && matype_rs1(inst) == BROWNIE32_FRM_REGNUM
        && matype_offset(inst) == 0xfff8)  /* sw -8(SP),FP */
        {
//printf ("DEBUG: cur_pc = 0x%lx, push frame register - sw -8(SP),FP\n", cur_pc);
        }
      else if (brownie32_op(inst) == 0x20
	&& ritype_rd(inst) == BROWNIE32_FRM_REGNUM
	&& ritype_rs1(inst) == BROWNIE32_SP_REGNUM
	&& ritype_immediate(inst) == 0xfff8) /* addi FP, SP, -8 */
        {
//printf ("DEBUG: cur_pc = 0x%lx, frame = SP - 8 - addi FP, -8(SP)\n", cur_pc);
        }
      else if (!seen_sp_adjust
               && brownie32_op (inst) == 0x20
               && ritype_rs1 (inst) == BROWNIE32_SP_REGNUM
               && ritype_rd (inst) == BROWNIE32_SP_REGNUM)
        /* addi SP, SP, X; local storage*/
        {
          seen_sp_adjust = 1;
//printf ("DEBUG: cur_pc = 0x%lx, alloc local storage - addi SP, X(SP)\n", cur_pc);
        }
      else if (seen_sp_adjust
               && brownie32_op (inst) == 0x7
               && matype_rd(inst) == BROWNIE32_SP_REGNUM
               && matype_rs1(inst) >= BROWNIE32_FIRST_ARG_REGNUM
               && matype_rs1(inst) <= BROWNIE32_LAST_ARG_REGNUM)
        /* sw rN, X(SP); arg register save area */
        {
//printf ("DEBUG: cur_pc = 0x%lx, arg register save - addi rN, X(SP)\n", cur_pc);
        }
      else if (seen_sp_adjust
               && brownie32_op (inst) == 0
               && sptype_func (inst) == 0)
       /* NOP: bodiless function? */
       {
           end_prologue_addr = cur_pc - 4;
//printf ("DEBUG: NOP found\n");
           break;
        }
      else
       {
         /* This instruction is not an instruction typically found
            in a prologue, so we must have reached the end of the
            prologue.  */
         /* FIXME: brobecker/2004-10-10: Can't we just break out of this
            loop now?  Why would we need to continue scanning the function
            instructions?  */
//printf("DEBUG: other instruction = 0x%lx, ", inst);
//printf("cur_pc = 0x%lx\n", cur_pc);
         if (end_prologue_addr == 0)
           end_prologue_addr = cur_pc;
//if (brownie32_op(inst) == 0x7 )
//printf("0x7: rd = %ld, rs1 = %ld, offset = 0x%lx\n", matype_rd(inst),
//matype_rs1(inst),  matype_offset(inst));  /* sw -4(SP),r3 */
//if (brownie32_op(inst) == 0x20)
//printf("0x20: rd = %ld, rs1 = %ld, imm = 0x%lx\n", ritype_rd(inst),
//ritype_rs1(inst),  ritype_immediate(inst));
         break;
       }
    }

  if (this_cache != NULL)
    {
//frame_offset = -8;
//frame_reg = BROWNIE32_SP_REGNUM;
      this_cache->base = 
        (frame_unwind_register_signed (next_frame, NUM_REGS + frame_reg)
         + frame_offset);
//printf("DEBUG: this_cache->base = 0x%lx\n", this_cache->base);
      /* FIXME: brobecker/2004-09-15: We should be able to get rid of
         this assignment below, eventually.  But it's still needed
         for now.  */

      this_cache->saved_regs[NUM_REGS + brownie32_regnum (current_gdbarch)->pc]
        = this_cache->saved_regs[NUM_REGS + BROWNIE32_LNK_REGNUM];

    }

  /* If we didn't reach the end of the prologue when scanning the function
     instructions, then set end_prologue_addr to the address of the
     instruction immediately after the last one we scanned.  */
  /* brobecker/2004-10-10: I don't think this would ever happen, but
     we may as well be careful and do our best if we have a null
     end_prologue_addr.  */
  if (end_prologue_addr == 0)
    end_prologue_addr = cur_pc;
     
#if 000
  /* In a frameless function, we might have incorrectly
     skipped some load immediate instructions. Undo the skipping
     if the load immediate was not followed by a stack adjustment.  */
  if (load_immediate_bytes && !seen_sp_adjust)
    end_prologue_addr -= load_immediate_bytes;
#endif

  return end_prologue_addr;
}

/* Heuristic unwinder for procedures using 32-bit instructions (covers
   both 32-bit and 64-bit BROWNIE32 ISAs).  Procedures using 16-bit
   instructions (a.k.a. BROWNIE3216) are handled by the brownie32_insn16
   unwinder.  */

static struct brownie32_frame_cache *
brownie32_insn32_frame_cache (struct frame_info *next_frame, void **this_cache)
{
  struct brownie32_frame_cache *cache;

  if ((*this_cache) != NULL)
    return (*this_cache);

  cache = FRAME_OBSTACK_ZALLOC (struct brownie32_frame_cache);
  (*this_cache) = cache;
  cache->saved_regs = trad_frame_alloc_saved_regs (next_frame);

  /* Analyze the function prologue.  */
  {
    const CORE_ADDR pc = frame_pc_unwind (next_frame);
    CORE_ADDR start_addr;

    find_pc_partial_function (pc, NULL, &start_addr, NULL);
    if (start_addr == 0)
      start_addr = heuristic_proc_start (pc);
    /* We can't analyze the prologue if we couldn't find the begining
       of the function.  */
    if (start_addr == 0)
      return cache;

    brownie32_scan_prologue (start_addr, pc, next_frame, *this_cache);
  }
  
  /* SP_REGNUM, contains the value and not the address.  */
//  trad_frame_set_value (cache->saved_regs, NUM_REGS + BROWNIE32_SP_REGNUM, cache->base);
 trad_frame_set_value (cache->saved_regs, NUM_REGS + BROWNIE32_FRM_REGNUM, cache->base);

  return (*this_cache);
}

static void
brownie32_insn32_frame_this_id (struct frame_info *next_frame, void **this_cache,
			   struct frame_id *this_id)
{
  struct brownie32_frame_cache *info = brownie32_insn32_frame_cache (next_frame,
							   this_cache);
  (*this_id) = frame_id_build (info->base, frame_func_unwind (next_frame));
//printf ("DEBUG: this_id->stack_addr = 0x%lx\n", this_id->stack_addr);
//printf ("DEBUG: this_id->code_addr = 0x%lx\n", this_id->code_addr);
}

static void
brownie32_insn32_frame_prev_register (struct frame_info *next_frame,
				 void **this_cache,
				 int regnum, int *optimizedp,
				 enum lval_type *lvalp, CORE_ADDR *addrp,
				 int *realnump, gdb_byte *valuep)
{
  struct brownie32_frame_cache *info = brownie32_insn32_frame_cache (next_frame,
							   this_cache);
  trad_frame_get_prev_register (next_frame, info->saved_regs, regnum,
				optimizedp, lvalp, addrp, realnump, valuep);
}

static const struct frame_unwind brownie32_insn32_frame_unwind =
{
  NORMAL_FRAME,
  brownie32_insn32_frame_this_id,
  brownie32_insn32_frame_prev_register
};

static const struct frame_unwind *
brownie32_insn32_frame_sniffer (struct frame_info *next_frame)
{
  return &brownie32_insn32_frame_unwind;
}

static CORE_ADDR
brownie32_insn32_frame_base_address (struct frame_info *next_frame,
				void **this_cache)
{
  struct brownie32_frame_cache *info = brownie32_insn32_frame_cache (next_frame,
							   this_cache);
  return info->base;
}

static const struct frame_base brownie32_insn32_frame_base =
{
  &brownie32_insn32_frame_unwind,
  brownie32_insn32_frame_base_address,
  brownie32_insn32_frame_base_address,
  brownie32_insn32_frame_base_address
};

static const struct frame_base *
brownie32_insn32_frame_base_sniffer (struct frame_info *next_frame)
{
  if (brownie32_insn32_frame_sniffer (next_frame) != NULL)
    return &brownie32_insn32_frame_base;
  else
    return NULL;
}

static struct trad_frame_cache *
brownie32_stub_frame_cache (struct frame_info *next_frame, void **this_cache)
{
  CORE_ADDR pc;
  CORE_ADDR start_addr;
  CORE_ADDR stack_addr;
  struct trad_frame_cache *this_trad_cache;

  if ((*this_cache) != NULL)
    return (*this_cache);
  this_trad_cache = trad_frame_cache_zalloc (next_frame);
  (*this_cache) = this_trad_cache;

  /* The return address is in the link register.  */
  trad_frame_set_reg_realreg (this_trad_cache, PC_REGNUM, BROWNIE32_LNK_REGNUM);

  /* Frame ID, since it's a frameless / stackless function, no stack
     space is allocated and SP on entry is the current SP.  */
  pc = frame_pc_unwind (next_frame);
  find_pc_partial_function (pc, NULL, &start_addr, NULL);
  stack_addr = frame_unwind_register_signed (next_frame, BROWNIE32_FRM_REGNUM);
  trad_frame_set_id (this_trad_cache, frame_id_build (start_addr, stack_addr));

  /* Assume that the frame's base is the same as the
     stack-pointer.  */
  trad_frame_set_this_base (this_trad_cache, stack_addr);

  return this_trad_cache;
}

static void
brownie32_stub_frame_this_id (struct frame_info *next_frame, void **this_cache,
			 struct frame_id *this_id)
{
  struct trad_frame_cache *this_trad_cache
    = brownie32_stub_frame_cache (next_frame, this_cache);
  trad_frame_get_id (this_trad_cache, this_id);
}

static void
brownie32_stub_frame_prev_register (struct frame_info *next_frame,
				 void **this_cache,
				 int regnum, int *optimizedp,
				 enum lval_type *lvalp, CORE_ADDR *addrp,
				 int *realnump, gdb_byte *valuep)
{
  struct trad_frame_cache *this_trad_cache
    = brownie32_stub_frame_cache (next_frame, this_cache);
  trad_frame_get_register (this_trad_cache, next_frame, regnum, optimizedp,
			   lvalp, addrp, realnump, valuep);
}

static const struct frame_unwind brownie32_stub_frame_unwind =
{
  NORMAL_FRAME,
  brownie32_stub_frame_this_id,
  brownie32_stub_frame_prev_register
};

static const struct frame_unwind *
brownie32_stub_frame_sniffer (struct frame_info *next_frame)
{
  struct obj_section *s;
  CORE_ADDR pc = frame_pc_unwind (next_frame);

  if (in_plt_section (pc, NULL))
    return &brownie32_stub_frame_unwind;

  /* Binutils for BROWNIE32 puts lazy resolution stubs into .BROWNIE32.stubs.  */
  s = find_pc_section (pc);

  if (s != NULL
      && strcmp (bfd_get_section_name (s->objfile->obfd, s->the_bfd_section),
		 ".BROWNIE32.stubs") == 0)
    return &brownie32_stub_frame_unwind;

  return NULL;
}

static CORE_ADDR
brownie32_stub_frame_base_address (struct frame_info *next_frame,
			      void **this_cache)
{
  struct trad_frame_cache *this_trad_cache
    = brownie32_stub_frame_cache (next_frame, this_cache);
  return trad_frame_get_this_base (this_trad_cache);
}

static const struct frame_base brownie32_stub_frame_base =
{
  &brownie32_stub_frame_unwind,
  brownie32_stub_frame_base_address,
  brownie32_stub_frame_base_address,
  brownie32_stub_frame_base_address
};

static const struct frame_base *
brownie32_stub_frame_base_sniffer (struct frame_info *next_frame)
{
  if (brownie32_stub_frame_sniffer (next_frame) != NULL)
    return &brownie32_stub_frame_base;
  else
    return NULL;
}

static CORE_ADDR
read_next_frame_reg (struct frame_info *fi, int regno)
{
  /* Always a pseudo.  */
  gdb_assert (regno >= NUM_REGS);
  if (fi == NULL)
    {
      LONGEST val;
      regcache_cooked_read_signed (current_regcache, regno, &val);
      return val;
    }
  else
    return frame_unwind_register_signed (fi, regno);

}

/* brownie32_addr_bits_remove - remove useless address bits  */

static CORE_ADDR
brownie32_addr_bits_remove (CORE_ADDR addr)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (current_gdbarch);
#if 000
  if (brownie32_mask_address_p (tdep) && (((ULONGEST) addr) >> 32 == 0xffffffffUL))
    /* This hack is a work-around for existing boards using PMON, the
       simulator, and any other 64-bit targets that doesn't have true
       64-bit addressing.  On these targets, the upper 32 bits of
       addresses are ignored by the hardware.  Thus, the PC or SP are
       likely to have been sign extended to all 1s by instruction
       sequences that load 32-bit addresses.  For example, a typical
       piece of code that loads an address is this:

       lui $r2, <upper 16 bits>
       ori $r2, <lower 16 bits>

       But the lui sign-extends the value such that the upper 32 bits
       may be all 1s.  The workaround is simply to mask off these
       bits.  In the future, gcc may be changed to support true 64-bit
       addressing, and this masking will have to be disabled.  */
    return addr &= 0xffffffffUL;
  else
    return addr;
#endif
  return addr & 0xffffffff;
}

/* brownie32_software_single_step() is called just before we want to resume
   the inferior, if we want to single-step it but there is no hardware
   or kernel single-step support (BROWNIE32 on GNU/Linux for example).  We find
   the target of the coming instruction and breakpoint it.

   single_step is also called just after the inferior stops.  If we had
   set up a simulated single-step, we undo our damage.  */

void
brownie32_software_single_step (enum target_signal sig, int insert_breakpoints_p)
{
  static CORE_ADDR next_pc;
  typedef char binsn_quantum[BREAKPOINT_MAX];
//  static binsn_quantum break_mem;
  static binsn_quantum break_mem = { 0, 0, 0, 0xd };
  CORE_ADDR pc;

  if (insert_breakpoints_p)
    {
      pc = read_register (brownie32_regnum (current_gdbarch)->pc);
      next_pc = brownie32_next_pc (pc);
//printf("DEBUG: insert breakpoints\n");
//printf("DEBUG: pc = 0x%lx, ", pc);
//printf("next_pc = 0x%lx\n", next_pc);

      target_insert_breakpoint (next_pc, break_mem);
    }
  else
    {
//printf("DEBUG: remove breakpoints\n");
//printf("DEBUG: pc = 0x%lx, ", pc);
//printf("next_pc = 0x%lx\n", next_pc);
      target_remove_breakpoint (next_pc, break_mem);
    }
}

/* Test whether the PC points to the return instruction at the
   end of a function. */

static int
brownie32_about_to_return (CORE_ADDR pc)
{
    return brownie32_fetch_instruction (pc) == 0xce;	/* jpr r3 */
}


/* This fencepost looks highly suspicious to me.  Removing it also
   seems suspicious as it could affect remote debugging across serial
   lines.  */

static CORE_ADDR
heuristic_proc_start (CORE_ADDR pc)
{
  CORE_ADDR start_pc;
  CORE_ADDR fence;
  int instlen;
  int seen_adjsp = 0;

  pc = ADDR_BITS_REMOVE (pc);
  start_pc = pc;
  fence = start_pc - heuristic_fence_post;
  if (start_pc == 0)
    return 0;

  if (heuristic_fence_post == UINT_MAX || fence < VM_MIN_ADDRESS)
    fence = VM_MIN_ADDRESS;
  instlen = BROWNIE32_INSN32_SIZE;
  /* search back for previous return */
  for (start_pc -= instlen;; start_pc -= instlen)
    if (start_pc < fence)
      {
	/* It's not clear to me why we reach this point when
	   stop_soon, but with this test, at least we
	   don't print out warnings for every child forked (eg, on
	   decstation).  22apr93 rich@cygnus.com.  */
	if (stop_soon == NO_STOP_QUIETLY)
	  {
	    static int blurb_printed = 0;

	    warning (_("GDB can't find the start of the function at 0x%s."),
		     paddr_nz (pc));

	    if (!blurb_printed)
	      {
		/* This actually happens frequently in embedded
		   development, when you first connect to a board
		   and your stack pointer and pc are nowhere in
		   particular.  This message needs to give people
		   in that situation enough information to
		   determine that it's no big deal.  */
		printf_filtered ("\n\
    GDB is unable to find the start of the function at 0x%s\n\
and thus can't determine the size of that function's stack frame.\n\
This means that GDB may be unable to access that stack frame, or\n\
the frames below it.\n\
    This problem is most likely caused by an invalid program counter or\n\
stack pointer.\n\
    However, if you think GDB should simply search farther back\n\
from 0x%s for code which looks like the beginning of a\n\
function, you can increase the range of the search using the `set\n\
heuristic-fence-post' command.\n", paddr_nz (pc), paddr_nz (pc));
		blurb_printed = 1;
	      }
	  }

	return 0;
      }
    else if (brownie32_about_to_return (start_pc))
      {
	/* Skip return.  */
//	start_pc += 2 * BROWNIE32_INSN32_SIZE;
	start_pc += BROWNIE32_INSN32_SIZE;
	break;
      }

  return start_pc;
}

struct brownie32_objfile_private
{
  bfd_size_type size;
  char *contents;
};

/* According to the current ABI, should the type be passed in a
   floating-point register (assuming that there is space)?  When there
   is no FPU, FP are not even considered as possibile candidates for
   FP registers and, consequently this returns false - forces FP
   arguments into integer registers. */

static int
fp_register_arg_p (enum type_code typecode, struct type *arg_type)
{
  return ((typecode == TYPE_CODE_FLT
	   || (BROWNIE32_EABI
	       && (typecode == TYPE_CODE_STRUCT
		   || typecode == TYPE_CODE_UNION)
	       && TYPE_NFIELDS (arg_type) == 1
	       && TYPE_CODE (TYPE_FIELD_TYPE (arg_type, 0)) == TYPE_CODE_FLT))
	  && BROWNIE32_FPU_TYPE != BROWNIE32_FPU_NONE);
}

/* On o32, argument passing in GPRs depends on the alignment of the type being
   passed.  Return 1 if this type must be aligned to a doubleword boundary. */

static int
brownie32_type_needs_double_align (struct type *type)
{
  enum type_code typecode = TYPE_CODE (type);

  if (typecode == TYPE_CODE_FLT && TYPE_LENGTH (type) == 8)
    return 1;
  else if (typecode == TYPE_CODE_STRUCT)
    {
      if (TYPE_NFIELDS (type) < 1)
	return 0;
      return brownie32_type_needs_double_align (TYPE_FIELD_TYPE (type, 0));
    }
  else if (typecode == TYPE_CODE_UNION)
    {
      int i, n;

      n = TYPE_NFIELDS (type);
      for (i = 0; i < n; i++)
	if (brownie32_type_needs_double_align (TYPE_FIELD_TYPE (type, i)))
	  return 1;
      return 0;
    }
  return 0;
}

/* Adjust the address downward (direction of stack growth) so that it
   is correctly aligned for a new stack frame.  */
static CORE_ADDR
brownie32_frame_align (struct gdbarch *gdbarch, CORE_ADDR addr)
{
  return align_down (addr, 16);
}

static CORE_ADDR
brownie32_eabi_push_dummy_call (struct gdbarch *gdbarch, struct value *function,
			   struct regcache *regcache, CORE_ADDR bp_addr,
			   int nargs, struct value **args, CORE_ADDR sp,
			   int struct_return, CORE_ADDR struct_addr)
{
  int argreg;
  int float_argreg;
  int argnum;
  int len = 0;
  int stack_offset = 0;
  struct gdbarch_tdep *tdep = gdbarch_tdep (gdbarch);
  CORE_ADDR func_addr = find_function_addr (function, NULL);

  /* For shared libraries, "t9" needs to point at the function
     address.  */
//  regcache_cooked_write_signed (regcache, BROWNIE32_T9_REGNUM, func_addr);

  /* Set the return address register to point to the entry point of
     the program, where a breakpoint lies in wait.  */
  regcache_cooked_write_signed (regcache, BROWNIE32_LNK_REGNUM, bp_addr);

  /* First ensure that the stack and structure return address (if any)
     are properly aligned.  The stack has to be at least 64-bit
     aligned even on 32-bit machines, because doubles must be 64-bit
     aligned.  For n32 and n64, stack frames need to be 128-bit
     aligned, so we round to this widest known alignment.  */

  sp = align_down (sp, 16);
  struct_addr = align_down (struct_addr, 16);

  /* Now make space on the stack for the args.  We allocate more
     than necessary for EABI, because the first few arguments are
     passed in registers, but that's OK.  */
  for (argnum = 0; argnum < nargs; argnum++)
    len += align_up (TYPE_LENGTH (value_type (args[argnum])),
		     brownie32_stack_argsize (gdbarch));
  sp -= align_up (len, 16);

  if (brownie32_debug)
    fprintf_unfiltered (gdb_stdlog,
			"brownie32_eabi_push_dummy_call: sp=0x%s allocated %ld\n",
			paddr_nz (sp), (long) align_up (len, 16));


  /* The struct_return pointer occupies the first parameter-passing reg.  */
  if (struct_return)
    {
      if (brownie32_debug)
	fprintf_unfiltered (gdb_stdlog,
			    "brownie32_eabi_push_dummy_call: struct_return reg=%d 0x%s\n",
			    argreg, paddr_nz (struct_addr));
      write_register (argreg++, struct_addr);
    }

  /* Now load as many as possible of the first arguments into
     registers, and push the rest onto the stack.  Loop thru args
     from first to last.  */
  for (argnum = 0; argnum < nargs; argnum++)
    {
      const gdb_byte *val;
      gdb_byte valbuf[MAX_REGISTER_SIZE];
      struct value *arg = args[argnum];
      struct type *arg_type = check_typedef (value_type (arg));
      int len = TYPE_LENGTH (arg_type);
      enum type_code typecode = TYPE_CODE (arg_type);

      if (brownie32_debug)
	fprintf_unfiltered (gdb_stdlog,
			    "brownie32_eabi_push_dummy_call: %d len=%d type=%d",
			    argnum + 1, len, (int) typecode);

      /* The EABI passes structures that do not fit in a register by
         reference.  */
      if (len > brownie32_abi_regsize (gdbarch)
	  && (typecode == TYPE_CODE_STRUCT || typecode == TYPE_CODE_UNION))
	{
	  store_unsigned_integer (valbuf, brownie32_abi_regsize (gdbarch),
				  VALUE_ADDRESS (arg));
	  typecode = TYPE_CODE_PTR;
	  len = brownie32_abi_regsize (gdbarch);
	  val = valbuf;
	  if (brownie32_debug)
	    fprintf_unfiltered (gdb_stdlog, " push");
	}
      else
	val = value_contents (arg);

      /* 32-bit ABIs always start floating point arguments in an
         even-numbered floating point register.  Round the FP register
         up before the check to see if there are any FP registers
         left.  Non BROWNIE32_EABI targets also pass the FP in the integer
         registers so also round up normal registers.  */
      if (brownie32_abi_regsize (gdbarch) < 8
	  && fp_register_arg_p (typecode, arg_type))
	{
	  if ((float_argreg & 1))
	    float_argreg++;
	}

      /* Floating point arguments passed in registers have to be
         treated specially.  On 32-bit architectures, doubles
         are passed in register pairs; the even register gets
         the low word, and the odd register gets the high word.
         On non-EABI processors, the first two floating point arguments are
         also copied to general registers, because BROWNIE3216 functions
         don't use float registers for arguments.  This duplication of
         arguments in general registers can't hurt non-BROWNIE3216 functions
         because those registers are normally skipped.  */
      /* BROWNIE32_EABI squeezes a struct that contains a single floating
         point value into an FP register instead of pushing it onto the
         stack.  */
      if (fp_register_arg_p (typecode, arg_type)
	  && float_argreg <= BROWNIE32_LAST_FP_ARG_REGNUM)
	{
	  if (brownie32_abi_regsize (gdbarch) < 8 && len == 8)
	    {
	      int low_offset = TARGET_BYTE_ORDER == BFD_ENDIAN_BIG ? 4 : 0;
	      unsigned long regval;

	      /* Write the low word of the double to the even register(s).  */
	      regval = extract_unsigned_integer (val + low_offset, 4);
	      if (brownie32_debug)
		fprintf_unfiltered (gdb_stdlog, " - fpreg=%d val=%s",
				    float_argreg, phex (regval, 4));
	      write_register (float_argreg++, regval);

	      /* Write the high word of the double to the odd register(s).  */
	      regval = extract_unsigned_integer (val + 4 - low_offset, 4);
	      if (brownie32_debug)
		fprintf_unfiltered (gdb_stdlog, " - fpreg=%d val=%s",
				    float_argreg, phex (regval, 4));
	      write_register (float_argreg++, regval);
	    }
	  else
	    {
	      /* This is a floating point value that fits entirely
	         in a single register.  */
	      /* On 32 bit ABI's the float_argreg is further adjusted
	         above to ensure that it is even register aligned.  */
	      LONGEST regval = extract_unsigned_integer (val, len);
	      if (brownie32_debug)
		fprintf_unfiltered (gdb_stdlog, " - fpreg=%d val=%s",
				    float_argreg, phex (regval, len));
	      write_register (float_argreg++, regval);
	    }
	}
      else
	{
	  /* Copy the argument to general registers or the stack in
	     register-sized pieces.  Large arguments are split between
	     registers and stack.  */
	  /* Note: structs whose size is not a multiple of
	     brownie32_abi_regsize() are treated specially: Irix cc passes
	     them in registers where gcc sometimes puts them on the
	     stack.  For maximum compatibility, we will put them in
	     both places.  */
	  int odd_sized_struct = ((len > brownie32_abi_regsize (gdbarch))
				  && (len % brownie32_abi_regsize (gdbarch) != 0));

	  /* Note: Floating-point values that didn't fit into an FP
	     register are only written to memory.  */
	  while (len > 0)
	    {
	      /* Remember if the argument was written to the stack.  */
	      int stack_used_p = 0;
	      int partial_len = (len < brownie32_abi_regsize (gdbarch)
				 ? len : brownie32_abi_regsize (gdbarch));

	      if (brownie32_debug)
		fprintf_unfiltered (gdb_stdlog, " -- partial=%d",
				    partial_len);

	      /* Write this portion of the argument to the stack.  */
	      if (argreg > BROWNIE32_LAST_ARG_REGNUM
		  || odd_sized_struct
		  || fp_register_arg_p (typecode, arg_type))
		{
		  /* Should shorter than int integer values be
		     promoted to int before being stored? */
		  int longword_offset = 0;
		  CORE_ADDR addr;
		  stack_used_p = 1;
		  if (TARGET_BYTE_ORDER == BFD_ENDIAN_BIG)
		    {
		      if (brownie32_stack_argsize (gdbarch) == 8
			  && (typecode == TYPE_CODE_INT
			      || typecode == TYPE_CODE_PTR
			      || typecode == TYPE_CODE_FLT) && len <= 4)
			longword_offset = brownie32_stack_argsize (gdbarch) - len;
		      else if ((typecode == TYPE_CODE_STRUCT
				|| typecode == TYPE_CODE_UNION)
			       && (TYPE_LENGTH (arg_type)
				   < brownie32_stack_argsize (gdbarch)))
			longword_offset = brownie32_stack_argsize (gdbarch) - len;
		    }

		  if (brownie32_debug)
		    {
		      fprintf_unfiltered (gdb_stdlog, " - stack_offset=0x%s",
					  paddr_nz (stack_offset));
		      fprintf_unfiltered (gdb_stdlog, " longword_offset=0x%s",
					  paddr_nz (longword_offset));
		    }

		  addr = sp + stack_offset + longword_offset;

		  if (brownie32_debug)
		    {
		      int i;
		      fprintf_unfiltered (gdb_stdlog, " @0x%s ",
					  paddr_nz (addr));
		      for (i = 0; i < partial_len; i++)
			{
			  fprintf_unfiltered (gdb_stdlog, "%02x",
					      val[i] & 0xff);
			}
		    }
		  write_memory (addr, val, partial_len);
		}

	      /* Note!!! This is NOT an else clause.  Odd sized
	         structs may go thru BOTH paths.  Floating point
	         arguments will not.  */
	      /* Write this portion of the argument to a general
	         purpose register.  */
	      if (argreg <= BROWNIE32_LAST_ARG_REGNUM
		  && !fp_register_arg_p (typecode, arg_type))
		{
		  LONGEST regval =
		    extract_unsigned_integer (val, partial_len);

		  if (brownie32_debug)
		    fprintf_filtered (gdb_stdlog, " - reg=%d val=%s",
				      argreg,
				      phex (regval,
					    brownie32_abi_regsize (gdbarch)));
		  write_register (argreg, regval);
		  argreg++;
		}

	      len -= partial_len;
	      val += partial_len;

	      /* Compute the the offset into the stack at which we
	         will copy the next parameter.

	         In the new EABI (and the NABI32), the stack_offset
	         only needs to be adjusted when it has been used.  */

	      if (stack_used_p)
		stack_offset += align_up (partial_len,
					  brownie32_stack_argsize (gdbarch));
	    }
	}
      if (brownie32_debug)
	fprintf_unfiltered (gdb_stdlog, "\n");
    }

  regcache_cooked_write_signed (regcache, BROWNIE32_SP_REGNUM, sp);

  /* Return adjusted stack pointer.  */
  return sp;
}

/* Determin the return value convention being used.  */

static enum return_value_convention
brownie32_eabi_return_value (struct gdbarch *gdbarch,
			struct type *type, struct regcache *regcache,
			gdb_byte *readbuf, const gdb_byte *writebuf)
{
  if (TYPE_LENGTH (type) > 2 * brownie32_abi_regsize (gdbarch))
    return RETURN_VALUE_STRUCT_CONVENTION;
  if (readbuf)
    memset (readbuf, 0, TYPE_LENGTH (type));
  return RETURN_VALUE_REGISTER_CONVENTION;
}


/* N32/N64 ABI stuff.  */

static CORE_ADDR
brownie32_n32n64_push_dummy_call (struct gdbarch *gdbarch, struct value *function,
			     struct regcache *regcache, CORE_ADDR bp_addr,
			     int nargs, struct value **args, CORE_ADDR sp,
			     int struct_return, CORE_ADDR struct_addr)
{
  int argreg;
  int float_argreg;
  int argnum;
  int len = 0;
  int stack_offset = 0;
  struct gdbarch_tdep *tdep = gdbarch_tdep (gdbarch);
  CORE_ADDR func_addr = find_function_addr (function, NULL);

  /* For shared libraries, "t9" needs to point at the function
     address.  */
//  regcache_cooked_write_signed (regcache, BROWNIE32_T9_REGNUM, func_addr);

  /* Set the return address register to point to the entry point of
     the program, where a breakpoint lies in wait.  */
  regcache_cooked_write_signed (regcache, BROWNIE32_LNK_REGNUM, bp_addr);

  /* First ensure that the stack and structure return address (if any)
     are properly aligned.  The stack has to be at least 64-bit
     aligned even on 32-bit machines, because doubles must be 64-bit
     aligned.  For n32 and n64, stack frames need to be 128-bit
     aligned, so we round to this widest known alignment.  */

  sp = align_down (sp, 16);
  struct_addr = align_down (struct_addr, 16);

  /* Now make space on the stack for the args.  */
  for (argnum = 0; argnum < nargs; argnum++)
    len += align_up (TYPE_LENGTH (value_type (args[argnum])),
		     brownie32_stack_argsize (gdbarch));
  sp -= align_up (len, 16);

  if (brownie32_debug)
    fprintf_unfiltered (gdb_stdlog,
			"brownie32_n32n64_push_dummy_call: sp=0x%s allocated %ld\n",
			paddr_nz (sp), (long) align_up (len, 16));

  /* The struct_return pointer occupies the first parameter-passing reg.  */
  if (struct_return)
    {
      if (brownie32_debug)
	fprintf_unfiltered (gdb_stdlog,
			    "brownie32_n32n64_push_dummy_call: struct_return reg=%d 0x%s\n",
			    argreg, paddr_nz (struct_addr));
      write_register (argreg++, struct_addr);
    }

  /* Now load as many as possible of the first arguments into
     registers, and push the rest onto the stack.  Loop thru args
     from first to last.  */
  for (argnum = 0; argnum < nargs; argnum++)
    {
      const gdb_byte *val;
      struct value *arg = args[argnum];
      struct type *arg_type = check_typedef (value_type (arg));
      int len = TYPE_LENGTH (arg_type);
      enum type_code typecode = TYPE_CODE (arg_type);

      if (brownie32_debug)
	fprintf_unfiltered (gdb_stdlog,
			    "brownie32_n32n64_push_dummy_call: %d len=%d type=%d",
			    argnum + 1, len, (int) typecode);

      val = value_contents (arg);

      if (fp_register_arg_p (typecode, arg_type)
	  && float_argreg <= BROWNIE32_LAST_FP_ARG_REGNUM)
	{
	  /* This is a floating point value that fits entirely
	     in a single register.  */
	  /* On 32 bit ABI's the float_argreg is further adjusted
	     above to ensure that it is even register aligned.  */
	  LONGEST regval = extract_unsigned_integer (val, len);
	  if (brownie32_debug)
	    fprintf_unfiltered (gdb_stdlog, " - fpreg=%d val=%s",
				float_argreg, phex (regval, len));
	  write_register (float_argreg++, regval);

	  if (brownie32_debug)
	    fprintf_unfiltered (gdb_stdlog, " - reg=%d val=%s",
				argreg, phex (regval, len));
	  write_register (argreg, regval);
	  argreg += 1;
	}
      else
	{
	  /* Copy the argument to general registers or the stack in
	     register-sized pieces.  Large arguments are split between
	     registers and stack.  */
	  /* Note: structs whose size is not a multiple of
	     brownie32_abi_regsize() are treated specially: Irix cc passes
	     them in registers where gcc sometimes puts them on the
	     stack.  For maximum compatibility, we will put them in
	     both places.  */
	  int odd_sized_struct = ((len > brownie32_abi_regsize (gdbarch))
				  && (len % brownie32_abi_regsize (gdbarch) != 0));
	  /* Note: Floating-point values that didn't fit into an FP
	     register are only written to memory.  */
	  while (len > 0)
	    {
	      /* Rememer if the argument was written to the stack.  */
	      int stack_used_p = 0;
	      int partial_len = (len < brownie32_abi_regsize (gdbarch)
				 ? len : brownie32_abi_regsize (gdbarch));

	      if (brownie32_debug)
		fprintf_unfiltered (gdb_stdlog, " -- partial=%d",
				    partial_len);

	      /* Write this portion of the argument to the stack.  */
	      if (argreg > BROWNIE32_LAST_ARG_REGNUM
		  || odd_sized_struct
		  || fp_register_arg_p (typecode, arg_type))
		{
		  /* Should shorter than int integer values be
		     promoted to int before being stored? */
		  int longword_offset = 0;
		  CORE_ADDR addr;
		  stack_used_p = 1;
		  if (TARGET_BYTE_ORDER == BFD_ENDIAN_BIG)
		    {
		      if (brownie32_stack_argsize (gdbarch) == 8
			  && (typecode == TYPE_CODE_INT
			      || typecode == TYPE_CODE_PTR
			      || typecode == TYPE_CODE_FLT) && len <= 4)
			longword_offset = brownie32_stack_argsize (gdbarch) - len;
		    }

		  if (brownie32_debug)
		    {
		      fprintf_unfiltered (gdb_stdlog, " - stack_offset=0x%s",
					  paddr_nz (stack_offset));
		      fprintf_unfiltered (gdb_stdlog, " longword_offset=0x%s",
					  paddr_nz (longword_offset));
		    }

		  addr = sp + stack_offset + longword_offset;

		  if (brownie32_debug)
		    {
		      int i;
		      fprintf_unfiltered (gdb_stdlog, " @0x%s ",
					  paddr_nz (addr));
		      for (i = 0; i < partial_len; i++)
			{
			  fprintf_unfiltered (gdb_stdlog, "%02x",
					      val[i] & 0xff);
			}
		    }
		  write_memory (addr, val, partial_len);
		}

	      /* Note!!! This is NOT an else clause.  Odd sized
	         structs may go thru BOTH paths.  Floating point
	         arguments will not.  */
	      /* Write this portion of the argument to a general
	         purpose register.  */
	      if (argreg <= BROWNIE32_LAST_ARG_REGNUM
		  && !fp_register_arg_p (typecode, arg_type))
		{
		  LONGEST regval =
		    extract_unsigned_integer (val, partial_len);

		  /* A non-floating-point argument being passed in a
		     general register.  If a struct or union, and if
		     the remaining length is smaller than the register
		     size, we have to adjust the register value on
		     big endian targets.

		     It does not seem to be necessary to do the
		     same for integral types.

		     cagney/2001-07-23: gdb/179: Also, GCC, when
		     outputting LE O32 with sizeof (struct) <
		     brownie32_abi_regsize(), generates a left shift as
		     part of storing the argument in a register a
		     register (the left shift isn't generated when
		     sizeof (struct) >= brownie32_abi_regsize()).  Since
		     it is quite possible that this is GCC
		     contradicting the LE/O32 ABI, GDB has not been
		     adjusted to accommodate this.  Either someone
		     needs to demonstrate that the LE/O32 ABI
		     specifies such a left shift OR this new ABI gets
		     identified as such and GDB gets tweaked
		     accordingly.  */

		  if (TARGET_BYTE_ORDER == BFD_ENDIAN_BIG
		      && partial_len < brownie32_abi_regsize (gdbarch)
		      && (typecode == TYPE_CODE_STRUCT ||
			  typecode == TYPE_CODE_UNION))
		    regval <<= ((brownie32_abi_regsize (gdbarch) - partial_len) *
				TARGET_CHAR_BIT);

		  if (brownie32_debug)
		    fprintf_filtered (gdb_stdlog, " - reg=%d val=%s",
				      argreg,
				      phex (regval,
					    brownie32_abi_regsize (gdbarch)));
		  write_register (argreg, regval);
		  argreg++;
		}

	      len -= partial_len;
	      val += partial_len;

	      /* Compute the the offset into the stack at which we
	         will copy the next parameter.

	         In N32 (N64?), the stack_offset only needs to be
	         adjusted when it has been used.  */

	      if (stack_used_p)
		stack_offset += align_up (partial_len,
					  brownie32_stack_argsize (gdbarch));
	    }
	}
      if (brownie32_debug)
	fprintf_unfiltered (gdb_stdlog, "\n");
    }

  regcache_cooked_write_signed (regcache, BROWNIE32_SP_REGNUM, sp);

  /* Return adjusted stack pointer.  */
  return sp;
}

static enum return_value_convention
brownie32_n32n64_return_value (struct gdbarch *gdbarch,
			  struct type *type, struct regcache *regcache,
			  gdb_byte *readbuf, const gdb_byte *writebuf)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (current_gdbarch);
  if (TYPE_CODE (type) == TYPE_CODE_STRUCT
      || TYPE_CODE (type) == TYPE_CODE_UNION
      || TYPE_CODE (type) == TYPE_CODE_ARRAY
      || TYPE_LENGTH (type) > 2 * brownie32_abi_regsize (gdbarch))
    return RETURN_VALUE_STRUCT_CONVENTION;
  else if (TYPE_CODE (type) == TYPE_CODE_STRUCT
	   || TYPE_CODE (type) == TYPE_CODE_UNION)
    {
      /* A structure or union.  Extract the left justified value,
         regardless of the byte order.  I.e. DO NOT USE
         brownie32_xfer_lower.  */
      int offset;
      int regnum;
      return RETURN_VALUE_REGISTER_CONVENTION;
    }
  else
    {
      /* A scalar extract each part but least-significant-byte
         justified.  */
      int offset;
      int regnum;
      return RETURN_VALUE_REGISTER_CONVENTION;
    }
}

/* O32 ABI stuff.  */

static CORE_ADDR
brownie32_o32_push_dummy_call (struct gdbarch *gdbarch, struct value *function,
			  struct regcache *regcache, CORE_ADDR bp_addr,
			  int nargs, struct value **args, CORE_ADDR sp,
			  int struct_return, CORE_ADDR struct_addr)
{
  int argreg;
  int float_argreg;
  int argnum;
  int len = 0;
  int stack_offset = 0;
  struct gdbarch_tdep *tdep = gdbarch_tdep (gdbarch);
  CORE_ADDR func_addr = find_function_addr (function, NULL);

  /* For shared libraries, "t9" needs to point at the function
     address.  */
//  regcache_cooked_write_signed (regcache, BROWNIE32_T9_REGNUM, func_addr);

  /* Set the return address register to point to the entry point of
     the program, where a breakpoint lies in wait.  */
  regcache_cooked_write_signed (regcache, BROWNIE32_LNK_REGNUM, bp_addr);

  /* First ensure that the stack and structure return address (if any)
     are properly aligned.  The stack has to be at least 64-bit
     aligned even on 32-bit machines, because doubles must be 64-bit
     aligned.  For n32 and n64, stack frames need to be 128-bit
     aligned, so we round to this widest known alignment.  */

  sp = align_down (sp, 16);
  struct_addr = align_down (struct_addr, 16);

  /* Now make space on the stack for the args.  */
  for (argnum = 0; argnum < nargs; argnum++)
    len += align_up (TYPE_LENGTH (value_type (args[argnum])),
		     brownie32_stack_argsize (gdbarch));
  sp -= align_up (len, 16);

  if (brownie32_debug)
    fprintf_unfiltered (gdb_stdlog,
			"brownie32_o32_push_dummy_call: sp=0x%s allocated %ld\n",
			paddr_nz (sp), (long) align_up (len, 16));

  /* The struct_return pointer occupies the first parameter-passing reg.  */
  if (struct_return)
    {
      if (brownie32_debug)
	fprintf_unfiltered (gdb_stdlog,
			    "brownie32_o32_push_dummy_call: struct_return reg=%d 0x%s\n",
			    argreg, paddr_nz (struct_addr));
      write_register (argreg++, struct_addr);
      stack_offset += brownie32_stack_argsize (gdbarch);
    }

  /* Now load as many as possible of the first arguments into
     registers, and push the rest onto the stack.  Loop thru args
     from first to last.  */
  for (argnum = 0; argnum < nargs; argnum++)
    {
      const gdb_byte *val;
      struct value *arg = args[argnum];
      struct type *arg_type = check_typedef (value_type (arg));
      int len = TYPE_LENGTH (arg_type);
      enum type_code typecode = TYPE_CODE (arg_type);

      if (brownie32_debug)
	fprintf_unfiltered (gdb_stdlog,
			    "brownie32_o32_push_dummy_call: %d len=%d type=%d",
			    argnum + 1, len, (int) typecode);

      val = value_contents (arg);

      /* 32-bit ABIs always start floating point arguments in an
         even-numbered floating point register.  Round the FP register
         up before the check to see if there are any FP registers
         left.  O32/O64 targets also pass the FP in the integer
         registers so also round up normal registers.  */
      if (brownie32_abi_regsize (gdbarch) < 8
	  && fp_register_arg_p (typecode, arg_type))
	{
	  if ((float_argreg & 1))
	    float_argreg++;
	}

      /* Floating point arguments passed in registers have to be
         treated specially.  On 32-bit architectures, doubles
         are passed in register pairs; the even register gets
         the low word, and the odd register gets the high word.
         On O32/O64, the first two floating point arguments are
         also copied to general registers, because BROWNIE3216 functions
         don't use float registers for arguments.  This duplication of
         arguments in general registers can't hurt non-BROWNIE3216 functions
         because those registers are normally skipped.  */

      if (fp_register_arg_p (typecode, arg_type)
	  && float_argreg <= BROWNIE32_LAST_FP_ARG_REGNUM)
	{
	  if (brownie32_abi_regsize (gdbarch) < 8 && len == 8)
	    {
	      int low_offset = TARGET_BYTE_ORDER == BFD_ENDIAN_BIG ? 4 : 0;
	      unsigned long regval;

	      /* Write the low word of the double to the even register(s).  */
	      regval = extract_unsigned_integer (val + low_offset, 4);
	      if (brownie32_debug)
		fprintf_unfiltered (gdb_stdlog, " - fpreg=%d val=%s",
				    float_argreg, phex (regval, 4));
	      write_register (float_argreg++, regval);
	      if (brownie32_debug)
		fprintf_unfiltered (gdb_stdlog, " - reg=%d val=%s",
				    argreg, phex (regval, 4));
	      write_register (argreg++, regval);

	      /* Write the high word of the double to the odd register(s).  */
	      regval = extract_unsigned_integer (val + 4 - low_offset, 4);
	      if (brownie32_debug)
		fprintf_unfiltered (gdb_stdlog, " - fpreg=%d val=%s",
				    float_argreg, phex (regval, 4));
	      write_register (float_argreg++, regval);

	      if (brownie32_debug)
		fprintf_unfiltered (gdb_stdlog, " - reg=%d val=%s",
				    argreg, phex (regval, 4));
	      write_register (argreg++, regval);
	    }
	  else
	    {
	      /* This is a floating point value that fits entirely
	         in a single register.  */
	      /* On 32 bit ABI's the float_argreg is further adjusted
	         above to ensure that it is even register aligned.  */
	      LONGEST regval = extract_unsigned_integer (val, len);
	      if (brownie32_debug)
		fprintf_unfiltered (gdb_stdlog, " - fpreg=%d val=%s",
				    float_argreg, phex (regval, len));
	      write_register (float_argreg++, regval);
	      /* CAGNEY: 32 bit BROWNIE32 ABI's always reserve two FP
	         registers for each argument.  The below is (my
	         guess) to ensure that the corresponding integer
	         register has reserved the same space.  */
	      if (brownie32_debug)
		fprintf_unfiltered (gdb_stdlog, " - reg=%d val=%s",
				    argreg, phex (regval, len));
	      write_register (argreg, regval);
	      argreg += (brownie32_abi_regsize (gdbarch) == 8) ? 1 : 2;
	    }
	  /* Reserve space for the FP register.  */
	  stack_offset += align_up (len, brownie32_stack_argsize (gdbarch));
	}
      else
	{
	  /* Copy the argument to general registers or the stack in
	     register-sized pieces.  Large arguments are split between
	     registers and stack.  */
	  /* Note: structs whose size is not a multiple of
	     brownie32_abi_regsize() are treated specially: Irix cc passes
	     them in registers where gcc sometimes puts them on the
	     stack.  For maximum compatibility, we will put them in
	     both places.  */
	  int odd_sized_struct = ((len > brownie32_abi_regsize (gdbarch))
				  && (len % brownie32_abi_regsize (gdbarch) != 0));
	  /* Structures should be aligned to eight bytes (even arg registers)
	     on BROWNIE32_ABI_O32, if their first member has double precision.  */
	  if (brownie32_abi_regsize (gdbarch) < 8
	      && brownie32_type_needs_double_align (arg_type))
	    {
	      if ((argreg & 1))
		argreg++;
	    }
	  /* Note: Floating-point values that didn't fit into an FP
	     register are only written to memory.  */
	  while (len > 0)
	    {
	      /* Remember if the argument was written to the stack.  */
	      int stack_used_p = 0;
	      int partial_len = (len < brownie32_abi_regsize (gdbarch)
				 ? len : brownie32_abi_regsize (gdbarch));

	      if (brownie32_debug)
		fprintf_unfiltered (gdb_stdlog, " -- partial=%d",
				    partial_len);

	      /* Write this portion of the argument to the stack.  */
	      if (argreg > BROWNIE32_LAST_ARG_REGNUM
		  || odd_sized_struct
		  || fp_register_arg_p (typecode, arg_type))
		{
		  /* Should shorter than int integer values be
		     promoted to int before being stored? */
		  int longword_offset = 0;
		  CORE_ADDR addr;
		  stack_used_p = 1;
		  if (TARGET_BYTE_ORDER == BFD_ENDIAN_BIG)
		    {
		      if (brownie32_stack_argsize (gdbarch) == 8
			  && (typecode == TYPE_CODE_INT
			      || typecode == TYPE_CODE_PTR
			      || typecode == TYPE_CODE_FLT) && len <= 4)
			longword_offset = brownie32_stack_argsize (gdbarch) - len;
		    }

		  if (brownie32_debug)
		    {
		      fprintf_unfiltered (gdb_stdlog, " - stack_offset=0x%s",
					  paddr_nz (stack_offset));
		      fprintf_unfiltered (gdb_stdlog, " longword_offset=0x%s",
					  paddr_nz (longword_offset));
		    }

		  addr = sp + stack_offset + longword_offset;

		  if (brownie32_debug)
		    {
		      int i;
		      fprintf_unfiltered (gdb_stdlog, " @0x%s ",
					  paddr_nz (addr));
		      for (i = 0; i < partial_len; i++)
			{
			  fprintf_unfiltered (gdb_stdlog, "%02x",
					      val[i] & 0xff);
			}
		    }
		  write_memory (addr, val, partial_len);
		}

	      /* Note!!! This is NOT an else clause.  Odd sized
	         structs may go thru BOTH paths.  Floating point
	         arguments will not.  */
	      /* Write this portion of the argument to a general
	         purpose register.  */
	      if (argreg <= BROWNIE32_LAST_ARG_REGNUM
		  && !fp_register_arg_p (typecode, arg_type))
		{
		  LONGEST regval = extract_signed_integer (val, partial_len);
		  /* Value may need to be sign extended, because
		     brownie32_isa_regsize() != brownie32_abi_regsize().  */

		  /* A non-floating-point argument being passed in a
		     general register.  If a struct or union, and if
		     the remaining length is smaller than the register
		     size, we have to adjust the register value on
		     big endian targets.

		     It does not seem to be necessary to do the
		     same for integral types.

		     Also don't do this adjustment on O64 binaries.

		     cagney/2001-07-23: gdb/179: Also, GCC, when
		     outputting LE O32 with sizeof (struct) <
		     brownie32_abi_regsize(), generates a left shift as
		     part of storing the argument in a register a
		     register (the left shift isn't generated when
		     sizeof (struct) >= brownie32_abi_regsize()).  Since
		     it is quite possible that this is GCC
		     contradicting the LE/O32 ABI, GDB has not been
		     adjusted to accommodate this.  Either someone
		     needs to demonstrate that the LE/O32 ABI
		     specifies such a left shift OR this new ABI gets
		     identified as such and GDB gets tweaked
		     accordingly.  */

		  if (brownie32_abi_regsize (gdbarch) < 8
		      && TARGET_BYTE_ORDER == BFD_ENDIAN_BIG
		      && partial_len < brownie32_abi_regsize (gdbarch)
		      && (typecode == TYPE_CODE_STRUCT ||
			  typecode == TYPE_CODE_UNION))
		    regval <<= ((brownie32_abi_regsize (gdbarch) - partial_len) *
				TARGET_CHAR_BIT);

		  if (brownie32_debug)
		    fprintf_filtered (gdb_stdlog, " - reg=%d val=%s",
				      argreg,
				      phex (regval,
					    brownie32_abi_regsize (gdbarch)));
		  write_register (argreg, regval);
		  argreg++;

		  /* Prevent subsequent floating point arguments from
		     being passed in floating point registers.  */
		  float_argreg = BROWNIE32_LAST_FP_ARG_REGNUM + 1;
		}

	      len -= partial_len;
	      val += partial_len;

	      /* Compute the the offset into the stack at which we
	         will copy the next parameter.

	         In older ABIs, the caller reserved space for
	         registers that contained arguments.  This was loosely
	         refered to as their "home".  Consequently, space is
	         always allocated.  */

	      stack_offset += align_up (partial_len,
					brownie32_stack_argsize (gdbarch));
	    }
	}
      if (brownie32_debug)
	fprintf_unfiltered (gdb_stdlog, "\n");
    }

  regcache_cooked_write_signed (regcache, BROWNIE32_SP_REGNUM, sp);

  /* Return adjusted stack pointer.  */
  return sp;
}

static enum return_value_convention
brownie32_o32_return_value (struct gdbarch *gdbarch, struct type *type,
		       struct regcache *regcache,
		       gdb_byte *readbuf, const gdb_byte *writebuf)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (current_gdbarch);

  if (TYPE_CODE (type) == TYPE_CODE_STRUCT
      || TYPE_CODE (type) == TYPE_CODE_UNION
      || TYPE_CODE (type) == TYPE_CODE_ARRAY)
    return RETURN_VALUE_STRUCT_CONVENTION;
  else
    {
      /* A scalar extract each part but least-significant-byte
         justified.  o32 thinks registers are 4 byte, regardless of
         the ISA.  brownie32_stack_argsize controls this.  */
      int offset;
      int regnum;
      return RETURN_VALUE_REGISTER_CONVENTION;
    }
}

static void
brownie32_print_fp_register (struct ui_file *file, struct frame_info *frame,
			int regnum)
{				/* do values for FP (float) regs */
  gdb_byte *raw_buffer;
  double doub, flt1;	/* doubles extracted from raw hex data */
  int inv1, inv2;
}

static void
brownie32_print_register (struct ui_file *file, struct frame_info *frame,
		     int regnum, int all)
{
  struct gdbarch *gdbarch = get_frame_arch (frame);
  gdb_byte raw_buffer[MAX_REGISTER_SIZE];
  int offset;
  if (TYPE_CODE (gdbarch_register_type (gdbarch, regnum)) == TYPE_CODE_FLT)
    {
      brownie32_print_fp_register (file, frame, regnum);
      return;
    }

  /* Get the data in raw format.  */
  if (!frame_register_read (frame, regnum, raw_buffer))
    {
      fprintf_filtered (file, "%s: [Invalid]", REGISTER_NAME (regnum));
      return;
    }

  fputs_filtered (REGISTER_NAME (regnum), file);

  /* The problem with printing numeric register names (r26, etc.) is that
     the user can't use them on input.  Probably the best solution is to
     fix it so that either the numeric or the funky (a2, etc.) names
     are accepted on input.  */
  if (regnum < BROWNIE32_NUMREGS)
    fprintf_filtered (file, "(r%d): ", regnum);
  else
    fprintf_filtered (file, ": ");

  if (TARGET_BYTE_ORDER == BFD_ENDIAN_BIG)
    offset =
      register_size (current_gdbarch,
		     regnum) - register_size (current_gdbarch, regnum);
  else
    offset = 0;

  print_scalar_formatted (raw_buffer + offset,
			  gdbarch_register_type (gdbarch, regnum), 'x', 0,
			  file);
}

/* Replacement for generic do_registers_info.
   Print regs in pretty columns.  */

static int
print_fp_register_row (struct ui_file *file, struct frame_info *frame,
		       int regnum)
{
  fprintf_filtered (file, " ");
  brownie32_print_fp_register (file, frame, regnum);
  fprintf_filtered (file, "\n");
  return regnum + 1;
}


/* Print a row's worth of GP (int) registers, with name labels above */

static int
print_gp_register_row (struct ui_file *file, struct frame_info *frame,
		       int start_regnum)
{
  struct gdbarch *gdbarch = get_frame_arch (frame);
  /* do values for GP (int) regs */
  gdb_byte raw_buffer[MAX_REGISTER_SIZE];
  int ncols = (brownie32_abi_regsize (gdbarch) == 8 ? 4 : 8);	/* display cols per row */
  int col, byte;
  int regnum;

  /* For GP registers, we print a separate row of names above the vals */
  fprintf_filtered (file, "     ");
  for (col = 0, regnum = start_regnum;
       col < ncols && regnum < NUM_REGS + NUM_PSEUDO_REGS; regnum++)
    {
      if (*REGISTER_NAME (regnum) == '\0')
	continue;		/* unused register */
      if (TYPE_CODE (gdbarch_register_type (gdbarch, regnum)) ==
	  TYPE_CODE_FLT)
	break;			/* end the row: reached FP register */
      fprintf_filtered (file,
			brownie32_abi_regsize (current_gdbarch) == 8 ? "%17s" : "%9s",
			REGISTER_NAME (regnum));
      col++;
    }
  /* print the R0 to R31 names */
  if ((start_regnum % NUM_REGS) < BROWNIE32_NUMREGS)
    fprintf_filtered (file, "\n R%-4d", start_regnum % NUM_REGS);
  else
    fprintf_filtered (file, "\n      ");

  /* now print the values in hex, 4 or 8 to the row */
  for (col = 0, regnum = start_regnum;
       col < ncols && regnum < NUM_REGS + NUM_PSEUDO_REGS; regnum++)
    {
      if (*REGISTER_NAME (regnum) == '\0')
	continue;		/* unused register */
      if (TYPE_CODE (gdbarch_register_type (gdbarch, regnum)) ==
	  TYPE_CODE_FLT)
	break;			/* end row: reached FP register */
      /* OK: get the data in raw format.  */
      if (!frame_register_read (frame, regnum, raw_buffer))
	error (_("can't read register %d (%s)"), regnum, REGISTER_NAME (regnum));
      /* pad small registers */
      for (byte = 0;
	   byte < (brownie32_abi_regsize (current_gdbarch)
		   - register_size (current_gdbarch, regnum)); byte++)
	printf_filtered ("  ");
      /* Now print the register value in hex, endian order. */
      if (TARGET_BYTE_ORDER == BFD_ENDIAN_BIG)
	for (byte =
	     register_size (current_gdbarch,
			    regnum) - register_size (current_gdbarch, regnum);
	     byte < register_size (current_gdbarch, regnum); byte++)
	  fprintf_filtered (file, "%02x", raw_buffer[byte]);
      else
	for (byte = register_size (current_gdbarch, regnum) - 1;
	     byte >= 0; byte--)
	  fprintf_filtered (file, "%02x", raw_buffer[byte]);
      fprintf_filtered (file, " ");
      col++;
    }
  if (col > 0)			/* ie. if we actually printed anything... */
    fprintf_filtered (file, "\n");

  return regnum;
}

/* BROWNIE32_DO_REGISTERS_INFO(): called by "info register" command */

static void
brownie32_print_registers_info (struct gdbarch *gdbarch, struct ui_file *file,
			   struct frame_info *frame, int regnum, int all)
{
  if (regnum != -1)		/* do one specified register */
    {
      gdb_assert (regnum >= NUM_REGS);
      if (*(REGISTER_NAME (regnum)) == '\0')
	error (_("Not a valid register for the current processor type"));

      brownie32_print_register (file, frame, regnum, 0);
      fprintf_filtered (file, "\n");
    }
  else
    /* do all (or most) registers */
    {
      regnum = NUM_REGS;
      while (regnum < NUM_REGS + NUM_PSEUDO_REGS)
	{
	  if (TYPE_CODE (gdbarch_register_type (gdbarch, regnum)) ==
	      TYPE_CODE_FLT)
	    {
	      if (all)		/* true for "INFO ALL-REGISTERS" command */
		regnum = print_fp_register_row (file, frame, regnum);
	      else
		regnum += BROWNIE32_NUMREGS;	/* skip floating point regs */
	    }
	  else
	    regnum = print_gp_register_row (file, frame, regnum);
	}
    }
}

/* Is this a branch with a delay slot?  */
#if 0
static int
is_delayed (unsigned long insn)
{
  int i;
  for (i = 0; i < NUMOPCODES; ++i)
    if (brownie32_opcodes[i].pinfo != INSN_MACRO
	&& (insn & brownie32_opcodes[i].mask) == brownie32_opcodes[i].match)
      break;
  return (i < NUMOPCODES
	  && (brownie32_opcodes[i].pinfo & (INSN_UNCOND_BRANCH_DELAY
				       | INSN_COND_BRANCH_DELAY
				       | INSN_COND_BRANCH_LIKELY)));
}
#endif

int
brownie32_single_step_through_delay (struct gdbarch *gdbarch,
				struct frame_info *frame)
{
    return 0;
}

/* To skip prologues, I use this predicate.  Returns either PC itself
   if the code at PC does not look like a function prologue; otherwise
   returns an address that (if we're lucky) follows the prologue.  If
   LENIENT, then we must skip everything which is involved in setting
   up the frame (it's OK to skip more, just so long as we don't skip
   anything which might clobber the registers which are being saved.
   We must skip more in the case where part of the prologue is in the
   delay slot of a non-prologue instruction).  */

static CORE_ADDR
brownie32_skip_prologue (CORE_ADDR pc)
{
  CORE_ADDR limit_pc;
  CORE_ADDR func_addr;

  /* See if we can determine the end of the prologue via the symbol table.
     If so, then return either PC, or the PC after the prologue, whichever
     is greater.  */
  if (find_pc_partial_function (pc, NULL, &func_addr, NULL))
    {
      CORE_ADDR post_prologue_pc = skip_prologue_using_sal (func_addr);
      if (post_prologue_pc != 0)
	return max (pc, post_prologue_pc);
    }

  /* Can't determine prologue from the symbol table, need to examine
     instructions.  */

  /* Find an upper limit on the function prologue using the debug
     information.  If the debug information could not be used to provide
     that bound, then use an arbitrary large number as the upper bound.  */
  limit_pc = skip_prologue_using_sal (pc);
  if (limit_pc == 0)
    limit_pc = pc + 100;          /* Magic.  */

  return brownie32_scan_prologue (pc, limit_pc, NULL, NULL);
}

/* Root of all "set brownie32 "/"show brownie32 " commands. This will eventually be
   used for all BROWNIE32-specific commands.  */

static void
show_brownie32_command (char *args, int from_tty)
{
  help_list (showbrownie32cmdlist, "show brownie32 ", all_commands, gdb_stdout);
}

static void
set_brownie32_command (char *args, int from_tty)
{
  printf_unfiltered
    ("\"set brownie32\" must be followed by an appropriate subcommand.\n");
  help_list (setbrownie32cmdlist, "set brownie32 ", all_commands, gdb_stdout);
}

/* Commands to show/set the BROWNIE32 FPU type.  */

static void
show_brownie32fpu_command (char *args, int from_tty)
{
  char *fpu;
  switch (BROWNIE32_FPU_TYPE)
    {
    case BROWNIE32_FPU_SINGLE:
      fpu = "single-precision";
      break;
    case BROWNIE32_FPU_DOUBLE:
      fpu = "double-precision";
      break;
    case BROWNIE32_FPU_NONE:
      fpu = "absent (none)";
      break;
    default:
      internal_error (__FILE__, __LINE__, _("bad switch"));
    }
  if (brownie32_fpu_type_auto)
    printf_unfiltered
      ("The BROWNIE32 floating-point coprocessor is set automatically (currently %s)\n",
       fpu);
  else
    printf_unfiltered
      ("The BROWNIE32 floating-point coprocessor is assumed to be %s\n", fpu);
}


static void
set_brownie32fpu_command (char *args, int from_tty)
{
  printf_unfiltered
    ("\"set brownie32fpu\" must be followed by \"double\", \"single\",\"none\" or \"auto\".\n");
  show_brownie32fpu_command (args, from_tty);
}

static void
set_brownie32fpu_single_command (char *args, int from_tty)
{
  struct gdbarch_info info;
  gdbarch_info_init (&info);
  brownie32_fpu_type = BROWNIE32_FPU_SINGLE;
  brownie32_fpu_type_auto = 0;
  /* FIXME: cagney/2003-11-15: Should be setting a field in "info"
     instead of relying on globals.  Doing that would let generic code
     handle the search for this specific architecture.  */
  if (!gdbarch_update_p (info))
    internal_error (__FILE__, __LINE__, _("set brownie32fpu failed"));
}

static void
set_brownie32fpu_double_command (char *args, int from_tty)
{
  struct gdbarch_info info;
  gdbarch_info_init (&info);
  brownie32_fpu_type = BROWNIE32_FPU_DOUBLE;
  brownie32_fpu_type_auto = 0;
  /* FIXME: cagney/2003-11-15: Should be setting a field in "info"
     instead of relying on globals.  Doing that would let generic code
     handle the search for this specific architecture.  */
  if (!gdbarch_update_p (info))
    internal_error (__FILE__, __LINE__, _("set brownie32fpu failed"));
}

static void
set_brownie32fpu_none_command (char *args, int from_tty)
{
  struct gdbarch_info info;
  gdbarch_info_init (&info);
  brownie32_fpu_type = BROWNIE32_FPU_NONE;
  brownie32_fpu_type_auto = 0;
  /* FIXME: cagney/2003-11-15: Should be setting a field in "info"
     instead of relying on globals.  Doing that would let generic code
     handle the search for this specific architecture.  */
  if (!gdbarch_update_p (info))
    internal_error (__FILE__, __LINE__, _("set brownie32fpu failed"));
}

static void
set_brownie32fpu_auto_command (char *args, int from_tty)
{
  brownie32_fpu_type_auto = 1;
}

/* Attempt to identify the particular processor model by reading the
   processor id.  NOTE: cagney/2003-11-15: Firstly it isn't clear that
   the relevant processor still exists (it dates back to '94) and
   secondly this is not the way to do this.  The processor type should
   be set by forcing an architecture change.  */

void
deprecated_brownie32_set_processor_regs_hack (void)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (current_gdbarch);
  CORE_ADDR prid;

  prid = read_register (BROWNIE32_PRID_REGNUM);

#if 0   //Delete C.Katano
  if ((prid & ~0xf) == 0x700)
    tdep->brownie32_processor_reg_names = brownie32_r3041_reg_names;
#endif
}

/* Just like reinit_frame_cache, but with the right arguments to be
   callable as an sfunc.  */

static void
reinit_frame_cache_sfunc (char *args, int from_tty,
			  struct cmd_list_element *c)
{
  reinit_frame_cache ();
}

static int
gdb_print_insn_brownie32 (bfd_vma memaddr, struct disassemble_info *info)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (current_gdbarch);

  info->disassembler_options = "gpr-names=32";

  /* Call the appropriate disassembler based on the target endian-ness.  */
  if (TARGET_BYTE_ORDER == BFD_ENDIAN_BIG)
    return print_insn_big_brownie32 (memaddr, info);
  else
    return print_insn_little_brownie32 (memaddr, info);
}

/* This function implements the BREAKPOINT_FROM_PC macro.  It uses the program
   counter value to determine whether a 16- or 32-bit breakpoint should be
   used.  It returns a pointer to a string of bytes that encode a breakpoint
   instruction, stores the length of the string to *lenptr, and adjusts pc
   (if necessary) to point to the actual memory location where the
   breakpoint should be inserted.  */

static const gdb_byte *
brownie32_breakpoint_from_pc (CORE_ADDR *pcptr, int *lenptr)
{
  if (TARGET_BYTE_ORDER == BFD_ENDIAN_BIG)
    {
#if 0
      if (brownie32_pc_is_brownie3216 (*pcptr))
	{
	  static gdb_byte brownie3216_big_breakpoint[] = { 0xe8, 0xa5 };
	  *pcptr = unmake_brownie3216_addr (*pcptr);
	  *lenptr = sizeof (brownie3216_big_breakpoint);
	  return brownie3216_big_breakpoint;
	}
      else
#endif
	{
	  /* The IDT board uses an unusual breakpoint value, and
	     sometimes gets confused when it sees the usual BROWNIE32
	     breakpoint instruction.  */
	  static gdb_byte big_breakpoint[] = { 0, 0, 0, 0xd };
	  static gdb_byte pmon_big_breakpoint[] = { 0, 0, 0, 0xd };
	  static gdb_byte idt_big_breakpoint[] = { 0, 0, 0, 0xd };

	  *lenptr = sizeof (big_breakpoint);

/*
	  if (strcmp (target_shortname, "brownie32") == 0)
	    return idt_big_breakpoint;
	  else if (strcmp (target_shortname, "ddb") == 0
		   || strcmp (target_shortname, "pmon") == 0
		   || strcmp (target_shortname, "lsi") == 0)
	    return pmon_big_breakpoint;
	  else
*/
	    return big_breakpoint;
	}
    }
  else
    {
#if 0   // C.Katano
      if (brownie32_pc_is_brownie3216 (*pcptr))
	{
	  static gdb_byte brownie3216_little_breakpoint[] = { 0xa5, 0xe8 };
	  *pcptr = unmake_brownie3216_addr (*pcptr);
	  *lenptr = sizeof (brownie3216_little_breakpoint);
	  return brownie3216_little_breakpoint;
	}
      else
#endif
	{
	  static gdb_byte little_breakpoint[] = { 0xd, 0, 0, 0 };
	  static gdb_byte pmon_little_breakpoint[] = { 0xd, 0, 0, 0 };
	  static gdb_byte idt_little_breakpoint[] = { 0xd, 0, 0, 0 };

	  *lenptr = sizeof (little_breakpoint);

/*
	  if (strcmp (target_shortname, "brownie32") == 0)
	    return idt_little_breakpoint;
	  else if (strcmp (target_shortname, "ddb") == 0
		   || strcmp (target_shortname, "pmon") == 0
		   || strcmp (target_shortname, "lsi") == 0)
	    return pmon_little_breakpoint;
	  else
*/
	    return little_breakpoint;
	}
    }
}

/* If PC is in a brownie3216 call or return stub, return the address of the target
   PC, which is either the callee or the caller.  There are several
   cases which must be handled:

   * If the PC is in __brownie3216_ret_{d,s}f, this is a return stub and the
   target PC is in $31 ($ra).
   * If the PC is in __brownie3216_call_stub_{1..10}, this is a call stub
   and the target PC is in $2.
   * If the PC at the start of __brownie3216_call_stub_{s,d}f_{0..10}, i.e.
   before the jal instruction, this is effectively a call stub
   and the the target PC is in $2.  Otherwise this is effectively
   a return stub and the target PC is in $18.

   See the source code for the stubs in gcc/config/brownie32/brownie3216.S for
   gory details.  */

static CORE_ADDR
brownie32_skip_trampoline_code (CORE_ADDR pc)
{
  char *name;
  CORE_ADDR start_addr;

//printf("DEBUG: brownie32_skip_trampoline_code \n");
  /* Find the starting address and name of the function containing the PC.  */
  if (find_pc_partial_function (pc, &name, &start_addr, NULL) == 0)
    return 0;

  /* If the PC is in __brownie3216_ret_{d,s}f, this is a return stub and the
     target PC is in $31 ($ra).  */
  if (strcmp (name, "__brownie3216_ret_sf") == 0
      || strcmp (name, "__brownie3216_ret_df") == 0)
    return read_signed_register (BROWNIE32_LNK_REGNUM);

  if (strncmp (name, "__brownie3216_call_stub_", 19) == 0)
    {
      /* If the PC is in __brownie3216_call_stub_{1..10}, this is a call stub
         and the target PC is in $2.  */
      if (name[19] >= '0' && name[19] <= '9')
	return read_signed_register (2);

      /* If the PC at the start of __brownie3216_call_stub_{s,d}f_{0..10}, i.e.
         before the jal instruction, this is effectively a call stub
         and the the target PC is in $2.  Otherwise this is effectively
         a return stub and the target PC is in $18.  */
      else if (name[19] == 's' || name[19] == 'd')
	{
	  if (pc == start_addr)
	    {
	      /* Check if the target of the stub is a compiler-generated
	         stub.  Such a stub for a function bar might have a name
	         like __fn_stub_bar, and might look like this:
	         mfc1    $4,$f13
	         mfc1    $5,$f12
	         mfc1    $6,$f15
	         mfc1    $7,$f14
	         la      $1,bar   (becomes a lui/addiu pair)
	         jr      $1
	         So scan down to the lui/addi and extract the target
	         address from those two instructions.  */

	      CORE_ADDR target_pc = read_signed_register (2);
	      ULONGEST inst;
	      int i;

	      /* See if the name of the target function is  __fn_stub_*.  */
	      if (find_pc_partial_function (target_pc, &name, NULL, NULL) ==
		  0)
		return target_pc;
	      if (strncmp (name, "__fn_stub_", 10) != 0
		  && strcmp (name, "etext") != 0
		  && strcmp (name, "_etext") != 0)
		return target_pc;

	      /* Scan through this _fn_stub_ code for the lui/addiu pair.
	         The limit on the search is arbitrarily set to 20
	         instructions.  FIXME.  */
	      for (i = 0, pc = 0; i < 20; i++, target_pc += BROWNIE32_INSN32_SIZE)
		{
		  inst = brownie32_fetch_instruction (target_pc);
		  if ((inst & 0xffff0000) == 0x3c010000)	/* lui $at */
		    pc = (inst << 16) & 0xffff0000;	/* high word */
		  else if ((inst & 0xffff0000) == 0x24210000)	/* addiu $at */
		    return pc | (inst & 0xffff);	/* low word */
		}

	      /* Couldn't find the lui/addui pair, so return stub address.  */
	      return target_pc;
	    }
	  else
	    /* This is the 'return' part of a call stub.  The return
	       address is in $r18.  */
	    return read_signed_register (18);
	}
    }
  return 0;			/* not a stub */
}

/* Convert a dbx stab register number (from `r' declaration) to a GDB
   [1 * NUM_REGS .. 2 * NUM_REGS) REGNUM.  */

static int
brownie32_stab_reg_to_regnum (int num)
{
  int regnum;
  if (num >= 0 && num < 32)
    regnum = num;
  return NUM_REGS + regnum;
}


/* Convert a dwarf, dwarf2, or ecoff register number to a GDB [1 *
   NUM_REGS .. 2 * NUM_REGS) REGNUM.  */

static int
brownie32_dwarf_dwarf2_ecoff_reg_to_regnum (int num)
{
  int regnum;
  if (num >= 0 && num < 32)
    regnum = num;
  return NUM_REGS + regnum;
}

static int
brownie32_register_sim_regno (int regnum)
{
  /* Only makes sense to supply raw registers.  */
  gdb_assert (regnum >= 0 && regnum < NUM_REGS);
  /* FIXME: cagney/2002-05-13: Need to look at the pseudo register to
     decide if it is valid.  Should instead define a standard sim/gdb
     register numbering scheme.  */
  if (REGISTER_NAME (NUM_REGS + regnum) != NULL
      && REGISTER_NAME (NUM_REGS + regnum)[0] != '\0')
    return regnum;
  else
    return LEGACY_SIM_REGNO_IGNORE;
}


/* Convert an integer into an address.  By first converting the value
   into a pointer and then extracting it signed, the address is
   guarenteed to be correctly sign extended.  */

static CORE_ADDR
brownie32_integer_to_address (struct gdbarch *gdbarch,
			 struct type *type, const gdb_byte *buf)
{
  gdb_byte *tmp = alloca (TYPE_LENGTH (builtin_type_void_data_ptr));
  LONGEST val = unpack_long (type, buf);
  store_signed_integer (tmp, TYPE_LENGTH (builtin_type_void_data_ptr), val);
  return extract_signed_integer (tmp,
				 TYPE_LENGTH (builtin_type_void_data_ptr));
}

static void
brownie32_find_abi_section (bfd *abfd, asection *sect, void *obj)
{
  enum brownie32_abi *abip = (enum brownie32_abi *) obj;
  const char *name = bfd_get_section_name (abfd, sect);

  if (*abip != BROWNIE32_ABI_UNKNOWN)
    return;

  if (strncmp (name, ".mdebug.", 8) != 0)
    return;

  if (strcmp (name, ".mdebug.abi32") == 0)
    *abip = BROWNIE32_ABI_O32;
  else if (strcmp (name, ".mdebug.abiN32") == 0)
    *abip = BROWNIE32_ABI_N32;
/*
  else if (strcmp (name, ".mdebug.abi64") == 0)
    *abip = BROWNIE32_ABI_N64;
  else if (strcmp (name, ".mdebug.abiO64") == 0)
    *abip = BROWNIE32_ABI_O64;
*/
  else if (strcmp (name, ".mdebug.eabi32") == 0)
    *abip = BROWNIE32_ABI_EABI32;
  else if (strcmp (name, ".mdebug.eabi64") == 0)
    *abip = BROWNIE32_ABI_EABI64;
  else
    warning (_("unsupported ABI %s."), name + 8);
}

static enum brownie32_abi
global_brownie32_abi (void)
{
  int i;

  for (i = 0; brownie32_abi_strings[i] != NULL; i++)
    if (brownie32_abi_strings[i] == brownie32_abi_string)
      return (enum brownie32_abi) i;

  internal_error (__FILE__, __LINE__, _("unknown ABI string"));
}

const char *
libccg_brownie32_register_name (int regnum)
{
  const char *name = 0;
  const struct bfd_arch_info *info = TARGET_ARCHITECTURE;
  if (regnum < NUM_REGS)
  {
    switch (info->mach)
    {
    case bfd_mach_brownie32_std:
      name = brownie32_register_name (regnum);
      break;
    default:
      name = brownie32_register_name (regnum);
      break;
    }
  }
  else
  {
    name = libccg_get_register_name_by_regnum (regnum);
  }

  return name;
}

struct type *
libccg_brownie32_register_type (struct gdbarch *gdbarch, int regnum)
{
  struct type *t = 0;

  if (regnum < NUM_REGS)
  {
    t = brownie32_register_type (gdbarch, regnum);
  }
  else
  {
    int width = libccg_get_register_width_by_regnum (regnum);
    switch (width)
    {
    case   8: t = builtin_type_int8;   break;
    case  16: t = builtin_type_int16;  break;
    case  32: t = builtin_type_int32;  break;
    case  64: t = builtin_type_int64;  break;
    case 128: t = builtin_type_int128; break;
    default:  t = builtin_type_void;   break;
    }
  }

  return t;
}

/*libccg_brownie32_register_byte ()      may be needed. */
/*libccg_brownie32_register_sim_regno () may be needed. */

static struct gdbarch *
brownie32_gdbarch_init (struct gdbarch_info info, struct gdbarch_list *arches)
{
  struct gdbarch *gdbarch;
  struct gdbarch_tdep *tdep;
  int elf_flags;
  enum brownie32_abi brownie32_abi, found_abi, wanted_abi;
  int num_regs;
  enum brownie32_fpu_type fpu_type;

  /* First of all, extract the elf_flags, if available.  */
  if (info.abfd && bfd_get_flavour (info.abfd) == bfd_target_elf_flavour)
    elf_flags = elf_elfheader (info.abfd)->e_flags;
  else if (arches != NULL)
    elf_flags = gdbarch_tdep (arches->gdbarch)->elf_flags;
  else
    elf_flags = 0;
  if (gdbarch_debug)
    fprintf_unfiltered (gdb_stdlog,
			"brownie32_gdbarch_init: elf_flags = 0x%08x\n", elf_flags);

  /* Check ELF_FLAGS to see if it specifies the ABI being used.  */
  switch ((elf_flags & EF_BROWNIE32_ABI))
    {
    case E_BROWNIE32_ABI_O32:
      found_abi = BROWNIE32_ABI_O32;
      break;
/*
    case E_BROWNIE32_ABI_O64:
      found_abi = BROWNIE32_ABI_O64;
      break;
*/
    case E_BROWNIE32_ABI_EABI32:
      found_abi = BROWNIE32_ABI_EABI32;
      break;
    case E_BROWNIE32_ABI_EABI64:
      found_abi = BROWNIE32_ABI_EABI64;
      break;
    default:
      if ((elf_flags & EF_BROWNIE32_ABI2))
	found_abi = BROWNIE32_ABI_N32;
      else
	found_abi = BROWNIE32_ABI_UNKNOWN;
      break;
    }

  /* GCC creates a pseudo-section whose name describes the ABI.  */
  if (found_abi == BROWNIE32_ABI_UNKNOWN && info.abfd != NULL)
    bfd_map_over_sections (info.abfd, brownie32_find_abi_section, &found_abi);

  /* If we have no useful BFD information, use the ABI from the last
     BROWNIE32 architecture (if there is one).  */
  if (found_abi == BROWNIE32_ABI_UNKNOWN && info.abfd == NULL && arches != NULL)
    found_abi = gdbarch_tdep (arches->gdbarch)->found_abi;

  /* Try the architecture for any hint of the correct ABI.  */
  if (found_abi == BROWNIE32_ABI_UNKNOWN
      && info.bfd_arch_info != NULL
      && info.bfd_arch_info->arch == bfd_arch_brownie32)
    {
      switch (info.bfd_arch_info->mach)
	{
#if 1  // C.Katano
    case bfd_mach_brownie32_std:
	  found_abi = BROWNIE32_ABI_EABI32;
#endif
	}
    }

  if (gdbarch_debug)
    fprintf_unfiltered (gdb_stdlog, "brownie32_gdbarch_init: found_abi = %d\n",
			found_abi);

  /* What has the user specified from the command line?  */
  wanted_abi = global_brownie32_abi ();
  if (gdbarch_debug)
    fprintf_unfiltered (gdb_stdlog, "brownie32_gdbarch_init: wanted_abi = %d\n",
			wanted_abi);

  /* Now that we have found what the ABI for this binary would be,
     check whether the user is overriding it.  */
  if (wanted_abi != BROWNIE32_ABI_UNKNOWN)
    brownie32_abi = wanted_abi;
  else if (found_abi != BROWNIE32_ABI_UNKNOWN)
    brownie32_abi = found_abi;
  else
    brownie32_abi = BROWNIE32_ABI_O32;
  if (gdbarch_debug)
    fprintf_unfiltered (gdb_stdlog, "brownie32_gdbarch_init: brownie32_abi = %d\n",
			brownie32_abi);

  /* Also used when doing an architecture lookup.  */
  if (gdbarch_debug)
    fprintf_unfiltered (gdb_stdlog,
			"brownie32_gdbarch_init: brownie3264_transfers_32bit_regs_p = %d\n",
			brownie3264_transfers_32bit_regs_p);

  /* Determine the BROWNIE32 FPU type.  */
#if 1  // C.Katano
	fpu_type = BROWNIE32_FPU_NONE;
#endif
  if (gdbarch_debug)
    fprintf_unfiltered (gdb_stdlog,
			"brownie32_gdbarch_init: fpu_type = %d\n", fpu_type);

  /* try to find a pre-existing architecture */
  for (arches = gdbarch_list_lookup_by_info (arches, &info);
       arches != NULL;
       arches = gdbarch_list_lookup_by_info (arches->next, &info))
    {
      /* BROWNIE32 needs to be pedantic about which ABI the object is
         using.  */
      if (gdbarch_tdep (arches->gdbarch)->elf_flags != elf_flags)
	continue;
      if (gdbarch_tdep (arches->gdbarch)->brownie32_abi != brownie32_abi)
	continue;
      /* Need to be pedantic about which register virtual size is
         used.  */
      if (gdbarch_tdep (arches->gdbarch)->brownie3264_transfers_32bit_regs_p
	  != brownie3264_transfers_32bit_regs_p)
	continue;
      /* Be pedantic about which FPU is selected.  */
      if (gdbarch_tdep (arches->gdbarch)->brownie32_fpu_type != fpu_type)
	continue;
      return arches->gdbarch;
    }

  /* Need a new architecture.  Fill in a target specific vector.  */
  tdep = (struct gdbarch_tdep *) xmalloc (sizeof (struct gdbarch_tdep));
  gdbarch = gdbarch_alloc (&info, tdep);
  tdep->elf_flags = elf_flags;
  tdep->brownie3264_transfers_32bit_regs_p = brownie3264_transfers_32bit_regs_p;
  tdep->found_abi = found_abi;
  tdep->brownie32_abi = brownie32_abi;
  tdep->brownie32_fpu_type = fpu_type;

  /* Initially set everything according to the default ABI/ISA.  */
  set_gdbarch_short_bit (gdbarch, 16);
  set_gdbarch_int_bit (gdbarch, 32);
  set_gdbarch_float_bit (gdbarch, 32);
  set_gdbarch_double_bit (gdbarch, 64);
  set_gdbarch_long_double_bit (gdbarch, 64);
  set_gdbarch_register_reggroup_p (gdbarch, brownie32_register_reggroup_p);
  set_gdbarch_pseudo_register_read (gdbarch, brownie32_pseudo_register_read);
  set_gdbarch_pseudo_register_write (gdbarch, brownie32_pseudo_register_write);

  set_gdbarch_elf_make_msymbol_special (gdbarch,
					brownie32_elf_make_msymbol_special);

  /* Fill in the OS dependant register numbers and names.  */
  {
    const char **reg_names;
    struct brownie32_regnum *regnum = GDBARCH_OBSTACK_ZALLOC (gdbarch,
							 struct brownie32_regnum);
      {
//	regnum->lo = BROWNIE32_EMBED_LO_REGNUM;
//	regnum->hi = BROWNIE32_EMBED_HI_REGNUM;
//	regnum->badvaddr = BROWNIE32_EMBED_BADVADDR_REGNUM;
//	regnum->cause = BROWNIE32_EMBED_CAUSE_REGNUM;
	regnum->pc = BROWNIE32_EMBED_PC_REGNUM;
//	regnum->fp0 = BROWNIE32_EMBED_FP0_REGNUM;
//	regnum->fp_control_status = 70;
//	regnum->fp_implementation_revision = 71;
	num_regs = 40;  //33;
	  reg_names = brownie32_generic_reg_names;
      }
    /* FIXME: cagney/2003-11-15: For BROWNIE32, hasn't PC_REGNUM been
       replaced by read_pc?  */
    set_gdbarch_pc_regnum (gdbarch, regnum->pc + num_regs);
    set_gdbarch_sp_regnum (gdbarch, BROWNIE32_SP_REGNUM + num_regs);
    set_gdbarch_deprecated_fp_regnum (gdbarch, BROWNIE32_FRM_REGNUM + num_regs);
//    set_gdbarch_deprecated_fp_regnum (gdbarch, BROWNIE32_FRM_REGNUM);
//    set_gdbarch_fp0_regnum (gdbarch, regnum->fp0);
    set_gdbarch_num_regs (gdbarch, num_regs);
    set_gdbarch_num_pseudo_regs (gdbarch, num_regs);
    set_gdbarch_register_name (gdbarch, brownie32_register_name);
    tdep->brownie32_processor_reg_names = reg_names;
    tdep->regnum = regnum;
  }

  switch (brownie32_abi)
    {
    case BROWNIE32_ABI_O32:
      set_gdbarch_push_dummy_call (gdbarch, brownie32_o32_push_dummy_call);
      set_gdbarch_return_value (gdbarch, brownie32_o32_return_value);
//      tdep->brownie32_last_arg_regnum = BROWNIE32_A0_REGNUM + 4 - 1;
//      tdep->brownie32_last_fp_arg_regnum = tdep->regnum->fp0 + 12 + 4 - 1;
      tdep->default_mask_address_p = 0;
      set_gdbarch_long_bit (gdbarch, 32);
      set_gdbarch_ptr_bit (gdbarch, 32);
      set_gdbarch_long_long_bit (gdbarch, 64);
      break;
    case BROWNIE32_ABI_EABI32:
      set_gdbarch_push_dummy_call (gdbarch, brownie32_eabi_push_dummy_call);
      set_gdbarch_return_value (gdbarch, brownie32_eabi_return_value);
//      tdep->brownie32_last_arg_regnum = BROWNIE32_A0_REGNUM + 8 - 1;
//      tdep->brownie32_last_fp_arg_regnum = tdep->regnum->fp0 + 12 + 8 - 1;
      tdep->default_mask_address_p = 0;
      set_gdbarch_long_bit (gdbarch, 32);
      set_gdbarch_ptr_bit (gdbarch, 32);
      set_gdbarch_long_long_bit (gdbarch, 64);
      break;
    case BROWNIE32_ABI_EABI64:
      set_gdbarch_push_dummy_call (gdbarch, brownie32_eabi_push_dummy_call);
      set_gdbarch_return_value (gdbarch, brownie32_eabi_return_value);
//      tdep->brownie32_last_arg_regnum = BROWNIE32_A0_REGNUM + 8 - 1;
//      tdep->brownie32_last_fp_arg_regnum = tdep->regnum->fp0 + 12 + 8 - 1;
      tdep->default_mask_address_p = 0;
      set_gdbarch_long_bit (gdbarch, 64);
      set_gdbarch_ptr_bit (gdbarch, 64);
      set_gdbarch_long_long_bit (gdbarch, 64);
      break;
    case BROWNIE32_ABI_N32:
      set_gdbarch_push_dummy_call (gdbarch, brownie32_n32n64_push_dummy_call);
      set_gdbarch_return_value (gdbarch, brownie32_n32n64_return_value);
//      tdep->brownie32_last_arg_regnum = BROWNIE32_A0_REGNUM + 8 - 1;
//      tdep->brownie32_last_fp_arg_regnum = tdep->regnum->fp0 + 12 + 8 - 1;
      tdep->default_mask_address_p = 0;
      set_gdbarch_long_bit (gdbarch, 32);
      set_gdbarch_ptr_bit (gdbarch, 32);
      set_gdbarch_long_long_bit (gdbarch, 64);
      set_gdbarch_long_double_bit (gdbarch, 128);
//      set_gdbarch_long_double_format (gdbarch,
//                                      &floatformat_n32n64_long_double_big);
      break;
#if 000
    case BROWNIE32_ABI_N64:
      set_gdbarch_push_dummy_call (gdbarch, brownie32_n32n64_push_dummy_call);
      set_gdbarch_return_value (gdbarch, brownie32_n32n64_return_value);
//      tdep->brownie32_last_arg_regnum = BROWNIE32_A0_REGNUM + 8 - 1;
//      tdep->brownie32_last_fp_arg_regnum = tdep->regnum->fp0 + 12 + 8 - 1;
      tdep->default_mask_address_p = 0;
      set_gdbarch_long_bit (gdbarch, 64);
      set_gdbarch_ptr_bit (gdbarch, 64);
      set_gdbarch_long_long_bit (gdbarch, 64);
      set_gdbarch_long_double_bit (gdbarch, 128);
//      set_gdbarch_long_double_format (gdbarch,
//                                      &floatformat_n32n64_long_double_big);
      break;
#endif
    default:
      internal_error (__FILE__, __LINE__, _("unknown ABI in switch"));
    }

  /* FIXME: jlarmour/2000-04-07: There *is* a flag EF_BROWNIE32_32BIT_MODE
     that could indicate -gp32 BUT gas/config/tc-brownie32.c contains the
     comment:

     ``We deliberately don't allow "-gp32" to set the BROWNIE32_32BITMODE
     flag in object files because to do so would make it impossible to
     link with libraries compiled without "-gp32".  This is
     unnecessarily restrictive.

     We could solve this problem by adding "-gp32" multilibs to gcc,
     but to set this flag before gcc is built with such multilibs will
     break too many systems.''

     But even more unhelpfully, the default linker output target for
     brownie3264-elf is elf32-bigbrownie32, and has EF_BROWNIE32_32BIT_MODE set, even
     for 64-bit programs - you need to change the ABI to change this,
     and not all gcc targets support that currently.  Therefore using
     this flag to detect 32-bit mode would do the wrong thing given
     the current gcc - it would make GDB treat these 64-bit programs
     as 32-bit programs by default.  */
  set_gdbarch_read_pc (gdbarch, brownie32_read_pc);
  set_gdbarch_write_pc (gdbarch, brownie32_write_pc);
  set_gdbarch_read_sp (gdbarch, brownie32_read_sp);

  /* Add/remove bits from an address.  The BROWNIE32 needs be careful to
     ensure that all 32 bit addresses are sign extended to 64 bits.  */
  set_gdbarch_addr_bits_remove (gdbarch, brownie32_addr_bits_remove);

  /* Unwind the frame.  */
  set_gdbarch_unwind_pc (gdbarch, brownie32_unwind_pc);
  set_gdbarch_unwind_dummy_id (gdbarch, brownie32_unwind_dummy_id);

  /* Map debug register numbers onto internal register numbers.  */
  set_gdbarch_stab_reg_to_regnum (gdbarch, brownie32_stab_reg_to_regnum);
#if 000
  set_gdbarch_ecoff_reg_to_regnum (gdbarch,
				   brownie32_dwarf_dwarf2_ecoff_reg_to_regnum);
#endif
  set_gdbarch_dwarf_reg_to_regnum (gdbarch,
				   brownie32_dwarf_dwarf2_ecoff_reg_to_regnum);
  set_gdbarch_dwarf2_reg_to_regnum (gdbarch,
				    brownie32_dwarf_dwarf2_ecoff_reg_to_regnum);
  set_gdbarch_register_sim_regno (gdbarch, brownie32_register_sim_regno);

  /* BROWNIE32 version of CALL_DUMMY */

  /* NOTE: cagney/2003-08-05: Eventually call dummy location will be
     replaced by a command, and all targets will default to on stack
     (regardless of the stack's execute status).  */
  set_gdbarch_call_dummy_location (gdbarch, AT_SYMBOL);
  set_gdbarch_frame_align (gdbarch, brownie32_frame_align);

  set_gdbarch_convert_register_p (gdbarch, brownie32_convert_register_p);
  set_gdbarch_register_to_value (gdbarch, brownie32_register_to_value);
  set_gdbarch_value_to_register (gdbarch, brownie32_value_to_register);

  set_gdbarch_inner_than (gdbarch, core_addr_lessthan);
  set_gdbarch_breakpoint_from_pc (gdbarch, brownie32_breakpoint_from_pc);

  set_gdbarch_skip_prologue (gdbarch, brownie32_skip_prologue);

  set_gdbarch_pointer_to_address (gdbarch, signed_pointer_to_address);
  set_gdbarch_address_to_pointer (gdbarch, address_to_signed_pointer);
  set_gdbarch_integer_to_address (gdbarch, brownie32_integer_to_address);

  set_gdbarch_register_type (gdbarch, brownie32_register_type);

  set_gdbarch_print_registers_info (gdbarch, brownie32_print_registers_info);

  set_gdbarch_print_insn (gdbarch, gdb_print_insn_brownie32);

  /* FIXME: cagney/2003-08-29: The macros HAVE_STEPPABLE_WATCHPOINT,
     HAVE_NONSTEPPABLE_WATCHPOINT, and HAVE_CONTINUABLE_WATCHPOINT
     need to all be folded into the target vector.  Since they are
     being used as guards for STOPPED_BY_WATCHPOINT, why not have
     STOPPED_BY_WATCHPOINT return the type of watchpoint that the code
     is sitting on?  */
  set_gdbarch_have_nonsteppable_watchpoint (gdbarch, 1);

//  set_gdbarch_skip_trampoline_code (gdbarch, brownie32_skip_trampoline_code);

  set_gdbarch_software_single_step (gdbarch, brownie32_software_single_step);
//  set_gdbarch_single_step_through_delay (gdbarch, brownie32_single_step_through_delay);

  /* Hook in OS ABI-specific overrides, if they have been registered.  */
  gdbarch_init_osabi (info, gdbarch);

  /* Unwind the frame.  */
  frame_unwind_append_sniffer (gdbarch, brownie32_stub_frame_sniffer);
  frame_unwind_append_sniffer (gdbarch, brownie32_insn32_frame_sniffer);
  frame_base_append_sniffer (gdbarch, brownie32_stub_frame_base_sniffer);
  frame_base_append_sniffer (gdbarch, brownie32_insn32_frame_base_sniffer);

  if (num_regs < libccg_get_num_of_all_regs ())
  {
    set_gdbarch_num_regs (gdbarch, libccg_get_num_of_all_regs ());
    set_gdbarch_register_name (gdbarch, libccg_brownie32_register_name);
    set_gdbarch_register_type (gdbarch, libccg_brownie32_register_type);
  }

  return gdbarch;
}

static void
brownie32_abi_update (char *ignore_args, int from_tty, struct cmd_list_element *c)
{
  struct gdbarch_info info;

  /* Force the architecture to update, and (if it's a BROWNIE32 architecture)
     brownie32_gdbarch_init will take care of the rest.  */
  gdbarch_info_init (&info);
  gdbarch_update_p (info);
}

/* Print out which BROWNIE32 ABI is in use.  */

static void
show_brownie32_abi (struct ui_file *file,
	       int from_tty,
	       struct cmd_list_element *ignored_cmd,
	       const char *ignored_value)
{
  if (gdbarch_bfd_arch_info (current_gdbarch)->arch != bfd_arch_brownie32)
    fprintf_filtered
      (file, 
       "The BROWNIE32 ABI is unknown because the current architecture "
       "is not BROWNIE32.\n");
  else
    {
      enum brownie32_abi global_abi = global_brownie32_abi ();
      enum brownie32_abi actual_abi = brownie32_abi (current_gdbarch);
      const char *actual_abi_str = brownie32_abi_strings[actual_abi];

      if (global_abi == BROWNIE32_ABI_UNKNOWN)
	fprintf_filtered
	  (file, 
	   "The BROWNIE32 ABI is set automatically (currently \"%s\").\n",
	   actual_abi_str);
      else if (global_abi == actual_abi)
	fprintf_filtered
	  (file,
	   "The BROWNIE32 ABI is assumed to be \"%s\" (due to user setting).\n",
	   actual_abi_str);
      else
	{
	  /* Probably shouldn't happen...  */
	  fprintf_filtered
	    (file,
	     "The (auto detected) BROWNIE32 ABI \"%s\" is in use even though the user setting was \"%s\".\n",
	     actual_abi_str, brownie32_abi_strings[global_abi]);
	}
    }
}

static void
brownie32_dump_tdep (struct gdbarch *current_gdbarch, struct ui_file *file)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (current_gdbarch);
  if (tdep != NULL)
    {
      int ef_brownie32_arch;
      int ef_brownie32_32bitmode;
      /* determine the ISA */
      switch (tdep->elf_flags & EF_BROWNIE32_ARCH)
	{
	case E_BROWNIE32_ARCH_1:
	  ef_brownie32_arch = 1;
	  break;
	case E_BROWNIE32_ARCH_2:
	  ef_brownie32_arch = 2;
	  break;
	case E_BROWNIE32_ARCH_3:
	  ef_brownie32_arch = 3;
	  break;
	case E_BROWNIE32_ARCH_4:
	  ef_brownie32_arch = 4;
	  break;
	default:
	  ef_brownie32_arch = 0;
	  break;
	}
      /* determine the size of a pointer */
      ef_brownie32_32bitmode = (tdep->elf_flags & EF_BROWNIE32_32BITMODE);
      fprintf_unfiltered (file,
			  "brownie32_dump_tdep: tdep->elf_flags = 0x%x\n",
			  tdep->elf_flags);
      fprintf_unfiltered (file,
			  "brownie32_dump_tdep: ef_brownie32_32bitmode = %d\n",
			  ef_brownie32_32bitmode);
      fprintf_unfiltered (file,
			  "brownie32_dump_tdep: ef_brownie32_arch = %d\n",
			  ef_brownie32_arch);
      fprintf_unfiltered (file,
			  "brownie32_dump_tdep: tdep->brownie32_abi = %d (%s)\n",
			  tdep->brownie32_abi, brownie32_abi_strings[tdep->brownie32_abi]);
      fprintf_unfiltered (file,
			  "brownie32_dump_tdep: brownie32_mask_address_p() %d (default %d)\n",
			  brownie32_mask_address_p (tdep),
			  tdep->default_mask_address_p);
    }
  fprintf_unfiltered (file,
		      "brownie32_dump_tdep: BROWNIE32_DEFAULT_FPU_TYPE = %d (%s)\n",
		      BROWNIE32_DEFAULT_FPU_TYPE,
		      (BROWNIE32_DEFAULT_FPU_TYPE == BROWNIE32_FPU_NONE ? "none"
		       : BROWNIE32_DEFAULT_FPU_TYPE == BROWNIE32_FPU_SINGLE ? "single"
		       : BROWNIE32_DEFAULT_FPU_TYPE == BROWNIE32_FPU_DOUBLE ? "double"
		       : "???"));
  fprintf_unfiltered (file, "brownie32_dump_tdep: BROWNIE32_EABI = %d\n", BROWNIE32_EABI);
  fprintf_unfiltered (file,
		      "brownie32_dump_tdep: BROWNIE32_FPU_TYPE = %d (%s)\n",
		      BROWNIE32_FPU_TYPE,
		      (BROWNIE32_FPU_TYPE == BROWNIE32_FPU_NONE ? "none"
		       : BROWNIE32_FPU_TYPE == BROWNIE32_FPU_SINGLE ? "single"
		       : BROWNIE32_FPU_TYPE == BROWNIE32_FPU_DOUBLE ? "double"
		       : "???"));
  fprintf_unfiltered (file,
		      "brownie32_dump_tdep: brownie32_stack_argsize() = %d\n",
		      brownie32_stack_argsize (current_gdbarch));
}

extern initialize_file_ftype _initialize_brownie32_tdep;	/* -Wmissing-prototypes */

void
_initialize_brownie32_tdep (void)
{
  static struct cmd_list_element *brownie32fpulist = NULL;
  struct cmd_list_element *c;

  brownie32_abi_string = brownie32_abi_strings[BROWNIE32_ABI_UNKNOWN];
  if (BROWNIE32_ABI_LAST + 1
      != sizeof (brownie32_abi_strings) / sizeof (brownie32_abi_strings[0]))
    internal_error (__FILE__, __LINE__, _("brownie32_abi_strings out of sync"));

  gdbarch_register (bfd_arch_brownie32, brownie32_gdbarch_init, brownie32_dump_tdep);

  brownie32_pdr_data = register_objfile_data ();

  /* Add root prefix command for all "set brownie32"/"show brownie32" commands */
  add_prefix_cmd ("brownie32", no_class, set_brownie32_command,
		  _("Various BROWNIE32 specific commands."),
		  &setbrownie32cmdlist, "set brownie32 ", 0, &setlist);

  add_prefix_cmd ("brownie32", no_class, show_brownie32_command,
		  _("Various BROWNIE32 specific commands."),
		  &showbrownie32cmdlist, "show brownie32 ", 0, &showlist);

  /* Allow the user to override the saved register size. */
  add_setshow_enum_cmd ("saved-gpreg-size", class_obscure,
			size_enums, &brownie32_abi_regsize_string, _("\
Set size of general purpose registers saved on the stack."), _("\
Show size of general purpose registers saved on the stack."), _("\
This option can be set to one of:\n\
  32    - Force GDB to treat saved GP registers as 32-bit\n\
  64    - Force GDB to treat saved GP registers as 64-bit\n\
  auto  - Allow GDB to use the target's default setting or autodetect the\n\
          saved GP register size from information contained in the\n\
          executable (default)."),
			NULL,
			NULL, /* FIXME: i18n: Size of general purpose registers saved on the stack is %s.  */
			&setbrownie32cmdlist, &showbrownie32cmdlist);

  /* Allow the user to override the argument stack size. */
  add_setshow_enum_cmd ("stack-arg-size", class_obscure,
			size_enums, &brownie32_stack_argsize_string, _("\
Set the amount of stack space reserved for each argument."), _("\
Show the amount of stack space reserved for each argument."), _("\
This option can be set to one of:\n\
  32    - Force GDB to allocate 32-bit chunks per argument\n\
  64    - Force GDB to allocate 64-bit chunks per argument\n\
  auto  - Allow GDB to determine the correct setting from the current\n\
          target and executable (default)"),
			NULL,
			NULL, /* FIXME: i18n: The amount of stack space reserved for each argument is %s.  */
			&setbrownie32cmdlist, &showbrownie32cmdlist);

  /* Allow the user to override the ABI. */
  add_setshow_enum_cmd ("abi", class_obscure, brownie32_abi_strings,
			&brownie32_abi_string, _("\
Set the BROWNIE32 ABI used by this program."), _("\
Show the BROWNIE32 ABI used by this program."), _("\
This option can be set to one of:\n\
  auto  - the default ABI associated with the current binary\n\
  o32\n\
  o64\n\
  n32\n\
  n64\n\
  eabi32\n\
  eabi64"),
			brownie32_abi_update,
			show_brownie32_abi,
			&setbrownie32cmdlist, &showbrownie32cmdlist);

  /* Let the user turn off floating point and set the fence post for
     heuristic_proc_start.  */

  add_prefix_cmd ("brownie32fpu", class_support, set_brownie32fpu_command,
		  _("Set use of BROWNIE32 floating-point coprocessor."),
		  &brownie32fpulist, "set brownie32fpu ", 0, &setlist);
  add_cmd ("single", class_support, set_brownie32fpu_single_command,
	   _("Select single-precision BROWNIE32 floating-point coprocessor."),
	   &brownie32fpulist);
  add_cmd ("double", class_support, set_brownie32fpu_double_command,
	   _("Select double-precision BROWNIE32 floating-point coprocessor."),
	   &brownie32fpulist);
  add_alias_cmd ("on", "double", class_support, 1, &brownie32fpulist);
  add_alias_cmd ("yes", "double", class_support, 1, &brownie32fpulist);
  add_alias_cmd ("1", "double", class_support, 1, &brownie32fpulist);
  add_cmd ("none", class_support, set_brownie32fpu_none_command,
	   _("Select no BROWNIE32 floating-point coprocessor."), &brownie32fpulist);
  add_alias_cmd ("off", "none", class_support, 1, &brownie32fpulist);
  add_alias_cmd ("no", "none", class_support, 1, &brownie32fpulist);
  add_alias_cmd ("0", "none", class_support, 1, &brownie32fpulist);
  add_cmd ("auto", class_support, set_brownie32fpu_auto_command,
	   _("Select BROWNIE32 floating-point coprocessor automatically."),
	   &brownie32fpulist);
  add_cmd ("brownie32fpu", class_support, show_brownie32fpu_command,
	   _("Show current use of BROWNIE32 floating-point coprocessor target."),
	   &showlist);

  /* We really would like to have both "0" and "unlimited" work, but
     command.c doesn't deal with that.  So make it a var_zinteger
     because the user can always use "999999" or some such for unlimited.  */
  add_setshow_zinteger_cmd ("heuristic-fence-post", class_support,
			    &heuristic_fence_post, _("\
Set the distance searched for the start of a function."), _("\
Show the distance searched for the start of a function."), _("\
If you are debugging a stripped executable, GDB needs to search through the\n\
program for the start of a function.  This command sets the distance of the\n\
search.  The only need to set it is when debugging a stripped executable."),
			    reinit_frame_cache_sfunc,
			    NULL, /* FIXME: i18n: The distance searched for the start of a function is %s.  */
			    &setlist, &showlist);

  /* Allow the user to control whether the upper bits of 64-bit
     addresses should be zeroed.  */
  add_setshow_auto_boolean_cmd ("mask-address", no_class,
				&mask_address_var, _("\
Set zeroing of upper 32 bits of 64-bit addresses."), _("\
Show zeroing of upper 32 bits of 64-bit addresses."), _("\
Use \"on\" to enable the masking, \"off\" to disable it and \"auto\" to \n\
allow GDB to determine the correct value."),
				NULL, show_mask_address,
				&setbrownie32cmdlist, &showbrownie32cmdlist);

  /* Allow the user to control the size of 32 bit registers within the
     raw remote packet.  */
  add_setshow_boolean_cmd ("remote-brownie3264-transfers-32bit-regs", class_obscure,
			   &brownie3264_transfers_32bit_regs_p, _("\
Set compatibility with 64-bit BROWNIE32 target that transfers 32-bit quantities."),
			   _("\
Show compatibility with 64-bit BROWNIE32 target that transfers 32-bit quantities."),
			   _("\
Use \"on\" to enable backward compatibility with older BROWNIE32 64 GDB+target\n\
that would transfer 32 bits for some registers (e.g. SR, FSR) and\n\
64 bits for others.  Use \"off\" to disable compatibility mode"),
			   set_brownie3264_transfers_32bit_regs,
			   NULL, /* FIXME: i18n: Compatibility with 64-bit BROWNIE32 target that transfers 32-bit quantities is %s.  */
			   &setlist, &showlist);

  /* Debug this files internals. */
  add_setshow_zinteger_cmd ("brownie32", class_maintenance,
			    &brownie32_debug, _("\
Set brownie32 debugging."), _("\
Show brownie32 debugging."), _("\
When non-zero, brownie32 specific debugging is enabled."),
			    NULL,
			    NULL, /* FIXME: i18n: Mips debugging is currently %s.  */
			    &setdebuglist, &showdebuglist);
}
