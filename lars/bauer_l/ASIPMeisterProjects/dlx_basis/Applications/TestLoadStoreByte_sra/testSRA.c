
int result1;
int result2;
int value = 0xFF;

int main() {
  result1 = value << 24;
  result2 = result1 >> 24;
#ifndef COSY
  printf("resul1 = 0x%.8X; result2 = 0x%.8X\n", result1, result2);
#endif
  return result1+result2;
}
