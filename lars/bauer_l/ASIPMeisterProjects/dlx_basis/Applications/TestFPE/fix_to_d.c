/*
 * @(#)fix_to_d.c	3800.2 05/02/23
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
 *   (c) Copyright 2000 ACE Associated Computer Experts bv
 *   (c) Copyright 2000 ACE Associated Compiler Experts bv
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

/* Conversion from long __accum to long double, internally only using
 * conversion from long __accum to int, and int to long double
 */
long double fix_to_d(long __accum val)
{
	long __accum	uval;
	long		integer;
	long double	collect[4];
	int		i;
	int		bits;
	long double	term;
	long double	result;
	int		sign;

	uval = val;

	/* We do not know the accuracy of 'long double'. We assume
	 * no more than 16 bits, but are prepared to
	 * collect 64 bits in four chunks.
	 * Let's hope we have binary floating point...
	 */
	sign = 0;
	if (uval < 0.0A) {
		sign = 1;
		/* Cannot handle the lower limit of 'uval' here */
		uval  = -uval;
		if (-uval != val) {
			/* Aha, then this must have been the lower limit,
			 * which is always an exact integer value.
			 */
			integer = val;
			result  = integer;
			return result;
		}
	}
	integer    = uval;
	uval	   = uval - (long __accum)integer;
	collect[0] = integer;
	
	term = 0.5;
	for (i = 1; i < 4; i++) {
		result = 0.0;
		for (bits = 0; bits < 16; bits++) {
			if (uval == 0.0A) {
				/* no more bits left */
				break;
			}
			/* Make the msb integral, and carry
			 * it off.
			 */
			uval	= uval + uval;
			integer	= uval;
			uval	= uval - (long __accum)integer;
			if (integer != 0) {
				result = result + term;
			}
			term = term * 0.5;
		}
		collect[i] = result;
	}
	
	/* Now add the chunks from least significant to
	 * most significant to minimise round-off
	 */
	result = collect[3] + collect[2];
	result = result + collect[1];
	result = result + collect[0];
	
	if (sign) {
		result = -result;
	}

	return result;
}

#endif
