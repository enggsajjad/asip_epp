#define COSY

#define LENGTH 50

int input1[LENGTH] = {0,42,890345,75,78,7,34478651,2342,568,7894578,7,3461,1235,3467753,75,685,79,45568564,35,436,623,346,784,875,2346,2341,7,857,2,3246,786,97,234,78,96,5,1235,523,7635,76,89,7635,1346,76,87,976,37,31246,865};
int input2[LENGTH] = {0xFFFFFFFF,42,12,78,74,42,1253,236377,5683,79,86,643,52314576,3461,57,785,79,47,3461,2513,2345,7645,756,4236,1235,64,3745,847,246,13465,573,86,975,3147,6583,2346,6835,856,342,134,8653,3416,856,974,745,123,368,3146,5683,569};
int resultHamming[LENGTH];

#ifndef COSY
  #include <stdio.h>

  /* Print a given number "i" as binary number with "size" digits */
  void binary(int i, int size) {
    if (size > 1) binary(i >> 1, size - 1);
    printf("%d", (i & 1));
  }
#endif

int hammingDistance(int input1, int input2) {
  int i, retVal = 0;
  int temp = input1 ^ input2;

  for (i=0; i<8*sizeof(int); i++) {
    if ( (temp & 1) == 1) retVal++;
    temp = temp >> 1;
  }

  return retVal;
}


int main() {
  int i;

  for (i=0; i<LENGTH; i++) {
    resultHamming[i] = hammingDistance(input1[i], input2[i]);
  }

#ifndef COSY
  for (i=0; i<LENGTH; i++) {
    printf("0b");
    binary(input1[i], 8*sizeof(input1[i]));
    printf("\n0b");
    binary(input2[i], 8*sizeof(input2[i]));
    printf("\n%i: Hamming Distance: %i\n\n", i, resultHamming[i]);
  }
#endif

  return 0;
}
