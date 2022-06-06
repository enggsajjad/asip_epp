/*
 * @(#)fpe_mant.c	3800.2 05/02/23
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
 *   (c) Copyright 1995-1999,2001,2002 ACE Associated Computer Experts bv
 *   (c) Copyright 1996-1999,2001,2002 ACE Associated Compiler Experts bv
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
 * The `mantissa machine':
 *
 * This file defines various CPU-like mantissa instructions.
 */


/*
 * Perform local fmove_mantissa. To be unrolled and inlined.
 */
static void
copy_into(mant_t *dst, const mant_t *src)
{
	int	i;

	for (i = 0; i < MSIZE; i++) {
		dst[i] = src[i];
	}
}

/*
 * Shift right (towards lesser significance) the mantissa.  Bits that
 * become unoccupied are set with bits of extend, while the bits
 * shifted out are returned as function value.
 *
 * Valid cnt values are from 1 to (and including) MPBITS.  `xtend' is
 * echoed otherwise.
 */
u_int  fror_fpm(register mant_p  mp, u_int  xtend, register int   count)
{
	register u_long		extend = (u_long)xtend;
	register u_long		mpart;
	register int		i;

	if ((count > 0) && (count <= MPBITS)) {
		i = MSIZE;
		do {
			extend <<= MPBITS;
			mpart = (u_long)(*mp);
			extend |= mpart;
			*mp++ = (mant_t)(extend >> count);
		} while (--i > 0);

		extend &= (u_long)(BIT(count)-1);
	}
	return (u_int)extend;
}


/*
 * Shift left (towards more significance) the mantissa.  Bits that
 * become unoccupied are set with bits of extend, while the bits
 * shifted out are returned as function value.
 *
 * Valid cnt values are from 1 to (and including) MPBITS. `xtend'
 * is echoed otherwise.
 */
u_int  frol_fpm(register mant_p  mp, u_int  xtend, register int   count)
{
	register u_long		extend = (u_long)xtend;
	register u_long		mpart;
	register int		i;

	if ((count > 0) && (count <= MPBITS)) {
		i = MSIZE;
		extend &= (u_long)(BIT(count)-1);

		mp += MSIZE;
		do {
			mpart = (u_long)(*--mp);
			mpart <<= count;
			extend |= mpart;
			*mp = (mant_t)extend;
			extend >>= MPBITS;
		} while (--i > 0);
	}
	return (u_int)extend;
}


/*
 * bitwise negate all bits of the mantissa. Return value is one (1).
 */
int  fnot_fpm(register mant_p   mp)
{
	register int		i = MSIZE;

	do {
		*mp++ ^= ~0;
	} while (--i > 0);

	return 1;
}


/*
 * clear mantissa.  Return value is zero (0).
 */
int  fclr_fpm(register mant_p   mp)
{
	register int		i = MSIZE;

	do {
		*mp++ = 0;
	} while (--i > 0);

	return 0;
}


/*
 * add carry to mantissa.  Return value of 1 indicates overflow
 */
int  fadc_fpm(register mant_p  mp, int   carry)
{
	register int		i;
	register u_long		extend = (u_long)(carry & BIT(0));

	if (extend != 0) {
		i = MSIZE;
		mp += MSIZE;
		do {
			extend += (u_long)(*--mp);
			*mp = (mant_t)extend;
			extend >>= MPBITS;
		} while (--i > 0);
	}

	return (int)extend;
}


/*
 * arithmetically negate mantissa.  Return value of 1 indicates ovf.
 */
int  fneg_fpm(mant_p   mp)
{
	return fadc_fpm( mp, fnot_fpm( mp ) );
}


/*
 * Return 1 for mantissa not equal to zero, 0 otherwise.
 */
int  ftst_fpm(register mant_p   mp)
{
	register int		i = MSIZE;

	do {
		if (*mp++ != 0) {
			return 1;
		}
	} while (--i > 0);

	return 0;
}


/*
 * fcmp: return neg, 0 or pos if resp. a smaller, equal to or larger than b.
 */
int  fcmp_fpm(register mant_p  ma, register mant_p   mb)
{
	register int		i = MSIZE;

	do {
		if (*ma++ != *mb++) {
			if (*--ma < *--mb) {
				i = -i;
			}
			break;
		}
	} while (--i > 0);

	return i;
}


/*
 * Denormalize ``a'' cnt positions.  Shifted out bits are stored in rem. 
 *
 *  Return value is `sticky' (i.e. 1) for bits fallen off `rem'.
 */
