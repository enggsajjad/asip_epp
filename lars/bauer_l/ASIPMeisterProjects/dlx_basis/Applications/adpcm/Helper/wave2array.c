#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "waveSupport.h"

int main(int argc, char** argv) {
  char* outputFileName;

  if (argc != 2 && argc != 3) {
    printf("ERROR: Enter the FileName of the wave-file as parameter\n");
    printf("       optional: enter the parameter of the output-file as second parameter.\n");
    printf("       default value is: \"'input FileName'.h\"\n");
    return -1;
  }

  if (argc == 2) {
    outputFileName = (char*)malloc( (strlen(argv[1])+5)*sizeof(char) );
    strcpy(outputFileName, argv[1]);
    strcat(outputFileName, ".h");
  } else {
    outputFileName=argv[2];
  }
  writeWaveDataAsArray(argv[1], outputFileName);
  
  return 0;
}
