/*
 * @(#)fp_to_fpe.c	3800.2 05/02/23
 * 
 * COPYRIGHT NOTICE (NOT TO BE REMOVED):
 * 
 * This file, or parts of it, or modified versions of it, may not be copied,
 * reproduced or transmitted in any form, including reprinting, translation,
 * photocopying or microfilming, or by any means, electronic, mechanical or
 * otherwise, or stored in a retrieval system, or used for any purpose, without
 * the prior written permission of all Owners unless it is explicitly marked as
 * having Classification `Public'.
 *   Distribution: Run-Time Module, Object.
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

#include "libfpe.h"


/*
 * From float (coersed to unsigned long) to fpe_t 
 *
 * FASTFLOAT: see incl/libfpe.h
 */
void
fp_to_fpe( fpe_p o, const flt_t * in )
{
#if FASTFLOAT
	fpe_t		z;		/* scratch */

	exp_t		emask;
	exp_t		ebias;
	exp_t		remax;

	carrier_t	conv;
	exp_t		exp;
	int		n;

	/*
	 * create from description some more descriptive values:
	 *
	 * Of the mantissa part the msb is assumed to be the `integer' bit;
	 * all others are `fractional' bits.  This means that the (floating)
	 * point lies directly inbetween the integer bit and the ms
	 * fractional bit.
	 */

	emask = remax = (exp_t)( BIT(SG_EBITS  ) - 1);
	ebias =         (exp_t)( BIT(SG_EBITS-1) - 1);


	o->stat = VALID | EXACT;		/* init output */
	(void) fclr_fpm( o->mant );

	conv = (carrier_t) (*in);

	/*
	 * copy mantissa part; done in barrels to speedup things..
	 *
	 * WARNING: this may work, but strongly depends on MPBITS...
	 */

	if ( ( n = MPBITS ) >= SG_MBITS ) {
		n = SG_MBITS;
		(void) fror_fpm(o->mant, (u_int)conv, n);
		conv >>= n;
	} else {
		(void) fror_fpm(o->mant, (u_int)conv, n);
		conv >>= n;
		n = SG_MBITS - MPBITS;
		(void) fror_fpm(o->mant, (u_int)conv, n);
		conv >>= n;
	}

	/*
	 * construct (i.e. gather) exponent bits in `exp':
	 */

	exp = (exp_t) conv;
	exp &= emask;

	/*
	 * shift in hidden bit if the exp is in range, i.e. remax > exp > 0.
	 *
	 * If the exp == remax for this implementation, the non-hidden
	 * integer-bit is junked (replaced with zero).  If the resulting
	 * mantissa is all zeroes the value is Infinity, (Signalling)
	 * NaN otherwise.  Lost mantissa bits are replaced with NaN-sticky
	 * to avoid converting NaN into infinity pattern.
	 *
	 * If the mantissa is all zeroes in the case of no hidden-bit
	 * technique, void the exp value, and supply zero result.
	 * Else adjust exp by normalizing (to account for possibly
	 * denormalized input), and re-bias to fpe_t.
	 */

	if (exp == remax) {	/* nan &/| infinity */

		(void)fror_fpm( o->mant, 0, 1 );

		exp = REMAX;
		if (ftst_fpm( o->mant ) == 0) {
			o->stat |= INF;
		} else {
			o->stat |= NAN;
			n = (int)frol_fpm(o->mant, 0, 2);
			(void) fror_fpm( o->mant, (u_int)n, 2);
			if ((n&1) == 0) {
				o->stat |= SIG;
			}
		}
		o->stat |= EXACT;
	} else {
		if (exp != 0) {
			exp += (exp_t)(EBIAS - ebias);
			(void) fror_fpm( o->mant, 1, 1 );
		} else if (ftst_fpm(o->mant)==0) {
			exp = (exp_t)REMIN;
			o->stat |= ZERO|EXACT;
		} else {
			(void) fclr_fpm( z.mant );
			exp -= (exp_t)fnrm_fpm( o->mant, z.mant );
			exp += (exp_t)(EBIAS - ebias);
		}
	}
	o->exp = exp;
	if ((long)(*in) & BIT(SG_EBITS+SG_MBITS)) {
		o->stat |= NEG;
	}
#else
# ifndef flt_t
	ef_to_fpe( o, in->s, &fltdescr );
# else
	ef_to_fpe( o, in, &fltdescr );
# endif
#endif
}
