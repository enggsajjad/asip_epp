	.addressing word

	.section .text  

_main:

	; load some values
	lsoi	r10,	r10,	$(rten / 0x10000)
	lsoi	r10,	r10,	$(rten % 0x10000)

	lw	r11, 0(r10)	;2
	lw	r12, 4(r10)	;9
	nop						; required for load delay slot, otherwise gpr12 is not loaded
	;rr commands
	add r13, r12, r11	;shoule be 11
	sub r14, r12, r11	; 7
	mul r15, r12, r11	;18
	div r16, r12, r11	;4
	divu r17, r12, r11	;4
	mod r18, r12, r11	;1
	modu r19, r12, r11	;1
	and r20, r12, r11	;0
	nand r21, r12, r11
	or r22, r12, r11	;11
	nor r23, r12, r11
	xor r24, r12, r11	;11
	lls r25, r12, r11	;36
	lrs r26, r12, r11	;2
	ars r27, r12, r11	;0x0000002
	elt r28, r12, r11	;0
	eltu r29, r12, r11	;0
	eeq r30, r12, r11	;0
	eneq r31, r12, r11	;1

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
	sw	52(r10),    r24
	sw	56(r10),    r25
	sw	60(r10),    r26
	sw	64(r10),    r27
	sw	68(r10),    r28
	sw	72(r10),    r29
	sw	76(r10),    r30
	sw	80(r10),    r31
	nop


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
	.data.32	0x00000009










asip04@i80labpc02:~/opt/dlxsimbr:$dlxsim  -da0 -pd1 -tjtest.txt
(dlxsim) load testRR.s
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
line 	lw	r12, 4(r10)	;9

size =        1
infoPtr->dot 0000000c
infoPtr->lineNum        c
code[0] = 00045304
line 	nop						; required for load delay slot, otherwise gpr12 is not loaded

size =        1
infoPtr->dot 00000010
infoPtr->lineNum        d
code[0] = 00000000
line 	add r13, r12, r11	;shoule be 11

size =        1
infoPtr->dot 00000014
infoPtr->lineNum        f
code[0] = 62da0001
line 	sub r14, r12, r11	; 9

size =        1
infoPtr->dot 00000018
infoPtr->lineNum       10
code[0] = 62dc0041
line 	mul r15, r12, r11	;18

size =        1
infoPtr->dot 0000001c
infoPtr->lineNum       11
code[0] = 62de0081
line 	div r16, r12, r11	;4

size =        1
infoPtr->dot 00000020
infoPtr->lineNum       12
code[0] = 62e000c1
line 	divu r17, r12, r11	;4

size =        1
infoPtr->dot 00000024
infoPtr->lineNum       13
code[0] = 62e20141
line 	mod r18, r12, r11	;1

size =        1
infoPtr->dot 00000028
infoPtr->lineNum       14
code[0] = 62e40101
line 	modu r19, r12, r11	;1

size =        1
infoPtr->dot 0000002c
infoPtr->lineNum       15
code[0] = 62e60181
line 	and r20, r12, r11	;0

size =        1
infoPtr->dot 00000030
infoPtr->lineNum       16
code[0] = 62e80401
line 	nand r21, r12, r11

size =        1
infoPtr->dot 00000034
infoPtr->lineNum       17
code[0] = 62ea04c1
line 	or r22, r12, r11	;11

size =        1
infoPtr->dot 00000038
infoPtr->lineNum       18
code[0] = 62ec0441
line 	nor r23, r12, r11

size =        1
infoPtr->dot 0000003c
infoPtr->lineNum       19
code[0] = 62ee0501
line 	xor r24, r12, r11	;11

size =        1
infoPtr->dot 00000040
infoPtr->lineNum       1a
code[0] = 62f00481
line 	lls r25, r12, r11	;36

size =        1
infoPtr->dot 00000044
infoPtr->lineNum       1b
code[0] = 62f20801
line 	lrs r26, r12, r11	;2

size =        1
infoPtr->dot 00000048
infoPtr->lineNum       1c
code[0] = 62f40841
line 	ars r27, r12, r11	;0x0000002

