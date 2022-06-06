#define COSY
#include "lib_lcd.h"
#include "intToStr.h"
#include "loadStoreByte.h"
extern wait(int);


struct point {int x; int y; int w;};

int sinusLUT[] = {0,     1144,  2287,  3430,  4572,
		  5712,  6850,  7987,  9121,  10252,
		  11380, 12505, 13626, 14742, 15855,
		  16962, 18064, 19161, 20252, 21336 };

int cosinusLUT[] = {65536, 65526, 65496, 65446, 65376,
		    65287, 65177, 65048, 64898, 64729,
		    64540, 64332, 64104, 63856, 63589,
		    63303, 62997, 62672, 62328, 61966 };


// returns sin(angle)<<16. The shift is done as a kind of fix-point arithmetic.
int sin(int alpha) {
  if (alpha < 0 || alpha > sizeof(sinusLUT)) return 0;
  return sinusLUT[alpha];
}

// returns sin(angle)<<16. The shift is done as a kind of fix-point arithmetic.
int cos(int alpha) {
  if (alpha < 0 || alpha > sizeof(cosinusLUT)) return 0;
  return cosinusLUT[alpha];
}

struct point* rotate(struct point* center, struct point* p, int alpha) {
  static struct point resultPoint;
  int deltaX, deltaY;
  int sinAlpha, cosAlpha;
  char tempString[20];
  int temp1, temp2;

  deltaX = p->x - center->x;
  deltaY = p->y - center->y;
  sinAlpha = sin(alpha);
  cosAlpha = cos(alpha);
  
  resultPoint.x = cosAlpha*deltaX - sinAlpha*deltaY;
  resultPoint.x >>= 16;
  resultPoint.x += center->x;
  if (resultPoint.x < 0) resultPoint.x = 0;
  if (resultPoint.x > 320) resultPoint.x = 320;

  temp1 = sinAlpha*deltaX;
  temp2 = cosAlpha*deltaY;
  resultPoint.y = temp1+temp2; // This temp-stuff was needed to workarround an unclear problem between dlxsim and FPGA prototype
  resultPoint.y >>= 16;
  resultPoint.y += center->y;

  if (resultPoint.y < 0) resultPoint.y = 0;
  if (resultPoint.y > 240) resultPoint.y = 240;

  resultPoint.w = 1;
  return &resultPoint;
}


int printCoordinates(struct point* p) {
  char tempString[20];
  t_print("(");
  intToStr(p->x, tempString);
  t_print(tempString);
  t_print(",");
  intToStr(p->y, tempString);
  t_print(tempString);
  t_print(")");
  return 0;
}

int drawRectangle(const struct point* const a, const struct point* const b, const struct point* const c, const struct point* const d) {
  /*
  printCoordinates(a);
  t_print(" ");
  printCoordinates(b);
  t_print(" ");
  printCoordinates(c);
  t_print(" ");
  printCoordinates(d);
  t_print("\r\n");
  */
  g_drawline(a->x, a->y, b->x, b->y);
  g_drawline(b->x, b->y, c->x, c->y);
  g_drawline(c->x, c->y, d->x, d->y);
  g_drawline(d->x, d->y, a->x, a->y);
  return 0;
}

int copyPoint(const struct point* const from, struct point* const to) {
  to->x = from->x;
  to->y = from->y;
  to->w = from->w;
  return 0;
}

int overwriteRectangle(const struct point* const a, const struct point* const b, const struct point* const c, const struct point* const d) {
  // set mode to 'overwrite'
  int args[1];
  args[0] = 2;
  sendcommand('G', 'V', args, 0, 1, 0, LCD_ADDR);

  drawRectangle(a, b, c, d);

  // set mode to 'normal'
  args[0] = 1;
  sendcommand('G', 'V', args, 0, 1, 0, LCD_ADDR);
  return 0;
}


int delete() {
  int args[8];

  args[0] = 0;
  args[1] = 30;
  args[2] = 0;
  args[3] = 30;
  args[4] = 0;
  args[5] = 120;
  args[6] = 0;
  args[7] = 120;

  sendcommand('R', 'L', args, 0, 8, 0, LCD_ADDR);

}

int bargraphValue;

int pollDisplay() {
  char data[10];
  char text[10];
  int bytes_in_buffer;
  int temp;
  int i = 0;
  int j = 0;
  
  // check if there is data to read in LCD buffer
  bytes_in_buffer = checkbuffer();
  
  if (bytes_in_buffer > 3) {
    
    //debug output
    /*
      intToStr(bytes_in_buffer, data);
      g_print("   \0", 8, 120);
      g_print(data, 8, 120);
    */
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
	/*
	  if (switches[temp].value == 1) switches[temp].value = 0;
	  else if (switches[temp].value == 0) switches[temp].value = 1;
	  else return 4;
	  switches[temp].update = 1;
	*/
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
	  /*
	    switches[temp].value = 1;
	    // now set value of all other switches of the menu to 0
	    for (j = 0; j <= activeswitches; j++) {
	    if (switches[j].menu == switches[temp].menu && j != temp){
	    switches[j].value = 0;
	    switches[j].update = 1;
	    }
	  }
	  switches[temp].update = 1;
	  */
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
	  /*
	    bars[temp].value = loadByteUnsigned(data + i);
	    bars[temp].update = 1;
	  */
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

int main() {
  struct point a, b, c, d, center, displayCenter;
  struct point a_old, b_old, c_old, d_old;
  struct point* result;
  int angle, i;

  a.x=80; a.y=80; a.w=1;
  b.x=130; b.y=80; b.w=1;
  c.x=130; c.y=130; c.w=1;
  d.x=80; d.y=130; d.w=1;
  center.x = (a.x + b.x + c.x + d.x) >> 2;
  center.y = (a.y + b.y + c.y + d.y) >> 2;
  center.w=1;
  displayCenter.x=160;
  displayCenter.y=120;
  displayCenter.w=1;
  angle = 15;

  d_clear();
  g_makebar(10, 10, 100, 20, 0, 19, 15, 1, 1, 1);

  drawRectangle(&a, &b, &c, &d);
  copyPoint(&a, &a_old);
  copyPoint(&b, &b_old);
  copyPoint(&c, &c_old);
  copyPoint(&d, &d_old);

  for (i=0; 1; i++) {

    result = rotate(&displayCenter, &center, 5);
    center.x = result->x;
    center.y = result->y;
    
    result = rotate(&displayCenter, &a, 5);
    a.x = result->x;
    a.y = result->y;
    
    result = rotate(&displayCenter, &b, 5);
    b.x = result->x;
    b.y = result->y;
    
    result = rotate(&displayCenter, &c, 5);
    c.x = result->x;
    c.y = result->y;
    
    result = rotate(&displayCenter, &d, 5);
    d.x = result->x;
    d.y = result->y;
    
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

    //delete();
    //d_clear();
    overwriteRectangle(&a_old, &b_old, &c_old, &d_old);
    copyPoint(&a, &a_old);
    copyPoint(&b, &b_old);
    copyPoint(&c, &c_old);
    copyPoint(&d, &d_old);
    drawRectangle(&a, &b, &c, &d);
  }

  return 0;
}
