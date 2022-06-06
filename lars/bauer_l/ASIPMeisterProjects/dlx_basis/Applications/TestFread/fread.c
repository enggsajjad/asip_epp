#include "fread.h"
#include "string.h"
#include "fileData.h"

#ifndef COSY
  #include <stdio.h>
  #include <stdlib.h>
  #define t_print printf
#else
  #include "lib_lcd.h"
#endif

#define DEBUG_FREAD 0


// TODO: make it available...
extern int free(void*);
extern void* malloc(int);


struct MYFILE* myfopen(const char* fileName, const char* mode) { 
  int i;
  int fileNumber=-1;
  struct MYFILE *tempFile;

  for (i=0; i<NUMBER_OF_FILES; i++) {
    if (strcmp(fileNames[i], fileName) == 0) {
      fileNumber = i;
      break;
    }
  }
  if (fileNumber==-1) {
    t_print("ERROR: FILE NOT FOUND: ");
    t_print(fileName);
    t_print("\n");
    return 0;
  }
  if (strcmp(mode, "rb") == 0) {
    t_print("ERROR: UNIMPLEMENTED FOPEN MODE: rb\n");
    return 0;
  }
  if (strcmp(mode, "wb") == 0) {
    t_print("ERROR: UNIMPLEMENTED FOPEN MODE: wb\n");
    return 0;
  }
  if (strcmp(mode, "a") == 0) {
    t_print("ERROR: UNIMPLEMENTED FOPEN MODE: a\n");
    return 0;
  }
  if (strcmp(mode, "r+") == 0) {
    t_print("ERROR: UNIMPLEMENTED FOPEN MODE: r+\n");
    return 0;
  }
  if (strcmp(mode, "w+") == 0) {
    t_print("ERROR: UNIMPLEMENTED FOPEN MODE: w+\n");
    return 0;
  }
  if (strcmp(mode, "a+") == 0) {
    t_print("ERROR: UNIMPLEMENTED FOPEN MODE: a+\n");
    return 0;
  }

  tempFile = (struct MYFILE*)malloc(sizeof(struct MYFILE));
  tempFile->filePointer = filePointers[fileNumber];
  tempFile->fileEndPointer = fileEndPointers[fileNumber];
  tempFile->mode = (char*)malloc(strlen(mode));
  strcpy(tempFile->mode, mode);
  tempFile->fileName = (char*)malloc(strlen(fileName));
  strcpy(tempFile->fileName, fileName);

#if DEBUG_FREAD
  t_print("myfopen: Oeffne Datei '");
  t_print(tempFile->fileName);
  t_print("' mit mode '");
  t_print(tempFile->mode);
  t_print("'\n");
#endif
  return tempFile;
}


int myfread(char* ptr, int size, int nobj, struct MYFILE* stream) {
  int counterpos;
  if (stream==0) {
    t_print("ERROR: FILE NOT OPENED YET\n");
    return 0;
  }
  else
#if DEBUG_FREAD
#ifndef COSY
    printf("myfread: filename: \"%s\", mode: \"%s\", size=%i, nobj=%i, size*nobj=%i\n", stream->filename, stream->mode, size, nobj, size*nobj);
#endif
#endif
  if (index(stream->mode, 'r') == 0) {
    t_print("ERROR: FILE IS NOT OPENED FOR READING: ");
    t_print(stream->fileName);
    t_print("\n");
    return 0;
  }
  else
    for (counterpos=0; counterpos<(size*nobj) && (stream->filePointer)<(stream->fileEndPointer); counterpos++, stream->filePointer++) {
#if DEBUG_FREAD
      t_print("in read schleife\n");
#endif
      ptr[counterpos]=*(stream->filePointer);
    }
#if DEBUG_FREAD
#ifndef COSY
  printf("counterpos= %d\n",counterpos);
#endif
#endif
  return counterpos;
}

int myfwrite(char* ptr, int size, int nobj, struct MYFILE* stream) {
  int counterpos;
  if (stream==0) {
    t_print("ERROR: FILE NOT OPENED YET\n");
    return 0;
  }
  else
#if DEBUG_FREAD
#ifndef COSY
    printf("myfwrite: filename: \"%s\", mode: \"%s\" size=%i, nobj=%i\n", stream->fileName, stream->mode, size, nobj);
#endif
#endif
  if (index(stream->mode, 'w') == 0) {
    t_print("ERROR: FILE IS NOT OPENED FOR WRITING: ");
    t_print(stream->fileName);
    t_print("\n");
#if DEBUG_FREAD
#ifndef COSY
    printf("  mode: \"%s\", index: %i\n", stream->mode, (int)index(stream->mode, 'w') );
#endif
#endif
    return 0;
  }
  else
#if DEBUG_FREAD
    t_print("vor forschleife\n");
#endif
  for (counterpos=0; counterpos<(size*nobj) && (stream->filePointer)<(stream->fileEndPointer); counterpos++, stream->filePointer++) {
#if DEBUG_FREAD
    t_print("in forschleife\n");
#endif
    *(stream->filePointer)=ptr[counterpos];
  }
  return 0;
}

void myfclose(struct MYFILE* stream) {
  free(stream->mode);
  free(stream->fileName);
  free(stream);
}

