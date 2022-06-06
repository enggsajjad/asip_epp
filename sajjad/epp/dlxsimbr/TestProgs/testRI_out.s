	.addressing word

	.section .text  

_main:

	; load some values
	lsoi	r10,	r10,	$(rten / 0x10000)
	lsoi	r10,	r10,	$(rten % 0x10000)

	lw	r11, 0(r10)	;2
	lw	r12, 4(r10)	;0x80808089
	nop						; required for load delay slot
	;call ri commands
	addi r13, r12, $(2)	;shoule be 11
	subi r14, r12, $(2)	; 7
	andi r15, r12, $(2)	;0
	ori r16, r12, $(2)	;11
	xori r17, r12, $(2)	;11
	llsi r18, r12, $(2)	;36
	lrsi r19, r12, $(2)	;2
	arsi r20, r12, $(2)	;2
	lsoi r21, r12, $(2)	;0x00090002

	exbw r22, r12	;0x0009
	exhw r23, r12	;0x0009

	;store values
	sw	8(r10),    r13
	sw	12(r10),    r14
	sw	16(r10),    r15
	sw	20(r10),    r16
	sw	24(r10),    r17
	sw	28(r10),    r18
	sw	32(r10),    r19
	sw	36(r10),    r20
	sw	40(r10),    r21
	sw	44(r10),    r22
	sw	48(r10),    r23

_finish:
	; finish
	;lsoi	r10,	r10,	(end / 0x10000)
	;lsoi	r10,	r10,	(end % 0x10000)
	;jpr	r10
	trap #0


	.section .data

_data:
	.data.32	0x12345678
	.data.32	0x98765432
	.data.8		0xaa
	.data.8		0xff
	.data.16	0x0000

_start:
rten:
	.data.32	0x00000002
	.data.32	0x80808089



asip04@i80labpc02:~/opt/dlxsimbr:$dlxsim  -da0 -pd1 -tjtest.txt
(dlxsim) load testRI.s 
line 	lsoi	r10,	r10,	$(rten / 0x10000)

size =        1
infoPtr->dot 00000000
infoPtr->lineNum        8
code[0] = 000052a8
line 	lsoi	r10,	r10,	$(rten % 0x10000)

size =        1
infoPtr->dot 00000004
infoPtr->lineNum        9
code[0] = 000052a8
line 	lw	r11, 0(r10)	;2

size =        1
infoPtr->dot 00000008
infoPtr->lineNum        b
code[0] = 000052c4
line 	lw	r12, 4(r10)	;0x80808089

size =        1
infoPtr->dot 0000000c
infoPtr->lineNum        c
code[0] = 00045304
line 	nop						; required for load delay slot

size =        1
infoPtr->dot 00000010
infoPtr->lineNum        d
code[0] = 00000000
line 	addi r13, r12, $(2)	;shoule be 11

size =        1
infoPtr->dot 00000014
infoPtr->lineNum        f
code[0] = 00026360
line 	subi r14, r12, $(2)	; 7

size =        1
infoPtr->dot 00000018
infoPtr->lineNum       10
code[0] = 000263a1
line 	andi r15, r12, $(2)	;0

size =        1
infoPtr->dot 0000001c
infoPtr->lineNum       11
code[0] = 000263e2
line 	ori r16, r12, $(2)	;11

size =        1
infoPtr->dot 00000020
infoPtr->lineNum       12
code[0] = 00026423
line 	xori r17, r12, $(2)	;11

size =        1
infoPtr->dot 00000024
infoPtr->lineNum       13
code[0] = 00026464
line 	llsi r18, r12, $(2)	;36

size =        1
infoPtr->dot 00000028
infoPtr->lineNum       14
code[0] = 000264a5
line 	lrsi r19, r12, $(2)	;2

size =        1
infoPtr->dot 0000002c
infoPtr->lineNum       15
code[0] = 000264e6
line 	arsi r20, r12, $(2)	;2

size =        1
infoPtr->dot 00000030
infoPtr->lineNum       16
code[0] = 00026527
line 	lsoi r21, r12, $(2)	;0x00090002

