/*
 * @(#)exdefs.h	3800.2 05/02/23
 * 
 * COPYRIGHT NOTICE (NOT TO BE REMOVED):
 * 
 * This file, or parts of it, or modified versions of it, may not be copied,
 * reproduced or transmitted in any form, including reprinting, translation,
 * photocopying or microfilming, or by any means, electronic, mechanical or
 * otherwise, or stored in a retrieval system, or used for any purpose, without
 * the prior written permission of all Owners unless it is explicitly marked as
 * having Classification `Public'.
 * 
 * Owners of this file give notice:
 *   (c) Copyright 1995-2000,2002 ACE Associated Computer Experts bv
 *   (c) Copyright 1996-2000,2002 ACE Associated Compiler Experts bv
 * All rights, including copyrights, reserved.
 * 
 * This file contains or may contain restricted information and is UNPUBLISHED
 * PROPRIETARY SOURCE CODE OF THE Owners.  The Copyright Notice(s) above do not
 * evidence any actual or intended publication of such source code.  This file
 * is additionally subject to the conditions listed in the RESTRICTIONS file
 * and is with NO WARRANTY.
 * 
 * END OF COPYRIGHT NOTICE
 */

#ifndef _EXDEFS_H_
#define _EXDEFS_H_	1

/**
 **  This file glues the sources of libfpe.a into something usable.
 **  This is not intended to be exported to common include directories.
 **/

/*
 * This file contains defines to ``externalize'' identifiers:
 *	the trick is to use `common' names throughout the source
 *	of the package and use this include file to redefine all
 *	the relevant words so that there can be no name clash in
 *	a final product.  See also the menu/makefile to find out
 *	how to make an externalized header file for the package.
 * warning:
 *	keep defines simple. Again see menu/makefile why...
 * note:
 *	if _FPE_ is not sufficient, change ALL to for instance
 *	_ACEFPE_ to let all listed identifiers be prefixed such.
 */

#ifdef _ASM_INCLUDE
/*
 * To establish a ``link'' with assembly, define GLUE.  This can
 * be used in assembly files to call to C-written code.
 */

#ifdef __STDC__
#define GLUE( x)	_ ## _FPE_ ## x
#else
#define GLUE( x)	_/**/_FPE_/**/x
#endif

#else  /* .. toggle _ASM_INCLUDE */

/*
 * is this pre-processing or not ?
 */
#ifndef _EXDEFS_H_
#define cmp_ne_d	_FPE_cmp_ne_d
#define cmp_ne_dp	_FPE_cmp_ne_dp
#define cmp_ne_f	_FPE_cmp_ne_f
#define cmp_ne_fp	_FPE_cmp_ne_fp

#define cmp_ne0_d	_FPE_cmp_ne0_d
#define cmp_ne0_dp	_FPE_cmp_ne0_dp
#define cmp_ne0_f	_FPE_cmp_ne0_f
#define cmp_ne0_fp	_FPE_cmp_ne0_fp
#endif

/*
 * list of to-be externalised functions/variables;
 *
 * (sorry, just alphabetically, no catagorization no more..)
 */
