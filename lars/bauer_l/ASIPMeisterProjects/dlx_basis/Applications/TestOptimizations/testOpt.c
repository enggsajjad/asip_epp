#include "lib_lcd.h"
#include "intToStr.h"

int main() {
  char tempString[20];
  intToStr(42, tempString);
  t_print("Zahl: ");
  t_print(tempString);
  t_print("\r\n");
  return 0;
}
