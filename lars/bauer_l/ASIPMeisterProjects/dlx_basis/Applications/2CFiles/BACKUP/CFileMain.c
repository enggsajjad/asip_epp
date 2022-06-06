#include "CFileHelp.h"

static int a=23;
static int b=42;
static int maxVal;
static int dummy=1111;

int main() {
  maxVal = max(a, b);
  return maxVal;
}
