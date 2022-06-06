#define COSY
#include "lib_lcd.h"
#include "loadStoreByte.h"

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

int create_switch(char* str, int x1, int y1, int x2, int y2, int group) {
  static int curr_group = 0;
  
  if (group < 0 || group > 256) return 1;
  
  if (curr_group != group) {
    g_makeradiogroup(group);
    curr_group = group;
  }

  g_makeswitch(str, x1, y1, x2, y2, activeswitches + 1, activeswitches + 1);

  switches[activeswitches].value = 0;
  switches[activeswitches].radio_group = group;
  switches[activeswitches].update = 1;
  switches[activeswitches].menu = 0;

  activeswitches++;

  return activeswitches - 1;
}

int create_menu_switch(const char* str, int x1, int y1, int x2, int y2) {
  static int curr_menu = 1;

  int i = 0;
  int numentries = 0;
  int ch;

  g_makemenubutton(str, x1, y1, x2, y2, 0, 0, activeswitches + 1, 10);
  
  do {
    ch = loadByteUnsigned(str + i++);
    if (ch == 124) numentries++;
  }
   while (ch != 0);

  for (i = 0; i < numentries; i++) {
    switches[activeswitches].value = 0;
    switches[activeswitches].radio_group = 0;
    switches[activeswitches].update = 0;
    switches[activeswitches].menu = curr_menu;
    activeswitches++;
  }
  curr_menu++;
}

int create_bar(int x1, int y1, int x2, int y2, int low_val, int high_val, int init_val,  int type, int fill_type, int touch) {
  g_makebar(x1, y1, x2, y2, low_val, high_val, init_val, type, fill_type, touch);

  bars[activebars].value = init_val;
  bars[activebars].update = 1;

  activebars++;

  return activebars - 1;
}