/*
 * @(#)fpe_ldexp.c	3800.2 05/02/23
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
 * add the exp value to the exponent part of the fpe_t, if allowed..
 *
 * Since the operation is inherently only affecting the exponent
 * part of the floating point value, no rounding is done for its
 * operand, since this (mainly) affects the mantissa.
 */
void fpe_ldexp( register fpe_p o, int exp_add )
{
	register int		exp;
		 fpe_t		z;


	fpe_round( o );
	/*
	 * if the operation is not permitted, or exp == 0, just return:
	 */
	if ( ( o->stat & (INF|SIG|NAN|ZERO) ) || ( exp_add == 0 ) ) {
		return;
	}

	if ( ( exp = (int)o->exp ) == 0 ) {
		fclr_fpm( z.mant );
		exp -= fnrm_fpm( o->mant, z.mant );
	}
	if ( ( exp += exp_add ) > REMAX ) {
		fpe_geninf( o );
	} else if ( exp < 0 ) {
		if ( ( exp = -exp ) > MBITS ) {
			fpe_genzero( o );
		} else {
			o->exp = REMIN;
			(void) fden_fpm( o->mant, z.mant, exp );
			exp = frol_fpm( z.mant, 0, 3 );
			if ( ( exp |= ftst_fpm( z.mant ) ) != 0 ) {
				o->stat &= ~EXACT;
				if ( exp & BIT(2) ) {
					o->stat |= GRD;
				}
				if ( exp & BIT(1) ) {
					o->stat |= RND;
				}
				if ( exp & BIT(0) ) {
					o->stat |= STY;
				}
			}
		}
	} else {
		o->exp = (exp_t)exp;
	}
}
