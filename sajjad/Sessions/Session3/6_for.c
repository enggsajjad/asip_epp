unsigned int A[10] = { 1,2,3,4,5,6,7,8,9,10};
unsigned int B[10] = { 1,2,3,4,5,6,7,8,9,10};
unsigned int C=45;
int main() {
  int i;
  for (i=0;i<10;i++)
    A[i] = B[i] + 5 + C;
  return 0;
}




