#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main (int argc, char** argv) {
  if (argc < 2) {
    printf("ERROR: give filename as parameter\n");
    return 1;
  }
  FILE* inputFile = fopen(argv[1], "r");
  if (inputFile==NULL) {
    printf("ERROR: inputfile \"%s\" konnte nicht zum lesen geöffnet werden!\n", argv[1]);
  }
  char* outputFilename = malloc(strlen(argv[1])+10);  // the '+10' is for the name-extension "_bin" of the outputFilename
  *outputFilename = '\0';
  strcat(outputFilename, argv[1]);
  strcat(outputFilename, "_uart.txt");
  FILE* outputFile = fopen(outputFilename, "wb");
  if (outputFile==NULL) {
    printf("ERROR: outputfile \"%s\" konnte nicht zum lesen geöffnet werden!\n", argv[1]);
  }

  char* line = (char*)malloc(256);
  size_t len;
  char addressString[9], dataString[9];
  int address, data;
  int maxAddr = -1;
  int bit[8];
  while ((getline(&line, &len, inputFile)) != -1) {
    //printf("line: %s", line);
    strncpy(addressString, line, 8);
    addressString[8] = '\0';
    strncpy(dataString, line+9, 8);
    dataString[8] = '\0';
    sscanf(addressString, "%x", &address);
    sscanf(dataString, "%x", &data);
    //printf("\"%s\" (0x%x) \"%s\" (0x%x)\n", addressString, address, dataString, data);

    // if there is a gap in the addresses, then fill it:
    /*while (address > maxAddr+1) {
      fprintf(outputFile, "%c%c%c%c", 0, 0, 0, 0);
      maxAddr++;
    }*///we don't need it, because in dm it is byteaddressing.
    bit[7] = (data>>28)-(data>>31)*16;  // because >> is sla, for ffffffff the result is ?OOOOOOO, data>>28 is minus(-1)!!!
    bit[6] = (data>>24)-(data>>28)*16;
    bit[5] = (data>>20)-(data>>24)*16;
    bit[4] = (data>>16)-(data>>20)*16;
    bit[3] = (data>>12)-(data>>16)*16;
    bit[2] = (data>>8)-(data>>12)*16;
    bit[1] = (data>>4)-(data>>8)*16;
    bit[0] = data-(data>>4)*16;
    fprintf(outputFile, "%c%c%c%c%c%c%c%c", 64+bit[7], 64+bit[6], 64+bit[5], 64+bit[4], 64+bit[3], 64+bit[2], 64+bit[1], 64+bit[0]);
    maxAddr = address;
  }
  fprintf(outputFile, "%c", 80); // endzeichen!!! for finish of the load in sram!!!

  fclose(inputFile);
  fclose(outputFile);
  return 0;
}
