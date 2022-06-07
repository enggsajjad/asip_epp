/* Generated automatically by the program `genflags'
   from the machine description file `md'.  */

#ifndef GCC_INSN_FLAGS_H
#define GCC_INSN_FLAGS_H

#define HAVE_addsi3 1
#define HAVE_subsi3 1
#define HAVE_andsi3 1
#define HAVE_iorsi3 1
#define HAVE_xorsi3 1
#define HAVE_nandsi3 1
#define HAVE_norsi3 1
#define HAVE_negsi2 1
#define HAVE_one_cmplqi2 1
#define HAVE_one_cmplhi2 1
#define HAVE_one_cmplsi2 1
#define HAVE_ashlsi3 1
#define HAVE_ashrsi3 1
#define HAVE_lshrsi3 1
#define HAVE_mulsi3 1
#define HAVE_divsi3 1
#define HAVE_udivsi3 1
#define HAVE_modsi3 1
#define HAVE_umodsi3 1
#define HAVE_truncsihi2 1
#define HAVE_truncsiqi2 1
#define HAVE_trunchiqi2 1
#define HAVE_zero_extendqihi2 1
#define HAVE_zero_extendhisi2 1
#define HAVE_zero_extendqisi2 1
#define HAVE_extendqisi2 1
#define HAVE_extendhisi2 1
#define HAVE_extendqihi2 1
#define HAVE_movsi_general 1
#define HAVE_movhi_general 1
#define HAVE_movqi_general 1
#define HAVE_movsf_general 1
#define HAVE_movdf_general 1
#define HAVE_nop 1
#define HAVE_indirect_jump 1
#define HAVE_jump 1
#define HAVE_call_value 1
#define HAVE_call 1
#define HAVE_call_value_indirect 1
#define HAVE_call_indirect 1
#define HAVE_call_val_internal_return_r4 1
#define HAVE_call_val_internal_return_r4_halfword 1
#define HAVE_call_val_internal_return_r4_quarterword 1
#define HAVE_call_val_internal_no_return 1
#define HAVE_tablejump 1
#define HAVE_int_cond_branch 1
#define HAVE_int_cond_branch_rev 1
#define HAVE_int_cond_branch_lt 1
#define HAVE_int_cond_branch_gt 1
#define HAVE_int_cond_branch_le 1
#define HAVE_int_cond_branch_ge 1
#define HAVE_int_cond_branch_ltu 1
#define HAVE_int_cond_branch_gtu 1
#define HAVE_int_cond_branch_leu 1
#define HAVE_int_cond_branch_geu 1
#define HAVE_set_internal 1
#define HAVE_movsi 1
#define HAVE_movhi 1
#define HAVE_movqi 1
#define HAVE_movsf 1
#define HAVE_cmpsi 1
#define HAVE_tstsi 1
#define HAVE_beq 1
#define HAVE_bne 1
#define HAVE_blt 1
#define HAVE_bgt 1
#define HAVE_ble 1
#define HAVE_bge 1
#define HAVE_bltu 1
#define HAVE_bgtu 1
#define HAVE_bleu 1
#define HAVE_bgeu 1
#define HAVE_eeq 1
#define HAVE_eneq 1
#define HAVE_elt 1
#define HAVE_eltu 1
extern rtx        gen_addsi3                                  (rtx, rtx, rtx);
extern rtx        gen_subsi3                                  (rtx, rtx, rtx);
extern rtx        gen_andsi3                                  (rtx, rtx, rtx);
extern rtx        gen_iorsi3                                  (rtx, rtx, rtx);
extern rtx        gen_xorsi3                                  (rtx, rtx, rtx);
extern rtx        gen_nandsi3                                 (rtx, rtx, rtx);
extern rtx        gen_norsi3                                  (rtx, rtx, rtx);
extern rtx        gen_negsi2                                  (rtx, rtx);
extern rtx        gen_one_cmplqi2                             (rtx, rtx);
extern rtx        gen_one_cmplhi2                             (rtx, rtx);
extern rtx        gen_one_cmplsi2                             (rtx, rtx);
extern rtx        gen_ashlsi3                                 (rtx, rtx, rtx);
extern rtx        gen_ashrsi3                                 (rtx, rtx, rtx);
extern rtx        gen_lshrsi3                                 (rtx, rtx, rtx);
extern rtx        gen_mulsi3                                  (rtx, rtx, rtx);
extern rtx        gen_divsi3                                  (rtx, rtx, rtx);
extern rtx        gen_udivsi3                                 (rtx, rtx, rtx);
extern rtx        gen_modsi3                                  (rtx, rtx, rtx);
extern rtx        gen_umodsi3                                 (rtx, rtx, rtx);
extern rtx        gen_truncsihi2                              (rtx, rtx);
extern rtx        gen_truncsiqi2                              (rtx, rtx);
extern rtx        gen_trunchiqi2                              (rtx, rtx);
extern rtx        gen_zero_extendqihi2                        (rtx, rtx);
extern rtx        gen_zero_extendhisi2                        (rtx, rtx);
extern rtx        gen_zero_extendqisi2                        (rtx, rtx);
extern rtx        gen_extendqisi2                             (rtx, rtx);
extern rtx        gen_extendhisi2                             (rtx, rtx);
extern rtx        gen_extendqihi2                             (rtx, rtx);
extern rtx        gen_movsi_general                           (rtx, rtx);
extern rtx        gen_movhi_general                           (rtx, rtx);
extern rtx        gen_movqi_general                           (rtx, rtx);
extern rtx        gen_movsf_general                           (rtx, rtx);
extern rtx        gen_movdf_general                           (rtx, rtx);
extern rtx        gen_nop                                     (void);
extern rtx        gen_indirect_jump                           (rtx);
extern rtx        gen_jump                                    (rtx);
#define GEN_CALL_VALUE(A, B, C, D, E) gen_call_value ((A), (B), (C))
extern rtx        gen_call_value                              (rtx, rtx, rtx);
#define GEN_CALL(A, B, C, D) gen_call ((A), (B))
extern rtx        gen_call                                    (rtx, rtx);
extern rtx        gen_call_value_indirect                     (rtx, rtx, rtx);
extern rtx        gen_call_indirect                           (rtx, rtx);
extern rtx        gen_call_val_internal_return_r4             (rtx, rtx);
extern rtx        gen_call_val_internal_return_r4_halfword    (rtx, rtx);
extern rtx        gen_call_val_internal_return_r4_quarterword (rtx, rtx);
extern rtx        gen_call_val_internal_no_return             (rtx, rtx);
extern rtx        gen_tablejump                               (rtx, rtx);
extern rtx        gen_int_cond_branch                         (rtx, rtx);
extern rtx        gen_int_cond_branch_rev                     (rtx, rtx);
extern rtx        gen_int_cond_branch_lt                      (rtx, rtx);
extern rtx        gen_int_cond_branch_gt                      (rtx, rtx);
extern rtx        gen_int_cond_branch_le                      (rtx, rtx);
extern rtx        gen_int_cond_branch_ge                      (rtx, rtx);
extern rtx        gen_int_cond_branch_ltu                     (rtx, rtx);
extern rtx        gen_int_cond_branch_gtu                     (rtx, rtx);
extern rtx        gen_int_cond_branch_leu                     (rtx, rtx);
extern rtx        gen_int_cond_branch_geu                     (rtx, rtx);
extern rtx        gen_set_internal                            (rtx, rtx, rtx, rtx);
extern rtx        gen_movsi                                   (rtx, rtx);
extern rtx        gen_movhi                                   (rtx, rtx);
extern rtx        gen_movqi                                   (rtx, rtx);
extern rtx        gen_movsf                                   (rtx, rtx);
extern rtx        gen_cmpsi                                   (rtx, rtx);
extern rtx        gen_tstsi                                   (rtx);
extern rtx        gen_beq                                     (rtx);
extern rtx        gen_bne                                     (rtx);
extern rtx        gen_blt                                     (rtx);
extern rtx        gen_bgt                                     (rtx);
extern rtx        gen_ble                                     (rtx);
extern rtx        gen_bge                                     (rtx);
extern rtx        gen_bltu                                    (rtx);
extern rtx        gen_bgtu                                    (rtx);
extern rtx        gen_bleu                                    (rtx);
extern rtx        gen_bgeu                                    (rtx);
extern rtx        gen_eeq                                     (rtx);
extern rtx        gen_eneq                                    (rtx);
extern rtx        gen_elt                                     (rtx);
extern rtx        gen_eltu                                    (rtx);

#endif /* GCC_INSN_FLAGS_H */
