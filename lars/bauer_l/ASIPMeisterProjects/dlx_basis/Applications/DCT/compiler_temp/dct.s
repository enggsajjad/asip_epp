	.section	.data
	;.global	_Input
_Input:
	.data.8	-1
	.data.8	-1
	.data.8	-1
	.data.8	-1
	.data.8	-1
	.data.8	-1
	.space	1
	.space	1
	.data.8	-1
	.data.8	-1
	.data.8	-1
	.data.8	-1
	.data.8	-1
	.space	1
	.space	1
	.space	1
	.data.8	-1
	.data.8	-1
	.data.8	-1
	.data.8	-1
	.space	1
	.space	1
	.space	1
	.data.8	-1
	.data.8	-1
	.data.8	-1
	.data.8	-1
	.space	1
	.space	1
	.space	1
	.data.8	-1
	.data.8	-1
	.data.8	-1
	.data.8	-1
	.space	1
	.space	1
	.space	1
	.data.8	-1
	.data.8	-1
	.data.8	-1
	.data.8	-1
	.space	1
	.space	1
	.space	1
	.data.8	-1
	.data.8	-1
	.data.8	-1
	.data.8	-1
	.space	1
	.space	1
	.space	1
	.data.8	-1
	.data.8	-1
	.data.8	-1
	.data.8	-1
	.data.8	-1
	.space	1
	.space	1
	.data.8	-1
	.data.8	-1
	.data.8	-1
	.data.8	-1
	.data.8	-1
	.data.8	-1
	;.global	_Output
_Output:
	.space	64
	;.global	_COS1
_COS1:
	.data.8	125
	.data.8	122
	.data.8	115
	.data.8	103
	.data.8	88
	.data.8	69
	.data.8	47
	.data.8	24
	.data.8	125
	.data.8	103
	.data.8	47
	.data.8	-24
	.data.8	-88
	.data.8	-122
	.data.8	-115
	.data.8	-69
	.data.8	125
	.data.8	69
	.data.8	-47
	.data.8	-122
	.data.8	-88
	.data.8	24
	.data.8	115
	.data.8	103
	.data.8	125
	.data.8	24
	.data.8	-115
	.data.8	-69
	.data.8	88
	.data.8	103
	.data.8	-47
	.data.8	-122
	.data.8	125
	.data.8	-24
	.data.8	-115
	.data.8	69
	.data.8	88
	.data.8	-103
	.data.8	-47
	.data.8	122
	.data.8	125
	.data.8	-69
	.data.8	-47
	.data.8	122
	.data.8	-88
	.data.8	-24
	.data.8	115
	.data.8	-103
	.data.8	125
	.data.8	-103
	.data.8	47
	.data.8	24
	.data.8	-88
	.data.8	122
	.data.8	-115
	.data.8	69
	.data.8	125
	.data.8	-122
	.data.8	115
	.data.8	-103
	.data.8	88
	.data.8	-69
	.data.8	47
	.data.8	-24
	;.global	_COS2
_COS2:
	.data.8	125
	.data.8	125
	.data.8	125
	.data.8	125
	.data.8	125
	.data.8	125
	.data.8	125
	.data.8	125
	.data.8	122
	.data.8	103
	.data.8	69
	.data.8	24
	.data.8	-24
	.data.8	-69
	.data.8	-103
	.data.8	-122
	.data.8	115
	.data.8	47
	.data.8	-47
	.data.8	-115
	.data.8	-115
	.data.8	-47
	.data.8	47
	.data.8	115
	.data.8	103
	.data.8	-24
	.data.8	-122
	.data.8	-69
	.data.8	69
	.data.8	122
	.data.8	24
	.data.8	-103
	.data.8	88
	.data.8	-88
	.data.8	-88
	.data.8	88
	.data.8	88
	.data.8	-88
	.data.8	-88
	.data.8	88
	.data.8	69
	.data.8	-122
	.data.8	24
	.data.8	103
	.data.8	-103
	.data.8	-24
	.data.8	122
	.data.8	-69
	.data.8	47
	.data.8	-115
	.data.8	115
	.data.8	-47
	.data.8	-47
	.data.8	115
	.data.8	-115
	.data.8	47
	.data.8	24
	.data.8	-69
	.data.8	103
	.data.8	-122
	.data.8	122
	.data.8	-103
	.data.8	69
	.data.8	-24
	.section	.text
my_mult:
L1:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
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
	mult	%GPR28,%GPR1,%GPR2	
	NOP		;;3,7
	NOP		;;3,7
	NOP		;;3,7
	NOP		;;3,7
	j	L2	
	NOP		
	NOP		
	NOP		
	NOP		
