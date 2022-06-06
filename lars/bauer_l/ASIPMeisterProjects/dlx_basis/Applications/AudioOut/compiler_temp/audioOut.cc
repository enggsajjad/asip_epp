#define COSY

#define BIG_SOUND_DATA 1
#include "soundData.c"
// unsigned char soundData[] = {...}

#define AUDIO_OUT_ADDRESS 0x1000

int main() {
  int i;
  unsigned char* soundPointer;
  unsigned char* audioOut = (unsigned char*)AUDIO_OUT_ADDRESS;

  while (1) {
    soundPointer=soundData;
    for (i=0; i<sizeof(soundData); i++) {
      *audioOut = *soundPointer++;
    }
    return 0;
  }
}
