#include "loadStoreByte.h"

int loadByteUnsigned(char* address) {
  int charAddress = (int)address;
  int* wordPointer = (int*)(charAddress & ~3);
  int retVal = *wordPointer;
  retVal >>= (~(charAddress&3) ) << 3;  // The "~()" is because the endianess
  return retVal & 0xFF;
}

int loadByteSigned(char* address) {
  int charAddress = (int)address;
  int* wordPointer = (int*)(charAddress & ~3);
  int retVal = *wordPointer;
  retVal >>= (~(charAddress&3) ) << 3;  // The "~()" is because the endianess
  retVal &= 0xFF;
  retVal <<= 24;
  retVal >>= 24;
  return retVal;
}

int storeByte(char* address, int value) {
  int charAddress = (int)address;
  int* wordPointer = (int*)(charAddress & ~3);
  int wordValue = *wordPointer;
  int mask = 0xFF << ( (3 - (charAddress&3) ) << 3);
  value <<= (~(charAddress&3) ) << 3;  // The "~()" is because the endianess
  wordValue &= ~mask;
  wordValue |= value;
  *wordPointer = wordValue;
  return wordValue;
}

