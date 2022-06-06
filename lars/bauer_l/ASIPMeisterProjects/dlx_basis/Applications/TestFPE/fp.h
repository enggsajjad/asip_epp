/*
 * @(#)fp.h	3800.2 05/02/23
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
 *   (c) Copyright 1995,1996-2004 ACE Associated Computer Experts bv
 *   (c) Copyright 1996,1998-2004 ACE Associated Compiler Experts bv
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

#ifndef _FPE_H_
#define _FPE_H_	1

#include <limits.h>

/***
 *** PERTINENT PORTABILITY issues for this implementation:
 ***
 * 	sizeof(long) > sizeof(short), i.e. a long must have more
 *	( 2 times the no. of ) bits in its representation than a short.
 *	This ain't strictly a C standard requirement, but we need it!
 *
 *   If not specified on the command line, determine no. of bits-per-byte
 *   for some "known" cases  -- using limits..
 */
#ifndef _FPE_BPB
# if UCHAR_MAX == 0xffu
#  define _FPE_BPB	8
# elif UCHAR_MAX == 0xffffu
#  define _FPE_BPB	16
# elif UCHAR_MAX == 0xffffffu
#  define _FPE_BPB	24
# else
#  error "bits per char undetermined -- maybe -D_FPE_BPB=xx?"
# endif
#endif

/*
 * find the no. of bits & bytes in long, fit for C pre-processor-use:
 * PN: ( .. -2 to prevent warnings..  Hence, use no 0 for y in _FPE() )
 */
#define _FPE(y)	(  ( ( (1UL << (((y)*_FPE_BPB)-2)) & ((ULONG_MAX)>>2) ) == 0 ) \
		|| (   (1UL << (((y)*_FPE_BPB)-2)) == 1UL ) \
		)
#if _FPE(1)
# define _FPE_SZULONG	1
#elif _FPE(2)
# define _FPE_SZULONG	2
#elif _FPE(3)
# define _FPE_SZULONG	3
#elif _FPE(4)
# define _FPE_SZULONG	4
#elif _FPE(5)
# define _FPE_SZULONG	5
#elif _FPE(6)
# define _FPE_SZULONG	6
#elif _FPE(7)
# define _FPE_SZULONG	7
#elif _FPE(8)
# define _FPE_SZULONG	8
#else
# error "panic -- unable to determine the number of bytes per long!"
#endif
#undef _FPE	/* .. many thanks */

/*
 * find the no. of bits & bytes in short, fit for C pre-processor-use:
 */
#define _FPE(y)	(  ( ( (1U << (((y)*_FPE_BPB)-2)) & ((USHRT_MAX)>>2) ) == 0 ) \
		|| (   (1U << (((y)*_FPE_BPB)-2)) == 1U ) \
		)
#if _FPE(1)
# define _FPE_SZUSHORT	1
#elif _FPE(2)
# define _FPE_SZUSHORT	2
#elif _FPE(3)
# define _FPE_SZUSHORT	3
#elif _FPE(4)
# define _FPE_SZUSHORT	4
#elif _FPE(5)
# define _FPE_SZUSHORT	5
#elif _FPE(6)
# define _FPE_SZUSHORT	6
#elif _FPE(7)
# define _FPE_SZUSHORT	7
#elif _FPE(8)
# define _FPE_SZUSHORT	8
#else
# error "panic -- unable to determine the number of bytes per short!"
#endif
#undef _FPE	/* .. many thanks, again */

#if (_FPE_SZULONG/_FPE_SZUSHORT) < 2
# error "This is not going to work -- sizeof(long) < 2*sizeof(short)!"
#endif


