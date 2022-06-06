#include <stdio.h>

#include "waveSupport.h"
#include "Filter1.h"

#define GCC 1

#if !GCC
#define BIG_SOUND_DATA 1
#include "soundData.h"
#endif

/*
 * Adjust the DEBUG-Level of the code:
 * 0 is 'release', i.e. no debug output
 * 5 is 'full debug', i.e. all output
 */
#define DEBUG_LEVEL 0
#if DEBUG_LEVEL
#define PRINT_DEBUG(level, command) if (DEBUG_LEVEL >= level) command;
#else
#define PRINT_DEBUG(level, command) ;
#endif


int main() {
  int i;
  unsigned char ch;
  struct waveHeader header;

//createTriangleOutput(char* fileName, int stepSize, int startValue, int length, int sampleRate);

/*
  createTriangleOutput("triangle_40000_2_0.wav", 2, 0, 10000, 40000);
  return 0;
*/

  //  writeWaveDataAsArray("SimpsonsIntro_PCM_Mono_8Bit_8KHz.wav", "SimpsonsIntro_PCM_Mono_8Bit_8KHz_Array.h");
  
  //  writeWaveDataAsArray("normalized_noisy_Bride_8kHz_8bit_1ch.wav", "normalized_noisy_Bride_8kHz_8bit_1ch_Array.h");
  //  return 0;
  

  fifoInit();

  // Pre-Fill the FIFO
  for (i=0; i<FIFO_SIZE-1; i++) {
    float fValue = (float)0;
    fifoPut(fValue);
  }

#if GCC
  // Initialize files and copy header
  //char* inputFileName = "SimpsonsIntro_PCM_Mono_8Bit_48KHz.wav";
  //char* inputFileName = "Bride_8kHz_8bit_1ch_13secs.wav";
  char* inputFileName = "triangle_40000_4_0.wav";
  FILE* inputFile = fopen(inputFileName, "rb");
  if (inputFile == 0) {
    printf("ERROR opening file \"%s\" for reading!\n", inputFileName);
    return 1;
  }
  char* outputFileName = "filtered.wav";
  FILE* outputFile = fopen(outputFileName, "w");
  if (outputFile == 0) {
    printf("ERROR opening file \"%s\" for reading!\n", outputFileName);
    return 1;
  }

  cleanWaveHeader(&header);
  i = readWaveHeader(inputFile, &header);
  printWaveHeader(&header);
  if (i != 0) {
    printf("ERROR while parsing the Wave-Header of file \"%s\"!\n", inputFileName);
    return 1;
  }
  writeWaveHeader(outputFile, &header);
#endif


  // Compute the filter
#if GCC
  while (!feof(inputFile)) {
    fscanf(inputFile, "%c", &ch);
    ch = computeFilter1(ch);
    fprintf(outputFile, "%c", ch);
  }
  fclose(inputFile);
  fclose(outputFile);
#else
  for (i=0; i<sizeof(soundData); i++) {
    ch = computeFilter1(soundData[i]);
    // writeToAudioOut(ch);
  }
#endif


  return 0;
}
