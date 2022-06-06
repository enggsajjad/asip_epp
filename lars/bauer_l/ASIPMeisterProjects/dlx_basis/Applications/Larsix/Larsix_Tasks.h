#ifndef Larsix_Tasks_5rz349uzfkq304u9zc89p5wuucz845h
#define Larsix_Tasks_5rz349uzfkq304u9zc89p5wuucz845h


//***************************************************************************
// HAS to be extended for changing number or names of tasks
//***************************************************************************
#define numberOfTasks 3
const int taskStackStart[numberOfTasks] = {30000, 40000, 50000};
#include "Larsix_Core.h"

DETERMINE_START_ADDRESS(task0);
DETERMINE_START_ADDRESS(task1);
DETERMINE_START_ADDRESS(task2);

int determineStartAddress(int taskNumber) {
  int startAddress;
  switch (taskNumber)
    {
    case 0: startAddress = determineStartAddress_task0();
      break;
    case 1: startAddress = determineStartAddress_task1();
      break;
    case 2: startAddress = determineStartAddress_task2();
      break;
    default: while (1) { }  // If this happens, not all tasks have been considerer. Halt execution!
    }
  return startAddress;
}


#endif

