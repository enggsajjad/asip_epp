#define COSY
#include "lib_lcd.h"

extern int wait (int);

#define NUMBER_OF_PATTERNS 11
int pattern[NUMBER_OF_PATTERNS] = {0xAAAAAAAA, 0x12345678, 0x87654321, 0xF0F0F0F0, 0x0F0F0F0F, 0x54545454, 0x87841166, 0xFF545121, 0xBAFBAC12, 0X64316489, 0Xdeadbeaf};


#define START_ADDRESS 0x4000000
#define   END_ADDRESS 0x43FFFFC

//#define START_ADDRESS 0x5000000
//#define   END_ADDRESS 0x53FFFFC


// BRAM
//#define START_ADDRESS 0x000A000
//#define   END_ADDRESS 0x000E000

// SRAM PORT 1
//#define START_ADDRESS 0x4000000
//#define   END_ADDRESS 0x43FFFFC

// SRAM PORT 2
//#define START_ADDRESS 0x5000000
//#define   END_ADDRESS 0x53FFFFC

int errorNumber = 42; // dummy value to make sure that a 0 (passed) or 1 (failed) really has been written to this address at the end
int heapEnd = 0; // this label is only used to indicate in dlxsim where the heap ends

unsigned int errorCounter_thisTest=0;
unsigned int errorCounter_overall=0;
unsigned int testNumber=0;

int refreshScreen() {
  t_restoreLastSavedCursorPosition();
  t_print("\r\nMEMORY TEST (");
  t_printHex(START_ADDRESS, 8);
  t_print(" - ");
  t_printHex(END_ADDRESS, 8);
  t_print(")\r\n\r\nErrors (total): ");
  t_printInt(errorCounter_overall);
  t_print("\r\nErrors (test ");
  t_printInt(testNumber);
  t_print("): ");
  t_printInt(errorCounter_thisTest);
  t_print("\r\n\r\n");
  return 0;
}

int main() {
  int addressCounter;
  int startPattern, patternNumber;
  unsigned int* wordPointer;
  unsigned short* shortPointer;
  unsigned char* bytePointer;
  unsigned int intPattern;
  unsigned short shortPattern;
  unsigned char bytePattern;
  unsigned int readWord;

  t_print("\f");
  t_saveCursorPosition();
 start:
  errorCounter_thisTest=0;
  testNumber++;
  for (startPattern=0; startPattern < (int)NUMBER_OF_PATTERNS; startPattern++) {
    refreshScreen();
    t_print("Pattern ");
    t_printInt(startPattern);
    t_print(": (");
    t_printHex( (unsigned int)pattern[patternNumber], 8);
    t_print(")        \r\nWriting: ");

    // Write Word-Data
    patternNumber = startPattern;
    wordPointer = (unsigned int*)(START_ADDRESS);
    for (addressCounter=START_ADDRESS; addressCounter <= END_ADDRESS; addressCounter+=4) {
      if ( (addressCounter-START_ADDRESS) % 0xFFFF == 0) t_print(".");
      intPattern = (unsigned int)pattern[patternNumber];
      *wordPointer++ = intPattern;
      if (++patternNumber >= NUMBER_OF_PATTERNS) patternNumber = 0;
    }

    t_print("\r\nReading: ");
    // Test Word-Data
    patternNumber = startPattern;
    wordPointer = (unsigned int*)(START_ADDRESS);
    for (addressCounter=START_ADDRESS; addressCounter <= END_ADDRESS; addressCounter+=4) {
      if ( (addressCounter-START_ADDRESS) % 0xFFFF == 0) t_print(".");
      intPattern = (unsigned int)pattern[patternNumber];
      readWord = *wordPointer++;
      if (readWord != intPattern) {
	errorCounter_thisTest++;
	t_print("\r\nERROR: Adresse: ");
	t_printHex((unsigned int)wordPointer, 0);
	t_print("\r\n  written: ");
	t_printHex(intPattern, 8);
	t_print("  read: ");
	t_printHex(readWord, 8);
	wait(3000000);
      }
      if (++patternNumber >= NUMBER_OF_PATTERNS) patternNumber = 0;
    }
    t_print("\r\n");

    /*
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
    */

  }

  /*
  errorCounter_overall += errorCounter_thisTest;
  t_print("\r\nTest FERTIG: Fehler In diesem Test: ");
  t_printInt(errorCounter_thisTest);
  t_print("\r\nDuchschnittliche Fehler pro Test: ");
  t_printInt(errorCounter_overall/testNumber);
  t_print("\r\n");
  wait(3000000);
  */
  goto start;

  return 0;
}
