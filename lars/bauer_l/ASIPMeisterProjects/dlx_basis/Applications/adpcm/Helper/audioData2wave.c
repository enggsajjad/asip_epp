#include <stdio.h>

#include "waveSupport.h"
#include "audioData.h"

int main() {
  struct waveHeader header;

  FILE* ofile = fopen("audioData.wav", "wb");
  if (ofile == 0) {
    printf("ERROR while opening file \"audioData.wav for writing!\n");
    return -1;
  }

  // manually configure this:
  header.sampleRate = 48000;
  header.numberOfChannels = 2;


  header.lengthOfDataBlock = sizeof(audioData);
  header.fileSize = 
    // RIFF Chunk:
    4 // the initial "RIFF" and 'length of the file' (this currently assigned value) are not counted. The following "WAVE" instead is
    // FORMAT Chunk:
    + 24 // "fmt "; 'length of format chunk'; ...
    // DATA chunk:
    + 4 + 4 + header.lengthOfDataBlock; // "data"; 'length of audio data'; 'audio data'
  header.fmtLength = 16;  // constant
  header.formatTag = 1;  // uncompressed PCM
  header.formatTagNamesIdx = 0;  // uncompressed PCM
  header.blockAlign = sizeof(audioData[0]) * header.numberOfChannels;
  header.bitsPerSample = sizeof(audioData[0]) * 8;
  header.bytesPerSecond = header.sampleRate * header.blockAlign;

  printWaveHeader(&header);
  writeWaveHeader(ofile, &header);


  fwrite(audioData, sizeof(audioData[0]), sizeof(audioData)/sizeof(audioData[0]), ofile);
  fclose(ofile);
  return 0;
}