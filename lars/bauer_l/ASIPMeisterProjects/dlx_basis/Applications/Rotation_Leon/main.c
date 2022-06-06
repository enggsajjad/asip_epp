
#if 1
// Execute on LEON
#include "lib_lcd_leon.h"
#include "intToStr.h"
#define USE_T_PRINT 0

#else
// Execute on PC
#include "stdio.h"
#define LCD_ADDR 0
#define USE_PRINTF 1
int g_drawline(int a, int b, int c, int d) { return 0; }
int sendcommand(char a, char b, int* c, int d, int e, int f, int g) { return 0; }
int d_clear() { return 0; }
int g_makebar(int a, int b, int c, int d, int e, int f, int g, int h, int i, int j) { return 0; }
int wait() { return 0; }

#endif


struct point {float x; float y; float w;};

float sinusLUT[] = {0,           0.017452406, 0.034899496, 0.052335956, 0.069756473,
		    0.087155742, 0.104528463, 0.121869343, 0.139173101, 0.156434465,
		    0.173648177, 0.190808995, 0.20791169,  0.224951054, 0.21921895,
		    0.258819045, 0.275637355, 0.292371704, 0.309016994, 0.325567154,
};

float cosinusLUT[] = {1,           0.999847695, 0.999390827, 0.998629534, 0.99756405,
		      0.996194698, 0.994521895, 0.992546151, 0.990268068, 0.98768834,
		      0.984807753, 0.981627183, 0.9781476,   0.974370064, 0.970295726,
		      0.965925826, 0.961261695, 0.956304756, 0.951056516, 0.945518575
};


// returns sin(angle)
float mysin(int angle) {
  if (angle < 0 || angle > (sizeof(sinusLUT)/sizeof(float)) ) return 0;
  return sinusLUT[angle];
}

// returns cos(angle)
float mycos(int angle) {
  if (angle < 0 || angle > (sizeof(cosinusLUT)/sizeof(float)) ) return 0;
  return cosinusLUT[angle];
}

struct point* rotate(struct point* center, struct point* p, int angle) {
  static struct point resultPoint;
  float deltaX, deltaY;
  float sinAngle, cosAngle;

  deltaX = p->x - center->x;
  deltaY = p->y - center->y;
  sinAngle = mysin(angle);
  cosAngle = mycos(angle);
  
  resultPoint.x = cosAngle*deltaX - sinAngle*deltaY;
  resultPoint.x += center->x;
  if (resultPoint.x < 0) resultPoint.x = 0;
  if (resultPoint.x > 240) resultPoint.x = 240;
  
  resultPoint.y = sinAngle*deltaX + cosAngle*deltaY;
  resultPoint.y += center->y;
  if (resultPoint.y < 0) resultPoint.y = 0;
  if (resultPoint.y > 128) resultPoint.y = 128;

  resultPoint.w = 1;
  
  return &resultPoint;
}


int convInt(float f) {
  return (int)(f+0.5);
}

int printCoordinates(struct point* p) {
  char tempString[20];
  t_print("(");
  intToStr(convInt(p->x), tempString);
  t_print(tempString);
  t_print(",");
  intToStr(convInt(p->y), tempString);
  t_print(tempString);
  t_print(")");
  return 0;
}


int drawRectangle(struct point* a, struct point* b, struct point* c, struct point* d) {
#if USE_T_PRINT
  printCoordinates(a);
  t_print(" ");
  printCoordinates(b);
  t_print(" ");
  printCoordinates(c);
  t_print(" ");
  printCoordinates(d);
  t_print("\r\n");
#endif
#if USE_PRINTF
  printf("(%.2f, %.2f) ", a->x, a->y);
  printf("(%.2f, %.2f) ", b->x, b->y);
  printf("(%.2f, %.2f) ", c->x, c->y);
  printf("(%.2f, %.2f)\n", d->x, d->y);
#endif
  g_drawline(convInt(a->x), convInt(a->y), convInt(b->x), convInt(b->y));
  g_drawline(convInt(b->x), convInt(b->y), convInt(c->x), convInt(c->y));
  g_drawline(convInt(c->x), convInt(c->y), convInt(d->x), convInt(d->y));
  g_drawline(convInt(d->x), convInt(d->y), convInt(a->x), convInt(a->y));
  return 0;
}

