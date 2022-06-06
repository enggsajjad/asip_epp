/*
 * @(#)ll_to_fpe.c	3800.2 05/02/23
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
 * signed longer integral to fpe_t converter code
 *
 * Although unlikely, the longer integral may have more bits than
 * fpe_t in its mantissa, so that rounding may be needed.
 */
void ll_to_fpe( fpe_p op, longer il )
{
	register u_longer	ul;
	register int		grs;	/* GRD, RND, STY */
	register int		n;

	op->stat = VALID;
	(void)fclr_fpm( op->mant );

	if ( il < 0 ) {
		op->stat |= NEG;
		il = -il;
	}
	ul = (u_longer)il;	/* ImplDep; should keep image */

	if ( ul == 0 ) {
		op->exp = REMIN;
		op->stat |= ZERO|EXACT;
		return;
	}

	op->exp = EBIAS-1;
	grs = 0;

	while ( ul > (u_longer)(BIT(_BPB)-1) ) {
		n = (int)fror_fpm( op->mant, (u_int)ul, _BPB );
		op->exp += _BPB;
		grs = ( n >> (_BPB-3) ) |	/* grd|rnd + v sticky v */
			( ( grs || ( n & ((1<<(_BPB-2))-1) ) ) ? 1 : 0 );
		ul >>= _BPB;
	}
	do {
		n = (int)fror_fpm( op->mant, (u_int)ul, 1 );
		op->exp++;
		grs = ( n << 2 ) | ( grs >> 1 ) | ( grs & 1 );
	} while ( ( ul >>= 1 ) != 0 );

	if ( grs == 0 ) {
		op->stat |= EXACT;
	} else {
		if ( grs & 1 ) {
			op->stat |= STY;
		}
		if ( grs & 2 ) {
			op->stat |= RND;
		}
		if ( grs & 4 ) {
			op->stat |= GRD;
		}
	}
}

#endif
