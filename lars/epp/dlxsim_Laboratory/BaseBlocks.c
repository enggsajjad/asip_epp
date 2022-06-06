#include "BaseBlocks.h"
#include <stdlib.h>
#include <string.h>  /* for memcpy */
#include <stdio.h>


#define DEBUG_NOTIFY 0
void notifyBaseBlocks(unsigned long address, int separatorType, const char* name, const char* jumpTarget, const char* specialInstructions) {
  static unsigned long lastAddress = 0;
  static int lastSeparatorType = -1;
  static char* lastName = 0;
  static const char* lastJumpTarget = 0;
  static const char* lastLabel = 0;
  static const char* lastJumpInstruction;
  char* internalName = 0;
  const char* tempPointer;
  int nameSize=0;

#if DEBUG_NOTIFY
  printf("notifyBaseBlocks(%i, %i, \"%s\", \"%s\", \"%s\") {...}\n", address, separatorType, name, jumpTarget, specialInstructions);
#endif
  for (tempPointer=name; *tempPointer++; nameSize++); /* count the size of the 'name' */
  internalName = (char*)malloc((nameSize+5)*sizeof(char));
  memcpy(internalName, name, nameSize);
  if (separatorType==Separator_Label || separatorType==Separator_Finish) internalName[nameSize++] = ':';
  internalName[nameSize] = '\0';

  if (lastSeparatorType<0) initializeBaseBlockList();

  switch(separatorType) {
    case Separator_Label:
#if DEBUG_NOTIFY
      printf("__LABEL  : %i  %s\n", address, internalName);
#endif
      if (lastSeparatorType>=0) addBaseBlock(lastAddress, lastName, lastJumpTarget, lastLabel, lastJumpInstruction, address-4, internalName, jumpTarget, internalName, jumpTarget, specialInstructions);
      lastLabel = internalName;
      lastJumpInstruction = jumpTarget;
      break;
    case Separator_Jump:
#if DEBUG_NOTIFY
      printf("JUMP   : %i  %s\n", address, internalName);
#endif
      if (lastSeparatorType>=0) addBaseBlock(lastAddress, lastName, lastJumpTarget, lastLabel, lastJumpInstruction, address+4, internalName, jumpTarget, jumpTarget, internalName, specialInstructions);
      lastLabel = jumpTarget;
      lastJumpInstruction = internalName;
      address += 8;  /* +4 wegen DelaySlot und nochmal +4, da es erst mit dem nächsten Befehl weitergeht. */
      break;
  case Separator_Return: /* this will be activated right after a jal(r) */
#if DEBUG_NOTIFY
       printf("RETURN : %i\n", address);
#endif
      break;
    case Separator_Finish:
#if DEBUG_NOTIFY
      printf("START_FINISH : %i %s %s\n", address, lastName, lastLabel);
#endif
      if (lastName!=0) {
#if DEBUG_NOTIFY
        printf("  (lastName!=0)\n");
#endif
        addBaseBlock(lastAddress, lastName, lastJumpTarget, lastLabel, lastJumpInstruction, address, internalName, jumpTarget, internalName, jumpTarget, specialInstructions);
      }
      lastLabel = internalName;
      lastJumpInstruction = jumpTarget;
      break;
    default:
      printf("ERROR: Unknown Separator-Type submitted to \"notifyBaseBlocks\"\n");
      return;
      break;
  }
  
  lastAddress = address;
  lastSeparatorType = separatorType;
  lastName = internalName;
  lastJumpTarget = jumpTarget;
}


void initializeBaseBlockList() {
  int i;

  baseBlockListSize = 50;
  baseBlockList = (baseBlock*)malloc(baseBlockListSize*sizeof(baseBlock));
  numberOfBaseBlocks = 0;
  for (i=0; i<baseBlockListSize; i++) {
    baseBlockList[i].executionTime = 0;
  }

  equalLabelsListSize = 20;
  equalLabelsList = (char**)malloc(equalLabelsListSize*sizeof(char*));
  for (i=0; i<equalLabelsListSize; i++) {
    equalLabelsList[i] = 0;
  }
  numberOfEqualLabels = 0;
}


