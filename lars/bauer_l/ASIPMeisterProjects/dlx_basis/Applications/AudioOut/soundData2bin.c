#include <stdio.h>

#define BIG_SOUND_DATA 1
#include "soundData.c"

int main() {
  FILE* ofile = fopen("soundData.bin", "wb");
  fwrite(soundData, sizeof(soundData), sizeof(unsigned char), ofile);
  fclose(ofile);
  return 0;
}
