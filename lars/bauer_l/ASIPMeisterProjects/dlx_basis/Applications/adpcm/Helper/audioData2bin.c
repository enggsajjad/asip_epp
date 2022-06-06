#include <stdio.h>

#include "audioData.h"

int main(int argc, char** argv) {
  //int i;
  //unsigned short temp;

  if (argc>1) {
    printf("ERROR: This tool does not accept any parameters!\n");
    printf("       The audioData is expected as array in 'audioData.h'.\n");
    printf("       You have to recompile this tool to change the audioData!!\n");
    printf("       The output is written to 'audioData.bin'.\n");
    return 1;
  }

  FILE* ofile = fopen("audioData.bin", "wb");
  if (ofile == 0) {
    printf("ERROR while opening file \"audioData.bin for writing!\n");
    return -1;
  }

  fwrite(audioData, sizeof(audioData[0]), sizeof(audioData)/sizeof(audioData[0]), ofile);
  /*
  for (i=0; i<sizeof(audioData)/sizeof(audioData[0]); i++) {
    // take care: this output is endianess sensitive and meant for x86!
    temp = ((audioData[i]>>8) & 0xFF) | ((audioData[i] & 0xFF)<<8);
    fwrite(&temp, sizeof(temp), 1, ofile);
  }
  */
  fclose(ofile);
  return 0;
}
