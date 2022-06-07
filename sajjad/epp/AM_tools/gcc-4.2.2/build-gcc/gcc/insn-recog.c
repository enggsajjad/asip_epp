/* Generated automatically by the program `genrecog' from the target
   machine description file.  */

#include "config.h"
#include "system.h"
#include "coretypes.h"
#include "tm.h"
#include "rtl.h"
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
#include "tm-constrs.h"



/* `recog' contains a decision tree that recognizes whether the rtx
   X0 is a valid instruction.

   recog returns -1 if the rtx is not valid.  If the rtx is valid, recog
   returns a nonnegative number which is the insn code number for the
   pattern that matched.  This is the same as the order in the machine
   description of the entry that matched.  This number can be used as an
   index into `insn_data' and other tables.

   The third argument to recog is an optional pointer to an int.  If
   present, recog will accept a pattern if it matches except for missing
   CLOBBER expressions at the end.  In that case, the value pointed to by
   the optional pointer will be set to the number of CLOBBERs that need
   to be added (it should be initialized to zero by the caller).  If it
   is set nonzero, the caller should allocate a PARALLEL of the
   appropriate size, copy the initial entries, and call add_clobbers
   (found in insn-emit.c) to fill in the CLOBBERs.


   The function split_insns returns 0 if the rtl could not
   be split or the split rtl as an INSN list if it can be.

   The function peephole2_insns returns 0 if the rtl could not
   be matched. If there was a match, the new rtl is returned in an INSN list,
   and LAST_INSN will point to the last recognized insn in the old sequence.
*/


extern rtx gen_peephole2_76 (rtx, rtx *);
extern rtx gen_peephole2_77 (rtx, rtx *);
extern rtx gen_peephole2_78 (rtx, rtx *);
extern rtx gen_peephole2_79 (rtx, rtx *);
extern rtx gen_peephole2_80 (rtx, rtx *);
extern rtx gen_peephole2_81 (rtx, rtx *);
extern rtx gen_peephole2_82 (rtx, rtx *);
extern rtx gen_peephole2_83 (rtx, rtx *);
extern rtx gen_peephole2_84 (rtx, rtx *);
extern rtx gen_peephole2_85 (rtx, rtx *);
extern rtx gen_peephole2_86 (rtx, rtx *);
extern rtx gen_peephole2_87 (rtx, rtx *);
extern rtx gen_peephole2_88 (rtx, rtx *);
extern rtx gen_peephole2_89 (rtx, rtx *);



