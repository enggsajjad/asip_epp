#define ASIP
#ifndef ASIP
  	#include <stdio.h>
#else
  	#include "lib_lcd.h"
	#include "lib_uart.h"
	#include "loadStoreByte.h"
	#include "string.h"
#endif

int main() {
#ifndef ASIP
	printf("Hello World!...\r\n");
#else
  	t_print("Hello World!...\r\n");
  	u_print("Hello World!...\r\n");
#endif
  return 0;
}


