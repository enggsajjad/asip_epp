#define COSY
#include "lib_lcd.h"
#include "lib_uart.h"


int main() {
  int i=0;
  u_print("\r\n");
  while (1) {
    u_print("Counter: ");
    u_printInt(i);
    //u_print(" = ");
    //u_printHex(i, 0);
    u_print("          \r\n");
    i++;
  }
  return 0;
}

