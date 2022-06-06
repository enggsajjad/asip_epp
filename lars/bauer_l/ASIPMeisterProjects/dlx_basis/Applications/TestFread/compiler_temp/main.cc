#define COSY
#ifndef COSY
#include <stdio.h>
#include <stdlib.h>
#endif

#include "string.h"
#include "fread.h"
#include "lib_lcd.h"
#include "intToStr.h"

#define DEBUG 1

int main () {
  int zaehler;
  int number;
  char userarray1[4];
  char userarray2[4];
  char tempString[20];
  struct MYFILE* file1;
  struct MYFILE* file2;
  
  file1 = myfopen("foo.txt", "r");
  file2 = myfopen("ethanol.txt", "r");
  
  
#if DEBUG
  t_print("fread1-aufruf\n");
#endif
  myfread(userarray1, 1, 4, file1);
  //    t_print("foo.txt lesend geoeffnet\n");
  for (zaehler=0; zaehler<4; zaehler++) {
#if DEBUG
    t_print("daten, foo.txt:");
    intToStr(userarray1[zaehler], tempString);
    t_print(tempString);
    t_print(" Zaehlerstand: ");
    intToStr(zaehler, tempString);
    t_print(tempString);
    t_print("\n");
#endif
  }
  
#if DEBUG
  t_print("fread2-aufruf\n");
#endif
  myfread(userarray2, 1, 4, file2);
//  t_print("ethanol.txt lesend geoeffnet\n");
#if DEBUG
  for (zaehler=0; zaehler<4; zaehler++) {
    t_print("daten, etoh original: ");
    intToStr(userarray2[zaehler], tempString);
    t_print(tempString);
    t_print(" Zaehlerstand: ");
    intToStr(zaehler, tempString);
    t_print(tempString);
    t_print("\n");
  }
#endif    
  myfclose(file2);
  
  file2 = myfopen("ethanol.txt", "w");
#if DEBUG
  t_print("fwrite1-aufruf\n");
#endif
  myfwrite(userarray1, 1, 4, file2);
  //    t_print("ethanol.txt schreibend geoeffnet\n");
  
  myfclose(file1);
  myfclose(file2);
  
  
//for (zaehler=0; zaehler<4; zaehler++) {
//    userarray1[zaehler]=0;
//    }
  
  file1 = myfopen("ethanol.txt", "r");
#if DEBUG
  t_print("fread3-aufruf\n");
#endif
  myfread(userarray2, 1, 4, file1);
#if DEBUG
  for (zaehler=0; zaehler<4; zaehler++) {
    t_print("daten, etoh neu: ");
    intToStr(userarray1[zaehler], tempString);
    t_print(tempString);
    t_print(" Zaehlerstand:");
    intToStr(zaehler, tempString);
    t_print(tempString);
    t_print("\n");
  }
#endif
  for(zaehler = 0; zaehler < 4; zaehler++) {
    if( userarray1[zaehler] == userarray2[zaehler] )
      continue;
    else {
      t_print("Unterschied an Position ");
      intToStr(zaehler, tempString);
      t_print(tempString);
      t_print("; userarray1 ");
      intToStr(userarray1[zaehler], tempString);
      t_print(tempString);
      t_print(" userarray2 ");
      intToStr(userarray2[zaehler], tempString);
      t_print(tempString);
      t_print("\n");
      return 1;
    }
  }
  myfclose(file1);
  t_print("test passed!\n");
  file1 = myfopen("chocolatebar.txt", "r");
  file2 = myfopen("benzol.txt", "w");
#if DEBUG
  t_print("myfopen1\n");
#endif
  while ( (number=myfread(userarray1, 1, 4, file1)) != 0 ) myfwrite(userarray1, 1, number, file2);
  myfclose(file1);
  myfclose(file2);
  
  file1 = myfopen("chocolatebar.txt", "r");
  file2 = myfopen("benzol.txt", "r");
#if DEBUG
  t_print("myfopen2\n");
#endif
  while ( (number=myfread(userarray1, 1, 4, file1)) != 0 ) {
#if DEBUG
    for (zaehler=0; zaehler<4; zaehler++) {
      //      printf("daten, choco  neu: %d, ",userarray1[zaehler]);
      //      printf("Zaehlerstand: %d, \n", zaehler);
    }
#endif    
    if (myfread(userarray2, 1, 4, file2) != number) {
      t_print("ERROR: Dateien unterschiedlich lang\n");
      return 42;
    }
#if DEBUG
    for (zaehler=0; zaehler<4; zaehler++) {
      //printf("daten, benzol  neu: %d, ",userarray2[zaehler]);
      //printf("Zaehlerstand: %d, \n", zaehler);
    }
#endif
    if (memcmp(userarray1, userarray2, 4) != 0) {
      t_print("ERROR: Kopierfehler!\n");
      return 23;
    }
  }
  myfclose(file1);
  myfclose(file2);
  t_print("test2 passed!\n");
  
  return 0;
}
