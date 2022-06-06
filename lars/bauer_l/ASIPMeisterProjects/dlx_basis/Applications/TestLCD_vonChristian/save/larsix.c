#include "lib_lcd.h"
#include "intToStr.h"
#include "userprog.h"


//***************************************************************************
// HAS to be extended for changing number or names of tasks
//***************************************************************************

#define numberOfTasks 2
const int taskStackStart[numberOfTasks] = {0x2dfc, 0x1dfc};

#define DETERMINE_START_ADDRESS(LABEL) \
  asm int determineStartAddress_ ## LABEL() { \
    @[ .barrier ] \
      LI @{}, * ## LABEL \
  }
DETERMINE_START_ADDRESS(task0);
DETERMINE_START_ADDRESS(task1);

int determineStartAddress(int taskNumber) {
  int startAddress;
  switch (taskNumber)
    {
    case 0: startAddress = determineStartAddress_task0();
      break;
    case 1: startAddress = determineStartAddress_task1();
      break;
/*     case 2: startAddress = determineStartAddress_task2(); */
/*       break; */
/*     case 3: startAddress = determineStartAddress_task3(); */
/*       break; */
    default:  // If this happens, not all tasks have been considerer. Halt execution!
      t_print("LARSIX ERROR 1: Not all Tasks have a start-address!\r\n");
      t_print("  Halting now.\r\n");
      while (1) { }
    }
  return startAddress;
}



//***************************************************************************
// Global variables
//***************************************************************************

int taskRegisters[numberOfTasks][29];  // r0, r1 and r2 are not backuped (see ). So: taskRegisters[0][0] is r3 of task.0 and taskRegisters[0][28] is r31 of task0.
int taskCurrent;

int test = 47;

// variables for LCD items
int barvalues[32];
int activebars = 0;
int switchvalues[32];
int activeswitches = 0;

// For avoiding a special case in 'switchTask_asm' at the first start when no real 'taskCurrent' is available
int taskDummyRegisters[31];


//***************************************************************************
// Code for Task switching
//***************************************************************************

asm void switchTask_asm(int* addressSave, int* addressLoad) {
  @[.barrier
    .restrict addressSave:reg<R1>
    .restrict addressLoad:reg<R2>
  ]
    ;; asm void switchTask_asm(int* addressSave:reg<R1>, int* addressLoad:reg<R2>) {...}
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
int getNextTask() {
  int nextTask = taskCurrent+1;
/*   putString("  getNextTask()\n"); */
  if (nextTask >= numberOfTasks) nextTask = 0;
  return nextTask;
}

int switchTask() {
  int* oldTaskRegistersAddress;
/*   putString("switchTask()\n"); */
  if (taskCurrent == numberOfTasks) { // happens only at first call from main for getting the thing running
    oldTaskRegistersAddress = &taskDummyRegisters;
  } else {
    oldTaskRegistersAddress = &taskRegisters[taskCurrent];
  }
  taskCurrent = getNextTask();
/*   putString("  switchTask_asm()\n"); */
  switchTask_asm(oldTaskRegistersAddress, &taskRegisters[taskCurrent]);
  return 0;
}



//***************************************************************************
// The Tasks
//***************************************************************************

int task0() {
  int i = 0;
  char text[10];

  while(1) {
    i++;
    intToStr(test, text);
    t_print("                    \0");
    t_print(text);
    t_print(" TASK 0\r\n");
    if (i%10 == 9) {
      switchTask();
    }
  }
}

int task1() {

  soundtest();

}

//***************************************************************************
// System startup
//***************************************************************************
int initialize() {
  int i;
  int stackStart;
  int* stackStartPtr;
  for (i=0; i<numberOfTasks; i++) {
    stackStart = taskStackStart[i];
    taskRegisters[i][27] = stackStart - 4;  // r30
    stackStartPtr = (int*)stackStart;
    *(stackStartPtr  ) = determineStartAddress(i);
    *(stackStartPtr-4) = stackStart;  // unwichtig?
  }
  return 0;
}

int main() {
/*   putString("main()\n"); */
  initialize();
  taskCurrent = numberOfTasks;  // for forcing 'switchTask' to use the taskDummyRegisters for backup, cause there is nothing we really want to backup at the first start
  t_cursor(0);
  switchTask();
  return 0;
}