static int
recog_1 (rtx x0 ATTRIBUTE_UNUSED,
	rtx insn ATTRIBUTE_UNUSED,
	int *pnum_clobbers ATTRIBUTE_UNUSED)
{
  rtx * const operands ATTRIBUTE_UNUSED = &recog_data.operand[0];
  rtx x1 ATTRIBUTE_UNUSED;
  rtx x2 ATTRIBUTE_UNUSED;
  rtx x3 ATTRIBUTE_UNUSED;
  rtx x4 ATTRIBUTE_UNUSED;
  int tem ATTRIBUTE_UNUSED;

  x1 = XEXP (x0, 0);
  switch (GET_MODE (x1))
    {
    case SImode:
      goto L506;
    case QImode:
      goto L507;
    case HImode:
      goto L508;
    default:
      break;
    }
 L153: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x1) == PC)
    goto L154;
  if (general_operand (x1, HImode))
    {
      operands[0] = x1;
      goto L95;
    }
 L98: ATTRIBUTE_UNUSED_LABEL
  if (general_operand (x1, QImode))
    {
      operands[0] = x1;
      goto L99;
    }
 L130: ATTRIBUTE_UNUSED_LABEL
  if (general_operand (x1, SImode))
    {
      operands[0] = x1;
      goto L131;
    }
 L133: ATTRIBUTE_UNUSED_LABEL
  if (general_operand (x1, HImode))
    {
      operands[0] = x1;
      goto L134;
    }
 L136: ATTRIBUTE_UNUSED_LABEL
  if (general_operand (x1, QImode))
    {
      operands[0] = x1;
      goto L137;
    }
 L139: ATTRIBUTE_UNUSED_LABEL
  if (general_operand (x1, SFmode))
    {
      operands[0] = x1;
      goto L140;
    }
 L148: ATTRIBUTE_UNUSED_LABEL
  if (general_operand (x1, DImode))
    {
      operands[0] = x1;
      goto L149;
    }
 L168: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x1, VOIDmode))
    {
      operands[0] = x1;
      goto L169;
    }
 L220: ATTRIBUTE_UNUSED_LABEL
  switch (GET_MODE (x1))
    {
    case SImode:
      goto L509;
    case HImode:
      goto L510;
    case QImode:
      goto L511;
    default:
      break;
    }
  goto ret0;

 L506: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x1, SImode))
    {
      operands[0] = x1;
      goto L2;
    }
  goto L153;

 L2: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == SImode)
    goto L512;
  x1 = XEXP (x0, 0);
  goto L153;

 L512: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x1))
    {
    case PLUS:
      goto L3;
    case MINUS:
      goto L8;
    case AND:
      goto L13;
    case IOR:
      goto L18;
    case XOR:
      goto L23;
    case NOT:
      goto L28;
    case NEG:
      goto L40;
    case ASHIFT:
      goto L56;
    case ASHIFTRT:
      goto L61;
    case LSHIFTRT:
      goto L66;
    case MULT:
      goto L71;
    case DIV:
      goto L76;
    case UDIV:
      goto L81;
    case MOD:
      goto L86;
    case UMOD:
      goto L91;
    case ZERO_EXTEND:
      goto L112;
    case SIGN_EXTEND:
      goto L120;
    case NE:
    case EQ:
    case GE:
    case GT:
    case LE:
    case LT:
    case GEU:
    case GTU:
    case LEU:
    case LTU:
    case UNORDERED:
    case ORDERED:
    case UNEQ:
    case UNGE:
    case UNGT:
    case UNLE:
    case UNLT:
    case LTGT:
      goto L529;
    default:
      x1 = XEXP (x0, 0);
      goto L153;
   }
 L529: ATTRIBUTE_UNUSED_LABEL
  if (comparison_operator (x1, SImode))
    {
      operands[1] = x1;
      goto L356;
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L3: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L4;
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L4: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (nonmemory_operand (x2, SImode))
    {
      operands[2] = x2;
      return 0;  /* addsi3 */
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L8: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L9;
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L9: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (nonmemory_operand (x2, SImode))
    {
      operands[2] = x2;
      return 1;  /* subsi3 */
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L13: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L14;
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L14: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (nonmemory_operand (x2, SImode))
    {
      operands[2] = x2;
      return 2;  /* andsi3 */
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L18: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L19;
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L19: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (nonmemory_operand (x2, SImode))
    {
      operands[2] = x2;
      return 3;  /* iorsi3 */
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L23: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L24;
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L24: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (nonmemory_operand (x2, SImode))
    {
      operands[2] = x2;
      return 4;  /* xorsi3 */
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L28: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == SImode)
    goto L530;
  x1 = XEXP (x0, 0);
  goto L153;

 L530: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x2))
    {
    case AND:
      goto L29;
    case IOR:
      goto L35;
    case REG:
    case SUBREG:
      goto L532;
    default:
      x1 = XEXP (x0, 0);
      goto L153;
   }
 L532: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      return 10;  /* one_cmplsi2 */
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L29: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L30;
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L30: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      return 5;  /* nandsi3 */
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L35: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L36;
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L36: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      return 6;  /* norsi3 */
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L40: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      return 7;  /* negsi2 */
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L56: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L57;
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L57: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (nonmemory_operand (x2, SImode))
    {
      operands[2] = x2;
      return 11;  /* ashlsi3 */
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L61: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L62;
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L62: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (nonmemory_operand (x2, SImode))
    {
      operands[2] = x2;
      return 12;  /* ashrsi3 */
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L66: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L67;
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L67: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (nonmemory_operand (x2, SImode))
    {
      operands[2] = x2;
      return 13;  /* lshrsi3 */
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L71: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L72;
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L72: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, SImode))
    {
      operands[2] = x2;
      return 14;  /* mulsi3 */
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L76: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L77;
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L77: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, SImode))
    {
      operands[2] = x2;
      return 15;  /* divsi3 */
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L81: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L82;
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L82: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, SImode))
    {
      operands[2] = x2;
      return 16;  /* udivsi3 */
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L86: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L87;
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L87: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, SImode))
    {
      operands[2] = x2;
      return 17;  /* modsi3 */
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L91: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L92;
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L92: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, SImode))
    {
      operands[2] = x2;
      return 18;  /* umodsi3 */
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L112: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (general_operand (x2, HImode))
    {
      operands[1] = x2;
      return 23;  /* zero_extendhisi2 */
    }
 L116: ATTRIBUTE_UNUSED_LABEL
  if (general_operand (x2, QImode))
    {
      operands[1] = x2;
      return 24;  /* zero_extendqisi2 */
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L120: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  switch (GET_MODE (x2))
    {
    case QImode:
      goto L533;
    case HImode:
      goto L534;
    default:
      break;
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L533: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, QImode))
    {
      operands[1] = x2;
      return 25;  /* extendqisi2 */
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L534: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, HImode))
    {
      operands[1] = x2;
      return 26;  /* extendhisi2 */
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L356: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L357;
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L357: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      return 55;  /* set_internal */
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L507: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x1, QImode))
    {
      operands[0] = x1;
      goto L43;
    }
  goto L153;

 L43: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == QImode
      && GET_CODE (x1) == NOT)
    goto L44;
  x1 = XEXP (x0, 0);
  goto L153;

 L44: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, QImode))
    {
      operands[1] = x2;
      return 8;  /* one_cmplqi2 */
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L508: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x1, HImode))
    {
      operands[0] = x1;
      goto L47;
    }
  goto L153;

 L47: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == HImode)
    goto L535;
  x1 = XEXP (x0, 0);
  goto L153;

 L535: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x1))
    {
    case NOT:
      goto L48;
    case ZERO_EXTEND:
      goto L108;
    case SIGN_EXTEND:
      goto L128;
    default:
     break;
   }
  x1 = XEXP (x0, 0);
  goto L153;

 L48: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, HImode))
    {
      operands[1] = x2;
      return 9;  /* one_cmplhi2 */
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L108: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (general_operand (x2, QImode))
    {
      operands[1] = x2;
      return 22;  /* zero_extendqihi2 */
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L128: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, QImode))
    {
      operands[1] = x2;
      return 27;  /* extendqihi2 */
    }
  x1 = XEXP (x0, 0);
  goto L153;

 L154: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (register_operand (x1, SImode))
    {
      operands[0] = x1;
      return 34;  /* indirect_jump */
    }
  switch (GET_CODE (x1))
    {
    case LABEL_REF:
      goto L158;
    case IF_THEN_ELSE:
      goto L266;
    default:
     break;
   }
  x1 = XEXP (x0, 0);
  goto L220;

 L158: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  operands[0] = x2;
  return 35;  /* jump */

 L266: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == SImode)
    goto L538;
  x1 = XEXP (x0, 0);
  goto L220;

 L538: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x2))
    {
    case EQ:
      goto L267;
    case NE:
      goto L276;
    case LT:
      goto L285;
    case GT:
      goto L294;
    case LE:
      goto L303;
    case GE:
      goto L312;
    case LTU:
      goto L321;
    case GTU:
      goto L330;
    case LEU:
      goto L339;
    case GEU:
      goto L348;
    default:
     break;
   }
  x1 = XEXP (x0, 0);
  goto L220;

 L267: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (x3 == const_int_rtx[MAX_SAVED_CONST_INT + (0)])
    goto L268;
  x1 = XEXP (x0, 0);
  goto L220;

 L268: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, SImode))
    {
      operands[0] = x3;
      goto L269;
    }
  x1 = XEXP (x0, 0);
  goto L220;

 L269: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == LABEL_REF)
    goto L270;
  x1 = XEXP (x0, 0);
  goto L220;

 L270: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  operands[1] = x3;
  goto L271;

 L271: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (GET_CODE (x2) == PC)
    {
      return 45;  /* int_cond_branch */
    }
  x1 = XEXP (x0, 0);
  goto L220;

 L276: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (x3 == const_int_rtx[MAX_SAVED_CONST_INT + (0)])
    goto L277;
  x1 = XEXP (x0, 0);
  goto L220;

 L277: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, SImode))
    {
      operands[0] = x3;
      goto L278;
    }
  x1 = XEXP (x0, 0);
  goto L220;

 L278: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == LABEL_REF)
    goto L279;
  x1 = XEXP (x0, 0);
  goto L220;

 L279: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  operands[1] = x3;
  goto L280;

 L280: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (GET_CODE (x2) == PC)
    {
      return 46;  /* int_cond_branch_rev */
    }
  x1 = XEXP (x0, 0);
  goto L220;

 L285: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (x3 == const_int_rtx[MAX_SAVED_CONST_INT + (0)])
    goto L286;
  x1 = XEXP (x0, 0);
  goto L220;

 L286: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, SImode))
    {
      operands[0] = x3;
      goto L287;
    }
  x1 = XEXP (x0, 0);
  goto L220;

 L287: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == LABEL_REF)
    goto L288;
  x1 = XEXP (x0, 0);
  goto L220;

 L288: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  operands[1] = x3;
  goto L289;

 L289: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (GET_CODE (x2) == PC)
    {
      return 47;  /* int_cond_branch_lt */
    }
  x1 = XEXP (x0, 0);
  goto L220;

 L294: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (x3 == const_int_rtx[MAX_SAVED_CONST_INT + (0)])
    goto L295;
  x1 = XEXP (x0, 0);
  goto L220;

 L295: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, SImode))
    {
      operands[0] = x3;
      goto L296;
    }
  x1 = XEXP (x0, 0);
  goto L220;

 L296: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == LABEL_REF)
    goto L297;
  x1 = XEXP (x0, 0);
  goto L220;

 L297: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  operands[1] = x3;
  goto L298;

 L298: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (GET_CODE (x2) == PC)
    {
      return 48;  /* int_cond_branch_gt */
    }
  x1 = XEXP (x0, 0);
  goto L220;

 L303: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (x3 == const_int_rtx[MAX_SAVED_CONST_INT + (0)])
    goto L304;
  x1 = XEXP (x0, 0);
  goto L220;

 L304: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, SImode))
    {
      operands[0] = x3;
      goto L305;
    }
  x1 = XEXP (x0, 0);
  goto L220;

 L305: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == LABEL_REF)
    goto L306;
  x1 = XEXP (x0, 0);
  goto L220;

 L306: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  operands[1] = x3;
  goto L307;

 L307: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (GET_CODE (x2) == PC)
    {
      return 49;  /* int_cond_branch_le */
    }
  x1 = XEXP (x0, 0);
  goto L220;

 L312: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (x3 == const_int_rtx[MAX_SAVED_CONST_INT + (0)])
    goto L313;
  x1 = XEXP (x0, 0);
  goto L220;

 L313: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, SImode))
    {
      operands[0] = x3;
      goto L314;
    }
  x1 = XEXP (x0, 0);
  goto L220;

 L314: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == LABEL_REF)
    goto L315;
  x1 = XEXP (x0, 0);
  goto L220;

 L315: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  operands[1] = x3;
  goto L316;

 L316: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (GET_CODE (x2) == PC)
    {
      return 50;  /* int_cond_branch_ge */
    }
  x1 = XEXP (x0, 0);
  goto L220;

 L321: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (x3 == const_int_rtx[MAX_SAVED_CONST_INT + (0)])
    goto L322;
  x1 = XEXP (x0, 0);
  goto L220;

 L322: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, SImode))
    {
      operands[0] = x3;
      goto L323;
    }
  x1 = XEXP (x0, 0);
  goto L220;

 L323: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == LABEL_REF)
    goto L324;
  x1 = XEXP (x0, 0);
  goto L220;

 L324: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  operands[1] = x3;
  goto L325;

 L325: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (GET_CODE (x2) == PC)
    {
      return 51;  /* int_cond_branch_ltu */
    }
  x1 = XEXP (x0, 0);
  goto L220;

 L330: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (x3 == const_int_rtx[MAX_SAVED_CONST_INT + (0)])
    goto L331;
  x1 = XEXP (x0, 0);
  goto L220;

 L331: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, SImode))
    {
      operands[0] = x3;
      goto L332;
    }
  x1 = XEXP (x0, 0);
  goto L220;

 L332: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == LABEL_REF)
    goto L333;
  x1 = XEXP (x0, 0);
  goto L220;

 L333: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  operands[1] = x3;
  goto L334;

 L334: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (GET_CODE (x2) == PC)
    {
      return 52;  /* int_cond_branch_gtu */
    }
  x1 = XEXP (x0, 0);
  goto L220;

 L339: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (x3 == const_int_rtx[MAX_SAVED_CONST_INT + (0)])
    goto L340;
  x1 = XEXP (x0, 0);
  goto L220;

 L340: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, SImode))
    {
      operands[0] = x3;
      goto L341;
    }
  x1 = XEXP (x0, 0);
  goto L220;

 L341: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == LABEL_REF)
    goto L342;
  x1 = XEXP (x0, 0);
  goto L220;

 L342: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  operands[1] = x3;
  goto L343;

 L343: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (GET_CODE (x2) == PC)
    {
      return 53;  /* int_cond_branch_leu */
    }
  x1 = XEXP (x0, 0);
  goto L220;

 L348: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (x3 == const_int_rtx[MAX_SAVED_CONST_INT + (0)])
    goto L349;
  x1 = XEXP (x0, 0);
  goto L220;

 L349: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (register_operand (x3, SImode))
    {
      operands[0] = x3;
      goto L350;
    }
  x1 = XEXP (x0, 0);
  goto L220;

 L350: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == LABEL_REF)
    goto L351;
  x1 = XEXP (x0, 0);
  goto L220;

 L351: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  operands[1] = x3;
  goto L352;

 L352: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 2);
  if (GET_CODE (x2) == PC)
    {
      return 54;  /* int_cond_branch_geu */
    }
  x1 = XEXP (x0, 0);
  goto L220;

 L95: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == HImode
      && GET_CODE (x1) == TRUNCATE)
    goto L96;
  x1 = XEXP (x0, 0);
  goto L98;

 L96: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      return 19;  /* truncsihi2 */
    }
  x1 = XEXP (x0, 0);
  goto L98;

 L99: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == QImode
      && GET_CODE (x1) == TRUNCATE)
    goto L100;
  x1 = XEXP (x0, 0);
  goto L130;

 L100: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  switch (GET_MODE (x2))
    {
    case SImode:
      goto L548;
    case HImode:
      goto L549;
    default:
      break;
    }
  x1 = XEXP (x0, 0);
  goto L130;

 L548: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      return 20;  /* truncsiqi2 */
    }
  x1 = XEXP (x0, 0);
  goto L130;

 L549: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, HImode))
    {
      operands[1] = x2;
      return 21;  /* trunchiqi2 */
    }
  x1 = XEXP (x0, 0);
  goto L130;

 L131: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (general_operand (x1, SImode))
    {
      operands[1] = x1;
      return 28;  /* movsi_general */
    }
  x1 = XEXP (x0, 0);
  goto L133;

 L134: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (general_operand (x1, HImode))
    {
      operands[1] = x1;
      return 29;  /* movhi_general */
    }
  x1 = XEXP (x0, 0);
  goto L136;

 L137: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (general_operand (x1, QImode))
    {
      operands[1] = x1;
      return 30;  /* movqi_general */
    }
  x1 = XEXP (x0, 0);
  goto L139;

 L140: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (general_operand (x1, SFmode))
    {
      operands[1] = x1;
      return 31;  /* movsf_general */
    }
  x1 = XEXP (x0, 0);
  goto L148;

 L149: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (general_operand (x1, DImode))
    {
      operands[1] = x1;
      goto L150;
    }
  x1 = XEXP (x0, 0);
  goto L168;

 L150: ATTRIBUTE_UNUSED_LABEL
  if (pnum_clobbers != NULL)
    {
      *pnum_clobbers = 1;
      return 32;  /* movdf_general */
    }
  x1 = XEXP (x0, 0);
  goto L168;

 L169: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_CODE (x1) == CALL)
    goto L170;
  x1 = XEXP (x0, 0);
  goto L220;

 L170: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (sym_ref_mem_operand (x2, VOIDmode))
    {
      operands[1] = x2;
      goto L171;
    }
 L195: ATTRIBUTE_UNUSED_LABEL
  if (GET_MODE (x2) == QImode
      && GET_CODE (x2) == MEM)
    goto L196;
  x1 = XEXP (x0, 0);
  goto L220;

 L171: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  operands[2] = x2;
  goto L172;

 L172: ATTRIBUTE_UNUSED_LABEL
  if (pnum_clobbers != NULL)
    {
      *pnum_clobbers = 1;
      return 36;  /* call_value */
    }
  x1 = XEXP (x0, 1);
  x2 = XEXP (x1, 0);
  goto L195;

 L196: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, VOIDmode))
    {
      operands[1] = x3;
      goto L197;
    }
  x1 = XEXP (x0, 0);
  goto L220;

 L197: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  operands[2] = x2;
  goto L198;

 L198: ATTRIBUTE_UNUSED_LABEL
  if (pnum_clobbers != NULL)
    {
      *pnum_clobbers = 1;
      return 38;  /* call_value_indirect */
    }
  x1 = XEXP (x0, 0);
  goto L220;

 L509: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x1) == REG
      && XINT (x1, 0) == 1)
    goto L221;
  goto ret0;

 L221: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_CODE (x1) == CALL)
    goto L222;
  goto ret0;

 L222: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (sym_ref_mem_operand (x2, VOIDmode))
    {
      operands[0] = x2;
      goto L223;
    }
  goto ret0;

 L223: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  operands[1] = x2;
  goto L224;

 L224: ATTRIBUTE_UNUSED_LABEL
  if (pnum_clobbers != NULL)
    {
      *pnum_clobbers = 1;
      return 40;  /* call_val_internal_return_r4 */
    }
  goto ret0;

 L510: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x1) == REG
      && XINT (x1, 0) == 1)
    goto L235;
  goto ret0;

 L235: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_CODE (x1) == CALL)
    goto L236;
  goto ret0;

 L236: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (sym_ref_mem_operand (x2, VOIDmode))
    {
      operands[0] = x2;
      goto L237;
    }
  goto ret0;

 L237: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  operands[1] = x2;
  goto L238;

 L238: ATTRIBUTE_UNUSED_LABEL
  if (pnum_clobbers != NULL)
    {
      *pnum_clobbers = 1;
      return 41;  /* call_val_internal_return_r4_halfword */
    }
  goto ret0;

 L511: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x1) == REG
      && XINT (x1, 0) == 1)
    goto L249;
  goto ret0;

 L249: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_CODE (x1) == CALL)
    goto L250;
  goto ret0;

 L250: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (sym_ref_mem_operand (x2, VOIDmode))
    {
      operands[0] = x2;
      goto L251;
    }
  goto ret0;

 L251: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  operands[1] = x2;
  goto L252;

 L252: ATTRIBUTE_UNUSED_LABEL
  if (pnum_clobbers != NULL)
    {
      *pnum_clobbers = 1;
      return 42;  /* call_val_internal_return_r4_quarterword */
    }
  goto ret0;
 ret0:
  return -1;
}

