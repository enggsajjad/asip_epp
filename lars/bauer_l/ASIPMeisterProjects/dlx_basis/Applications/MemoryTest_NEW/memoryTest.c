#include "lib_lcd.h"
#include "lib_uart.h"

extern int wait (int);

//#define NUMBER_OF_PATTERNS 11
//unsigned int pattern[NUMBER_OF_PATTERNS] = {0xAAAAAAAA, 0x12345678, 0x87654321, 0xF0F0F0F0, 0x0F0F0F0F, 0x54545454, 0x87841166, 0xFF545121, 0xBAFBAC12, 0X64316489, 0Xdeadbeaf};

#define NUMBER_OF_PATTERNS 4
unsigned int pattern[NUMBER_OF_PATTERNS] = {0x03000000, 0x00000000, 0x03000000, 0x00000000};



// SRAM PORT 1 (oberes PCB):
//#define START_ADDRESS 0x4000000
//#define   END_ADDRESS 0x43FFFFC
// SRAM PORT 2 (unteres PCB):
//#define START_ADDRESS 0x5000000
//#define   END_ADDRESS 0x53FFFFC
// BRAM:
//#define START_ADDRESS 0x000A000
//#define   END_ADDRESS 0x000E000


#define START_ADDRESS_1 0x4000000
#define   END_ADDRESS_1 0x400100C
#define START_ADDRESS_2 0x5000000
#define   END_ADDRESS_2 0x500100C


unsigned int errorCounter_thisTest;
unsigned int errorCounter_overall;
unsigned int errorCounter_avg;
unsigned int testNumber;

int refreshScreen(int start_address, int end_address, int patternNumber, int writeDots, int readDots) {
  int i;
  t_restoreLastSavedCursorPosition();
  t_print("\r\nMEMORY TEST (");
  t_printHex(start_address, 8);
  t_print(" - ");
  t_printHex(end_address, 8);
  t_print(")\r\n\r\nErrors (total): ");
  t_printInt(errorCounter_overall);
  t_print("\r\nErrors (test run ");
  t_printInt(testNumber);
  t_print("): ");
  t_printInt(errorCounter_thisTest);
  t_print("\r\nAvg. Errors per test run: ");
  if (testNumber<=0) t_print("-");
  else t_printInt(errorCounter_avg);
  t_print("\r\n\r\n");
  t_print("Pattern ");
  t_printInt(patternNumber);
  t_print(": (");
  t_printHex( (unsigned int)pattern[patternNumber], 8);
  t_print(")        \r\nWriting: ");
  for (i=0; i<writeDots; i++) t_print(".");
  t_print("\r\n");
  if (readDots>0) {
    t_print("Reading: ");
    for (i=0; i<readDots; i++) t_print(".");
  }
  return 0;
}

int memoryTest(int start_address, int end_address) {
  int addressCounter;
  int startPattern, patternNumber;
  unsigned int* wordPointer;
  unsigned short* shortPointer;
  unsigned char* bytePointer;
  unsigned int intPattern;
  unsigned short shortPattern;
  unsigned char bytePattern;
  unsigned int readWord;
  int writeDots, readDots;
  

  for (startPattern=0; startPattern < (int)NUMBER_OF_PATTERNS; startPattern++) {
    patternNumber = startPattern;
    refreshScreen(start_address, end_address, startPattern, 0, 0);
  
    // Write Word-Data
    wordPointer = (unsigned int*)(start_address);
    writeDots = 0;
    readDots = 0;
    for (addressCounter=start_address; addressCounter <= end_address; addressCounter+=4) {
      if ( (addressCounter-start_address) % 0xFFFF == 0) { t_print("."); writeDots++; }
      intPattern = (unsigned int)pattern[patternNumber];
      *wordPointer++ = intPattern;
      if (++patternNumber >= NUMBER_OF_PATTERNS) patternNumber = 0;
    }

    // Test Word-Data
    patternNumber = startPattern;
    wordPointer = (unsigned int*)(start_address);
    for (addressCounter=start_address; addressCounter <= end_address; addressCounter+=4) {
      if ( (addressCounter-start_address) % 0xFFFF == 0) { t_print("."); readDots++; }
      intPattern = (unsigned int)pattern[patternNumber];
      readWord = *wordPointer++;
      if (readWord != intPattern) {
        errorCounter_thisTest++;
       	errorCounter_overall++;
        t_print("\r\n\r\nERROR @ Address ");
        t_printHex((unsigned int)wordPointer, 0);
        t_print("\r\n  written=");
        t_printHex(intPattern, 8);
        t_print("\r\n     read=");
        t_printHex(readWord, 8);
        t_print("\r\n      xor=");
        t_printHex((unsigned int)(intPattern^readWord), 8);
        refreshScreen(start_address, end_address, startPattern, writeDots, readDots);

        u_print("ERROR: Test ");
        u_printInt(testNumber);
        u_print(", Addr=");
        u_printHex((unsigned int)wordPointer, 0);
        u_print(", wr=");
        u_printHex(intPattern, 8);
        u_print(", rd=");
        u_printHex(readWord, 8);
        u_print(", xor=");
        u_printHex((unsigned int)(intPattern^readWord), 8);
        u_print("\r\n");
        //wait(1000000);
      }
      if (++patternNumber >= NUMBER_OF_PATTERNS) patternNumber = 0;
    }

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
  

}

int main() {
  errorCounter_overall=0;
  testNumber=0;

  t_print("\f");
  t_saveCursorPosition();
  while(1) {
    errorCounter_thisTest = 0;
    memoryTest( START_ADDRESS_1, END_ADDRESS_1 );
    memoryTest( START_ADDRESS_2, END_ADDRESS_2 );
    t_print("\r\n---- Test ");
    t_printInt(testNumber);
    t_print(" COMPLETED! ----");
    testNumber++;
    errorCounter_avg = errorCounter_overall/testNumber;
    wait(10000000);
    t_print("\r                                ");
  }

  return 0;
}
