	.section	.data
	;.global	_input1
	.align	4
_input1:
	.space	4
	.data.32	42
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
	.data.32	436
	.data.32	623
	.data.32	346
	.data.32	784
	.data.32	875
	.data.32	2346
	.data.32	2341
	.data.32	7
	.data.32	857
	.data.32	2
	.data.32	3246
	.data.32	786
	.data.32	97
	.data.32	234
	.data.32	78
	.data.32	96
	.data.32	5
	.data.32	1235
	.data.32	523
	.data.32	7635
	.data.32	76
	.data.32	89
	.data.32	7635
	.data.32	1346
	.data.32	76
	.data.32	87
	.data.32	976
	.data.32	37
	.data.32	31246
	.data.32	865
	.space	4
	;.global	_input2
	.align	4
_input2:
	.data.32	-1
	.data.32	42
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
	.data.32	2345
	.data.32	7645
	.data.32	756
	.data.32	4236
	.data.32	1235
	.data.32	64
	.data.32	3745
	.data.32	847
	.data.32	246
	.data.32	13465
	.data.32	573
	.data.32	86
	.data.32	975
	.data.32	3147
	.data.32	6583
	.data.32	2346
	.data.32	6835
	.data.32	856
	.data.32	342
	.data.32	134
	.data.32	8653
	.data.32	3416
	.data.32	856
	.data.32	974
	.data.32	745
	.data.32	123
	.data.32	368
	.data.32	3146
	.data.32	5683
	.data.32	569
	;.global	_resultHamming
	.align	4
_resultHamming:
	.space	200
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
hammingDistance:
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
	; Automatically 9 NOPs removed by reduceNOPs.sh
	xor	%GPR2,%GPR1,%GPR2	
	nop	;;5,7
	nop	;;5,7
	lhi	%GPR28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
L2:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$32	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR1,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L3	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L6	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L3:
	andi	%GPR3,%GPR2,$1	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR3,%GPR4	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L4	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L5	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L4:
	addi	%GPR28,%GPR28,$1	
	nop
	nop
	nop
L5:
	srli	%GPR2,%GPR2,$1	
	addi	%GPR1,%GPR1,$1	
	j	L2	
	nop
	nop
	nop
L6:
	j	L7	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L7:
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
L8:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$16	
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
L9:
	nop	;;0,2
	nop	;;0,2
	lw	%GPR6,-4(%GPR30)	
	nop	;;2,4
	nop	;;2,4
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
	add	%GPR7,%GPR6,%GPR0	
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	mult	%GPR2,%GPR6,%GPR2	
	mult	%GPR3,%GPR6,%GPR3	
	lhi	%GPR1,$( _input2	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _input2	%0x10000)
	mult	%GPR5,%GPR7,%GPR5	
	lhi	%GPR4,$( _input1	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( _input1	%0x10000)
	lhi	%GPR6,$( _resultHamming	/0x10000)
	nop
	nop
	nop
	ori	%GPR6,%GPR6,$( _resultHamming	%0x10000)
	add	%GPR1,%GPR1,%GPR2	
	nop	;;14,16
	nop	;;14,16
	add	%GPR3,%GPR4,%GPR3	
	add	%GPR2,%GPR6,%GPR5	
	nop	;;17,21
	nop	;;17,21
	nop	;;17,21
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-8(%GPR30),%GPR2	
	nop	; Automatically added by findLoadStoreProblem.sh
	lw	%GPR2,0(%GPR1)	
	lw	%GPR1,0(%GPR3)	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	hammingDistance	
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
	add	%GPR2,%GPR28,%GPR0	
	nop	;;26,29
	nop	;;26,29
	nop	;;26,29
	addi	%GPR1,%GPR1,$1	
	nop	;;29,33
	nop	;;29,33
	nop	;;29,33
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR1	
	nop	; Automatically added by findLoadStoreProblem.sh
	lw	%GPR1,-8(%GPR30)	
	nop	;;34,38
	nop	;;34,38
	nop	;;34,38
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	nop	; Automatically added by findLoadStoreProblem.sh
	lw	%GPR2,-4(%GPR30)	
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$50	
	nop	;;40,44
	nop	;;40,44
	nop	;;40,44
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR2,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L9	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L10	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L10:
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
	j	L11	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L11:
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