/*
 * Supported `external representations' include flt_t, and dbl_t,
 * known as `float', and `double' in most C language dialects.
 * There is also ext_t for `long double', with field-defines for pentium.
 *
 * The defines below capture their representations by means of a bit-field
 * like view.  In the representation, which has three fields, the sign-field
 * is most significant, followed by the exponent-field, and the mantissa-field
 * as least significant.  If no of SBITS is more than one, only the least
 * significant bit within the field holds the sign;
 * the more significant bits are set to zero.
 *
 *	msb				   lsb
 *	--------------------------------------
 *	|  sign  |  exponent  |   mantissa   |
 *	--------------------------------------
 */ 

typedef unsigned long	carrier_t;	/* external repr. carrier */

#define _FPE_BPC	(_FPE_BPB*_FPE_SZULONG)

#define SG_SBITS	1	/* no of bits for the sign field */
#define SG_EBITS	8	/* no of bits for the exponent field */
#define SG_MBITS	23	/* no of bits for the mantissa field */
#define SG_TSIZE (((SG_SBITS+SG_EBITS+SG_MBITS)+(_FPE_BPC-1))/_FPE_BPC)

typedef struct {
	carrier_t	s[SG_TSIZE];	/* should have: TSIZE == 1 */
} flt_t;

#define DB_SBITS	1	/* no of bits for the sign field */
#define DB_EBITS	11	/* no of bits for the exponent field */
#define DB_MBITS	52	/* no of bits for the mantissa field */
#define DB_TSIZE (((DB_SBITS+DB_EBITS+DB_MBITS)+(_FPE_BPC-1))/_FPE_BPC)

typedef struct {
	carrier_t	d[DB_TSIZE];	/* should have: TSIZE == 2 */
} dbl_t;

#define EX_SBITS	1	/* no of bits for the sign field */
#define EX_EBITS	15	/* no of bits for the exponent field */
#define EX_MBITS	64	/* no of bits for the mantissa field */
#define EX_TSIZE ((128+(_FPE_BPC-1))/_FPE_BPC)

typedef struct {
	carrier_t	e[EX_TSIZE];	/* should have: TSIZE == 4 */
} ext_t;

/*
 * `external representations' are dealt with in a table driven way.
 *
 * note:
 *	Above defines (i.e. SG_* & DB_*) are default values, according
 *	to IEEE 754 std.  They can be changed, even dynamically, by
 *	supplying or changing the tables listed below.  Do not change
 *	d_tsize however, since this value has been compiled into the
 *	code, and reflects the size in bits of the representation.
 *
 *	EX_* defines are default as well, for pentium;  I cannot see
 *	unused bits (gaps) between the fields, so no measures for such
 *	as of now. For pentium, no hidden bit technique is used.  For
 *	sparc V9 128 bits are used, inclusive hidden bit technique.
 *	The ext_t will always have (at least) 128 bit containers
 *
 *	If hidden bit technique is *not* used, negate the d_tsize value
 *	in the fpdescr_t initialization.
 */

typedef struct {
	int	d_sbits;	/* no of bits for sign field */
	int	d_ebits;	/* no of bits for exponent field */
	int	d_mbits;	/* no of bits for mantissa field */
	int	d_tsize;	/* no of carrier_t elements */
	int	d_model[EX_TSIZE];	/* data model access */
} fpdescr_t;

/*
 * (public) variable & function declarations:
 */

extern fpdescr_t	fltdescr;	/* .. flt_t description */
extern fpdescr_t	dbldescr;	/* .. dbl_t description */
extern fpdescr_t	extdescr;	/* .. ext_t description */

#ifndef lint
#define flt_t		unsigned long
#endif

/*
 * _ne_ maps to unordered (i.e. aware) less than or greater than _lgu_:
 */
#define cmp_ne_f(a,b)	cmp_lgu_f(a,b)
#define cmp_ne_d(a,b)	cmp_lgu_d(a,b)
#define cmp_ne_e(a,b)	cmp_lgu_e(a,b)
#define cmp_ne_fp(a,b)	cmp_lgu_fp(a,b)
#define cmp_ne_dp(a,b)	cmp_lgu_dp(a,b)
#define cmp_ne_ep(a,b)	cmp_lgu_ep(a,b)

