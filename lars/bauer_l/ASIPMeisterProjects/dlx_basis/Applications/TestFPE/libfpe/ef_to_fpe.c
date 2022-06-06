/*
 * @(#)ef_to_fpe.c	3800.2 05/02/23
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
 *   (c) Copyright 1995-1998,2002 ACE Associated Computer Experts bv
 *   (c) Copyright 1996-1998,2002 ACE Associated Compiler Experts bv
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
 * from `external' float to fpe_t -- common code
 *
 * Although normally not to be expected this code has been written to
 * deal with external representations that have more bits than fpe_t.
 */
void
ef_to_fpe(fpe_p o, const car_p fp, const fdt_p dp)
{
		 fpe_t		z;		/* scratch */

		 int		mbits;
		 int		epmbits;

		 long		emask;
		 long		ebias;
		 long		remax;

	register carrier_t	conv;
	register int		shift;
	register int		sbits;
	register long		exp;
	register int		n;
	register int		i;
		 int		tsize;
		 int		hidden;

	/*
	 * create from description some more descriptive values:
	 *
	 * Of the mantissa part the msb is assumed to be the `integer' bit;
	 * all others are `fractional' bits.  This means that the (floating)
	 * point lies directly inbetween the integer bit and the ms
	 * fractional bit.
	 */

	mbits   = dp->d_mbits;
	epmbits = dp->d_ebits + mbits;
	emask   = remax = ( BIT(dp->d_ebits  ) - 1);
	ebias   =         ( BIT(dp->d_ebits-1) - 1);
	hidden  = 1;
	if ( ( tsize = dp->d_tsize ) < 0 ) {
		tsize = -tsize;
		hidden = 0;	/* technique not used .. */
	}

	o->stat = VALID;			/* init output */
	(void) fclr_fpm( o->mant );
	(void) fclr_fpm( z.mant );
	for ( i = 0, n = _BPC - dp->d_sbits; n < 0; i++, n += _BPC ) {
		/*
		 * focus on carrier_t element holding the sign bit
		 */
	};
	if ( fp[dp->d_model[i]] & BIT(n) ) {
		o->stat |= NEG;
	}


	i = tsize;
	sbits = 0;
	exp = 0;

	while ( ( --i >= 0 ) && ( sbits < epmbits ) ) {
		conv = fp[dp->d_model[i]];
		shift = _BPC;

		/*
		 * copy mantissa part; done in barrels to speedup things..
		 */

		while ( ( shift > 0 ) && ( sbits < mbits ) ) {
			if ( ( n = MPBITS ) > shift ) {
				n = shift;
			}
			if ( n > ( mbits - sbits ) ) {
				n = mbits - sbits;
			}
			(void)fror_fpm( z.mant,
				fror_fpm( o->mant, (u_int)conv, n ), n );
			sbits += n;
			conv >>= n;
			shift -= n;
		}

		/*
		 * construct (i.e. gather) exponent bits in `exp':
		 */

		if ( sbits >= mbits ) {
			exp |= ( ((long) conv) << ( sbits - mbits ) );
			if ( ( sbits + shift ) > epmbits ) {
				shift = epmbits - sbits;
			}
			sbits += shift;
		}
	}

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
	 * denormalized input), and re-bias to fpe_t.  Lost mantissa bits
	 * are translated into GRD/RND/STY status bits; EXACT otherwise.
	 */

	if ( exp == remax ) {	/* nan &/| infinity */
		if ( hidden ) {
			/*
			 * although exp non-zero, unhide the hidden bit as a 0:
			 */
			(void)fror_fpm( z.mant, fror_fpm( o->mant, 0, 1 ), 1 );
		} else {
			/*
			 * ensure the don't care integer bit to be 0:
			 */
			(void)fror_fpm( o->mant, frol_fpm( o->mant, 0, 1 ), 1 );
		}
		if ( ( ( n = ftst_fpm( o->mant ) ) == 0 )
		  && ( ftst_fpm( z.mant ) == 0 )
		   ) {
			o->stat |= INF;
		} else {
			o->stat |= NAN;
			if ( n == 0 ) {
				/*
				 * lost all non-zero bits because fpe_t has
				 * too few mantissa bits; raise NaN-sticky.
				 */
				(void) fror_fpm( o->mant, 1, 3 );
			}
			n = (int)frol_fpm( o->mant, 0, 2 );
			(void) fror_fpm( o->mant, (u_int)n, 2 );
			if ( (n&1) == 0 ) {
				o->stat |= SIG;
			}
		}
		exp = REMAX;
		o->stat |= EXACT;
	} else {
		if ( ( exp != 0 ) && ( hidden != 0 ) ) {
			exp += ( EBIAS - ebias );
			(void)fror_fpm( z.mant, fror_fpm( o->mant, 1, 1 ), 1 );
		} else if ( ( ftst_fpm( o->mant ) == 0 )
			 && ( ftst_fpm( z.mant ) == 0 )
			  ) {
			exp = REMIN;
			o->stat |= ZERO|EXACT;
		} else {
			exp += ( EBIAS - ebias );
			while ( ( exp > REMIN )
			     && ( ( o->mant[0] & BIT(MPBITS-1) ) == 0 )
			      ) {
				n = frol_fpm( z.mant, 0, 1 );
				(void) frol_fpm( o->mant, n, 1 );
				--exp;
			}
		}
	}
	o->exp = (exp_t) exp;


	/*
	 * if mantissa bits were lost because of lack of space in fpe_t:
	 */
	if ( ( o->stat & EXACT ) == 0 ) {
		n = (int)frol_fpm( z.mant, 0, 3 );
		if ( ( n |= ftst_fpm( z.mant ) ) == 0 ) {
			o->stat |= EXACT;
		} else {
			if (n&4) {
				o->stat |= GRD;
			}
			if (n&2) {
				o->stat |= RND;
			}
			if (n&1) {
				o->stat |= STY;
			}
		}
	}
}
