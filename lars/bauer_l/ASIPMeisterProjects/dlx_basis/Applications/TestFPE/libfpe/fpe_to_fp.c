/*
 * @(#)fpe_to_fp.c	3800.2 05/02/23
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
 * fpe_t to unsigned long
 *
 * FASTFLOAT: see incl/libfpe.h
 */
void
fpe_to_fp( flt_t * op, fpe_p o )
{
#if FASTFLOAT
	carrier_t	zap;	/* return value */

	long		ebias;	/* bias for exponent */
	long		emin;	/* minimum exp value */
	long		remin;	/* biased minimum exp value */
	long		emax;	/* maximum exp value */
	long		remax;	/* biased maximum exp value */

	carrier_t	allmbits;
	int		tie;
	carrier_t	bit;
	int		shift;
	long		exp;
	int		n;


	/*
	 * create from description some more descriptive values:
	 *
	 * Of the mantissa part the msb is assumed to be the `integer' bit;
	 * all others are `fractional' bits.  This means that the (floating)
	 * point lies directly inbetween the integer bit and the ms
	 * fractional bit.
	 */

	ebias = (long)(BIT(SG_EBITS-1)-1);
	emin  = (long)(1 - ebias);
	remin = (long)(ebias + emin);
	emax  = (long)(ebias + 1);
	remax = (long)(ebias + emax);

	zap = 0;	/* init result clear */

	if ((o->stat & (NAN|SIG)) == 0) {
		if (o->stat & INF) {
			exp = remax;
			shift = -1;
		} else if (o->stat & ZERO) {
			exp = 0;
			shift = -1;
		} else {
			shift = SG_MBITS + 1;
			exp = (long)(o->exp - EBIAS + ebias);
			if (exp >= remax) {
				exp = remax;
				shift = -1;
			} else if (exp < remin) {
				shift -= (int)(remin - exp);
				exp = (long)(remin - 1);
			}
		}
	} else {
		shift = SG_MBITS + 1;
		exp = remax;
	}

	/*
	 * exp == the (preliminary) value for the result,
	 * shift == no of mantissa bits to take from `o' (if positive).
	 */

	allmbits = 0;

	/*
	 * copy the mantissa bits; 
	 */
	while (shift > 0) {
		if ((n = MPBITS) > _BPC) {
			n = _BPC;
		}
		if (n > shift) {
			n = shift;
		}
		bit = (carrier_t)frol_fpm(o->mant, 0, n);
		allmbits |= bit;
		zap = (carrier_t)((zap << n) | bit);
		shift -= n;
	}

	/*
	 * adjust mantissa; apply rounding as required:
	 */

	tie = 0;

	if (o->stat & (SIG|NAN)) {
		if (allmbits == 0) {
			/*
			 * A (possibly) Signalling NaN gained no bits in its
			 * mantissa; this would transform the NaN to Infinity.
			 * Avoid this by raising the NaN's sticky bit.
			 */
			shift = SG_MBITS - 2;
			zap |= (carrier_t)BIT(shift);
		}
	} else {					/* apply rounding */
		bit = 0;
		n = 0;

		if ((o->stat & (ZERO|INF)) == 0) {
			if (shift == 0) {
				bit = (carrier_t)frol_fpm( o->mant, 0, 1 );
			}
			n = ftst_fpm( o->mant );
			if ((o->stat & EXACT) == 0) {
				n |= (int)(o->stat & (GRD|RND|STY));
			}
		}

		if ((o->stat & (ZERO|INF)) == 0) {
			if (bit && !n) {
				tie = 1;	/* tie case */
				bit = zap & 1;
			}
		} else {
			bit = 0;
		}

		if (bit != 0) {		/* roundup */
			zap += bit;
		}
	}

	/*
	 * The mantissa is there, maybe rounded.
	 *
	 * Note that the rounding may have asserted a bit beyond capacity.
	 * In this case all bits carried, and all but the first are zero.
	 * If so, the exponent must go up, and this may cause OVF again.
	 */

	bit = (carrier_t)BIT(1+SG_MBITS);
	if (zap & bit) {	/* carry because of rounding! */
		exp++;
		if (exp == remax) {		/* OVF again... */
			if (tie != 0) {
				--exp;	/* .. (re-)create maximum value */
				zap -= 1;
			}
		} else {
			zap >>= 1;
		}
	}

	/*
	 * The mantissa is now correct, and so is the exponent.
	 * Store the exponent, after hiding the hidden bit..
	 */

	if (exp != 0) {			/* zap hidden bit */
		zap &= (carrier_t)(BIT(SG_MBITS)-1);
	}
	zap |= (carrier_t)(exp << SG_MBITS);
	/*
	 * Okay.  Left to do is the sign.
	 */
	if (o->stat & NEG) {
		zap |= (carrier_t)BIT(SG_EBITS+SG_MBITS);
	}

	*op = (u_long)zap;
#else
# ifndef flt_t
	fpe_to_ef( op->s, &fltdescr, o );
# else
	fpe_to_ef( op, &fltdescr, o );
# endif
#endif
}
