
asm int max (int a, int b)
{
	@[
	.barrier
        .restrict   :reg<R7>
	]

	; SINAS OUTPUT
	max @{}, @{a}, @{b}
	; /SINAS OUTPUT
}

int main() {
  int a = 2, b = 5, c;
  c = max(a,b);
  return a + b + c;
}

