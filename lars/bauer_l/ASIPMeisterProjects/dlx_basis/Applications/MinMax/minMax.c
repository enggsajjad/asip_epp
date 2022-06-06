
asm int minMax1 (int a, int b)
{
	@[
	.barrier
	.change R27
	]

	nop
	nop
	nop
	minMax	@{}, %GPR27, @{a}, @{b}
	nop
	nop
	nop
}

asm int minMax2 ()
{
	@[
	.barrier
	]

	add	@{}, %GPR0, %GPR27
	nop
	nop
	nop
}


int resultMax, resultMin;


void main() {
  int input1=2, input2=5;
  int tempMax, tempMin;

  tempMax = minMax1(input1, input2);
  tempMin = minMax2();

  resultMax = tempMax;
  resultMin = tempMin;

}
