/* 
 * syscall.c --
 *
 * This file contains functions that handle various predefined
 * trap numbers, which are used to perform system calls.
 *
 */

#include "syscall.h"
extern void Set_Errno(DLX* machPtr, int errorNumber);

/* ARG() is defined in trap.c */


/* one possible problem exists below in the Handle_Printf function.  I
 * did not have access to the output of the DLX compiler, so I assumed
 * that the compiler, when passing a floating point value to a function,
 * places the lower floating point register in the lower address (eg.
 * F0 in 0(r14), and F1 in 4(r14)).  If this is not correct, exchange the
 * assignments to ta[0] and ta[1].
 */

/*
 *----------------------------------------------------------------------
 *
 * Handle_Trap --
 *
 * Handle the requested trap number.  Any arguments are expected
 *      to start at the address in r14 (the first argument) with other
 *      arguments in words above that in memory.  The result of the
 *      simulated trap is placed in r1.
 *
 * Results:
 * The return value is 0 if no error occured, 1 if the trap is
 *      known, but the trap handler had a problem, or 2 if the trap
 *      number is not known
 *
 * Side effects:
 *      The fd_map or the simulated DLX's memory may be changed.
 *
 *----------------------------------------------------------------------
 */

int Handle_Trap(DLX* machPtr, int trapNum) {
  switch (trapNum) {
    case TRAP_OPEN :
      return Handle_Open(machPtr);
    case TRAP_CLOSE :
      return Handle_Close(machPtr);
    case TRAP_READ :
      return Handle_Read(machPtr);
    case TRAP_WRITE :
      return Handle_Write(machPtr);
    case TRAP_PRINTF :
      return Handle_Printf(machPtr);
    case TRAP_TIME:
      return Handle_Time(machPtr);
    case TRAP_LOCALTIME:
      return Handle_Localtime(machPtr);
  }
  return 2;
}

/*
 *----------------------------------------------------------------------
 *
 * Handle_Open --
 *
 * Handle the open system call.
 *
 * Results:
 * The return value is 0 if no error occured, 1 if a problem
 *      arises.
 *
 * Side effects:
 *      The fd_map may be changed.
 *
 *----------------------------------------------------------------------
 */

int Handle_Open(DLX* machPtr) {
  int where, path, result;

  for (where = 0; where < FD_SIZE; where++)
    if (machPtr->fd_map[where] == -1)
      break;
  if (where == FD_SIZE) {    /* no free file descriptors */
    Set_Errno(machPtr, EMFILE);
    SET_RETURN_VALUE(-1)
    return 0;
  }
  path = ARG(0);
  if (String_To_Scratch(machPtr, path))
    return 1;
  result = open(SCRATCH_ADDR(path), ARG(1), ARG(2));
  if (result == -1) {
    Set_Errno(machPtr, errno);
    SET_RETURN_VALUE(-1)
  } else {
    machPtr->fd_map[where] = result;
    SET_RETURN_VALUE(where)
  }
  return 0;
}

/*
 *----------------------------------------------------------------------
 *
 * Handle_Close --
 *
 * Handle the close system call.
 *
 * Results:
 * The return value is 0 if no error occured, 1 if a problem
 *      arises.
 *
 * Side effects:
 *      The fd_map may be changed.
 *
 *----------------------------------------------------------------------
 */

int Handle_Close(DLX* machPtr) {
  int result, fd;

  fd = ARG(0);
  if ((fd < 0) || (fd > FD_SIZE) || (machPtr->fd_map[fd] == -1)) {
    /* illegal file descriptor */
    Set_Errno(machPtr, EBADF);
    SET_RETURN_VALUE(-1)
    return 0;
  }
  result = close(machPtr->fd_map[fd]);
  if (result == -1) {
    Set_Errno(machPtr, errno);
    SET_RETURN_VALUE(-1)
  } else {
    SET_RETURN_VALUE(result)
    machPtr->fd_map[fd] = -1;
  }
  return 0;
}

/*
 *----------------------------------------------------------------------
 *
 * Handle_Read --
 *
 *	Handle the read system call.
 *
 * Results:
 *	The return value is 0 if no error occured, 1 if a problem
 *      arises.
 *
 * Side effects:
 *      The simulator memory and scratch pad may be changed.
 *
 *----------------------------------------------------------------------
 */

