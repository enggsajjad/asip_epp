/*
 * @(#)fpe_div.c	3800.2 05/02/23
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
 * fpe divide operation -- common code
 */
void fpe_div( register fpe_p a, fpe_p b, int mar )
{
		 fpe_t		x;	/* result */
		 fpe_t		z;	/* remainder */
	register long		exp;


	if ( fpe_oper_check( a, b ) ) {	/* check & round operands */
		return;
	}
	x = *b;

	/*
	 * isolate illegal combinations (operand error):
	 * these are:  -1- inf/inf  -2- 0.0/0.0  -3- x/0.0[zdiv]
	 */
	if ( a->stat & x.stat & (INF|ZERO) ) {
		fpe_gennan( a, mar );
		return;
	}
	if ( ( x.stat & ZERO ) && ( ( a->stat & INF ) == 0 ) ) {
		a->stat ^= ( x.stat & NEG );
		fpe_geninf( a );
		return;
	}

	/*
	 * obvious results (with some handcrafting to ..):
	 */
	if ( a->stat & (ZERO|INF) ) {
		a->stat ^= ( x.stat & NEG );
		return;
	}
	if ( x.stat & (ZERO|INF) ) {
		x.stat ^= ( a->stat & NEG );
		x.stat ^= ( ZERO|INF );
		x.exp = x.stat & INF ? REMAX : REMIN;
		*a = x;		/* a->mant == 0 */
		return;
	}

	/*
	 * apply operation
	 *
	 * since the mantissa's div operation cannot handle denormalized
	 * values, ensure to normalize mantissas beforehand.
	 */

	a->stat ^= ( x.stat & NEG );
	a->stat &= ( VALID|NEG );
	if ( ( exp = (long)a->exp ) == 0 ) {
		fclr_fpm( z.mant );
		exp -= fnrm_fpm( a->mant, z.mant );
	}
	if ( x.exp == 0 ) {
		fclr_fpm( z.mant );
		exp += fnrm_fpm( x.mant, z.mant );
	}
	exp -= (long)x.exp;
	exp += EBIAS;
	exp -= (long)fdiv_fpm( a->mant, z.mant, x.mant );

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
