
#define USE_LCD 0
#define USE_UART 1

#if USE_LCD
#  include "lib_lcd.h"
#endif

#if USE_UART
#  include "lib_uart.h"
#endif

char ch=42;
int main() {
  char* welcome="\r\nUART-Test (press some keys):\r\n";
#if USE_UART
  u_print(welcome);
#endif
#if USE_LCD
  t_print(welcome);
#endif

  while(1) {
#if USE_UART
    u_getbytes(&ch, 1);
    u_printHex(ch, 0);
    u_print(", ");
#else
    ch++;
#endif
#if USE_LCD
    t_printHex(ch, 0);
    t_print(", ");
#endif
  }
  return 0;
}
