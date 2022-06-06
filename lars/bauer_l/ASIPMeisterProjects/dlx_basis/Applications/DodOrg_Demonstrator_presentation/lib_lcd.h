#ifndef _t_print_fbjvfgjbgkjgfvjcsghdjigcahmicgmsrzcgarmiodghwv5uehtcg
#define _t_print_fbjvfgjbgkjgfvjcsghdjigcahmicgmsrzcgarmiodghwv5uehtcg

/* ------------------------
   some stuff to help ...
   ------------------------ */

int strlength(const char* str);

// burn some CPU cycles
int wait(const int waitvalue);

// read acknowledge from display
int getack(int address);

int checkbuffer();

// read specified amount of data from display, returns amount of bytes read
int getbytes(char* dest, int bytes_to_read);

/* ------------------------
   Send individual commands
   ------------------------ */

int sendcommand (const char cmd0, const char cmd1, const int options[], const char text[], int intcount, int charcount, int address);

/* --------------------------------------
   Convenience functions in Terminal Mode
   -------------------------------------- */

// print text at current cursor position
int t_print (const char* str);

int t_cursor (int onoff);

/* -------------------------------------
   Convenience functions in Graphic Mode
   ------------------------------------- */

int g_print (const char* str, int x, int y);

int g_drawrect (int x1, int y1, int x2, int y2);

int g_drawline (int x1, int y1, int x2, int y2);

int g_makebar (int x1, int y1, int x2, int y2, int low_val, int high_val, int init_val,  int type, int fill_type, int touch);

int g_setbar (int barnum, int value);

int g_makeswitch (const char* str, int x1, int y1, int x2, int y2, int down, int up);

int g_makemenubutton (const char* str, int x1, int y1, int x2, int y2, int down, int up, int select, int space);

int g_makeradiogroup(int group_number);


/* -----------------
   Readback Commands
   ----------------- */

int c_readbar (int barnum);

int c_readswitch (int switchnum);

#endif
