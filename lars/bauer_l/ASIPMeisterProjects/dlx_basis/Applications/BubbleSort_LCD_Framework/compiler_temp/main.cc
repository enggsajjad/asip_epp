#define COSY
#include "clockCounter.h"
#include "intToStr.h"
#include "lib_lcd.h"

#define SIZE 20

unsigned int array[SIZE] = { 45, 75, 342, 54, 7, 86, 92, 235, 4, 42, 99, 78, 63, 352, 21, 634, 6, 77, 346, 23 };

int printArray() {
  int i;
  int sorted=1;
  char tempString[32];

  t_print("Array:");

  for (i=0; i<SIZE; i++) {
    if ( (i&0x7) == 0) t_print("\r\n");
    intToStr(array[i], tempString);
    t_print(tempString);
    t_print(" ");
    if (i>0) sorted &= array[i-1] <= array[i];
  }
  t_print("\r\n");

  return sorted;
}

#if 1
void bubbleSort(const unsigned int startIndex, const unsigned int endIndex) {
  unsigned int i, j, tmp;

  for (i=startIndex; i<endIndex; i++) {
    for (j=startIndex; j<endIndex-i; j++) {
      if (array[j+1]<array[j]) {
        tmp=array[j];
        array[j]=array[j+1];
        array[j+1]=tmp;
      }
    }
  }

}
#else
void bubbleSort(const unsigned int startIndex, const unsigned int endIndex) {
  unsigned int *j, *next_j, *innerLoopEnd;
  unsigned int i, tmp, value_j, value_next_j;

  innerLoopEnd = array+endIndex;
  i = startIndex;
  while (i < endIndex) {
    #ifndef COSY
      printArray();
      printf("Inner-loop will go from %u to %u.\n", startIndex, endIndex-i);
    #endif

    j = array+startIndex;
    value_j = *j;
    next_j = j;

    while (j < innerLoopEnd) {
      next_j++;
      value_next_j = *next_j;
      if (value_next_j < value_j) {
        #ifndef COSY
          printf("exchanging %u:%u with %u:%u\n", j-array, value_j, next_j-array, value_next_j);
        #endif
        *j = value_next_j;
        *next_j = value_j;
        tmp = value_j;
        value_j = value_next_j;
        value_next_j = tmp;
      }
      j = next_j;
      value_j = value_next_j;
    }
    innerLoopEnd--;
    i++;
  }

}
#endif

int main() {
  int time;
  int sorted;
  char tempString[32];

  t_print("BubbleSort: sorting...\r\n");

  time = readClockCounter();
  bubbleSort(0, SIZE-1);
  time = readClockCounter() - time;

  sorted = printArray();

  t_print("Array Sorted: ");
  if (sorted==0) t_print("NO!!   ERROR!!");
  else t_print("YES");
  t_print("\r\nNumber of cycles needed: ");
  intToStr(time, tempString);
  t_print(tempString);
  t_print("\r\n");

  return 0;
}

