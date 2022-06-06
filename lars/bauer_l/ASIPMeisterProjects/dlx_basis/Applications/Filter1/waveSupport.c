
#include "waveSupport.h"


void cleanWaveHeader(struct waveHeader* header) {
  header->fileSize = 0;
  header->fmtLength = 0;
  header->formatTag = 0;
  header->numberOfChannels = 0;
  header->sampleRate = 0;
  header->bytesPerSecond = 0;
  header->blockAlign = 0;
  header->bitsPerSample = 0;
  header->lengthOfDataBlock = 0;
}


void printWaveHeader(const struct waveHeader* header) {
  char* formatTagName[] = { "PCM", "ALAW", "MULAW", "" };
  int formatTagNameIndex;
  printf("WAVE Header:\n");
  printf("  fileSize: %u (0x%X)\n", header->fileSize, header->fileSize);
  printf("  fmtLength: %u\n", header->fmtLength);
  switch (header->formatTag) {
    case 1: formatTagNameIndex = 0; break;
    case 6: formatTagNameIndex = 1; break;
    case 7: formatTagNameIndex = 2; break;
    default: formatTagNameIndex = 3; break;
  }
  printf("  formatTag: %hu (%s)\n", header->formatTag, formatTagName[formatTagNameIndex]);
  printf("  numberOfChannels: %hu\n", header->numberOfChannels);
  printf("  sampleRate: %u\n", header->sampleRate);
  printf("  bytesPerSecond: %u\n", header->bytesPerSecond);
  printf("  blockAlign: %hu\n", header->blockAlign);
  printf("  bitsPerSample: %hu\n", header->bitsPerSample);
  printf("  lengthOfDataBlock: %u (0x%X)\n", header->lengthOfDataBlock, header->lengthOfDataBlock);
  printf("\n");
}


int readWaveHeader(FILE* file, struct waveHeader* header) {
  if (fgetc(file) != 'R') return -1;
  if (fgetc(file) != 'I') return -1;
  if (fgetc(file) != 'F') return -1;
  if (fgetc(file) != 'F') return -1;

  fread(&header->fileSize, 4, 1, file);

  if (fgetc(file) != 'W') return -1;
  if (fgetc(file) != 'A') return -1;
  if (fgetc(file) != 'V') return -1;
  if (fgetc(file) != 'E') return -1;

  if (fgetc(file) != 'f') return -1;
  if (fgetc(file) != 'm') return -1;
  if (fgetc(file) != 't') return -1;
  if (fgetc(file) != ' ') return -1;

  fread(&header->fmtLength, 4, 1, file);
  //  if (header->fmtLength != 16) return -1;
  fread(&header->formatTag, 2, 1, file);
  fread(&header->numberOfChannels, 2, 1, file);
  fread(&header->sampleRate, 4, 1, file);
  fread(&header->bytesPerSecond, 4, 1, file);
  fread(&header->blockAlign, 2, 1, file);
  fread(&header->bitsPerSample, 2, 1, file);

  if ( fgetc(file) != 'd') return -1;
  if ( fgetc(file) != 'a') return -1;
  if ( fgetc(file) != 't') return -1;
  if ( fgetc(file) != 'a') return -1;

  fread(&header->lengthOfDataBlock, 4, 1, file);

  return 0;
}


int writeWaveHeader(FILE* file, const struct waveHeader* header) {
  fprintf(file, "RIFF");
  fwrite(&header->fileSize, 4, 1, file);
  fprintf(file, "WAVE");
  fprintf(file, "fmt ");
  fwrite(&header->fmtLength, 4, 1, file);
  fwrite(&header->formatTag, 2, 1, file);
  fwrite(&header->numberOfChannels, 2, 1, file);
  fwrite(&header->sampleRate, 4, 1, file);
  fwrite(&header->bytesPerSecond, 4, 1, file);
  fwrite(&header->blockAlign, 2, 1, file);
  fwrite(&header->bitsPerSample, 2, 1, file);
  fprintf(file, "data");
  fwrite(&header->lengthOfDataBlock, 4, 1, file);
  return 0;
}


void writeWaveDataAsArray(char* inputFileName, char* outputFileName) {
  int lineCounter = 0;
  unsigned char* separator = "";
  unsigned char ch;
  struct waveHeader header;
  FILE* inputFile = fopen(inputFileName, "rb");
  FILE* outputFile = fopen(outputFileName, "w");

  if (inputFile == 0) {
    printf("ERROR in \"writeWaveDataAsArray()\" while opening file \"%s\" for reading!\n", inputFileName);
    return;
  }
  if (outputFile == 0) {
    printf("ERROR in \"writeWaveDataAsArray()\" while opening file \"%s\" for writing!\n", outputFileName);
    return;
  }
  readWaveHeader(inputFile, &header);

  fprintf(outputFile, "\nunsigned char audioData[] = {\n");
  while (!feof(inputFile)) {
    fscanf(inputFile, "%c", &ch);
    fprintf(outputFile, "%s0x%.2X", separator, (int)ch);
    separator = ", ";
    if (lineCounter%10 == 9) {
      fprintf(outputFile, "%s\n", separator);
      separator = "";
    }
    lineCounter++;
  }
  fprintf(outputFile, "};\n\n");

}


void createTriangleOutput(char* fileName, int stepSize, int startValue, int length, int sampleRate) {
  int i;
  unsigned char audioOut;
  struct waveHeader header;
  FILE* outputFileTriangle = fopen(fileName, "w");

  if (outputFileTriangle == 0) {
    printf("ERROR in \"createTriangleOutput()\" while opening file \"%s\" for writing!\n", fileName);
    return;
  }
  header.fileSize = 36+length;
  header.fmtLength = 16;
  header.formatTag = 1;
  header.numberOfChannels = 1;
  header.sampleRate = sampleRate;
  header.bytesPerSecond = sampleRate;
  header.blockAlign = 1;
  header.bitsPerSample = 8;
  header.lengthOfDataBlock = length;
  writeWaveHeader(outputFileTriangle, &header);

  for (i=0; i<length; i++) {
    for (audioOut=startValue; audioOut<=255-stepSize; audioOut+=stepSize) fwrite(&audioOut, 1, 1, outputFileTriangle);
    for (; audioOut>startValue; audioOut-=stepSize) fwrite(&audioOut, 1, 1, outputFileTriangle);
  }
  fclose(outputFileTriangle);
  return;
}

