#define COSY
#include "loadStoreByte.h"

asm int putChar(int ch) {
  @[.barrier]
  nop
  nop
  nop
  putc @{ch}
}

int putString(char* stringPointer) {
  int ch;
  do {
    ch = loadByteUnsigned(stringPointer++);
    putChar(ch);
  } while (ch != '\0');
  return 0;
}

#define LENGTH 13
char string1[] = "Hallo Welt\n\0\0\0";
char string2[] = "Guten Tag!\n\0\0";
char ch = 0xFF;
int signedch;

int main() {
  int i;

  // Test loadByteSigned
  signedch = loadByteSigned(&ch);

  // Test Load- Store-Byte
  putString(string1);
  for (i=0; i<LENGTH; i++) {
    storeByte(string1+i, loadByteUnsigned(string2+i) );
  }
  putString(string1);

  return 0;
}
