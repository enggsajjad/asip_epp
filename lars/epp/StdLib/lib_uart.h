#ifndef _lib_uart_h_lrdvsgjrasdmioögsrepivhjrtmshcmdhi
#define _lib_uart_h_lrdvsgjrasdmioögsrepivhjrtmshcmdhi

#define UART_HI_ADDR 0x100

int u_print(const char* str);

int u_printInt(int a);

int u_printHex(int value, int digits);

int u_getbytes(char* dest, int bytes_to_read);

#endif
