
_main:	addi	r11, r0, 5
	addi	r12, r0, 9
	trp	_test2
	addi	r11, r11, 3
	addi	r12, r12, 3
	jp	_test3

_test2:
	addi	r11, r11, 2
	addi	r12, r12, 2
	reti
_test3:
	nop
	trap #0



asip04@i80labpc02:~/opt/dlxsimbr:$dlxsim  -da0 -pd1 -tjtest.txt
(dlxsim) load testRETI.s
line _main:	addi	r11, r0, 5

size =        1
infoPtr->dot 00000000
infoPtr->lineNum        2
code[0] = 000502e0
line 	addi	r12, r0, 9

size =        1
infoPtr->dot 00000004
infoPtr->lineNum        3
code[0] = 00090320
line 	trp	_test2

size =        1
infoPtr->dot 00000008
infoPtr->lineNum        4
code[0] = fffffd0d
line 	addi	r11, r11, 3

size =        1
infoPtr->dot 0000000c
infoPtr->lineNum        5
code[0] = 00035ae0
line 	addi	r12, r12, 3

size =        1
infoPtr->dot 00000010
infoPtr->lineNum        6
code[0] = 00036320
line 	jp	_test3

size =        1
infoPtr->dot 00000014
infoPtr->lineNum        7
code[0] = fffffa0b
line 	addi	r11, r11, 2

size =        1
infoPtr->dot 00000018
infoPtr->lineNum        a
code[0] = 00025ae0
line 	addi	r12, r12, 2

size =        1
infoPtr->dot 0000001c
infoPtr->lineNum        b
code[0] = 00026320
line 	reti

size =        1
infoPtr->dot 00000020
infoPtr->lineNum        c
code[0] = 00000040
line 	nop

size =        1
infoPtr->dot 00000024
infoPtr->lineNum        e
code[0] = 00000000
line 	trap #0
size =        1
infoPtr->dot 00000028
infoPtr->lineNum        f
code[0] = 00000031
Biggest used address for Text Section (word aligned): 0x28
Biggest used address for Data Section (word aligned): 0x0
line _main:	addi	r11, r0, 5

size =        1
infoPtr->dot 00000000
infoPtr->lineNum        2
code[0] = 000502e0
line 	addi	r12, r0, 9

size =        1
infoPtr->dot 00000004
infoPtr->lineNum        3
code[0] = 00090320
line 	trp	_test2

size =        1
infoPtr->dot 00000008
infoPtr->lineNum        4
code[0] = 0000030d
line 	addi	r11, r11, 3

size =        1
infoPtr->dot 0000000c
infoPtr->lineNum        5
code[0] = 00035ae0
line 	addi	r12, r12, 3

size =        1
infoPtr->dot 00000010
infoPtr->lineNum        6
code[0] = 00036320
line 	jp	_test3

size =        1
infoPtr->dot 00000014
infoPtr->lineNum        7
code[0] = 0000030b
line 	addi	r11, r11, 2

size =        1
infoPtr->dot 00000018
infoPtr->lineNum        a
code[0] = 00025ae0
line 	addi	r12, r12, 2

size =        1
infoPtr->dot 0000001c
infoPtr->lineNum        b
code[0] = 00026320
line 	reti

size =        1
infoPtr->dot 00000020
infoPtr->lineNum        c
code[0] = 00000040
line 	nop

size =        1
infoPtr->dot 00000024
infoPtr->lineNum        e
code[0] = 00000000
line 	trap #0
size =        1
infoPtr->dot 00000028
infoPtr->lineNum        f
code[0] = 00000031
(dlxsim) step
before last_pc = 0
before pc = 2
machPtr->cycleCount = 0
execute wordPtr opCode       65
  Pre OpCode: 0x14
execute wordPtr opCode       14
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 2
stopped after (single) step, pc = _main+0x04 (0x0004): addi r12,r0,0x9
(dlxsim) 
before last_pc = 1
before pc = 3
machPtr->cycleCount = 1
execute wordPtr opCode       65
  Pre OpCode: 0x14
execute wordPtr opCode       14
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 3
stopped after (single) step, pc = _main+0x08 (0x0008): trp _test2+0x00 (0x0018)
(dlxsim) 
before last_pc = 2
before pc = 4
machPtr->cycleCount = 2
execute wordPtr opCode       65
  Pre OpCode: 0x27
execute wordPtr opCode       27
R2=0
PC=4
Last PC=2
PC_REG=32
NEXT_PC_REG=33
PC=7
after pc = 7
stopped after (single) step, pc = _test2+0x00 (0x0018): addi r11,r11,0x2
(dlxsim) 
before last_pc = 6
before pc = 8
machPtr->cycleCount = 3
execute wordPtr opCode       65
  Pre OpCode: 0x14
