
_main:	addi	r11, r10, 5
	addi	r12, r10, 9
	brz	r10, _test1
	addi	r12, r12, 9
	addi	r11, r11, 5

_test1:
	or	r13, r11, r12
	jp	_test2
	llsi	r15, r11, 2
	and	r14, r11, r12
	lrs	r16, r11, r12
	lls	r17, r11, r12
_test2:
	nop
	trap #0


asip04@i80labpc02:~/opt/dlxsimbr:$dlxsim  -da0 -pd1 -tjtest.txt
(dlxsim) load testBRZ1.s
line _main:	addi	r11, r10, 5

size =        1
infoPtr->dot 00000000
infoPtr->lineNum        2
code[0] = 000552e0
line 	addi	r12, r10, 9

size =        1
infoPtr->dot 00000004
infoPtr->lineNum        3
code[0] = 00095320
line 	brz	r10, _test1

size =        1
infoPtr->dot 00000008
infoPtr->lineNum        4
code[0] = fff45009
line 	addi	r12, r12, 9

size =        1
infoPtr->dot 0000000c
infoPtr->lineNum        5
code[0] = 00096320
line 	addi	r11, r11, 5

size =        1
infoPtr->dot 00000010
infoPtr->lineNum        6
code[0] = 00055ae0
line 	or	r13, r11, r12

size =        1
infoPtr->dot 00000014
infoPtr->lineNum        9
code[0] = 5b1a0441
line 	jp	_test2

size =        1
infoPtr->dot 00000018
infoPtr->lineNum        a
code[0] = fffff90b
line 	llsi	r15, r11, 2

size =        1
infoPtr->dot 0000001c
infoPtr->lineNum        b
code[0] = 00025be5
line 	and	r14, r11, r12

size =        1
infoPtr->dot 00000020
infoPtr->lineNum        c
code[0] = 5b1c0401
line 	lrs	r16, r11, r12

size =        1
infoPtr->dot 00000024
infoPtr->lineNum        d
code[0] = 5b200841
line 	lls	r17, r11, r12

size =        1
infoPtr->dot 00000028
infoPtr->lineNum        e
code[0] = 5b220801
line 	nop

size =        1
infoPtr->dot 0000002c
infoPtr->lineNum       10
code[0] = 00000000
line 	trap #0
size =        1
infoPtr->dot 00000030
infoPtr->lineNum       11
code[0] = 00000031
Biggest used address for Text Section (word aligned): 0x30
Biggest used address for Data Section (word aligned): 0x0
line _main:	addi	r11, r10, 5

size =        1
infoPtr->dot 00000000
infoPtr->lineNum        2
code[0] = 000552e0
line 	addi	r12, r10, 9

size =        1
infoPtr->dot 00000004
infoPtr->lineNum        3
code[0] = 00095320
line 	brz	r10, _test1

size =        1
infoPtr->dot 00000008
infoPtr->lineNum        4
code[0] = 00085009
line 	addi	r12, r12, 9

size =        1
infoPtr->dot 0000000c
infoPtr->lineNum        5
code[0] = 00096320
line 	addi	r11, r11, 5

size =        1
infoPtr->dot 00000010
infoPtr->lineNum        6
code[0] = 00055ae0
line 	or	r13, r11, r12

size =        1
infoPtr->dot 00000014
infoPtr->lineNum        9
code[0] = 5b1a0441
line 	jp	_test2

size =        1
infoPtr->dot 00000018
infoPtr->lineNum        a
code[0] = 0000040b
line 	llsi	r15, r11, 2

size =        1
infoPtr->dot 0000001c
infoPtr->lineNum        b
code[0] = 00025be5
line 	and	r14, r11, r12

size =        1
infoPtr->dot 00000020
infoPtr->lineNum        c
code[0] = 5b1c0401
line 	lrs	r16, r11, r12

size =        1
infoPtr->dot 00000024
infoPtr->lineNum        d
code[0] = 5b200841
line 	lls	r17, r11, r12

size =        1
infoPtr->dot 00000028
infoPtr->lineNum        e
code[0] = 5b220801
line 	nop

size =        1
infoPtr->dot 0000002c
infoPtr->lineNum       10
code[0] = 00000000
line 	trap #0
size =        1
infoPtr->dot 00000030
infoPtr->lineNum       11
code[0] = 00000031
(dlxsim) go
before last_pc = 0
before pc = 2
machPtr->cycleCount = 0
execute wordPtr opCode       65
  Pre OpCode: 0x14
execute wordPtr opCode       14
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 2
before last_pc = 1
before pc = 3
machPtr->cycleCount = 1
execute wordPtr opCode       65
  Pre OpCode: 0x14
execute wordPtr opCode       14
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 3
before last_pc = 2
before pc = 4
machPtr->cycleCount = 2
execute wordPtr opCode       65
  Pre OpCode: 0x23