#define cmp_ne0_f(a)	cmp_lgu0_f(a)
#define cmp_ne0_d(a)	cmp_lgu0_d(a)
#define cmp_ne0_e(a)	cmp_lgu0_e(a)
#define cmp_ne0_fp(a)	cmp_lgu0_fp(a)
#define cmp_ne0_dp(a)	cmp_lgu0_dp(a)
#define cmp_ne0_ep(a)	cmp_lgu0_ep(a)


/*
 * available comparison functions:
 */
extern int		cmp_d( dbl_t, dbl_t );
extern int		cmp_e_d( dbl_t, dbl_t );
extern int		cmp_e_dp( const dbl_t *, const dbl_t * );
extern int		cmp_e( ext_t, ext_t );
extern int		cmp_e_e( ext_t, ext_t );
extern int		cmp_e_ep( const ext_t *, const ext_t * );
extern int		cmp_e_f( flt_t, flt_t );
extern int		cmp_e_fp( const flt_t *, const flt_t * );
extern int		cmp_eg_d( dbl_t, dbl_t );
extern int		cmp_eg_dp( const dbl_t *, const dbl_t * );
extern int		cmp_eg_e( ext_t, ext_t );
extern int		cmp_eg_ep( const ext_t *, const ext_t * );
extern int		cmp_eg_f( flt_t, flt_t );
extern int		cmp_eg_fp( const flt_t *, const flt_t * );
extern int		cmp_egu_d( dbl_t, dbl_t );
extern int		cmp_egu_dp( const dbl_t *, const dbl_t * );
extern int		cmp_egu_e( ext_t, ext_t );
extern int		cmp_egu_ep( const ext_t *, const ext_t * );
extern int		cmp_egu_f( flt_t, flt_t );
extern int		cmp_egu_fp( const flt_t *, const flt_t * );
extern int		cmp_eu_d( dbl_t, dbl_t );
extern int		cmp_eu_dp( const dbl_t *, const dbl_t * );
extern int		cmp_eu_e( ext_t, ext_t );
extern int		cmp_eu_ep( const ext_t *, const ext_t * );
extern int		cmp_eu_f( flt_t, flt_t );
extern int		cmp_eu_fp( const flt_t *, const flt_t * );
extern int		cmp_f( flt_t, flt_t );
extern int		cmp_g_d( dbl_t, dbl_t );
extern int		cmp_g_dp( const dbl_t *, const dbl_t * );
extern int		cmp_g_e( ext_t, ext_t );
extern int		cmp_g_ep( const ext_t *, const ext_t * );
extern int		cmp_g_f( flt_t, flt_t );
extern int		cmp_g_fp( const flt_t *, const flt_t * );
extern int		cmp_gu_d( dbl_t, dbl_t );
extern int		cmp_gu_dp( const dbl_t *, const dbl_t * );
extern int		cmp_gu_e( ext_t, ext_t );
extern int		cmp_gu_ep( const ext_t *, const ext_t * );
extern int		cmp_gu_f( flt_t, flt_t );
extern int		cmp_gu_fp( const flt_t *, const flt_t * );
extern int		cmp_l_d( dbl_t, dbl_t );
extern int		cmp_l_dp( const dbl_t *, const dbl_t * );
extern int		cmp_l_e( ext_t, ext_t );
extern int		cmp_l_ep( const ext_t *, const ext_t * );
extern int		cmp_l_f( flt_t, flt_t );
extern int		cmp_l_fp( const flt_t *, const flt_t * );
extern int		cmp_le_d( dbl_t, dbl_t );
extern int		cmp_le_dp( const dbl_t *, const dbl_t * );
extern int		cmp_le_e( ext_t, ext_t );
extern int		cmp_le_ep( const ext_t *, const ext_t * );
extern int		cmp_le_f( flt_t, flt_t );
extern int		cmp_le_fp( const flt_t *, const flt_t * );
extern int		cmp_leu_d( dbl_t, dbl_t );
extern int		cmp_leu_dp( const dbl_t *, const dbl_t * );
extern int		cmp_leu_e( ext_t, ext_t );
extern int		cmp_leu_ep( const ext_t *, const ext_t * );
extern int		cmp_leu_f( flt_t, flt_t );
extern int		cmp_leu_fp( const flt_t *, const flt_t * );
extern int		cmp_lg_d( dbl_t, dbl_t );
extern int		cmp_lg_dp( const dbl_t *, const dbl_t * );
extern int		cmp_lg_e( ext_t, ext_t );
extern int		cmp_lg_ep( const ext_t *, const ext_t * );
extern int		cmp_lg_f( flt_t, flt_t );
extern int		cmp_lg_fp( const flt_t *, const flt_t * );
extern int		cmp_lge_d( dbl_t, dbl_t );
extern int		cmp_lge_dp( const dbl_t *, const dbl_t * );
extern int		cmp_lge_e( ext_t, ext_t );
extern int		cmp_lge_ep( const ext_t *, const ext_t * );
extern int		cmp_lge_f( flt_t, flt_t );
extern int		cmp_lge_fp( const flt_t *, const flt_t * );
extern int		cmp_lgu_d( dbl_t, dbl_t );
extern int		cmp_lgu_dp( const dbl_t *, const dbl_t * );
extern int		cmp_lgu_e( ext_t, ext_t );
extern int		cmp_lgu_ep( const ext_t *, const ext_t * );
extern int		cmp_lgu_f( flt_t, flt_t );
extern int		cmp_lgu_fp( const flt_t *, const flt_t * );
extern int		cmp_lu_d( dbl_t, dbl_t );
extern int		cmp_lu_dp( const dbl_t *, const dbl_t * );
extern int		cmp_lu_e( ext_t, ext_t );
extern int		cmp_lu_ep( const ext_t *, const ext_t * );
extern int		cmp_lu_f( flt_t, flt_t );
extern int		cmp_lu_fp( const flt_t *, const flt_t * );
extern int		cmp_u_d( dbl_t, dbl_t );
extern int		cmp_u_dp( const dbl_t *, const dbl_t * );
extern int		cmp_u_e( ext_t, ext_t );
extern int		cmp_u_ep( const ext_t *, const ext_t * );
extern int		cmp_u_f( flt_t, flt_t );
extern int		cmp_u_fp( const flt_t *, const flt_t * );

