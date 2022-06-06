#!/bin/bash
rm lib_lcd.s
ln -s lib_lcd.s_320 lib_lcd.s
../mkall
../initMem

