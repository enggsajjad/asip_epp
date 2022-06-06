/*
 * @(#)fpe_to_ef.c	3800.2 05/02/23
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
 * central to-external-float converter.
 *
 * Should the SigNaN lose all mantissa bits, the second most significant
 * fractional bit is asserted (SigNaN sticky bit).
 *
 * If hidden bit technique is not used, this is signalled by having a
 * negated d_tsize member in the descriptor..
 */
void fpe_to_ef( register car_p fp, register const fdt_p dp, fpe_p o )
{
		 long		ebias;	/* bias for exponent */
		 long		emin;	/* minimum exp value */
		 long		remin;	/* biased minimum exp value */
		 long		emax;	/* maximum exp value */
		 long		remax;	/* biased maximum exp value */

		 carrier_t	allmbits;
		 int		tie;
	register carrier_t	bit;
	register carrier_t	n_m;
	register int		shift;
	register long		exp;
	register int		n;
	register int		i;
		 int		maxrolcnt;
		 int		tsize;	/* no. of carrier_t elements */
		 int		hidden;	/* whether `integer' bit is.. */


	/*
	 * create from description some more descriptive values:
	 *
	 * Of the mantissa part the msb is assumed to be the `integer' bit;
	 * all others are `fractional' bits.  This means that the (floating)
	 * point lies directly inbetween the integer bit and the ms
	 * fractional bit.
	 */

	ebias = (long)(BIT(dp->d_ebits-1)-1);
	emin  = (long)(1 - ebias);
	remin = (long)(ebias + emin);
	emax  = (long)(ebias + 1);
	remax = (long)(ebias + emax);
	hidden = 1;		/* default: `integer' bit is hidden */
	if ( ( tsize = dp->d_tsize ) < 0 ) {
		tsize = -tsize;
		hidden = 0;		/* `integer' bit is exposed */
	}

	for ( i = 0; i < tsize; i++ ) {
		fp/*[dp->d_model*/[i]/*]*/ = 0;	/* init result clear */
	}

	if ( ( o->stat & (NAN|SIG) ) == 0 ) {
		if ( o->stat & INF ) {
			exp = remax;
			shift = -1;
		} else if ( o->stat & ZERO ) {
			exp = 0;
			shift = -1;
		} else {
			shift = dp->d_mbits + hidden;
			exp = (long)( o->exp - EBIAS + ebias );
			if ( exp >= remax ) {
				exp = remax;
				shift = -1;
			} else if ( exp < remin ) {
				shift -= (int)( remin - exp );
				exp = (long)( remin - 1 );
			}
		}
	} else {
		shift = dp->d_mbits + hidden;
		exp = remax;
	}

	/*
	 * exp == the (preliminary) value for the result,
	 * shift == no of mantissa bits to take from `o' (if positive).
	 */

	allmbits = 0;
	i = tsize - 1;

	/*
	 * copy the mantissa bits; 
	 *
	 * If the external representation has more mantissa bits than fpe_t,
	 * the GRD/RND/STY bits in the status can be copied as extra least
	 * significant bits; the STY wobbles a bit, as it only indicates
	 * "more bits than available..", and won't harm the value too much.
	 */
	tie = 0;	/* .. use this to-shift in _BPC bits into mantissa */
	if ( ( maxrolcnt = MPBITS ) > _BPC ) {
		maxrolcnt = _BPC;
	}
	if ( ( ( n = ( dp->d_mbits + hidden ) - shift ) > 0 )
	  && ( ( o->stat & ( SIG|NAN|INF|ZERO|EXACT ) ) == 0 )
	   ) {
	   	if ( o->stat & GRD ) {
			tie |= ( 1 << ( maxrolcnt - 1 ) );
			--n;
			o->stat ^= GRD;
			if ( o->stat & RND ) {
				o->stat ^= ( GRD|RND );
			}
		}
		if ( ( n > 0 ) && ( o->stat & ( GRD|RND ) ) ) {
			tie |= ( 1 << ( maxrolcnt - 2 ) );
			--n;
			o->stat &= ~( GRD|RND );
		}
		if ( ( n > 0 ) && ( o->stat & STY ) ) {
			if ( ( n = maxrolcnt - 2 - n ) < 0 ) {
				n = 0;
			}
			tie |= ( 1 << n );
			o->stat ^= STY;
		}
		if ( ( o->stat & ( GRD|RND|STY ) ) == 0 ) {
			o->stat |= EXACT;
		}
	}

	while ( shift > 0 ) {
		if ( ( n = maxrolcnt ) > shift ) {
			n = shift;
		}
		bit = (carrier_t)frol_fpm( o->mant, tie, n );
		tie = 0;
		allmbits |= bit;
		do {
			n_m = fp[dp->d_model[i]];
			bit |= ( n_m << n );
			fp[dp->d_model[i]] = bit;
			n_m >>= ( _BPC - n );
			bit = n_m & ( BIT(n)-1 );	/* ensure.. */
		} while ( --i >= 0 );
		i = tsize - 1;
		shift -= n;
	}

	/*
	 * adjust mantissa; apply rounding as required:
	 */

	tie = 0;
	if ( o->stat & (SIG|NAN) ) {
		if ( allmbits == 0 ) {
			/*
			 * A (possibly) Signalling NaN gained no bits in its
			 * mantissa; this would transform the NaN to Infinity.
			 * Avoid this by raising the NaN's sticky bit.
			 */
			shift = dp->d_mbits - 2;
			while ( shift > _BPC ) {
				--i;
				shift -= _BPC;
			}
			if ( ( shift >= 0 ) && ( i >= 0 ) ) {
				fp[dp->d_model[i]] |= (carrier_t)BIT(shift);
			}
		}
	} else {					/* apply rounding */
		bit = 0;
		n = 0;

		if ( ( o->stat & (ZERO|INF) ) == 0 ) {
			if ( shift == 0 ) {
				bit = (carrier_t)frol_fpm( o->mant, 0, 1 );
			}
			n = ftst_fpm( o->mant );
			if ( ( o->stat & EXACT ) == 0 ) {
				n |= (int)( o->stat & (GRD|RND|STY) );
			}
		}

		if ( ( o->stat & (ZERO|INF) ) == 0 ) {
			if ( bit && !n ) {
				tie = 1;	/* tie case */
				bit = fp[dp->d_model[i]] & 1;
			}
		} else {
			bit = 0;
		}

		if ( bit != 0 ) {		/* roundup; mind carries */
			do {
				if ( ( fp[dp->d_model[i]] += bit ) != 0 ) {
					break;
				}
			} while ( --i >= 0 );
		}
	}

	/*
	 * The mantissa is there, maybe rounded.
	 *
	 * Note that the rounding may have asserted a bit beyond capacity.
	 * In this case all bits carried, and all but the first are zero.
	 * If so, the exponent must go up, and this may cause OVF again.
	 */

	shift = dp->d_mbits;
	i = tsize - 1;
	while ( shift >= _BPC ) {
		shift -= _BPC;		/* hop mantissa bits */
		--i;
	}

	n = i;				/* check rounding ovf */
	if ( ( bit = (carrier_t)( ( 1UL + hidden ) << shift ) ) == 0 ) {
		bit = 1;
		--n;	/* carry in next higher! */
	}

	if ( fp[dp->d_model[n]] & bit ) {	/* carry because of rounding! */
		exp++;
		if ( exp == remax ) {		/* OVF again... */
			if ( tie != 0 ) {
				--exp;	/* .. (re-)create maximum value */
				do {
					fp[dp->d_model[n]] -= 1;
				} while ( ++n < tsize );
			}
		} else if ( ( fp[dp->d_model[n]] >>= 1 ) == 0 ) {
			/*
			 * Sure lost the bit.  Set msb in next carrier_t.
			 */
			fp[dp->d_model[++n]] = ( bit <<= (_BPC-1) );
		}
	}

	/*
	 * The mantissa is now correct, and so is the exponent.
	 * Store the exponent, after hiding the hidden bit..
	 */

	if ( hidden && ( exp != 0 ) ) {		/* zap hidden bit */
		fp[dp->d_model[i]] &= (carrier_t)( BIT(shift) - 1 );
	}
	fp[dp->d_model[i]] |= (carrier_t)( exp << shift );

	shift = _BPC - shift;
	while ( shift < dp->d_ebits ) {
		--i;
		if ( shift > 0 ) {
			fp[dp->d_model[i]] = (carrier_t)( exp >> shift );
		} else if ( shift < 0 ) {
			fp[dp->d_model[i]] = (carrier_t)( exp << -shift );
		} else {
			fp[dp->d_model[i]] = (carrier_t)exp;
		}
		shift += _BPC;
	}

	/*
	 * Okay.  Left to do is the sign.
	 */
	if ( o->stat & NEG ) {
		for ( i = 0, shift = _BPC - dp->d_sbits
		    ; shift < 0
		    ; i++, shift += _BPC
		    ) {
			/*
			 * focus on the carrier_t element holding the sign bit
			 */
		};
		fp[dp->d_model[i]] |= (carrier_t)BIT(shift);
	}
}
