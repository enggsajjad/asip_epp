#include "lib_lcd.h"
#include "string.h"

asm int LOAD_LCD_ADDRESS()
{
@[	.barrier
]
	lhi @{}, $LCD_HI_ADDR
	nop
	nop
	nop
}


asm void PUTC_SINAS (int c, int address)
{
@[	.barrier
]
	nop
	nop
	nop
	sw  0(@{address}), @{c}
}


asm int GETC_SINAS (int address)
{
@[	.barrier
]
	nop
	nop
	nop
	lw  @{},0(@{address})
	nop
	nop
	nop
}



int t_print (const char* str) {
  volatile int lcdAddress = LOAD_LCD_ADDRESS();
  while (*str != '\0') {
    PUTC_SINAS(*str++, lcdAddress);
  }  
  return 0;
}

int t_printInt(int a) {
  char tempString[20];
  intToStr(a, tempString);
  t_print(tempString);
  return 0;
}

int t_printHex(int value, int digits) {
  char tempString[10];
  intToHexStr(value, tempString, digits);
  t_print("0x");
  t_print(tempString);
  return 0;
}


int checkbuffer () { return 0; }
int getbytes (char* dest, int bytes_to_read) { return 0; }
int sendcommand (const char cmd0, const char cmd1, const int options[], const char text[], int intcount, int charcount, int address) { return 0; }
int t_cursor (int onoff) { return 0; }
int t_enable (int onoff) { return 0; }
int g_print (const char* str, int x, int y) { return 0; }
int g_drawrect (int x1, int y1, int x2, int y2) { return 0; }
int g_drawline (int x1, int y1, int x2, int y2) { return 0; }
int g_makebar (int x1, int y1, int x2, int y2, int low_val, int high_val, int init_val,  int type, int fill_type, int touch) { return 0; }
int g_setbar (int barnum, int value) { return 0; }
int g_makeswitch (const char* str, int x1, int y1, int x2, int y2, int down, int up) { return 0; }
int g_makemenubutton (const char* str, int x1, int y1, int x2, int y2, int down, int up, int select, int space) { return 0; }
int g_makeradiogroup(int group_number) { return 0; }
int d_clear() { return 0; }
