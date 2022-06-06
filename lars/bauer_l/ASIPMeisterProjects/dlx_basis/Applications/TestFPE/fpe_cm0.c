/*
 * @(#)fpe_cm0.c	3800.2 05/02/23
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
 *   (c) Copyright 2002 ACE Associated Computer Experts bv
 *   (c) Copyright 2002 ACE Associated Compiler Experts bv
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
 * compare operand against 0.0 (after rounding), and apply judgement:
 */
int fpe_cmp0( fpe_p a, predicate_t predicate )
{
	register int		n = (int) predicate;


	fpe_round( a );
	/*
	 * return the verdict, as per predicate & status.  The table lists
	 *
	 *	sts	jumps		 from n: (predicate value)
	 *
	 *	--N: 0xff00.ff00	{ n & (1<<3) }
	 *	n-N: 0xff00.ff00	    idem
	 *	n--: 0xf0f0.f0f0	{ n & (1<<2) }
	 *	---: 0xcccc.cccc	{ n & (1<<1) }
	 *	-z-: 0xaaaa.aaaa	{ n & (1<<0) }
	 *	nz-: 0xaaaa.aaaa	    idem
	 *
	 * bit N, where 31 >= N >= 0, for 32 predicates (duly defined in the
	 * header file) to be 1 where to jump (i.e true), or 0 (false): the
	 * bit can be derived directly from the predicate's value, dependent
	 * on the operand's status.  The higher 16 bits are non-aware, and
	 * normally send "unaware test" notification on NaN operand.
	 */

	switch ( a->stat & (SIG|NAN|ZERO|NEG) ) {
	default:	/* all NAN cases & no notification on bit 4 here.. */
		n >>= 1;
	case NEG:
		n >>= 1;
	case 0:
		n >>= 1;
	case ZERO:
	case NEG|ZERO:
		return n & 1;
	}
}
