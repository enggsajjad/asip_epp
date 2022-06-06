
/* Converts an int to a string (decimal representation of the string).
 * Will allways return the address of it's internal "static char retVal[32]".
 * This means: a call of itoa will overwrite the results of a previous itoa!
 */

char* itoa(int value) {
  int i, j;
  int highestDigitFound;
  char stringReverse[32];
  static char retVal[32];

  for (i=0; i<32; i++) {
    stringReverse[i] = (value % 10) + '0';
    value /= 10;
  }
  highestDigitFound = 0;
  j = 0;
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
