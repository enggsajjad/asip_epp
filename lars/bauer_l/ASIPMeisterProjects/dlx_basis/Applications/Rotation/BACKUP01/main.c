#include "lib_lcd.h"
#include "intToStr.h"

struct point {int x; int y; int w;};


struct point* rotate(struct point* center, struct point* input) {
  static struct point resultPoint;
  int x, y;

  x = input->x + center->x;
  y = input->y + center->y;
  
  resultPoint.x = 247*x + 66*y;
  resultPoint.x >>= 8;
  resultPoint.x -= center->x;
  
  resultPoint.y = 247*y + 66*x;
  resultPoint.y >>= 8;
  resultPoint.y -= center->y;

  resultPoint.w = 1;
  
  return &resultPoint;
}

int printCoordinates(struct point* p) {
  char tempString[20];
  t_print("(");
  intToStr(42, tempString);
  t_print(tempString);
  t_print(",");
  intToStr(p->y, tempString);
  t_print(tempString);
  t_print(")");
  return 0;
}

int drawRectangle(struct point* a, struct point* b, struct point* c, struct point* d) {
//  d_clear();
  printCoordinates(a);
  t_print("  ");
  printCoordinates(b);
  t_print("  ");
  printCoordinates(c);
  t_print("  ");
  printCoordinates(d);
  t_print("\r\n");
  g_drawline(a->x, a->y, b->x, b->y);
  g_drawline(b->x, b->y, c->x, c->y);
  g_drawline(c->x, c->y, d->x, d->y);
  g_drawline(d->x, d->y, a->x, a->y);
  return 0;
}

int main() {
  struct point a, b, c, d, center;
  struct point* result;
  int i;

  char tempString[20];
  t_print("(");
  intToStr(42, tempString);
  t_print(tempString);
  t_print(",");

  /*
  a.x=50; a.y=50; a.w=1;
  b.x=100; b.y=50; b.w=1;
  c.x=100; c.y=100; c.w=1;
  d.x=50; d.y=100; d.w=1;
  center.x=75; center.y=75; center.w=1;

  drawRectangle(&a, &b, &c, &d);

  for (i=0; i<1; i++) {
    result = rotate(&center, &a);
    a.x = result->x;
    a.y = result->y;

    result = rotate(&center, &b);
    b.x = result->x;
    b.y = result->y;

    result = rotate(&center, &c);
    c.x = result->x;
    c.y = result->y;

    result = rotate(&center, &d);
    d.x = result->x;
    d.y = result->y;

    drawRectangle(&a, &b, &c, &d);
  }
  */
  return 0;
}
