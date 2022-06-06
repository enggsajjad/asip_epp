#define COSY
#include "lib_lcd.h"
#include "intToStr.h"

int function() {
  char tempString[20];
  intToStr(42, tempString);
  t_print(tempString);
  return 0;
}

int main() {
  function();
  return 0;
}