int  fden_fpm(register mant_p  am, register mant_p  remm, register int   cnt)
{
	register u_long		sticky = 0;

	if (cnt >= MBITS) {
		copy_into( remm, am );
		(void) fclr_fpm( am );
		if ((cnt -= MBITS) >= MBITS) {
			sticky = (u_long) ftst_fpm( remm );
			(void) fclr_fpm( remm );
			return (int)sticky;
		}
		while (cnt >= MPBITS) {
			sticky |= (u_long)fror_fpm( remm, 0, MPBITS );
			cnt -= MPBITS;
		}
		sticky |= (u_long)fror_fpm( remm, 0, cnt );
		return sticky ? 1 : 0;
	}

	(void) fclr_fpm( remm );
	while (cnt >= MPBITS) {
		(void)fror_fpm( remm, fror_fpm(am,0,MPBITS), MPBITS );
		cnt -= MPBITS;
	}
	if (cnt > 0) {
		(void) fror_fpm( remm, fror_fpm(am,0,cnt), cnt );
	}

	return 0;
}


/*
 * Normalize a.  Bits in a that become unoccupied are filled with (ms) bits
 * of e (extend).  Bits that become unoccupied in e are set to zero.
 *
 * Return value is -1 iff all bits are zero (no normalization possible),
 * shift count otherwise.
 */
int  fnrm_fpm(register mant_p  am, register mant_p   ep)
{
	register int		cnt = 0;
	register int		ac = MPBITS;

	do {
		register mant_t		mask = (mant_t)((~0)<<(MPBITS-ac));

		while ((*am & mask) == 0) {
			(void) frol_fpm( am, frol_fpm(ep,0,ac), ac );
			if ((cnt += ac) >= 2*MBITS) {
				return -1;
			}
		}
	} while ((ac >>= 1) != 0);

	return cnt;
}


/*
 * add mantissa b to a.  Return value of 1 indicates ovf.
 */
int  fadd_fpm(register mant_p  am, register mant_p  bm, int   xtend)
{
	register u_long		extend = (u_long)(xtend & BIT(0));
	register int		i = MSIZE;

	am += MSIZE;
	bm += MSIZE;
	do {
		extend += (u_long)(*--am);
		extend += (u_long)(*--bm);
		*am = (mant_t)extend;
		extend >>= MPBITS;
	} while (--i > 0);

	return (int)extend;
}


/*
 * subtract mantissa b from a.  Return value of -1 indicates borrow.
 */
int  fsub_fpm(register mant_p  am, register mant_p  bm, int   xtend)
{
	register long		extend;
	register int		i = MSIZE;

	extend = (long)(xtend ? -1 : 0);
	am += MSIZE;
	bm += MSIZE;
	do {
		extend += (long)(*--am);
		extend -= (long)(*--bm);
		*am = (mant_t)extend;
		extend >>= MPBITS;
		/*
		 * ImplDep: ensure correct sign after right shift:
		 */
		if (extend & BIT(_BPL-MPBITS-1)) {
			extend |= -BIT(_BPL-MPBITS-1);
		}
	} while (--i > 0);

	return (int)extend;
}


/*
 * multiply mantissa a with b. Normalize a.  Remaining bits of product
 * are stored in remainder for rounding purposes.
 *
 *  Return value is -1 for zero result, normalize shift count otherwise.
 */
int  fmul_fpm(register mant_p  am, mant_p  rm, register mant_p   bm)
{
		 mant_t		temp[2*MSIZE];
	register mant_p		tp = &temp[0];
	register mant_p		xp = tp;

	register int		i;
	register int		j;
	register mant_t		b;
	register u_long		mul;

	for (i = 2*MSIZE; --i >= 0; ) {
		*xp++ = 0;
	}

	j = MSIZE;
	do {
		if ((b = bm[--j]) == 0) {
			continue;
		}
		i = MSIZE;
		do {
			xp = &tp[j + i];
			if ((mul = (u_long)am[--i]) == 0) {
				continue;
			}
			mul *= (u_long)b;
			do {
				mul += (u_long)(*xp);
				*xp = (mant_t)mul;
			} while ((mul >>= MPBITS) && (--xp >= tp));
		} while (i > 0);
	} while (j > 0);

	copy_into( am, tp );
	copy_into( rm, &tp[MSIZE] );

	return fnrm_fpm( am, rm );
}


/*
 * The fdiv_fpm implementation needs enlarged add & sub functions:
 */

#define EMSZ	(1+MSIZE)

STATIC int  __addd(register mant_p  am, register mant_p   bm)
{
	register u_long		extend = 0;
	register int		i = EMSZ;

	am += EMSZ;
	bm += EMSZ;
	do {
		extend += (u_long)(*--am);
		extend += (u_long)(*--bm);
		*am = (mant_t)extend;
		extend >>= MPBITS;
	} while (--i > 0);

	return (int)extend;	/* carry */
}

