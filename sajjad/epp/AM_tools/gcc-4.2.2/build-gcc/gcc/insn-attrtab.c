/* Generated automatically by the program `genattrtab'
from the machine description file `md'.  */

#include "config.h"
#include "system.h"
#include "coretypes.h"
#include "tm.h"
#include "rtl.h"
#include "tm_p.h"
#include "insn-config.h"
#include "recog.h"
#include "regs.h"
#include "real.h"
#include "output.h"
#include "insn-attr.h"
#include "toplev.h"
#include "flags.h"
#include "function.h"

#define operands recog_data.operand

int
insn_current_length (rtx insn ATTRIBUTE_UNUSED)
{
  switch (recog_memoized (insn))
    {
    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
    default:
      return 0;

    }
}

int
insn_variable_length_p (rtx insn ATTRIBUTE_UNUSED)
{
  switch (recog_memoized (insn))
    {
    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
    default:
      return 0;

    }
}

int
insn_min_length (rtx insn ATTRIBUTE_UNUSED)
{
  switch (recog_memoized (insn))
    {
    case 31:  /* movsf_general */
      extract_constrain_insn_cached (insn);
      if (which_alternative == 0)
        {
	  return 2;
        }
      else if (((1 << which_alternative) & 0x6))
        {
	  return 1;
        }
      else
        {
	  return 3;
        }

    case 30:  /* movqi_general */
    case 29:  /* movhi_general */
      extract_constrain_insn_cached (insn);
      if (which_alternative == 0)
        {
	  return 1;
        }
      else if (which_alternative == 1)
        {
	  return 2;
        }
      else
        {
	  return 1;
        }

    case 28:  /* movsi_general */
      extract_constrain_insn_cached (insn);
      if (((1 << which_alternative) & 0x3))
        {
	  return 1;
        }
      else if (which_alternative == 2)
        {
	  return 3;
        }
      else if (which_alternative == 3)
        {
	  return 2;
        }
      else
        {
	  return 1;
        }

    case 27:  /* extendqihi2 */
      return 3;

    case 26:  /* extendhisi2 */
    case 25:  /* extendqisi2 */
    case 19:  /* truncsihi2 */
    case 10:  /* one_cmplsi2 */
      return 2;

    case 24:  /* zero_extendqisi2 */
    case 23:  /* zero_extendhisi2 */
    case 22:  /* zero_extendqihi2 */
      extract_constrain_insn_cached (insn);
      if (which_alternative == 0)
        {
	  return 1;
        }
      else
        {
	  return 2;
        }

    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
    default:
      return 1;

    }
}

int
insn_default_length (rtx insn ATTRIBUTE_UNUSED)
{
  switch (recog_memoized (insn))
    {
    case 31:  /* movsf_general */
      extract_constrain_insn_cached (insn);
      if (which_alternative == 0)
        {
	  return 2;
        }
      else if (((1 << which_alternative) & 0x6))
        {
	  return 1;
        }
      else
        {
	  return 3;
        }

    case 30:  /* movqi_general */
    case 29:  /* movhi_general */
      extract_constrain_insn_cached (insn);
      if (which_alternative == 0)
        {
	  return 1;
        }
      else if (which_alternative == 1)
        {
	  return 2;
        }
      else
        {
	  return 1;
        }

    case 28:  /* movsi_general */
      extract_constrain_insn_cached (insn);
      if (((1 << which_alternative) & 0x3))
        {
	  return 1;
        }
      else if (which_alternative == 2)
        {
	  return 3;
        }
      else if (which_alternative == 3)
        {
	  return 2;
        }
      else
        {
	  return 1;
        }

    case 27:  /* extendqihi2 */
      return 3;

    case 26:  /* extendhisi2 */
    case 25:  /* extendqisi2 */
    case 19:  /* truncsihi2 */
    case 10:  /* one_cmplsi2 */
      return 2;

    case 24:  /* zero_extendqisi2 */
    case 23:  /* zero_extendhisi2 */
    case 22:  /* zero_extendqihi2 */
      extract_constrain_insn_cached (insn);
      if (which_alternative == 0)
        {
	  return 1;
        }
      else
        {
	  return 2;
        }

    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
    default:
      return 1;

    }
}

int
num_delay_slots (rtx insn ATTRIBUTE_UNUSED)
{
  switch (recog_memoized (insn))
    {
    case 54:  /* int_cond_branch_geu */
    case 53:  /* int_cond_branch_leu */
    case 52:  /* int_cond_branch_gtu */
    case 51:  /* int_cond_branch_ltu */
    case 50:  /* int_cond_branch_ge */
    case 49:  /* int_cond_branch_le */
    case 48:  /* int_cond_branch_gt */
    case 47:  /* int_cond_branch_lt */
    case 46:  /* int_cond_branch_rev */
    case 45:  /* int_cond_branch */
    case 44:  /* tablejump */
    case 43:  /* call_val_internal_no_return */
    case 42:  /* call_val_internal_return_r4_quarterword */
    case 41:  /* call_val_internal_return_r4_halfword */
    case 40:  /* call_val_internal_return_r4 */
    case 39:  /* call_indirect */
    case 38:  /* call_value_indirect */
    case 37:  /* call */
    case 36:  /* call_value */
    case 35:  /* jump */
    case 34:  /* indirect_jump */
      return 1;

    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
      if ((get_attr_type (insn) == TYPE_BRANCH) || (get_attr_type (insn) == TYPE_JUMP))
        {
	  return 1;
        }
      else
        {
	  return 0;
        }

    default:
      return 0;

    }
}

