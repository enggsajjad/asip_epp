
/* ABOUT: When compiled/started with gcc this program generates TestData files, which can
 * then be used to initialize the BRAM. When compiled with CoSy the program can be used
 * to verify, whether the BRAM initialization was correct.
 */

/* WARNING: Configure the stackStart.sh such that the test area (START_ADDRESS to END_ADDRESS) is not overwriting the stack
 */

/* SIMULATING WITH DLXSIM:
 * 1. Compile with mkimg, memoryTest2.dlxsim is created.
 * 2. Open this file in dlxsim and remeber "Biggest used address for Data Section (word aligned)" (called MaxAddr) which is printed, after file is loaded.
 * 3. Modify the #define DLXSIM_MAX_ADDR (below) with this value.
 *    * Make sure, that between DLXSIM_MAX_ADDR and START_ADDRESS is a gap which is big enough to contain a little stack
 *      and configure the stack pointer in stackStart.sh to point in this area, e.g. if START_ADDRESS is 'a', then configure
 *      the stack start to 'a-4' and make sure, that DLXSIM_MAX_ADDR is 'a-20' or smaller.
 * 4. Compile with gcc and execute. TestData.dlxsim_generated is created.
 * 5. In shell execute: "cat TestData.dlxsim_generated >> memoryTest2.dlxsim".
 * 6. Open modified memoryTest2.dlxsim in dlxsim and test, whether
 *    * the printed "Biggest used address for Data Section (word aligned)" matches your END_ADDRESS and
 *    * "get _testarea" shows your START_ADDRESS as location.
 * 7. Run simulation in dlxsim and check, whether 0 (passed) or 1 (failed) is stored at "_errornumber".
 */
#define DLXSIM_MAX_ADDR 0x2d0


#ifndef COSY
#include <stdio.h>
#endif

#define SEED 1408985750
#define MULT 113  // better choose a prime here
#define ADD 1  // anything except 0 is fine

// WARNING: These addresses HAVE TO be dividable by 4!
//          BYTE-ADDRESSING !  (both addresses inclusive)
#define START_ADDRESS 0x500
#define END_ADDRESS 0x1000

int errorNumber = 42; // initial dummy value to make sure that a 0 (passed) or 1 (failed) really has been written to this address at the end
int heapEnd = 0; // this label is only used to indicate in dlxsim where the heap ends

int main() {
  unsigned int pseudoRandomNumber;
  int addressCounter;

  // Initialize "TestData.DM_generated" file
#ifndef COSY
  addressCounter = 0;
  FILE* testData = fopen("TestData.DM_generated", "w");
  FILE* dlxsim = fopen("TestData.dlxsim_generated", "w");
  fprintf(dlxsim, "\t.space\t%u\n", START_ADDRESS-DLXSIM_MAX_ADDR-0x4);
  fprintf(dlxsim, "\t.align\t4\n_testArea:\n");
  for(; addressCounter < START_ADDRESS; addressCounter+=4) {
    fprintf(testData, "%.8X %.8X\n", addressCounter, 0);
  }
#else
  int* wordPointer;
#endif

  // Test (CoSy), respetively write (gcc) the pseudoRandomNumbers
  pseudoRandomNumber = SEED;
  for (addressCounter=START_ADDRESS; addressCounter <= END_ADDRESS; addressCounter+=4) {
#ifndef COSY
    fprintf(testData, "%.8X %.8X\n", addressCounter, pseudoRandomNumber);
    fprintf(dlxsim, "\t.data.32\t%u\n", pseudoRandomNumber);
#else
    wordPointer = (int*)addressCounter;
    if (*wordPointer != pseudoRandomNumber) goto error;
#endif
    pseudoRandomNumber = (pseudoRandomNumber*MULT)+ADD;
  }
#ifndef COSY
  fclose(testData);
  fclose(dlxsim);
#endif
  errorNumber = 0;
  return 0;

#ifdef COSY
 error:
  errorNumber = 1;
  return 0;
#endif
}
