/*
 * @(#)d_to_fix.c	3800.2 05/02/23
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
 *   (c) Copyright 2000-2002 ACE Associated Computer Experts bv
 *   (c) Copyright 2000-2002 ACE Associated Compiler Experts bv
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

#ifdef __DSPC__

/* conversion from long double to long __accum, internally only using
 * conversion from long double to int, and int to long __accum
 */
long __accum d_to_fix(long double val)
{
	long		integer;
	long __accum	result;
	long __accum	factor;
	int		sign;

	sign = 0;
	if (val < 0.0) {
		sign	= 1;
		val	= -val;
	}

	integer	 = val;
	val	-= integer;
	result	 = integer;
#ifndef BIGSTEPS
	for ( factor = 0.5A; val && factor; factor *= 0.5A ) {
		val    += val;
		integer = val;
		val    -= integer;
		result += (long __accum)integer * factor;
	}
#else
	/*
	 * (in-stock code) whether it really goes faster is debatable.
	 */
	if ( val ) {
		long __accum    shifter;

		/*
		 * note: 4 ovf bits guaranteed; check for more..
		 */
		factor	= 1.0A;
		shifter	= 8.0A;
		while ( ( shifter + shifter ) > 0.0A ) {
			shifter += shifter;
		}
		while ( val && ( ( factor /= shifter ) != 0.0A ) ) {
			val    *= shifter;
			integer = val;
			val    -= integer;
			result += (long __accum)integer * factor;
			while ( ( shifter > 2.0A )
			     && ( ( factor / shifter ) == 0.0A )
			      ) {
				shifter *= 0.5A;
			}
		}
	}
#endif
	if (sign) {
		result = -result;
	}
	return result;
}

#endif