L2:
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
DCT:
L3:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$72	
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
	ori	%GPR2,%GPR2,$0	
	NOP		
	NOP		
	NOP		
L5:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		
	NOP		
	NOP		
L6:
	NOP		;;0,2
	NOP		;;0,2
	LI	%GPR5, *_Input	
	LI	%GPR6, *_COS2	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$8	
	lhi	%GPR8,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR8,%GPR8,$8	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	mult	%GPR7,%GPR1,%GPR7	
	mult	%GPR8,%GPR3,%GPR8	
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$8	
	NOP		;;10,12
	NOP		;;10,12
	add	%GPR5,%GPR5,%GPR7	
	add	%GPR6,%GPR6,%GPR8	
	NOP		;;13,16
	NOP		;;13,16
	NOP		;;13,16
	add	%GPR5,%GPR5,%GPR3	
	add	%GPR6,%GPR6,%GPR2	
	addi	%GPR3,%GPR3,$1	
	NOP		;;18,20
	NOP		;;18,20
	lb	%GPR5,0(%GPR5)	
	lb	%GPR6,0(%GPR6)	
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	mac	%GPR4,%GPR5,%GPR6	
	slt	%GPR27,%GPR3,%GPR9	
	bnez	%GPR27,L6	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L7	
	NOP		
	NOP		
	NOP		
	NOP		
L7:
	subi	%GPR3,%GPR30,$64	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$8	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$8	
	NOP		;;6,8
	NOP		;;6,8
	mult	%GPR5,%GPR1,%GPR5	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	add	%GPR3,%GPR3,%GPR5	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	add	%GPR3,%GPR3,%GPR2	
	addi	%GPR2,%GPR2,$1	
	NOP		;;17,20
	NOP		;;17,20
	NOP		;;17,20
	sb	0(%GPR3),%GPR4	
	slt	%GPR27,%GPR2,%GPR6	
	bnez	%GPR27,L5	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L8	
	NOP		
	NOP		
	NOP		
	NOP		
L8:
	addi	%GPR1,%GPR1,$1	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$8	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	slt	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L4	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L9	
	NOP		
	NOP		
	NOP		
	NOP		
L9:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		
	NOP		
	NOP		
L10:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		
	NOP		
	NOP		
L11:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		
	NOP		
	NOP		
L12:
	NOP		;;0,2
	NOP		;;0,2
	LI	%GPR5, *_COS1	
	subi	%GPR6,%GPR30,$64	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$8	
	lhi	%GPR8,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR8,%GPR8,$8	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	mult	%GPR7,%GPR1,%GPR7	
	mult	%GPR8,%GPR3,%GPR8	
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$8	
	NOP		;;10,12
	NOP		;;10,12
	add	%GPR5,%GPR5,%GPR7	
	add	%GPR6,%GPR6,%GPR8	
	NOP		;;13,16
	NOP		;;13,16
	NOP		;;13,16
	add	%GPR5,%GPR5,%GPR3	
	add	%GPR6,%GPR6,%GPR2	
	addi	%GPR3,%GPR3,$1	
	NOP		;;18,20
	NOP		;;18,20
	lb	%GPR5,0(%GPR5)	
	lb	%GPR6,0(%GPR6)	
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	mac	%GPR4,%GPR5,%GPR6	
	slt	%GPR27,%GPR3,%GPR9	
	bnez	%GPR27,L12	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L13	
	NOP		
	NOP		
	NOP		
	NOP		
L13:
	LI	%GPR3, *_Output	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$8	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$8	
	NOP		;;6,8
	NOP		;;6,8
	mult	%GPR5,%GPR1,%GPR5	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	add	%GPR3,%GPR3,%GPR5	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	add	%GPR3,%GPR3,%GPR2	
	addi	%GPR2,%GPR2,$1	
	NOP		;;17,20
	NOP		;;17,20
	NOP		;;17,20
	sb	0(%GPR3),%GPR4	
	slt	%GPR27,%GPR2,%GPR6	
	bnez	%GPR27,L11	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L14	
	NOP		
	NOP		
	NOP		
	NOP		
L14:
	addi	%GPR1,%GPR1,$1	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$8	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	slt	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L10	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L15	
	NOP		
	NOP		
	NOP		
	NOP		
L15:
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
L16:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$8	
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
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	DCT	
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
	NOP		;;0,2
	NOP		;;0,2
	addi	%GPR28,%GPR28,$1	
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$10	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	slt	%GPR27,%GPR28,%GPR1	
	bnez	%GPR27,L17	
	NOP		
	NOP		
	NOP		
	NOP		
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