size =        1
infoPtr->dot 0000004c
infoPtr->lineNum       1d
code[0] = 62f60881
line 	elt r28, r12, r11	;0

size =        1
infoPtr->dot 00000050
infoPtr->lineNum       1e
code[0] = 62f80c01
line 	eltu r29, r12, r11	;0

size =        1
infoPtr->dot 00000054
infoPtr->lineNum       1f
code[0] = 62fa0c41
line 	eeq r30, r12, r11	;0

size =        1
infoPtr->dot 00000058
infoPtr->lineNum       20
code[0] = 62fc0c81
line 	eneq r31, r12, r11	;1

size =        1
infoPtr->dot 0000005c
infoPtr->lineNum       21
code[0] = 62fe0cc1
line 	sw	8(r10),    r13

size =        1
infoPtr->dot 00000060
infoPtr->lineNum       24
code[0] = 00085347
line 	sw	12(r10),    r14

size =        1
infoPtr->dot 00000064
infoPtr->lineNum       25
code[0] = 000c5387
line 	sw	16(r10),    r15

size =        1
infoPtr->dot 00000068
infoPtr->lineNum       26
code[0] = 001053c7
line 	sw	20(r10),    r16

size =        1
infoPtr->dot 0000006c
infoPtr->lineNum       27
code[0] = 00145407
line 	sw	24(r10),    r17

size =        1
infoPtr->dot 00000070
infoPtr->lineNum       28
code[0] = 00185447
line 	sw	28(r10),    r18

size =        1
infoPtr->dot 00000074
infoPtr->lineNum       29
code[0] = 001c5487
line 	sw	32(r10),    r19

size =        1
infoPtr->dot 00000078
infoPtr->lineNum       2a
code[0] = 002054c7
line 	sw	36(r10),    r20

size =        1
infoPtr->dot 0000007c
infoPtr->lineNum       2b
code[0] = 00245507
line 	sw	40(r10),    r21

size =        1
infoPtr->dot 00000080
infoPtr->lineNum       2c
code[0] = 00285547
line 	sw	44(r10),    r22

size =        1
infoPtr->dot 00000084
infoPtr->lineNum       2d
code[0] = 002c5587
line 	sw	48(r10),    r23

size =        1
infoPtr->dot 00000088
infoPtr->lineNum       2e
code[0] = 003055c7
line 	sw	52(r10),    r24

size =        1
infoPtr->dot 0000008c
infoPtr->lineNum       2f
code[0] = 00345607
line 	sw	56(r10),    r25

size =        1
infoPtr->dot 00000090
infoPtr->lineNum       30
code[0] = 00385647
line 	sw	60(r10),    r26

size =        1
infoPtr->dot 00000094
infoPtr->lineNum       31
code[0] = 003c5687
line 	sw	64(r10),    r27

size =        1
infoPtr->dot 00000098
infoPtr->lineNum       32
code[0] = 004056c7
line 	sw	68(r10),    r28

size =        1
infoPtr->dot 0000009c
infoPtr->lineNum       33
code[0] = 00445707
line 	sw	72(r10),    r29

size =        1
infoPtr->dot 000000a0
infoPtr->lineNum       34
code[0] = 00485747
line 	sw	76(r10),    r30

size =        1
infoPtr->dot 000000a4
infoPtr->lineNum       35
code[0] = 004c5787
line 	sw	80(r10),    r31

size =        1
infoPtr->dot 000000a8
infoPtr->lineNum       36
code[0] = 005057c7
line 	nop

size =        1
infoPtr->dot 000000ac
infoPtr->lineNum       37
code[0] = 00000000
line 	trap #0

size =        1
infoPtr->dot 000000b0
infoPtr->lineNum       3f
code[0] = 00000031
Biggest used address for Text Section (word aligned): 0xb0
Biggest used address for Data Section (word aligned): 0xc4
line 	lsoi	r10,	r10,	$(rten / 0x10000)

size =        1
infoPtr->dot 00000000
infoPtr->lineNum        8
code[0] = 000052a8
line 	lsoi	r10,	r10,	$(rten % 0x10000)

size =        1
infoPtr->dot 00000004
infoPtr->lineNum        9
code[0] = 00c052a8
line 	lw	r11, 0(r10)	;2

