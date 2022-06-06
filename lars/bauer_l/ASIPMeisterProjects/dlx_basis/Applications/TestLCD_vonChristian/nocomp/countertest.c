#include "lib_lcd.h"
#include "intToStr.h"

extern int switchThread();

/* asm int GET_COUNTER()  */
/* { */
/* @[ */
/* .barrier */
/* .scratch temp */
/* .restrict temp:reg */
/* ] */
/*   ; GET_COUNTER() */
/*   lhi @{temp}, $(0x280DE80/0x10000) */
/*   nop */
/*   nop */
/*   nop */
/*   nop */
/*   ori @{temp}, @{temp}, $(0x280DE80%0x10000) */
/*   nop */
/*   nop */
/*   nop */
/*   nop */
/*   lw @{}, 0(@{temp}) */
/*   nop */
/*   nop */
/*   nop */
/*   nop */
/*   } */

/* asm void SET_COUNTER( int value )  */
/* { */
/* @[ */
/* .barrier */
/* .scratch addr */
/* .restrict addr:reg */
/* ] */
/*   ; SET_COUNTER() */
/*   lhi @{addr}, $(0x280DE80/0x10000) */
/*   nop */
/*   nop */
/*   nop */
/*   nop */
/*   ori @{addr}, @{addr}, $(0x280DE80%0x10000) */
/*   nop */
/*   nop */
/*   nop */
/*   nop */
/*   sw 0(@{addr}), @{value} */
/*   nop */
/*   nop */
/*   nop */
/*   nop */
/*   } */

int countertest() {
  int counter = 0;
  char text[10];

  while (1) {
    t_print(":");
/*     counter = GET_COUNTER(); */
    
/*     intToStr(counter, text); */
/*     g_print(text, 50, 0); */

    switchThread();
  }

  return 0;
}
