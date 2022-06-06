#ifndef _QSORT_H
#define _QSORT_H

typedef struct {
  int lineCounterMin;
  int lineCounterMax;
  int lineNumberFrom;
  int lineNumberTo;
} entry;

extern int initializeSortArray(unsigned int size);
extern void addEntry(int lineNumberFrom, int lineNumberTo, int lineCounterMin, int lineCounterMax);
extern entry* getEntry(int position);
extern void sortArray(int l, int r, int column);

#endif
