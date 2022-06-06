Altogether 21,0e0(21) cycles executed.
  0 Warnings for unresolved data dependencies printed.
  0 Warnings for successive load/store commands printed.
  0 Warnings for load/stores in the text section printed.
after pc = 26
(dlxsim) stats

Memory size: 16777216 bytes = 4194304 words. Maximum address you can "get": 0xfffffc. 

0 Warnings for unresolved data dependencies printed,
0 Warnings for successive load/store commands printed and
0 Warnings for load/stores in the text section printed.

				INTEGER OPERATIONS
				==================

     ADD        0       SUB        0       MUL        0       DIV        0  
    DIVU        0       MOD        0      MODU        0       AND        0  
    NAND        0        OR        0       NOR        0       XOR        0  
     LLS        0       LRS        0       ARS        0       ELT        0  
    ELTU        0       EEQ        0      ENEQ        0      ADDI        0  
    SUBI        0      ANDI        0       ORI        8      XORI        0  
    LLSI        0      LRSI        0      ARSI        0      LSOI        6  
      LB        0        LH        0        LW        0        SB        0  
      SH        0        SW        1       BRZ        2      BRNZ        2  
      JP        1       JPL        0       TRP        0       JPR        0  
    JPRL        0       NOP        1      RETI        0      EXBW        0  
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
Total integer operations = 21

Total cycles = 21,0e0(21)
Current cycleCount = 21  (Differs from the total cycles, if an cycleCount-overflow happened)

Mult/Div/Mod Stalls = 0 cycles
Load/Store Stalls = 0 cycles
Jump/Branch Stalls = 0 cycles (for all jumps and taken branches)
SpecialInstruction Stalls = 0 cycles

Branches:  total 4, taken 2 (50.00%), untaken 2 (50.00%)

		INSTRUCTION MEMORY COUNT
		========================
# of executions	    starting address	# of commands
	1 +- 0		    0		    5
	1 +- 0		    24		    5
	1 +- 0		    48		    8
	1 +- 0		    84		    4

To watch the commands use: "get {startingAddress} i{#OfCommands}".

                                                         BASE BLOCKS
                                                         ===========
---------------------------------------------------------------------------------------------------------------
          StartAddress:           |           EndAddress:            | NumberOfCommands: | NumberOfExecutions:
----------------------------------|----------------------------------|-------------------|---------------------
     0: start:                    |    -4: _main:                    |         0         |         1
     0: _main:                    |    12: br_t:                     |         4         |         1
    16: br_pa:                    |    20: jp (br0):                 |         2         |         1
    20: br_abt:                   |    24: jpr                       |         2         |         0
    24: br0:                      |    32: br1:                      |         3         |         1
    36: br1:                      |    44: brz (br2):                |         3         |         1
    48: br2:                      |    56: brz (br_abt):             |         3         |         1
    60: br3:                      |    68: brnz (br_abt):            |         3         |         1
    72: br4:                      |    80: brnz (br5):               |         3         |         1
    84: br5:                      |    92: _finish:                  |         3         |         1
    96: _finish:                  |    96: _data:                    |         1         |         1
   100: _data:                    |   108: _start:                   |         3         |         0
   112: _start:                   |   112: finish:                   |         1         |         0

To see the commands of a specific BaseBlock use "get {StartAddress} i{NumberOfCommands}".

(dlxsim) get _start 10
_start+0x00 (0x0070):	0x00000000
_start+0x04 (0x0074):	0x00000000
_start+0x08 (0x0078):	0x00000000
_start+0x0c (0x007c):	0x00000000
_start+0x10 (0x0080):	0x00000000
_start+0x14 (0x0084):	0x000002bf
_start+0x18 (0x0088):	0x00000000
_start+0x1c (0x008c):	0x00000000
_start+0x20 (0x0090):	0x00000000
_start+0x24 (0x0094):	0x00000000
(dlxsim) 
