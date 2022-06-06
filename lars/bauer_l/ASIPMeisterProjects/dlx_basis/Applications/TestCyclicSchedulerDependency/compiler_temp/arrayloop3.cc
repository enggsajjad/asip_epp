#define COSY

#define LENGTH 5

int resultMax [LENGTH];

struct doubleInt { 
  int min; 
  int max;
};

asm struct doubleInt MINMAX(int a, int b)
{
  @[  ]
  nop
  nop
  nop
  minmax @{min}, @{max}, @{a}, @{b}
  nop
  nop
  nop
}

int main() {
  struct doubleInt temp_val;
  int i, j=0, retVal = 0;

  for (i=0; i<LENGTH; i++) {
    temp_val = MINMAX(5, 7);
    //j++;
    resultMax[i] = temp_val.max;
  }

  return j;
}
