#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "waveSupport.h"

#define BUFFER_SIZE 1024
char buffer[BUFFER_SIZE];

int main(int argc, char** argv) {
  char* outputFileName;
  int headerError, n;
  struct waveHeader header;
  FILE* inputFile;
  FILE* outputFile;

  if (argc != 2 && argc != 3) {
    printf("ERROR: Enter the FileName of the wave-file as parameter\n");
    printf("       optional: enter the parameter of the output-file as second parameter.\n");
    printf("       default value is: \"'input FileName'.bin\"\n");
    return -1;
  }

  if (argc == 2) {
    outputFileName = (char*)malloc( (strlen(argv[1])+5)*sizeof(char) );
    strcpy(outputFileName, argv[1]);
    strcat(outputFileName, ".bin");
  } else {
    outputFileName=argv[2];
  }

  inputFile = fopen(argv[1], "rb");
  outputFile = fopen(outputFileName, "w");
  if (inputFile == 0) {
    printf("ERROR while opening file \"%s\" for reading!\n", argv[1]);
    return -1;
  }
  if (outputFile == 0) {
    printf("ERROR while opening file \"%s\" for writing!\n", outputFileName);
    fclose(inputFile);
    return -1;
  }
  headerError = readWaveHeader(inputFile, &header);
  if ( headerError > 0) {
    printf("ERROR: Reading the Wave-Header! Error Number: %i\n", headerError);
    return headerError;
  }
  printWaveHeader(&header);

  while (1) {
    n = fread(buffer, sizeof(char), BUFFER_SIZE, inputFile);
    if ( n == 0 ) break;
    fwrite(buffer, sizeof(char), n, outputFile);
  }

  fclose(inputFile);
  fclose(outputFile);
  return 0;
}
  
