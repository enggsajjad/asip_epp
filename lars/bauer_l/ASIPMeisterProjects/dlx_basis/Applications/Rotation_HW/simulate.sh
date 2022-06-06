#!/bin/bash
rm lib_lcd.s
ln -s lib_lcd.s_dlxsim lib_lcd.s
../mkall
echo "go" > dlxsim.script
echo "exit" >> dlxsim.script
rm putc.out
../dlxsim -fRotation.dlxsim -da0 -pfputc.out -sfdlxsim.script
rm dlxsim.script
less putc.out
