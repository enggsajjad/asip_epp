#include "lib_lcd.h"
#define LCD_ADDR 111

int redrawBarGraph(int position, int pattern) {
  static int firstRun = 1;
  int args[9];

  if (firstRun == 1) {
    args[0] = 10;
    args[1] = 1;
    sendcommand('B', 'D', args, 0, 2, 0, LCD_ADDR); // delete bargraph
    firstRun = 0;
  }
  
  args[0] = 10;  // select internal number for bar
  args[1] = 10;
  args[2] = 100;
  args[3] = 200;
  args[4] = 130;
  args[5] = 0;       // low value of bar
  args[6] = 254;      // high value of bar
  args[7] = 1;          // type of bar (filled, line ...)
  args[8] = pattern;     // look of bar (line-breadth ...)
  sendcommand('B', 'R', args, 0, 9, 0, LCD_ADDR); // draw bargraph

  args[0] = 10;
  args[1] = position;
  sendcommand('B', 'A', args, 0, 2, 0, LCD_ADDR); // set bargraph initial value
  
  return 0;
}

int main() {
  char* string = "Hallo Welt\r\n";
  int i, barNumber;
  int pattern, position, pos_incr, pat_incr;

  t_print(string);
  g_drawrect(10,10,20,20);
  g_makeswitch("Yet Another Switch", 30, 10, 200, 30, 0, 0);
  g_makebar(10, 40, 200, 60, 0, 254, 50, 1, 1, 1);

  barNumber = g_makebar(10, 70, 200, 90, 0, 254, 0, 1, 1, 0);
  pattern = 1;
  pat_incr = 1;
  position = 10;
  pos_incr = 50;
  while (1) {
    position += pos_incr;
    if (position > 254 || position < 10) {
      pos_incr = -pos_incr;
      position += 2*pos_incr;
    }

    pattern += pat_incr;
    if (pattern > 15 || pattern < 2) {
      pat_incr = -pat_incr;
      pattern += 2*pat_incr;
    }

    redrawBarGraph(position, pattern);

    for (i=0; i<254; i+=2) g_setbar(barNumber, i);
    for (i=254; i>0; i-=2) g_setbar(barNumber, i);
  }

  return 0;
}

