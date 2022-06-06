#include "larsix.h"
#include "lib_lcd.h"
#include "loadStoreByte.h"
#include "intToStr.h"
#include "lib_lcd_larsix.h"


// in case of error quits and returns a positive error code
//
// ERRORCODE 1:  missing ESC
// ERRORCODE 2:  unexpected symbol describing sending LCD item
// ERRORCODE 3:  wrong packet length
// ERRORCODE 4:  unexpected value in switch data-structure
// ERRORCODE 5:  unexpected data length
//

int poll_display() {
  char data[10];
  char text[10];
  int bytes_in_buffer;
  int temp;
  int i = 0;
  int j = 0;
  
  while (1) {
    // check if there is data to read in LCD buffer
    bytes_in_buffer = checkbuffer();

    if (bytes_in_buffer > 3) {

      //debug output
/*       g_print("   \0", 8, 120); */
/*       intToStr(bytes_in_buffer, data); */
/*       g_print(data, 8, 120); */

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
/* 	  g_print("A", 0, 120); */
	  temp = loadByteUnsigned(data + i);
	  i++;
	  if (temp != 1) return 3;
	  temp = loadByteUnsigned(data + i); // return code of the switch
	  i++;
	  temp--; // because the array starts at 0, event codes start at 1
	  if (switches[temp].value == 1) switches[temp].value = 0;
	  else if (switches[temp].value == 0) switches[temp].value = 1;
	  else return 4;
	  switches[temp].update = 1;
	  i++;
	  break;

	case 'N':	// menu event
/* 	  g_print("N", 0, 120); */
	  temp = loadByteUnsigned(data + i);
	  i++;
	  if (temp != 1) return 3;
	  temp = loadByteUnsigned(data + i); // return code of the switch
	  i++;
	  temp--; // because the array starts at 0, event codes start at 1
	  switches[temp].value = 1;
	  // now set value of all other switches of the menu to 0
	  for (j = 0; j <= activeswitches; j++) {
	    if (switches[j].menu == switches[temp].menu && j != temp){
	      switches[j].value = 0;
	      switches[j].update = 1;
	    }
	  }
	  switches[temp].update = 1;
	  i++;
	  break;

	case 'B':	// bargraph event
/* 	  g_print("B", 0, 120); */
	  temp = loadByteUnsigned(data + i);
	  i++;
	  if (temp != 2) return 3;
	  temp = loadByteUnsigned(data + i); // number of the changed bar
	  i++;
	  temp--; // because the array starts at 0, event codes start at 1
 	  bars[temp].value = loadByteUnsigned(data + i);
	  bars[temp].update = 1;
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

    switchThread();
  }
  return 0;
}

int test_poll() {
  char text[10];
  int i;
  
  create_menu_switch("UCMenu1| Test 1 | Test 2 | Test 3 \0", 90, 20, 140, 40);

  create_menu_switch("UCMenu2| Test 4 | Test 5 | Test 6 \0", 160, 20, 210, 40);
  
  while(1) {
/*     if (switches[7].update == 1) { */
/*       intToStr(switches[3].value, text); */
/*       g_print("   \0", 42, 60); */
/*       g_print(text, 42, 60); */
/*       switches[3].update = 0; */
/*     } */

/*     if (bars[0].update == 1) { */
/*       intToStr(bars[0].value, text); */
/*       g_print("   \0", 130, 60); */
/*       g_print(text, 130, 60); */
/*       bars[0].update = 0; */
/*     } */

    for (i = 0; i <= activeswitches; i++) {
      if (switches[i].update == 1 && switches[i].menu == 1) {
	if (switches[i].value == 1) {
	  g_print("Test ", 0, 0);
	  intToStr(i + 1, text);
	  g_print(text, 40, 0);
	}
	switches[i].update = 0;
      }
    }

    for (i = 0; i <= activeswitches; i++) {
      if (switches[i].update == 1 && switches[i].menu == 2) {
	if (switches[i].value == 1) {
	  g_print("Test ", 0,0);
	  intToStr(i + 1, text);
	  g_print(text, 40, 0);
	}
	switches[i].update = 0;
      }
    }


    //  while(1)
    switchThread();
  }

  return 0;
}