size =        1
infoPtr->dot 00000008
infoPtr->lineNum        b
code[0] = 000052c4
line 	lw	r12, 4(r10)	;9

size =        1
infoPtr->dot 0000000c
infoPtr->lineNum        c
code[0] = 00045304
line 	nop						; required for load delay slot, otherwise gpr12 is not loaded

size =        1
infoPtr->dot 00000010
infoPtr->lineNum        d
code[0] = 00000000
line 	add r13, r12, r11	;shoule be 11

size =        1
infoPtr->dot 00000014
infoPtr->lineNum        f
code[0] = 62da0001
line 	sub r14, r12, r11	; 9

size =        1
infoPtr->dot 00000018
infoPtr->lineNum       10
code[0] = 62dc0041
line 	mul r15, r12, r11	;18

size =        1
infoPtr->dot 0000001c
infoPtr->lineNum       11
code[0] = 62de0081
line 	div r16, r12, r11	;4

size =        1
infoPtr->dot 00000020
infoPtr->lineNum       12
code[0] = 62e000c1
line 	divu r17, r12, r11	;4

size =        1
infoPtr->dot 00000024
infoPtr->lineNum       13
code[0] = 62e20141
line 	mod r18, r12, r11	;1

size =        1
infoPtr->dot 00000028
infoPtr->lineNum       14
code[0] = 62e40101
line 	modu r19, r12, r11	;1

size =        1
infoPtr->dot 0000002c
infoPtr->lineNum       15
code[0] = 62e60181
line 	and r20, r12, r11	;0

size =        1
infoPtr->dot 00000030
infoPtr->lineNum       16
code[0] = 62e80401
line 	nand r21, r12, r11

size =        1
infoPtr->dot 00000034
infoPtr->lineNum       17
code[0] = 62ea04c1
line 	or r22, r12, r11	;11

size =        1
infoPtr->dot 00000038
infoPtr->lineNum       18
code[0] = 62ec0441
line 	nor r23, r12, r11

size =        1
infoPtr->dot 0000003c
infoPtr->lineNum       19
code[0] = 62ee0501
line 	xor r24, r12, r11	;11

size =        1
infoPtr->dot 00000040
infoPtr->lineNum       1a
code[0] = 62f00481
line 	lls r25, r12, r11	;36

size =        1
infoPtr->dot 00000044
infoPtr->lineNum       1b
code[0] = 62f20801
line 	lrs r26, r12, r11	;2

size =        1
infoPtr->dot 00000048
infoPtr->lineNum       1c
code[0] = 62f40841
line 	ars r27, r12, r11	;0x0000002

size =        1
infoPtr->dot 0000004c
infoPtr->lineNum       1d
code[0] = 62f60881
line 	elt r28, r12, r11	;0

size =        1
infoPtr->dot 00000050
infoPtr->lineNum       1e
code[0] = 62f80c01
line 	eltu r29, r12, r11	;0

size =        1
infoPtr->dot 00000054
infoPtr->lineNum       1f
code[0] = 62fa0c41
line 	eeq r30, r12, r11	;0

size =        1
infoPtr->dot 00000058
infoPtr->lineNum       20
code[0] = 62fc0c81
line 	eneq r31, r12, r11	;1

size =        1
infoPtr->dot 0000005c
infoPtr->lineNum       21
code[0] = 62fe0cc1
line 	sw	8(r10),    r13

size =        1
infoPtr->dot 00000060
infoPtr->lineNum       24
code[0] = 00085347
line 	sw	12(r10),    r14

size =        1
infoPtr->dot 00000064
infoPtr->lineNum       25
code[0] = 000c5387
line 	sw	16(r10),    r15

size =        1
infoPtr->dot 00000068
infoPtr->lineNum       26
code[0] = 001053c7
line 	sw	20(r10),    r16

size =        1
infoPtr->dot 0000006c
infoPtr->lineNum       27
code[0] = 00145407
line 	sw	24(r10),    r17

size =        1
infoPtr->dot 00000070
infoPtr->lineNum       28
code[0] = 00185447
line 	sw	28(r10),    r18

size =        1
infoPtr->dot 00000074
infoPtr->lineNum       29
code[0] = 001c5487
line 	sw	32(r10),    r19