/*
 * again, but now just one operand (monadic), comparing against 0.0:
 */
extern int		cmp_e0_d( dbl_t ) ;
extern int		cmp_e0_dp( const dbl_t * ) ;
extern int		cmp_e0_e( ext_t ) ;
extern int		cmp_e0_ep( const ext_t * ) ;
extern int		cmp_e0_f( flt_t ) ;
extern int		cmp_e0_fp( const flt_t * ) ;
extern int		cmp_eg0_d( dbl_t ) ;
extern int		cmp_eg0_dp( const dbl_t * ) ;
extern int		cmp_eg0_e( ext_t ) ;
extern int		cmp_eg0_ep( const ext_t * ) ;
extern int		cmp_eg0_f( flt_t ) ;
extern int		cmp_eg0_fp( const flt_t * ) ;
extern int		cmp_egu0_d( dbl_t ) ;
extern int		cmp_egu0_dp( const dbl_t * ) ;
extern int		cmp_egu0_e( ext_t ) ;
extern int		cmp_egu0_ep( const ext_t * ) ;
extern int		cmp_egu0_f( flt_t ) ;
extern int		cmp_egu0_fp( const flt_t * ) ;
extern int		cmp_eu0_d( dbl_t ) ;
extern int		cmp_eu0_dp( const dbl_t * ) ;
extern int		cmp_eu0_e( ext_t ) ;
extern int		cmp_eu0_ep( const ext_t * ) ;
extern int		cmp_eu0_f( flt_t ) ;
extern int		cmp_eu0_fp( const flt_t * ) ;
extern int		cmp_g0_d( dbl_t ) ;
extern int		cmp_g0_dp( const dbl_t * ) ;
extern int		cmp_g0_e( ext_t ) ;
extern int		cmp_g0_ep( const ext_t * ) ;
extern int		cmp_g0_f( flt_t ) ;
extern int		cmp_g0_fp( const flt_t * ) ;
extern int		cmp_gu0_d( dbl_t ) ;
extern int		cmp_gu0_dp( const dbl_t * ) ;
extern int		cmp_gu0_e( ext_t ) ;
extern int		cmp_gu0_ep( const ext_t * ) ;
extern int		cmp_gu0_f( flt_t ) ;
extern int		cmp_gu0_fp( const flt_t * ) ;
extern int		cmp_l0_d( dbl_t ) ;
extern int		cmp_l0_dp( const dbl_t * ) ;
extern int		cmp_l0_e( ext_t ) ;
extern int		cmp_l0_ep( const ext_t * ) ;
extern int		cmp_l0_f( flt_t ) ;
extern int		cmp_l0_fp( const flt_t * ) ;
extern int		cmp_le0_d( dbl_t ) ;
extern int		cmp_le0_dp( const dbl_t * ) ;
extern int		cmp_le0_e( ext_t ) ;
extern int		cmp_le0_ep( const ext_t * ) ;
extern int		cmp_le0_f( flt_t ) ;
extern int		cmp_le0_fp( const flt_t * ) ;
extern int		cmp_leu0_d( dbl_t ) ;
extern int		cmp_leu0_dp( const dbl_t * ) ;
extern int		cmp_leu0_e( ext_t ) ;
extern int		cmp_leu0_ep( const ext_t * ) ;
extern int		cmp_leu0_f( flt_t ) ;
extern int		cmp_leu0_fp( const flt_t * ) ;
extern int		cmp_lg0_d( dbl_t ) ;
extern int		cmp_lg0_dp( const dbl_t * ) ;
extern int		cmp_lg0_e( ext_t ) ;
extern int		cmp_lg0_ep( const ext_t * ) ;
extern int		cmp_lg0_f( flt_t ) ;
extern int		cmp_lg0_fp( const flt_t * ) ;
extern int		cmp_lge0_d( dbl_t ) ;
extern int		cmp_lge0_dp( const dbl_t * ) ;
extern int		cmp_lge0_e( ext_t ) ;
extern int		cmp_lge0_ep( const ext_t * ) ;
extern int		cmp_lge0_f( flt_t ) ;
extern int		cmp_lge0_fp( const flt_t * ) ;
extern int		cmp_lgu0_d( dbl_t ) ;
extern int		cmp_lgu0_dp( const dbl_t * ) ;
extern int		cmp_lgu0_e( ext_t ) ;
extern int		cmp_lgu0_ep( const ext_t * ) ;
extern int		cmp_lgu0_f( flt_t ) ;
extern int		cmp_lgu0_fp( const flt_t * ) ;
extern int		cmp_lu0_d( dbl_t ) ;
extern int		cmp_lu0_dp( const dbl_t * ) ;
extern int		cmp_lu0_e( ext_t ) ;
extern int		cmp_lu0_ep( const ext_t * ) ;
extern int		cmp_lu0_f( flt_t ) ;
extern int		cmp_lu0_fp( const flt_t * ) ;
extern int		cmp_u0_d( dbl_t ) ;
extern int		cmp_u0_dp( const dbl_t * ) ;
extern int		cmp_u0_e( ext_t ) ;
extern int		cmp_u0_ep( const ext_t * ) ;
extern int		cmp_u0_f( flt_t ) ;
extern int		cmp_u0_fp( const flt_t * ) ;

