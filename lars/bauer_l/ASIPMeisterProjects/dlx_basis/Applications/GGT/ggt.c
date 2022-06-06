
#ifndef COSY
  #include <stdafx.h>
  #include <stdio.h>
#endif


int main() {
  int i, a, b, temp;

  for (i=0; i<1024; i++) {
    a = 26;
    b = i;
#ifndef COSY
    printf("GGT(a=%i, b=%i) = ", a, b);
#endif

    while (b != 0) {
      if (a>=b) {
	a = a-b;
      }
      else {
	temp=a;
	a=b;
	b=temp;
      }
#ifndef COSY
      //    printf("a=%d,b=%d)=",a,b);
#endif
    }
    
#ifndef COSY
    printf("%i\n",a);
#endif
  }
  
  return 0;
}
