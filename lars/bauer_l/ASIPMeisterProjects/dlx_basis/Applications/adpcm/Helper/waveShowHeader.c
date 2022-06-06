#include <stdio.h>

#include "waveSupport.h"

#define BUFFER_SIZE 1024
char buffer[BUFFER_SIZE];

int main(int argc, char** argv) {
  int headerError;
  struct waveHeader header;
  FILE* inputFile;

  if (argc != 2) {
    printf("ERROR: parameter:  Wave filename\n");
    return -1;
  }

  inputFile = fopen(argv[1], "rb");
  if (inputFile == 0) {
    printf("ERROR while opening file \"%s\" for parsing the header!\n", argv[2]);
    fclose(inputFile);
    return -1;
  }

  headerError = readWaveHeader(inputFile, &header);
  if ( headerError > 0) {
    printf("ERROR: Reading the Wave-Header from file \"%s\"! Error Number: %i\n", argv[2], headerError);
    return headerError;
  }
  printWaveHeader(&header);
  fclose(inputFile);

  return 0;
}
  
