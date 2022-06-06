
#include "Larsix_Core.h"
#include "lib_lcd.h"
#include "intToStr.h"



//***************************************************************************
// Task 0
//***************************************************************************
int task0b() {
  t_print("TASK 0 a\n");
  return 0;
}
int task0a() {
  t_print("TASK 0 b\n");
  task0b();
  task0b();
  return 0;
}

int task0() {
  int i = 0;
  while(1) {
    i++;
    t_print("\nTASK 0\n");
    task0a();
    if (i%10 == 9) {
      t_print("\n");
      yield();
    }
  }
}

//***************************************************************************
// Task 1
//***************************************************************************
int task1() {
  int i = 0;
  while(1) {
    i+=2;
    t_print("\t\t\t\tTASK 1\n");
    if (i%20 == 18) yield();
  }
}


//***************************************************************************
// Task 2
//***************************************************************************
int task2() {
  int i, j;
  char tempString[20];
  while(1) {

    for (i=0; i<30; i++) {
      for (j=0; j<=i; j++) {
	t_print("\t\t\t\t\t\t\t\tTASK 2 (i=");
	intToStr(i, tempString);
	t_print(tempString);
	t_print("; j=");
	intToStr(j, tempString);
	t_print(tempString);
	t_print(")\n");
      }
      yield();
    }

  }
}
