/*
 * bstring.h --
 *
 *	Declarations of BSD library procedures for byte manipulation.
 *
 * Copyright 1988 Regents of the University of California
 * Permission to use, copy, modify, and distribute this
 * software and its documentation for any purpose and without
 * fee is hereby granted, provided that the above copyright
 * notice appear in all copies.  The University of California
 * makes no representations about the suitability of this
 * software for any purpose.  It is provided "as is" without
 * express or implied warranty.
 *
 * $Header: /home/cvs/cvs_repos/dlxsim/dlx/dlxsim/bstring.h,v 1.1.1.2 2004/08/30 09:15:05 sascha Exp $ SPRITE (Berkeley)
 */

#ifndef _BSTRING
#define _BSTRING

extern int	bcmp();
extern int	bcopy();
extern void	bzero();
extern int	ffs();

#endif /* _BSTRING */
