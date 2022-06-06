

#ifdef COSY
asm void printComment(const int comment) {
  @[
	  .barrier
  ]
  nop	;	MYCOMMENT: @{comment}
}
#endif

#define ADDHELPER(NAME, NUMBER) \
	asm void addHelper_ ## NAME ## _ ## NUMBER() { \
		@[ .barrier ] \
		helperInstr	$ ## INSTRUCTION_ ## NAME, $ ## NUMBER \
	}

#define INSTRUCTION_mac 42

ADDHELPER(mac, 255);
ADDHELPER(mac, 0);
int main() {
  int a = 0;
  addHelper_mac_255();
  a = (a * 42) + 23;
  addHelper_mac_0();
//  printComment(42);
  return a;
}