int
recog (rtx x0 ATTRIBUTE_UNUSED,
	rtx insn ATTRIBUTE_UNUSED,
	int *pnum_clobbers ATTRIBUTE_UNUSED)
{
  rtx * const operands ATTRIBUTE_UNUSED = &recog_data.operand[0];
  rtx x1 ATTRIBUTE_UNUSED;
  rtx x2 ATTRIBUTE_UNUSED;
  rtx x3 ATTRIBUTE_UNUSED;
  rtx x4 ATTRIBUTE_UNUSED;
  int tem ATTRIBUTE_UNUSED;
  recog_data.insn = NULL_RTX;

  switch (GET_CODE (x0))
    {
    case SET:
      goto L1;
    case PARALLEL:
      goto L504;
    case CONST_INT:
      goto L505;
    case CALL:
      goto L180;
    default:
     break;
   }
  goto ret0;

 L1: ATTRIBUTE_UNUSED_LABEL
  return recog_1 (x0, insn, pnum_clobbers);

 L504: ATTRIBUTE_UNUSED_LABEL
  if (XVECLEN (x0, 0) == 2)
    goto L142;
  goto ret0;

 L142: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 0);
  switch (GET_CODE (x1))
    {
    case SET:
      goto L258;
    case CALL:
      goto L175;
    default:
     break;
   }
  goto ret0;

 L258: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_CODE (x2) == PC)
    goto L259;
  if (general_operand (x2, DImode))
    {
      operands[0] = x2;
      goto L144;
    }
 L161: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x2, VOIDmode))
    {
      operands[0] = x2;
      goto L162;
    }
 L213: ATTRIBUTE_UNUSED_LABEL
  switch (GET_MODE (x2))
    {
    case SImode:
      goto L550;
    case HImode:
      goto L551;
    case QImode:
      goto L552;
    default:
      break;
    }
  goto ret0;

 L259: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, SImode))
    {
      operands[0] = x2;
      goto L260;
    }
  x2 = XEXP (x1, 0);
  goto L213;

 L260: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == USE)
    goto L261;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L213;

 L261: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_CODE (x2) == LABEL_REF)
    goto L262;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L213;

 L262: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  operands[1] = x3;
  return 44;  /* tablejump */

 L144: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (general_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L145;
    }
  x2 = XEXP (x1, 0);
  goto L161;

 L145: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L146;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L161;

 L146: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (scratch_operand (x2, SImode))
    {
      operands[2] = x2;
      return 32;  /* movdf_general */
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L161;

 L162: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CALL)
    goto L163;
  x2 = XEXP (x1, 0);
  goto L213;

 L163: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (sym_ref_mem_operand (x3, VOIDmode))
    {
      operands[1] = x3;
      goto L164;
    }
 L187: ATTRIBUTE_UNUSED_LABEL
  if (GET_MODE (x3) == QImode
      && GET_CODE (x3) == MEM)
    goto L188;
  x2 = XEXP (x1, 0);
  goto L213;

 L164: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  operands[2] = x3;
  goto L165;

 L165: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L166;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  x3 = XEXP (x2, 0);
  goto L187;

 L166: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == SImode
      && GET_CODE (x2) == REG
      && XINT (x2, 0) == 3)
    {
      return 36;  /* call_value */
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 1);
  x3 = XEXP (x2, 0);
  goto L187;

 L188: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (register_operand (x4, VOIDmode))
    {
      operands[1] = x4;
      goto L189;
    }
  x2 = XEXP (x1, 0);
  goto L213;

 L189: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  operands[2] = x3;
  goto L190;

 L190: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L191;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L213;

 L191: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == SImode
      && GET_CODE (x2) == REG
      && XINT (x2, 0) == 3)
    {
      return 38;  /* call_value_indirect */
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L213;

 L550: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == REG
      && XINT (x2, 0) == 1)
    goto L214;
  goto ret0;

 L214: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CALL)
    goto L215;
  goto ret0;

 L215: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (sym_ref_mem_operand (x3, VOIDmode))
    {
      operands[0] = x3;
      goto L216;
    }
  goto ret0;

 L216: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  operands[1] = x3;
  goto L217;

 L217: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L218;
  goto ret0;

 L218: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == SImode
      && GET_CODE (x2) == REG
      && XINT (x2, 0) == 3)
    {
      return 40;  /* call_val_internal_return_r4 */
    }
  goto ret0;

 L551: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == REG
      && XINT (x2, 0) == 1)
    goto L228;
  goto ret0;

 L228: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CALL)
    goto L229;
  goto ret0;

 L229: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (sym_ref_mem_operand (x3, VOIDmode))
    {
      operands[0] = x3;
      goto L230;
    }
  goto ret0;

 L230: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  operands[1] = x3;
  goto L231;

 L231: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L232;
  goto ret0;

 L232: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == SImode
      && GET_CODE (x2) == REG
      && XINT (x2, 0) == 3)
    {
      return 41;  /* call_val_internal_return_r4_halfword */
    }
  goto ret0;

 L552: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x2) == REG
      && XINT (x2, 0) == 1)
    goto L242;
  goto ret0;

 L242: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == CALL)
    goto L243;
  goto ret0;

 L243: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (sym_ref_mem_operand (x3, VOIDmode))
    {
      operands[0] = x3;
      goto L244;
    }
  goto ret0;

 L244: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  operands[1] = x3;
  goto L245;

 L245: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L246;
  goto ret0;

 L246: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == SImode
      && GET_CODE (x2) == REG
      && XINT (x2, 0) == 3)
    {
      return 42;  /* call_val_internal_return_r4_quarterword */
    }
  goto ret0;

 L175: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (sym_ref_mem_operand (x2, VOIDmode))
    {
      operands[0] = x2;
      goto L176;
    }
 L201: ATTRIBUTE_UNUSED_LABEL
  if (GET_MODE (x2) == QImode
      && GET_CODE (x2) == MEM)
    goto L202;
  goto ret0;

 L176: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  operands[1] = x2;
  goto L177;

 L177: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L178;
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L201;

 L178: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == SImode
      && GET_CODE (x2) == REG
      && XINT (x2, 0) == 3)
    {
      return 37;  /* call */
    }
  x1 = XVECEXP (x0, 0, 0);
  x2 = XEXP (x1, 0);
  goto L201;

 L202: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (register_operand (x3, VOIDmode))
    {
      operands[0] = x3;
      goto L203;
    }
  goto ret0;

 L203: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  operands[1] = x2;
  goto L204;

 L204: ATTRIBUTE_UNUSED_LABEL
  x1 = XVECEXP (x0, 0, 1);
  if (GET_CODE (x1) == CLOBBER)
    goto L205;
  goto ret0;

 L205: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_MODE (x2) == SImode
      && GET_CODE (x2) == REG
      && XINT (x2, 0) == 3)
    {
      return 39;  /* call_indirect */
    }
  goto ret0;

 L505: ATTRIBUTE_UNUSED_LABEL
  if (XWINT (x0, 0) == 0L)
    {
      return 33;  /* nop */
    }
  goto ret0;

 L180: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 0);
  if (sym_ref_mem_operand (x1, VOIDmode))
    {
      operands[0] = x1;
      goto L181;
    }
 L207: ATTRIBUTE_UNUSED_LABEL
  if (GET_MODE (x1) == QImode
      && GET_CODE (x1) == MEM)
    goto L208;
 L254: ATTRIBUTE_UNUSED_LABEL
  if (sym_ref_mem_operand (x1, VOIDmode))
    {
      operands[0] = x1;
      goto L255;
    }
  goto ret0;

 L181: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  operands[1] = x1;
  goto L182;

 L182: ATTRIBUTE_UNUSED_LABEL
  if (pnum_clobbers != NULL)
    {
      *pnum_clobbers = 1;
      return 37;  /* call */
    }
  x1 = XEXP (x0, 0);
  goto L207;

 L208: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, VOIDmode))
    {
      operands[0] = x2;
      goto L209;
    }
  goto L254;

 L209: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  operands[1] = x1;
  goto L210;

 L210: ATTRIBUTE_UNUSED_LABEL
  if (pnum_clobbers != NULL)
    {
      *pnum_clobbers = 1;
      return 39;  /* call_indirect */
    }
  x1 = XEXP (x0, 0);
  goto L254;

 L255: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  operands[1] = x1;
  return 43;  /* call_val_internal_no_return */
 ret0:
  return -1;
}

