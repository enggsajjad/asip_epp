/* Generated automatically by the program `genoutput'
   from the machine description file `md'.  */

#include "config.h"
#include "system.h"
#include "coretypes.h"
#include "tm.h"
#include "flags.h"
#include "ggc.h"
#include "rtl.h"
#include "expr.h"
#include "insn-codes.h"
#include "tm_p.h"
#include "function.h"
#include "regs.h"
#include "hard-reg-set.h"
#include "real.h"
#include "insn-config.h"

#include "conditions.h"
#include "insn-attr.h"

#include "recog.h"

#include "toplev.h"
#include "output.h"
#include "target.h"
#include "tm-constrs.h"

static const char * const output_0[] = {
  "add\t%0,%1,%2",
  "addi\t%0,%1,%G2",
};

static const char * const output_1[] = {
  "sub\t%0,%1,%2",
  "subi\t%0,%1,%G2",
  "subi\t%0,%1,%U2",
};

static const char * const output_2[] = {
  "and\t%0,%1,%2",
  "andi\t%0,%1,%U2",
};

static const char * const output_3[] = {
  "or\t%0,%1,%2",
  "ori\t%0,%1,%U2",
};

static const char * const output_4[] = {
  "xor\t%0,%1,%2",
  "xori\t%0,%1,%U2",
};

static const char * const output_11[] = {
  "lls\t%0,%1,%2",
  "llsi\t%0,%1,%G2",
};

static const char * const output_12[] = {
  "ars\t%0,%1,%2",
  "arsi\t%0,%1,%G2",
};

static const char * const output_13[] = {
  "lrs\t%0,%1,%2",
  "lrsi\t%0,%1,%G2",
};

static const char * const output_19[] = {
  "andi\t%0,%1,#0xffff",
  "sh\t%0,%1",
};

static const char * const output_20[] = {
  "andi\t%0,%1,#0x00ff",
  "sb\t%0,%1",
};

static const char * const output_21[] = {
  "andi\t%0,%1,#0x00ff",
  "sb\t%0,%1",
};

static const char * const output_22[] = {
  "andi\t%0,%1,#0x00ff",
  "lb\t%0,%1\n\tnop\n\tandi\t%0,%0,#0x00ff",
};

static const char * const output_23[] = {
  "andi\t%0,%1,#0xffff",
  "lh\t%0,%1\n\tnop\n\tandi\t%0,%0,#0xffff",
};

static const char * const output_24[] = {
  "andi\t%0,%1,#0x00ff",
  "lb\t%0,%1\n\tnop\n\tandi\t%0,%0,#0x00ff",
};

static const char *
output_28 (rtx *operands ATTRIBUTE_UNUSED, rtx insn ATTRIBUTE_UNUSED)
{
#line 907 "../../gcc/config/brownie32/brownie32.md"

{ 
  switch(which_alternative)
   {
     case 0:
       return "addi\t%0,r0,%G1";
     case 1:
       return "lsoi\t%0,r0,%U1";
     case 2:
       if(GET_CODE(operands[1]) == CONST_INT)
        {
           return "addi\t%0,r0,%H1\n\tlsoi\t%0,%0,%L1";
        }
       else
        {
           return "addi\t%0,r0,%%hi(%1)\n\tlsoi\t%0,%0,%%lo(%1)";
        }
     case 3:
        return "lw\t%0,%1\n\tnop";
     case 4:
        return "sw\t%0,%1";
     case 5:
        return "add\t%0,r0,%1";
     default:
        return "nOp";
   }
}
}

static const char *
output_29 (rtx *operands ATTRIBUTE_UNUSED, rtx insn ATTRIBUTE_UNUSED)
{
#line 961 "../../gcc/config/brownie32/brownie32.md"

{ 
  switch(which_alternative)
   {
     case 0:
        return "addi\t%0,r0,%G1";
     case 1:
        return "lh\t%0,%1\n\tnop";
     case 2:
        return "sh\t%0,%1";
     case 3:
        return "add\t%0,r0,%1";
   }

}
}