/*
 * available arithmetical operations & functions:
 */
extern dbl_t		abs_d( dbl_t );
extern void		abs_dp( dbl_t * );
extern void		abs_drp( dbl_t *, const dbl_t * );
extern ext_t		abs_e( ext_t );
extern void		abs_ep( ext_t * );
extern void		abs_erp( ext_t *, const ext_t * );
extern flt_t		abs_f( flt_t );
extern void		abs_fp( flt_t * );
extern void		abs_frp( flt_t *, const flt_t * );
extern dbl_t		add_d( dbl_t, dbl_t );
extern void		add_dp( dbl_t *, const dbl_t * );
extern void		add_drp( dbl_t *, const dbl_t *, const dbl_t * );
extern ext_t		add_e( ext_t, ext_t );
extern void		add_ep( ext_t *, const ext_t * );
extern void		add_erp( ext_t *, const ext_t *, const ext_t * );
extern flt_t		add_f( flt_t, flt_t );
extern void		add_fp( flt_t *, const flt_t * );
extern void		add_frp( flt_t *, const flt_t *, const flt_t * );
extern dbl_t		div_d( dbl_t, dbl_t );
extern void		div_dp( dbl_t *, const dbl_t * );
extern void		div_drp( dbl_t *, const dbl_t *, const dbl_t * );
extern ext_t		div_e( ext_t, ext_t );
extern void		div_ep( ext_t *, const ext_t * );
extern void		div_erp( ext_t *, const ext_t *, const ext_t * );
extern flt_t		div_f( flt_t, flt_t );
extern void		div_fp( flt_t *, const flt_t * );
extern void		div_frp( flt_t *, const flt_t *, const flt_t * );
extern dbl_t		frexp_d( dbl_t, int * );
extern void		frexp_dp( dbl_t *, int * );
extern void		frexp_drp( dbl_t *, const dbl_t *, int * );
extern ext_t		frexp_e( ext_t, int * );
extern void		frexp_ep( ext_t *, int * );
extern void		frexp_erp( ext_t *, const ext_t *, int * );
extern flt_t		frexp_f( flt_t, int * );
extern void		frexp_fp( flt_t *, int * );
extern void		frexp_frp( flt_t *, const flt_t *, int * );
extern dbl_t		ldexp_d( dbl_t, int );
extern void		ldexp_dp( dbl_t *, int );
extern void		ldexp_drp( dbl_t *, const dbl_t *, int );
extern ext_t		ldexp_e( ext_t, int );
extern void		ldexp_ep( ext_t *, int );
extern void		ldexp_erp( ext_t *, const ext_t *, int );
extern flt_t		ldexp_f( flt_t, int );
extern void		ldexp_fp( flt_t *, int );
extern void		ldexp_frp( flt_t *, const flt_t *, int );
extern dbl_t		mul_d( dbl_t, dbl_t );
extern void		mul_dp( dbl_t *, const dbl_t * );
extern void		mul_drp( dbl_t *, const dbl_t *, const dbl_t * );
extern ext_t		mul_e( ext_t, ext_t );
extern void		mul_ep( ext_t *, const ext_t * );
extern void		mul_erp( ext_t *, const ext_t *, const ext_t * );
extern flt_t		mul_f( flt_t, flt_t );
extern void		mul_fp( flt_t *, const flt_t * );
extern void		mul_frp( flt_t *, const flt_t *, const flt_t * );
extern dbl_t		neg_d( dbl_t );
extern void		neg_dp( dbl_t * );
extern void		neg_drp( dbl_t *, const dbl_t * );
extern ext_t		neg_e( ext_t );
extern void		neg_ep( ext_t * );
extern void		neg_erp( ext_t *, const ext_t * );
extern flt_t		neg_f( flt_t );
extern void		neg_fp( flt_t * );
extern void		neg_frp( flt_t *, const flt_t * );
extern dbl_t		sub_d( dbl_t, dbl_t );
extern void		sub_dp( dbl_t *, const dbl_t * );
extern void		sub_drp( dbl_t *, const dbl_t *, const dbl_t * );
extern ext_t		sub_e( ext_t, ext_t );
extern void		sub_ep( ext_t *, const ext_t * );
extern void		sub_erp( ext_t *, const ext_t *, const ext_t * );
extern flt_t		sub_f( flt_t, flt_t );
extern void		sub_fp( flt_t *, const flt_t * );
extern void		sub_frp( flt_t *, const flt_t *, const flt_t * );

