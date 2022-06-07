/* 
   Copyright (C) 2005,2006  Upwind technology, Inc.
*/
#include <machine/param.h>
#include <machine/vmparam.h>
#undef ALIGN

#define	HOST_PAGE_SIZE		NBPG
/* #define	HOST_SEGMENT_SIZE	NBPG -- we use HOST_DATA_START_ADDR */
#define	HOST_MACHINE_ARCH	bfd_arch_brownie32
/* #define	HOST_MACHINE_MACHINE	 */

#define	HOST_TEXT_START_ADDR		USRTEXT
#define	HOST_STACK_END_ADDR		USRSTACK
#define NO_CORE_COMMAND
