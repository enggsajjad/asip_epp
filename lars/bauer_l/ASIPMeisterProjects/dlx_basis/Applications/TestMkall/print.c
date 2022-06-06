
//***************************************************************************
// Helper Methods
//***************************************************************************
asm void putChar(int ch) {
  @[.barrier
  ]
    ;; asm void putChar(int ch) {...}
    nop
    nop
    nop
;    putc @{ch}
    nop
    nop
    nop
}

int print(const char* string) {
  while (*string != '\0') {
    putChar(*string);
    string++;
  }
  return 0;
}

int putInt(int value) {
  int i;
  int highestDigitFound;
  char stringReverse[32];

  for (i=0; i<32; i++) {
    stringReverse[i] = (value % 10) + '0';
    value /= 10;
  }
  highestDigitFound = 0;
  for (i=31; i>=0; i--) {
    if (highestDigitFound == 1) {
      putChar(stringReverse[i]);
    } else {
      if (stringReverse[i]!='0') {
	highestDigitFound = 1;
	putChar(stringReverse[i]);
      }
    }
  }
  if (highestDigitFound == 0) putChar('0');
  return 0;
}
