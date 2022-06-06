#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define LENGTH 1024

char buf[LENGTH];

int main(int argc, char** argv) {
  int lineCounter = 0;
  int n, i;
  char* separator = "";
  char* outputFileName;
  FILE* inputFile;
  FILE* outputFile;

  if (argc != 2 && argc != 3) {
    printf("ERROR: Enter the FileName of the adpcm binary as parameter\n");
    printf("       optional: enter the parameter of the output-file as second parameter.\n");
    printf("       default value is: \"'inputFileName'.h\"\n");
    return -1;
  }

  if (argc == 2) {
    outputFileName = (char*)malloc( (strlen(argv[1])+5)*sizeof(char) );
    strcpy(outputFileName, argv[1]);
    strcat(outputFileName, ".h");
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

  fprintf(outputFile, "unsigned char adpcmData[] = {\n");
  while(1) {
    n = fread(buf, sizeof(buf[0]), LENGTH, inputFile);
    if ( n < 0 ) {
      perror("input file");
      return 1;
    }
    if ( n == 0 ) break;
    for (i=0; i<n; i++) {
      fprintf(outputFile, "%s0x%.2X", separator, ((int)buf[i])&0xFF);
      if (lineCounter%10 == 9) separator = ",\n";
      else separator = ", ";
      lineCounter++;
    }
  }
  fprintf(outputFile, "};\n\n");
  fclose(inputFile);
  fclose(outputFile);
  return 0;
}