size =        1
infoPtr->dot 00000034
infoPtr->lineNum       17
code[0] = 00026568
line 	exbw r22, r12	;0x0009

size =        1
infoPtr->dot 00000038
infoPtr->lineNum       19
code[0] = b3000080
line 	exhw r23, r12	;0x0009

size =        1
infoPtr->dot 0000003c
infoPtr->lineNum       1a
code[0] = bb000880
line 	sw	8(r10),    r13

size =        1
infoPtr->dot 00000040
infoPtr->lineNum       1d
code[0] = 00085347
line 	sw	12(r10),    r14

size =        1
infoPtr->dot 00000044
infoPtr->lineNum       1e
code[0] = 000c5387
line 	sw	16(r10),    r15

size =        1
infoPtr->dot 00000048
infoPtr->lineNum       1f
code[0] = 001053c7
line 	sw	20(r10),    r16

size =        1
infoPtr->dot 0000004c
infoPtr->lineNum       20
code[0] = 00145407
line 	sw	24(r10),    r17

size =        1
infoPtr->dot 00000050
infoPtr->lineNum       21
code[0] = 00185447
line 	sw	28(r10),    r18

size =        1
infoPtr->dot 00000054
infoPtr->lineNum       22
code[0] = 001c5487
line 	sw	32(r10),    r19

size =        1
infoPtr->dot 00000058
infoPtr->lineNum       23
code[0] = 002054c7
line 	sw	36(r10),    r20

size =        1
infoPtr->dot 0000005c
infoPtr->lineNum       24
code[0] = 00245507
line 	sw	40(r10),    r21

size =        1
infoPtr->dot 00000060
infoPtr->lineNum       25
code[0] = 00285547
line 	sw	44(r10),    r22

size =        1
infoPtr->dot 00000064
infoPtr->lineNum       26
code[0] = 002c5587
line 	sw	48(r10),    r23

size =        1
infoPtr->dot 00000068
infoPtr->lineNum       27
code[0] = 003055c7
line 	trap #0

size =        1
infoPtr->dot 0000006c
infoPtr->lineNum       2e
code[0] = 00000031
Biggest used address for Text Section (word aligned): 0x6c
Biggest used address for Data Section (word aligned): 0x80
line 	lsoi	r10,	r10,	$(rten / 0x10000)

size =        1
infoPtr->dot 00000000
infoPtr->lineNum        8
code[0] = 000052a8
line 	lsoi	r10,	r10,	$(rten % 0x10000)

size =        1
infoPtr->dot 00000004
infoPtr->lineNum        9
code[0] = 007c52a8
line 	lw	r11, 0(r10)	;2

size =        1
infoPtr->dot 00000008
infoPtr->lineNum        b
code[0] = 000052c4
line 	lw	r12, 4(r10)	;0x80808089

size =        1
infoPtr->dot 0000000c
infoPtr->lineNum        c
code[0] = 00045304
line 	nop						; required for load delay slot

size =        1
infoPtr->dot 00000010
infoPtr->lineNum        d
code[0] = 00000000
line 	addi r13, r12, $(2)	;shoule be 11

size =        1
infoPtr->dot 00000014
infoPtr->lineNum        f
code[0] = 00026360
line 	subi r14, r12, $(2)	; 7

size =        1
infoPtr->dot 00000018
infoPtr->lineNum       10
code[0] = 000263a1
line 	andi r15, r12, $(2)	;0

size =        1
infoPtr->dot 0000001c
infoPtr->lineNum       11
code[0] = 000263e2
line 	ori r16, r12, $(2)	;11

size =        1
infoPtr->dot 00000020
infoPtr->lineNum       12
code[0] = 00026423
line 	xori r17, r12, $(2)	;11

size =        1
infoPtr->dot 00000024
infoPtr->lineNum       13
code[0] = 00026464
line 	llsi r18, r12, $(2)	;36

size =        1
infoPtr->dot 00000028
infoPtr->lineNum       14
code[0] = 000264a5
line 	lrsi r19, r12, $(2)	;2

