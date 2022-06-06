/*
 * @(#)fpe_util.c	3800.2 05/02/23
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
 *   (c) Copyright 1995-1998 ACE Associated Computer Experts bv
 *   (c) Copyright 1996-1998 ACE Associated Compiler Experts bv
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
 *  Round to nearest(even) the operand, if required, using
 *  the rounding attributes in the stat member.  Also initialize
 *  .bss (when stat all 0s, i.e. no VALID flag) to zero.  Then
 *  (re-)classify.  For operations to work correctly it is required
 *  to (re-)classify the operand, so that the stat member correctly
 *  reflects conditions of the rest of the members (i.e. the operand).
 *  This work is done implied mostly, but we check the mantissa at end
 *  and in accordance set ZERO.
 */
void  fpe_round(register fpe_p   o)
{
	if (o->stat == 0) {
		fpe_genzero( o );
	}
	if (o->stat & (SIG|NAN|EXACT)) {
		return;			/* no (more) rounding */
	}
	o->stat |= EXACT;	/* once is enough: rnd & classify done */


	if ((o->stat & (ZERO|INF)) == 0) {
		register u_int		rnd;

		if ((o->stat & (GRD|RND|STY)) == GRD) {	/* tie */
			rnd = fror_fpm(o->mant, 0, 1);
			(void)frol_fpm(o->mant, rnd, 1);
		} else if (o->stat & GRD) {
			rnd = 1;
		} else {
			rnd = 0;
		}

		if (rnd && fadc_fpm(o->mant, (int)rnd)) {
			if (++o->exp == REMAX) {
				o->exp--;
				(void)fnot_fpm(o->mant);
			} else {
				(void)fror_fpm(o->mant, 1, 1);
			}
		}
	}


	/*
	 * clear used rounding attributes (don't care with EXACT, but..)
	 */
	o->stat &= ~(ROVF|RUVF|RMNEG|GRD|RND|STY);

	/*
	 * re-classify (i.e. set as required NAN, INF, NEG & ZERO).
	 *
	 *	(NAN, INF & NEG are handled c.q. dealt with correctly)
	 *
	 * to ensure that ZERO flag reflects condition of operand:
	 */
	if (((o->stat & (ZERO|INF)) == 0) && (ftst_fpm(o->mant) == 0)) {
		o->stat |= ZERO;
	}
}


/*
 * if two arguments are supplied, see if either one is NAN, and
 * return in the first argument, which shall not be NULL, the most
 * applicable NAN operand, and return TRUE (== 1) to indicate NAN
 * operand(s).  Otherwise, return 0, and round the operands if required.
 */
int  fpe_oper_check(register fpe_p  a, register fpe_p   b)
{
	if (a->stat & (SIG|SIGNAN)) {
		return 1;
	}
	if (b != NOFPE) {
		if (b->stat & (SIG|SIGNAN)) {
			*a = *b;
			return 1;
		}
	}
	if (a->stat & NAN) {
		return 1;
	}
	if ((a->stat & EXACT) == 0) {
		fpe_round( a );
	}
	if (b != NOFPE) {
		if (b->stat & NAN) {
			*a = *b;
			return 1;
		}
		if ((b->stat & EXACT) == 0) {
			fpe_round( b );
		}
	}
	return 0;
}


/*
 * (re-)place in the operand provided a Quiet NAN value, marked as said.
 */
void  fpe_gennan(register fpe_p  a, int   marker)
{
	a->stat = VALID|EXACT|NAN;
	a->exp  = REMAX;
	(void)fclr_fpm( a->mant );
	(void)fror_fpm( a->mant, (u_int)(BIT(MPBITS-2)|marker), MPBITS );
}

/*
 * next two functions generate inf resp zero, preserving the sign
 */

void  fpe_geninf(register fpe_p   o)
{
	o->stat &= ~NEG;
	o->stat |= VALID|EXACT|INF;
	(void)fclr_fpm( o->mant );
	o->exp = REMAX;
}

void  fpe_genzero(register fpe_p   o)
{
	o->stat &= ~NEG;
	o->stat |= VALID|EXACT|ZERO;
	(void)fclr_fpm( o->mant );
	o->exp = REMIN;
}
