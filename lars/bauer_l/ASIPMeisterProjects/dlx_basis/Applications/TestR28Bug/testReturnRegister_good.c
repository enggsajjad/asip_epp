
int A() { return 3; }

int B() { A(); }


int main() {
  int i;

  for (i=1; i<5; i++) {
    B();
  }

  return 42;
}
