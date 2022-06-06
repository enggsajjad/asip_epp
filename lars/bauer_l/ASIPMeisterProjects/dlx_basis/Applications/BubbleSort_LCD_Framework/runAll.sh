#!/bin/bash
../mkall || exit 1
../dlxsim -da0 -f`ls *.dlxsim` -pfputc.out -sfdlxsimScript.txt
cat putc.out

