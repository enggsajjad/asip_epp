	.section	.data
	;.global	_input1
	.align	4
_input1:
	.data.32	321
	.data.32	51
	.data.32	890345
	.data.32	75
	.data.32	78
	.data.32	7
	.data.32	34478651
	.data.32	2342
	.data.32	568
	.data.32	7894578
	.data.32	7
	.data.32	3461
	.data.32	1235
	.data.32	3467753
	.data.32	75
	.data.32	685
	.data.32	79
	.data.32	45568564
	.data.32	35
	.data.32	7625
	;.global	_input2
	.align	4
_input2:
	.data.32	45
	.data.32	765
	.data.32	12
	.data.32	78
	.data.32	74
	.data.32	42
	.data.32	1253
	.data.32	236377
	.data.32	5683
	.data.32	79
	.data.32	86
	.data.32	643
	.data.32	52314576
	.data.32	3461
	.data.32	57
	.data.32	785
	.data.32	79
	.data.32	47
	.data.32	3461
	.data.32	2513
	;.global	_resultAvg
	.align	4
_resultAvg:
	.space	80
	;.global	_resultSwap
	.align	4
_resultSwap:
	.space	80
	;.global	_resultMax
	.align	4
_resultMax:
	.space	80
	;.global	_resultMin
	.align	4
_resultMin:
	.space	80
	;.global	_resultRor
	.align	4
_resultRor:
	.space	80
L1:
	.data.8	105
	.data.8	49
	.data.8	58
	.data.8	9
	.space	1
L2:
	.data.8	9
	.data.8	105
	.data.8	50
	.data.8	58
	.data.8	9
	.space	1
L3:
	.data.8	9
	.data.8	97
	.data.8	118
	.data.8	103
	.data.8	58
	.data.8	9
	.space	1
L4:
	.data.8	9
	.data.8	115
	.data.8	119
	.data.8	97
	.data.8	112
	.data.8	58
	.data.8	9
	.space	1
L5:
	.data.8	9
	.data.8	109
	.data.8	97
	.data.8	120
	.data.8	58
	.data.8	9
	.space	1
L6:
	.data.8	9
	.data.8	109
	.data.8	105
	.data.8	110
	.data.8	58
	.data.8	9
	.space	1
L7:
	.data.8	9
	.data.8	114
	.data.8	111
	.data.8	114
	.data.8	58
	.data.8	9
	.space	1
L8:
	.data.8	13
	.data.8	10
	.space	1
	.section	.text
	.addressing	Word
main:
L9:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$12	
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
	nop	;;6,10
	nop	;;6,10
	nop	;;6,10
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR1	
	nop
	nop
	nop