int Handle_Read(DLX* machPtr) {
  int result, fd, buf, nbytes;

  fd = ARG(0);
  buf = ARG(1);
  nbytes = ARG(2);
  if ((fd < 0) || (fd > FD_SIZE) || (machPtr->fd_map[fd] == -1)) {
    /* illegal file descriptor */ 
    Set_Errno(machPtr, EBADF);
    SET_RETURN_VALUE(-1)
    return 0;
  }
  if ((buf < 0) || (buf >= machPtr->numChars)) {
    printf("Memory reference out of range\n");
    return 1;
  }
  if ((nbytes < 0) || (buf + nbytes - 1 >= machPtr->numChars)) {
    printf("Memory reference out of range\n");
    return 1;
  }
  result = read(machPtr->fd_map[fd], SCRATCH_ADDR(buf), nbytes);
  if (result == -1) {
    Set_Errno(machPtr, errno);
    SET_RETURN_VALUE(-1)
  } else {
    if (Block_From_Scratch(machPtr, buf, result))
      return 1;
    SET_RETURN_VALUE(result)
  }
  return 0;
}

/*
 *----------------------------------------------------------------------
 *
 * Handle_Write --
 *
 *	Handle the write system call.
 *
 * Results:
 *	The return value is 0 if no error occured, 1 if a problem
 *      arises.
 *
 * Side effects:
 *      The scratch pad may be changed.
 *
 *----------------------------------------------------------------------
 */

int Handle_Write(DLX* machPtr) {
  int result, fd, buf, nbytes;

  fd = ARG(0);
  buf = ARG(1);
  nbytes = ARG(2);
  if ((fd < 0) || (fd > FD_SIZE) || (machPtr->fd_map[fd] == -1)) {
    /* illegal file descriptor */
    Set_Errno(machPtr, EBADF);
    SET_RETURN_VALUE(-1)
    return 0;
  }
  if (Block_To_Scratch(machPtr, buf, nbytes))
    return 1;
  result = write(machPtr->fd_map[fd], SCRATCH_ADDR(buf), nbytes);
  if (result == -1) {
    Set_Errno(machPtr, errno);
    SET_RETURN_VALUE(-1)
  } else {
    SET_RETURN_VALUE(result)
  }
  return 0;
}

/*
 *----------------------------------------------------------------------
 *
 * Handle_Printf --
 *
 *	Handle the printf system call.  This is done by scanning
 *      through the format string provided, and sending each % command
 *      and following plain text to the printf library function (with
 *      the appropriate argument).
 *
 * Results:
 *	The return value is 0 if no error occured, 1 if a problem
 *      arises.
 *
 * Side effects:
 *      The scratch pad may be changed.
 *
 *----------------------------------------------------------------------
 */

int Handle_Printf(DLX* machPtr) {
  char *start, *end, *s, temp;
  int fmt = ARG(0), argNumber = 1, ta[2], loc, done, result = 0;
  double *pd = (double *)&(ta[0]);

  /* convert the format string */
  if (String_To_Scratch(machPtr, fmt))
    return 1;

  /* now break the format string into blocks of characters beginning with
   * either the start of the format string, or a % command, and continuing
   * through either the start of the next % command, or the end of the
   * string.  */
  for (start = SCRATCH_ADDR(fmt); *start; start = end) {
    if (*start == '%') {
      if (start[1] == '%')
	end = start + 2;
      else
	end = start + 1;
    } else
      end = start;
    for ( ; *end && (*end != '%'); end++)     /* find the end of this block */
      ;
    temp = *end;
    *end = '\0';
    if (*start != '%')
      result += printf(start);
    else {
      /* find the type of argument this block takes (if any) */
      for (done = 0, s = start + 1; *s && !done; s++)
	switch (*s) {
	case 'c' :
	case 'd' :
	case 'o' :
	case 'u' :
	case 'x' :
	case 'X' :
	  result += printf(start, ARG(argNumber++));
	  done = 1;
	  break;
	case 'f' :
	case 'e' :
	case 'E' :
	case 'g' :
	case 'G' :
	  ta[0] = ARG(argNumber++);
	  ta[1] = ARG(argNumber++);
	  result += printf(start, *pd);
	  done = 1;
	  break;
	case 's' :
	  loc = ARG(argNumber++);
	  if (String_To_Scratch(machPtr, loc))
	    return 1;
	  result += printf(start, SCRATCH_ADDR(loc));
	  done = 1;
	  break;
	case '%' :
	  result += printf(start);
	  done = 1;
	  break;
	}
      if (!done)    /* no % command found */
	result += printf(start);
    }
    *end = temp;
  }
  SET_RETURN_VALUE(result)
  return 0;
}

/*
 *----------------------------------------------------------------------
 */

int Handle_Time(DLX* machPtr) {
  int time_ptr = ARG(0), result = 0;
  
  result = time(SCRATCH_ADDR(time_ptr));  
  
  SET_RETURN_VALUE(result)
  return 0;
}

/*
 *----------------------------------------------------------------------
 */

int Handle_Localtime(DLX* machPtr) {
  int time_ptr = ARG(0), result = 0;

  result = localtime(SCRATCH_ADDR(time_ptr));  
  
  SET_RETURN_VALUE(result)
  return 0;
}
