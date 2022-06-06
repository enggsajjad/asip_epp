

/* WARNING !!!
 * Before running, you have to outcomment the "jr r31" assembler
 * instruction at the end of the main. Outcommenting this instruction
 * will lead to a clean termination of the program. If you don't
 * outcomment it, the jr will jump to an 'address' that was over-
 * written by a test pattern if the stack area was inside the address
 * range of the test.
 */

// TODO: Warnung: dlxsim anders als Hardware
// TODO: Info: Stack Zugriffe gehen auch an label heapend+x
// TODO: Info: Wie läuft der Test ab? errorNumber erklären
// TODO: wie teste ich lh und nicht nur lhu?
// TODO: Info: Compileroption -O4 braucht nur 0,54% der Takte von -O0, der Code ist aber deutlich(!) länger

#define NUMBER_OF_PATTERNS 5
int pattern[NUMBER_OF_PATTERNS] = {0xAAAAAAAA, 0x12345678, 0x87654321, 0xF0F0F0F0, 0x0F0F0F0F};

#define START_ADDRESS 0x6000
#define   END_ADDRESS 0xFFFF

int errorNumber = 42; // dummy value to make sure that a 0 (passed) or 1 (failed) really has been written to this address at the end
int heapEnd = 0; // this label is only used to indicate in dlxsim where the heap ends

int main() {
  int addressCounter;
  int startPattern, patternNumber;
  unsigned int* wordPointer;
  unsigned short* shortPointer;
  unsigned char* bytePointer;
  unsigned int intPattern;
  unsigned short shortPattern;
  unsigned char bytePattern;

  for (startPattern=0; startPattern < (int)NUMBER_OF_PATTERNS; startPattern++) {

    // Write Word-Data
    patternNumber = startPattern;
    wordPointer = (unsigned int*)(START_ADDRESS);
    for (addressCounter=START_ADDRESS; addressCounter <= END_ADDRESS; addressCounter++) {
      intPattern = (unsigned int)pattern[patternNumber];
      *wordPointer++ = intPattern;
      if (++patternNumber >= NUMBER_OF_PATTERNS) patternNumber = 0;
    }

    // Test Word-Data
    patternNumber = startPattern;
    wordPointer = (unsigned int*)(START_ADDRESS);
    for (addressCounter=START_ADDRESS; addressCounter <= END_ADDRESS; addressCounter++) {
      intPattern = (unsigned int)pattern[patternNumber];
      if (*wordPointer++ != intPattern) goto error;
      if (++patternNumber >= NUMBER_OF_PATTERNS) patternNumber = 0;
    }


    // Write Short-Data
    patternNumber = startPattern;
    shortPointer = (unsigned short*)(START_ADDRESS);
    for (addressCounter=START_ADDRESS; addressCounter <= END_ADDRESS; addressCounter++) {
      shortPattern = (unsigned short)(pattern[patternNumber] & 0xFFFF);
      *shortPointer++ = shortPattern;
      if (++patternNumber >= NUMBER_OF_PATTERNS) patternNumber = 0;
      shortPattern = (unsigned short)(pattern[patternNumber] & 0xFFFF);
      *shortPointer++ = shortPattern;
      if (++patternNumber >= NUMBER_OF_PATTERNS) patternNumber = 0;
    }

    // Test Short-Data
    patternNumber = startPattern;
    shortPointer = (unsigned short*)(START_ADDRESS);
    for (addressCounter=START_ADDRESS; addressCounter <= END_ADDRESS; addressCounter++) {
      shortPattern = (unsigned short)(pattern[patternNumber] & 0xFFFF);
      if (*shortPointer++ != shortPattern) goto error;
      if (++patternNumber >= NUMBER_OF_PATTERNS) patternNumber = 0;
      shortPattern = (unsigned short)(pattern[patternNumber] & 0xFFFF);
      if (*shortPointer++ != shortPattern) goto error;
      if (++patternNumber >= NUMBER_OF_PATTERNS) patternNumber = 0;
    }


    // Write Byte-Data
    patternNumber = startPattern;
    bytePointer = (unsigned char*)(START_ADDRESS);
    for (addressCounter=START_ADDRESS; addressCounter <= END_ADDRESS; addressCounter++) {
      bytePattern = (unsigned char)(pattern[patternNumber] & 0xFF);
      *bytePointer++ = bytePattern;
      if (++patternNumber >= NUMBER_OF_PATTERNS) patternNumber = 0;
      bytePattern = (unsigned char)(pattern[patternNumber] & 0xFF);
      *bytePointer++ = bytePattern;
      if (++patternNumber >= NUMBER_OF_PATTERNS) patternNumber = 0;
      bytePattern = (unsigned char)(pattern[patternNumber] & 0xFF);
      *bytePointer++ = bytePattern;
      if (++patternNumber >= NUMBER_OF_PATTERNS) patternNumber = 0;
      bytePattern = (unsigned char)(pattern[patternNumber] & 0xFF);
      *bytePointer++ = bytePattern;
      if (++patternNumber >= NUMBER_OF_PATTERNS) patternNumber = 0;
    }

    // Test Byte-Data
    patternNumber = startPattern;
    bytePointer = (unsigned char*)(START_ADDRESS);
    for (addressCounter=START_ADDRESS; addressCounter <= END_ADDRESS; addressCounter++) {
      bytePattern = (unsigned char)(pattern[patternNumber] & 0xFF);
      if (*bytePointer++ != bytePattern) goto error;
      if (++patternNumber >= NUMBER_OF_PATTERNS) patternNumber = 0;
      bytePattern = (unsigned char)(pattern[patternNumber] & 0xFF);
      if (*bytePointer++ != bytePattern) goto error;
      if (++patternNumber >= NUMBER_OF_PATTERNS) patternNumber = 0;
      bytePattern = (unsigned char)(pattern[patternNumber] & 0xFF);
      if (*bytePointer++ != bytePattern) goto error;
      if (++patternNumber >= NUMBER_OF_PATTERNS) patternNumber = 0;
      bytePattern = (unsigned char)(pattern[patternNumber] & 0xFF);
      if (*bytePointer++ != bytePattern) goto error;
      if (++patternNumber >= NUMBER_OF_PATTERNS) patternNumber = 0;
    }

  }
  errorNumber = 0;
  return 0;

 error:
  errorNumber = 1;
  return 0;
}
