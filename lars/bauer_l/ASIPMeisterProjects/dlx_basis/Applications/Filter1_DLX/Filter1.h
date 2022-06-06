
#ifndef _filter1_rkthidxruicodsaascmghrtmasghiowaejxgfaeughoscragixh
#define _filter1_rkthidxruicodsaascmghrtmasghiowaejxgfaeughoscragixh


typedef int fifoValue;
#define FIFO_SIZE 16
#define FIFO_LOG_SIZE 4


unsigned char computeFilter1(unsigned char value);

int fifoInit();

// returns 1 if the access was ignored; 0 otherwise
int fifoPut(fifoValue value);

// returns 0 casted to fifoValue if the fifo was empty
fifoValue fifoGet();

int getFifoFillLevel();

#endif
