#include <stdio.h>

int main() {
  unsigned long long ull=999999999; // passt in 4 Byte int
//  unsigned long long ull=9999999999; // passt NICHT in 4 Byte int

  /* Im Speicher der Parameter (ull, ull) steht:
       8 Byte für das erste ull
       8 Byte für das zweite ull
     Gelesen wird:
       4 Byte für das %i
       8 Byte (die zweiten 4 Byte vom ersten ull und die ersten
               4 Byte vom 2ten ull) für das %llu
  */
  printf("1st: %i %llu\n", ull, ull);


  printf("2nd: %i %llu\n", (int)ull, ull);


  return 0;
}
