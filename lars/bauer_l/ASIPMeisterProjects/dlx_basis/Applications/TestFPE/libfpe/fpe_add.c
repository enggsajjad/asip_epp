/*
 * @(#)fpe_add.c	3800.2 05/02/23
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


STATIC void fpe_addsub( register fpe_p a, register fpe_p b, int mar )
{
		 fpe_t		x;	/* result */
		 fpe_t		z;	/* remainder */

	register int		ediff;	/* difference between op's exps */
	register int		sticky;	/* various usage; see below */

	/*
	 * isolate illegal combinations (operand error):
	 */
	if ( (a->stat & b->stat & INF ) && ( (a->stat ^ b->stat) & NEG ) ) {
		fpe_gennan( a, mar );
		return;
	}

	/*
	 * obvious results:
	 */
	if ( a->stat & INF ) {
		return;
	}
	if ( b->stat & INF ) {
		*a = *b;
		return;
	}

	/*
	 * sort operands (i.e select |x| to get larger than |y|, unless equal):
	 */
	ediff  = (int)a->exp;		/* PN: exp member uses only 15 bits */
	ediff -= (int)b->exp;
	if ( ediff >= 0 ) {
		if ( ediff == 0 ) {
			if ( fcmp_fpm( a->mant, b->mant ) >= 0 ) {
				x = *b;
			} else {
				x = *a; *a = *b;
			}
		} else {
				x = *b;
		}
	} else {
		ediff = -ediff; x = *a; *a = *b;
	}
	b = &x;
	
	/*
	 * we now have:  |a| >= |a|, ediff >= 0.  Thus, sign(a) is Okay,
	 * unless a == -b, in which case sign(a) is forced positive.
	 */
	a->stat &= (VALID|NEG);
	sticky = fden_fpm( b->mant, z.mant, ediff );

	if ( ( a->stat ^ b->stat ) & NEG ) {
		if ( sticky != 0 ) {
			(void) fnot_fpm( z.mant );
		} else {
			(void) fneg_fpm( z.mant );
		}
		(void) fsub_fpm( a->mant, b->mant, ftst_fpm( z.mant ) );

		if ( ( sticky = fnrm_fpm( a->mant, z.mant ) ) > 0 ) {
			if ( ( a->exp -= (exp_t)sticky ) > REMAX ) {	/*UFL*/
				a->exp += (exp_t)sticky;
				sticky -= (int)a->exp;
				if ( sticky > MBITS ) {		/* SHOULDNOT */
					fpe_genzero( a );
					return;	/* catastrophic UFL: [-]0.0 */
				}
				(void) fden_fpm( a->mant, z.mant, sticky );
				a->exp = REMIN;
			}
		} else if ( sticky < 0 ) {
			/*
			 * a == -b, so result is 0.0.  Deliver +0.0.
			 */
			a->stat = 0;
			fpe_genzero( a );
			return;
		}
	} else {
		if ( fadd_fpm( a->mant, b->mant, 0 ) ) {
			(void) fror_fpm( z.mant, fror_fpm(a->mant,1,1), 1 );
			if ( ++a->exp == REMAX ) {	/*OVF*/
				fpe_geninf( a );
				return;			/* [-]inf */
			}
		}
		z.mant[0] |= sticky;
	}

	/*
	 * From z.mant, evaluate EXACT, or GRD/RND/STY bits.
	 */
	sticky = frol_fpm( z.mant, 0, 3 );
	if ( ( sticky |= ftst_fpm( z.mant ) ) == 0 ) {
		a->stat |= EXACT;
	} else {
		if ( sticky & BIT(2) ) {
			a->stat |= GRD;
		}
		if ( sticky & BIT(1) ) {
			a->stat |= RND;
		}
		if ( sticky & BIT(0) ) {
			a->stat |= STY;
		}
	}
}


void fpe_add( register fpe_p a, register fpe_p b, int mar )
{
	if ( fpe_oper_check( a, b ) ) {
		return;
	}
	fpe_addsub( a, b, mar );
}


void fpe_sub( register fpe_p a, register fpe_p b, int mar )
{
	if ( fpe_oper_check( a, b ) ) {
		return;
	}
	b->stat ^= NEG;
	fpe_addsub( a, b, mar );
	b->stat ^= NEG;
}
