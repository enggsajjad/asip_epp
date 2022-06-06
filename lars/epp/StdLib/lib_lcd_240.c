#include "lib_lcd.h"
#include "string.h"
#include "loadStoreByte.h"


/* ------------------------
   some stuff to help ...
   ------------------------ */

asm int LOAD_LCD_ADDRESS()
{
@[	.barrier
]
	lhi @{}, $LCD_HI_ADDR
	nop
	nop
	nop
}


asm void PUTC_SINAS (int c, int address)
{
@[	.barrier
]
	nop
	nop
	nop
	sw  0(@{address}), @{c}
}


asm int GETC_SINAS (int address)
{
@[	.barrier
]
	nop
	nop
	nop
	lw  @{},0(@{address})
	nop
	nop
	nop
}


#define PUTC(x) { value = (int) (x); PUTC_SINAS(value, lcdAddress); };


// burn some CPU cycles
int wait (const int waitvalue) {
  int count = 0;
  while (count++ != waitvalue);

  return --count;
}

// read acknowledge from display
int getack (int address) {
  int value;
  int adr = address;
  volatile int lcdAddress = LOAD_LCD_ADDRESS();

  PUTC_SINAS(0, lcdAddress);
  PUTC(++adr);
  PUTC_SINAS(1, lcdAddress);
  value = GETC_SINAS(lcdAddress);

  if (value == 15) return 1;
  else return 0;
}

int checkbuffer () {
  int value = 0;
  int checksum;
  int length = 0;
  int bytes_ready = 0;
  int bytes_free = 0;
  int bcc = 0;
  const adr = LCD_I2C_ADDR << 1 ;
  volatile int lcdAddress = LOAD_LCD_ADDRESS();

  // send command
  PUTC(4);
  PUTC(adr);
  PUTC(18); // DC2
  checksum = 18;
  PUTC(1);
  checksum += value;
  PUTC(73); // I
  checksum += value;
  PUTC(checksum);

  checksum = -1;
  while (checksum == -1) {
    // fetch buffer information
    PUTC_SINAS(0, lcdAddress);
    PUTC(adr + 1);
    PUTC_SINAS(6, lcdAddress);

    value = GETC_SINAS(lcdAddress);  // ACK
    value = GETC_SINAS(lcdAddress);  // DC2
    checksum = value;
    length = GETC_SINAS(lcdAddress); // length
    checksum += length;
    bytes_ready = GETC_SINAS(lcdAddress);   // data
    checksum += bytes_ready;
    bytes_free = GETC_SINAS(lcdAddress);   // data
    checksum += bytes_free;
    bcc = GETC_SINAS(lcdAddress);    // bcc

    // check for transmission errors (SmallProtokoll)
    checksum = checksum % 256;
    if (checksum != bcc) {
      checksum = -1;  // loop runs again

      // rerequest last data package
      PUTC(4);
      PUTC(adr);
      PUTC(18); // DC2
      checksum = 18;
      PUTC(1);
      checksum += value;
      PUTC(82); // R
      checksum += value;
      PUTC(checksum);
    }
  }

  return bytes_ready;
}

// read specified amount of data from display, returns amount of bytes read
int getbytes (char* dest, int bytes_to_read) {
  int bytes_read = 0;
  int value;
  int checksum;
  int length = 0;
  int bcc = 0;
  const adr = LCD_I2C_ADDR << 1 ;
  volatile int lcdAddress = LOAD_LCD_ADDRESS();

  // send command
  PUTC(4);
  PUTC(adr);
  PUTC(18); // DC2
  checksum = 18;
  PUTC(1);
  checksum += value;
  PUTC(83); // S
  checksum += value;
  PUTC(checksum);

  checksum = -1;
  while (checksum == -1) {
    // fetch buffer data
    PUTC_SINAS(0, lcdAddress);
    PUTC(adr + 1);
    PUTC_SINAS(bytes_to_read + 4, lcdAddress);

    value = GETC_SINAS(lcdAddress);  // ACK
    // todo : check if ACK was ok
    value = GETC_SINAS(lcdAddress);  // DC1
    checksum = value;
    // todo : check if length is equal bytes_to_read
    length = GETC_SINAS(lcdAddress); // length
    checksum += length;
    while (bytes_read != bytes_to_read) {
      value = GETC_SINAS(lcdAddress);
      storeByte(dest + bytes_read, value);
      bytes_read++;
      checksum += value;
    }
    bcc = GETC_SINAS(lcdAddress);    // bcc

    // check for transmission errors (SmallProtokoll)
    checksum = checksum & 0xFF;
    if (checksum != bcc) {
      checksum = -1;  // loop runs again

      // rerequest last data package
      PUTC(4);
      PUTC(adr);
      PUTC(18); // DC2
      checksum = 18;
      PUTC(1);
      checksum += value;
      PUTC(82); // R
      checksum += value;
      PUTC(checksum);
    }
  }

  return bytes_read;
}

/* ------------------------
   Send individual commands
   ------------------------ */

