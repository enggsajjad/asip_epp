#include "lib_lcd.h"
#include "intToStr.h"

extern int switchTask();
extern int test;

asm void SET_AUDIO( int value ) 
{
@[
.barrier
.scratch addr
.restrict addr:reg
]
  ; SET_AUDIO(int value)
  lhi @{addr}, $(0x2625A04/0x10000)
  nop
  nop
  nop
  nop
  ori @{addr}, @{addr}, $(0x2625A04%0x10000)
  nop
  nop
  nop
  nop
  sw 0(@{addr}), @{value}
  nop
  nop
  nop
  nop
  }

int soundtest() {
  int i, lc;
  int value;
  int count1, count2, count3;
  char countStr[32];
  int do_sound = 0;

  // stuff for the display output
  int intargs[10];// = {42,23,42,47};
  char text[32];
  int temp;
  int oldval_bar = -1; 
  int oldval_touch = -1;
  int inc = 20;

  g_makebar(10, 80, 150, 100, 8, 42, 20, 1, 1, 1);

  g_makeswitch("CSound\0", 20, 20, 70, 40, 0, 0);

  while(1) {
    test = 23;
    if (do_sound) {
      test = 42;
      lc = inc << 2;
      for (i = 0; i < lc ; i++) {
	for(value=0; value<255; value+=inc) {
	  SET_AUDIO(value);
	}
	for(; value>0; value-=inc) {
	  SET_AUDIO(value);
	}
      }
    }

    // read bar value
    value = c_readbar(1);

    temp = getbytes(text, value);

    if (temp != value) g_print("E\0", 130, 60);
    else {
      temp = (int) text[4];
      temp = temp & 0xFF;
      if (temp != oldval_bar) {
	// update soundval and text
	inc = temp;
	intToStr(temp, text);
	g_print("   \0", 130, 60);
	g_print(text, 130, 60);
      }
      oldval_bar = temp;
    }

    // read switch value
    value = c_readswitch(0);

    intToStr(value, text);
    g_print(text, 42, 50);
    temp = getbytes(text, value);

    if (temp != value) g_print("E\0", 42, 60);
    else {

      temp = (int) text[4];
      temp = temp & 0xFF;
      if (temp != oldval_touch) {
	intToStr(temp, text);
	g_print("   \0", 42, 60);
	g_print(text, 42, 60);
      }
      oldval_touch = temp;
      do_sound = temp;
    }
    
    switchTask();

  }

  return 0;
}
