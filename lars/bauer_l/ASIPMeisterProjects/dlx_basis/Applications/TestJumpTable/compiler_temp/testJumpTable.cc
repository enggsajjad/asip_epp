#define COSY

int globalVar;

int jumpTable(int a) {
  int retVal=0;

  if (a>=0 && a<=9) {
    switch (a) {
      case 0: retVal=1; break;
      case 1: retVal=23; break;
      case 2: retVal=42; break;
      case 3: retVal=-4; break;
      case 5: retVal=22222; break;
      case 6: retVal=a; break;
      case 7: retVal=234; break;
      case 8: retVal=76; break;
      case 9: retVal=8; break;
      default: retVal=-42; break;
    }
  }
  return retVal;
}

int jumpTable2(int a) {
  int retVal=0;
  switch (a) {
    case 10: retVal=345; break;
    case 11: retVal=7; break;
    case 12: retVal=456; break;
    case 13: retVal=8; break;
    case 14: retVal=56; break;
    case 15: retVal=856; break;
    case 16: retVal=856; break;
    case 17: retVal=856; break;
    case 18: retVal=856; break;
    case 19: retVal=856; break;
    case 20: retVal=856; break;
    default: retVal=42-8; break;
  }
  return retVal;
}

int jumpTable3(int a) {
  int retVal=0;
  switch (a) {
    case 10: retVal=345; break;
    case 11: retVal=7; break;
    case 12: retVal=456; break;
    case 13: retVal=8; break;
    case 14: retVal=56; break;
    case 15: retVal=856; break;
    case 16: retVal=856; break;
    case 17: retVal=856; break;
    case 18: retVal=856; break;
    case 19: retVal=856; break;
    case 20: retVal=856; break;
    default: retVal=42-8; break;
  }
  return retVal;
}


int main() {
  globalVar = 9;
  return jumpTable(globalVar) + jumpTable2(globalVar) + jumpTable3(4);
}
