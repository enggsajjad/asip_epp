#define COSY

int A() { return 3; }

void B(){ A(); }


int main(void) {
  int i;

  for (i=1; i<5; i++) {
    B();
  }

  return 42;
}
