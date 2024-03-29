/*
 * @(#)cmp_e.c	3800.2 05/02/23
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
 * Old Style return values: -1,0,1 for less,equal,greater (non aware)
 */
int cmp_e( ext_t a, ext_t b )
{
	fpe_t		x;
	fpe_t		y;


	ep_to_fpe( &x, &a );
	ep_to_fpe( &y, &b );

	if (fpe_cmp( &x, &y, fpe_EQ )) {
		return 0;
	}
	if (fpe_cmp( &x, &y, fpe_GT )) {
		return 1;
	}
	return -1;
}