enum attr_insn_mnemonic
get_attr_insn_mnemonic (rtx insn ATTRIBUTE_UNUSED)
{
  switch (recog_memoized (insn))
    {
    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
    default:
      return INSN_MNEMONIC_UNKNOWN;

    }
}

enum attr_mode
get_attr_mode (rtx insn ATTRIBUTE_UNUSED)
{
  switch (recog_memoized (insn))
    {
    case 31:  /* movsf_general */
      return MODE_SF;

    case 9:  /* one_cmplhi2 */
    case 19:  /* truncsihi2 */
    case 22:  /* zero_extendqihi2 */
    case 27:  /* extendqihi2 */
    case 29:  /* movhi_general */
      return MODE_HI;

    case 8:  /* one_cmplqi2 */
    case 20:  /* truncsiqi2 */
    case 21:  /* trunchiqi2 */
    case 30:  /* movqi_general */
      return MODE_QI;

    case 33:  /* nop */
    case 34:  /* indirect_jump */
    case 35:  /* jump */
    case 36:  /* call_value */
    case 37:  /* call */
    case 38:  /* call_value_indirect */
    case 39:  /* call_indirect */
    case 40:  /* call_val_internal_return_r4 */
    case 41:  /* call_val_internal_return_r4_halfword */
    case 42:  /* call_val_internal_return_r4_quarterword */
    case 43:  /* call_val_internal_no_return */
    case 44:  /* tablejump */
      return MODE_NONE;

    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
    case 32:  /* movdf_general */
      return MODE_UNKNOWN;

    default:
      return MODE_SI;

    }
}

enum attr_type
get_attr_type (rtx insn ATTRIBUTE_UNUSED)
{
  switch (recog_memoized (insn))
    {
    case 31:  /* movsf_general */
      extract_constrain_insn_cached (insn);
      if (which_alternative == 0)
        {
	  return TYPE_LOAD;
        }
      else if (which_alternative == 1)
        {
	  return TYPE_STORE;
        }
      else
        {
	  return TYPE_MOVE;
        }

    case 28:  /* movsi_general */
      extract_constrain_insn_cached (insn);
      if (((1 << which_alternative) & 0x7))
        {
	  return TYPE_MOVE;
        }
      else if (which_alternative == 3)
        {
	  return TYPE_LOAD;
        }
      else if (which_alternative == 4)
        {
	  return TYPE_STORE;
        }
      else
        {
	  return TYPE_MOVE;
        }

    case 19:  /* truncsihi2 */
    case 20:  /* truncsiqi2 */
    case 21:  /* trunchiqi2 */
      extract_constrain_insn_cached (insn);
      if (which_alternative == 0)
        {
	  return TYPE_ALU;
        }
      else
        {
	  return TYPE_STORE;
        }

    case 22:  /* zero_extendqihi2 */
    case 23:  /* zero_extendhisi2 */
    case 24:  /* zero_extendqisi2 */
      extract_constrain_insn_cached (insn);
      if (which_alternative == 0)
        {
	  return TYPE_ALU;
        }
      else
        {
	  return TYPE_LOAD;
        }

    case 29:  /* movhi_general */
    case 30:  /* movqi_general */
      extract_constrain_insn_cached (insn);
      if (which_alternative == 0)
        {
	  return TYPE_MOVE;
        }
      else if (which_alternative == 1)
        {
	  return TYPE_LOAD;
        }
      else if (which_alternative == 2)
        {
	  return TYPE_STORE;
        }
      else
        {
	  return TYPE_MOVE;
        }

    case 34:  /* indirect_jump */
    case 35:  /* jump */
    case 36:  /* call_value */
    case 37:  /* call */
    case 38:  /* call_value_indirect */
    case 39:  /* call_indirect */
    case 40:  /* call_val_internal_return_r4 */
    case 41:  /* call_val_internal_return_r4_halfword */
    case 42:  /* call_val_internal_return_r4_quarterword */
    case 43:  /* call_val_internal_no_return */
    case 44:  /* tablejump */
      return TYPE_JUMP;

    case 45:  /* int_cond_branch */
    case 46:  /* int_cond_branch_rev */
    case 47:  /* int_cond_branch_lt */
    case 48:  /* int_cond_branch_gt */
    case 49:  /* int_cond_branch_le */
    case 50:  /* int_cond_branch_ge */
    case 51:  /* int_cond_branch_ltu */
    case 52:  /* int_cond_branch_gtu */
    case 53:  /* int_cond_branch_leu */
    case 54:  /* int_cond_branch_geu */
      return TYPE_BRANCH;

    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
    case 32:  /* movdf_general */
      return TYPE_UNKNOWN;

    default:
      return TYPE_ALU;

    }
}

int
eligible_for_delay (rtx delay_insn ATTRIBUTE_UNUSED, int slot, rtx candidate_insn, int flags ATTRIBUTE_UNUSED)
{
  rtx insn;

  gcc_assert (slot < 1);

  if (!INSN_P (candidate_insn))
    return 0;

  insn = candidate_insn;
  switch (recog_memoized (insn))
    {
    case -1:
      if (GET_CODE (PATTERN (insn)) != ASM_INPUT
          && asm_noperands (PATTERN (insn)) < 0)
        fatal_insn_not_found (insn);
      if (((! (get_attr_type (insn) == TYPE_BRANCH)) && (! (get_attr_type (insn) == TYPE_JUMP))) && (get_attr_length (insn) == 200 /* 0xc8 */))
        {
	  return 1;
        }
      else
        {
	  return 0;
        }

    default:
      return 0;

    }
}

int
const_num_delay_slots (rtx insn)
{
  switch (recog_memoized (insn))
    {
    default:
      return 1;
    }
}

const int length_unit_log = 0;
