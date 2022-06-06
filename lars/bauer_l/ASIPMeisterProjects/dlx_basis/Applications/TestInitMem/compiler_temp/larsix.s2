	.section	.data
	;.global	_threadStackStart
	.align	4
_threadStackStart:
	.data.32	11772
	.data.32	7676
	.data.32	3580
	.data.32	2044
L1:
	.data.8	76
	.data.8	65
	.data.8	82
	.data.8	83
	.data.8	73
	.data.8	88
	.data.8	32
	.data.8	69
	.data.8	82
	.data.8	82
	.data.8	79
	.data.8	82
	.data.8	32
	.data.8	49
	.data.8	58
	.data.8	32
	.data.8	78
	.data.8	111
	.data.8	116
	.data.8	32
	.data.8	97
	.data.8	108
	.data.8	108
	.data.8	32
	.data.8	84
	.data.8	104
	.data.8	114
	.data.8	101
	.data.8	97
	.data.8	100
	.data.8	115
	.data.8	32
	.data.8	104
	.data.8	97
	.data.8	118
	.data.8	101
	.data.8	32
	.data.8	97
	.data.8	32
	.data.8	115
	.data.8	116
	.data.8	97
	.data.8	114
	.data.8	116
	.data.8	45
	.data.8	97
	.data.8	100
	.data.8	100
	.data.8	114
	.data.8	101
	.data.8	115
	.data.8	115
	.data.8	33
	.data.8	13
	.data.8	10
	.space	1
L2:
	.data.8	32
	.data.8	32
	.data.8	72
	.data.8	97
	.data.8	108
	.data.8	116
	.data.8	105
	.data.8	110
	.data.8	103
	.data.8	32
	.data.8	110
	.data.8	111
	.data.8	119
	.data.8	46
	.data.8	13
	.data.8	10
	.space	1
	;.global	_threadRegisters
	.align	4
_threadRegisters:
	.space	464
	;.global	_threadCurrent
	.align	4
_threadCurrent:
	.space	4
	;.global	_threadDummyRegisters
	.align	4
_threadDummyRegisters:
	.space	124
	.section	.text
determineStartAddress:
L3:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;0,2
	NOP		;;0,2
	NOP		
	NOP		
	NOP		
	NOP		;;2,7
	NOP		;;2,7
	NOP		;;2,7
	NOP		;;2,7
	NOP		;;2,7
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L8	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L4	
	NOP		
	NOP		
	NOP		
	NOP		
L4:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L10	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L5	
	NOP		
	NOP		
	NOP		
	NOP		
L5:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$2	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L11	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L6	
	NOP		
	NOP		
	NOP		
	NOP		
L6:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$3	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L7	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L12	
	NOP		
	NOP		
	NOP		
	NOP		
L7:
		  LI %GPR1, *thread3 	
	j	L9	
	NOP		
	NOP		
	NOP		
L8:
		  LI %GPR1, *thread0 	
	NOP		
	NOP		
	NOP		
L9:
	add	%GPR28,%GPR1,%GPR0	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	j	L14	
	NOP		
	NOP		
	NOP		
	NOP		
L10:
		  LI %GPR1, *thread1 	
	j	L9	
	NOP		
	NOP		
	NOP		
L11:
		  LI %GPR1, *thread2 	
	j	L9	
	NOP		
	NOP		
	NOP		
L12:
	LI	%GPR1, *L1	
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_print	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *L2	
	NOP		;;6,11
	NOP		;;6,11
	NOP		;;6,11
	NOP		;;6,11
	NOP		;;6,11
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_print	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
L13:
	j	L13	
	NOP		
	NOP		
	NOP		
L14:
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	lw	%GPR30,0(%GPR30)	
	NOP		
	NOP		
	jr	%GPR31	
	NOP		
	NOP		
	NOP		
	NOP		
getNextThread:
L15:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *_threadCurrent	
	NOP		;;2,6
	NOP		;;2,6
	NOP		;;2,6
	NOP		;;2,6
	lw	%GPR1,0(%GPR1)	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	NOP		;;7,10
	NOP		;;7,10
	NOP		;;7,10
	addi	%GPR28,%GPR1,$1	
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	sge	%GPR27,%GPR28,%GPR2	
	bnez	%GPR27,L16	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L17	
	NOP		
	NOP		
	NOP		
	NOP		
L16:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		
	NOP		
	NOP		
L17:
	j	L18	
	NOP		
	NOP		
	NOP		
	NOP		
L18:
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	lw	%GPR30,0(%GPR30)	
	NOP		
	NOP		
	jr	%GPR31	
	NOP		
	NOP		
	NOP		
	NOP		
switchThread:
L19:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$16	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *_threadCurrent	
	NOP		;;2,6
	NOP		;;2,6
	NOP		;;2,6
	NOP		;;2,6
	lw	%GPR1,0(%GPR1)	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L20	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L21	
	NOP		
	NOP		
	NOP		
	NOP		
L20:
	LI	%GPR1, *_threadDummyRegisters	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	sw	-4(%GPR30),%GPR1	
	j	L22	
	NOP		
	NOP		
	NOP		
