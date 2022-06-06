#define COSY

struct doubleInt { int max; int min; };


#ifdef COSY
asm struct doubleInt maxMin(int input1, int input2) {
  @[
  ]
    nop
    nop
    nop
    label:


nop  
    maxMin	@{max}, @{min}, @{input1}, @{input2}
    nop
    nop
    nop
	  
}
#else
struct doubleInt maxMin(int input1, int input2) {
  struct doubleInt temp;
  if (input1 > input2) {
    temp.max = input1;
    temp.min = input2;
  } else {
    temp.max = input2;
    temp.min = input1;
  }
  return temp;
}
#endif


int main() {
  int input1 = 42, input2 = 23;
  struct doubleInt di;

  di = maxMin(input1, input2);

#ifndef COSY
  printf("1:%i 2:%i max:%i min:%i\n", input1, input2, di.max, di.min);
#endif

  return input1 + di.max + di.min;
}