#define abs_d		_FPE_abs_d
#define abs_dp		_FPE_abs_dp
#define abs_drp		_FPE_abs_drp
#define abs_e		_FPE_abs_e
#define abs_ep		_FPE_abs_ep
#define abs_erp		_FPE_abs_erp
#define abs_f		_FPE_abs_f
#define abs_fp		_FPE_abs_fp
#define abs_frp		_FPE_abs_frp
#define add_d		_FPE_add_d
#define add_dp		_FPE_add_dp
#define add_drp		_FPE_add_drp
#define add_e		_FPE_add_e
#define add_ep		_FPE_add_ep
#define add_erp		_FPE_add_erp
#define add_f		_FPE_add_f
#define add_fp		_FPE_add_fp
#define add_frp		_FPE_add_frp
#define cmp_d		_FPE_cmp_d
#define cmp_e		_FPE_cmp_e
#define cmp_e0_d	_FPE_cmp_e0_d
#define cmp_e0_dp	_FPE_cmp_e0_dp
#define cmp_e0_e	_FPE_cmp_e0_e
#define cmp_e0_ep	_FPE_cmp_e0_ep
#define cmp_e0_f	_FPE_cmp_e0_f
#define cmp_e0_fp	_FPE_cmp_e0_fp
#define cmp_e_d		_FPE_cmp_e_d
#define cmp_e_dp	_FPE_cmp_e_dp
#define cmp_e_e		_FPE_cmp_e_e
#define cmp_e_ep	_FPE_cmp_e_ep
#define cmp_e_f		_FPE_cmp_e_f
#define cmp_e_fp	_FPE_cmp_e_fp
#define cmp_eg0_d	_FPE_cmp_eg0_d
#define cmp_eg0_dp	_FPE_cmp_eg0_dp
#define cmp_eg0_e	_FPE_cmp_eg0_e
#define cmp_eg0_ep	_FPE_cmp_eg0_ep
#define cmp_eg0_f	_FPE_cmp_eg0_f
#define cmp_eg0_fp	_FPE_cmp_eg0_fp
#define cmp_eg_d	_FPE_cmp_eg_d
#define cmp_eg_dp	_FPE_cmp_eg_dp
#define cmp_eg_e	_FPE_cmp_eg_e
#define cmp_eg_ep	_FPE_cmp_eg_ep
#define cmp_eg_f	_FPE_cmp_eg_f
#define cmp_eg_fp	_FPE_cmp_eg_fp
#define cmp_egu0_d	_FPE_cmp_egu0_d
#define cmp_egu0_dp	_FPE_cmp_egu0_dp
#define cmp_egu0_e	_FPE_cmp_egu0_e
#define cmp_egu0_ep	_FPE_cmp_egu0_ep
#define cmp_egu0_f	_FPE_cmp_egu0_f
#define cmp_egu0_fp	_FPE_cmp_egu0_fp
#define cmp_egu_d	_FPE_cmp_egu_d
#define cmp_egu_dp	_FPE_cmp_egu_dp
#define cmp_egu_e	_FPE_cmp_egu_e
#define cmp_egu_ep	_FPE_cmp_egu_ep
#define cmp_egu_f	_FPE_cmp_egu_f
#define cmp_egu_fp	_FPE_cmp_egu_fp
#define cmp_eu0_d	_FPE_cmp_eu0_d
#define cmp_eu0_dp	_FPE_cmp_eu0_dp
#define cmp_eu0_e	_FPE_cmp_eu0_e
#define cmp_eu0_ep	_FPE_cmp_eu0_ep
#define cmp_eu0_f	_FPE_cmp_eu0_f
#define cmp_eu0_fp	_FPE_cmp_eu0_fp
#define cmp_eu_d	_FPE_cmp_eu_d
#define cmp_eu_dp	_FPE_cmp_eu_dp
#define cmp_eu_e	_FPE_cmp_eu_e
#define cmp_eu_ep	_FPE_cmp_eu_ep
#define cmp_eu_f	_FPE_cmp_eu_f
#define cmp_eu_fp	_FPE_cmp_eu_fp
#define cmp_f		_FPE_cmp_f
#define cmp_g0_d	_FPE_cmp_g0_d
#define cmp_g0_dp	_FPE_cmp_g0_dp
#define cmp_g0_e	_FPE_cmp_g0_e
#define cmp_g0_ep	_FPE_cmp_g0_ep
#define cmp_g0_f	_FPE_cmp_g0_f
#define cmp_g0_fp	_FPE_cmp_g0_fp
#define cmp_g_d		_FPE_cmp_g_d
#define cmp_g_dp	_FPE_cmp_g_dp
#define cmp_g_e		_FPE_cmp_g_e
#define cmp_g_ep	_FPE_cmp_g_ep
#define cmp_g_f		_FPE_cmp_g_f
#define cmp_g_fp	_FPE_cmp_g_fp
#define cmp_gu0_d	_FPE_cmp_gu0_d
#define cmp_gu0_dp	_FPE_cmp_gu0_dp
#define cmp_gu0_e	_FPE_cmp_gu0_e
#define cmp_gu0_ep	_FPE_cmp_gu0_ep
#define cmp_gu0_f	_FPE_cmp_gu0_f
#define cmp_gu0_fp	_FPE_cmp_gu0_fp
#define cmp_gu_d	_FPE_cmp_gu_d
#define cmp_gu_dp	_FPE_cmp_gu_dp
#define cmp_gu_e	_FPE_cmp_gu_e
#define cmp_gu_ep	_FPE_cmp_gu_ep
#define cmp_gu_f	_FPE_cmp_gu_f
#define cmp_gu_fp	_FPE_cmp_gu_fp
#define cmp_l0_d	_FPE_cmp_l0_d
#define cmp_l0_dp	_FPE_cmp_l0_dp
#define cmp_l0_e	_FPE_cmp_l0_e
#define cmp_l0_ep	_FPE_cmp_l0_ep
#define cmp_l0_f	_FPE_cmp_l0_f
#define cmp_l0_fp	_FPE_cmp_l0_fp
#define cmp_l_d		_FPE_cmp_l_d
#define cmp_l_dp	_FPE_cmp_l_dp
#define cmp_l_e		_FPE_cmp_l_e
#define cmp_l_ep	_FPE_cmp_l_ep
#define cmp_l_f		_FPE_cmp_l_f
#define cmp_l_fp	_FPE_cmp_l_fp
#define cmp_le0_d	_FPE_cmp_le0_d
#define cmp_le0_dp	_FPE_cmp_le0_dp
#define cmp_le0_e	_FPE_cmp_le0_e
#define cmp_le0_ep	_FPE_cmp_le0_ep
#define cmp_le0_f	_FPE_cmp_le0_f
#define cmp_le0_fp	_FPE_cmp_le0_fp
#define cmp_le_d	_FPE_cmp_le_d
#define cmp_le_dp	_FPE_cmp_le_dp
#define cmp_le_e	_FPE_cmp_le_e
#define cmp_le_ep	_FPE_cmp_le_ep
#define cmp_le_f	_FPE_cmp_le_f
#define cmp_le_fp	_FPE_cmp_le_fp
#define cmp_leu0_d	_FPE_cmp_leu0_d
#define cmp_leu0_dp	_FPE_cmp_leu0_dp
#define cmp_leu0_e	_FPE_cmp_leu0_e
#define cmp_leu0_ep	_FPE_cmp_leu0_ep
#define cmp_leu0_f	_FPE_cmp_leu0_f
#define cmp_leu0_fp	_FPE_cmp_leu0_fp
#define cmp_leu_d	_FPE_cmp_leu_d
#define cmp_leu_dp	_FPE_cmp_leu_dp
#define cmp_leu_e	_FPE_cmp_leu_e
#define cmp_leu_ep	_FPE_cmp_leu_ep
#define cmp_leu_f	_FPE_cmp_leu_f
#define cmp_leu_fp	_FPE_cmp_leu_fp
#define cmp_lg0_d	_FPE_cmp_lg0_d
#define cmp_lg0_dp	_FPE_cmp_lg0_dp
#define cmp_lg0_e	_FPE_cmp_lg0_e
#define cmp_lg0_ep	_FPE_cmp_lg0_ep
#define cmp_lg0_f	_FPE_cmp_lg0_f
#define cmp_lg0_fp	_FPE_cmp_lg0_fp
#define cmp_lg_d	_FPE_cmp_lg_d
#define cmp_lg_dp	_FPE_cmp_lg_dp
#define cmp_lg_e	_FPE_cmp_lg_e
#define cmp_lg_ep	_FPE_cmp_lg_ep
#define cmp_lg_f	_FPE_cmp_lg_f
#define cmp_lg_fp	_FPE_cmp_lg_fp
#define cmp_lge0_d	_FPE_cmp_lge0_d
#define cmp_lge0_dp	_FPE_cmp_lge0_dp
#define cmp_lge0_e	_FPE_cmp_lge0_e
#define cmp_lge0_ep	_FPE_cmp_lge0_ep
#define cmp_lge0_f	_FPE_cmp_lge0_f
#define cmp_lge0_fp	_FPE_cmp_lge0_fp
#define cmp_lge_d	_FPE_cmp_lge_d
#define cmp_lge_dp	_FPE_cmp_lge_dp
#define cmp_lge_e	_FPE_cmp_lge_e
#define cmp_lge_ep	_FPE_cmp_lge_ep
#define cmp_lge_f	_FPE_cmp_lge_f
#define cmp_lge_fp	_FPE_cmp_lge_fp
#define cmp_lgu0_d	_FPE_cmp_lgu0_d
#define cmp_lgu0_dp	_FPE_cmp_lgu0_dp
#define cmp_lgu0_e	_FPE_cmp_lgu0_e
#define cmp_lgu0_ep	_FPE_cmp_lgu0_ep
#define cmp_lgu0_f	_FPE_cmp_lgu0_f
#define cmp_lgu0_fp	_FPE_cmp_lgu0_fp
#define cmp_lgu_d	_FPE_cmp_lgu_d
#define cmp_lgu_dp	_FPE_cmp_lgu_dp
#define cmp_lgu_e	_FPE_cmp_lgu_e
#define cmp_lgu_ep	_FPE_cmp_lgu_ep
#define cmp_lgu_f	_FPE_cmp_lgu_f
#define cmp_lgu_fp	_FPE_cmp_lgu_fp
#define cmp_lu0_d	_FPE_cmp_lu0_d
#define cmp_lu0_dp	_FPE_cmp_lu0_dp
#define cmp_lu0_e	_FPE_cmp_lu0_e
#define cmp_lu0_ep	_FPE_cmp_lu0_ep
#define cmp_lu0_f	_FPE_cmp_lu0_f
#define cmp_lu0_fp	_FPE_cmp_lu0_fp
#define cmp_lu_d	_FPE_cmp_lu_d
#define cmp_lu_dp	_FPE_cmp_lu_dp
#define cmp_lu_e	_FPE_cmp_lu_e
#define cmp_lu_ep	_FPE_cmp_lu_ep
#define cmp_lu_f	_FPE_cmp_lu_f
#define cmp_lu_fp	_FPE_cmp_lu_fp
#define cmp_u0_d	_FPE_cmp_u0_d
#define cmp_u0_dp	_FPE_cmp_u0_dp
#define cmp_u0_e	_FPE_cmp_u0_e
#define cmp_u0_ep	_FPE_cmp_u0_ep
#define cmp_u0_f	_FPE_cmp_u0_f
#define cmp_u0_fp	_FPE_cmp_u0_fp
#define cmp_u_d		_FPE_cmp_u_d
#define cmp_u_dp	_FPE_cmp_u_dp
#define cmp_u_e		_FPE_cmp_u_e
#define cmp_u_ep	_FPE_cmp_u_ep
#define cmp_u_f		_FPE_cmp_u_f
#define cmp_u_fp	_FPE_cmp_u_fp
#define d_to_e		_FPE_d_to_e
#define d_to_f		_FPE_d_to_f
#define d_to_fix	_FPE_d_to_fix
#define d_to_fpe	_FPE_d_to_fpe
#define d_to_l		_FPE_d_to_l
#define d_to_ll		_FPE_d_to_ll
#define d_to_ufix	_FPE_d_to_ufix
#define d_to_ul		_FPE_d_to_ul
#define d_to_ull	_FPE_d_to_ull
#define dbldescr	_FPE_dbldescr
#define div_d		_FPE_div_d
#define div_dp		_FPE_div_dp
#define div_drp		_FPE_div_drp
#define div_e		_FPE_div_e
#define div_ep		_FPE_div_ep
#define div_erp		_FPE_div_erp
#define div_f		_FPE_div_f
#define div_fp		_FPE_div_fp
#define div_frp		_FPE_div_frp
#define dp_to_ep	_FPE_dp_to_ep
#define dp_to_fp	_FPE_dp_to_fp
#define dp_to_fpe	_FPE_dp_to_fpe
#define dp_to_l		_FPE_dp_to_l
#define dp_to_ll	_FPE_dp_to_ll
#define dp_to_ul	_FPE_dp_to_ul
#define dp_to_ull	_FPE_dp_to_ull
#define e_to_d		_FPE_e_to_d
#define e_to_f		_FPE_e_to_f
#define e_to_fpe	_FPE_e_to_fpe
#define e_to_l		_FPE_e_to_l
#define e_to_ll		_FPE_e_to_ll
#define e_to_ul		_FPE_e_to_ul
#define e_to_ull	_FPE_e_to_ull
#define ef_to_fpe	_FPE_ef_to_fpe
#define ep_to_dp	_FPE_ep_to_dp
#define ep_to_fp	_FPE_ep_to_fp
#define ep_to_fpe	_FPE_ep_to_fpe
#define ep_to_l		_FPE_ep_to_l
#define ep_to_ll	_FPE_ep_to_ll
#define ep_to_ul	_FPE_ep_to_ul
#define ep_to_ull	_FPE_ep_to_ull
#define extdescr	_FPE_extdescr
#define f_to_d		_FPE_f_to_d
#define f_to_e		_FPE_f_to_e
#define f_to_fix	_FPE_f_to_fix
#define f_to_fpe	_FPE_f_to_fpe
#define f_to_l		_FPE_f_to_l
#define f_to_ll		_FPE_f_to_ll
#define f_to_ufix	_FPE_f_to_ufix
#define f_to_ul		_FPE_f_to_ul
#define f_to_ull	_FPE_f_to_ull
#define fadc_fpm	_FPE_fadc_fpm
#define fadd_fpm	_FPE_fadd_fpm
#define fclr_fpm	_FPE_fclr_fpm
#define fcmp_fpm	_FPE_fcmp_fpm
#define fden_fpm	_FPE_fden_fpm
#define fdiv_fpm	_FPE_fdiv_fpm
#define fix_to_d	_FPE_fix_to_d
#define fix_to_f	_FPE_fix_to_f
#define fltdescr	_FPE_fltdescr
#define fmul_fpm	_FPE_fmul_fpm
#define fneg_fpm	_FPE_fneg_fpm
#define fnot_fpm	_FPE_fnot_fpm
#define fnrm_fpm	_FPE_fnrm_fpm
#define fp_to_dp	_FPE_fp_to_dp
#define fp_to_ep	_FPE_fp_to_ep
#define fp_to_fpe	_FPE_fp_to_fpe
#define fp_to_l		_FPE_fp_to_l
#define fp_to_ll	_FPE_fp_to_ll
#define fp_to_ul	_FPE_fp_to_ul
#define fp_to_ull	_FPE_fp_to_ull
#define fpe_abs		_FPE_fpe_abs
#define fpe_add		_FPE_fpe_add
#define fpe_cmp		_FPE_fpe_cmp
#define fpe_cmp0	_FPE_fpe_cmp0
#define fpe_div		_FPE_fpe_div
#define fpe_frexp	_FPE_fpe_frexp
#define fpe_geninf	_FPE_fpe_geninf
#define fpe_gennan	_FPE_fpe_gennan
#define fpe_genzero	_FPE_fpe_genzero
#define fpe_ldexp	_FPE_fpe_ldexp
#define fpe_mul		_FPE_fpe_mul
#define fpe_neg		_FPE_fpe_neg
#define fpe_oper_check	_FPE_fpe_oper_check
#define fpe_round	_FPE_fpe_round
#define fpe_sub		_FPE_fpe_sub
#define fpe_to_d	_FPE_fpe_to_d
#define fpe_to_dp	_FPE_fpe_to_dp
#define fpe_to_e	_FPE_fpe_to_e
#define fpe_to_ef	_FPE_fpe_to_ef
#define fpe_to_ep	_FPE_fpe_to_ep
#define fpe_to_f	_FPE_fpe_to_f
#define fpe_to_fp	_FPE_fpe_to_fp
#define fpe_to_l	_FPE_fpe_to_l
#define fpe_to_ll	_FPE_fpe_to_ll
#define fpe_to_ul	_FPE_fpe_to_ul
#define fpe_to_ull	_FPE_fpe_to_ull
#define frexp_d		_FPE_frexp_d
#define frexp_dp	_FPE_frexp_dp
#define frexp_drp	_FPE_frexp_drp
#define frexp_e		_FPE_frexp_e
#define frexp_ep	_FPE_frexp_ep
#define frexp_erp	_FPE_frexp_erp
#define frexp_f		_FPE_frexp_f
#define frexp_fp	_FPE_frexp_fp
#define frexp_frp	_FPE_frexp_frp
#define frol_fpm	_FPE_frol_fpm
#define fror_fpm	_FPE_fror_fpm
#define fsub_fpm	_FPE_fsub_fpm
#define ftst_fpm	_FPE_ftst_fpm
#define l_to_d		_FPE_l_to_d
#define l_to_dp		_FPE_l_to_dp
#define l_to_e		_FPE_l_to_e
#define l_to_ep		_FPE_l_to_ep
#define l_to_f		_FPE_l_to_f
#define l_to_fp		_FPE_l_to_fp
#define l_to_fpe	_FPE_l_to_fpe
#define ldexp_d		_FPE_ldexp_d
#define ldexp_dp	_FPE_ldexp_dp
#define ldexp_drp	_FPE_ldexp_drp
#define ldexp_e		_FPE_ldexp_e
#define ldexp_ep	_FPE_ldexp_ep
#define ldexp_erp	_FPE_ldexp_erp
#define ldexp_f		_FPE_ldexp_f
#define ldexp_fp	_FPE_ldexp_fp
#define ldexp_frp	_FPE_ldexp_frp
#define ll_to_d		_FPE_ll_to_d
#define ll_to_dp	_FPE_ll_to_dp
#define ll_to_e		_FPE_ll_to_e
#define ll_to_ep	_FPE_ll_to_ep
#define ll_to_f		_FPE_ll_to_f
#define ll_to_fp	_FPE_ll_to_fp
#define ll_to_fpe	_FPE_ll_to_fpe
#define mul_d		_FPE_mul_d
#define mul_dp		_FPE_mul_dp
#define mul_drp		_FPE_mul_drp
#define mul_e		_FPE_mul_e
#define mul_ep		_FPE_mul_ep
#define mul_erp		_FPE_mul_erp
#define mul_f		_FPE_mul_f
#define mul_fp		_FPE_mul_fp
#define mul_frp		_FPE_mul_frp
#define neg_d		_FPE_neg_d
#define neg_dp		_FPE_neg_dp
#define neg_drp		_FPE_neg_drp
#define neg_e		_FPE_neg_e
#define neg_ep		_FPE_neg_ep
#define neg_erp		_FPE_neg_erp
#define neg_f		_FPE_neg_f
#define neg_fp		_FPE_neg_fp
#define neg_frp		_FPE_neg_frp
#define sub_d		_FPE_sub_d
#define sub_dp		_FPE_sub_dp
#define sub_drp		_FPE_sub_drp
#define sub_e		_FPE_sub_e
#define sub_ep		_FPE_sub_ep
#define sub_erp		_FPE_sub_erp
#define sub_f		_FPE_sub_f
#define sub_fp		_FPE_sub_fp
#define sub_frp		_FPE_sub_frp
#define ufix_to_d	_FPE_ufix_to_d
#define ufix_to_f	_FPE_ufix_to_f
#define ul_to_d		_FPE_ul_to_d
#define ul_to_dp	_FPE_ul_to_dp
#define ul_to_e		_FPE_ul_to_e
#define ul_to_ep	_FPE_ul_to_ep
#define ul_to_f		_FPE_ul_to_f
#define ul_to_fp	_FPE_ul_to_fp
#define ul_to_fpe	_FPE_ul_to_fpe
#define ull_to_d	_FPE_ull_to_d
#define ull_to_dp	_FPE_ull_to_dp
#define ull_to_e	_FPE_ull_to_e
#define ull_to_ep	_FPE_ull_to_ep
#define ull_to_f	_FPE_ull_to_f
#define ull_to_fp	_FPE_ull_to_fp
#define ull_to_fpe	_FPE_ull_to_fpe

#endif /* _ASM_INCLUDE toggle */

#endif /* not defined _EXDEFS_H_ */
