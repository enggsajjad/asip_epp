/*
 * @(#)libfpe.h	3800.2 05/02/23
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
 *   (c) Copyright 1995-2004 ACE Associated Computer Experts bv
 *   (c) Copyright 1996-2004 ACE Associated Compiler Experts bv
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

#ifndef _LIBFPE_H_
#define _LIBFPE_H_	1

/*
 *  This file glues the sources of libfpe.a into something usable.
 *  This is not intended to be exported to common include directories.
 */

#include "exdefs.h"
#include "fp.h"

/*
 * When FPESZ is supplied at compile time, the package adjusts.
 */
#ifndef FPESZ
#define FPESZ 64
#endif

/*
 * types used but not to be exported
 */

typedef unsigned char		u_char;
typedef unsigned int		u_int;
typedef unsigned long		u_long;
typedef unsigned short		u_short;

#ifdef LONGLONG
typedef long long		longer;
typedef unsigned long long	u_longer;
typedef longer		*	longer_p;
typedef	u_longer	*	ulonger_p;
#endif

typedef char		*	char_p;
typedef int		*	int_p;
typedef long		*	long_p;
typedef short		*	short_p;
typedef u_char		*	uchar_p;
typedef u_int		*	uint_p;
typedef u_long		*	ulong_p;
typedef u_short		*	ushort_p;
typedef void		*	void_p;

#define flt_p	flt_t *
#define dbl_p	dbl_t *
#define ext_p	ext_t *
#define car_p	carrier_t *
#define fdt_p	fpdescr_t *

/*
 * for fpe_t members:
 */
typedef u_short			exp_t;
typedef u_short			stat_t;
typedef u_short			mant_t;
typedef exp_t		*	exp_p;
typedef stat_t		*	stat_p;
typedef mant_t		*	mant_p;


#define _FPE_BPM	(_FPE_BPB*_FPE_SZUSHORT)	/* >= 16 */
#define _FPE_BPE	(_FPE_BPB*_FPE_SZUSHORT)

#define _FPE_BPLL	(_FPE_BPB*sizeof(longer))
#define _FPE_BPL	(_FPE_BPB*sizeof(long))
#define _FPE_BPI	(_FPE_BPB*sizeof(int))
#define _FPE_BPS	(_FPE_BPB*sizeof(short))

/*
 * The internal floating point representation.
 *
 * FPE_MSIZE is set to hold at least the number of bits requested
 * FPE_MBITS is derived from it to get the real no of bits of fpe
 */
#define _FPE_MSIZE	((FPESZ+(_FPE_BPM-1))/_FPE_BPM)
#define _FPE_MBITS	(_FPE_MSIZE*_FPE_BPM)	/* no of bits */

typedef struct fpe {
	stat_t	stat;
	exp_t	exp;
	mant_t	mant[_FPE_MSIZE];
} fpe_t, * fpe_p;

#define NOFPE	(fpe_p)0

#ifndef BIT
#define BIT(n)	(1UL<<(n))	/* prevent warnings: 32768 too big */
#endif
#define SBIT(n)	((stat_t)(1L<<(n)))

/*
 * status bits:
 *
 * VALID:  set to mark valid the value.  Used to detect (amongst
 *	   others) result substitution by external notification handler,
 * SIG:    set to mark the NaN value as SIGnalling,
 * SIGNAN: set if a SIGnalling NaN was converted to Quiet NaN pattern.
 */
			/* unused: bit 15 */
#define VALID	SBIT(14)	/* representation (value) is there */
#define SIG	SBIT(13)	/* Signalling NaN value */
#define SIGNAN	SBIT(12)	/* (derived from) Signalling NaN */

/*
 * status bits:
 *
 * rounding attribute bits (don't care when EXACT is asserted):
 *
 * EXACT:  set to mark the value either exact or already rounded,
 * ROVF:   the value (INF) is the result of occured Overflow,
 * RUVF:   the value (0.0) is the result of occured Underflow,
 * RMNEG:  result of addition (subtraction) was 0.0: must be -0.0 if RM.
 * GRD:    0.5 ulp (Unit Last Place)
 * RND:    0.25 ulp
 * STY:    precise value has mantissa bits set beyond scope of representation.
 */
#define EXACT	SBIT(11)	/* exact or rounded representation */
#define ROVF	SBIT(10)	/* Result from Overflow */
#define RUVF	SBIT( 9)	/* Result from Underflow */
#define RMNEG	SBIT( 8)	/* set NEG if rounding is RM */
			/* unused: bit 7 */
#define GRD	SBIT( 6)	/* Guard bit */
#define RND	SBIT( 5)	/* Round bit */
#define STY	SBIT( 4)	/* Sticky (end) bit */

/*
 * status bits:
 *
 * condition bits (speak for themselves, aren't they?):
 */
