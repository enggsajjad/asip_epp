#ifndef COSY
  #include <stdio.h>
#endif

int main() {
  int retVal, i;

  for (retVal=0,i=0; i<99999999; i++) {
    retVal += i*42;
  }

#ifndef COSY
  printf("__ %i\n", retVal);
#endif

  return retVal;
}
