#include "loadStoreByte.h"
#include "intToStr.h"

int intToStr(int intValue, char* string) {
  int i=0, j=0;
  char stringReverse[32];

  if (intValue < 0) {
    intValue = -intValue;
    storeByte(string, '-');
    j++;
  } else if (intValue == 0) {
    storeByte(string, '0');
    j++;
  }
  while(intValue != 0) {
    storeByte(stringReverse+i, (intValue % 10) + '0' );
    intValue /= 10;
    i++;
  }
  while( i>0 ) {
    i--;
    storeByte(string+j, loadByteUnsigned(stringReverse+i));
    j++;
  }
  storeByte(string+j, '\0');
  return 42;
}
