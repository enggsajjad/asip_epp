#include "intToStr.h"

int intToStr(int intValue, char* string) {
  int i=0, j=0;
  char stringReverse[32];

  if (intValue < 0) {
    intValue = -intValue;
    *string = '-';
    j++;
  } else if (intValue == 0) {
    *string = '0';
    j++;
  }
  while(intValue != 0) {
    *(stringReverse+i) = (intValue % 10) + '0';
    intValue /= 10;
    i++;
  }
  while( i>0 ) {
    i--;
    *(string+j) = *(stringReverse+i);
    j++;
  }
  *(string+j) = '\0';
  return 0;
}
