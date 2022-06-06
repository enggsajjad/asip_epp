#!/bin/bash
#rm lib_lcd.s
#ln -s lib_lcd.s_dlxsim lib_lcd.s
../mkall || exit
echo "go" > dlxsim.script
echo "exit" >> dlxsim.script
rm putc.out
../dlxsim -f`ls *.dlxsim` -da0 -pfputc.out -sfdlxsim.script
rm dlxsim.script
less putc.out

