/*
 *  Methods for detecting jump target declarations in the data section
 * and their usage in the text section (use within jumptables switch-case)
 */

#include "JumpTable.h"
#include <stdlib.h>
#include <string.h>

#define DEBUG_LABEL_LIST 0


// ---------------------------------------------------------------------
char** labelList=0;
int sizeOfLabelList=0;
int nextLabelPosition=0;

void addLabelToLabelList(const char* label) {
  char* copiedLabel;
  char** oldLabelList;

#if DEBUG_LABEL_LIST
  int i;
  printf("addLabelToLabelList(\"%s\");\n", label);
#endif
  if (sizeOfLabelList==0) {
    sizeOfLabelList = 10;
    labelList = (char**)malloc(sizeOfLabelList*sizeof(char*));
    memset(labelList, 0, sizeOfLabelList*sizeof(char*));
  } else if (nextLabelPosition==sizeOfLabelList) {
#if DEBUG_LABEL_LIST
    printf("--- RESIZE\n");
#endif
    oldLabelList = labelList;
    labelList = (char**)malloc(2*sizeOfLabelList*sizeof(char*));
    memcpy(labelList, oldLabelList, sizeOfLabelList*sizeof(char*));
    free(oldLabelList);
    memset(labelList+sizeOfLabelList, 0, sizeOfLabelList*sizeof(char*));
    sizeOfLabelList *= 2;
  }
  copiedLabel = (char*)malloc((strlen(label)+1)*sizeof(char));
  strcpy(copiedLabel, label);
  labelList[nextLabelPosition++] = copiedLabel;

#if DEBUG_LABEL_LIST
  printf("LabelList: ");
  for (i=0; i<nextLabelPosition; i++) {
    printf("%s, ", labelList[i]);
  }
  printf("\n");
#endif
}


int isLabelInLabelList(const char* label) {
  int i;
  for (i=0; i<nextLabelPosition; i++) {
    if (strcmp(label, labelList[i]) == 0) return 1;
  }
  return 0;
}

void freeLabelList() {
  int i;
  // TODO
  for (i=0; i<nextLabelPosition; i++) {
    free(labelList[i]);
  }
  free(labelList);
  labelList = 0;
}




// ---------------------------------------------------------------------
#define DEBUG_JUMP_TABLES 0

typedef struct JumpTable {
  char* baseBlockStart;
  char* labelOfJumpTable;
  char** jumpTargets;
  int jumpTargetsSize;
  int jumpTargetsNext;
} JumpTable;

JumpTable* jumpTable;
int jumpTableSize=0;
int jumpTableNext=0;


void addLabelToJumpTargetList(const char* labelOfJumpTable, const char* jumpTarget) {
  JumpTable* oldJumpTable;
  char** oldJumpTargets;
  int i, j;
#if DEBUG_JUMP_TABLES
  printf("addLabelToJumpTargetList(\"%s\", \"%s\");\n", labelOfJumpTable, jumpTarget);
#endif
  if (jumpTableSize==0) {
    jumpTableSize=10;
    jumpTable = (JumpTable*)malloc(jumpTableSize*sizeof(JumpTable));
    memset(jumpTable, 0, jumpTableSize*sizeof(JumpTable));
  }

  // Test, whether this jumpTable is allready in the list
  for (i=0; i<jumpTableNext; i++) {
    if (strcmp(jumpTable[i].labelOfJumpTable, labelOfJumpTable)==0) {
      //      printf("  JumpTable starting at \"%s\" is allready in the list.\n", labelOfJumpTable);
      // The jumpTable is in the list. Check whether the jump target is allready in it's list
      for (j=0; j<jumpTable[i].jumpTargetsNext; j++) {
	if (strcmp(jumpTable[i].jumpTargets[j], jumpTarget)==0) return;
      }
      // Add the jump target
      if (jumpTable[i].jumpTargetsNext>=jumpTable[i].jumpTargetsSize) {
#if DEBUG_JUMP_TABLES
	printf("---RESIZE JUMPTARGET\n");
#endif
	oldJumpTargets = jumpTable[i].jumpTargets;
	jumpTable[i].jumpTargets = (char**)malloc(2*jumpTable[i].jumpTargetsSize*sizeof(char*));
	memcpy(jumpTable[i].jumpTargets, oldJumpTargets, jumpTable[i].jumpTargetsSize*sizeof(char*));
	free(oldJumpTargets);
	memset(jumpTable[i].jumpTargets+jumpTable[i].jumpTargetsSize, 0, jumpTable[i].jumpTargetsSize*sizeof(char*));
	jumpTable[i].jumpTargetsSize *= 2;
      }
      jumpTable[i].jumpTargets[jumpTable[i].jumpTargetsNext] = (char*)malloc((strlen(jumpTarget)+1)*sizeof(char));
      strcpy(jumpTable[i].jumpTargets[jumpTable[i].jumpTargetsNext], jumpTarget);
      jumpTable[i].jumpTargetsNext++;
      return;
    }
  }

  // This jumpTable is not in this list, so add it, but first make sure we can add another jumpTable
  if (jumpTableNext>=jumpTableSize) {
#if DEBUG_JUMP_TABLES
    printf("---RESIZE JUMPTABLE\n");
#endif
    oldJumpTable = jumpTable;
    jumpTable = (JumpTable*)malloc(2*jumpTableSize*sizeof(JumpTable));
    memcpy(jumpTable, oldJumpTable, jumpTableSize*sizeof(JumpTable));
    free(oldJumpTable);
    memset(jumpTable+jumpTableSize, 0, jumpTableSize*sizeof(JumpTable));
    jumpTableSize *= 2;
  }
  // Check whether the jump target is allready in it's list
  for (j=0; j<jumpTable[i].jumpTargetsNext; j++) {
    if (strcmp(jumpTable[i].jumpTargets[j], jumpTarget)==0) return;
  }
  // add the jump target
  jumpTable[jumpTableNext].labelOfJumpTable = (char*)malloc((strlen(labelOfJumpTable)+1)*sizeof(char));
  strcpy(jumpTable[jumpTableNext].labelOfJumpTable, labelOfJumpTable);
  jumpTable[jumpTableNext].jumpTargetsSize = 10;
  jumpTable[jumpTableNext].jumpTargets = (char**)malloc(jumpTable[jumpTableNext].jumpTargetsSize*sizeof(char*));
  memset(jumpTable[jumpTableNext].jumpTargets, 0, jumpTable[jumpTableNext].jumpTargetsSize*sizeof(char*));
  jumpTable[jumpTableNext].jumpTargets[0] = (char*)malloc((strlen(jumpTarget)+1)*sizeof(char));
  strcpy(jumpTable[jumpTableNext].jumpTargets[0], jumpTarget);
  jumpTable[jumpTableNext].jumpTargetsNext++;
  jumpTableNext++;
}


