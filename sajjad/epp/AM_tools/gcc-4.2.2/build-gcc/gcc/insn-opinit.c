/* Generated automatically by the program `genopinit'
from the machine description file `md'.  */

#include "config.h"
#include "system.h"
#include "coretypes.h"
#include "tm.h"
#include "rtl.h"
#include "flags.h"
#include "insn-config.h"
#include "recog.h"
#include "expr.h"
#include "optabs.h"
#include "reload.h"

void
init_all_optabs (void)
{
#ifdef FIXUNS_TRUNC_LIKE_FIX_TRUNC
  int i, j;
#endif

  add_optab->handlers[SImode].insn_code = CODE_FOR_addsi3;
  sub_optab->handlers[SImode].insn_code = CODE_FOR_subsi3;
  and_optab->handlers[SImode].insn_code = CODE_FOR_andsi3;
  ior_optab->handlers[SImode].insn_code = CODE_FOR_iorsi3;
  xor_optab->handlers[SImode].insn_code = CODE_FOR_xorsi3;
  neg_optab->handlers[SImode].insn_code = CODE_FOR_negsi2;
  one_cmpl_optab->handlers[QImode].insn_code = CODE_FOR_one_cmplqi2;
  one_cmpl_optab->handlers[HImode].insn_code = CODE_FOR_one_cmplhi2;
  one_cmpl_optab->handlers[SImode].insn_code = CODE_FOR_one_cmplsi2;
  ashl_optab->handlers[SImode].insn_code = CODE_FOR_ashlsi3;
  ashr_optab->handlers[SImode].insn_code = CODE_FOR_ashrsi3;
  lshr_optab->handlers[SImode].insn_code = CODE_FOR_lshrsi3;
  smul_optab->handlers[SImode].insn_code = CODE_FOR_mulsi3;
  sdiv_optab->handlers[SImode].insn_code = CODE_FOR_divsi3;
  udiv_optab->handlers[SImode].insn_code = CODE_FOR_udivsi3;
  smod_optab->handlers[SImode].insn_code = CODE_FOR_modsi3;
  umod_optab->handlers[SImode].insn_code = CODE_FOR_umodsi3;
  trunc_optab->handlers[HImode][SImode].insn_code = CODE_FOR_truncsihi2;
  trunc_optab->handlers[QImode][SImode].insn_code = CODE_FOR_truncsiqi2;
  trunc_optab->handlers[QImode][HImode].insn_code = CODE_FOR_trunchiqi2;
  zext_optab->handlers[HImode][QImode].insn_code = CODE_FOR_zero_extendqihi2;
  zext_optab->handlers[SImode][HImode].insn_code = CODE_FOR_zero_extendhisi2;
  zext_optab->handlers[SImode][QImode].insn_code = CODE_FOR_zero_extendqisi2;
  sext_optab->handlers[SImode][QImode].insn_code = CODE_FOR_extendqisi2;
  sext_optab->handlers[SImode][HImode].insn_code = CODE_FOR_extendhisi2;
  sext_optab->handlers[HImode][QImode].insn_code = CODE_FOR_extendqihi2;
  mov_optab->handlers[SImode].insn_code = CODE_FOR_movsi;
  mov_optab->handlers[HImode].insn_code = CODE_FOR_movhi;
  mov_optab->handlers[QImode].insn_code = CODE_FOR_movqi;
  mov_optab->handlers[SFmode].insn_code = CODE_FOR_movsf;
  cmp_optab->handlers[SImode].insn_code = CODE_FOR_cmpsi;
  tst_optab->handlers[SImode].insn_code = CODE_FOR_tstsi;
  bcc_gen_fctn[EQ] = gen_beq;
  bcc_gen_fctn[NE] = gen_bne;
  bcc_gen_fctn[LT] = gen_blt;
  bcc_gen_fctn[GT] = gen_bgt;
  bcc_gen_fctn[LE] = gen_ble;
  bcc_gen_fctn[GE] = gen_bge;
  bcc_gen_fctn[LTU] = gen_bltu;
  bcc_gen_fctn[GTU] = gen_bgtu;
  bcc_gen_fctn[LEU] = gen_bleu;
  bcc_gen_fctn[GEU] = gen_bgeu;

#ifdef FIXUNS_TRUNC_LIKE_FIX_TRUNC
  /* This flag says the same insns that convert to a signed fixnum
     also convert validly to an unsigned one.  */
  for (i = 0; i < NUM_MACHINE_MODES; i++)
    for (j = 0; j < NUM_MACHINE_MODES; j++)
      ufixtrunc_optab->handlers[i][j].insn_code
      = sfixtrunc_optab->handlers[i][j].insn_code;
#endif
}
