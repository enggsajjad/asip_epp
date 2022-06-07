/* Generated automatically by the program 'build/genpreds'
   from the machine description file '../../gcc/config/brownie32/brownie32.md'.  */

#include "config.h"
#include "system.h"
#include "coretypes.h"
#include "tm.h"
#include "rtl.h"
#include "tree.h"
#include "tm_p.h"
#include "function.h"
#include "insn-config.h"
#include "recog.h"
#include "real.h"
#include "output.h"
#include "flags.h"
#include "hard-reg-set.h"
#include "resource.h"
#include "toplev.h"
#include "reload.h"
#include "regs.h"
#include "tm-constrs.h"

static inline int
sym_ref_mem_operand_1 (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
#line 3 "../../gcc/config/brownie32/predicates.md"
{
  rtx t1 = XEXP(op, 0);
  if(GET_CODE(t1) == SYMBOL_REF)
    {
      return 1;
    }
  else
    return 0;
}

int
sym_ref_mem_operand (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  return ((GET_CODE (op) == MEM) && (
(sym_ref_mem_operand_1 (op, mode)))) && (
(mode == VOIDmode || GET_MODE (op) == mode));
}

int
signed_comparison_operator (rtx op, enum machine_mode mode ATTRIBUTE_UNUSED)
{
  switch (GET_CODE (op))
    {
    case EQ:
    case NE:
    case LT:
    case LE:
    case GE:
    case GT:
      break;
    default:
      return false;
    }
  return (
#line 16 "../../gcc/config/brownie32/predicates.md"
(mode == VOIDmode || GET_MODE (op) == mode)) && (
(mode == VOIDmode || GET_MODE (op) == mode));
}

