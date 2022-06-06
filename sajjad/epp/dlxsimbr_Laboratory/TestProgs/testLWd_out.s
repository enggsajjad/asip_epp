Altogether 13,0e0(13) cycles executed.
  0 Warnings for unresolved data dependencies printed.
  0 Warnings for successive load/store commands printed.
  2 Warnings for load/stores in the text section printed.

(dlxsim) get r14
r14:	0x0000000e
(dlxsim) get r11
r11:	0x0000000c
(dlxsim) get _data 20
_data+0x00 (0x002c):	0x98765432
_data+0x04 (0x0030):	0xaaff0000
rten+0x00 (0x0034):	0x00000000
rten+0x04 (0x0038):	0x00000004
rten+0x08 (0x003c):	0x00000008
rten+0x0c (0x0040):	0x0000000e
rten+0x10 (0x0044):	0x0000000f
rten+0x14 (0x0048):	0x00000010
rten+0x18 (0x004c):	0x00000011
rten+0x1c (0x0050):	0x00000012
rten+0x20 (0x0054):	0x00000013
rten+0x24 (0x0058):	0x00000014
rten+0x28 (0x005c):	0x0000000c
rten+0x2c (0x0060):	0x00000000
rten+0x30 (0x0064):	0x00000000
rten+0x34 (0x0068):	0x00000000
rten+0x38 (0x006c):	0x00000000
rten+0x3c (0x0070):	0x00000000
rten+0x40 (0x0074):	0x00000000
rten+0x44 (0x0078):	0x00000000
(dlxsim) get r10
r10:	0x00000034

(dlxsim) stats

Memory size: 16777216 bytes = 4194304 words. Maximum address you can "get": 0xfffffc. 

0 Warnings for unresolved data dependencies printed,
0 Warnings for successive load/store commands printed and
1 Warnings for load/stores in the text section printed.

				INTEGER OPERATIONS
				==================

     ADD        1       SUB        0       MUL        0       DIV        0  
    DIVU        0       MOD        0      MODU        0       AND        0  
    NAND        0        OR        0       NOR        0       XOR        0  
     LLS        0       LRS        0       ARS        0       ELT        0  
    ELTU        0       EEQ        0      ENEQ        0      ADDI        0  
    SUBI        0      ANDI        0       ORI        0      XORI        0  
    LLSI        0      LRSI        0      ARSI        0      LSOI        2  
      LB        0        LH        0        LW        3        SB        0  
      SH        0        SW        2       BRZ        0      BRNZ        0  
      JP        0       JPL        0       TRP        0       JPR        0  
    JPRL        0       NOP        2      RETI        0      EXBW        0  
    EXHW        0      ADDU        0     ADDUI        0       LHI        0  
     LBU        0       LHU        0      MULU        0      EEQI        0  
     EGE        0      EGEI        0      EGEU        0       EGT        0  
    EGTI        0      EGTU        0       ELE        0      ELEI        0  
    ELEU        0      ELTI        0      ENEI        0      SUBU        0  
   SUBUI        0      CMOV        0       BEQ        0      BNEQ        0  
    CADD        0      BGTU        0      BLEU        0      BLTU        0  
    BGEU        0       MAC        0       MAD        0      SWAP        0  
    XCHG        0       AVG        0      AVGU        0       FEX        0  
     MAX        0      HT2R        0      HT4L        0       SAT        0  
     DCT        0      FRCT        0      FLTR        0       HDC        0  
     VDC        0       HZ4        0       SAD        0      MMAX        0  
     ROT        0  
Total integer operations = 10

RealCycleCount=13; opcount=10; loadStoreStalls=3: jumpStalls=0; multDivModStalls=0; specialInstructionStalls=0; orgStall=0
Total cycles = 13,0e0(13)
Current cycleCount = 13  (Differs from the total cycles, if an cycleCount-overflow happened)

Mult/Div/Mod Stalls = 0 cycles
Load/Store Stalls = 3 cycles
Jump/Branch Stalls = 0 cycles (for all jumps and taken branches)
SpecialInstruction Stalls = 0 cycles

No branch instructions executed.

		INSTRUCTION MEMORY COUNT
		========================
# of executions	    starting address	# of commands
	1 +- 0		    0		    11

To watch the commands use: "get {startingAddress} i{#OfCommands}".

                                                         BASE BLOCKS
                                                         ===========
---------------------------------------------------------------------------------------------------------------
          StartAddress:           |           EndAddress:            | NumberOfCommands: | NumberOfExecutions:
----------------------------------|----------------------------------|-------------------|---------------------
     0: start:                    |    -4: main:                     |         0         |         1
     0: main:                     |    36: finish_up_main:           |        10         |         1
    40: finish_up_main:           |    40: _data:                    |         1         |         1
    44: _data:                    |    48: data_dump_start:          |         2         |         0
    52: rten:                     |    92: finish:                   |        11         |         0

To see the commands of a specific BaseBlock use "get {StartAddress} i{NumberOfCommands}".

