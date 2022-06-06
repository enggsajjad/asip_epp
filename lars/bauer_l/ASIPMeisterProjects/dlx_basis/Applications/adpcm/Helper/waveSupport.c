
#include "waveSupport.h"


char* formatTagNames[] = { "PCM", "MS ADPCM", "CVSD", "ALAW", "MULAW",
			   "OKI ADPCM", "DVI/IMA ADPCM", "MEDIASPACE ADPCM", "SIERRA ADPCM", "G723 ADPCM", "DIGISTD", "DIGIFIX", "DIALOGIC OKI ADPCM",
			   "YAMAHA ADPCM", "SONARC", "DSPGROUP TRUESPEECH", "ECHOSC1", "AUDIOFILE AF36", "APTX", "AUDIOFILE AF10",
			   "DOLBY AC2", "GSM610", "ANTEX ADPCME", "CONTROL RES VQLPC", "CONTROL RES VQLPC", "DIGIADPCM", "CONTROL RES CR10", "NMS VBXADPCM", "CS IMAADPCM", "G721 ADPCM",
			   "MPEG", "CREATIVE ADPCM", "CREATIVE FASTSPEECH8", "CREATIVE FASTSPEECH10",
			   "FM TOWNS SND", "OLIGSM", "OLIADPCM", "OLICELP", "OLISBC", "OLIOPR", "'-- unknown format--'"};

int formatTagNamesIndex[] = { 0x1, 0x2, 0x5, 0x6, 0x7,
			      0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17,
			      0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26,
			      0x30, 0x31, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x40,
			      0x50, 0x200, 0x202, 0x203,
			      0x300, 0x1000, 0x1001, 0x1002, 0x1003, 0x1004};


void cleanWaveHeader(struct waveHeader* header) {
  header->fileSize = 0;
  header->fmtLength = 0;
  header->formatTag = 0;
  header->formatTagNamesIdx = (sizeof(formatTagNames)/sizeof(char*) )-1;
  header->numberOfChannels = 0;
  header->sampleRate = 0;
  header->bytesPerSecond = 0;
  header->blockAlign = 0;
  header->bitsPerSample = 0;
  header->lengthOfDataBlock = 0;
}


void printWaveHeader(const struct waveHeader* header) {
  printf("WAVE Header:\n");
  printf("  fileSize: %u (0x%X)\n", header->fileSize, header->fileSize);
  printf("  fmtLength: %u\n", header->fmtLength);
  printf("  formatTag: %hu (%s)\n", header->formatTag, formatTagNames[header->formatTagNamesIdx]);
  printf("  numberOfChannels: %hu\n", header->numberOfChannels);
  printf("  sampleRate: %u\n", header->sampleRate);
  printf("  bytesPerSecond: %u\n", header->bytesPerSecond);
  printf("  blockAlign: %hu\n", header->blockAlign);
  printf("  bitsPerSample: %hu\n", header->bitsPerSample);
  printf("  lengthOfDataBlock: %u (0x%X)\n", header->lengthOfDataBlock, header->lengthOfDataBlock);
  printf("\n");
}


int readWaveHeader(FILE* file, struct waveHeader* header) {
  int position, ch, i;

  if (fgetc(file) != 'R') return 1;
  if (fgetc(file) != 'I') return 1;
  if (fgetc(file) != 'F') return 1;
  if (fgetc(file) != 'F') return 1;

  fread(&header->fileSize, 4, 1, file);

  if (fgetc(file) != 'W') return 2;
  if (fgetc(file) != 'A') return 2;
  if (fgetc(file) != 'V') return 2;
  if (fgetc(file) != 'E') return 2;

  if (fgetc(file) != 'f') return 3;
  if (fgetc(file) != 'm') return 3;
  if (fgetc(file) != 't') return 3;
  if (fgetc(file) != ' ') return 3;

  fread(&header->fmtLength, 4, 1, file);
  //  if (header->fmtLength != 16) return 4;
  fread(&header->formatTag, 2, 1, file);
  fread(&header->numberOfChannels, 2, 1, file);
  fread(&header->sampleRate, 4, 1, file);
  fread(&header->bytesPerSecond, 4, 1, file);
  fread(&header->blockAlign, 2, 1, file);
  fread(&header->bitsPerSample, 2, 1, file);

  for (i=0; i<sizeof(formatTagNamesIndex); i++) {
    if (formatTagNamesIndex[i]==header->formatTag) {
      header->formatTagNamesIdx = i;
      break;
    }
  }

  // There are some additional chunks supported by the standard.
  // We simply ignore them and skipp till the begining of the data chunk.
  position=1;
  while (position != 5) {
    ch = fgetc(file);
    //printf("ch='%c' (%i); position=%i\n", ch, ch, position);
    if (ch==EOF) {
      printf("ERROR: data chunk not found!\n");
      return 5;
    }
    switch (position) {
      case 1: if (ch=='d') position=2;
	      break;
      case 2: if (ch=='a') position=3;
              else if (ch=='d') position=2;
              else position=1;
	      break;
      case 3: if (ch=='t') position=4;
              else if (ch=='d') position=2;
              else position=1;
	      break;
      case 4: if (ch=='a') position=5;
              else if (ch=='d') position=2;
              else position=1;
	      break;
    }
  }

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


int writeWaveDataAsArray(char* inputFileName, char* outputFileName) {
  int lineCounter = 0;
  int headerError, readValues;
  unsigned char* separator = "";
  short sampleShort;
  char sampleChar;
  struct waveHeader header;
  FILE* inputFile = fopen(inputFileName, "rb");
  FILE* outputFile = fopen(outputFileName, "w");

  if (inputFile == 0) {
    printf("ERROR in \"writeWaveDataAsArray()\" while opening file \"%s\" for reading!\n", inputFileName);
    return -1;
  }
  if (outputFile == 0) {
    printf("ERROR in \"writeWaveDataAsArray()\" while opening file \"%s\" for writing!\n", outputFileName);
    return -1;
  }
  headerError = readWaveHeader(inputFile, &header);
  if ( headerError > 0) {
    printf("ERROR: Reading the Wave-Header! Error Number: %i\n", headerError);
    return headerError;
  }
  printWaveHeader(&header);

  if (header.bitsPerSample==8) {
    fprintf(outputFile, "\nunsigned char audioData[] = {\n");
  } else if (header.bitsPerSample==16) {
    fprintf(outputFile, "\nunsigned short audioData[] = {\n");
  } else {
    printf("ERROR: Unexpected 'bits per Sample' value: %i\n", header.bitsPerSample);
    printf("       Currently supported: 8, 16\n");
    fclose(inputFile);
    fclose(outputFile);
    return -1;
  }

  while (1) {
    if (header.bitsPerSample==8) {
      readValues = fread(&sampleChar, 1, 1, inputFile);
      if (readValues==0) break;
      fprintf(outputFile, "%s0x%.2X", separator, ((unsigned int)sampleChar)&0xFF );
    } else {
      readValues = fread(&sampleShort, 2, 1, inputFile);
      if (readValues==0) break;
      fprintf(outputFile, "%s0x%.4X", separator, sampleShort&0xFFFF );
    }
    if (lineCounter%10 == 9) separator = ",\n";
    else separator = ", ";
    lineCounter++;
  }
  fprintf(outputFile, "};\n\n");
  fclose(inputFile);
  fclose(outputFile);
  return 0;
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

