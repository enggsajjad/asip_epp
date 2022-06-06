
#ifndef _waveSupport_fdugvuilghrmlcsugkhbgjfgnhklxihgmbmlvjgrcdmguidfhmgrd
#define _waveSupport_fdugvuilghrmlcsugkhbgjfgnhklxihgmbmlvjgrcdmguidfhmgrd

#include <stdio.h>

struct waveHeader {
  // RIFF Header
  unsigned int fileSize;

  // fmt Chunk
  unsigned int fmtLength;  // should allways be 16
  unsigned short formatTag; // 1:PCM, 6:ALAW, 7:MULAW
  unsigned short numberOfChannels;  // 1:mono, 2:stereo
  unsigned int sampleRate;  // e.g. 44100
  unsigned int bytesPerSecond;  // sampleRate * blockAlign
  unsigned short blockAlign;  // channels * bitsPerSample / 8
  unsigned short bitsPerSample;  // 8 or 16

  // Data Chunk:
  unsigned int lengthOfDataBlock;
};


void cleanWaveHeader(struct waveHeader* header);
void printWaveHeader(const struct waveHeader* header);
int readWaveHeader(FILE* file, struct waveHeader* header);
int writeWaveHeader(FILE* file, const struct waveHeader* header);
void writeWaveDataAsArray(char* inputFileName, char* outputFileName);
void createTriangleOutput(char* fileName, int stepSize, int startValue, int length, int sampleRate);

#endif