size =        1
infoPtr->dot 0000002c
infoPtr->lineNum       15
code[0] = 000264e6
line 	arsi r20, r12, $(2)	;2

size =        1
infoPtr->dot 00000030
infoPtr->lineNum       16
code[0] = 00026527
line 	lsoi r21, r12, $(2)	;0x00090002

size =        1
infoPtr->dot 00000034
infoPtr->lineNum       17
code[0] = 00026568
line 	exbw r22, r12	;0x0009

size =        1
infoPtr->dot 00000038
infoPtr->lineNum       19
code[0] = b3000080
line 	exhw r23, r12	;0x0009

size =        1
infoPtr->dot 0000003c
infoPtr->lineNum       1a
code[0] = bb000880
line 	sw	8(r10),    r13

size =        1
infoPtr->dot 00000040
infoPtr->lineNum       1d
code[0] = 00085347
line 	sw	12(r10),    r14

size =        1
infoPtr->dot 00000044
infoPtr->lineNum       1e
code[0] = 000c5387
line 	sw	16(r10),    r15

size =        1
infoPtr->dot 00000048
infoPtr->lineNum       1f
code[0] = 001053c7
line 	sw	20(r10),    r16

size =        1
infoPtr->dot 0000004c
infoPtr->lineNum       20
code[0] = 00145407
line 	sw	24(r10),    r17

size =        1
infoPtr->dot 00000050
infoPtr->lineNum       21
code[0] = 00185447
line 	sw	28(r10),    r18

size =        1
infoPtr->dot 00000054
infoPtr->lineNum       22
code[0] = 001c5487
line 	sw	32(r10),    r19

size =        1
infoPtr->dot 00000058
infoPtr->lineNum       23
code[0] = 002054c7
line 	sw	36(r10),    r20

size =        1
infoPtr->dot 0000005c
infoPtr->lineNum       24
code[0] = 00245507
line 	sw	40(r10),    r21

size =        1
infoPtr->dot 00000060
infoPtr->lineNum       25
code[0] = 00285547
line 	sw	44(r10),    r22

size =        1
infoPtr->dot 00000064
infoPtr->lineNum       26
code[0] = 002c5587
line 	sw	48(r10),    r23

size =        1
infoPtr->dot 00000068
infoPtr->lineNum       27
code[0] = 003055c7
line 	trap #0

size =        1
infoPtr->dot 0000006c
infoPtr->lineNum       2e
code[0] = 00000031
(dlxsim) go
before last_pc = 0
before pc = 2
machPtr->cycleCount = 0
execute wordPtr opCode       65
  Pre OpCode: 0x1c
execute wordPtr opCode       1c
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 2
before last_pc = 1
before pc = 3
machPtr->cycleCount = 1
execute wordPtr opCode       65
  Pre OpCode: 0x1c
execute wordPtr opCode       1c
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 3
before last_pc = 2
before pc = 4
machPtr->cycleCount = 2
execute wordPtr opCode       65
  Pre OpCode: 0x1f
execute wordPtr opCode       1f
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 4
before last_pc = 3
before pc = 5
machPtr->cycleCount = 4
execute wordPtr opCode       65
  Pre OpCode: 0x1f
execute wordPtr opCode       1f
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 5
before last_pc = 4
before pc = 6
machPtr->cycleCount = 6
execute wordPtr opCode       65
  Pre OpCode: 0x79
execute wordPtr opCode       2a
after pc = 6
before last_pc = 5
before pc = 7
machPtr->cycleCount = 7
execute wordPtr opCode       65
  Pre OpCode: 0x14
execute wordPtr opCode       14
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 7
before last_pc = 6
before pc = 8
machPtr->cycleCount = 8
execute wordPtr opCode       65
  Pre OpCode: 0x15
execute wordPtr opCode       15
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 8
before last_pc = 7
before pc = 9
machPtr->cycleCount = 9
execute wordPtr opCode       65
  Pre OpCode: 0x16
execute wordPtr opCode       16
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 9
before last_pc = 8
before pc = 10
machPtr->cycleCount = 10
execute wordPtr opCode       65
  Pre OpCode: 0x17
