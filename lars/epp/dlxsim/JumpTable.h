#ifndef __JumpTable_34qdp59txu5esz89jaxpm98vzumweuzcmv8ohrsufz9d5jveszu8
#define __JumpTable_34qdp59txu5esz89jaxpm98vzumweuzcmv8ohrsufz9d5jveszu8

#include <stdio.h>

/*
 *  Methods for detecting jump target declarations in the data section
 * and their usage in the text section (use within jumptables switch-case)
 */

void addLabelToLabelList(const char* label);
int isLabelInLabelList(const char* label);
void freeLabelList();

void addLabelToJumpTargetList(const char* labelOfJumpTable, const char* jumpTarget);
int isLabelAJumpTable(const char* label);
void printJumpTable(const char* label);

void addJumpTableUsage(const char* bbLabel, const char* jtLabel);
int getNumberOfJumpTableUsages();
void printJumpTableUsage(FILE* outFile, int number);

#endif