L21:
	LI	%GPR1, *_threadCurrent	
	NOP		;;0,2
	NOP		;;0,2
	LI	%GPR2, *_threadRegisters	
	NOP		;;2,4
	NOP		;;2,4
	lw	%GPR1,0(%GPR1)	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$116	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	mult	%GPR1,%GPR1,%GPR3	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	add	%GPR1,%GPR2,%GPR1	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sw	-4(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
L22:
	LI	%GPR1, *_threadCurrent	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	sw	-8(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	getNextThread	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR3,-8(%GPR30)	
	LI	%GPR1, *_threadCurrent	
	NOP		;;7,9
	NOP		;;7,9
	LI	%GPR2, *_threadRegisters	
	sw	0(%GPR3),%GPR28	
	NOP		;;10,12
	NOP		;;10,12
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$116	
	NOP		;;12,14
	NOP		;;12,14
	lw	%GPR1,0(%GPR1)	
	NOP		;;14,18
	NOP		;;14,18
	NOP		;;14,18
	NOP		;;14,18
	mult	%GPR1,%GPR1,%GPR3	
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	add	%GPR2,%GPR2,%GPR1	
	lw	%GPR1,-4(%GPR30)	
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
		
  
    ;; asm void switchThread_asm(int* addressSave:reg<R1>, int* addressLoad:reg<R2>) {...}
    nop
    nop
    nop
    sw   0(%GPR1), %GPR3
    sw   4(%GPR1), %GPR4
    sw   8(%GPR1), %GPR5
    sw  12(%GPR1), %GPR6
    sw  16(%GPR1), %GPR7
    sw  20(%GPR1), %GPR8
    sw  24(%GPR1), %GPR9
    sw  28(%GPR1), %GPR10
    sw  32(%GPR1), %GPR11
    sw  36(%GPR1), %GPR12
    sw  40(%GPR1), %GPR13
    sw  44(%GPR1), %GPR14
    sw  48(%GPR1), %GPR15
    sw  52(%GPR1), %GPR16
    sw  56(%GPR1), %GPR17
    sw  60(%GPR1), %GPR18
    sw  64(%GPR1), %GPR19
    sw  68(%GPR1), %GPR20
    sw  72(%GPR1), %GPR21
    sw  76(%GPR1), %GPR22
    sw  80(%GPR1), %GPR23
    sw  84(%GPR1), %GPR24
    sw  88(%GPR1), %GPR25
    sw  92(%GPR1), %GPR26
    sw  96(%GPR1), %GPR27
    sw 100(%GPR1), %GPR28
    sw 104(%GPR1), %GPR29
    sw 108(%GPR1), %GPR30
    sw 112(%GPR1), %GPR31
    nop
    lw %GPR3,    0(%GPR2)
    lw %GPR4,    4(%GPR2)
    lw %GPR5,    8(%GPR2)
    lw %GPR6,   12(%GPR2)
    lw %GPR7,   16(%GPR2)
    lw %GPR8,   20(%GPR2)
    lw %GPR9,   24(%GPR2)
    lw %GPR10,  28(%GPR2)
    lw %GPR11,  32(%GPR2)
    lw %GPR12,  36(%GPR2)
    lw %GPR13,  40(%GPR2)
    lw %GPR14,  44(%GPR2)
    lw %GPR15,  48(%GPR2)
    lw %GPR16,  52(%GPR2)
    lw %GPR17,  56(%GPR2)
    lw %GPR18,  60(%GPR2)
    lw %GPR19,  64(%GPR2)
    lw %GPR20,  68(%GPR2)
    lw %GPR21,  72(%GPR2)
    lw %GPR22,  76(%GPR2)
    lw %GPR23,  80(%GPR2)
    lw %GPR24,  84(%GPR2)
    lw %GPR25,  88(%GPR2)
    lw %GPR26,  92(%GPR2)
    lw %GPR27,  96(%GPR2)
    lw %GPR28, 100(%GPR2)
    lw %GPR29, 104(%GPR2)
    lw %GPR30, 108(%GPR2)
    lw %GPR31, 112(%GPR2)
    nop
    nop
    nop
	
	NOP		;;27,32
	NOP		;;27,32
	NOP		;;27,32
	NOP		;;27,32
	NOP		;;27,32
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		;;32,36
	NOP		;;32,36
	NOP		;;32,36
	NOP		;;32,36
	j	L23	
	NOP		
	NOP		
	NOP		
	NOP		
L23:
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	lw	%GPR30,0(%GPR30)	
	NOP		
	NOP		
	jr	%GPR31	
	NOP		
	NOP		
	NOP		
	NOP		
thread0:
L24:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$24	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	poll_display	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;2,4
	NOP		;;2,4
	sw	-16(%GPR30),%GPR28	
	NOP		;;4,7
	NOP		;;4,7
	NOP		;;4,7
	lhi	%GPR1,$64	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$4200000	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	wait	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR1,-16(%GPR30)	
	subi	%GPR2,%GPR30,$12	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	intToStr	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR1,%GPR30,$12	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_print	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
L25:
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	switchThread	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L25	
	NOP		
	NOP		
	NOP		
L26:
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	lw	%GPR30,0(%GPR30)	
	NOP		
	NOP		
	jr	%GPR31	
	NOP		
	NOP		
	NOP		
	NOP		
thread1:
L27:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	test_poll	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
L28:
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	lw	%GPR30,0(%GPR30)	
	NOP		
	NOP		
	jr	%GPR31	
	NOP		
	NOP		
	NOP		
	NOP		
thread2:
L29:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	soundtest	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
L30:
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	lw	%GPR30,0(%GPR30)	
	NOP		
	NOP		
	jr	%GPR31	
	NOP		
	NOP		
	NOP		
	NOP		
thread3:
L31:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
L32:
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	switchThread	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L32	
	NOP		
	NOP		
	NOP		
L33:
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	lw	%GPR30,0(%GPR30)	
	NOP		
	NOP		
	jr	%GPR31	
	NOP		
	NOP		
	NOP		
	NOP		
initialize:
L34:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$20	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;1,6
	NOP		;;1,6
	NOP		;;1,6
	NOP		;;1,6
	NOP		;;1,6
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;6,10
	NOP		;;6,10
	NOP		;;6,10
	NOP		;;6,10
	sw	-4(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
L35:
	lw	%GPR5,-4(%GPR30)	
	NOP		;;1,3
	NOP		;;1,3
	LI	%GPR1, *_threadStackStart	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$4	
	LI	%GPR2, *_threadRegisters	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$116	
	NOP		;;6,8
	NOP		;;6,8
	mult	%GPR3,%GPR5,%GPR3	
	NOP		;;8,10
	NOP		;;8,10
	mult	%GPR4,%GPR5,%GPR4	
	NOP		;;10,12
	NOP		;;10,12
	add	%GPR1,%GPR1,%GPR3	
	NOP		;;12,14
	NOP		;;12,14
	add	%GPR2,%GPR2,%GPR4	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$108	
	lw	%GPR1,0(%GPR1)	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sw	-8(%GPR30),%GPR1	
	sw	-12(%GPR30),%GPR1	
	add	%GPR1,%GPR2,%GPR5	
	NOP		;;22,24
	NOP		;;22,24
	lw	%GPR2,-8(%GPR30)	
	NOP		;;24,28
	NOP		;;24,28
	NOP		;;24,28
	NOP		;;24,28
	subi	%GPR2,%GPR2,$4	
	NOP		;;28,32
	NOP		;;28,32
	NOP		;;28,32
	NOP		;;28,32
	sw	0(%GPR1),%GPR2	
	lw	%GPR1,-4(%GPR30)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	determineStartAddress	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR1,-4(%GPR30)	
	add	%GPR2,%GPR28,%GPR0	
	NOP		;;36,39
	NOP		;;36,39
	NOP		;;36,39
	addi	%GPR1,%GPR1,$1	
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	sw	-4(%GPR30),%GPR1	
	lw	%GPR1,-12(%GPR30)	
	NOP		;;44,48
	NOP		;;44,48
	NOP		;;44,48
	NOP		;;44,48
	add	%GPR3,%GPR1,%GPR0	
	sw	0(%GPR1),%GPR2	
	lhi	%GPR1,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$-16	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	NOP		;;51,54
	NOP		;;51,54
	NOP		;;51,54
	add	%GPR1,%GPR3,%GPR1	
	lw	%GPR3,-8(%GPR30)	
	NOP		;;55,59
	NOP		;;55,59
	NOP		;;55,59
	NOP		;;55,59
	sw	0(%GPR1),%GPR3	
	lw	%GPR1,-4(%GPR30)	
	NOP		;;60,64
	NOP		;;60,64
	NOP		;;60,64
	NOP		;;60,64
	slt	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L35	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L36	
	NOP		
	NOP		
	NOP		
	NOP		
L36:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	j	L37	
	NOP		
	NOP		
	NOP		
	NOP		
L37:
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	lw	%GPR30,0(%GPR30)	
	NOP		
	NOP		
	jr	%GPR31	
	NOP		
	NOP		
	NOP		
	NOP		
main:
L38:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	initialize	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;2,4
	NOP		;;2,4
	LI	%GPR2, *_threadCurrent	
	NOP		;;4,7
	NOP		;;4,7
	NOP		;;4,7
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$4	
	NOP		;;7,9
	NOP		;;7,9
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;9,11
	NOP		;;9,11
	sw	0(%GPR2),%GPR3	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_cursor	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	switchThread	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;13,18
	NOP		;;13,18
	NOP		;;13,18
	NOP		;;13,18
	NOP		;;13,18
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	j	L39	
	NOP		
	NOP		
	NOP		
	NOP		
L39:
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	lw	%GPR30,0(%GPR30)	
	NOP		
	NOP		
	jr	%GPR31	
	NOP		
	NOP		
	NOP		
	NOP		