void addBaseBlock(unsigned long startAddress, const char* const startName, const char* const startJumpTarget,
		  const char* const startLabel, const char* const startJumpInstruction, unsigned long endAddress,
		  const char* const endName, const char* const endJumpTarget, const char* const endLabel,
		  const char* const endJumpInstruction, const char* const specialInstructions) {
  baseBlock* newBaseBlockList = 0;
  char** newEqualLabelsList = 0;
  const char* tempPointer = 0;
  int i, size = 0;

  if (startAddress > endAddress) {
    //    printf("__ eq reasons: %i: \"%s\"\t\"%s\" __and__ %i: \"%s\"\t\"%s\"\n", startAddress, startName, startJumpTarget, endAddress, endName, endJumpTarget);

    if (numberOfEqualLabels > equalLabelsListSize) {
      /*    printf("-- Resizing EqualLabelsList\n");*/
      newEqualLabelsList = (char**)malloc(2*equalLabelsListSize*sizeof(char*));
      memcpy(newEqualLabelsList, equalLabelsList, equalLabelsListSize*sizeof(char*) );
      free(equalLabelsList);
      equalLabelsList = newEqualLabelsList;
      equalLabelsListSize *= 2;
    }

    tempPointer = startName;
    while (tempPointer!=0 && *tempPointer++) size++;
    tempPointer = startJumpTarget;
    while (tempPointer!=0 && *tempPointer++) size++;
    tempPointer = endName;
    while (tempPointer!=0 && *tempPointer++) size++;
    tempPointer = endJumpTarget;
    while (tempPointer!=0 && *tempPointer++) size++;
    size += 4; /* some overhead characters (tab, tab, tab, 0) */
    equalLabelsList[numberOfEqualLabels] = (char*)malloc(size*sizeof(char));
    snprintf(equalLabelsList[numberOfEqualLabels], size, "%s\t%s\t%s\t%s", startName, startJumpTarget, endName, endJumpTarget);
    numberOfEqualLabels++;
    return;
  }

  /*
  printf("New BaseBlock found: FROM startAddress:%i startName: \"%s\" startJumpTarget: \"%s\" startLabel:\"%s\"\n\t\t\t  startJumpInstruction: \"%s\"\n",
	 startAddress, startName, startJumpTarget, startLabel, startJumpInstruction);
  printf("                       TO endAddress:%i endName: \"%s\" endJumpTarget: \"%s\" endLabel:\"%s\"\n\t\t\t  endJumpInstruction: \"%s\"\n",
	 endAddress, endName, endJumpTarget, endLabel, endJumpInstruction);
  */
  if (numberOfBaseBlocks >= baseBlockListSize) {
    /*    printf("-- Resizing BaseBlockList\n");*/
    newBaseBlockList = (baseBlock*)malloc(2*baseBlockListSize*sizeof(baseBlock));
    memcpy(newBaseBlockList, baseBlockList, baseBlockListSize*sizeof(baseBlock) );
    free(baseBlockList);
    baseBlockList = newBaseBlockList;
    for (i=baseBlockListSize; i<2*baseBlockListSize; i++) {
      baseBlockList[i].executionTime = 0;
    }
    baseBlockListSize *= 2;
  }
  baseBlockList[numberOfBaseBlocks].startAddress = startAddress;
  baseBlockList[numberOfBaseBlocks].startName = startName;
  baseBlockList[numberOfBaseBlocks].startJumpTarget = startJumpTarget;
  baseBlockList[numberOfBaseBlocks].startLabel = startLabel;
  baseBlockList[numberOfBaseBlocks].startJumpInstruction = startJumpInstruction;
  baseBlockList[numberOfBaseBlocks].endAddress = endAddress;
  baseBlockList[numberOfBaseBlocks].endName = endName;
  baseBlockList[numberOfBaseBlocks].endJumpTarget = endJumpTarget;
  baseBlockList[numberOfBaseBlocks].endLabel = endLabel;
  baseBlockList[numberOfBaseBlocks].endJumpInstruction = endJumpInstruction;
  baseBlockList[numberOfBaseBlocks].specialInstructions = specialInstructions;
  baseBlockList[numberOfBaseBlocks].successingBaseBlocksNumbers_List = 0;
  baseBlockList[numberOfBaseBlocks].successingBaseBlocksCounters_List = 0;
  baseBlockList[numberOfBaseBlocks].successingBaseBlocks_Size = 0;
  baseBlockList[numberOfBaseBlocks].successingBaseBlocks_Position = 0;

  numberOfBaseBlocks++;
}


