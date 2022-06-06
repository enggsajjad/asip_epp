/* 
 * main.c --
 *
 *	Main program for "dlxsim" simulator for DLX architecture.
 *
 * Copyright 1989 Regents of the University of California
 * Permission to use, copy, modify, and distribute this
 * software and its documentation for any purpose and without
 * fee is hereby granted, provided that the above copyright
 * notice appear in all copies.  The University of California
 * makes no representations about the suitability of this
 * software for any purpose.  It is provided "as is" without
 * express or implied warranty.
 */

#ifndef lint
/*static char rcsid[] = "$Header: /home/cvs/cvs_repos/dlxsim/dlx/dlxsim/main.c,v 1.1.1.2 2004/08/30 09:15:05 sascha Exp $ SPRITE (Berkeley)";*/
#endif /* not lint */

#include <unistd.h>
#include <bstring.h>
#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <sys/file.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <tcl.h>
#include "dlx.h"

#include <readline/readline.h>
#include <readline/history.h>

static Tcl_Interp *interp;
static DLX *machPtr;

static char *line_read = NULL;

char* rl_gets(const char *prompt) {
	if (line_read) {
		free(line_read);
		line_read = NULL;
	}

	line_read = readline(prompt);

	if (line_read && *line_read)
		add_history(line_read);

	return line_read;
}

/*
 * Forward references to procedures declared later in this file:
 */

static void Interrupt();

/*
 *----------------------------------------------------------------------
 *
 * main --
 *
 *	Top-level procedure for dlxsim simulator.
 *
 * Results:
 *	None.
 *
 * Side effects:
 *	Tons:  read the user manual for details.
 *
 *----------------------------------------------------------------------
 */

