#include "lib_lcd_leon.h"

// LEON2 address of I2C interface
int *i2c = (int*) 0x20000008;

/* ------------------------
   some stuff to help ...
   ------------------------ */

int strlength (const char* str) {
  char count = 0;

  while (*str != 0){
    str++;
    count++;
  }

  return count;
}

// burn some CPU cycles
int wait (const int waitvalue) {
  int count = 0;
  while (count++ != waitvalue);
  return --count;
}

// read acknowledge from display
int getack (int address) {
  *i2c = 0;
  *i2c = ++address;
  *i2c = 1;

  if (*i2c == 15) return 1;
  else return 0;
}

int checkbuffer () {
  int checksum;
  int length = 0;
  int bytes_ready = 0;
  int bytes_free = 0;
  int bcc = 0;
  const int adr = LCD_ADDR << 1 ;

  // send command
  *i2c = 4;
  *i2c = adr;
  *i2c = 18; // DC2
  checksum = 18;
  *i2c = 1;
  checksum++;
  *i2c = 73; // I
  checksum += 73;
  *i2c = checksum;

  checksum = -1;
  while (checksum == -1) {
    // fetch buffer information
    *i2c = 0;
    *i2c = adr + 1; // read
    *i2c = 6;

    checksum = *i2c;  // ACK
    checksum = *i2c;  // DC2
    length = *i2c;    // length
    checksum += length;
    bytes_ready = *i2c;   // data
    checksum += bytes_ready;
    bytes_free = *i2c;   // data
    checksum += bytes_free;
    bcc = *i2c;    // bcc

    // check for transmission errors (SmallProtokoll)
    checksum = checksum & 0xFF;
    if (checksum != bcc) {
      checksum = -1;  // loop runs again

      // rerequest last data package
      *i2c = 4;
      *i2c = adr;
      *i2c = 18; // DC2
      checksum = 18;
      *i2c = 1;
      checksum++;
      *i2c = 82; // R
      checksum += 82;
      *i2c = checksum;
    }
  }

  return bytes_ready;
}

// read specified amount of data from display, returns amount of bytes read
int getbytes (char* dest, int bytes_to_read) {
  int bytes_read = 0;
  int checksum;
  int length = 0;
  int bcc = 0;
  const int adr = LCD_ADDR << 1 ;

  // send command
  *i2c = 4;
  *i2c = adr;
  *i2c = 18; // DC2
  checksum = 18;
  *i2c = 1;
  checksum++;
  *i2c = 83; // S
  checksum += 83;
  *i2c = checksum;

  checksum = -1;
  while (checksum == -1) {
    // fetch buffer data
    *i2c = 0;
    *i2c = adr + 1;
    *i2c = bytes_to_read + 4;

    checksum = *i2c;  // ACK
    // todo : check if ACK was ok
    checksum = *i2c;  // DC1
    // todo : check if length is equal bytes_to_read
    length = *i2c; // length
    checksum += length;
    while (bytes_read != bytes_to_read) {
      dest[bytes_read] = *i2c;
      checksum += dest[bytes_read++];
    }
    bcc = *i2c;    // bcc

    // check for transmission errors (SmallProtokoll)
    checksum = checksum & 0xFF;
    if (checksum != bcc) {
      checksum = -1;  // loop runs again

      // rerequest last data package
      *i2c = 4;
      *i2c = adr;
      *i2c = 18; // DC2
      checksum = 18;
      *i2c = 1;
      checksum++;
      *i2c = 82; // R
      checksum += 82;
      *i2c = checksum;
    }
  }

  return bytes_read;
}

/* ------------------------
   Send individual commands
   ------------------------ */

int sendcommand (const char cmd0, const char cmd1, const int options[], const char text[], int intcount, int charcount, int address) {
  int checksum;
  int* options_ptr;
  char* text_ptr;
  int intcount_local;
  int charcount_local;

  // amount of control char characters
  const int ctrl_chars = 3;

  address <<= 1;

  do {
    options_ptr = (int*) options;
    text_ptr = (char*) text;
    intcount_local = intcount;
    charcount_local = charcount;
    // length + start byte, data length byte, newline character,
    // carriage return character and checksum
    *i2c = intcount + charcount + ctrl_chars + 3;
    *i2c = address;
    *i2c = 17; // DC1
    checksum = 17;
    *i2c = intcount + charcount + ctrl_chars;
    checksum += intcount + charcount + ctrl_chars;

    // now we put special code characters here
    *i2c = 27; // ESC
    checksum += 27;
    *i2c = cmd0;
    checksum += cmd0;
    *i2c = cmd1;
    checksum += cmd1;

    while (intcount_local-- != 0) {
      *i2c = (char)(*options_ptr);
      checksum += (char)(*options_ptr);
      options_ptr++;
    }

    while (charcount_local-- != 0) {
      *i2c = (int) *text_ptr;
      checksum += (int)* text_ptr;
      text_ptr++;
    }

    *i2c = checksum;
  }
  while (getack(address) != 0);

  return 0;
}

/* --------------------------------------
   Convenience functions in Terminal Mode
   -------------------------------------- */