#define NAN	SBIT( 3)	/* NaN (undefined) value */
#define INF	SBIT( 2)	/* infinity */
#define ZERO	SBIT( 1)	/* zero */
#define NEG	SBIT( 0)	/* negative */
 
/*
 * cmp/test predicates supported:
 */
typedef enum {
	 fpe_F		= 0x00	/* false */
	,fpe_EQ		= 0x01	/* equal */
	,fpe_OGT	= 0x02	/* ordered greater than */
	,fpe_OGE	= 0x03	/* ordered greater than or equal to */
	,fpe_OLT	= 0x04	/* ordered less than */
	,fpe_OLE	= 0x05	/* ordered less than or equal to */
	,fpe_OGL	= 0x06	/* ordered greater or less than */
	,fpe_OR		= 0x07	/* ordered */
	,fpe_UN		= 0x08	/* unordered */
	,fpe_UEQ	= 0x09	/* unordered equal to */
	,fpe_UGT	= 0x0a	/* unordered greater than */
	,fpe_UGE	= 0x0b	/* unordered greater than or equal to */
	,fpe_ULT	= 0x0c	/* unordered less than */
	,fpe_ULE	= 0x0d	/* unordered less than or equal to */
	,fpe_NE		= 0x0e	/* not equal */
	,fpe_T		= 0x0f	/* true */
	,fpe_SF		= 0x10	/* signalling false */
	,fpe_SEQ	= 0x11	/* signalling equal */
	,fpe_GT		= 0x12	/* greater than */
	,fpe_GE		= 0x13	/* greater than or equal to */
	,fpe_LT		= 0x14	/* less than */
	,fpe_LE		= 0x15	/* less than or equal to */
	,fpe_GL		= 0x16	/* greater or less than */
	,fpe_GLE	= 0x17	/* greater or less than or equal to */
	,fpe_NGLE	= 0x18	/* not greater or less than or equal to */
	,fpe_NGL	= 0x19	/* not greater or less than */
	,fpe_NLE	= 0x1a	/* not less than or equal to */
	,fpe_NLT	= 0x1b	/* not less than */
	,fpe_NGE	= 0x1c	/* not greater than or equal to */
	,fpe_NGT	= 0x1d	/* not greater than */
	,fpe_SNE	= 0x1e	/* signalling not equal */
	,fpe_ST		= 0x1f	/* signalling true */
} predicate_t;

/*
 * extra defines for fpe_t exp & mant members:
 *
 * PN:	sizeof() is size_t in ANSI, in my opinion an incorrect choise:
 *	casts are added to ensure signed comparisons wherever applicable.
 */
#define _BPB	(int)(_FPE_BPB)		/* Bits Per Byte */
#define _BPS	(int)(_FPE_BPS)		/* Bits Per Short */
#define _BPI	(int)(_FPE_BPI)		/* Bits Per Int */
#define _BPL	(int)(_FPE_BPL)		/* Bits Per Long */
#define _BPLL	(int)(_FPE_BPLL)	/* Bits Per LongLong */

#define _BPC	(int)(_FPE_BPC)		/* Bits Per Carrier_t */
#define _BPM	(int)(_FPE_BPM)		/* Bits Per Mant_t */
#define _BPE	(int)(_FPE_BPE)		/* Bits Per Exp_t */

#define EBITS	(_BPE-1)		/* >= 15 bits */
#define MBITS	((int)(_FPE_MBITS))
#define MSIZE	((int)(_FPE_MSIZE))
#define MPBITS	(MBITS/MSIZE)		/* real no of bits per mant_t */

#define EBIAS	(BIT(EBITS-1)-1)
#define REMAX	(EBIAS+BIT(EBITS-1))
#define REMIN	0			/* .. relied upon in code */
#define EMASK	REMAX			/* .. equal this time */

/*
 * using above result, find whether FASTFLOAT may work..
 *
 * PN:	this may work when no more than 2*MPBITS are "ever", e.g. dynamically,
 *	are programmed in the flt_t descriptor.  When in doubt, -DFASTFLOAT=0.
 */
#ifndef FASTFLOAT
# if (2*(_FPE_MBITS/_FPE_MSIZE)) >= SG_MBITS
#  define FASTFLOAT	1
# else
#  define FASTFLOAT	0
# endif
#endif

/*
 * Quiet NaN codes, possibly generated by this package:
 *
 * _NaNadjust macro ensures correct position of 16-bits codes within
 * the mant_t, which may be(come) larger than `standard' short.
 */

#define _NaNadjust(x)	((x)<<(MPBITS-16))

#define QNAN_FLT_ADD	_NaNadjust(0x3f00)
#define QNAN_FLT_SUB	QNAN_FLT_ADD
#define QNAN_FLT_MUL	_NaNadjust(0x3e00)
#define QNAN_FLT_DIV	_NaNadjust(0x3c00)