/*
 * available conversion functions:
 */
extern ext_t		d_to_e( dbl_t );
extern flt_t		d_to_f( dbl_t );
extern long		d_to_l( dbl_t );
extern unsigned long	d_to_ul( dbl_t );
extern void		dp_to_ep( ext_t *, const dbl_t * );
extern void		dp_to_fp( flt_t *, const dbl_t * );
extern long		dp_to_l( const dbl_t * );
extern unsigned long	dp_to_ul( const dbl_t * );
extern dbl_t		e_to_d( ext_t );
extern flt_t		e_to_f( ext_t );
extern long		e_to_l( ext_t );
extern unsigned long	e_to_ul( ext_t );
extern void		ep_to_dp( dbl_t *, const ext_t * );
extern void		ep_to_fp( flt_t *, const ext_t * );
extern long		ep_to_l( const ext_t * );
extern unsigned long	ep_to_ul( const ext_t * );
extern dbl_t		f_to_d( flt_t );
extern ext_t		f_to_e( flt_t );
extern long		f_to_l( flt_t );
extern unsigned long	f_to_ul( flt_t );
extern void		fp_to_dp( dbl_t *, const flt_t * );
extern void		fp_to_ep( ext_t *, const flt_t * );
extern long		fp_to_l( const flt_t * );
extern unsigned long	fp_to_ul( const flt_t * );
extern dbl_t		l_to_d( long );
extern void		l_to_dp( dbl_t *, long );
extern ext_t		l_to_e( long );
extern void		l_to_ep( ext_t *, long );
extern flt_t		l_to_f( long );
extern void		l_to_fp( flt_t *, long );
extern dbl_t		ul_to_d( unsigned long );
extern void		ul_to_dp( dbl_t *, unsigned long );
extern ext_t		ul_to_e( unsigned long );
extern void		ul_to_ep( ext_t *, unsigned long );
extern flt_t		ul_to_f( unsigned long );
extern void		ul_to_fp( flt_t *, unsigned long );

