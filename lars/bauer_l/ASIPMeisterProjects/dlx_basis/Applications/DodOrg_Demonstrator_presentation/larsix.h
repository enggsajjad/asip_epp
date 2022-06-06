#ifndef laberrhabarber
#define laberrhabarber

//***************************************************************************
// Global variables
//***************************************************************************

// variables for LCD items
struct switch_item {
  int value;
  int radio_group;
  int update;
  int menu;
} switches[32];

struct bar_item {
  int value;
  int update;
} bars[16];

int activebars = 0;
int activeswitches = 0;
int speedbar, pitchbar, repeatbar, soundswitch, filterswitch, sourceswitch;




//***************************************************************************
// Code for Thread switching
//***************************************************************************

int switchThread();

#endif