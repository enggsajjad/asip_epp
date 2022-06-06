/* 
 * HashChainSearch.c --
 *
 *	Source code for HashChainSearch, a utility procedure used by
 *	the hash table library.
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
/*static char rcsid[] = "$Header: /home/cvs/cvs_repos/dlxsim/dlx/dlxsim/HashChainSearch.c,v 1.1.1.2 2004/08/30 09:15:05 sascha Exp $ SPRITE (Berkeley)";*/
#endif

#include "hash.h"
#include <list.h>
#include <string.h>
#include <strings.h>

/*
 *---------------------------------------------------------
 *
 * HashChainSearch --
 *
 * 	Search the hash table for the entry in the hash chain.
 *
 * Results:
 *	Pointer to entry in hash chain, NULL if none found.
 *
 * Side Effects:
 *	None.
 *
 *---------------------------------------------------------
 */

Hash_Entry *
HashChainSearch(tablePtr, key, hashList)
    Hash_Table 		*tablePtr;	/* Hash table to search. */
    register Address	key;	/* A hash key. */
    register List_Links *hashList;
{
    register Hash_Entry *hashEntryPtr;
    register int 	*hashKeyPtr;
    int 		*keyPtr;
    register int	numKeys;

    numKeys = tablePtr->keyType;
    /* ASIP: Changed, cause it created an error with SUSE 10
       The LIST_FORALL macro created a sitation like: "(castType)varName = whatever"
       which resulted in an "invalid lvalue" error.
       LIST_FORALL(hashList, (List_Links *) hashEntryPtr) { */
    for (hashEntryPtr = (Hash_Entry*)List_First(hashList); 
	 !List_IsAtEnd(hashList,(List_Links *)hashEntryPtr);
	 hashEntryPtr = (Hash_Entry*)List_Next((List_Links *)hashEntryPtr) ) {
	switch (numKeys) {
	    case 0:
		if (strcmp(hashEntryPtr->key.name, key) == 0) {
		    return(hashEntryPtr);
		}
		break;
	    case 1:
		if (hashEntryPtr->key.ptr == key) {
		    return(hashEntryPtr);
		}
		break;
	    case 2:
		hashKeyPtr = hashEntryPtr->key.words;
		keyPtr = (int *) key;
		if (*hashKeyPtr++ == *keyPtr++ && *hashKeyPtr == *keyPtr) {
		    return(hashEntryPtr);
		}
		break;
	    default:
		if (!bcmp((char *) hashEntryPtr->key.words,
			    (char *) key, numKeys * sizeof(int))) {
		    return(hashEntryPtr);
		}
		break;
	}
    }

    /* 
     * The desired entry isn't there 
     */

    return ((Hash_Entry *) NULL);
}
