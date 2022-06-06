#define COSY
int main() {
#if 0
  int test[] = {1, 2};
#else
  int test[4][4];
  test[0][0]=1;
  test[0][1]=2;
#endif
  return test[0];
}