size =        1
infoPtr->dot 00000078
infoPtr->lineNum       2a
code[0] = 002054c7
line 	sw	36(r10),    r20

size =        1
infoPtr->dot 0000007c
infoPtr->lineNum       2b
code[0] = 00245507
line 	sw	40(r10),    r21

size =        1
infoPtr->dot 00000080
infoPtr->lineNum       2c
code[0] = 00285547
line 	sw	44(r10),    r22

size =        1
infoPtr->dot 00000084
infoPtr->lineNum       2d
code[0] = 002c5587
line 	sw	48(r10),    r23

size =        1
infoPtr->dot 00000088
infoPtr->lineNum       2e
code[0] = 003055c7
line 	sw	52(r10),    r24

size =        1
infoPtr->dot 0000008c
infoPtr->lineNum       2f
code[0] = 00345607
line 	sw	56(r10),    r25

size =        1
infoPtr->dot 00000090
infoPtr->lineNum       30
code[0] = 00385647
line 	sw	60(r10),    r26

size =        1
infoPtr->dot 00000094
infoPtr->lineNum       31
code[0] = 003c5687
line 	sw	64(r10),    r27

size =        1
infoPtr->dot 00000098
infoPtr->lineNum       32
code[0] = 004056c7
line 	sw	68(r10),    r28

size =        1
infoPtr->dot 0000009c
infoPtr->lineNum       33
code[0] = 00445707
line 	sw	72(r10),    r29

size =        1
infoPtr->dot 000000a0
infoPtr->lineNum       34
code[0] = 00485747
line 	sw	76(r10),    r30

size =        1
infoPtr->dot 000000a4
infoPtr->lineNum       35
code[0] = 004c5787
line 	sw	80(r10),    r31

size =        1
infoPtr->dot 000000a8
infoPtr->lineNum       36
code[0] = 005057c7
line 	nop

size =        1
infoPtr->dot 000000ac
infoPtr->lineNum       37
code[0] = 00000000
line 	trap #0

size =        1
infoPtr->dot 000000b0
infoPtr->lineNum       3f
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
  Pre OpCode: 0x78
execute wordPtr opCode        1
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 7
before last_pc = 6
before pc = 8
machPtr->cycleCount = 8
execute wordPtr opCode       65
  Pre OpCode: 0x78
execute wordPtr opCode        2
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 8
before last_pc = 7
before pc = 9
machPtr->cycleCount = 9
execute wordPtr opCode       65
  Pre OpCode: 0x78
execute wordPtr opCode        3
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 9
before last_pc = 8
before pc = 10
machPtr->cycleCount = 44
execute wordPtr opCode       65
  Pre OpCode: 0x78
execute wordPtr opCode        4
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 10
before last_pc = 9
before pc = 11
machPtr->cycleCount = 79
execute wordPtr opCode       65
  Pre OpCode: 0x78
execute wordPtr opCode        5
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 11
before last_pc = 10
before pc = 12
machPtr->cycleCount = 114
execute wordPtr opCode       65
  Pre OpCode: 0x78
execute wordPtr opCode        6
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 12
before last_pc = 11
before pc = 13
machPtr->cycleCount = 149
execute wordPtr opCode       65
  Pre OpCode: 0x78
execute wordPtr opCode        7
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 13
before last_pc = 12
before pc = 14
machPtr->cycleCount = 184
execute wordPtr opCode       65
  Pre OpCode: 0x78
execute wordPtr opCode        8
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 14
before last_pc = 13
before pc = 15
machPtr->cycleCount = 185
execute wordPtr opCode       65
  Pre OpCode: 0x78
execute wordPtr opCode        9
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 15
before last_pc = 14
before pc = 16
machPtr->cycleCount = 186
execute wordPtr opCode       65
  Pre OpCode: 0x78
execute wordPtr opCode        a
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 16
before last_pc = 15
before pc = 17
machPtr->cycleCount = 187
execute wordPtr opCode       65
  Pre OpCode: 0x78
execute wordPtr opCode        b
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 17
before last_pc = 16
before pc = 18
machPtr->cycleCount = 188
execute wordPtr opCode       65
  Pre OpCode: 0x78