STATIC int  __subd(register mant_p  am, register mant_p   bm)
{
	register long		extend = 0;
	register int		i = EMSZ;

	am += EMSZ;
	bm += EMSZ;
	do {
		extend += (long)(*--am);
		extend -= (long)(*--bm);
		*am = (mant_t)extend;
		extend >>= MPBITS;
		/*
		 * ImplDep: ensure correct sign after right shift:
		 */
		if (extend & BIT(_BPL-MPBITS-1)) {
			extend |= -BIT(_BPL-MPBITS-1);
		}
	} while (--i > 0);

	return (int)extend;	/* borrow */
}


/*
 * divide mantissa a by b.  Normalize a.  A ``remainder'' is stored in rm.
 *
 *  Return value -2 indicates zero divide, -1 zero result, (non negative)
 *  normalize shift count otherwise.
 *
 *  The remainder is ``weird''.  We will evaluate a quotient that is up to
 *  MPBITS larger than required, where the excess bits are stored in the
 *  most significant bits of the remainder.  The rest of these bits receive
 *  bits copied from what is left over in the dividend after operation;
 *  these bits can only be used to re-evaluate the STY bit of the result..
 */
int  fdiv_fpm(mant_p  am, mant_p  rm, register mant_p   bm)
{
		 mant_t		upper[2*EMSZ];	/* dividend; remainder at end */
		 mant_t		lower[EMSZ];	/* divisor */

		 mant_t		quotient[EMSZ];
		 mant_t		temp[EMSZ];

	register mant_p		up;
	register mant_p		qp;
	register mant_p		tp;

	register int		j;
	register int		nqp;
	register mant_t		digit;
	register mant_t		dvsr;
	register u_long		carry;
	register u_long		dsr;

	/*
	 * set up dividend; shift right one position for internal purposes..
	 */
	up = &upper[0];
	copy_into( up, am );
	for ( tp = &up[MSIZE], j = (2*EMSZ)-MSIZE; --j >= 0; ) {
		*tp++ = 0;
	}
	(void) fror_fpm( &up[MSIZE], fror_fpm(up,0,1), 1 );

	/*
	 * set up divisor adjusted, so that it can be used for various purposes:
	 */
	tp = &lower[0];
	*tp++ = 0;
	copy_into( tp, bm );
	bm = &lower[0];		/* thanks; now reuse pointer */

	/*
	 * ``remember'' m.s.d. of divisor: we must have normalized input!:
	 */
	if ((dvsr = tp[0]) == 0) {
		return -2;		/* signal division by zero */
	}

	qp = &quotient[0];
	tp = &temp[0];

	/*
	 * division is easy now; Daddy told us long ago:
	 */

	for ( nqp = 0; nqp < EMSZ; up++, nqp++ ) {

		/*
		 * ``guess'' the next ``digit'' of the quotient:
		 */

		if ((digit = up[0]) >= dvsr) {
			digit = (mant_t) ~0;		/* max */
		} else {
			carry   = (u_long)digit;
			carry <<= MPBITS;
			carry  |= (u_long)up[1];
			if (carry != 0) {
				carry /= dvsr;
			}
			if ((digit = (mant_t)carry) == 0) {
				qp[nqp] = digit;
				continue;
			}
		}

		/*
		 * make `tp' something we can subtract from dividend:
		 */

		for ( carry = 0, j = EMSZ; --j >= 0; ) {
			if ((dsr = (u_long)bm[j]) != 0) {
				dsr *= digit;
				carry += dsr;
			}
			tp[j] = (mant_t)carry;
			carry >>= MPBITS;
		}

		/*
		 * subtract. if this gives borrow, reduce tryout divisor,
		 * until the borrow comes back as carry.
		 */

		if ( __subd(up, tp) ) {
			do {
				--digit;
			} while ( __addd(up, bm) == 0 );
		}

		qp[nqp] = digit;	/* okay */
	}

	/*
	 * divide done.
	 *
	 * We have EMSZ (== MSIZE + 1) mantissa parts in qp.
	 * Copy the first to am (the result), the rest to rm.
	 * By copying the ``remainder'' to the rest of the rm parts,
	 * and raising least signficant bits if more bits remain,
	 * we set up rm for rounding purposes.
	 */
	copy_into( am, qp );

	tp = rm; *tp++ = qp[MSIZE];	/* last part evaluated quotient */

	for (j = MSIZE; --j > 0; ) {
		*tp++ = *up++;		/* rm gets rest of remainder .. */
	}
	while (up < &upper[2*EMSZ]) {
		tp[-1] |= *up++;	/* .. & STY for tail of remainder */
	}

	return fnrm_fpm( am, rm );	/* last action.. */
}
