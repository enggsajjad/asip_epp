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
L_arrayloop_1:
	.data.8	105
	.data.8	49
	.data.8	58
	.data.8	9
	.space	1
L_arrayloop_2:
	.data.8	9
	.data.8	105
	.data.8	50
	.data.8	58
	.data.8	9
	.space	1
L_arrayloop_3:
	.data.8	9
	.data.8	97
	.data.8	118
	.data.8	103
	.data.8	58
	.data.8	9
	.space	1
L_arrayloop_4:
	.data.8	9
	.data.8	115
	.data.8	119
	.data.8	97
	.data.8	112
	.data.8	58
	.data.8	9
	.space	1
L_arrayloop_5:
	.data.8	9
	.data.8	109
	.data.8	97
	.data.8	120
	.data.8	58
	.data.8	9
	.space	1
L_arrayloop_6:
	.data.8	9
	.data.8	109
	.data.8	105
	.data.8	110
	.data.8	58
	.data.8	9
	.space	1
L_arrayloop_7:
	.data.8	9
	.data.8	114
	.data.8	111
	.data.8	114
	.data.8	58
	.data.8	9
	.space	1
L_arrayloop_8:
	.data.8	13
	.data.8	10
	.space	1
	.section	.text
	.addressing	Word
main:
L_arrayloop_9:
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
				; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$( _input1	/0x10000)
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$( _input1	%0x10000)
	lhi	%GPR4,$( _input2	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( _input2	%0x10000)
	lhi	%GPR3,$( _resultAvg	/0x10000)
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$( _resultAvg	%0x10000)
	lhi	%GPR5,$( _resultMin	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _resultMin	%0x10000)
	lhi	%GPR6,$( _resultMax	/0x10000)
	nop
	nop
	nop
	ori	%GPR6,%GPR6,$( _resultMax	%0x10000)
	lhi	%GPR7,$( _resultSwap	/0x10000)
	nop
	nop
	nop
	ori	%GPR7,%GPR7,$( _resultSwap	%0x10000)
	lhi	%GPR8,$( _resultRor	/0x10000)
	nop
	nop
	nop
	ori	%GPR8,%GPR8,$( _resultRor	%0x10000)
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	;;10,13
	nop	;;10,13
	nop	;;10,13
				; Automatically 3 NOPs removed by reduceNOPs.sh
L_arrayloop_10:
	slli	%GPR10,%GPR1,$2	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR9,%GPR4,%GPR10	
	add	%GPR11,%GPR2,%GPR10	
	lhi	%GPR12,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR12,%GPR12,$0	
	nop	;;6,8
	nop	;;6,8
	lw	%GPR13,0(%GPR9)	
	lw	%GPR9,0(%GPR11)	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR11,%GPR9,%GPR13	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
				; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR11,%GPR12	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_arrayloop_11	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_arrayloop_12	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_arrayloop_11:
	addi	%GPR11,%GPR11,$1	
	nop
	nop
	nop
L_arrayloop_12:


	nop
	nop
	nop
	swap	%GPR13, %GPR9
	nop
	nop
	nop

				; Automatically 3 NOPs removed by reduceNOPs.sh
	add	%GPR9,%GPR7,%GPR0	
	add	%GPR12,%GPR3,%GPR10	
	srai	%GPR11,%GPR11,$1	
	nop	;;5,7
	nop	;;5,7
	add	%GPR10,%GPR9,%GPR10	
	slli	%GPR9,%GPR1,$2	
	sw	0(%GPR12),%GPR11	
	slli	%GPR12,%GPR1,$2	
	nop	;;10,12
	nop	;;10,12
	add	%GPR14,%GPR2,%GPR9	
	sw	0(%GPR10),%GPR13	
	add	%GPR9,%GPR4,%GPR9	
	add	%GPR11,%GPR5,%GPR12	
	add	%GPR13,%GPR6,%GPR12	
	lw	%GPR10,0(%GPR14)	
	lw	%GPR9,0(%GPR9)	
	sw	0(%GPR11),%GPR1	


	nop
	nop
	nop
	minMax	%GPR9, %GPR10, %GPR10, %GPR9
	nop
	nop
	nop

	add	%GPR15,%GPR8,%GPR0	
	add	%GPR14,%GPR2,%GPR12	
	sw	0(%GPR11),%GPR9	
	nop	;;23,25
	nop	;;23,25
	addi	%GPR1,%GPR1,$1	
	add	%GPR12,%GPR15,%GPR12	
	sw	0(%GPR13),%GPR10	
	lhi	%GPR9,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$20	
	lhi	%GPR11,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR11,%GPR11,$4	
	sw	-4(%GPR30),%GPR7	
	lw	%GPR10,0(%GPR14)	


	nop
	nop
	nop
	rot	%GPR10, %GPR10, $4
	nop
	nop
	nop

	sw	-8(%GPR30),%GPR8	
	sw	0(%GPR12),%GPR10	
	slt	%GPR27,%GPR1,%GPR9	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_arrayloop_10	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_arrayloop_13	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_arrayloop_13:
	lhi	%GPR1,$( L_arrayloop_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_arrayloop_1	%0x10000)
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-12(%GPR30),%GPR1	
	lhi	%GPR1,$( _input1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _input1	%0x10000)
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR1	
	lhi	%GPR1,$( L_arrayloop_2	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_arrayloop_2	%0x10000)
	nop	;;10,14
	nop	;;10,14
	nop	;;10,14
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-20(%GPR30),%GPR1	
	lhi	%GPR1,$( _input2	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _input2	%0x10000)
	nop	;;15,19
	nop	;;15,19
	nop	;;15,19
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-24(%GPR30),%GPR1	
	lhi	%GPR1,$( L_arrayloop_3	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_arrayloop_3	%0x10000)
	nop	;;20,24
	nop	;;20,24
	nop	;;20,24
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-28(%GPR30),%GPR1	
	lhi	%GPR1,$( _resultAvg	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _resultAvg	%0x10000)
	nop	;;25,29
	nop	;;25,29
	nop	;;25,29
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-32(%GPR30),%GPR1	
	lhi	%GPR1,$( L_arrayloop_4	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_arrayloop_4	%0x10000)
	nop	;;30,34
	nop	;;30,34
	nop	;;30,34
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-36(%GPR30),%GPR1	
	lhi	%GPR1,$( L_arrayloop_5	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_arrayloop_5	%0x10000)
	nop	;;35,39
	nop	;;35,39
	nop	;;35,39
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-40(%GPR30),%GPR1	
	lhi	%GPR1,$( _resultMax	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _resultMax	%0x10000)
	nop	;;40,44
	nop	;;40,44
	nop	;;40,44
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-44(%GPR30),%GPR1	
	lhi	%GPR1,$( L_arrayloop_6	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_arrayloop_6	%0x10000)
	nop	;;45,49
	nop	;;45,49
	nop	;;45,49
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-48(%GPR30),%GPR1	
	lhi	%GPR1,$( _resultMin	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _resultMin	%0x10000)
	nop	;;50,54
	nop	;;50,54
	nop	;;50,54
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-52(%GPR30),%GPR1	
	lhi	%GPR1,$( L_arrayloop_7	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_arrayloop_7	%0x10000)
	nop	;;55,59
	nop	;;55,59
	nop	;;55,59
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-56(%GPR30),%GPR1	
	lhi	%GPR1,$( L_arrayloop_8	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_arrayloop_8	%0x10000)
	nop	;;60,64
	nop	;;60,64
	nop	;;60,64
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-60(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	;;65,69
	nop	;;65,69
	nop	;;65,69
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-64(%GPR30),%GPR1	
	nop
	nop
	nop
L_arrayloop_14:
	lw	%GPR1,-12(%GPR30)	
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
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-64(%GPR30)	
	lw	%GPR2,-16(%GPR30)	
	nop	;;7,10
	nop	;;7,10
	nop	;;7,10
	slli	%GPR1,%GPR1,$2	
	nop	;;10,14
	nop	;;10,14
	nop	;;10,14
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR2,%GPR1	
	nop	;;14,18
	nop	;;14,18
	nop	;;14,18
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
	lw	%GPR1,-20(%GPR30)	
	nop	;;20,25
	nop	;;20,25
	nop	;;20,25
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
	lw	%GPR1,-64(%GPR30)	
	lw	%GPR2,-24(%GPR30)	
	nop	;;27,30
	nop	;;27,30
	nop	;;27,30
	slli	%GPR1,%GPR1,$2	
	nop	;;30,34
	nop	;;30,34
	nop	;;30,34
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR2,%GPR1	
	nop	;;34,38
	nop	;;34,38
	nop	;;34,38
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
	lw	%GPR1,-28(%GPR30)	
	nop	;;40,45
	nop	;;40,45
	nop	;;40,45
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
	lw	%GPR1,-64(%GPR30)	
	lw	%GPR2,-32(%GPR30)	
	nop	;;47,50
	nop	;;47,50
	nop	;;47,50
	slli	%GPR1,%GPR1,$2	
	nop	;;50,54
	nop	;;50,54
	nop	;;50,54
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR2,%GPR1	
	nop	;;54,58
	nop	;;54,58
	nop	;;54,58
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
	lw	%GPR1,-36(%GPR30)	
	nop	;;60,65
	nop	;;60,65
	nop	;;60,65
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
	lw	%GPR1,-64(%GPR30)	
	lw	%GPR2,-4(%GPR30)	
	nop	;;67,70
	nop	;;67,70
	nop	;;67,70
	slli	%GPR1,%GPR1,$2	
	nop	;;70,74
	nop	;;70,74
	nop	;;70,74
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR2,%GPR1	
	nop	;;74,78
	nop	;;74,78
	nop	;;74,78
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
	lw	%GPR1,-40(%GPR30)	
	nop	;;80,85
	nop	;;80,85
	nop	;;80,85
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
	lw	%GPR1,-64(%GPR30)	
	lw	%GPR2,-44(%GPR30)	
	nop	;;87,90
	nop	;;87,90
	nop	;;87,90
	slli	%GPR1,%GPR1,$2	
	nop	;;90,94
	nop	;;90,94
	nop	;;90,94
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR2,%GPR1	
	nop	;;94,98
	nop	;;94,98
	nop	;;94,98
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
	lw	%GPR1,-48(%GPR30)	
	nop	;;100,105
	nop	;;100,105
	nop	;;100,105
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
	lw	%GPR1,-64(%GPR30)	
	lw	%GPR2,-52(%GPR30)	
	nop	;;107,110
	nop	;;107,110
	nop	;;107,110
	slli	%GPR1,%GPR1,$2	
	nop	;;110,114
	nop	;;110,114
	nop	;;110,114
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR2,%GPR1	
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
	lw	%GPR1,-56(%GPR30)	
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
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-64(%GPR30)	
	lw	%GPR2,-8(%GPR30)	
	nop	;;127,130
	nop	;;127,130
	nop	;;127,130
	slli	%GPR1,%GPR1,$2	
	nop	;;130,134
	nop	;;130,134
	nop	;;130,134
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR2,%GPR1	
	nop	;;134,138
	nop	;;134,138
	nop	;;134,138
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
	lw	%GPR1,-60(%GPR30)	
	nop	;;140,145
	nop	;;140,145
	nop	;;140,145
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
	lw	%GPR1,-64(%GPR30)	
	nop	;;146,150
	nop	;;146,150
	nop	;;146,150
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop	;;150,154
	nop	;;150,154
	nop	;;150,154
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	
	sw	-64(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$20	
	nop	;;156,160
	nop	;;156,160
	nop	;;156,160
				; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR2,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_arrayloop_14	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_arrayloop_15	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_arrayloop_15:
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
	j	L_arrayloop_16	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_arrayloop_16:
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