execute wordPtr opCode        c
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 18
before last_pc = 17
before pc = 19
machPtr->cycleCount = 189
execute wordPtr opCode       65
  Pre OpCode: 0x78
execute wordPtr opCode        d
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 19
before last_pc = 18
before pc = 20
machPtr->cycleCount = 190
execute wordPtr opCode       65
  Pre OpCode: 0x78
execute wordPtr opCode        e
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 20
before last_pc = 19
before pc = 21
machPtr->cycleCount = 191
execute wordPtr opCode       65
  Pre OpCode: 0x78
execute wordPtr opCode        f
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 21
before last_pc = 20
before pc = 22
machPtr->cycleCount = 192
execute wordPtr opCode       65
  Pre OpCode: 0x78
execute wordPtr opCode       10
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 22
before last_pc = 21
before pc = 23
machPtr->cycleCount = 193
execute wordPtr opCode       65
  Pre OpCode: 0x78
execute wordPtr opCode       11
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 23
before last_pc = 22
before pc = 24
machPtr->cycleCount = 194
execute wordPtr opCode       65
  Pre OpCode: 0x78
execute wordPtr opCode       12
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 24
before last_pc = 23
before pc = 25
machPtr->cycleCount = 195
execute wordPtr opCode       65
  Pre OpCode: 0x78
execute wordPtr opCode       13
machPtr->pipelineDelay = 1
machPtr->regs[registerNumber].writePosition = 0
after pc = 25
before last_pc = 24
before pc = 26
machPtr->cycleCount = 196
execute wordPtr opCode       65
  Pre OpCode: 0x22
execute wordPtr opCode       22
after pc = 26
before last_pc = 25
before pc = 27
machPtr->cycleCount = 197
execute wordPtr opCode       65
  Pre OpCode: 0x22
execute wordPtr opCode       22
after pc = 27
before last_pc = 26
before pc = 28
machPtr->cycleCount = 198
execute wordPtr opCode       65
  Pre OpCode: 0x22
execute wordPtr opCode       22
after pc = 28
before last_pc = 27
before pc = 29
machPtr->cycleCount = 199
execute wordPtr opCode       65
  Pre OpCode: 0x22
execute wordPtr opCode       22
after pc = 29
before last_pc = 28
before pc = 30
machPtr->cycleCount = 200
execute wordPtr opCode       65
  Pre OpCode: 0x22
execute wordPtr opCode       22
after pc = 30
before last_pc = 29
before pc = 31
machPtr->cycleCount = 201
execute wordPtr opCode       65
  Pre OpCode: 0x22
execute wordPtr opCode       22
after pc = 31
before last_pc = 30
before pc = 32
machPtr->cycleCount = 202
execute wordPtr opCode       65
  Pre OpCode: 0x22
execute wordPtr opCode       22
after pc = 32
before last_pc = 31
before pc = 33
machPtr->cycleCount = 203
execute wordPtr opCode       65
  Pre OpCode: 0x22
execute wordPtr opCode       22
after pc = 33
before last_pc = 32
before pc = 34
machPtr->cycleCount = 204
execute wordPtr opCode       65
  Pre OpCode: 0x22
execute wordPtr opCode       22
after pc = 34
before last_pc = 33
before pc = 35
machPtr->cycleCount = 205
execute wordPtr opCode       65
  Pre OpCode: 0x22
execute wordPtr opCode       22
after pc = 35
before last_pc = 34
before pc = 36
machPtr->cycleCount = 206
execute wordPtr opCode       65
  Pre OpCode: 0x22
execute wordPtr opCode       22
after pc = 36
before last_pc = 35
before pc = 37
machPtr->cycleCount = 207
execute wordPtr opCode       65
  Pre OpCode: 0x22
execute wordPtr opCode       22
after pc = 37
before last_pc = 36
before pc = 38
machPtr->cycleCount = 208
execute wordPtr opCode       65
  Pre OpCode: 0x22
execute wordPtr opCode       22
after pc = 38
before last_pc = 37
before pc = 39
machPtr->cycleCount = 209
execute wordPtr opCode       65
  Pre OpCode: 0x22
