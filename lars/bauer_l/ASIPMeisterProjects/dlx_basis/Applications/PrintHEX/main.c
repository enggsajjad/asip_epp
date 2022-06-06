
#ifdef COSY
#  include "lib_lcd.h"
#  include "loadStoreByte.h"
#  include "string.h"
#else
#  include <stdio.h>
#  define t_print printf
#  define storeByte(a, b) *(a) = (b)
#  define loadByteUnsigned(a) *(a)
#endif


int test_intToHexStr(int value, char* outputString, int digits) {
  int i, j, tempValue;
  char stringReverse[10];

  for (i=0; i<8; i++) {
    if (value==0 && (digits==0 || i>=digits)) break;
    tempValue = value & 0xF;
#ifndef COSY
    printf("tempValue = 0x%X\r\n", tempValue);
#endif
    if (tempValue < 10) storeByte(stringReverse+i, '0'+tempValue);
    else storeByte(stringReverse+i, 'A'+(tempValue-10));
    value >>= 4;
  }

  for (j=0, i--; i>=0; j++, i--) {
    storeByte(outputString+j, loadByteUnsigned(stringReverse+i));
  }
  storeByte(outputString+j, '\0');

  return 0;
}

int test_t_printHex(int value, int digits) {
  char tempString[10];
  test_intToHexStr(value, tempString, digits);
  t_print("0x");
  t_print(tempString);
  return 0;
}


int main() {
  test_t_printHex(0xFFFF0, 0);
  t_print("\r\n");
  return 0;
  
  test_t_printHex(23, 2);
  t_print("\r\n");
  test_t_printHex(23, 4);
  t_print("\r\n");
  test_t_printHex(23, 6);
  t_print("\r\n");
  test_t_printHex(42, 0);
  t_print("\r\n");
  test_t_printHex(42, 1);
  t_print("\r\n");
  test_t_printHex(-42, 0);
  t_print("\r\n");
  test_t_printHex(-42, 1);
  t_print("\r\n");
  test_t_printHex(-42, 2);
  t_print("\r\n");
  test_t_printHex(0x12345678, 0);
  t_print("\r\n");

  return 0;
}