execute wordPtr opCode       17
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 10
before last_pc = 9
before pc = 11
machPtr->cycleCount = 11
execute wordPtr opCode       65
  Pre OpCode: 0x18
execute wordPtr opCode       18
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 11
before last_pc = 10
before pc = 12
machPtr->cycleCount = 12
execute wordPtr opCode       65
  Pre OpCode: 0x19
execute wordPtr opCode       19
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 12
before last_pc = 11
before pc = 13
machPtr->cycleCount = 13
execute wordPtr opCode       65
  Pre OpCode: 0x1a
execute wordPtr opCode       1a
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 13
before last_pc = 12
before pc = 14
machPtr->cycleCount = 14
execute wordPtr opCode       65
  Pre OpCode: 0x1b
execute wordPtr opCode       1b
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 14
before last_pc = 13
before pc = 15
machPtr->cycleCount = 15
execute wordPtr opCode       65
  Pre OpCode: 0x1c
execute wordPtr opCode       1c
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 15
before last_pc = 14
before pc = 16
machPtr->cycleCount = 16
execute wordPtr opCode       65
  Pre OpCode: 0x79
execute wordPtr opCode       2c
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 16
before last_pc = 15
before pc = 17
machPtr->cycleCount = 17
execute wordPtr opCode       65
  Pre OpCode: 0x79
execute wordPtr opCode       2d
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 17
before last_pc = 16
before pc = 18
machPtr->cycleCount = 18
execute wordPtr opCode       65
  Pre OpCode: 0x22
execute wordPtr opCode       22
after pc = 18
before last_pc = 17
before pc = 19
machPtr->cycleCount = 19
execute wordPtr opCode       65
  Pre OpCode: 0x22
execute wordPtr opCode       22
after pc = 19
before last_pc = 18
before pc = 20
machPtr->cycleCount = 20
execute wordPtr opCode       65
  Pre OpCode: 0x22
execute wordPtr opCode       22
after pc = 20
before last_pc = 19
before pc = 21
machPtr->cycleCount = 21
execute wordPtr opCode       65
  Pre OpCode: 0x22
execute wordPtr opCode       22
after pc = 21
before last_pc = 20
before pc = 22
machPtr->cycleCount = 22
execute wordPtr opCode       65
  Pre OpCode: 0x22
execute wordPtr opCode       22
after pc = 22
before last_pc = 21
before pc = 23
machPtr->cycleCount = 23
execute wordPtr opCode       65
  Pre OpCode: 0x22
execute wordPtr opCode       22
after pc = 23
before last_pc = 22
before pc = 24
machPtr->cycleCount = 24
execute wordPtr opCode       65
  Pre OpCode: 0x22
execute wordPtr opCode       22
after pc = 24
before last_pc = 23
before pc = 25
machPtr->cycleCount = 25
execute wordPtr opCode       65
  Pre OpCode: 0x22
execute wordPtr opCode       22
after pc = 25
before last_pc = 24
before pc = 26
machPtr->cycleCount = 26
execute wordPtr opCode       65
  Pre OpCode: 0x22
execute wordPtr opCode       22
after pc = 26
before last_pc = 25
before pc = 27
machPtr->cycleCount = 27
execute wordPtr opCode       65
  Pre OpCode: 0x22
execute wordPtr opCode       22
after pc = 27
before last_pc = 26
before pc = 28
machPtr->cycleCount = 28
execute wordPtr opCode       65
  Pre OpCode: 0x22
execute wordPtr opCode       22
after pc = 28
before last_pc = 27
before pc = 29
machPtr->cycleCount = 29
execute wordPtr opCode       65
  Pre OpCode: 0x64
execute wordPtr opCode       64
TRAP #0 received
Altogether 29,0e0(29) cycles executed.
  0 Warnings for unresolved data dependencies printed.
  0 Warnings for successive load/store commands printed.
  0 Warnings for load/stores in the text section printed.
