#define COSY
#ifndef COSY
  #include <stdio.h>
#else
  #include "lib_lcd.h"
#endif

#define LENGTH 20

int input1[LENGTH] = {321,51,890345,75,78,7,34478651,2342,568,7894578,7,3461,1235,3467753,75,685,79,45568564,35,7625};
int input2[LENGTH] = {45,765,12,78,74,42,1253,236377,5683,79,86,643,52314576,3461,57,785,79,47,3461,2513};

int resultAvg [LENGTH];
int resultSwap[LENGTH];
int resultMax [LENGTH];
int resultMin [LENGTH];
int resultRor [LENGTH];


#define USE_SINAS 1


#if USE_SINAS
struct doubleInt { int min; int max; };

asm int swap(int input) {
  @[  ]
    nop
    nop
    nop
    swap      @{}, @{input}
    nop
    nop
    nop
}

asm struct doubleInt minMax(int input1, int input2) {
  @[  ]
    nop
    nop
    nop
    minMax      @{min}, @{max}, @{input1}, @{input2}
    nop
    nop
    nop
}

// Note: input2 is not used. It is assumed to be constant 4 and the parameter is just provided to have the same interface like the macro
asm int ror(int input1, int input2) {
  @[  ]
    nop
    nop
    nop
    rot      @{}, @{input1}, $4
    nop
    nop
    nop
}

#else
   // swap: the highest 16 bit and the lowest 16 bit of the 32 bit value are swapped
#  define swap(a)   ( (((a)<<16) & 0xFFFF0000) | (((a)>>16) & 0x0000FFFF) )
#  define max(a, b) ( (a)>(b) ? (a):(b) )
#  define min(a, b) ( (a)<(b) ? (a):(b))
   // rotates a for b bits to the right
#  define ror(a, b) ( ((a)>>(b)) | ((a)<<(32-(b))) )
#endif

#define avg(a,b)  ( ((a)+(b)) / 2 )


int main() {
  int i;
#if USE_SINAS
  struct doubleInt result;
#endif

  for (i=0; i<LENGTH; i++) {
    resultAvg[i]  = avg(input1[i], input2[i]); // Average
    resultSwap[i] = swap(input1[i]);           // Swap
#if USE_SINAS
    result = minMax(input1[i], input2[i]);
    resultMin[i] = i;  // this is a dummy line to help the compiler. It doesn't like struct writing and struct reading right after each other
    resultMin[i] = result.min;
    resultMax[i] = result.max;
#else
    resultMin[i]  = min(input1[i], input2[i]); // Minimum
    resultMax[i]  = max(input1[i], input2[i]); // Maximum
#endif
    resultRor[i]  = ror(input1[i], 4);         // Rotate
  }

  for (i=0; i<LENGTH; i++) {
#ifndef COSY
    //    printf("i1:0x%-9Xi2:0x%-9Xavg:0x%-9Xswap:0x%-9Xmax:0x%-9Xmin:0x%-9Xror:0x%-9X\n", input1[i], input2[i], resultAvg[i], resultSwap[i], resultMax[i], resultMin[i], resultRor[i] );
    printf("i1:\t%i\ti2:\t%i\tavg:\t%i\tswap:\t%i\tmax:\t%i\tmin:\t%i\tror:\t%i\n", input1[i], input2[i], resultAvg[i], resultSwap[i], resultMax[i], resultMin[i], resultRor[i] );
#else
    t_print("i1:\t");
    t_printInt(input1[i]);
    t_print("\ti2:\t");
    t_printInt(input2[i]);
    t_print("\tavg:\t");
    t_printInt(resultAvg[i]);
    t_print("\tswap:\t");
    t_printInt(resultSwap[i]);
    t_print("\tmax:\t");
    t_printInt(resultMax[i]);
    t_print("\tmin:\t");
    t_printInt(resultMin[i]);
    t_print("\tror:\t");
    t_printInt(resultRor[i]);
    t_print("\r\n");
#endif
  }

  return 0;
}