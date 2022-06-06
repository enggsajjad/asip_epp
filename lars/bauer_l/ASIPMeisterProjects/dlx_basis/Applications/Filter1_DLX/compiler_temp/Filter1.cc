#define COSY

#include "Filter1.h"

/*
 * Adjust the DEBUG-Level of the code:
 * 0 is 'release', i.e. no debug output
 * 5 is 'full debug', i.e. all output
 */
#if DEBUG_LEVEL
#define PRINT_DEBUG(level, command) if (DEBUG_LEVEL >= level) command;
#else
#define PRINT_DEBUG(level, command)
#endif

/*
 * This FIFO Implementation (circular buffer) only offers space for
 * FIFO_SIZE-1 values, but is therefor a slightly faster implementation.
 */
fifoValue fifoArray[FIFO_SIZE];
int fifoNextWrite;  // TODO: ggf MutEx f√ºr Zugriff
int fifoNextRead;

int fifoInit() {
  int i;
  for (i=0; i<FIFO_SIZE; i++) {
    fifoArray[i] = (fifoValue)0;
  }
  fifoNextWrite = 0;
  fifoNextRead = 0;
  return 0;
}

// returns 1 if the access was ignored; 0 otherwise
int fifoPut(fifoValue value) {
  PRINT_DEBUG(5, xil_printf("  fifoPut(value:%d);\r\n", (int)value))
  int tempIndex = fifoNextWrite+1;
  if (tempIndex == FIFO_SIZE) tempIndex = 0;
  if (tempIndex == fifoNextRead) {
    PRINT_DEBUG(1, xil_printf("    FIFO Overflow Pending!! Access Ignored!!\r\n"))
    return 1;
  }
  fifoArray[fifoNextWrite] = value;
  PRINT_DEBUG(3, xil_printf("    fifoArray[%d] = %d\r\n", fifoNextWrite, (int)value))
  fifoNextWrite = tempIndex;
  return 0;
}

// returns 0 casted to fifoValue if the fifo was empty
fifoValue fifoGet() {
  PRINT_DEBUG(5, xil_printf("  fifoGet();\r\n"))
  fifoValue retVal = (fifoValue)0;
  if (fifoNextRead == fifoNextWrite) {
    PRINT_DEBUG(1, xil_printf("    FIFO was empty: return 0\r\n"))
    return (fifoValue)0;
  }
  retVal = fifoArray[fifoNextRead];
  if (++fifoNextRead==FIFO_SIZE) fifoNextRead = 0;
  PRINT_DEBUG(3, xil_printf("    fifoGet(): return %d\r\n", (int)retVal))
  return retVal;
}

int getFifoFillLevel() {
  int temp = fifoNextWrite;
  if (fifoNextWrite < fifoNextRead) temp += FIFO_SIZE;
  PRINT_DEBUG(5, xil_printf("getFifoFillLevel(): %d\r\n", temp-fifoNextRead))
  return temp - fifoNextRead;
}




unsigned char computeFilter1(unsigned char value) {
  static fifoValue lastResult = (fifoValue)0;
  PRINT_DEBUG(2, xil_printf("computeFilter1(value: %d);\r\n", value))
//  fifoValue fValue = (fifoValue)value / (fifoValue)(FIFO_SIZE-1);
  fifoValue fValue = (fifoValue)value << FIFO_LOG_SIZE;
  PRINT_DEBUG(5, xil_printf("  fValue = %d\r\n", (int)fValue))
  lastResult += fValue;
  PRINT_DEBUG(5, xil_printf("  lastResult = %d\r\n", (int)lastResult))
  lastResult -= fifoGet();
  PRINT_DEBUG(5, xil_printf("  lastResult = %d\r\n", (int)lastResult))
  fifoPut(fValue);

  // TODO: lastResult ‰ndern oder nur den R¸ckgabewert ‰ndern?
  // Das ist im Fall einer Begrenzung ein Unterschied bei der jeweils n‰chsten Berechnung.
  // ** bisher kein Ueber-/Unterlauf passiert **
  if ( (int)lastResult > 255) {
//    printf("‹berlauf %d\n", lastResult);
    lastResult = (fifoValue)255;
  } else if ( (int)lastResult < 0) {
//    printf("Unterlauf %d\n", lastResult);
    lastResult = (fifoValue)0;
  }
  return (unsigned char)lastResult;
}
