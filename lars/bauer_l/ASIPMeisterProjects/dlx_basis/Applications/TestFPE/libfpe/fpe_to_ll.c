/*
 * @(#)fpe_to_ll.c	3800.2 05/02/23
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
 *   (c) Copyright 1995-2003 ACE Associated Computer Experts bv
 *   (c) Copyright 1996-2003 ACE Associated Compiler Experts bv
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


#ifdef LONGLONG


/*
 * internal float to signed longer integral converter.
 */
longer fpe_to_ll( register fpe_p ip )
{
	register longer	op;
	register int		n;
	register int		shift;


	/*
	 * If the operand is NaN, the output receives the `sign' as most
	 * significant bit, and other bits get the most significant
	 * fractional bits from input.
	 */
	if ( ip->stat & (SIG|SIGNAN|NAN) ) {
		op = ip->stat & NEG ? 1 : 0;		/* <<= sign bit */
		(void) frol_fpm( ip->mant, 0, 1 );	/* junk int bit */
		n = _BPLL - 1;		/* == (almost) bits per longer */
		while ( n != 0 ) {
			if ( ( shift = n ) > _BPB ) {
				shift = _BPB;
			}
			op <<= shift;
			op |= (longer) frol_fpm( ip->mant, 0, shift );
			n -= shift;
		}
		return op;
	}

	/*
	 * The to-integral rounding mode is ``chop-mode'', i.e. all bits
	 * that cannot go into the result are simply discarded.
	 *
	 * When the value is too large, +/- max longer is supplied.
	 */
	n = (int) ( ip->exp - (EBIAS-1) );
	if ( n <= _BPLL ) {
		op = 0;
		while ( n > 0 ) {
			if ( ( shift = n ) > _BPB ) {
				shift = _BPB;
			}
			op <<= shift;
			op |= (longer) frol_fpm( ip->mant, 0, shift );
			n -= shift;
		}
		if ( ip->stat & NEG ) {
			op = -op;
		}
		return op;
	}

	/* min/max longer, as per sign.. */

	op = (longer)((1LL<<(_BPLL-2))|((1LL<<(_BPLL-2))-1));
	if ( ip->stat & NEG ) {
		op = ~op;
	}
	return op;
}

#endif