// print text at current cursor position
int t_print (const char* str) {
  sendcommand('Z', 'T', 0, str, 0, strlength(str), LCD_ADDR);

  return 0;
}

int t_cursor (int onoff) {
  sendcommand('T', 'C', &onoff, 0, 1, 0, LCD_ADDR);

  return 0;
}

int t_enable (int onoff) {
  if (onoff) sendcommand('T', 'E', 0, 0, 0, 0, LCD_ADDR);
  else sendcommand('T', 'A', 0, 0, 0, 0, LCD_ADDR);

  return 0;
}

/* -------------------------------------
   Convenience functions in Graphic Mode
   ------------------------------------- */

int g_print (const char* str, int x, int y) {
  int args[2];

  args[0] = x;
  args[1] = y;

  sendcommand('Z', 'L', args, str, 2, strlength(str) + 1, LCD_ADDR); // print string graphically

  return 0;
}

int g_drawrect (int x1, int y1, int x2, int y2) {
  int args[4];

  args[0] = x1;
  args[1] = y1;
  args[2] = x2;
  args[3] = y2;

  sendcommand('G', 'R', args, 0, 4, 0, LCD_ADDR); // draw a rectangle

  return 0;
}

int g_drawline (int x1, int y1, int x2, int y2) {
  int args[4];

  args[0] = x1;
  args[1] = y1;
  args[2] = x2;
  args[3] = y2;

  sendcommand('G', 'D', args, 0, 4, 0, LCD_ADDR); // draw a line

  return 0;
}

int g_makebar (int x1, int y1, int x2, int y2, int low_val, int high_val, int init_val,  int type, int fill_type, int touch) {
  static int barcounter = 1;
  int args[9];

  if (barcounter < 32) {
    args[0] = barcounter;  // select internal number for bar
    args[1] = x1;
    args[2] = y1;
    args[3] = x2;
    args[4] = y2;
    args[5] = low_val;       // low value of bar
    args[6] = high_val;      // high value of bar
    args[7] = type;          // type of bar (filled, line ...)
    args[8] = fill_type;     // look of bar (line-breadth ...)

    sendcommand('B', 'R', args, 0, 9, 0, LCD_ADDR); // draw bargraph

    // problematic !! seems to lead to incomplete data packages beeing sent
/*     args[0] = 2; */
/*     sendcommand('A', 'Q', args, 0, 1, 0, LCD_ADDR); // bargraph does write to buffer immediately when changed */

    if (touch != 0) {
      args[0] = barcounter;
      sendcommand('A', 'B', args, 0, 1, 0, LCD_ADDR); // bargraph is touch
    }

    args[0] = barcounter++;
    args[1] = init_val;
    sendcommand('B', 'A', args, 0, 2, 0, LCD_ADDR); // bargraph is set to 50

    return barcounter - 1;
  }
  else return -1;
}

int g_setbar (int barnum, int value) {
  int args[2];

  args[0] = barnum;
  args[1] = value;
  sendcommand('B', 'A', args, 0, 2, 0, LCD_ADDR); // bargraph is set to 50

  return 0;
}


int g_makeswitch (const char* str, int x1, int y1, int x2, int y2, int down, int up) {
  int args[6];

  args[0] = x1;
  args[1] = y1;
  args[2] = x2;
  args[3] = y2;
  args[4] = down;
  args[5] = up;
  sendcommand('A', 'K', args, str, 6, strlength(str) + 1 , LCD_ADDR); // define touch switch

  return 0;
}

int g_makemenubutton (const char* str, int x1, int y1, int x2, int y2, int down, int up, int select, int space) {
  int args[7];

  args[0] = x1;
  args[1] = y1;
  args[2] = x2;
  args[3] = y2;
  args[4] = down;
  args[5] = up;
  args[6] = select;
  sendcommand('A', 'M', args, str, 7, strlength(str) + 1, LCD_ADDR); // define menubutton

  if (space > 0) {
    sendcommand('N', 'Y', &space, 0, 1, 0, 111);
  }

  return 0;
}

int g_makeradiogroup(int group_number) {
  sendcommand('A', 'R', &group_number, 0, 1, 0, LCD_ADDR); // define radiogroup

  return 0;
}


/* -----------------
   Readback Commands
   ----------------- */

/* int c_readbar (int barnum) { */
/*   int args[1]; */
/*   int check = 0; */

/*   args[0] = barnum; */
/*   sendcommand('B', 'S', args, 0, 1, 0, LCD_ADDR); // read bargraph value */
/*   wait (8000); */

/*   do check = checkbuffer(); */
/*   while(check == 0); */

/*   return check; */
/* } */

/* int c_readswitch (int switchnum) { */
/*   int args[1]; */
/*   int check = 0; */

/*   args[0] = switchnum; */
/*   sendcommand('A', 'X', args, 0, 1, 0, LCD_ADDR); // read switch value */
/*   wait (8000); */

/*   do check = checkbuffer(); */
/*   while(check == 0); */

/*   return check; */
/* } */


/* ----------------
   Display Commands
   ---------------- */

int d_clear() {
  sendcommand('D', 'L', 0, 0, 0, 0, LCD_ADDR);  // clear display

  return 0;
}