int isLabelAJumpTable(const char* label) {
  int i;
  for (i=0; i<jumpTableNext; i++) {
    if (strcmp(label, jumpTable[i].labelOfJumpTable) == 0) return 1;
  }
  return 0;
}


void printJumpTable(const char* label) {
  int i, j;
  char* separator="";
  for (i=0; i<jumpTableNext; i++) {
    if (strcmp(label, jumpTable[i].labelOfJumpTable) == 0) {
      for (j=0; j<jumpTable[i].jumpTargetsNext; j++) {
	printf("%s%s", separator, jumpTable[i].jumpTargets[j]);
	separator = ", ";
      }
      printf("\n");
      return;
    }
  }
}



// ---------------------------------------------------------------------
typedef struct JumpTableUsage {
  char* baseBlockLabel;
  char* jumpTableLabel;
} JumpTableUsage;

JumpTableUsage* jtUsages_List=0;
int jtUsages_Size=0;
int jtUsages_Next=0;

void addJumpTableUsage(const char* bbLabel, const char* jtLabel) {
  JumpTableUsage* jtUsages_OldList;
  //printf("addJumpTableUsage(\"%s\", \"%s\");\n", bbLabel, jtLabel);
  if (jtUsages_Size==0) {
    jtUsages_Size=10;
    jtUsages_List = (JumpTableUsage*)malloc(jtUsages_Size*sizeof(JumpTableUsage));
    memset(jtUsages_List, 0, jtUsages_Size*sizeof(JumpTableUsage));
  }

  if (jtUsages_Next >= jtUsages_Size) {
    //printf("---RESIZE JUMPTABLEUSAGES\n");
    jtUsages_OldList = jtUsages_List;
    jtUsages_List = (JumpTableUsage*)malloc(2*jtUsages_Size*sizeof(JumpTableUsage));
    memcpy(jtUsages_List, jtUsages_OldList, jtUsages_Size*sizeof(JumpTableUsage));
    free(jtUsages_OldList);
    memset(jtUsages_List+jtUsages_Size, 0, jtUsages_Size*sizeof(JumpTableUsage));
    jtUsages_Size *= 2;
  }

  jtUsages_List[jtUsages_Next].baseBlockLabel = (char*)malloc( (1+strlen(bbLabel)) * sizeof(char));
  strcpy(jtUsages_List[jtUsages_Next].baseBlockLabel, bbLabel);
  jtUsages_List[jtUsages_Next].jumpTableLabel = (char*)malloc( (1+strlen(jtLabel)) * sizeof(char));
  strcpy(jtUsages_List[jtUsages_Next].jumpTableLabel, jtLabel);
  jtUsages_Next++;
}

int getNumberOfJumpTableUsages() {
  return jtUsages_Next;
}

void printJumpTableUsage(FILE* outFile, int number) {
  int i, j;
  char* separator="";
  if (number>=jtUsages_Next) return;
  fprintf(outFile, "%s\t", jtUsages_List[number].baseBlockLabel);

  for (i=0; i<jumpTableNext; i++) {
    if (strcmp(jumpTable[i].labelOfJumpTable, jtUsages_List[number].jumpTableLabel) == 0) {
      for (j=0; j<jumpTable[i].jumpTargetsNext; j++) {
	fprintf(outFile, "%s%s", separator, jumpTable[i].jumpTargets[j]);
	separator = ", ";
      }
      return;
    }
  }
}
