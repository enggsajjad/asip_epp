/*
 * @(#)extdescr.c	3800.2 05/02/23
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
 *   (c) Copyright 2002-2004 ACE Associated Computer Experts bv
 *   (c) Copyright 2002-2004 ACE Associated Compiler Experts bv
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
 * note: 128/8 == 16, the max forseeable no. of d_model entries..
 */
fpdescr_t extdescr =
{
	((EX_TSIZE*_FPE_BPC)-(EX_EBITS+EX_MBITS)),	/* EX_SBITS */
	EX_EBITS,
	EX_MBITS,
      - EX_TSIZE,	/* negative, to indicate hidden bit *not* used */

#if EX_TSIZE > 1		/* d_model init .. */
# if defined( LITTLE_ENDIAN )
#  if EX_TSIZE > 15
	{ 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0 }
#  elif EX_TSIZE > 14
	{ 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0 }
#  elif EX_TSIZE > 13
	{ 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0 }
#  elif EX_TSIZE > 12
	{ 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0 }
#  elif EX_TSIZE > 11
	{ 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0 }
#  elif EX_TSIZE > 10
	{ 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0 }
#  elif EX_TSIZE > 9
	{ 9, 8, 7, 6, 5, 4, 3, 2, 1, 0 }
#  elif EX_TSIZE > 8
	{ 8, 7, 6, 5, 4, 3, 2, 1, 0 }
#  elif EX_TSIZE > 7
	{ 7, 6, 5, 4, 3, 2, 1, 0 }
#  elif EX_TSIZE > 6
	{ 6, 5, 4, 3, 2, 1, 0 }
#  elif EX_TSIZE > 5
	{ 5, 4, 3, 2, 1, 0 }
#  elif EX_TSIZE > 4
	{ 4, 3, 2, 1, 0 }
#  elif EX_TSIZE > 3
	{ 3, 2, 1, 0 }
#  elif EX_TSIZE > 2
	{ 2, 1, 0 }
#  else
	{ 1, 0 }
#  endif
# elif defined( BIG_ENDIAN )
#  if EX_TSIZE > 15
	{ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 }
#  elif EX_TSIZE > 14
	{ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14 }
#  elif EX_TSIZE > 13
	{ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13 }
#  elif EX_TSIZE > 12
	{ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 }
#  elif EX_TSIZE > 11
	{ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 }
#  elif EX_TSIZE > 10
	{ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 }
#  elif EX_TSIZE > 9
	{ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 }
#  elif EX_TSIZE > 8
	{ 0, 1, 2, 3, 4, 5, 6, 7, 8 }
#  elif EX_TSIZE > 7
	{ 0, 1, 2, 3, 4, 5, 6, 7 }
#  elif EX_TSIZE > 6
	{ 0, 1, 2, 3, 4, 5, 6 }
#  elif EX_TSIZE > 5
	{ 0, 1, 2, 3, 4, 5 }
#  elif EX_TSIZE > 4
	{ 0, 1, 2, 3, 4 }
#  elif EX_TSIZE > 3
	{ 0, 1, 2, 3 }
#  elif EX_TSIZE > 2
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
