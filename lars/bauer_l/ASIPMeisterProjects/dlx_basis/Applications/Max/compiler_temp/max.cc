#define COSY
int max (int a, int b) {
	return a > b ? a : b;
}

static int a;
static int b;
static int c;

void main()
{
  a = 5;
  b = 7;
  c = max(a, b);
}
