#include "qsort.h"
#include <stdlib.h>
#include <stdio.h>

entry **internalSortArray = 0;
entry tempEntry;
int internalSortArraySize = 0;
int addPosition = 0;

int initializeSortArray(unsigned int size) {
  unsigned int i, j;

  if (internalSortArray != 0) {
    for (i=0; i<internalSortArraySize; i++) free(internalSortArray[i]);
    free(internalSortArray);
    internalSortArray = 0;
  }
  internalSortArray = (entry**)malloc(sizeof(entry*) * size);
  if (internalSortArray==0) return -1;
  for (i=0; i<size; i++) {
    internalSortArray[i] = (entry*)malloc(sizeof(entry));
    if (internalSortArray[i]==0) {
      for (j=0; j<i; j++) free(internalSortArray[j]);
      free(internalSortArray);
      internalSortArray = 0;
      return -1;
    }
    internalSortArray[i]->lineCounterMin = -1;
    internalSortArray[i]->lineCounterMax = -1 ;
    internalSortArray[i]->lineNumberFrom = -1;
    internalSortArray[i]->lineNumberTo = -1;
  }
  internalSortArraySize = size;
  addPosition = 0;
  return 0;
}

void addEntry(int lineNumberFrom, int lineNumberTo, int lineCounterMin, int lineCounterMax) {
  /*  printf("addEntry: Position:%i, lineNumberFrom:%i, lineNumberTo:%i lineCounterMin:%i lineCounterMax:%i\n", addPosition, lineNumberFrom, lineNumberTo, lineCounterMin, lineCounterMax);*/
  internalSortArray[addPosition]->lineCounterMax = lineCounterMax;
  internalSortArray[addPosition]->lineCounterMin = lineCounterMin;
  internalSortArray[addPosition]->lineNumberFrom = lineNumberFrom;
  internalSortArray[addPosition]->lineNumberTo = lineNumberTo;
  addPosition++;
}

entry* getEntry(int position) {
  return internalSortArray[position];
}


void assignEntry(entry *target, entry* source) {
  /* ACHTUNG: Die Ausgabe zeigt häufig falsche Werte an !! */
  /*  if (source==&tempEntry) printf("assignEntry: from temp to %u\n", target-internalSortArray[0]);
  else if (target==&tempEntry) printf("assignEntry: from %u to temp\n", source-internalSortArray[0]);
  else printf("assignEntry: from %u to %u\n", source-internalSortArray[0], target-internalSortArray[0]);*/
  target->lineCounterMin = source->lineCounterMin;
  target->lineCounterMax = source->lineCounterMax;
  target->lineNumberFrom = source->lineNumberFrom;
  target->lineNumberTo = source->lineNumberTo;
}


void exchangeEntries(unsigned int a, unsigned int b) {
  /*  printf("ExchangeEntries(%i, %i);\n", a, b);*/
  assignEntry(&tempEntry, internalSortArray[a]);
  assignEntry(internalSortArray[a], internalSortArray[b]);
  assignEntry(internalSortArray[b], &tempEntry);
}

/* return >0 iff o1>o2 */
int compareTo(entry *o1, entry *o2, int column) {
  /*  printf("compareTo( (%i %i %i), (%i %i %i) ); // (counterMax, counterMin, lineFrom)\n", 
	 o1->lineCounterMax, o1->lineCounterMin, o1->lineNumberFrom,
	 o2->lineCounterMax, o2->lineCounterMin, o2->lineNumberFrom);*/
  switch (column) {
    case 0: if (o1->lineCounterMax > o2->lineCounterMax) return 1;
            else if (o1->lineCounterMax < o2->lineCounterMax) return -1;
            break;
    case 1: if (o1->lineNumberFrom < o2->lineNumberFrom) return 2;
            else if (o1->lineNumberFrom > o2->lineNumberFrom) return -2;
            break;
    case 2: if (o1->lineNumberTo-o1->lineNumberFrom > o2->lineNumberTo-o2->lineNumberFrom) return 3;
            else if (o1->lineNumberTo-o1->lineNumberFrom < o2->lineNumberTo-o2->lineNumberFrom) return -3;
            break;
  }
  if      (o1->lineCounterMax > o2->lineCounterMax) return 1;
  else if (o1->lineCounterMax < o2->lineCounterMax) return -1;
  else if (o1->lineNumberFrom < o2->lineNumberFrom) return 2;
  else if (o1->lineNumberFrom > o2->lineNumberFrom) return -2;
  else if (o1->lineNumberTo-o1->lineNumberFrom > o2->lineNumberTo-o2->lineNumberFrom) return 3;
  else if (o1->lineNumberTo-o1->lineNumberFrom < o2->lineNumberTo-o2->lineNumberFrom) return -3;
  return 0;
}


/* quickSort (result is sorted decreasing) */
void sortArray(int l, int r, int column) {
  /*  printf("sortArray(%i, %i, %i)\n", l, r, column);*/
  int pos, i, j;
  entry *compareEntry;

  if (l<r) {
    compareEntry = internalSortArray[l];
    i = l-1;
    j = r+1;
    while (1) {
      do j--; while (compareTo(internalSortArray[j], compareEntry, column) < 0);
      do i++; while (compareTo(internalSortArray[i], compareEntry, column) > 0);
      if (i<j) exchangeEntries(i, j);
      else {
	pos = j;
	break;
      }
    }
    sortArray(l, pos, column);
    sortArray(pos+1, r, column);
  } 
}