execute wordPtr opCode       22
after pc = 39
before last_pc = 38
before pc = 40
machPtr->cycleCount = 210
execute wordPtr opCode       65
  Pre OpCode: 0x22
execute wordPtr opCode       22
after pc = 40
before last_pc = 39
before pc = 41
machPtr->cycleCount = 211
execute wordPtr opCode       65
  Pre OpCode: 0x22
execute wordPtr opCode       22
after pc = 41
before last_pc = 40
before pc = 42
machPtr->cycleCount = 212
execute wordPtr opCode       65
  Pre OpCode: 0x22
execute wordPtr opCode       22
after pc = 42
before last_pc = 41
before pc = 43
machPtr->cycleCount = 213
execute wordPtr opCode       65
  Pre OpCode: 0x22
execute wordPtr opCode       22
after pc = 43
before last_pc = 42
before pc = 44
machPtr->cycleCount = 214
execute wordPtr opCode       65
  Pre OpCode: 0x22
execute wordPtr opCode       22
after pc = 44
before last_pc = 43
before pc = 45
machPtr->cycleCount = 215
execute wordPtr opCode       65
  Pre OpCode: 0x79
execute wordPtr opCode       2a
after pc = 45
before last_pc = 44
before pc = 46
machPtr->cycleCount = 216
execute wordPtr opCode       65
  Pre OpCode: 0x64
execute wordPtr opCode       64
TRAP #0 received
Altogether 216,0e0(216) cycles executed.
  0 Warnings for unresolved data dependencies printed.
  0 Warnings for successive load/store commands printed.
  0 Warnings for load/stores in the text section printed.
after pc = 46
(dlxsim) stats

Memory size: 16777216 bytes = 4194304 words. Maximum address you can "get": 0xfffffc. 

0 Warnings for unresolved data dependencies printed,
0 Warnings for successive load/store commands printed and
0 Warnings for load/stores in the text section printed.

				INTEGER OPERATIONS
				==================

     ADD        1       SUB        1       MUL        1       DIV        1  
    DIVU        1       MOD        1      MODU        1       AND        1  
    NAND        1        OR        1       NOR        1       XOR        1  
     LLS        1       LRS        1       ARS        1       ELT        1  
    ELTU        1       EEQ        1      ENEQ        1      ADDI        0  
    SUBI        0      ANDI        0       ORI        0      XORI        0  
    LLSI        0      LRSI        0      ARSI        0      LSOI        2  
      LB        0        LH        0        LW        2        SB        0  
      SH        0        SW       19       BRZ        0      BRNZ        0  
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
Total integer operations = 44

Total cycles = 216,0e0(216)
Current cycleCount = 216  (Differs from the total cycles, if an cycleCount-overflow happened)

Mult/Div/Mod Stalls = 170 cycles
Load/Store Stalls = 2 cycles
Jump/Branch Stalls = 0 cycles (for all jumps and taken branches)
SpecialInstruction Stalls = 0 cycles

No branch instructions executed.

		INSTRUCTION MEMORY COUNT
		========================
# of executions	    starting address	# of commands
	1 +- 0		    0		    45

To watch the commands use: "get {startingAddress} i{#OfCommands}".

                                                         BASE BLOCKS
                                                         ===========
---------------------------------------------------------------------------------------------------------------
          StartAddress:           |           EndAddress:            | NumberOfCommands: | NumberOfExecutions:
----------------------------------|----------------------------------|-------------------|---------------------
     0: start:                    |    -4: _main:                    |         0         |         1
     0: _main:                    |   172: _finish:                  |        44         |         1
   176: _finish:                  |   176: _data:                    |         1         |         1
   180: _data:                    |   188: _start:                   |         3         |         0
   192: rten:                     |   196: finish:                   |         2         |         0

To see the commands of a specific BaseBlock use "get {StartAddress} i{NumberOfCommands}".

