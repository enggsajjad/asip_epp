#define COSY
struct twoInts { int a; int b; int c; };
/*
struct twoInts method (int a, int b, int c) {
  struct twoInts temp;
  temp.a = a;
  temp.b = b;
  temp.c = c;
  
  return temp;
}
*/

int result;

int main() {
  struct twoInts temp;
//  temp = method(5, 7, 10);
  temp.a = 5;
  result = temp.a + temp.b + temp.c;
  return result;
}
