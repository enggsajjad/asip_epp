#define COSY

#define NUMBER_OF_PATTERNS 6
unsigned char pattern[NUMBER_OF_PATTERNS] = {123,235,12,54,12,235};

#define START_ADDRESS 0x6000
#define   END_ADDRESS 0x6005


int errorNumber = 42; // dummy value to make sure that a 0 (passed) or 1 (failed) really has been written to this address at the end
int heapEnd = 0; // this label is only used to indicate in dlxsim where the heap ends

int main() {
  int addressCounter, patternNumber;
  unsigned char* bytePointer;


  // Write Byte-Data
  bytePointer = (unsigned char*)START_ADDRESS;
  patternNumber = 0;
  for (addressCounter=START_ADDRESS; addressCounter <= END_ADDRESS; addressCounter++) {
    *bytePointer++ = pattern[patternNumber];
    if (++patternNumber >= NUMBER_OF_PATTERNS) patternNumber = 0;
  }

  // Test Byte-Data
  bytePointer = (unsigned char*)(START_ADDRESS);
  patternNumber = 0;
  for (addressCounter=START_ADDRESS; addressCounter <= END_ADDRESS; addressCounter++) {
    if (*bytePointer++ != pattern[patternNumber]) goto error;
    if (++patternNumber >= NUMBER_OF_PATTERNS) patternNumber = 0;
  }


  errorNumber = 0;
  return 0;
  
 error:
  errorNumber = 1;
  return 0;
}