execute wordPtr opCode       23
after pc = 6
before last_pc = 5
before pc = 7
machPtr->cycleCount = 3
execute wordPtr opCode       65
  Pre OpCode: 0x78
execute wordPtr opCode        a
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 7
before last_pc = 6
before pc = 8
machPtr->cycleCount = 4
execute wordPtr opCode       65
  Pre OpCode: 0x25
execute wordPtr opCode       25
last_pc=6
pc=12
after pc = 12
before last_pc = 11
before pc = 13
machPtr->cycleCount = 5
execute wordPtr opCode       65
  Pre OpCode: 0x79
execute wordPtr opCode       2a
after pc = 13
before last_pc = 12
before pc = 14
machPtr->cycleCount = 6
execute wordPtr opCode       65
  Pre OpCode: 0x64
execute wordPtr opCode       64
TRAP #0 received
Altogether 6,0e0(6) cycles executed.
  0 Warnings for unresolved data dependencies printed.
  0 Warnings for successive load/store commands printed.
  0 Warnings for load/stores in the text section printed.
after pc = 14
(dlxsim) stats

Memory size: 16777216 bytes = 4194304 words. Maximum address you can "get": 0xfffffc. 

0 Warnings for unresolved data dependencies printed,
0 Warnings for successive load/store commands printed and
0 Warnings for load/stores in the text section printed.

				INTEGER OPERATIONS
				==================

     ADD        0       SUB        0       MUL        0       DIV        0  
    DIVU        0       MOD        0      MODU        0       AND        0  
    NAND        0        OR        1       NOR        0       XOR        0  
     LLS        0       LRS        0       ARS        0       ELT        0  
    ELTU        0       EEQ        0      ENEQ        0      ADDI        2  
    SUBI        0      ANDI        0       ORI        0      XORI        0  
    LLSI        0      LRSI        0      ARSI        0      LSOI        0  
      LB        0        LH        0        LW        0        SB        0  
      SH        0        SW        0       BRZ        1      BRNZ        0  
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
Total integer operations = 6

Total cycles = 6,0e0(6)
Current cycleCount = 6  (Differs from the total cycles, if an cycleCount-overflow happened)

Mult/Div/Mod Stalls = 0 cycles
Load/Store Stalls = 0 cycles
Jump/Branch Stalls = 0 cycles (for all jumps and taken branches)
SpecialInstruction Stalls = 0 cycles

Branches:  total 1, taken 1 (100.00%), untaken 0 (0.00%)

		INSTRUCTION MEMORY COUNT
		========================
# of executions	    starting address	# of commands
	1 +- 0		    0		    3
	1 +- 0		    20		    2
	1 +- 0		    44		    2

To watch the commands use: "get {startingAddress} i{#OfCommands}".

                                                         BASE BLOCKS
                                                         ===========
---------------------------------------------------------------------------------------------------------------
          StartAddress:           |           EndAddress:            | NumberOfCommands: | NumberOfExecutions:
----------------------------------|----------------------------------|-------------------|---------------------
     0: start:                    |    -4: _main:                    |         0         |         1
     0: _main:                    |    12: brz _test1:               |         4         |         1
    16: brz _test1:               |    16: _test1:                   |         1         |         0
    20: _test1:                   |    28: jp _test2:                |         3         |         1
    32: jp _test2:                |    40: _test2:                   |         3         |         0
    44: _test2:                   |    48: finish:                   |         2         |         1

To see the commands of a specific BaseBlock use "get {StartAddress} i{NumberOfCommands}".

(dlxsim) get r13
r13:	0x0000000d
(dlxsim) get 0 20
_main+0x00 (0x0000):	0x000552e0
_main+0x04 (0x0004):	0x00095320
_main+0x08 (0x0008):	0x00085009
_main+0x0c (0x000c):	0x00096320
_main+0x10 (0x0010):	0x00055ae0
_test1+0x00 (0x0014):	0x5b1a0441
_test1+0x04 (0x0018):	0x0000040b
_test1+0x08 (0x001c):	0x00025be5
_test1+0x0c (0x0020):	0x5b1c0401
_test1+0x10 (0x0024):	0x5b200841
_test1+0x14 (0x0028):	0x5b220801
_test2+0x00 (0x002c):	0x00000000
_test2+0x04 (0x0030):	0x00000031
_test2+0x08 (0x0034):	0x00000000
_test2+0x0c (0x0038):	0x00000000
_test2+0x10 (0x003c):	0x00000000
_test2+0x14 (0x0040):	0x00000000
_test2+0x18 (0x0044):	0x00000000
_test2+0x1c (0x0048):	0x00000000
_test2+0x20 (0x004c):	0x00000000
(dlxsim) 

