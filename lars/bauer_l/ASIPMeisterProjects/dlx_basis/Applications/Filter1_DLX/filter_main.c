#include "Filter1.h"

#define PRINT_DEBUG(level, command)


int main() {
  int i;
  unsigned char ch;

  fifoInit();

  // Pre-Fill the FIFO
  for (i=0; i<FIFO_SIZE-1; i++) {
    fifoValue fValue = (fifoValue)0;
    fifoPut(fValue);
  }

  for (i=0; i<sizeof(soundData); i++) {
    ch = computeFilter1(soundData[i]);
    // writeToAudioOut(ch);
  }

  return 0;
}
