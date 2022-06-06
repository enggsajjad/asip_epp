../mkall || exit
echo "go" > script.txt
echo "exit" >> script.txt
../dlxsim -fPrintHEX.dlxsim -da0 -pfputc.out -sfscript.txt
rm script.txt
echo "--------------------"
cat putc.out
echo "--------------------"

