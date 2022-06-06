#include <stdlib.h>
#include <stdio.h>
#include <string.h>  // for memcpy
#include "BranchTraceEntry.h"


BranchTraceEntry* BranchTraceEntry_Array;
unsigned int BranchTraceEntry_Size = 0;
unsigned int BranchTraceEntry_Position;

#define DEBUG_TRACE_ENTRY 0


void addBranchTraceEntry(int address, int jumpTarget) {
  if (BranchTraceEntry_Size==0) {
#if DEBUG_TRACE_ENTRY
    printf("Create Trace Entry Array\n");
#endif
    BranchTraceEntry_Array = (BranchTraceEntry*)malloc(16*sizeof(BranchTraceEntry));
    BranchTraceEntry_Size = 16;
    BranchTraceEntry_Position = 0;
  }

  if (BranchTraceEntry_Position >= BranchTraceEntry_Size) {
#if DEBUG_TRACE_ENTRY
    printf("Resize Trace Entry Array\n");
#endif
    BranchTraceEntry* BranchTraceEntry_NewArray = (BranchTraceEntry*)malloc(2*BranchTraceEntry_Size*sizeof(BranchTraceEntry));
    memcpy(BranchTraceEntry_NewArray, BranchTraceEntry_Array, BranchTraceEntry_Size*sizeof(BranchTraceEntry) );
    free(BranchTraceEntry_Array);
    BranchTraceEntry_Array = BranchTraceEntry_NewArray;
    BranchTraceEntry_Size *= 2;
  }

  BranchTraceEntry_Array[BranchTraceEntry_Position].address = address;
  BranchTraceEntry_Array[BranchTraceEntry_Position].jumpTarget = jumpTarget;
  BranchTraceEntry_Position++;

  return;
}


unsigned short getBranchTraceEntry(int address, int jumpTarget) {
  unsigned short i;
  address >>= 2;
  jumpTarget >>= 2;
  for (i=0; i<BranchTraceEntry_Size; i++) {
    if (BranchTraceEntry_Array[i].address == address &&
	BranchTraceEntry_Array[i].jumpTarget == jumpTarget) {
#if DEBUG_TRACE_ENTRY
    printf("getBranchTraceEntry: %hi\n", i+1);
#endif
      return i+1;
    }
  }

  // else: not found in the Array:
#if DEBUG_TRACE_ENTRY
    printf("getBranchTraceEntry: not found in the array\n");
#endif

  addBranchTraceEntry(address, jumpTarget);

#if DEBUG_TRACE_ENTRY
  printf("getBranchTraceEntry: Position:%hi From:%i To:%i\n",BranchTraceEntry_Position, address, jumpTarget);
#endif
  return BranchTraceEntry_Position;
}

void addBranchToTraceFile(DLX* machPtr, int address, int jumpTarget) {
  static unsigned int runLengthCounter=1;
  static unsigned short lastEntry=0;

  if (machPtr->traceJumpsFile == 0) return;

  unsigned short traceEntry = getBranchTraceEntry(address, jumpTarget);
#if DEBUG_TRACE_ENTRY
  printf("TRACE: %.8x\t%.8x\n", address/4, jumpTarget/4);
#endif

  if (traceEntry == lastEntry) {
    runLengthCounter++;
  } else {

    if (runLengthCounter == 1) {
      if (lastEntry!=0) fwrite(&lastEntry, sizeof(short), 1, machPtr->traceJumpsFile );
    } else {
      while (runLengthCounter > 0) {
	unsigned short dummy = 0;
	fwrite(&dummy, sizeof(short), 1, machPtr->traceJumpsFile);
	dummy = runLengthCounter & 0xFFFF;
	fwrite(&dummy, sizeof(short), 1, machPtr->traceJumpsFile);
	runLengthCounter >>= 16;
	fwrite(&lastEntry, sizeof(short), 1, machPtr->traceJumpsFile );
      }
    }
    runLengthCounter = 1;
    lastEntry = traceEntry;
  }
}

void writeTraceJumpDictionary(DLX* machPtr) {
  unsigned short i;

  if (machPtr->traceJumpsDictionaryFile == 0) return;

  for (i=0; i<BranchTraceEntry_Position; i++) {
#if DEBUG_TRACE_ENTRY
  printf("writeTraceJumpDictionary: Position:%hi From:%i To:%i\n", i, BranchTraceEntry_Array[i].address, BranchTraceEntry_Array[i].jumpTarget);
#endif
    fwrite(&BranchTraceEntry_Array[i].address, sizeof(int), 1, machPtr->traceJumpsDictionaryFile);
    fwrite(&BranchTraceEntry_Array[i].jumpTarget, sizeof(int), 1, machPtr->traceJumpsDictionaryFile);
  }
  
}
