#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "waveSupport.h"

#define BUFFER_SIZE 1024
char buffer[BUFFER_SIZE];

int main(int argc, char** argv) {
  char* outputFileName;
  int headerError, position, n, lengthOfDataBlock, ch;
  struct waveHeader header;
  FILE* inputBinaryFile;
  FILE* inputHeaderFile;
  FILE* outputFile;

  if (argc != 3 && argc != 4) {
    printf("ERROR: First parameter:  The file name of the binary-file\n");
    printf("       Second parameter: The file name of the file with the wave header.\n");
    printf("                         This header will be copied to the binary file.\n");
    printf("       Third parameter (optional): the file name of the output file.\n");
    printf("                         default value:  \"'inputBinaryFileName'.wav\"\n");
    return -1;
  }

  if (argc == 3) {
    outputFileName = (char*)malloc( (strlen(argv[1])+5)*sizeof(char) );
    strcpy(outputFileName, argv[1]);
    strcat(outputFileName, ".wav");
  } else {
    outputFileName=argv[3];
  }

  inputBinaryFile = fopen(argv[1], "rb");
  if (inputBinaryFile == 0) {
    printf("ERROR in while opening file \"%s\" for reading!\n", argv[1]);
    return -1;
  }

  inputHeaderFile = fopen(argv[2], "rb");
  if (inputHeaderFile == 0) {
    printf("ERROR while opening file \"%s\" for parsing the header!\n", argv[2]);
    fclose(inputBinaryFile);
    return -1;
  }

  outputFile = fopen(outputFileName, "w");
  if (outputFile == 0) {
    printf("ERROR while opening file \"%s\" for writing!\n", outputFileName);
    fclose(inputBinaryFile);
    fclose(inputHeaderFile);
    return -1;
  }

  headerError = readWaveHeader(inputHeaderFile, &header);
  if ( headerError > 0) {
    printf("ERROR: Reading the Wave-Header from file \"%s\"! Error Number: %i\n", argv[2], headerError);
    return headerError;
  }
  printWaveHeader(&header);
  fclose(inputHeaderFile);

  inputHeaderFile = fopen(argv[2], "rb");
  if (inputHeaderFile == 0) {
    printf("ERROR while opening file \"%s\" for copying the header!\n", argv[2]);
    fclose(inputBinaryFile);
    return -1;
  }

  // copying the header. We simply search for the keyword "data" in the header file.
  // It's existance is known due to the previous successfully call of 'readWaveHeader'.
  // We hope that the string 'data' does not appear anywhere else in the header part.
  // We should correct the values for the lenght of the data chunk and the overall file, but we currently don't.
  position=1;
  while (position != 5) {
    ch = fgetc(inputHeaderFile);
    fputc(ch, outputFile);
    //printf("ch='%c' (%i); position=%i\n", ch, ch, position);
    if (ch==EOF) {
      printf("ERROR: data chunk not found, although the 'readWaveHeader' method returned without error!\n");
      return 5;
    }
    switch (position) {
      case 1: if (ch=='d') position=2;
	      break;
      case 2: if (ch=='a') position=3;
              else if (ch=='d') position=2;
              else position=1;
	      break;
      case 3: if (ch=='t') position=4;
              else if (ch=='d') position=2;
              else position=1;
	      break;
      case 4: if (ch=='a') position=5;
              else if (ch=='d') position=2;
              else position=1;
	      break;
    }
  }
  fread(&lengthOfDataBlock, 4, 1, inputHeaderFile);
  fwrite(&lengthOfDataBlock, 4, 1, outputFile);
  fclose(inputHeaderFile);

  while (1) {
    n = fread(buffer, sizeof(char), BUFFER_SIZE, inputBinaryFile);
    if ( n == 0 ) break;
    fwrite(buffer, sizeof(char), n, outputFile);
  }

  fclose(inputBinaryFile);
  fclose(outputFile);
  return 0;
}
  