(dlxsim) get 0 50
_main+0x00 (0x0000):	0x000052a8
_main+0x04 (0x0004):	0x00c052a8
_main+0x08 (0x0008):	0x000052c4
_main+0x0c (0x000c):	0x00045304
_main+0x10 (0x0010):	0x00000000
_main+0x14 (0x0014):	0x62da0001
_main+0x18 (0x0018):	0x62dc0041
_main+0x1c (0x001c):	0x62de0081
_main+0x20 (0x0020):	0x62e000c1
_main+0x24 (0x0024):	0x62e20141
_main+0x28 (0x0028):	0x62e40101
_main+0x2c (0x002c):	0x62e60181
_main+0x30 (0x0030):	0x62e80401
_main+0x34 (0x0034):	0x62ea04c1
_main+0x38 (0x0038):	0x62ec0441
_main+0x3c (0x003c):	0x62ee0501
_main+0x40 (0x0040):	0x62f00481
_main+0x44 (0x0044):	0x62f20801
_main+0x48 (0x0048):	0x62f40841
_main+0x4c (0x004c):	0x62f60881
_main+0x50 (0x0050):	0x62f80c01
_main+0x54 (0x0054):	0x62fa0c41
_main+0x58 (0x0058):	0x62fc0c81
_main+0x5c (0x005c):	0x62fe0cc1
_main+0x60 (0x0060):	0x00085347
_main+0x64 (0x0064):	0x000c5387
_main+0x68 (0x0068):	0x001053c7
_main+0x6c (0x006c):	0x00145407
_main+0x70 (0x0070):	0x00185447
_main+0x74 (0x0074):	0x001c5487
_main+0x78 (0x0078):	0x002054c7
_main+0x7c (0x007c):	0x00245507
_main+0x80 (0x0080):	0x00285547
_main+0x84 (0x0084):	0x002c5587
_main+0x88 (0x0088):	0x003055c7
_main+0x8c (0x008c):	0x00345607
_main+0x90 (0x0090):	0x00385647
_main+0x94 (0x0094):	0x003c5687
_main+0x98 (0x0098):	0x004056c7
_main+0x9c (0x009c):	0x00445707
_main+0xa0 (0x00a0):	0x00485747
_main+0xa4 (0x00a4):	0x004c5787
_main+0xa8 (0x00a8):	0x005057c7
_main+0xac (0x00ac):	0x00000000
_finish+0x00 (0x00b0):	0x00000031
_data+0x00 (0x00b4):	0x12345678
_data+0x04 (0x00b8):	0x98765432
_data+0x08 (0x00bc):	0xaaff0000
rten+0x00 (0x00c0):	0x00000002
rten+0x04 (0x00c4):	0x00000009
(dlxsim) get _rten 32
undefined symbol "_rten"
(dlxsim) get rten 32
rten+0x00 (0x00c0):	0x00000002
rten+0x04 (0x00c4):	0x00000009
rten+0x08 (0x00c8):	0x0000000b
rten+0x0c (0x00cc):	0x00000007
rten+0x10 (0x00d0):	0x00000012
rten+0x14 (0x00d4):	0x00000004
rten+0x18 (0x00d8):	0x00000004
rten+0x1c (0x00dc):	0x00000001
rten+0x20 (0x00e0):	0x00000001
rten+0x24 (0x00e4):	0x00000000
rten+0x28 (0x00e8):	0xffffffff
rten+0x2c (0x00ec):	0x0000000b
rten+0x30 (0x00f0):	0xfffffff4
rten+0x34 (0x00f4):	0x0000000b
rten+0x38 (0x00f8):	0x00000024
rten+0x3c (0x00fc):	0x00000002
rten+0x40 (0x0100):	0x00000002
rten+0x44 (0x0104):	0x00000000
rten+0x48 (0x0108):	0x00000000
rten+0x4c (0x010c):	0x00000000
rten+0x50 (0x0110):	0x00000001
rten+0x54 (0x0114):	0x00000000
rten+0x58 (0x0118):	0x00000000
rten+0x5c (0x011c):	0x00000000
rten+0x60 (0x0120):	0x00000000
rten+0x64 (0x0124):	0x00000000
rten+0x68 (0x0128):	0x00000000
rten+0x6c (0x012c):	0x00000000
rten+0x70 (0x0130):	0x00000000
rten+0x74 (0x0134):	0x00000000
rten+0x78 (0x0138):	0x00000000
rten+0x7c (0x013c):	0x00000000
(dlxsim) 