L10:
	nop	;;0,2
	nop	;;0,2
	lw	%GPR5,-4(%GPR30)	
	lhi	%GPR1,$( _input1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _input1	%0x10000)
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$4	
	lhi	%GPR4,$( _input2	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( _input2	%0x10000)
	nop	;;6,8
	nop	;;6,8
	mult	%GPR2,%GPR5,%GPR2	
	mult	%GPR3,%GPR5,%GPR3	
	nop	;;9,12
	nop	;;9,12
	nop	;;9,12
	add	%GPR1,%GPR1,%GPR2	
	add	%GPR2,%GPR4,%GPR3	
	lw	%GPR3,-4(%GPR30)	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	lw	%GPR1,0(%GPR1)	
	lw	%GPR2,0(%GPR2)	
	add	%GPR7,%GPR3,%GPR0	
	mult	%GPR3,%GPR3,%GPR5	
	lhi	%GPR4,$( _resultAvg	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( _resultAvg	%0x10000)
	avg	%GPR1,%GPR1,%GPR2	
	lw	%GPR2,-4(%GPR30)	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	lhi	%GPR6,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$4	
	add	%GPR3,%GPR4,%GPR3	
	lhi	%GPR4,$( _resultSwap	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( _resultSwap	%0x10000)
	mult	%GPR5,%GPR7,%GPR5	
	mult	%GPR2,%GPR2,%GPR6	
	nop	;;28,31
	nop	;;28,31
	nop	;;28,31
	lhi	%GPR7,$( _input1	/0x10000)
	nop
	nop
	nop
	ori	%GPR7,%GPR7,$( _input1	%0x10000)
	sw	0(%GPR3),%GPR1	
	nop	;;32,34
	nop	;;32,34
	add	%GPR2,%GPR4,%GPR2	
	add	%GPR5,%GPR7,%GPR5	
	lw	%GPR7,-4(%GPR30)	
	lhi	%GPR6,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$4	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	
	lw	%GPR4,-4(%GPR30)	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$4	
	mult	%GPR6,%GPR7,%GPR6	
	mult	%GPR1,%GPR7,%GPR1	
	lw	%GPR5,0(%GPR5)	
	mult	%GPR3,%GPR4,%GPR3	


	nop
	nop
	nop
	swap	%GPR5, %GPR5
	nop
	nop
	nop

	sw	0(%GPR2),%GPR5	
	lhi	%GPR8,$( _input2	/0x10000)
	nop
	nop
	nop
	ori	%GPR8,%GPR8,$( _input2	%0x10000)
	lhi	%GPR7,$( _input1	/0x10000)
	nop
	nop
	nop
	ori	%GPR7,%GPR7,$( _input1	%0x10000)
	lw	%GPR5,-4(%GPR30)	
	lhi	%GPR4,$( _resultMin	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( _resultMin	%0x10000)
	add	%GPR1,%GPR8,%GPR1	
	add	%GPR2,%GPR7,%GPR6	
	add	%GPR7,%GPR5,%GPR0	
	add	%GPR3,%GPR4,%GPR3	
	nop	;;54,56
	nop	;;54,56
	lw	%GPR1,0(%GPR1)	
	lw	%GPR2,0(%GPR2)	
	sw	0(%GPR3),%GPR7	
	add	%GPR3,%GPR7,%GPR0	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop	;;60,62
	nop	;;60,62
	lhi	%GPR6,$( _resultMin	/0x10000)
	nop
	nop
	nop
	ori	%GPR6,%GPR6,$( _resultMin	%0x10000)
	nop	;;62,64
	nop	;;62,64
	mult	%GPR3,%GPR3,%GPR4	
	lhi	%GPR9,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$4	


	nop
	nop
	nop
	minMax	%GPR1, %GPR2, %GPR2, %GPR1
	nop
	nop
	nop

	nop	;;66,68
	nop	;;66,68
	lhi	%GPR4,$( _resultMax	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( _resultMax	%0x10000)
	mult	%GPR5,%GPR5,%GPR9	
	lhi	%GPR8,$( _input1	/0x10000)
	nop
	nop
	nop
	ori	%GPR8,%GPR8,$( _input1	%0x10000)
	nop	;;70,72
	nop	;;70,72
	add	%GPR3,%GPR4,%GPR3	
	add	%GPR5,%GPR6,%GPR5	
	lw	%GPR4,-4(%GPR30)	
	lhi	%GPR6,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$4	
	lhi	%GPR7,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$4	
	sw	0(%GPR5),%GPR1	
	lw	%GPR1,-4(%GPR30)	
	mult	%GPR4,%GPR4,%GPR6	
	lhi	%GPR5,$( _resultRor	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _resultRor	%0x10000)
	sw	0(%GPR3),%GPR2	
	mult	%GPR1,%GPR1,%GPR7	
	add	%GPR2,%GPR8,%GPR4	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop	;;84,86
	nop	;;84,86
	add	%GPR1,%GPR5,%GPR1	
	lw	%GPR2,0(%GPR2)	


	nop
	nop
	nop
	rot	%GPR2, %GPR2, $4
	nop
	nop
	nop

	lw	%GPR4,-4(%GPR30)	
	sw	0(%GPR1),%GPR2	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$20	
	nop	;;91,93
	nop	;;91,93
	addi	%GPR4,%GPR4,$1	
	nop	;;93,97
	nop	;;93,97
	nop	;;93,97
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR4,%GPR0	
	sw	-4(%GPR30),%GPR4	
	nop	;;98,101
	nop	;;98,101
	nop	;;98,101
	slt	%GPR27,%GPR1,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L10	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L11	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L11:
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
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR1	
	nop
	nop
	nop
L12:
	lhi	%GPR1,$( L1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L1	%0x10000)
	nop	;;0,5
	nop	;;0,5
	nop	;;0,5
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 3 NOPs removed by reduceNOPs.sh
	lw	%GPR3,-4(%GPR30)	
	lhi	%GPR1,$( _input1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _input1	%0x10000)
	nop	;;8,10
	nop	;;8,10
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop	;;10,14
	nop	;;10,14
	nop	;;10,14
				; Automatically 1 NOPs removed by reduceNOPs.sh
	mult	%GPR2,%GPR3,%GPR2	
	nop	;;14,18
	nop	;;14,18
	nop	;;14,18
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop	;;18,22
	nop	;;18,22
	nop	;;18,22
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_printInt	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L2	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L2	%0x10000)
	nop	;;24,29
	nop	;;24,29
	nop	;;24,29
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 3 NOPs removed by reduceNOPs.sh
	lw	%GPR3,-4(%GPR30)	
	lhi	%GPR1,$( _input2	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _input2	%0x10000)
	nop	;;32,34
	nop	;;32,34
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop	;;34,38
	nop	;;34,38
	nop	;;34,38
				; Automatically 1 NOPs removed by reduceNOPs.sh
	mult	%GPR2,%GPR3,%GPR2	
	nop	;;38,42
	nop	;;38,42
	nop	;;38,42
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop	;;42,46
	nop	;;42,46
	nop	;;42,46
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_printInt	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L3	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L3	%0x10000)
	nop	;;48,53
	nop	;;48,53
	nop	;;48,53
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 3 NOPs removed by reduceNOPs.sh
	lw	%GPR3,-4(%GPR30)	
	lhi	%GPR1,$( _resultAvg	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _resultAvg	%0x10000)
	nop	;;56,58
	nop	;;56,58
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop	;;58,62
	nop	;;58,62
	nop	;;58,62
				; Automatically 1 NOPs removed by reduceNOPs.sh
	mult	%GPR2,%GPR3,%GPR2	
	nop	;;62,66
	nop	;;62,66
	nop	;;62,66
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop	;;66,70
	nop	;;66,70
	nop	;;66,70
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_printInt	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L4	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L4	%0x10000)
	nop	;;72,77
	nop	;;72,77
	nop	;;72,77
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 3 NOPs removed by reduceNOPs.sh
	lw	%GPR3,-4(%GPR30)	
	lhi	%GPR1,$( _resultSwap	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _resultSwap	%0x10000)
	nop	;;80,82
	nop	;;80,82
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop	;;82,86
	nop	;;82,86
	nop	;;82,86
				; Automatically 1 NOPs removed by reduceNOPs.sh
	mult	%GPR2,%GPR3,%GPR2	
	nop	;;86,90
	nop	;;86,90
	nop	;;86,90
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop	;;90,94
	nop	;;90,94
	nop	;;90,94
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_printInt	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L5	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L5	%0x10000)
	nop	;;96,101
	nop	;;96,101
	nop	;;96,101
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 3 NOPs removed by reduceNOPs.sh
	lw	%GPR3,-4(%GPR30)	
	lhi	%GPR1,$( _resultMax	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _resultMax	%0x10000)
	nop	;;104,106
	nop	;;104,106
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop	;;106,110
	nop	;;106,110
	nop	;;106,110
				; Automatically 1 NOPs removed by reduceNOPs.sh
	mult	%GPR2,%GPR3,%GPR2	
	nop	;;110,114
	nop	;;110,114
	nop	;;110,114
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop	;;114,118
	nop	;;114,118
	nop	;;114,118
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_printInt	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L6	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L6	%0x10000)
	nop	;;120,125
	nop	;;120,125
	nop	;;120,125
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 3 NOPs removed by reduceNOPs.sh
	lw	%GPR3,-4(%GPR30)	
	lhi	%GPR1,$( _resultMin	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _resultMin	%0x10000)
	nop	;;128,130
	nop	;;128,130
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop	;;130,134
	nop	;;130,134
	nop	;;130,134
				; Automatically 1 NOPs removed by reduceNOPs.sh
	mult	%GPR2,%GPR3,%GPR2	
	nop	;;134,138
	nop	;;134,138
	nop	;;134,138
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop	;;138,142
	nop	;;138,142
	nop	;;138,142
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_printInt	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L7	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L7	%0x10000)
	nop	;;144,149
	nop	;;144,149
	nop	;;144,149
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 3 NOPs removed by reduceNOPs.sh
	lw	%GPR3,-4(%GPR30)	
	lhi	%GPR1,$( _resultRor	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _resultRor	%0x10000)
	nop	;;152,154
	nop	;;152,154
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop	;;154,158
	nop	;;154,158
	nop	;;154,158
				; Automatically 1 NOPs removed by reduceNOPs.sh
	mult	%GPR2,%GPR3,%GPR2	
	nop	;;158,162
	nop	;;158,162
	nop	;;158,162
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop	;;162,166
	nop	;;162,166
	nop	;;162,166
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_printInt	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L8	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L8	%0x10000)
	nop	;;168,173
	nop	;;168,173
	nop	;;168,173
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-4(%GPR30)	
	nop	;;174,178
	nop	;;174,178
	nop	;;174,178
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop	;;178,182
	nop	;;178,182
	nop	;;178,182
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	
	sw	-4(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$20	
	nop	;;184,188
	nop	;;184,188
	nop	;;184,188
				; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR2,%GPR1	
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
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L14	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L14:
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
