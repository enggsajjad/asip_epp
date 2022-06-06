#include "lib_lcd.h"
#include "intToStr.h"
#include "lib_lcd_larsix.h"
#include "filter.h"

extern int switchThread();

extern struct switch_item {
  int value;
  int radio_group;
  int update;
  int menu;
} switches[32];

extern struct bar_item {
  int value;
  int update;
} bars[16];

extern int activebars;
extern int activeswitches;
extern int speedbar, pitchbar, repeatbar, soundswitch, filterswitch, sourceswitch;

int error_printed = 0;

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


asm int GET_AUDIO_DATA()
{
@[
.barrier
.scratch temp
.restrict temp:reg
]
  ; GET_AUDIO_DATA()
  lhi @{temp}, $(0x280DE86/0x10000)
  nop
  nop
  nop
  nop
  ori @{temp}, @{temp}, $(0x280DE86%0x10000)
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

asm int GET_AUDIO_FILL()
{
@[
.barrier
.scratch temp
.restrict temp:reg
]
  ; GET_AUDIO_FILL()
  lhi @{temp}, $(0x280DE88/0x10000)
  nop
  nop
  nop
  nop
  ori @{temp}, @{temp}, $(0x280DE88%0x10000)
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

int sound_startup() {
  pitchbar = create_bar(10, 50, 120, 65, 8, 42, 20, 1, 1, 1);
  g_print("Pitch\0", 130, 55);
  repeatbar = create_bar(10, 75, 120, 90, 8, 42, 20, 1, 1, 1);
  g_print("Write Cycles\0", 130, 80);

  soundswitch = create_switch("CSound\0", 20, 15, 70, 35, 0);
  filterswitch = create_switch("CFilter\0", 90, 15, 140, 35, 0);
  sourceswitch = create_switch("CSource\0", 160, 15,210, 35, 0);

  speedbar = create_bar(10, 100, 120, 115, 0, 100, 0, 1, 1, 0);
  g_print("Audio CPU\0", 130, 100);
  g_print("usage\0", 130, 108);

  return 0;
}

int sound_nofilter() {
  int localcount;
  int globalcount;
  int speedbar_value;
  int i, inc, lc;
  int value;
  int audio_fifo_data, audio_fifo_fill;
  char text[10];

/*   g_print(":\0", 95, 120); */

  while(1) {
    
    if (switches[soundswitch].value == 1 && switches[filterswitch].value == 0) {
      localcount = GET_COUNTER();

      if (switches[sourceswitch].value == 1) {
	if (error_printed == 0) {
	  g_print("Connection not established ! ", 0, 0);
	  error_printed = 1;
	}
/* 	g_print(":", 0, 0); */
/* 	audio_fifo_fill = GET_AUDIO_FILL(); */
/* 	g_print("-", 0, 0 ); */
/* 	intToStr(audio_fifo_fill, text); */
/* 	g_print("       \0", 150, 55); */
/* 	g_print(text, 150, 55); */
/* 	if (audio_fifo_fill > 0) { */
/* 	  audio_fifo_data = GET_AUDIO_DATA(); */
/* 	  SET_AUDIO(audio_fifo_data); */
/* 	} */
      }
      else {
	if (error_printed == 1) {
	  g_print("                             ", 0, 0);
	  error_printed = 0;
	}
	inc = bars[pitchbar].value;
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
      /*     intToStr(localcount, text); */
      /*     g_print("             \0", 100, 120); */
      /*     g_print(text, 100, 120); */
      SET_COUNTER(0);
      
      speedbar_value = (localcount * 100) / globalcount;
      g_setbar(speedbar + 1, speedbar_value);
      
      intToStr(speedbar_value, text);
      g_print(text, 70, 120);
    }
    else {
      // beautify the output for Lars
      if (switches[soundswitch].value == 0) {
	g_print("0   ", 70, 120);
	g_setbar(speedbar + 1, 0);
      }
    }

    switchThread();

  }

  return 0;
}


int sound_filter() {
  int localcount;
  int globalcount;
  int speedbar_value;
  int i, inc, lc;
  int value;
  int audio_fifo_data, audio_fifo_fill;
  char text[10];

  int filterval;
  fifoValue fValue;

  fifoInit();
  // Pre-Fill the FIFO
  for (i=0; i<FIFO_SIZE-1; i++) {
    fValue = (fifoValue)0;
    fifoPut(fValue);
  }

  while(1) {

    if (switches[soundswitch].value == 1 && switches[filterswitch].value == 1) {
      localcount = GET_COUNTER();

      if (switches[sourceswitch].value == 1) {
	if (error_printed == 0) {
	  g_print("Connection not established ! ", 0, 0);
	  error_printed = 1;
	}
/* 	g_print(":", 0, 0); */
/* 	audio_fifo_fill = GET_AUDIO_FILL(); */
/* 	g_print("-", 0, 0 ); */
/* 	intToStr(audio_fifo_fill, text); */
/* 	g_print("     \0", 150, 55); */
/* 	g_print(text, 150, 55); */
/* 	if (audio_fifo_fill > 0) { */
/* 	  audio_fifo_data = GET_AUDIO_DATA(); */
/* 	  filterval = computeFilter1(audio_fifo_data); */
/* 	  SET_AUDIO(filterval); */
/* 	  } */
      }
      else {
	if (error_printed == 1) {
	  g_print("                             ", 0, 0);
	  error_printed = 0;
	}
	inc = bars[pitchbar].value;
	lc = bars[repeatbar].value;
	if (lc == 0) lc = 1;
	for (i = 0; i < lc ; i++) {
	  for(value=0; value<255; value+=inc) {
	    filterval = computeFilter1(value);
	    SET_AUDIO(filterval);
	  }
	  for(; value>0; value-=inc) {
	    filterval = computeFilter1(value);
	    SET_AUDIO(filterval);
	  }
	}
      }
      globalcount = GET_COUNTER();
      localcount = globalcount - localcount;
      /*     intToStr(localcount, text); */
      /*     g_print("             \0", 100, 120); */
      /*     g_print(text, 100, 120); */
      SET_COUNTER(0);
      
      speedbar_value = (localcount * 100) / globalcount;
      g_setbar(speedbar + 1, speedbar_value);
      
      intToStr(speedbar_value, text);
      g_print(text, 70, 120);
    }

    switchThread();

  }

  return 0;
}

int countertest() {
  int counter = 0;
  char text[10];

  while (1) switchThread();

  while (1) {
    counter = GET_COUNTER();
    
    intToStr(counter, text);
    g_print(text, 50, 0);

    switchThread();
  }

  return 0;
}










/*
 * Adjust the DEBUG-Level of the code:
 * 0 is 'release', i.e. no debug output
 * 5 is 'full debug', i.e. all output
 */
#if DEBUG_LEVEL
#define PRINT_DEBUG(level, command) if (DEBUG_LEVEL >= level) command;
#else
#define PRINT_DEBUG(level, command)
#endif

/*
 * This FIFO Implementation (circular buffer) only offers space for
 * FIFO_SIZE-1 values, but is therefor a slightly faster implementation.
 */
fifoValue fifoArray[FIFO_SIZE];
int fifoNextWrite;  // TODO: ggf MutEx f√ºr Zugriff
int fifoNextRead;

int fifoInit() {
  int i;
  for (i=0; i<FIFO_SIZE; i++) {
    fifoArray[i] = (fifoValue)0;
  }
  fifoNextWrite = 0;
  fifoNextRead = 0;
  return 0;
}

// returns 1 if the access was ignored; 0 otherwise
int fifoPut(fifoValue value) {
  PRINT_DEBUG(5, xil_printf("  fifoPut(value:%d);\r\n", (int)value))
  int tempIndex = fifoNextWrite+1;
  if (tempIndex == FIFO_SIZE) tempIndex = 0;
  if (tempIndex == fifoNextRead) {
    PRINT_DEBUG(1, xil_printf("    FIFO Overflow Pending!! Access Ignored!!\r\n"))
    return 1;
  }
  fifoArray[fifoNextWrite] = value;
  PRINT_DEBUG(3, xil_printf("    fifoArray[%d] = %d\r\n", fifoNextWrite, (int)value))
  fifoNextWrite = tempIndex;
  return 0;
}

// returns 0 casted to fifoValue if the fifo was empty
fifoValue fifoGet() {
  PRINT_DEBUG(5, xil_printf("  fifoGet();\r\n"))
  fifoValue retVal = (fifoValue)0;
  if (fifoNextRead == fifoNextWrite) {
    PRINT_DEBUG(1, xil_printf("    FIFO was empty: return 0\r\n"))
    return (fifoValue)0;
  }
  retVal = fifoArray[fifoNextRead];
  if (++fifoNextRead==FIFO_SIZE) fifoNextRead = 0;
  PRINT_DEBUG(3, xil_printf("    fifoGet(): return %d\r\n", (int)retVal))
  return retVal;
}

int getFifoFillLevel() {
  int temp = fifoNextWrite;
  if (fifoNextWrite < fifoNextRead) temp += FIFO_SIZE;
  PRINT_DEBUG(5, xil_printf("getFifoFillLevel(): %d\r\n", temp-fifoNextRead))
  return temp - fifoNextRead;
}




int computeFilter1(int value) {
  static fifoValue lastResult = (fifoValue)0;
  PRINT_DEBUG(2, xil_printf("computeFilter1(value: %d);\r\n", value))
//  fifoValue fValue = (fifoValue)value / (fifoValue)(FIFO_SIZE-1);
  fifoValue fValue = (fifoValue)value / FIFO_LOG_SIZE;
  PRINT_DEBUG(5, xil_printf("  fValue = %d\r\n", (int)fValue))
  lastResult += fValue;
  PRINT_DEBUG(5, xil_printf("  lastResult = %d\r\n", (int)lastResult))
  lastResult -= fifoGet();
  PRINT_DEBUG(5, xil_printf("  lastResult = %d\r\n", (int)lastResult))
  fifoPut(fValue);

  // TODO: lastResult ‰ndern oder nur den R¸ckgabewert ‰ndern?
  // Das ist im Fall einer Begrenzung ein Unterschied bei der jeweils n‰chsten Berechnung.
  // ** bisher kein Ueber-/Unterlauf passiert **
  if ( (int)lastResult > 255) {
//    printf("‹berlauf %d\n", lastResult);
    lastResult = (fifoValue)255;
  } else if ( (int)lastResult < 0) {
//    printf("Unterlauf %d\n", lastResult);
    lastResult = (fifoValue)0;
  }
  return (int)lastResult;
}
