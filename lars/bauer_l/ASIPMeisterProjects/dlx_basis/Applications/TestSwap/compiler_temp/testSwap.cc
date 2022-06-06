#define COSY

// swap: the highest 16 bit and the lowest 16 bit of the 32 bit value are swapped
#define swap(a)   ( (((a)<<16) & 0xFFFF0000) | (((a)>>16) & 0x0000FFFF) )

int testSwap(int a) {
  return swap(a);
}
