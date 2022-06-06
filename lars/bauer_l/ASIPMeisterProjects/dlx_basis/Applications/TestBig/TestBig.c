int c=0;
int isPrim=-1;


asm int xchg(int a, int b) {
  @[.barrier]
  nop
  nop
  nop
  xchg @{a}, @{b}
  nop
  nop
  nop
}

int foo(int a, int b, int d) {
    int e=0;
    e = d + a*b;
    
    return e;
}

int prim(int p) {
    int i=0;
    int mod=0;
    int prim=0;
    
    for(i=2; i<p; ) {
	prim = p % i;
	
	if(prim == 0)
	    return 0;
    
	if(i==2) i++;
	else i += 2;    
    }
    
    return 1;
}
    
int main() {

int a = 1;
int b = 1;
int d=0;
int i, i1;

    for(i=0; i<10000; i++) {
		c = foo(a, b, c);
		d = (a+b)/2;	
		a++;
		b++;
    }   
    i = c + d; 


    for(i=0; i<10200; i++) {
	c = foo(a, b, c);
	xchg(d, c);
    }

    isPrim = prim(1999);

return 0;
}