rtx
split_insns (rtx x0 ATTRIBUTE_UNUSED, rtx insn ATTRIBUTE_UNUSED)
{
  rtx * const operands ATTRIBUTE_UNUSED = &recog_data.operand[0];
  rtx x1 ATTRIBUTE_UNUSED;
  rtx x2 ATTRIBUTE_UNUSED;
  rtx x3 ATTRIBUTE_UNUSED;
  rtx x4 ATTRIBUTE_UNUSED;
  rtx tem ATTRIBUTE_UNUSED;
  recog_data.insn = NULL_RTX;
  goto ret0;
 ret0:
  return 0;
}

rtx
peephole2_insns (rtx x0 ATTRIBUTE_UNUSED,
	rtx insn ATTRIBUTE_UNUSED,
	int *_pmatch_len ATTRIBUTE_UNUSED)
{
  rtx * const operands ATTRIBUTE_UNUSED = &recog_data.operand[0];
  rtx x1 ATTRIBUTE_UNUSED;
  rtx x2 ATTRIBUTE_UNUSED;
  rtx x3 ATTRIBUTE_UNUSED;
  rtx x4 ATTRIBUTE_UNUSED;
  rtx tem ATTRIBUTE_UNUSED;
  recog_data.insn = NULL_RTX;

  if (peep2_current_count >= 2)
    goto L359;
 L449: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x0) == SET)
    goto L450;
  goto ret0;

 L359: ATTRIBUTE_UNUSED_LABEL
  if (GET_CODE (x0) == SET)
    goto L486;
  goto L449;

 L486: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 0);
  if (register_operand (x1, SImode))
    {
      operands[3] = x1;
      goto L487;
    }
 L360: ATTRIBUTE_UNUSED_LABEL
  if (register_operand (x1, VOIDmode))
    {
      operands[0] = x1;
      goto L361;
    }
  goto L449;

 L487: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == SImode)
    goto L553;
  x1 = XEXP (x0, 0);
  goto L360;

 L553: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x1))
    {
    case AND:
      goto L488;
    case IOR:
      goto L498;
    default:
     break;
   }
  x1 = XEXP (x0, 0);
  goto L360;

 L488: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L489;
    }
  x1 = XEXP (x0, 0);
  goto L360;

 L489: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L490;
    }
  x1 = XEXP (x0, 0);
  goto L360;

 L490: ATTRIBUTE_UNUSED_LABEL
  tem = peep2_next_insn (1);
  x1 = PATTERN (tem);
  if (GET_CODE (x1) == SET)
    goto L491;
  x1 = XEXP (x0, 0);
  goto L360;

 L491: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[0] = x2;
      goto L492;
    }
  x1 = XEXP (x0, 0);
  goto L360;

 L492: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == SImode
      && GET_CODE (x2) == NOT)
    goto L493;
  x1 = XEXP (x0, 0);
  goto L360;

 L493: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (rtx_equal_p (x3, operands[3])
      && 
#line 2056 "../../gcc/config/brownie32/brownie32.md"
(find_reg_note (NEXT_INSN (insn), REG_DEAD, operands[3]) ||
     (REGNO (operands[0]) == REGNO (operands[3]))))
    {
      *_pmatch_len = 1;
      tem = gen_peephole2_88 (insn, operands);
      if (tem != 0)
        return tem;
    }
  x1 = XEXP (x0, 0);
  goto L360;

 L498: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L499;
    }
  x1 = XEXP (x0, 0);
  goto L360;

 L499: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L500;
    }
  x1 = XEXP (x0, 0);
  goto L360;

 L500: ATTRIBUTE_UNUSED_LABEL
  tem = peep2_next_insn (1);
  x1 = PATTERN (tem);
  if (GET_CODE (x1) == SET)
    goto L501;
  x1 = XEXP (x0, 0);
  goto L360;

 L501: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, SImode))
    {
      operands[0] = x2;
      goto L502;
    }
  x1 = XEXP (x0, 0);
  goto L360;

 L502: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_MODE (x2) == SImode
      && GET_CODE (x2) == NOT)
    goto L503;
  x1 = XEXP (x0, 0);
  goto L360;

 L503: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (rtx_equal_p (x3, operands[3])
      && 
#line 2068 "../../gcc/config/brownie32/brownie32.md"
(find_reg_note (NEXT_INSN (insn), REG_DEAD, operands[3]) ||
     (REGNO (operands[0]) == REGNO (operands[3]))))
    {
      *_pmatch_len = 1;
      tem = gen_peephole2_89 (insn, operands);
      if (tem != 0)
        return tem;
    }
  x1 = XEXP (x0, 0);
  goto L360;

 L361: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == SImode)
    goto L555;
  goto L449;

 L555: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x1))
    {
    case LE:
      goto L362;
    case GE:
      goto L377;
    case GT:
      goto L392;
    case LEU:
      goto L407;
    case GEU:
      goto L422;
    case GTU:
      goto L437;
    default:
     break;
   }
  goto L449;

 L362: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, VOIDmode))
    {
      operands[1] = x2;
      goto L363;
    }
  goto L449;

 L363: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, VOIDmode))
    {
      operands[2] = x2;
      goto L364;
    }
  goto L449;

 L364: ATTRIBUTE_UNUSED_LABEL
  tem = peep2_next_insn (1);
  x1 = PATTERN (tem);
  if (GET_CODE (x1) == SET)
    goto L365;
  goto L449;

 L365: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_CODE (x2) == PC)
    goto L366;
  goto L449;

 L366: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == IF_THEN_ELSE)
    goto L367;
  goto L449;

 L367: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == SImode
      && GET_CODE (x3) == NE)
    goto L368;
  goto L449;

 L368: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (x4 == const_int_rtx[MAX_SAVED_CONST_INT + (0)])
    goto L369;
  goto L449;

 L369: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (rtx_equal_p (x4, operands[0]))
    goto L370;
  goto L449;

 L370: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == LABEL_REF)
    goto L371;
  goto L449;

 L371: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  operands[3] = x4;
  goto L372;

 L372: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 2);
  if (GET_CODE (x3) == PC)
    {
      *_pmatch_len = 1;
      tem = gen_peephole2_76 (insn, operands);
      if (tem != 0)
        return tem;
    }
  goto L449;

 L377: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, VOIDmode))
    {
      operands[1] = x2;
      goto L378;
    }
  goto L449;

 L378: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, VOIDmode))
    {
      operands[2] = x2;
      goto L379;
    }
  goto L449;

 L379: ATTRIBUTE_UNUSED_LABEL
  tem = peep2_next_insn (1);
  x1 = PATTERN (tem);
  if (GET_CODE (x1) == SET)
    goto L380;
  goto L449;

 L380: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_CODE (x2) == PC)
    goto L381;
  goto L449;

 L381: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == IF_THEN_ELSE)
    goto L382;
  goto L449;

 L382: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == SImode
      && GET_CODE (x3) == NE)
    goto L383;
  goto L449;

 L383: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (x4 == const_int_rtx[MAX_SAVED_CONST_INT + (0)])
    goto L384;
  goto L449;

 L384: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (rtx_equal_p (x4, operands[0]))
    goto L385;
  goto L449;

 L385: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == LABEL_REF)
    goto L386;
  goto L449;

 L386: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  operands[3] = x4;
  goto L387;

 L387: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 2);
  if (GET_CODE (x3) == PC)
    {
      *_pmatch_len = 1;
      tem = gen_peephole2_77 (insn, operands);
      if (tem != 0)
        return tem;
    }
  goto L449;

 L392: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, VOIDmode))
    {
      operands[1] = x2;
      goto L393;
    }
  goto L449;

 L393: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, VOIDmode))
    {
      operands[2] = x2;
      goto L394;
    }
  goto L449;

 L394: ATTRIBUTE_UNUSED_LABEL
  tem = peep2_next_insn (1);
  x1 = PATTERN (tem);
  if (GET_CODE (x1) == SET)
    goto L395;
  goto L449;

 L395: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_CODE (x2) == PC)
    goto L396;
  goto L449;

 L396: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == IF_THEN_ELSE)
    goto L397;
  goto L449;

 L397: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == SImode
      && GET_CODE (x3) == NE)
    goto L398;
  goto L449;

 L398: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (x4 == const_int_rtx[MAX_SAVED_CONST_INT + (0)])
    goto L399;
  goto L449;

 L399: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (rtx_equal_p (x4, operands[0]))
    goto L400;
  goto L449;

 L400: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == LABEL_REF)
    goto L401;
  goto L449;

 L401: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  operands[3] = x4;
  goto L402;

 L402: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 2);
  if (GET_CODE (x3) == PC)
    {
      *_pmatch_len = 1;
      tem = gen_peephole2_78 (insn, operands);
      if (tem != 0)
        return tem;
    }
  goto L449;

 L407: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, VOIDmode))
    {
      operands[1] = x2;
      goto L408;
    }
  goto L449;

 L408: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, VOIDmode))
    {
      operands[2] = x2;
      goto L409;
    }
  goto L449;

 L409: ATTRIBUTE_UNUSED_LABEL
  tem = peep2_next_insn (1);
  x1 = PATTERN (tem);
  if (GET_CODE (x1) == SET)
    goto L410;
  goto L449;

 L410: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_CODE (x2) == PC)
    goto L411;
  goto L449;

 L411: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == IF_THEN_ELSE)
    goto L412;
  goto L449;

 L412: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == SImode
      && GET_CODE (x3) == NE)
    goto L413;
  goto L449;

 L413: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (x4 == const_int_rtx[MAX_SAVED_CONST_INT + (0)])
    goto L414;
  goto L449;

 L414: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (rtx_equal_p (x4, operands[0]))
    goto L415;
  goto L449;

 L415: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == LABEL_REF)
    goto L416;
  goto L449;

 L416: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  operands[3] = x4;
  goto L417;

 L417: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 2);
  if (GET_CODE (x3) == PC)
    {
      *_pmatch_len = 1;
      tem = gen_peephole2_79 (insn, operands);
      if (tem != 0)
        return tem;
    }
  goto L449;

 L422: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, VOIDmode))
    {
      operands[1] = x2;
      goto L423;
    }
  goto L449;

 L423: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, VOIDmode))
    {
      operands[2] = x2;
      goto L424;
    }
  goto L449;

 L424: ATTRIBUTE_UNUSED_LABEL
  tem = peep2_next_insn (1);
  x1 = PATTERN (tem);
  if (GET_CODE (x1) == SET)
    goto L425;
  goto L449;

 L425: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_CODE (x2) == PC)
    goto L426;
  goto L449;

 L426: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == IF_THEN_ELSE)
    goto L427;
  goto L449;

 L427: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == SImode
      && GET_CODE (x3) == NE)
    goto L428;
  goto L449;

 L428: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (x4 == const_int_rtx[MAX_SAVED_CONST_INT + (0)])
    goto L429;
  goto L449;

 L429: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (rtx_equal_p (x4, operands[0]))
    goto L430;
  goto L449;

 L430: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == LABEL_REF)
    goto L431;
  goto L449;

 L431: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  operands[3] = x4;
  goto L432;

 L432: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 2);
  if (GET_CODE (x3) == PC)
    {
      *_pmatch_len = 1;
      tem = gen_peephole2_80 (insn, operands);
      if (tem != 0)
        return tem;
    }
  goto L449;

 L437: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, VOIDmode))
    {
      operands[1] = x2;
      goto L438;
    }
  goto L449;

 L438: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, VOIDmode))
    {
      operands[2] = x2;
      goto L439;
    }
  goto L449;

 L439: ATTRIBUTE_UNUSED_LABEL
  tem = peep2_next_insn (1);
  x1 = PATTERN (tem);
  if (GET_CODE (x1) == SET)
    goto L440;
  goto L449;

 L440: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (GET_CODE (x2) == PC)
    goto L441;
  goto L449;

 L441: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (GET_CODE (x2) == IF_THEN_ELSE)
    goto L442;
  goto L449;

 L442: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 0);
  if (GET_MODE (x3) == SImode
      && GET_CODE (x3) == NE)
    goto L443;
  goto L449;

 L443: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  if (x4 == const_int_rtx[MAX_SAVED_CONST_INT + (0)])
    goto L444;
  goto L449;

 L444: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 1);
  if (rtx_equal_p (x4, operands[0]))
    goto L445;
  goto L449;

 L445: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 1);
  if (GET_CODE (x3) == LABEL_REF)
    goto L446;
  goto L449;

 L446: ATTRIBUTE_UNUSED_LABEL
  x4 = XEXP (x3, 0);
  operands[3] = x4;
  goto L447;

 L447: ATTRIBUTE_UNUSED_LABEL
  x3 = XEXP (x2, 2);
  if (GET_CODE (x3) == PC)
    {
      *_pmatch_len = 1;
      tem = gen_peephole2_81 (insn, operands);
      if (tem != 0)
        return tem;
    }
  goto L449;

 L450: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 0);
  if (register_operand (x1, VOIDmode))
    {
      operands[0] = x1;
      goto L451;
    }
  goto ret0;

 L451: ATTRIBUTE_UNUSED_LABEL
  x1 = XEXP (x0, 1);
  if (GET_MODE (x1) == SImode)
    goto L561;
  goto ret0;

 L561: ATTRIBUTE_UNUSED_LABEL
  switch (GET_CODE (x1))
    {
    case LE:
      goto L452;
    case GE:
      goto L458;
    case GT:
      goto L464;
    case LEU:
      goto L470;
    case GEU:
      goto L476;
    case GTU:
      goto L482;
    default:
     break;
   }
  goto ret0;

 L452: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, VOIDmode))
    {
      operands[1] = x2;
      goto L453;
    }
  goto ret0;

 L453: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, VOIDmode))
    {
      operands[2] = x2;
      *_pmatch_len = 0;
      tem = gen_peephole2_82 (insn, operands);
      if (tem != 0)
        return tem;
    }
  goto ret0;

 L458: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, VOIDmode))
    {
      operands[1] = x2;
      goto L459;
    }
  goto ret0;

 L459: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, VOIDmode))
    {
      operands[2] = x2;
      *_pmatch_len = 0;
      tem = gen_peephole2_83 (insn, operands);
      if (tem != 0)
        return tem;
    }
  goto ret0;

 L464: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, VOIDmode))
    {
      operands[1] = x2;
      goto L465;
    }
  goto ret0;

 L465: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, VOIDmode))
    {
      operands[2] = x2;
      *_pmatch_len = 0;
      tem = gen_peephole2_84 (insn, operands);
      if (tem != 0)
        return tem;
    }
  goto ret0;

 L470: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, VOIDmode))
    {
      operands[1] = x2;
      goto L471;
    }
  goto ret0;

 L471: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, VOIDmode))
    {
      operands[2] = x2;
      *_pmatch_len = 0;
      tem = gen_peephole2_85 (insn, operands);
      if (tem != 0)
        return tem;
    }
  goto ret0;

 L476: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, VOIDmode))
    {
      operands[1] = x2;
      goto L477;
    }
  goto ret0;

 L477: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, VOIDmode))
    {
      operands[2] = x2;
      *_pmatch_len = 0;
      tem = gen_peephole2_86 (insn, operands);
      if (tem != 0)
        return tem;
    }
  goto ret0;

 L482: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 0);
  if (register_operand (x2, VOIDmode))
    {
      operands[1] = x2;
      goto L483;
    }
  goto ret0;

 L483: ATTRIBUTE_UNUSED_LABEL
  x2 = XEXP (x1, 1);
  if (register_operand (x2, VOIDmode))
    {
      operands[2] = x2;
      *_pmatch_len = 0;
      tem = gen_peephole2_87 (insn, operands);
      if (tem != 0)
        return tem;
    }
  goto ret0;
 ret0:
  return 0;
}

