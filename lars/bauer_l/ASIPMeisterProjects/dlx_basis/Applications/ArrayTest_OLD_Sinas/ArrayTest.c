
#define LENGTH 20

int input1[LENGTH] = {321,51,890,75,78,7,341,2342,568,789,7,3461,1235,346,75,685,79,45,35,7625};
int input2[LENGTH] = {45,765,12,78,74,42,1253,236,5683,79,86,643,5231,3461,57,785,79,47,3461,2513};

int resultAvg[LENGTH];
int resultFex[LENGTH];
int resultMax[LENGTH];
int resultMin[LENGTH];


#ifdef COSY
asm int max(int a, int b)
{
	@[	]

	nop
	nop
	nop
	max	@{}, @{a}, @{b}
	nop
	nop
	nop
}
asm int min(int a, int b)
{
	@[	]

	nop
	nop
	nop
	min	@{}, @{a}, @{b}
	nop
	nop
	nop
}
#else
  #define max(a, b) ((a)>(b)?(a):(b))
  #define min(a, b) ((a)<(b)?(a):(b))
#endif


int main() {
  int i;
  const int mask = 0xFF00;

  for (i=0; i<LENGTH; i++) {
    resultAvg[i] = (input1[i] + input2[i]) / 2;  // Average (avg)
    resultFex[i] = (input1[i] & mask) >> 8;      // Field Extract (fex)
    resultMax[i] = max(input1[i], input2[i]);    // Maximum (max)
    resultMin[i] = min(input1[i], input2[i]);    // Minimum (min)
  }

#ifndef COSY
  for (i=0; i<LENGTH; i++) {
    printf("i1:%-8ui2:%-8uavg:%-8ufex:%-8umax:%-8umin:%-8u\n", input1[i], input2[i], resultAvg[i], resultFex[i], resultMax[i], resultMin[i] );
  }
#endif

  return 0;
}
