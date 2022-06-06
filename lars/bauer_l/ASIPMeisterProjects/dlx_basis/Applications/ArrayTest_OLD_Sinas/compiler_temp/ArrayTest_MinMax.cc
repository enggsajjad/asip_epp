#define COSY


#ifdef COSY
asm void minMax(int a, int b, int min, int max)
{
  @[
	.barrier
  ]
	nop
	nop
	nop
	minMax	@{min}, @{max}, @{a}, @{b}
	nop
	nop
	nop
}
#else
  #define minMax(a, b, min, max) {\
    if ( (a) < (b) ) {\
      min = (a);\
      max = (b);\
    } else {\
      min = (b);\
      max = (a);\
    }\
  }
#endif


int main() {
  int result;
  int tempMin=0, tempMax=0, a=5, b=7;

  minMax(a, b, tempMin, tempMax);
  result = tempMin + tempMax;

#ifndef COSY
  printf("a=%i, b=%i, tempMin=%i, tempMax=%i, result=%i\n", a, b, tempMin, tempMax, result);
#endif

  return result;
}