static const char *
output_30 (rtx *operands ATTRIBUTE_UNUSED, rtx insn ATTRIBUTE_UNUSED)
{
#line 1002 "../../gcc/config/brownie32/brownie32.md"

{ 
  switch(which_alternative)
   {
     case 0:
        return "addi\t%0,r0,%1";
     case 1:
         return "lb\t%0,%1\n\tnop";
      case 2:
        return "sb\t%0,%1";
     case 3:
        return "add\t%0,r0,%1";
   }

}
}

static const char *
output_31 (rtx *operands ATTRIBUTE_UNUSED, rtx insn ATTRIBUTE_UNUSED)
{
#line 1055 "../../gcc/config/brownie32/brownie32.md"

{ 
  switch(which_alternative)
   {
     case 0:
        return "lw\t%0,%1\n\tnop";
     case 1:
         return "sw\t%0,%1";
     case 2:
         return "add\t%0,r0,%1";
     case 3:
       if(GET_CODE(operands[1]) == CONST_INT)
        {
         return "lh\t%0,%H1\n\tnop\n\taddi\t%0,%0,%L1";
        }
       else
        {
           return "addi\t%0,r0,%U1\n\taddi\t%0,%0,%U1";
        }
     case 4:
        return "lw\t%0,%1\n\tnop";
     case 5:
        return "lw\t%0,%1\n\tnop";
     case 6:
        return "lw\t%0,%1\n\tnop";
     default:
	abort();

   }
}
}

static const char *
output_32 (rtx *operands ATTRIBUTE_UNUSED, rtx insn ATTRIBUTE_UNUSED)
{
#line 1135 "../../gcc/config/brownie32/brownie32.md"
{ 
  return output_move_double (operands);
}
}

static const char *
output_35 (rtx *operands ATTRIBUTE_UNUSED, rtx insn ATTRIBUTE_UNUSED)
{
#line 1256 "../../gcc/config/brownie32/brownie32.md"

{
  if (GET_CODE (operands[0]) == REG)
   return "jpr\t%0%(";
  else
   return "jp\t%0%(";
}
}



static const struct insn_operand_data operand_data[] = 
{
  {
    0,
    "",
    VOIDmode,
    0,
    0
  },
  {
    register_operand,
    "=d,d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "%d,d",
    SImode,
    0,
    1
  },
  {
    nonmemory_operand,
    "d,I",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=d,d,d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d,d,d",
    SImode,
    0,
    1
  },
  {
    nonmemory_operand,
    "d,I,L",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=d,d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "%d,d",
    SImode,
    0,
    1
  },
  {
    nonmemory_operand,
    "d,L",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "%d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    QImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    QImode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    HImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    HImode,
    0,
    1
  },
  {
    register_operand,
    "=d,d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d,d",
    SImode,
    0,
    1
  },
  {
    nonmemory_operand,
    "d,I",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    general_operand,
    "=d,m",
    HImode,
    0,
    1
  },
  {
    register_operand,
    "d,d",
    SImode,
    0,
    1
  },
  {
    general_operand,
    "=d,m",
    QImode,
    0,
    1
  },
  {
    register_operand,
    "d,d",
    SImode,
    0,
    1
  },
  {
    general_operand,
    "=d,m",
    QImode,
    0,
    1
  },
  {
    register_operand,
    "d,d",
    HImode,
    0,
    1
  },
  {
    register_operand,
    "=d,d",
    HImode,
    0,
    1
  },
  {
    general_operand,
    "d,m",
    QImode,
    0,
    1
  },
  {
    register_operand,
    "=d,d",
    SImode,
    0,
    1
  },
  {
    general_operand,
    "d,m",
    HImode,
    0,
    1
  },
  {
    register_operand,
    "=d,d",
    SImode,
    0,
    1
  },
  {
    general_operand,
    "d,m",
    QImode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    QImode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    HImode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    HImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    QImode,
    0,
    1
  },
  {
    general_operand,
    "=d,d,d,d,m,d",
    SImode,
    0,
    1
  },
  {
    general_operand,
    "I,L,i,m,d,d",
    SImode,
    0,
    1
  },
  {
    general_operand,
    "=d,d,m,d",
    HImode,
    0,
    1
  },
  {
    general_operand,
    "i,m,d,d",
    HImode,
    0,
    1
  },
  {
    general_operand,
    "=d,d,m,d",
    QImode,
    0,
    1
  },
  {
    general_operand,
    "i,m,d,d",
    QImode,
    0,
    1
  },
  {
    general_operand,
    "=d,m,d,d,d,d,d",
    SFmode,
    0,
    1
  },
  {
    general_operand,
    "m,d,d,i,E,F,I",
    SFmode,
    0,
    1
  },
  {
    general_operand,
    "",
    DImode,
    0,
    1
  },
  {
    general_operand,
    "",
    DImode,
    0,
    1
  },
  {
    scratch_operand,
    "=&r",
    SImode,
    0,
    0
  },
  {
    0,
    "",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    VOIDmode,
    0,
    1
  },
  {
    sym_ref_mem_operand,
    "",
    VOIDmode,
    0,
    1
  },
  {
    0,
    "i",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "d",
    VOIDmode,
    0,
    1
  },
  {
    0,
    "i",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    0,
    "",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "=d",
    SImode,
    0,
    1
  },
  {
    comparison_operator,
    "",
    SImode,
    0,
    0
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "",
    SImode,
    0,
    1
  },
  {
    general_operand,
    "",
    SImode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "",
    HImode,
    0,
    1
  },
  {
    general_operand,
    "",
    HImode,
    0,
    1
  },
  {
    nonimmediate_operand,
    "",
    QImode,
    0,
    1
  },
  {
    general_operand,
    "",
    QImode,
    0,
    1
  },
  {
    general_operand,
    "",
    SFmode,
    0,
    1
  },
  {
    general_operand,
    "",
    SFmode,
    0,
    1
  },
  {
    register_operand,
    "d",
    SImode,
    0,
    1
  },
  {
    nonmemory_operand,
    "dI",
    SImode,
    0,
    1
  },
  {
    register_operand,
    "",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "",
    VOIDmode,
    0,
    1
  },
  {
    register_operand,
    "",
    VOIDmode,
    0,
    1
  },
  {
    0,
    "",
    VOIDmode,
    0,
    1
  },
};


