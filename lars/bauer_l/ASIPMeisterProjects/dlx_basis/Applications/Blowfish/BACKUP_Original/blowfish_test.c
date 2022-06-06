/*
blowfish_test.c:  Test file for blowfish.c

Copyright (C) 1997 by Paul Kocher

This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Lesser General Public
License as published by the Free Software Foundation; either
version 2.1 of the License, or (at your option) any later version.
This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
Lesser General Public License for more details.
You should have received a copy of the GNU Lesser General Public
License along with this library; if not, write to the Free Software
Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
*/

#include <stdio.h>
#include "blowfish.h"

char inputString[] = "Hi Welt, Hi Welt";
const int inputLength = 16;

void main(void) {
  unsigned long* L;
  unsigned long* R;
  int i;
  BLOWFISH_CTX ctx;

  Blowfish_Init (&ctx, (unsigned char*)"TESTKEY", 7);

  printf("--- %i\n", strlen(inputString) );
  printf("___ 0x%x\n", inputString);
  for (i=0; i<inputLength;i+=8) {
    printf("%08lX %08lX\n", L, R);
    Blowfish_Encrypt(&ctx, &inputString[i], &inputString[i+4]);
    printf("MARK0\n");
    printf("___ 0x%x\n", inputString);
  }

  inputString[inputLength] = '\0';

  printf(inputString);

  for (i=0; i<inputLength;i+=8) {
    printf("%08lX %08lX\n", L, R);
    Blowfish_Decrypt(&ctx, &inputString[i], &inputString[i+4]);
    printf("MARK0\n");
    printf("___ 0x%x\n", inputString);
  }

  inputString[inputLength] = '\0';

  printf(inputString);

  return;
}
