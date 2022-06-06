// TODO

char* intToString(int value) {
  int i, j=0;
  int highestDigitFound;
  char stringReverse[32];
  static char retVal[32];

  for (i=0; i<32; i++) {
    stringReverse[i] = (value % 10) + '0';
    value /= 10;
  }
  highestDigitFound = 0;
  for (i=31; i>=0; i--) {
    if (highestDigitFound == 1) {
      retVal[j++] = stringReverse[i];
    } else {
      if (stringReverse[i]!='0') {
	highestDigitFound = 1;
	retVal[j++] = stringReverse[i];
      }
    }
  }
  if (highestDigitFound == 0) retVal[j++] = '0';
  return retVal;
}