#if GCC_VERSION >= 2007
__extension__
#endif

const struct insn_data insn_data[] = 
{
  /* ../../gcc/config/brownie32/brownie32.md:264 */
  {
    "addsi3",
#if HAVE_DESIGNATED_INITIALIZERS
    { .multi = output_0 },
#else
    { 0, output_0, 0 },
#endif
    (insn_gen_fn) gen_addsi3,
    &operand_data[1],
    3,
    0,
    2,
    2
  },
  /* ../../gcc/config/brownie32/brownie32.md:276 */
  {
    "subsi3",
#if HAVE_DESIGNATED_INITIALIZERS
    { .multi = output_1 },
#else
    { 0, output_1, 0 },
#endif
    (insn_gen_fn) gen_subsi3,
    &operand_data[4],
    3,
    0,
    3,
    2
  },
  /* ../../gcc/config/brownie32/brownie32.md:292 */
  {
    "andsi3",
#if HAVE_DESIGNATED_INITIALIZERS
    { .multi = output_2 },
#else
    { 0, output_2, 0 },
#endif
    (insn_gen_fn) gen_andsi3,
    &operand_data[7],
    3,
    0,
    2,
    2
  },
  /* ../../gcc/config/brownie32/brownie32.md:303 */
  {
    "iorsi3",
#if HAVE_DESIGNATED_INITIALIZERS
    { .multi = output_3 },
#else
    { 0, output_3, 0 },
#endif
    (insn_gen_fn) gen_iorsi3,
    &operand_data[7],
    3,
    0,
    2,
    2
  },
  /* ../../gcc/config/brownie32/brownie32.md:315 */
  {
    "xorsi3",
#if HAVE_DESIGNATED_INITIALIZERS
    { .multi = output_4 },
#else
    { 0, output_4, 0 },
#endif
    (insn_gen_fn) gen_xorsi3,
    &operand_data[7],
    3,
    0,
    2,
    2
  },
  /* ../../gcc/config/brownie32/brownie32.md:328 */
  {
    "nandsi3",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "nand\t%0,%1,%2",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_nandsi3,
    &operand_data[10],
    3,
    0,
    1,
    1
  },
  /* ../../gcc/config/brownie32/brownie32.md:339 */
  {
    "norsi3",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "nor\t%0,%1,%2",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_norsi3,
    &operand_data[10],
    3,
    0,
    1,
    1
  },
  /* ../../gcc/config/brownie32/brownie32.md:358 */
  {
    "negsi2",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "sub\t%0,r0,%1",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_negsi2,
    &operand_data[13],
    2,
    0,
    1,
    1
  },
  /* ../../gcc/config/brownie32/brownie32.md:400 */
  {
    "one_cmplqi2",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "xori\t%0,%1,#0x00ff",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_one_cmplqi2,
    &operand_data[15],
    2,
    0,
    1,
    1
  },
  /* ../../gcc/config/brownie32/brownie32.md:409 */
  {
    "one_cmplhi2",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "xori\t%0,%1,#0xffff",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_one_cmplhi2,
    &operand_data[17],
    2,
    0,
    1,
    1
  },
  /* ../../gcc/config/brownie32/brownie32.md:418 */
  {
    "one_cmplsi2",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "sub\t%0,r0,%1\n\tsubi\t%0,%0,#1",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_one_cmplsi2,
    &operand_data[13],
    2,
    0,
    1,
    1
  },
  /* ../../gcc/config/brownie32/brownie32.md:428 */
  {
    "ashlsi3",
#if HAVE_DESIGNATED_INITIALIZERS
    { .multi = output_11 },
#else
    { 0, output_11, 0 },
#endif
    (insn_gen_fn) gen_ashlsi3,
    &operand_data[19],
    3,
    0,
    2,
    2
  },
  /* ../../gcc/config/brownie32/brownie32.md:459 */
  {
    "ashrsi3",
#if HAVE_DESIGNATED_INITIALIZERS
    { .multi = output_12 },
#else
    { 0, output_12, 0 },
#endif
    (insn_gen_fn) gen_ashrsi3,
    &operand_data[19],
    3,
    0,
    2,
    2
  },
  /* ../../gcc/config/brownie32/brownie32.md:476 */
  {
    "lshrsi3",
#if HAVE_DESIGNATED_INITIALIZERS
    { .multi = output_13 },
#else
    { 0, output_13, 0 },
#endif
    (insn_gen_fn) gen_lshrsi3,
    &operand_data[19],
    3,
    0,
    2,
    2
  },
  /* ../../gcc/config/brownie32/brownie32.md:508 */
  {
    "mulsi3",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "mul\t%0,%1,%2",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_mulsi3,
    &operand_data[22],
    3,
    0,
    1,
    1
  },
  /* ../../gcc/config/brownie32/brownie32.md:546 */
  {
    "divsi3",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "div\t%0,%1,%2",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_divsi3,
    &operand_data[22],
    3,
    0,
    1,
    1
  },
  /* ../../gcc/config/brownie32/brownie32.md:556 */
  {
    "udivsi3",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "divu\t%0,%1,%2",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_udivsi3,
    &operand_data[22],
    3,
    0,
    1,
    1
  },
  /* ../../gcc/config/brownie32/brownie32.md:584 */
  {
    "modsi3",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "mod\t%0,%1,%2",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_modsi3,
    &operand_data[22],
    3,
    0,
    1,
    1
  },
  /* ../../gcc/config/brownie32/brownie32.md:593 */
  {
    "umodsi3",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "modu\t%0,%1,%2",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_umodsi3,
    &operand_data[22],
    3,
    0,
    1,
    1
  },
  /* ../../gcc/config/brownie32/brownie32.md:688 */
  {
    "truncsihi2",
#if HAVE_DESIGNATED_INITIALIZERS
    { .multi = output_19 },
#else
    { 0, output_19, 0 },
#endif
    (insn_gen_fn) gen_truncsihi2,
    &operand_data[25],
    2,
    0,
    2,
    2
  },
  /* ../../gcc/config/brownie32/brownie32.md:699 */
  {
    "truncsiqi2",
#if HAVE_DESIGNATED_INITIALIZERS
    { .multi = output_20 },
#else
    { 0, output_20, 0 },
#endif
    (insn_gen_fn) gen_truncsiqi2,
    &operand_data[27],
    2,
    0,
    2,
    2
  },
  /* ../../gcc/config/brownie32/brownie32.md:709 */
  {
    "trunchiqi2",
#if HAVE_DESIGNATED_INITIALIZERS
    { .multi = output_21 },
#else
    { 0, output_21, 0 },
#endif
    (insn_gen_fn) gen_trunchiqi2,
    &operand_data[29],
    2,
    0,
    2,
    2
  },
  /* ../../gcc/config/brownie32/brownie32.md:721 */
  {
    "zero_extendqihi2",
#if HAVE_DESIGNATED_INITIALIZERS
    { .multi = output_22 },
#else
    { 0, output_22, 0 },
#endif
    (insn_gen_fn) gen_zero_extendqihi2,
    &operand_data[31],
    2,
    0,
    2,
    2
  },
  /* ../../gcc/config/brownie32/brownie32.md:742 */
  {
    "zero_extendhisi2",
#if HAVE_DESIGNATED_INITIALIZERS
    { .multi = output_23 },
#else
    { 0, output_23, 0 },
#endif
    (insn_gen_fn) gen_zero_extendhisi2,
    &operand_data[33],
    2,
    0,
    2,
    2
  },
  /* ../../gcc/config/brownie32/brownie32.md:764 */
  {
    "zero_extendqisi2",
#if HAVE_DESIGNATED_INITIALIZERS
    { .multi = output_24 },
#else
    { 0, output_24, 0 },
#endif
    (insn_gen_fn) gen_zero_extendqisi2,
    &operand_data[35],
    2,
    0,
    2,
    2
  },
  /* ../../gcc/config/brownie32/brownie32.md:785 */
  {
    "extendqisi2",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "exbw\t%0,%1",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_extendqisi2,
    &operand_data[37],
    2,
    0,
    1,
    1
  },
  /* ../../gcc/config/brownie32/brownie32.md:795 */
  {
    "extendhisi2",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "exhw\t%0,%1",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_extendhisi2,
    &operand_data[39],
    2,
    0,
    1,
    1
  },
  /* ../../gcc/config/brownie32/brownie32.md:807 */
  {
    "extendqihi2",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "llsi\t%0,%1,#24\n\tarsi\t%0,%0,#24\n\tandi\t%0,%0,#0xffff",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_extendqihi2,
    &operand_data[41],
    2,
    0,
    1,
    1
  },
  /* ../../gcc/config/brownie32/brownie32.md:903 */
  {
    "movsi_general",
#if HAVE_DESIGNATED_INITIALIZERS
    { .function = output_28 },
#else
    { 0, 0, output_28 },
#endif
    (insn_gen_fn) gen_movsi_general,
    &operand_data[43],
    2,
    0,
    6,
    3
  },
  /* ../../gcc/config/brownie32/brownie32.md:957 */
  {
    "movhi_general",
#if HAVE_DESIGNATED_INITIALIZERS
    { .function = output_29 },
#else
    { 0, 0, output_29 },
#endif
    (insn_gen_fn) gen_movhi_general,
    &operand_data[45],
    2,
    0,
    4,
    3
  },
  /* ../../gcc/config/brownie32/brownie32.md:998 */
  {
    "movqi_general",
#if HAVE_DESIGNATED_INITIALIZERS
    { .function = output_30 },
#else
    { 0, 0, output_30 },
#endif
    (insn_gen_fn) gen_movqi_general,
    &operand_data[47],
    2,
    0,
    4,
    3
  },
  /* ../../gcc/config/brownie32/brownie32.md:1051 */
  {
    "movsf_general",
#if HAVE_DESIGNATED_INITIALIZERS
    { .function = output_31 },
#else
    { 0, 0, output_31 },
#endif
    (insn_gen_fn) gen_movsf_general,
    &operand_data[49],
    2,
    0,
    7,
    3
  },
  /* ../../gcc/config/brownie32/brownie32.md:1130 */
  {
    "movdf_general",
#if HAVE_DESIGNATED_INITIALIZERS
    { .function = output_32 },
#else
    { 0, 0, output_32 },
#endif
    (insn_gen_fn) gen_movdf_general,
    &operand_data[51],
    3,
    0,
    1,
    3
  },
  /* ../../gcc/config/brownie32/brownie32.md:1222 */
  {
    "nop",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "nop",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_nop,
    &operand_data[0],
    0,
    0,
    0,
    1
  },
  /* ../../gcc/config/brownie32/brownie32.md:1236 */
  {
    "indirect_jump",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "jpr\t%0%(",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_indirect_jump,
    &operand_data[12],
    1,
    0,
    1,
    1
  },
  /* ../../gcc/config/brownie32/brownie32.md:1245 */
  {
    "jump",
#if HAVE_DESIGNATED_INITIALIZERS
    { .function = output_35 },
#else
    { 0, 0, output_35 },
#endif
    (insn_gen_fn) gen_jump,
    &operand_data[54],
    1,
    0,
    0,
    3
  },
  /* ../../gcc/config/brownie32/brownie32.md:1272 */
  {
    "call_value",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "jpl\t%S1%(",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_call_value,
    &operand_data[55],
    3,
    0,
    1,
    1
  },
  /* ../../gcc/config/brownie32/brownie32.md:1286 */
  {
    "call",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "jpl\t%S0%(",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_call,
    &operand_data[56],
    2,
    0,
    1,
    1
  },
  /* ../../gcc/config/brownie32/brownie32.md:1297 */
  {
    "call_value_indirect",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "jprl\t%1%(",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_call_value_indirect,
    &operand_data[58],
    3,
    0,
    1,
    1
  },
  /* ../../gcc/config/brownie32/brownie32.md:1309 */
  {
    "call_indirect",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "jprl\t%0%(",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_call_indirect,
    &operand_data[59],
    2,
    0,
    1,
    1
  },
  /* ../../gcc/config/brownie32/brownie32.md:1326 */
  {
    "call_val_internal_return_r4",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "jpl\t%S0%(",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_call_val_internal_return_r4,
    &operand_data[56],
    2,
    0,
    1,
    1
  },
  /* ../../gcc/config/brownie32/brownie32.md:1338 */
  {
    "call_val_internal_return_r4_halfword",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "jpl\t%S0%(",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_call_val_internal_return_r4_halfword,
    &operand_data[56],
    2,
    0,
    1,
    1
  },
  /* ../../gcc/config/brownie32/brownie32.md:1350 */
  {
    "call_val_internal_return_r4_quarterword",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "jpl\t%S0%(",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_call_val_internal_return_r4_quarterword,
    &operand_data[56],
    2,
    0,
    1,
    1
  },
  /* ../../gcc/config/brownie32/brownie32.md:1395 */
  {
    "call_val_internal_no_return",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "jpl\t%S0%(",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_call_val_internal_no_return,
    &operand_data[56],
    2,
    0,
    1,
    1
  },
  /* ../../gcc/config/brownie32/brownie32.md:1410 */
  {
    "tablejump",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "jpr\t%0%(",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_tablejump,
    &operand_data[61],
    2,
    0,
    1,
    1
  },
  /* ../../gcc/config/brownie32/brownie32.md:1693 */
  {
    "int_cond_branch",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "brz\t%0,%1%(",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_int_cond_branch,
    &operand_data[61],
    2,
    0,
    1,
    1
  },
  /* ../../gcc/config/brownie32/brownie32.md:1705 */
  {
    "int_cond_branch_rev",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "brnz\t%0,%1%(",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_int_cond_branch_rev,
    &operand_data[61],
    2,
    0,
    1,
    1
  },
  /* ../../gcc/config/brownie32/brownie32.md:1719 */
  {
    "int_cond_branch_lt",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "brnz\t%0,%1%(",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_int_cond_branch_lt,
    &operand_data[61],
    2,
    0,
    1,
    1
  },
  /* ../../gcc/config/brownie32/brownie32.md:1728 */
  {
    "int_cond_branch_gt",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "brnz\t%0,%1%(",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_int_cond_branch_gt,
    &operand_data[61],
    2,
    0,
    1,
    1
  },
  /* ../../gcc/config/brownie32/brownie32.md:1738 */
  {
    "int_cond_branch_le",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "brz\t%0,%1%(",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_int_cond_branch_le,
    &operand_data[61],
    2,
    0,
    1,
    1
  },
  /* ../../gcc/config/brownie32/brownie32.md:1747 */
  {
    "int_cond_branch_ge",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "brz\t%0,%1%(",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_int_cond_branch_ge,
    &operand_data[61],
    2,
    0,
    1,
    1
  },
  /* ../../gcc/config/brownie32/brownie32.md:1756 */
  {
    "int_cond_branch_ltu",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "brnz\t%0,%1%(",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_int_cond_branch_ltu,
    &operand_data[61],
    2,
    0,
    1,
    1
  },
  /* ../../gcc/config/brownie32/brownie32.md:1765 */
  {
    "int_cond_branch_gtu",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "brnz\t%0,%1%(",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_int_cond_branch_gtu,
    &operand_data[61],
    2,
    0,
    1,
    1
  },
  /* ../../gcc/config/brownie32/brownie32.md:1774 */
  {
    "int_cond_branch_leu",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "brnz\t%0,%1%(",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_int_cond_branch_leu,
    &operand_data[61],
    2,
    0,
    1,
    1
  },
  /* ../../gcc/config/brownie32/brownie32.md:1783 */
  {
    "int_cond_branch_geu",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "brnz\t%0,%1%(",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_int_cond_branch_geu,
    &operand_data[61],
    2,
    0,
    1,
    1
  },
  /* ../../gcc/config/brownie32/brownie32.md:1832 */
  {
    "set_internal",
#if HAVE_DESIGNATED_INITIALIZERS
    { .single =
#else
    {
#endif
    "%C1\t%0,%2,%3",
#if HAVE_DESIGNATED_INITIALIZERS
    },
#else
    0, 0 },
#endif
    (insn_gen_fn) gen_set_internal,
    &operand_data[63],
    4,
    0,
    1,
    1
  },
  /* ../../gcc/config/brownie32/brownie32.md:852 */
  {
    "movsi",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    (insn_gen_fn) gen_movsi,
    &operand_data[67],
    2,
    0,
    0,
    0
  },
  /* ../../gcc/config/brownie32/brownie32.md:941 */
  {
    "movhi",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    (insn_gen_fn) gen_movhi,
    &operand_data[69],
    2,
    0,
    0,
    0
  },
  /* ../../gcc/config/brownie32/brownie32.md:982 */
  {
    "movqi",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    (insn_gen_fn) gen_movqi,
    &operand_data[71],
    2,
    0,
    0,
    0
  },
  /* ../../gcc/config/brownie32/brownie32.md:1027 */
  {
    "movsf",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    (insn_gen_fn) gen_movsf,
    &operand_data[73],
    2,
    0,
    0,
    0
  },
  /* ../../gcc/config/brownie32/brownie32.md:1425 */
  {
    "cmpsi",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    (insn_gen_fn) gen_cmpsi,
    &operand_data[75],
    2,
    0,
    1,
    0
  },
  /* ../../gcc/config/brownie32/brownie32.md:1439 */
  {
    "tstsi",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    (insn_gen_fn) gen_tstsi,
    &operand_data[12],
    1,
    0,
    1,
    0
  },
  /* ../../gcc/config/brownie32/brownie32.md:1489 */
  {
    "beq",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    (insn_gen_fn) gen_beq,
    &operand_data[54],
    1,
    0,
    0,
    0
  },
  /* ../../gcc/config/brownie32/brownie32.md:1494 */
  {
    "bne",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    (insn_gen_fn) gen_bne,
    &operand_data[54],
    1,
    0,
    0,
    0
  },
  /* ../../gcc/config/brownie32/brownie32.md:1500 */
  {
    "blt",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    (insn_gen_fn) gen_blt,
    &operand_data[54],
    1,
    0,
    0,
    0
  },
  /* ../../gcc/config/brownie32/brownie32.md:1505 */
  {
    "bgt",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    (insn_gen_fn) gen_bgt,
    &operand_data[54],
    1,
    0,
    0,
    0
  },
  /* ../../gcc/config/brownie32/brownie32.md:1510 */
  {
    "ble",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    (insn_gen_fn) gen_ble,
    &operand_data[54],
    1,
    0,
    0,
    0
  },
  /* ../../gcc/config/brownie32/brownie32.md:1515 */
  {
    "bge",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    (insn_gen_fn) gen_bge,
    &operand_data[54],
    1,
    0,
    0,
    0
  },
  /* ../../gcc/config/brownie32/brownie32.md:1520 */
  {
    "bltu",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    (insn_gen_fn) gen_bltu,
    &operand_data[54],
    1,
    0,
    0,
    0
  },
  /* ../../gcc/config/brownie32/brownie32.md:1525 */
  {
    "bgtu",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    (insn_gen_fn) gen_bgtu,
    &operand_data[54],
    1,
    0,
    0,
    0
  },
  /* ../../gcc/config/brownie32/brownie32.md:1530 */
  {
    "bleu",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    (insn_gen_fn) gen_bleu,
    &operand_data[54],
    1,
    0,
    0,
    0
  },
  /* ../../gcc/config/brownie32/brownie32.md:1535 */
  {
    "bgeu",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    (insn_gen_fn) gen_bgeu,
    &operand_data[54],
    1,
    0,
    0,
    0
  },
  /* ../../gcc/config/brownie32/brownie32.md:1554 */
  {
    "eeq",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    (insn_gen_fn) gen_eeq,
    &operand_data[10],
    1,
    2,
    1,
    0
  },
  /* ../../gcc/config/brownie32/brownie32.md:1574 */
  {
    "eneq",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    (insn_gen_fn) gen_eneq,
    &operand_data[10],
    1,
    2,
    1,
    0
  },
  /* ../../gcc/config/brownie32/brownie32.md:1594 */
  {
    "elt",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    (insn_gen_fn) gen_elt,
    &operand_data[10],
    1,
    2,
    1,
    0
  },
  /* ../../gcc/config/brownie32/brownie32.md:1645 */
  {
    "eltu",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    (insn_gen_fn) gen_eltu,
    &operand_data[10],
    1,
    2,
    1,
    0
  },
  /* ../../gcc/config/brownie32/brownie32.md:1882 */
  {
    "eltu+1",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    0,
    &operand_data[77],
    4,
    0,
    0,
    0
  },
  /* ../../gcc/config/brownie32/brownie32.md:1897 */
  {
    "eltu+2",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    0,
    &operand_data[77],
    4,
    0,
    0,
    0
  },
  /* ../../gcc/config/brownie32/brownie32.md:1912 */
  {
    "eltu+3",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    0,
    &operand_data[77],
    4,
    0,
    0,
    0
  },
  /* ../../gcc/config/brownie32/brownie32.md:1927 */
  {
    "eltu+4",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    0,
    &operand_data[77],
    4,
    0,
    0,
    0
  },
  /* ../../gcc/config/brownie32/brownie32.md:1942 */
  {
    "eltu+5",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    0,
    &operand_data[77],
    4,
    0,
    0,
    0
  },
  /* ../../gcc/config/brownie32/brownie32.md:1957 */
  {
    "eltu+6",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    0,
    &operand_data[77],
    4,
    0,
    0,
    0
  },
  /* ../../gcc/config/brownie32/brownie32.md:1986 */
  {
    "eltu+7",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    0,
    &operand_data[77],
    3,
    0,
    0,
    0
  },
  /* ../../gcc/config/brownie32/brownie32.md:1996 */
  {
    "eltu+8",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    0,
    &operand_data[77],
    3,
    0,
    0,
    0
  },
  /* ../../gcc/config/brownie32/brownie32.md:2006 */
  {
    "eltu+9",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    0,
    &operand_data[77],
    3,
    0,
    0,
    0
  },
  /* ../../gcc/config/brownie32/brownie32.md:2017 */
  {
    "eltu+10",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    0,
    &operand_data[77],
    3,
    0,
    0,
    0
  },
  /* ../../gcc/config/brownie32/brownie32.md:2027 */
  {
    "eltu+11",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    0,
    &operand_data[77],
    3,
    0,
    0,
    0
  },
  /* ../../gcc/config/brownie32/brownie32.md:2037 */
  {
    "eltu+12",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    0,
    &operand_data[77],
    3,
    0,
    0,
    0
  },
  /* ../../gcc/config/brownie32/brownie32.md:2051 */
  {
    "eltu+13",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    0,
    &operand_data[10],
    4,
    0,
    0,
    0
  },
  /* ../../gcc/config/brownie32/brownie32.md:2063 */
  {
    "eltu+14",
#if HAVE_DESIGNATED_INITIALIZERS
    { 0 },
#else
    { 0, 0, 0 },
#endif
    0,
    &operand_data[10],
    4,
    0,
    0,
    0
  },
};


const char *
get_insn_name (int code)
{
  if (code == NOOP_MOVE_INSN_CODE)
    return "NOOP_MOVE";
  else
    return insn_data[code].name;
}
