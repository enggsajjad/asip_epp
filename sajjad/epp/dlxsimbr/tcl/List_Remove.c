/* 
 * List_Remove.c --
 *
 *	Source code for the List_Remove library procedure.
 *
 * Copyright 1988 Regents of the University of California
 * Permission to use, copy, modify, and distribute this
 * software and its documentation for any purpose and without
 * fee is hereby granted, provided that the above copyright
 * notice appear in all copies.  The University of California
 * makes no representations about the suitability of this
 * software for any purpose.  It is provided "as is" without
 * express or implied warranty.
 */

#ifndef lint
static char rcsid[] = "$Header: /home/cvs/cvs_repos/dlxsim/dlx/dlxsim/tcl/List_Remove.c,v 1.1.1.2 2004/08/30 09:15:06 sascha Exp $ SPRITE (Berkeley)";
#endif

#include <stdio.h>
#include "list.h"

/*
 * ----------------------------------------------------------------------------
 *
 * List_Remove --
 *
 *	Remove a list element from the list in which it is contained.
 *
 * Results:
 *	None.
 *
 * Side effects:
 *	The given structure is removed from its containing list.
 *
 * ----------------------------------------------------------------------------
 */
void
List_Remove(itemPtr)
    register	List_Links *itemPtr;	/* list element to remove */
{
    if (itemPtr == (List_Links *) NIL || itemPtr == itemPtr->nextPtr
	    || !itemPtr) {
	panic("List_Remove: invalid item to remove.\n");
    }
    if (itemPtr->prevPtr->nextPtr != itemPtr ||
	itemPtr->nextPtr->prevPtr != itemPtr) {
	panic("List_Remove: item's pointers are invalid.\n");
    }
    itemPtr->prevPtr->nextPtr = itemPtr->nextPtr;
    itemPtr->nextPtr->prevPtr = itemPtr->prevPtr;
}