after pc = 29
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
    ELTU        0       EEQ        0      ENEQ        0      ADDI        1  
    SUBI        1      ANDI        1       ORI        1      XORI        1  
    LLSI        1      LRSI        1      ARSI        1      LSOI        3  
      LB        0        LH        0        LW        2        SB        0  
      SH        0        SW       11       BRZ        0      BRNZ        0  
      JP        0       JPL        0       TRP        0       JPR        0  
    JPRL        0       NOP        1      RETI        0      EXBW        1  
    EXHW        1      ADDU        0     ADDUI        0       LHI        0  
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
Total integer operations = 27

Total cycles = 29,0e0(29)
Current cycleCount = 29  (Differs from the total cycles, if an cycleCount-overflow happened)

Mult/Div/Mod Stalls = 0 cycles
Load/Store Stalls = 2 cycles
Jump/Branch Stalls = 0 cycles (for all jumps and taken branches)
SpecialInstruction Stalls = 0 cycles

No branch instructions executed.

		INSTRUCTION MEMORY COUNT
		========================
# of executions	    starting address	# of commands
	1 +- 0		    0		    28

To watch the commands use: "get {startingAddress} i{#OfCommands}".

                                                         BASE BLOCKS
                                                         ===========
---------------------------------------------------------------------------------------------------------------
          StartAddress:           |           EndAddress:            | NumberOfCommands: | NumberOfExecutions:
----------------------------------|----------------------------------|-------------------|---------------------
     0: start:                    |    -4: _main:                    |         0         |         1
     0: _main:                    |   104: _finish:                  |        27         |         1
   108: _finish:                  |   108: _data:                    |         1         |         1
   112: _data:                    |   120: _start:                   |         3         |         0
   124: rten:                     |   128: finish:                   |         2         |         0

To see the commands of a specific BaseBlock use "get {StartAddress} i{NumberOfCommands}".

(dlxsim) 
(dlxsim) get rten 15
rten+0x00 (0x007c):	0x00000002
rten+0x04 (0x0080):	0x80808089
rten+0x08 (0x0084):	0x8080808b
rten+0x0c (0x0088):	0x80808087
rten+0x10 (0x008c):	0x00000000
rten+0x14 (0x0090):	0x8080808b
rten+0x18 (0x0094):	0x8080808b
rten+0x1c (0x0098):	0x02020224
rten+0x20 (0x009c):	0x20202022
rten+0x24 (0x00a0):	0xe0202022
rten+0x28 (0x00a4):	0x80890002
rten+0x2c (0x00a8):	0xffffff89
rten+0x30 (0x00ac):	0xffff8089
rten+0x34 (0x00b0):	0x00000000
rten+0x38 (0x00b4):	0x00000000
(dlxsim) get 0 30
_main+0x00 (0x0000):	0x000052a8
_main+0x04 (0x0004):	0x007c52a8
_main+0x08 (0x0008):	0x000052c4
_main+0x0c (0x000c):	0x00045304
_main+0x10 (0x0010):	0x00000000
_main+0x14 (0x0014):	0x00026360
_main+0x18 (0x0018):	0x000263a1
_main+0x1c (0x001c):	0x000263e2
_main+0x20 (0x0020):	0x00026423
_main+0x24 (0x0024):	0x00026464
_main+0x28 (0x0028):	0x000264a5
_main+0x2c (0x002c):	0x000264e6
_main+0x30 (0x0030):	0x00026527
_main+0x34 (0x0034):	0x00026568
_main+0x38 (0x0038):	0xb3000080
_main+0x3c (0x003c):	0xbb000880
_main+0x40 (0x0040):	0x00085347
_main+0x44 (0x0044):	0x000c5387
_main+0x48 (0x0048):	0x001053c7
_main+0x4c (0x004c):	0x00145407
_main+0x50 (0x0050):	0x00185447
_main+0x54 (0x0054):	0x001c5487
_main+0x58 (0x0058):	0x002054c7
_main+0x5c (0x005c):	0x00245507
_main+0x60 (0x0060):	0x00285547
_main+0x64 (0x0064):	0x002c5587
_main+0x68 (0x0068):	0x003055c7
_finish+0x00 (0x006c):	0x00000031
_data+0x00 (0x0070):	0x12345678
_data+0x04 (0x0074):	0x98765432
(dlxsim) 