void printAllBaseBlocks() {
  int i;

  for (i=0; i<numberOfBaseBlocks; i++) {
    printBaseBlock(i);
  }
}


void printBaseBlock(int position) {
  if (position<0 || position>=numberOfBaseBlocks) return;
  printf("BASEBLOCK: StartAddress: %li  %s %s\n", baseBlockList[position].startAddress, baseBlockList[position].startName, baseBlockList[position].startJumpTarget);
  printf("             EndAddress: %li  %s %s\n", baseBlockList[position].endAddress, baseBlockList[position].endName, baseBlockList[position].endJumpTarget);
}

int isAddressBBStart(int imAddress) {
  int i;

  for (i=0; i<numberOfBaseBlocks; i++) {
    if (baseBlockList[i].startAddress==imAddress) return i;
  }
  return -1;
}


// In 'baseBlockNumber' the counter for 'successingBaseBlockNumber' will be increased
//   If this counter for this successor was not existing yet it will be created.
void increaseSuccessingBaseBlockCount(int baseBlockNumber, int successingBaseBlockNumber) {
  int i;
  int oldSize;
  int idx = -1;
  int* localNumbersList  = baseBlockList[baseBlockNumber].successingBaseBlocksNumbers_List;
  int* localCountersList = baseBlockList[baseBlockNumber].successingBaseBlocksCounters_List;

  // First search, whether our lists contains the successing BaseBlock number
  for (i=0; i<baseBlockList[baseBlockNumber].successingBaseBlocks_Position; i++) {
    if (localNumbersList[i] == successingBaseBlockNumber) {
      idx = i;
      break;
    }
  }

  // If our lists do not contain the successing BaseBlock number, we have to add it first
  if (idx < 0) {
    idx = baseBlockList[baseBlockNumber].successingBaseBlocks_Position;

    // if the lists are full we have to resize them
    if (idx >= baseBlockList[baseBlockNumber].successingBaseBlocks_Size) {
      // printf("-- Resizing SuccessingBaseBlocksList\n");
      oldSize = baseBlockList[baseBlockNumber].successingBaseBlocks_Size;

      if (oldSize==0) {  // the list hasn't been created yet.
	// printf("--   Creating SuccessingBaseBlocksList\n");
	localNumbersList  = (int*)malloc(2*sizeof(int));
	localCountersList = (int*)malloc(2*sizeof(int));
	baseBlockList[baseBlockNumber].successingBaseBlocksNumbers_List  = localNumbersList;
	baseBlockList[baseBlockNumber].successingBaseBlocksCounters_List = localCountersList;
	baseBlockList[baseBlockNumber].successingBaseBlocks_Size = 2;
      } else {
	localNumbersList  = (int*)malloc(2*oldSize*sizeof(int));
	localCountersList = (int*)malloc(2*oldSize*sizeof(int));
	memcpy(localNumbersList,  baseBlockList[baseBlockNumber].successingBaseBlocksNumbers_List,  oldSize*sizeof(int) );
	memcpy(localCountersList, baseBlockList[baseBlockNumber].successingBaseBlocksCounters_List, oldSize*sizeof(int) );
	free(baseBlockList[baseBlockNumber].successingBaseBlocksNumbers_List );
	free(baseBlockList[baseBlockNumber].successingBaseBlocksCounters_List);
	baseBlockList[baseBlockNumber].successingBaseBlocksNumbers_List  = localNumbersList;
	baseBlockList[baseBlockNumber].successingBaseBlocksCounters_List = localCountersList;
	baseBlockList[baseBlockNumber].successingBaseBlocks_Size *= 2;
      }
    }

    localNumbersList [idx] = successingBaseBlockNumber;
    localCountersList[idx] = 0;
    baseBlockList[baseBlockNumber].successingBaseBlocks_Position++;
  }

  // Increase the counter
  localCountersList[idx]++;
}
