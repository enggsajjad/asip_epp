#define COSY
/*
 * An example C code to demonstrate the problems with the "compare unsigned"
 * instruction (e.g. sltu).
 * In gcc the result is 42, as the loop is not running at all.
 * In vhdl-simulation the result is a very big number, as the loop
 * is executed 20 times.
 *
 */


static unsigned int u = (unsigned int)-10;
static unsigned int loopEnd = 10;
static unsigned int result = 42;

int main()
{

  for (; u<loopEnd; u++) {
    result += u * loopEnd;  
  }

  #ifndef COSY
    printf("Result: %u\n", result);
  #endif

  return result;
}
