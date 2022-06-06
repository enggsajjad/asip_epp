#!/bin/sh

XILINX_DIR=/home/kraemer/XilinxProjects/dlx_BRam_audio/
DATA2MEM=/usr/local/xilinx/ise_8.1/bin/lin/data2mem
BLOCKRAM_FILE=blockram_bd.bmm
PROGRAM=lib_lcd.mem
BITSTREAM_IN=dlx_toplevel.bit
BITSTREAM_OUT=lib_lcd.bit


echo "Using project directory: $XILINX_DIR"
echo "Using blockram configuration: $BLOCKRAM_FILE"

../image2mem.pl TestData.IM TestData.DM $1 > $PROGRAM
cp $PROGRAM $XILINX_DIR 
cd $XILINX_DIR
$DATA2MEM -bm $BLOCKRAM_FILE -bd $PROGRAM -bt $BITSTREAM_IN -o b $BITSTREAM_OUT
#$DATA2MEM -bm $BLOCKRAM_FILE -bt $BITSTREAM_OUT -d >program.dump
cd $OLDPWD

if [[ $XILINX_DIR$BLOCKRAM_FILE -ot $XILINX_DIR$BITSTREAM_IN ]]; then
	echo
	echo "   !! WARNING !! ACHTUNG !!"
	echo "   $BLOCKRAM_FILE is older than $BITSTREAM_IN!"
	echo "   (If you use area constraints for the blockrams, ignore this)"
	echo "   Did you update the blockram locations?"
	echo
	echo "   if not, do so, and rerun this script"
	echo
fi