int sendcommand (const char cmd0, const char cmd1, const int options[], const char text[], int intcount, int charcount, int address) {
  int checksum;
  int* options_ptr = options;
  char* text_ptr = text;
  int intcount_local;
  int charcount_local;
  volatile int lcdAddress = LOAD_LCD_ADDRESS();

  // amount of control char characters
  const int ctrl_chars = 3;
  int value;

  address <<= 1;

  do {
    intcount_local = intcount;
    charcount_local = charcount;
    // length + start byte, data length byte, newline character,
    // carriage return character and checksum
    PUTC(intcount + charcount + ctrl_chars + 3);
    PUTC(address);
    PUTC(17); // DC1
    checksum = 17;
    PUTC(intcount + charcount + ctrl_chars);
    checksum += value;

    // now we put special code characters here
    PUTC(27); // ESC
    checksum += value;
    PUTC(cmd0);
    checksum += value;
    PUTC(cmd1);
    checksum += value;

    while (intcount_local-- != 0) {
      value = *options_ptr++;
      PUTC_SINAS(value, lcdAddress);
      checksum += value;
    }

    while (charcount_local-- != 0) {
      value = *text_ptr++;
      PUTC_SINAS(value, lcdAddress);
      checksum += value;
    }

    PUTC(checksum);
  }
  while (getack(address) != 0);

  return 0;
}

/* -------------------------------------
   Convenience functions in Graphic Mode
   ------------------------------------- */

int g_print (const char* str, int x, int y) {
  int args[2];

  args[0] = x;
  args[1] = y;

  sendcommand('Z', 'L', args, str, 2, strlen(str) + 1, LCD_I2C_ADDR); // print hellow graphically

  return 0;
}

int g_drawrect (int x1, int y1, int x2, int y2) {
  int args[4];

  args[0] = x1;
  args[1] = y1;
  args[2] = x2;
  args[3] = y2;

  sendcommand('G', 'R', args, 0, 4, 0, LCD_I2C_ADDR); // draw a rectangle

  return 0;
}

int g_drawline (int x1, int y1, int x2, int y2) {
  int args[4];

  args[0] = x1;
  args[1] = y1;
  args[2] = x2;
  args[3] = y2;

  sendcommand('G', 'D', args, 0, 4, 0, LCD_I2C_ADDR); // draw a line

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

    sendcommand('B', 'R', args, 0, 9, 0, LCD_I2C_ADDR); // draw bargraph

    // problematic !! seems to lead to incomplete data packages beeing sent
    /*
     args[0] = 2;
     sendcommand('A', 'Q', args, 0, 1, 0, LCD_I2C_ADDR); // bargraph does write to buffer immediately when changed
    */

    if (touch != 0) {
      args[0] = barcounter;
      sendcommand('A', 'B', args, 0, 1, 0, LCD_I2C_ADDR); // bargraph is touch
    }

    args[0] = barcounter++;
    args[1] = init_val;
    sendcommand('B', 'A', args, 0, 2, 0, LCD_I2C_ADDR); // bargraph is set to 50

    return barcounter - 1;
  }
  else return -1;
}

int g_setbar (int barnum, int value) {
  int args[2];

  args[0] = barnum;
  args[1] = value;
  sendcommand('B', 'A', args, 0, 2, 0, LCD_I2C_ADDR); // bargraph is set to 50

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
  sendcommand('A', 'K', args, str, 6, strlen(str) + 1 , LCD_I2C_ADDR); // define touch switch

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
  sendcommand('A', 'M', args, str, 7, strlen(str) + 1, LCD_I2C_ADDR); // define menubutton

  if (space > 0) {
    sendcommand('N', 'Y', &space, 0, 1, 0, 111);
  }

  return 0;
}

int g_makeradiogroup(int group_number) {
  sendcommand('A', 'R', &group_number, 0, 1, 0, LCD_I2C_ADDR); // define radiogroup

  return 0;
}


/* --------------------------------------
   Convenience functions in Terminal Mode
   -------------------------------------- */

// print text at current cursor position
int t_print (const char* str) {
  sendcommand('Z', 'T', 0, str, 0, strlen(str), LCD_I2C_ADDR);
  wait(10000);
  return 0;
}

int t_printInt(int a) {
  char tempString[20];
  intToStr(a, tempString);
  t_print(tempString);
  return 0;
}

int t_printHex(int value, int digits) {
  char tempString[10];
  intToHexStr(value, tempString, digits);
  t_print("0x");
  t_print(tempString);
  return 0;
}

int t_cursor (int onoff) {
  sendcommand('T', 'C', &onoff, 0, 1, 0, LCD_I2C_ADDR);

  return 0;
}

int t_enable (int onoff) {
  if (onoff) sendcommand('T', 'E', 0, 0, 0, 0, LCD_I2C_ADDR);
  else sendcommand('T', 'A', 0, 0, 0, 0, LCD_I2C_ADDR);

  return 0;
}

int t_saveCursorPosition() {
  sendcommand('T', 'S', 0, 0, 0, 0, LCD_I2C_ADDR);
  return 0;
}

int t_restoreLastSavedCursorPosition() {
  sendcommand('T', 'R', 0, 0, 0, 0, LCD_I2C_ADDR);
  return 0;
}

/* -----------------
   Readback Commands
   ----------------- */

/*
  int c_readbar (int barnum) {
    int args[1];
    int check = 0;

    args[0] = barnum;
    sendcommand('B', 'S', args, 0, 1, 0, LCD_I2C_ADDR); // read bargraph value
    wait (8000);

    do check = checkbuffer();
    while(check == 0);

    return check;
  }

  int c_readswitch (int switchnum) {
    int args[1];
    int check = 0;

    args[0] = switchnum;
    sendcommand('A', 'X', args, 0, 1, 0, LCD_I2C_ADDR); // read switch value
    wait (8000);

    do check = checkbuffer();
    while(check == 0);

    return check;
  }
*/


/* ----------------
   Display Commands
   ---------------- */

int d_clear() {
  sendcommand('D', 'L', 0, 0, 0, 0, LCD_I2C_ADDR);  // clear display

  return 0;
}
