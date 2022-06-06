/* 
 * List_ListInsert.c --
 *
 *	Source code for the List_ListInsert library procedure.
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
static char rcsid[] = "$Header: /home/cvs/cvs_repos/dlxsim/dlx/dlxsim/tcl/List_ListIns.c,v 1.1.1.2 2004/08/30 09:15:06 sascha Exp $ SPRITE (Berkeley)";
#endif

#include <stdio.h>
#include "list.h"

/*
 * ----------------------------------------------------------------------------
 *
 * List_ListInsert --
 *
 *	Insert the list pointed to by headerPtr into a List after 
 *	destPtr.
 *
 * Results:
 *	None.
 *
 * Side effects:
 *	The list containing destPtr is modified to contain itemPtr.
 *	headerPtr no longer references a valid list.
 *
 * ----------------------------------------------------------------------------
 */
void
List_ListInsert(headerPtr, destPtr)
    register	List_Links *headerPtr;	/* structure to insert */
    register	List_Links *destPtr;	/* structure after which to insert it */
{
    if (headerPtr == (List_Links *) NIL || destPtr == (List_Links *) NIL
	    || !headerPtr || !destPtr) {
	panic("List_ListInsert: headerPtr (%x) or destPtr (%x) is NIL.\n",
		  (unsigned int) headerPtr, (unsigned int) destPtr);
	return;
    }

    if (headerPtr->nextPtr != headerPtr) {
	headerPtr->prevPtr->nextPtr = destPtr->nextPtr;
	headerPtr->nextPtr->prevPtr = destPtr;
	destPtr->nextPtr->prevPtr = headerPtr->prevPtr;
	destPtr->nextPtr = headerPtr->nextPtr;
    }

    headerPtr->nextPtr = (List_Links *) NIL;
    headerPtr->prevPtr = (List_Links *) NIL;
}
