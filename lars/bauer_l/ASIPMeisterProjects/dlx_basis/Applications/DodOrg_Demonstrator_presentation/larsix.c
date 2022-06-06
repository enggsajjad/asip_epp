#include "lib_lcd.h"
#include "intToStr.h"
#include "userprog.h"


//***************************************************************************
// HAS to be extended for changing number or names of threads
//***************************************************************************

#define numberOfThreads 4
const int threadStackStart[numberOfThreads] = {0x2dfc, 0x1dfc, 0x0dfc, 0x07fc};

#define DETERMINE_START_ADDRESS(LABEL) \
  asm int determineStartAddress_ ## LABEL() { \
    @[ .barrier ] \
      LI @{}, * ## LABEL \
  }
DETERMINE_START_ADDRESS(thread0);
DETERMINE_START_ADDRESS(thread1);
DETERMINE_START_ADDRESS(thread2);
DETERMINE_START_ADDRESS(thread3);

int determineStartAddress(int threadNumber) {
  int startAddress;
  switch (threadNumber)
    {
    case 0: startAddress = determineStartAddress_thread0();
      break;
    case 1: startAddress = determineStartAddress_thread1();
      break;
    case 2: startAddress = determineStartAddress_thread2();
      break;
    case 3: startAddress = determineStartAddress_thread3();
      break;
    default:  // If this happens, not all threads have been considerer. Halt execution!
      t_print("LARSIX ERROR 1: Not all Threads have a start-address!\r\n");
      t_print("  Halting now.\r\n");
      while (1) { }
    }
  return startAddress;
}

//***************************************************************************
// Global variables
//***************************************************************************

int threadRegisters[numberOfThreads][29];  // r0, r1 and r2 are not backuped (see ). So: threadRegisters[0][0] is r3 of thread.0 and threadRegisters[0][28] is r31 of thread0.
int threadCurrent;

// For avoiding a special case in 'switchThread_asm' at the first start when no real 'threadCurrent' is available
int threadDummyRegisters[31];

//***************************************************************************
// Code for Thread switching
//***************************************************************************

asm void switchThread_asm(int* addressSave, int* addressLoad) {
  @[.barrier
    .restrict addressSave:reg<R1>
    .restrict addressLoad:reg<R2>
  ]
    ;; asm void switchThread_asm(int* addressSave:reg<R1>, int* addressLoad:reg<R2>) {...}
    nop
    nop
    nop
    sw   0(@{addressSave}), %GPR3
    sw   4(@{addressSave}), %GPR4
    sw   8(@{addressSave}), %GPR5
    sw  12(@{addressSave}), %GPR6
    sw  16(@{addressSave}), %GPR7
    sw  20(@{addressSave}), %GPR8
    sw  24(@{addressSave}), %GPR9
    sw  28(@{addressSave}), %GPR10
    sw  32(@{addressSave}), %GPR11
    sw  36(@{addressSave}), %GPR12
    sw  40(@{addressSave}), %GPR13
    sw  44(@{addressSave}), %GPR14
    sw  48(@{addressSave}), %GPR15
    sw  52(@{addressSave}), %GPR16
    sw  56(@{addressSave}), %GPR17
    sw  60(@{addressSave}), %GPR18
    sw  64(@{addressSave}), %GPR19
    sw  68(@{addressSave}), %GPR20
    sw  72(@{addressSave}), %GPR21
    sw  76(@{addressSave}), %GPR22
    sw  80(@{addressSave}), %GPR23
    sw  84(@{addressSave}), %GPR24
    sw  88(@{addressSave}), %GPR25
    sw  92(@{addressSave}), %GPR26
    sw  96(@{addressSave}), %GPR27
    sw 100(@{addressSave}), %GPR28
    sw 104(@{addressSave}), %GPR29
    sw 108(@{addressSave}), %GPR30
    sw 112(@{addressSave}), %GPR31
    nop
    lw %GPR3,    0(@{addressLoad})
    lw %GPR4,    4(@{addressLoad})
    lw %GPR5,    8(@{addressLoad})
    lw %GPR6,   12(@{addressLoad})
    lw %GPR7,   16(@{addressLoad})
    lw %GPR8,   20(@{addressLoad})
    lw %GPR9,   24(@{addressLoad})
    lw %GPR10,  28(@{addressLoad})
    lw %GPR11,  32(@{addressLoad})
    lw %GPR12,  36(@{addressLoad})
    lw %GPR13,  40(@{addressLoad})
    lw %GPR14,  44(@{addressLoad})
    lw %GPR15,  48(@{addressLoad})
    lw %GPR16,  52(@{addressLoad})
    lw %GPR17,  56(@{addressLoad})
    lw %GPR18,  60(@{addressLoad})
    lw %GPR19,  64(@{addressLoad})
    lw %GPR20,  68(@{addressLoad})
    lw %GPR21,  72(@{addressLoad})
    lw %GPR22,  76(@{addressLoad})
    lw %GPR23,  80(@{addressLoad})
    lw %GPR24,  84(@{addressLoad})
    lw %GPR25,  88(@{addressLoad})
    lw %GPR26,  92(@{addressLoad})
    lw %GPR27,  96(@{addressLoad})
    lw %GPR28, 100(@{addressLoad})
    lw %GPR29, 104(@{addressLoad})
    lw %GPR30, 108(@{addressLoad})
    lw %GPR31, 112(@{addressLoad})
    nop
    nop
    nop
}

// Scheduler Implementation. Currently a Round Robin
int getNextThread() {
  int nextThread = threadCurrent+1;
/*   putString("  getNextThread()\n"); */
  if (nextThread >= numberOfThreads) nextThread = 0;
  return nextThread;
}

int switchThread() {
  int* oldThreadRegistersAddress;
/*   putString("switchThread()\n"); */
  if (threadCurrent == numberOfThreads) { // happens only at first call from main for getting the thing running
    oldThreadRegistersAddress = &threadDummyRegisters;
  } else {
    oldThreadRegistersAddress = &threadRegisters[threadCurrent];
  }
  threadCurrent = getNextThread();
/*   putString("  switchThread_asm()\n"); */
  switchThread_asm(oldThreadRegistersAddress, &threadRegisters[threadCurrent]);
  return 0;
}



//***************************************************************************
// The Threads
//***************************************************************************

int thread0() {
  int retval;
  int i = 0;
  char text[10];

  retval = poll_display();
  
  wait(4200000);

  intToStr(retval, text);
  t_print(text);

  while(1) switchThread();
}

int thread1() {
  sound_filter();
}

int thread2() {
  sound_nofilter();
}

int thread3() {

  countertest();
}

//***************************************************************************
// System startup
//***************************************************************************
int initialize() {
  int i;
  int stackStart;
  int* stackStartPtr;
  for (i=0; i<numberOfThreads; i++) {
    stackStart = threadStackStart[i];
    threadRegisters[i][27] = stackStart - 4;  // r30
    stackStartPtr = (int*)stackStart;
    *(stackStartPtr  ) = determineStartAddress(i);
    *(stackStartPtr-4) = stackStart;  // unwichtig?
  }
  return 0;
}

int main() {
/*   putString("main()\n"); */
  initialize();
  threadCurrent = numberOfThreads;  // for forcing 'switchThread' to use the threadDummyRegisters for backup, cause there is nothing we really want to backup at the first start
  t_cursor(0);
  sound_startup();
  switchThread();
  return 0;
}
