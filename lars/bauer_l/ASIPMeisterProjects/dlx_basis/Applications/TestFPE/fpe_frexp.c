/*
 * @(#)fpe_frexp.c	3800.2 05/02/23
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
 * frexp, also called `getman', extracts the exponent value, so
 * that the result is between |1.0| and |2.0| for representable
 * values.  The extracted value for the exponent is returned
 * as function value; 0 or INT_MIN i.c.o. operand error (Inf/Nan)
 */
int fpe_frexp( register fpe_p o )
{
	register int		exp;


	fpe_round( o );

	if ( o->stat & (ZERO|NAN|SIG|INF) ) {
		if ( o->stat & ZERO ) {
			exp = 0;
		} else for ( exp = 0x4000; ( exp + exp ) != 0; ) {
			exp += exp;	/* gets to INT_MIN */
		}
	} else {
		if ( ( exp = (int)o->exp ) == 0 ) {
			fpe_t		z;

			fclr_fpm( z.mant );
			exp -= fnrm_fpm( o->mant, z.mant );
		}
		exp -= EBIAS;
		o->exp = EBIAS;
	}
	return exp;
}
