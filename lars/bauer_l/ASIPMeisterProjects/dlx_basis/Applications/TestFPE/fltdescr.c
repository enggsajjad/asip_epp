/*
 * @(#)fltdescr.c	3800.2 05/02/23
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


/*
 * (nominal) 32/8 == 4, the max forseeable no. of carriers
 */
fpdescr_t fltdescr =
{
	((SG_TSIZE*_FPE_BPC)-(SG_EBITS+SG_MBITS)),	/* SG_SBITS */
	SG_EBITS,
	SG_MBITS,
	SG_TSIZE,

#if SG_TSIZE > 1		/* d_model init .. */
# if defined( LITTLE_ENDIAN )
#  if SG_TSIZE > 3
	{ 3, 2, 1, 0 }
#  elif SG_TSIZE > 2
	{ 2, 1, 0 }
#  else
	{ 1, 0 }
#  endif
# elif defined( BIG_ENDIAN )
#  if SG_TSIZE > 3
	{ 0, 1, 2, 3 }
#  elif SG_TSIZE > 2
	{ 0, 1, 2 }
#  else
	{ 0, 1 }
#  endif
# else
#  error "Please define LITTLE_ENDIAN or BIG_ENDIAN"
# endif
#else
	{ 0 }
#endif
};
