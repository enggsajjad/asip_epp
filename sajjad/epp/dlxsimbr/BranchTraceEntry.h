#ifndef BranchTraceEntry__563254735722645874564573734164587457
#define BranchTraceEntry__563254735722645874564573734164587457

#include "dlx.h"

typedef struct BranchTraceEntry {
  int address;
  int jumpTarget;
  //  int index;
  // The index is implicit given by the address in this array
  // As the index value '0' is reserved, the address i corresponds to index i+1
} BranchTraceEntry;


// addBranchTraceEntry() is privat!
//  Take care: Inconsistency of byte-address and word-address between
//  add- and get-BranchTraceEntry for 'address' and 'jumpTarget'!!
//void addBranchTraceEntry(int address, int jumpTarget);

unsigned short getBranchTraceEntry(int address, int jumpTarget);
void addBranchToTraceFile(DLX* machPtr, int address, int jumpTarget);
void writeTraceJumpDictionary(DLX* machPtr);


#endif
