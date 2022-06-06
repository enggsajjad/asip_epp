

/* WARNING !!!
 * Before running, you have to outcomment the "jr r31" assembler
 * instruction at the end of the main. Outcommenting this instruction
 * will lead to a clean termination of the program. If you don't
 * outcomment it, the jr will jump to an 'address' that was over-
 * written by a test pattern if the stack area was inside the address
 * range of the test.
 */

#define NUMBER_OF_PATTERNS 5
int pattern[NUMBER_OF_PATTERNS] = {0xAAAAAAAA, 0x12345678, 0x87654321, 0xF0F0F0F0, 0x0F0F0F0F};

int* START_ADDRESS = (int*)10000;
int* END_ADDRESS = (int*)50000;

int errorFound = 0;

int main() {
  int i;
  int* wordPointer;
  unsigned short* shortPointer;
  unsigned char* bytePointer;
  unsigned int intPattern;
  unsigned short shortPattern;
  unsigned char bytePattern;

  for (wordPointer=(int*)START_ADDRESS; wordPointer<=(int*)END_ADDRESS; wordPointer++) {
    for (i=0; i<NUMBER_OF_PATTERNS; i++) {
      intPattern = (unsigned int)pattern[i];
      shortPattern = (unsigned short)(intPattern&0xFFFF);
      bytePattern = (unsigned char)(intPattern&0xFF);

      // Test Word-Access
      *wordPointer = intPattern;
      if (*wordPointer != intPattern) goto error;

      // Test Short-Access
      shortPointer = (unsigned short*)wordPointer;
      *shortPointer = shortPattern;
      if (*shortPointer++ != shortPattern) goto error;
      *shortPointer = shortPattern;
      if (*shortPointer != shortPattern) goto error;

      // Test Byte-Access
      bytePointer = (unsigned char*)wordPointer;
      *bytePointer = bytePattern;
      if (*bytePointer++ != bytePattern) goto error;
      *bytePointer = bytePattern;
      if (*bytePointer++ != bytePattern) goto error;
      *bytePointer = bytePattern;
      if (*bytePointer++ != bytePattern) goto error;
      *bytePointer = bytePattern;
      if (*bytePointer != bytePattern) goto error;
    }
  }
  return 0;

 error:
  i=0;
  i++;
  i++;
  i++;
  i++;
  errorFound = 1;
  return i;
}