#define CMD_SIZE 1000
int main(int argc, char** argv) {
    char cmd[CMD_SIZE], *p, *command = *argv;
    char* backup_p;
    char* traceJumpsFileName = 0;
    char* traceBaseBlocksFileName = 0;
    char* profileBaseBlocksFileName = 0;
    char* profileAddressesFileName = 0;
    char* putcFileName = 0;
    char* scriptFileName = 0;
    FILE* scriptFile = 0;
    int i, result;
    int add_units = NUM_ADD_UNITS;
    int mul_units = NUM_MUL_UNITS;
    int div_units = NUM_DIV_UNITS;
    int add_latency = FP_ADD_LATENCY;
    int mul_latency = FP_MUL_LATENCY;
    int div_latency = FP_DIV_LATENCY;
    int mem_size = 262143;
    int debugAssembly = 1;
    int debugBaseBlocks = 0;
    int loadStartupFile = 0;
    int pipelineDelay = 4;
    int checkDataDependecy = 1;
    int warnSpecificDependencyOnce = 1;
    char* com;


    interp = Tcl_CreateInterp();

	/* parse the command line */
    while (argv++, --argc) {
	if (*(p = *argv) != '-') {
usageError:
	    fprintf(stderr, "\nusage:\t%s [-al#] [-au#] [-dl#] [-du#] [-ml#] [-mu#] [-pd#] [-ms#] [-da#] [-dbb#] [-cdd#] [-wsdo#] [-f{filename}] [-t{filename}] [-pb{filename}]\n\
  pd:\tPipelineDelay. Default is 4.\n\
  ms:\tMemorySize (dezimal writing) in 4 Byte Words\n\
  da:\tDebug Assembly: 0 for 'no' and != 0 (e.g. 1) for 'yes'. Default is 'yes'.\n\
  dbb:\tDebug Base Blocks: 0 for 'no' and != 0 (e.g. 1) for 'yes'. Default is 'no'.\n\
  cdd:\tCheck Data Dependecy: 0 for 'no' and != 0 (e.g. 1) for 'yes'. Default is 'yes'.\n\
  wsdo:\tWarn Specific Dependency Once: 0 for 'no' and != 0 (e.g. 1) for 'yes'. Default is 'yes'.\n\
  f:\tLoads a File at the beginning\n\
  tj:\tActivate the Trace-Mode for Jumps and write trace informations to the specified file\n\
  tb:\tActivate the Trace-Mode for Base Blocks and write trace informations to the specified file\n\
  pb:\tProfile Baseblocks\n\
  pa:\tProfile Addresses\n\
  pf:\tPutc FileName:\tWrites the output of all 'putc' Assembly Instructions to a file instead of the screen\n\
  sf:\tScript File: Executes the instructions in this file as if they were typed in dlxsim-shell\n\n", command);
	    exit(0);
	}
	switch (*(p+1)) {
	case 'a' :
	    switch (*(p+2)) {
	    case 'l' :
		add_latency = atoi(p+3);
		break;
	    case 'u' :
		add_units = atoi(p+3);
		break;
	    default :
		goto usageError;
		break;
	    }
	    break;
	case 'c':
	  if (*(p+2)=='d' && *(p+3)=='d') {
	    checkDataDependecy = atoi(p+4);
	  } else goto usageError;
	  break;
	case 'd' :
	    switch (*(p+2)) {
	    case 'a' :
	      debugAssembly = atoi(p+3);
	      break;
	    case 'b' :
	        if (*(p+3) != 'b') goto usageError;
		debugBaseBlocks = atoi(p+4);
		break;
	    case 'l' :
		div_latency = atoi(p+3);
		break;
	    case 'u' :
		div_units = atoi(p+3);
		break;
	    default :
		goto usageError;
		break;
	    }
	    break;
	case 'f':
	  loadStartupFile = 1;
	  cmd[0] = 'l';
	  cmd[1] = 'o';
	  cmd[2] = 'a';
	  cmd[3] = 'd';
	  cmd[4] = ' ';
	  backup_p = p;
	  p+=2;
	  i=5;
	  while(*p) cmd[i++] = *p++;
	  cmd[i++] = '\n';
	  cmd[i++] = '\0';
	  p = backup_p;
	  break;
	case 'm' :
	    switch (*(p+2)) {
	    case 'l' :
		mul_latency = atoi(p+3);
		break;
	    case 's' :
		mem_size = (atoi(p+3) + 3) >> 2;
		break;
	    case 'u' :
		mul_units = atoi(p+3);
		break;
	    default :
		goto usageError;
		break;
	    }
	    break;
	case 'p':
	  switch (*(p+2)) {
	    case 'a':
	      profileAddressesFileName = (char*)malloc(100*sizeof(char) );
	      for (i=0; p[i+3]!=0 && i<100; i++) {
		profileAddressesFileName[i] = p[i+3];
	      }
	      if (i==100) {
		printf("ProfileAddresses Filename too long. Filename ignored.\n");
		free(profileAddressesFileName);
		profileAddressesFileName = 0;
	      }
	      break;
	    case 'b':
	      profileBaseBlocksFileName = (char*)malloc(100*sizeof(char) );
	      for (i=0; p[i+3]!=0 && i<100; i++) {
		profileBaseBlocksFileName[i] = p[i+3];
	      }
	      if (i==100) {
		printf("ProfileBaseBlocks Filename too long. Filename ignored.\n");
		free(profileBaseBlocksFileName);
		profileBaseBlocksFileName = 0;
	      }
	      break;
	    case 'd':
	      if (atoi(p+3)>0) {
		pipelineDelay = atoi(p+3);
	      }
	      break;
	    case 'f':
	      putcFileName = (char*)malloc(100*sizeof(char) );
	      for (i=0; p[i+3]!=0 && i<100; i++) {
		putcFileName[i] = p[i+3];
	      }
	      if (i==100) {
		printf("Putc Filename too long. Filename ignored.\n");
		free(putcFileName);
		putcFileName = 0;
	      }
	      break;
	  default :
	    goto usageError;
	    break;
	  }
	  break;
	case 's':
	  if (*(p+2)=='f') {
	      scriptFileName = (char*)malloc(100*sizeof(char) );
	      for (i=0; p[i+3]!=0 && i<100; i++) {
		scriptFileName[i] = p[i+3];
	      }
	      if (i==100) {
		printf("Putc Filename too long. Filename ignored.\n");
		free(scriptFileName);
		scriptFileName = 0;
	      }
	  }
	  break;
	case 't':
	  switch (*(p+2)) {
	  case 'j':
	    traceJumpsFileName = (char*)malloc(100*sizeof(char) );
	    for (i=0; p[i+3]!=0 && i<100; i++) {
	      traceJumpsFileName[i] = p[i+3];
	    }
	    if (i==100) {
	      printf("Trace Filename too long. Filename ignored.\n");
	      free(traceJumpsFileName);
	      traceJumpsFileName = 0;
	    }
	    break;
	  case 'b':
	    traceBaseBlocksFileName = (char*)malloc(100*sizeof(char) );
	    for (i=0; p[i+3]!=0 && i<100; i++) {
	      traceBaseBlocksFileName[i] = p[i+3];
	    }
	    if (i==100) {
	      printf("Trace Filename too long. Filename ignored.\n");
	      free(traceBaseBlocksFileName);
	      traceBaseBlocksFileName = 0;
	    }
	    break;
	  default :
	    goto usageError;
	    break;
	  }
	    
	  break;
	case 'w':
	  if (*(p+2)=='s' && *(p+3)=='d' && *(p+4)=='o') {
	    warnSpecificDependencyOnce = atoi(p+5);
	  } else goto usageError;
	  break;
	default :
	    goto usageError;
	    break;
	}
    }

    if (mem_size < 1) {
	fprintf(stderr, "invalid memory size (>=1)\n");
	exit(0);
    }

    if ((add_units < 1) || (add_units > MAX_FP_UNITS)) {
	fprintf(stderr, "invalid number of add units (1-%d)\n", MAX_FP_UNITS);
	exit(0);
    }

    if ((mul_units < 1) || (mul_units > MAX_FP_UNITS)) {
	fprintf(stderr, "invalid number of multiply units (1-%d)\n", MAX_FP_UNITS);
	exit(0);
    }

    if ((div_units < 1) || (div_units > MAX_FP_UNITS)) {
	fprintf(stderr, "invalid number of divide units (1-%d)\n", MAX_FP_UNITS);
	exit(0);
    }

    if (add_latency < 1) {
	fprintf(stderr, "invalid latency for add unit (>=1)\n");
	exit(0);
    }

    if (mul_latency < 1) {
	fprintf(stderr, "invalid latency for multiply unit (>=1)\n");
	exit(0);
    }

    if (div_latency < 1) {
	fprintf(stderr, "invalid latency for divide unit (>=1)\n");
	exit(0);
    }

    machPtr = Sim_Create(mem_size, interp,
		add_units, add_latency,
		mul_units, mul_latency,
		div_units, div_latency, pipelineDelay);
    if (machPtr==0) return -1;
    machPtr->debugBaseBlocks = debugBaseBlocks;
    machPtr->debugAssembly = debugAssembly;
    machPtr->checkDataDependecy = checkDataDependecy;
    machPtr->warnSpecificDependencyOnce = warnSpecificDependencyOnce;
    machPtr->profileBaseBlocksFileName = profileBaseBlocksFileName;
    machPtr->profileAddressesFileName = profileAddressesFileName;


    if (loadStartupFile) {
      Tcl_Eval(interp, cmd, 0, &p);
      if (*interp->result != 0) {
	printf("%s\n", interp->result);
      }
    }

    /* Initialize the traceFile if needed */
    if (traceJumpsFileName != 0) {
      machPtr->traceJumpsFile = fopen(traceJumpsFileName, "w");
      free(traceJumpsFileName);
      traceJumpsFileName = 0;
    } else {
      machPtr->traceJumpsFile = 0;
    }
    if (traceBaseBlocksFileName != 0) {
      machPtr->traceBaseBlocksFile = fopen(traceBaseBlocksFileName, "w");
      free(traceBaseBlocksFileName);
      traceBaseBlocksFileName = 0;
    } else {
      machPtr->traceBaseBlocksFile = 0;
    }

    /* Initialize the putcFile if needed */
    if (putcFileName != 0) {
      machPtr->putcFile = fopen(putcFileName, "w");
      free(putcFileName);
      putcFileName = 0;
    } else {
      machPtr->putcFile = 0;
    }

    (void) signal(SIGINT, Interrupt);

    /*
     * Read a ".dlxsim" file if one exists.  Check first in the home
     * directory, then in the current directory.
     */

    p = getenv("HOME");
    if (p != NULL) {
	sprintf(cmd, "%.150s/.dlxsim", p);
	if (access(cmd, R_OK) == 0) {
	    sprintf(cmd, "source %.150s/.dlxsim", p);
	    result = Tcl_Eval(interp, cmd, 0, (char **) 0);
	    if (*interp->result != 0) {
		printf("%s\n", interp->result);
	    }
	}
    }
    if (access(".dlxsim", R_OK) == 0) {
	struct stat homeStat, cwdStat;

	/*
	 * Don't process the .dlxsim file in the current directory if
	 * the current directory is the same as the home directory:
	 * it will already have been processed above.
	 */

	(void) stat(p, &homeStat);
	(void) stat(".", &cwdStat);
	if (bcmp((char *) &homeStat, (char *) &cwdStat,
		sizeof(cwdStat))) {
	    result = Tcl_Eval(interp, "source .dlxsim", 0, (char **) 0);
	    if (*interp->result != 0) {
		printf("%s\n", interp->result);
	    }
	}
    }

    /* execute script file */
    if (scriptFileName != 0) {
      printf("ScriptFileName: \"%s\"\n", scriptFileName);
      scriptFile = fopen(scriptFileName, "r");
      while (!feof(scriptFile)) {
	fgets(cmd, CMD_SIZE, scriptFile);
	printf("#################\n");
	printf("# Command: %s", cmd);
	printf("#################\n");
	Tcl_Eval(interp, cmd, 0, &p);
	if (*interp->result != 0) {
	  printf("%s\n", interp->result);
	}
      }
    }

    cmd[0] = '\0';
    while (1) {
	clearerr(stdin);
	p = Tcl_GetVar(interp, "prompt", 1);

	if ((*p == 0) || (Tcl_Eval(interp, p, 0, (char **) 0) != TCL_OK)) {
		p = "(dlxsim) ";
	}
	com = rl_gets(p);
	if (com == NULL) { /* readline returns NULL on EOF */
		printf("\n");
		exit(0);
	}
	if (*com) {
		strncpy(cmd, com, 1000);
		cmd[999] = '\0';
	}
	p = &cmd[0];
	while (*p++ != '\0');
	fflush(stdout);

/*	gotCommand:
	*p = 0;
        printf("Tcl_Eval(%i, \"%s\", 0, \"%s\");\n", interp, cmd, p);
*/
	(void) Tcl_Eval(interp, cmd, 0, &p);
	if (*interp->result != 0) {
	    printf("%s\n", interp->result);
	}
    }
}

/*
 *----------------------------------------------------------------------
 *
 * Interrupt --
 *
 *	This procedure is invoked when the interrupt key is typed:
 *	it causes the simulation to stop.
 *
 * Results:
 *	None.
 *
 * Side effects:
 *	Causes simultor to stop after next instruction.
 *
 *----------------------------------------------------------------------
 */

static void
Interrupt()
{
  fprintf( stderr, "interrupt\n" );
  Sim_Stop(machPtr);
}

/*
 *----------------------------------------------------------------------
 *
 * Main_QuitCmd --
 *
 *	This procedure is invoked to process the "quit" Tcl command.
 *	See the user documentation for details on what it does.
 *
 * Results:
 *	None:  this command never returns.
 *
 * Side effects:
 *	The program exits.
 *
 *----------------------------------------------------------------------
 */

/* ARGSUSED */
int
Main_QuitCmd(machPtr, interp, argc, argv)
    DLX *machPtr;			/* Machine description. */
    Tcl_Interp *interp;			/* Current interpreter. */
    int argc;				/* Number of arguments. */
    char **argv;			/* Argument strings. */
{
    exit(0);
    return TCL_OK;			/* Never gets executed. */
}