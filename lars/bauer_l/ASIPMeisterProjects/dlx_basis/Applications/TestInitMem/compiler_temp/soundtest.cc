#define COSY
#include "lib_lcd.h"
#include "intToStr.h"
#include "lib_lcd_larsix.h"

extern int switchThread();

extern struct switch_item {
  int value;
  int radio_group;
  int update;
  int menu;
} switches[64];

extern struct bar_item {
  int value;
  int update;
} bars[16];

extern int activebars;
extern int activeswitches;

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

asm int GET_COUNTER()
{
@[
.barrier
.scratch temp
.restrict temp:reg
]
  ; GET_COUNTER()
  lhi @{temp}, $(0x280DE80/0x10000)
  nop
  nop
  nop
  nop
  ori @{temp}, @{temp}, $(0x280DE80%0x10000)
  nop
  nop
  nop
  nop
  lw @{}, 0(@{temp})
  nop
  nop
  nop
  nop
  }

asm void SET_COUNTER( int value )
{
@[
.barrier
.scratch addr
.restrict addr:reg
]
  ; SET_COUNTER()
  lhi @{addr}, $(0x280DE80/0x10000)
  nop
  nop
  nop
  nop
  ori @{addr}, @{addr}, $(0x280DE80%0x10000)
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
  int localcount;
  int globalcount;
  int speedbar, pitchbar, repeatbar, soundswitch;
  int speedbar_value;
  int i, inc, lc;
  int value;
  char text[10];


  pitchbar = create_bar(10, 80, 100, 90, 8, 42, 20, 1, 1, 1);
  repeatbar = create_bar(120, 80, 210, 90, 8, 42, 20, 1, 1, 1);

  soundswitch = create_switch("CSound\0", 20, 20, 70, 40, 0);

  speedbar = create_bar(10, 100, 111, 110, 0, 100, 0, 1, 1, 0);

  while(1) {
    localcount = GET_COUNTER();

    if (switches[soundswitch].value == 1) {
      inc = bars[pitchbar].value;
/*       lc = inc >> 1; // >> 3 */
      lc = bars[repeatbar].value;
      if (lc == 0) lc = 1;
      for (i = 0; i < lc ; i++) {
	for(value=0; value<255; value+=inc) {
	  SET_AUDIO(value);
	}
	for(; value>0; value-=inc) {
	  SET_AUDIO(value);
	}
      }
    }

    globalcount = GET_COUNTER();
    localcount = globalcount - localcount;
    SET_COUNTER(0);

    speedbar_value = (localcount * 100) / globalcount;
    g_setbar(speedbar + 1, speedbar_value);

    intToStr(speedbar_value, text);
    g_print(text, 70, 120);

    switchThread();

  }

  return 0;
}


int countertest() {
  int counter = 0;
  char text[10];

  while (1) {
    t_print(":");
    counter = GET_COUNTER();
    
    intToStr(counter, text);
    g_print(text, 50, 0);

    switchThread();
  }

  return 0;
}

