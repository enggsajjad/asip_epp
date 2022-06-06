int create_switch(char* str, int x1, int y1, int x2, int y2, int group);

// in case of error quits and returns a positive error code
//
// ERRORCODE 1:  missing ESC
// ERRORCODE 2:  unexpected symbol describing sending LCD item
// ERRORCODE 3:  wrong packet length
// ERRORCODE 4:  unexpected value in switch data-structure
// ERRORCODE 5:  unexpected data length
//

int poll_display();