execute wordPtr opCode       14
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 8
stopped after (single) step, pc = _test2+0x04 (0x001c): addi r12,r12,0x2
(dlxsim) 
before last_pc = 7
before pc = 9
machPtr->cycleCount = 4
execute wordPtr opCode       65
  Pre OpCode: 0x14
execute wordPtr opCode       14
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 9
stopped after (single) step, pc = _test2+0x08 (0x0020): reti
(dlxsim) 
before last_pc = 8
before pc = 10
machPtr->cycleCount = 5
execute wordPtr opCode       65
  Pre OpCode: 0x79
execute wordPtr opCode       2b
pc1=3
pc1=12
after pc = 4
stopped after (single) step, pc = _main+0x0c (0x000c): addi r11,r11,0x3
(dlxsim) 
before last_pc = 3
before pc = 5
machPtr->cycleCount = 6
execute wordPtr opCode       65
  Pre OpCode: 0x14
execute wordPtr opCode       14
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 5
stopped after (single) step, pc = _main+0x10 (0x0010): addi r12,r12,0x3
(dlxsim) 
before last_pc = 4
before pc = 6
machPtr->cycleCount = 7
execute wordPtr opCode       65
  Pre OpCode: 0x14
execute wordPtr opCode       14
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 6
stopped after (single) step, pc = _main+0x14 (0x0014): jp _test3+0x00 (0x0024)
(dlxsim) 
before last_pc = 5
before pc = 7
machPtr->cycleCount = 8
execute wordPtr opCode       65
  Pre OpCode: 0x25
execute wordPtr opCode       25
last_pc=5
pc=10
after pc = 10
stopped after (single) step, pc = _test3+0x00 (0x0024): nop
(dlxsim) 
before last_pc = 9
before pc = 11
machPtr->cycleCount = 9
execute wordPtr opCode       65
  Pre OpCode: 0x79
execute wordPtr opCode       2a
after pc = 11
stopped after (single) step, pc = _test3+0x04 (0x0028): trap 0x31
(dlxsim) 
before last_pc = 10
before pc = 12
machPtr->cycleCount = 10
execute wordPtr opCode       65
  Pre OpCode: 0x64
execute wordPtr opCode       64
TRAP #0 received
Altogether 10,0e0(10) cycles executed.
  0 Warnings for unresolved data dependencies printed.
  0 Warnings for successive load/store commands printed.
  0 Warnings for load/stores in the text section printed.
after pc = 12
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
    ELTU        0       EEQ        0      ENEQ        0      ADDI        6  
    SUBI        0      ANDI        0       ORI        0      XORI        0  
    LLSI        0      LRSI        0      ARSI        0      LSOI        0  
      LB        0        LH        0        LW        0        SB        0  
      SH        0        SW        0       BRZ        0      BRNZ        0  
      JP        1       JPL        0       TRP        1       JPR        0  
    JPRL        0       NOP        1      RETI        1      EXBW        0  
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

Total cycles = 10,0e0(10)
Current cycleCount = 10  (Differs from the total cycles, if an cycleCount-overflow happened)

Mult/Div/Mod Stalls = 0 cycles
Load/Store Stalls = 0 cycles
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
     0: start:                    |    -4: _main:                    |         0         |         1
     0: _main:                    |    12: trp _test2:               |         4         |         1
    16: trp _test2:               |    24: jp _test3:                |         3         |         1
    24: _test2:                   |    32: _test3:                   |         3         |         1
    36: _test3:                   |    40: finish:                   |         2         |         1

To see the commands of a specific BaseBlock use "get {StartAddress} i{NumberOfCommands}".

(dlxsim) get r11
r11:	0x0000000a
(dlxsim) get r11 d
r11:	10
(dlxsim) get r12 d
r12:	14
(dlxsim)  get 0 15
_main+0x00 (0x0000):	0x000502e0
_main+0x04 (0x0004):	0x00090320
_main+0x08 (0x0008):	0x0000030d
_main+0x0c (0x000c):	0x00035ae0
_main+0x10 (0x0010):	0x00036320
_main+0x14 (0x0014):	0x0000030b
_test2+0x00 (0x0018):	0x00025ae0
_test2+0x04 (0x001c):	0x00026320
_test2+0x08 (0x0020):	0x00000040
_test3+0x00 (0x0024):	0x00000000
_test3+0x04 (0x0028):	0x00000031
_test3+0x08 (0x002c):	0x00000000
_test3+0x0c (0x0030):	0x00000000
_test3+0x10 (0x0034):	0x00000000
_test3+0x14 (0x0038):	0x00000000
(dlxsim) 