#ifdef LONGLONG
/*
 * long long support..
 */
extern dbl_t			ll_to_d( long long );
extern void			ll_to_dp( dbl_t *, long long );
extern ext_t			ll_to_e( long long );
extern void			ll_to_ep( ext_t *, long long );
extern flt_t			ll_to_f( long long );
extern void			ll_to_fp( flt_t *, long long );
extern dbl_t			ull_to_d( unsigned long long );
extern void			ull_to_dp( dbl_t *, unsigned long long );
extern ext_t			ull_to_e( unsigned long long );
extern void			ull_to_ep( ext_t *, unsigned long long );
extern flt_t			ull_to_f( unsigned long long );
extern void			ull_to_fp( flt_t *, unsigned long long );
extern long long		d_to_ll( dbl_t );
extern long long		dp_to_ll( const dbl_t * );
extern long long		e_to_ll( ext_t );
extern long long		ep_to_ll( const ext_t * );
extern long long		f_to_ll( flt_t );
extern long long		fp_to_ll( const flt_t * );
extern unsigned long long	d_to_ull( dbl_t );
extern unsigned long long	dp_to_ull( const dbl_t * );
extern unsigned long long	e_to_ull( ext_t );
extern unsigned long long	ep_to_ull( const ext_t * );
extern unsigned long long	f_to_ull( flt_t );
extern unsigned long long	fp_to_ull( const flt_t * );
#endif

#endif /* not defined _FPE_H_ */
