#define COSY

dummyCall() {}

int intVar = 0xFF000000;
unsigned int uintVar = 0xFF000000;

int intResult;
unsigned int uintResult;

int main() {

  intResult = intVar >> 24;
  uintResult = intVar >> 24;
#ifndef COSY
  printf("intResult: %i; uintResult: %u\n", intResult, uintResult);
  // intResult: -1; uintResult: 4294967295
#endif

  dummyCall();

  intResult = uintVar >> 24;
  uintResult = uintVar >> 24;
#ifndef COSY
  printf("intResult: %i; uintResult: %u\n", intResult, uintResult);
  // intResult: 255; uintResult: 255
#endif

  return 0;
}