int delete() {
  int args[4];

  args[0] = 30;
  args[1] = 30;
  args[2] = 120;
  args[3] = 120;

  sendcommand('R', 'L', args, 0, 4, 0, LCD_ADDR);
  return 0;
}
/*
int bargraphValue;

int pollDisplay() {
  char data[10];
  int bytes_in_buffer;
  int temp;
  int i = 0;
  
  // check if there is data to read in LCD buffer
  bytes_in_buffer = checkbuffer();
  
  if (bytes_in_buffer > 3) {
    
    //debug output
#if 0
      intToStr(bytes_in_buffer, data);
      g_print("   \0", 8, 120);
      g_print(data, 8, 120);
#endif
    temp = getbytes(data, bytes_in_buffer);
    
    if (temp != bytes_in_buffer) return temp;
    
    // TODO check if (temp == bytes_in_buffer);
    while (i < bytes_in_buffer) {
      temp = loadByteUnsigned(data + i);
      i++;
      if (temp != 27) return 1;  // check for ESC
      temp = loadByteUnsigned(data + i);
      i++;
      switch (temp) {
      case 'A':	// touch switch button event
	g_print("A", 0, 120);
	temp = loadByteUnsigned(data + i);
	i++;
	if (temp != 1) return 3;
	temp = loadByteUnsigned(data + i); // return code of the switch
	i++;
	temp--; // because the array starts at 0, event codes start at 1
	#if 0
	  if (switches[temp].value == 1) switches[temp].value = 0;
	  else if (switches[temp].value == 0) switches[temp].value = 1;
	  else return 4;
	  switches[temp].update = 1;
	#endif
	i++;
	break;
	
      case 'N':	// menu event
	g_print("N", 0, 120);
	temp = loadByteUnsigned(data + i);
	  i++;
	  if (temp != 1) return 3;
	  temp = loadByteUnsigned(data + i); // return code of the switch
	  i++;
	  temp--; // because the array starts at 0, event codes start at 1
#if 0
	    switches[temp].value = 1;
	    // now set value of all other switches of the menu to 0
	    for (j = 0; j <= activeswitches; j++) {
	    if (switches[j].menu == switches[temp].menu && j != temp){
	    switches[j].value = 0;
	    switches[j].update = 1;
	    }
	  }
	  switches[temp].update = 1;
#endif
	  i++;
	  break;
	  
      case 'B':	// bargraph event
	g_print("B", 0, 120);
	temp = loadByteUnsigned(data + i);
	i++;
	  if (temp != 2) return 3;
	  temp = loadByteUnsigned(data + i); // number of the changed bar
	  i++;
	  temp--; // because the array starts at 0, event codes start at 1
	  #if 0
	    bars[temp].value = loadByteUnsigned(data + i);
	    bars[temp].update = 1;
	  #endif
	  bargraphValue = loadByteUnsigned(data + i);
	  i++;
	  break;
	  
      case 'T':	// menu event to be handled by host
	break;
	
      case 'H':	// free define touch event
	break;
	
      default: // we should never go here !!
	  return 2;
      }
      
      if (i > bytes_in_buffer + 1) return 5;
    }
    i = 0;
  }

  return 0;
}
*/


int main() {
  struct point a, b, c, d, center;
  struct point* result;
  int angle, i;

  a.x=50; a.y=50; a.w=1;
  b.x=100; b.y=50; b.w=1;
  c.x=100; c.y=100; c.w=1;
  d.x=50; d.y=100; d.w=1;
  center.x = (a.x + b.x + c.x + d.x) / 4;
  center.y = (a.y + b.y + c.y + d.y) / 4;
  center.w=1;
  angle = 15;

  d_clear();
  g_makebar(10, 10, 100, 20, 0, 19, 15, 1, 1, 1);

  drawRectangle(&a, &b, &c, &d);

  for (i=0; i<30; ) {

    result = rotate(&center, &a, angle);
    a.x = result->x;
    a.y = result->y;

    result = rotate(&center, &b, angle);
    b.x = result->x;
    b.y = result->y;

    result = rotate(&center, &c, angle);
    c.x = result->x;
    c.y = result->y;

    result = rotate(&center, &d, angle);
    d.x = result->x;
    d.y = result->y;

    wait(100000);
    //pollDisplay();
    //angle = bargraphValue;
    delete();
    drawRectangle(&a, &b, &c, &d);
  }

  return 0;
}
