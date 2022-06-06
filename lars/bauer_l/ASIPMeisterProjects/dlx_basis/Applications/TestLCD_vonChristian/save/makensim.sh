#!/bin/sh

#dos2unix < $1.c > $1_unix.c
../mkall
./xilinx.sh
#dlxsim -da0 -flib_lcd.dlxsim


