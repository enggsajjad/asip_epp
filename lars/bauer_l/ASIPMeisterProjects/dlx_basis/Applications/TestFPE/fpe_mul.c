/*
 * @(#)fpe_mul.c	3800.2 05/02/23
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
 * fpe multiply operation -- common code
 */
void fpe_mul( register fpe_p a, fpe_p b, int mar )
{
		 fpe_t		x;	/* result */
		 fpe_t		z;	/* remainder */
	register long		exp;


	if ( fpe_oper_check( a, b ) ) {	/* check & round operands */
		return;
	}
	x = *b;

	/*
	 * isolate illegal combinations (operand error) (i.e. 0.0 * inf):
	 */
	if ( ( (a->stat | b->stat) & (INF|ZERO) ) == (INF|ZERO) ) {
		fpe_gennan( a, mar );
		return;
	}

	/*
	 * obvious results:
	 */
	if ( a->stat & (ZERO|INF) ) {
		a->stat ^= ( x.stat & NEG );
		return;
	}
	if ( x.stat & (ZERO|INF) ) {
		x.stat ^= ( a->stat & NEG );
		*a = x;
		return;
	}

	/*
	 * apply operation. denormalised values are Okay for fmul..
	 */

	a->stat ^= ( x.stat & NEG );
	a->stat &= ( VALID|NEG );
	exp = (long) a->exp;
	exp += (long) x.exp;
	exp -= ( EBIAS - 1 );
	exp -= (long) fmul_fpm( a->mant, z.mant, x.mant );

	if ( exp >= REMAX ) {
		fpe_geninf( a );
		return;
	}
	if ( exp < 0 ) {
		if ( ( exp = -exp ) > MBITS ) {
			fpe_genzero( a );
			return;
		}
		z.mant[0] |= fden_fpm( a->mant, z.mant, exp );
		a->exp = 0;
	} else {
		a->exp = (exp_t) exp;
	}

	/*
	 * Evaluate GRD, RND and STY or EXACT from z.mant.
	 */
	exp = frol_fpm( z.mant, 0, 3 );
	if ( ( exp |= ftst_fpm( z.mant ) ) == 0 ) {
		a->stat |= EXACT;
	} else {
		if ( exp & BIT(2) ) {
			a->stat |= GRD;
		}
		if ( exp & BIT(1) ) {
			a->stat |= RND;
		}
		if ( exp & BIT(0) ) {
			a->stat |= STY;
		}
	}
}