#define QNAN_DBL_ADD	_NaNadjust(0x3f80)
#define QNAN_DBL_SUB	QNAN_DBL_ADD
#define QNAN_DBL_MUL	_NaNadjust(0x3e80)
#define QNAN_DBL_DIV	_NaNadjust(0x3c80)

#define QNAN_EXT_ADD	_NaNadjust(0x3fc0)
#define QNAN_EXT_SUB	QNAN_EXT_ADD
#define QNAN_EXT_MUL	_NaNadjust(0x3ec0)
#define QNAN_EXT_DIV	_NaNadjust(0x3cc0)

#define QNAN_FPE_ADD	_NaNadjust(0x3fff)
#define QNAN_FPE_SUB	QNAN_FPE_ADD
#define QNAN_FPE_MUL	_NaNadjust(0x3ffe)
#define QNAN_FPE_DIV	_NaNadjust(0x3ffd)


/*
 * (not so public :-) function declarations:
 */
#ifndef STATIC
#define STATIC	static
#endif


/*
 * conversions:
 */
extern fpe_t	d_to_fpe( dbl_t );
extern void	dp_to_fpe( fpe_p, const dbl_p );
extern fpe_t	e_to_fpe( ext_t );
extern void	ep_to_fpe( fpe_p, const ext_p );
extern void	ef_to_fpe( fpe_p, const car_p, const fdt_p );
extern fpe_t	f_to_fpe( flt_t );
extern void	fp_to_fpe( fpe_p, const flt_t *ip);
extern dbl_t	fpe_to_d( fpe_t );
extern ext_t	fpe_to_e( fpe_t );
extern void	fpe_to_dp( dbl_p, fpe_p );
extern void	fpe_to_ep( ext_p, fpe_p );
extern void	fpe_to_ef( car_p, const fdt_p, fpe_p );
extern flt_t	fpe_to_f( fpe_t );
extern void	fpe_to_fp( flt_p, fpe_p );
extern long	fpe_to_l( fpe_p );
extern u_long	fpe_to_ul( fpe_p );
extern void	l_to_fpe( fpe_p, long );
extern void	ul_to_fpe( fpe_p, u_long );
#ifdef LONGLONG
extern longer	fpe_to_ll( fpe_p );
extern u_longer	fpe_to_ull( fpe_p );
extern void	ll_to_fpe( fpe_p, longer );
extern void	ull_to_fpe( fpe_p, u_longer );
#endif

/*
 * basic operations:
 */
extern void	fpe_abs( fpe_p );
extern void	fpe_add( fpe_p, fpe_p, int );
extern int	fpe_cmp( fpe_p, fpe_p, predicate_t );
extern int	fpe_cmp0( fpe_p, predicate_t );	/* same, against 0.0 */
extern void	fpe_div( fpe_p, fpe_p, int );
extern int	fpe_frexp( fpe_p );
extern void	fpe_ldexp( fpe_p, int );
extern void	fpe_mul( fpe_p, fpe_p, int );
extern void	fpe_neg( fpe_p );
extern void	fpe_sub( fpe_p, fpe_p, int );

/*
 * auxiliary functions:
 */
extern int	fpe_oper_check( fpe_p, fpe_p );
extern void	fpe_round( fpe_p );
extern void	fpe_geninf( fpe_p );
extern void	fpe_gennan( fpe_p, int );
extern void	fpe_genzero( fpe_p );

/*
 * mantissa operations:
 */
extern int	fadc_fpm( mant_p, int );
extern int	fadd_fpm( mant_p, mant_p, int );
extern int	fclr_fpm( mant_p );
extern int	fcmp_fpm( mant_p, mant_p );
extern int	fden_fpm( mant_p, mant_p, int );
extern int	fdiv_fpm( mant_p, mant_p, mant_p );
extern int	fmul_fpm( mant_p, mant_p, mant_p );
extern int	fneg_fpm( mant_p );
extern int	fnot_fpm( mant_p );
extern int	fnrm_fpm( mant_p, mant_p );
extern u_int	frol_fpm( mant_p, u_int, int );
extern u_int	fror_fpm( mant_p, u_int, int );
extern int	fsub_fpm( mant_p, mant_p, int );
extern int	ftst_fpm( mant_p );

#ifdef __DSPC__
/* __DSPC__ means we need conversion routines from/to fixed-point as well
 * This library should be translated using the target compiler, which does
 * know about fixed point and floating point types!
 */
extern long __accum		d_to_fix( long double );
extern unsigned long __accum	d_to_ufix( long double );
extern long __accum		f_to_fix( float );
extern unsigned long __accum	f_to_ufix( float );
extern long double		fix_to_d( long __accum );
extern float			fix_to_f( long __accum );
extern long double		ufix_to_d( unsigned long __accum );
extern float			ufix_to_f( unsigned long __accum );
#endif

#endif /* not defined _LIBFPE_H_ */
