#define COSY
#include "clockCounter.h"
#include "lib_lcd.h"

int globVal;

int main() {
  int retVal=1, i;

  u_print("Some Value: ");
  u_printInt(42);
  u_print("\r\n");

  writeClockCounter(424242);
  globVal = readClockCounter();
  t_print("Read ClockCounter: ");
  t_printInt(globVal);
  t_print("\r\n");

  writeClockCounter(0);
  for (i=0; i<128; i++) {
    retVal *= i;
  }
  globVal = readClockCounter();
  t_print("Read ClockCounter: ");
  t_printInt(globVal);
  t_print("\r\n");

  return retVal;
}
