	.section	.data
	;.global	_input1
	.align	4
_input1:
	.data.32	321
	.data.32	51
	.data.32	890
	.data.32	75
	.data.32	78
	.data.32	7
	.data.32	341
	.data.32	2342
	.data.32	568
	.data.32	789
	.data.32	7
	.data.32	3461
	.data.32	1235
	.data.32	346
	.data.32	75
	.data.32	685
	.data.32	79
	.data.32	45
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
	.data.32	236
	.data.32	5683
	.data.32	79
	.data.32	86
	.data.32	643
	.data.32	5231
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
	;.global	_resultFex
	.align	4
_resultFex:
	.space	80
	;.global	_resultMax
	.align	4
_resultMax:
	.space	80
	;.global	_resultMin
	.align	4
_resultMin:
	.space	80
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
main:
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
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$65280	
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
	nop	;;0,2
	nop	;;0,2
	lhi	%GPR3,$( _input1	/0x10000)
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$( _input1	%0x10000)
	lhi	%GPR6,$( _input2	/0x10000)
	nop
	nop
	nop
	ori	%GPR6,%GPR6,$( _input2	%0x10000)
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	mult	%GPR4,%GPR1,%GPR4	
	mult	%GPR5,%GPR1,%GPR5	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$4	
	lhi	%GPR8,$( _resultAvg	/0x10000)
	nop
	nop
	nop
	ori	%GPR8,%GPR8,$( _resultAvg	%0x10000)
	add	%GPR3,%GPR3,%GPR4	
	add	%GPR4,%GPR6,%GPR5	
	mult	%GPR6,%GPR1,%GPR7	
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	lw	%GPR3,0(%GPR3)	
	lw	%GPR4,0(%GPR4)	
	add	%GPR6,%GPR8,%GPR6	
	lhi	%GPR7,$( _input1	/0x10000)
	nop
	nop
	nop
	ori	%GPR7,%GPR7,$( _input1	%0x10000)
	mult	%GPR5,%GPR1,%GPR5	
	avg	%GPR3,%GPR3,%GPR4	
	nop	;;21,25
	nop	;;21,25
	nop	;;21,25
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR6),%GPR3	
	add	%GPR3,%GPR7,%GPR5	
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$4	
	lhi	%GPR5,$( _resultFex	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _resultFex	%0x10000)
	lw	%GPR3,0(%GPR3)	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$4	
	mult	%GPR4,%GPR1,%GPR4	
	mult	%GPR6,%GPR1,%GPR6	
	lhi	%GPR8,$( _input1	/0x10000)
	nop
	nop
	nop
	ori	%GPR8,%GPR8,$( _input1	%0x10000)
	fex	%GPR3,%GPR3,%GPR2,$8	
	add	%GPR4,%GPR5,%GPR4	
	lhi	%GPR9,$( _input2	/0x10000)
	nop
	nop
	nop
	ori	%GPR9,%GPR9,$( _input2	%0x10000)
	mult	%GPR7,%GPR1,%GPR7	
	add	%GPR5,%GPR8,%GPR6	
	sw	0(%GPR4),%GPR3	
	nop	;;40,42
	nop	;;40,42
	add	%GPR6,%GPR9,%GPR7	
	nop	;;42,44
	nop	;;42,44
	lw	%GPR3,0(%GPR5)	
	nop	;;44,46
	nop	;;44,46
	lw	%GPR4,0(%GPR6)	
	nop	;;46,50
	nop	;;46,50
	nop	;;46,50
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sgt	%GPR27,%GPR3,%GPR4	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L3	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L4	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L3:
	nop	;;0,2
	nop	;;0,2
	lhi	%GPR3,$( _input1	/0x10000)
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$( _input1	%0x10000)
	lhi	%GPR4,$( _resultMax	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( _resultMax	%0x10000)
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
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	mult	%GPR5,%GPR1,%GPR5	
	mult	%GPR6,%GPR1,%GPR6	
	nop	;;9,12
	nop	;;9,12
	nop	;;9,12
	add	%GPR3,%GPR3,%GPR5	
	add	%GPR4,%GPR4,%GPR6	
	nop	;;13,16
	nop	;;13,16
	nop	;;13,16
	lw	%GPR3,0(%GPR3)	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4),%GPR3	
	j	L5	
	nop
	nop
	nop
L4:
	nop	;;0,2
	nop	;;0,2
	lhi	%GPR3,$( _input2	/0x10000)
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$( _input2	%0x10000)
	lhi	%GPR4,$( _resultMax	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( _resultMax	%0x10000)
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
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	mult	%GPR5,%GPR1,%GPR5	
	mult	%GPR6,%GPR1,%GPR6	
	nop	;;9,12
	nop	;;9,12
	nop	;;9,12
	add	%GPR3,%GPR3,%GPR5	
	add	%GPR4,%GPR4,%GPR6	
	nop	;;13,16
	nop	;;13,16
	nop	;;13,16
	lw	%GPR3,0(%GPR3)	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4),%GPR3	
	nop
	nop
	nop
L5:
	nop	;;0,2
	nop	;;0,2
	lhi	%GPR3,$( _input1	/0x10000)
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$( _input1	%0x10000)
	lhi	%GPR4,$( _input2	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( _input2	%0x10000)
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
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	mult	%GPR5,%GPR1,%GPR5	
	mult	%GPR6,%GPR1,%GPR6	
	nop	;;9,12
	nop	;;9,12
	nop	;;9,12
	add	%GPR3,%GPR3,%GPR5	
	add	%GPR4,%GPR4,%GPR6	
	nop	;;13,16
	nop	;;13,16
	nop	;;13,16
	lw	%GPR3,0(%GPR3)	
	lw	%GPR4,0(%GPR4)	
	nop	;;17,21
	nop	;;17,21
	nop	;;17,21
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR3,%GPR4	
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
L6:
	nop	;;0,2
	nop	;;0,2
	lhi	%GPR3,$( _input1	/0x10000)
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$( _input1	%0x10000)
	lhi	%GPR4,$( _resultMin	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( _resultMin	%0x10000)
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
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	mult	%GPR5,%GPR1,%GPR5	
	mult	%GPR6,%GPR1,%GPR6	
	nop	;;9,12
	nop	;;9,12
	nop	;;9,12
	add	%GPR3,%GPR3,%GPR5	
	add	%GPR4,%GPR4,%GPR6	
	nop	;;13,16
	nop	;;13,16
	nop	;;13,16
	lw	%GPR3,0(%GPR3)	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4),%GPR3	
	j	L8	
	nop
	nop
	nop
L7:
	nop	;;0,2
	nop	;;0,2
	lhi	%GPR3,$( _input2	/0x10000)
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$( _input2	%0x10000)
	lhi	%GPR4,$( _resultMin	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( _resultMin	%0x10000)
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
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	mult	%GPR5,%GPR1,%GPR5	
	mult	%GPR6,%GPR1,%GPR6	
	nop	;;9,12
	nop	;;9,12
	nop	;;9,12
	add	%GPR3,%GPR3,%GPR5	
	add	%GPR4,%GPR4,%GPR6	
	nop	;;13,16
	nop	;;13,16
	nop	;;13,16
	lw	%GPR3,0(%GPR3)	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4),%GPR3	
	nop
	nop
	nop
L8:
	addi	%GPR1,%GPR1,$1	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$20	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR1,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L2	
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
	j	L10	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L10:
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
