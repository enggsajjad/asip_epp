#define COSY
#include "lib_lcd.h"
#include "intToStr.h"

int main() {
  char tempString1[20];
  char* tempString2 = "Hallo Welt\r\n";
  int value = 23;

  t_print(tempString2);

  intToStr(42, tempString1);
  t_print(tempString1);
  return 0;
}
