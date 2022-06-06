#include "lib_lcd.h"

int main() {
  t_print("Hallo Welt!\r\n");
  t_print("Eine Zahl: ");
  t_printInt(42);
  t_print(" = ");
  t_printHex(42, 0);
  t_print("\r\n");

  return 0;
}

