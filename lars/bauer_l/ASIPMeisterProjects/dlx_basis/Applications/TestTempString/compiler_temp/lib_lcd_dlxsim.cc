#define COSY

#include "lib_lcd.h"
#include "loadStoreByte.h"


asm void PUTC_SINAS (int c) 
{
@[
.barrier
]

  nop
  nop
  nop
  putc @{c}
  nop
  nop
  nop
}

int t_print (const char* str) {
  while (*str != '\0') {
    PUTC_SINAS(*str++);
  }  
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