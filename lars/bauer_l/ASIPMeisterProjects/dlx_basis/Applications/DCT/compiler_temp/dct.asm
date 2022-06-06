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
	.addressing	Word
	xor	%GPR30, %GPR30, %GPR30
	xor	%GPR29, %GPR29, %GPR29
	xor	%GPR28, %GPR28, %GPR28
	nop
	lhi	%GPR30, $15
	lhi	%GPR29, $15
	nop
	nop
	ori	%GPR30, %GPR30, $65532
	ori	%GPR29, %GPR29, $65532
	nop
	nop
	nop
	sw	-4(%GPR29), %GPR30
	sw	-8(%GPR29), %GPR31
	addi	%GPR29, %GPR30, $-8
	jal	main	
	nop
	sw	0(%GPR29), %GPR1
	jal	exit	
	nop
my_mult:
L1:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 6 NOPs removed by reduceNOPs.sh
	mult	%GPR28,%GPR1,%GPR2	
	nop	;;3,7
	nop	;;3,7
	nop	;;3,7
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L2	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L2:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
DCT:
L3:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$72	
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
L4:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop
	nop
	nop
L5:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
L6:
	nop	;;0,2
	nop	;;0,2
	lhi	%GPR5,$( _Input	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _Input	%0x10000)
	lhi	%GPR6,$( _COS2	/0x10000)
	nop
	nop
	nop
	ori	%GPR6,%GPR6,$( _COS2	%0x10000)
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$8	
	lhi	%GPR8,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$8	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	mult	%GPR7,%GPR1,%GPR7	
	mult	%GPR8,%GPR3,%GPR8	
	lhi	%GPR9,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$8	
	nop	;;10,12
	nop	;;10,12
	add	%GPR5,%GPR5,%GPR7	
	add	%GPR6,%GPR6,%GPR8	
	nop	;;13,16
	nop	;;13,16
	nop	;;13,16
	add	%GPR5,%GPR5,%GPR3	
	add	%GPR6,%GPR6,%GPR2	
	addi	%GPR3,%GPR3,$1	
	nop	;;18,20
	nop	;;18,20
	lb	%GPR5,0(%GPR5)	
	lb	%GPR6,0(%GPR6)	
	nop	;;21,25
	nop	;;21,25
	nop	;;21,25
	; Automatically 1 NOPs removed by reduceNOPs.sh
	mac	%GPR4,%GPR5,%GPR6	
	slt	%GPR27,%GPR3,%GPR9	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L6	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L7	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L7:
	subi	%GPR3,%GPR30,$64	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$8	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$8	
	nop	;;6,8
	nop	;;6,8
	mult	%GPR5,%GPR1,%GPR5	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR3,%GPR5	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR3,%GPR2	
	addi	%GPR2,%GPR2,$1	
	nop	;;17,20
	nop	;;17,20
	nop	;;17,20
	sb	0(%GPR3),%GPR4	
	slt	%GPR27,%GPR2,%GPR6	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L5	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L8:
	addi	%GPR1,%GPR1,$1	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$8	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L4	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L9	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L9:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
L10:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop
	nop
	nop
L11:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
L12:
	nop	;;0,2
	nop	;;0,2
	lhi	%GPR5,$( _COS1	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _COS1	%0x10000)
	subi	%GPR6,%GPR30,$64	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$8	
	lhi	%GPR8,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$8	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	mult	%GPR7,%GPR1,%GPR7	
	mult	%GPR8,%GPR3,%GPR8	
	lhi	%GPR9,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$8	
	nop	;;10,12
	nop	;;10,12
	add	%GPR5,%GPR5,%GPR7	
	add	%GPR6,%GPR6,%GPR8	
	nop	;;13,16
	nop	;;13,16
	nop	;;13,16
	add	%GPR5,%GPR5,%GPR3	
	add	%GPR6,%GPR6,%GPR2	
	addi	%GPR3,%GPR3,$1	
	nop	;;18,20
	nop	;;18,20
	lb	%GPR5,0(%GPR5)	
	lb	%GPR6,0(%GPR6)	
	nop	;;21,25
	nop	;;21,25
	nop	;;21,25
	; Automatically 1 NOPs removed by reduceNOPs.sh
	mac	%GPR4,%GPR5,%GPR6	
	slt	%GPR27,%GPR3,%GPR9	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L12	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L13	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L13:
	lhi	%GPR3,$( _Output	/0x10000)
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$( _Output	%0x10000)
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$8	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$8	
	nop	;;6,8
	nop	;;6,8
	mult	%GPR5,%GPR1,%GPR5	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR3,%GPR5	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR3,%GPR2	
	addi	%GPR2,%GPR2,$1	
	nop	;;17,20
	nop	;;17,20
	nop	;;17,20
	sb	0(%GPR3),%GPR4	
	slt	%GPR27,%GPR2,%GPR6	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L11	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L14	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L14:
	addi	%GPR1,%GPR1,$1	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$8	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L10	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L15	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L15:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
main:
L16:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
L17:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	DCT	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 7 NOPs removed by reduceNOPs.sh
	addi	%GPR28,%GPR28,$1	
	nop	;;2,5
	nop	;;2,5
	nop	;;2,5
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$10	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR28,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L17	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L18	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L18:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 2 NOPs removed by reduceNOPs.sh
exit:
	nop
	nop
