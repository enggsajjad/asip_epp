#!/bin/bash

FOR_HW=0

if [ ${FOR_HW} -ge 1 ]; then
  rm mkimgSettings
  ln -s mkimgSettings.hw mkimgSettings
  APPLICATION=BS_LCD_forHW
else
  rm mkimgSettings
  ln -s mkimgSettings.sw mkimgSettings
  APPLICATION=BS_LCD_forSW
fi

../mkimg_fromS_remotePas ${APPLICATION}.s || exit 1

if [ ${FOR_HW} -ge 1 ]; then
  ../initMem
else
  ../dlxsim -da0 -f${APPLICATION}.dlxsim -pfputc.out -sfdlxsimScript.txt
  echo
  echo "** Simulated t_print output (\"cat putc.out\"):"
  cat putc.out
fi

