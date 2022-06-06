	.section	.data
	;.global	_resultMax
	.align	4
_resultMax:
	.space	4
	;.global	_resultMin
	.align	4
_resultMin:
	.space	4
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
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$2	
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$5	



	nop
	nop
	nop
	minMax	%GPR1, %GPR27, %GPR1, %GPR2
	nop
	nop
	nop




	add	%GPR2, %GPR0, %GPR27
	nop
	nop
	nop

	lhi	%GPR3,$( _resultMax	/0x10000)
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$( _resultMax	%0x10000)
	lhi	%GPR4,$( _resultMin	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( _resultMin	%0x10000)
	nop	;;11,14
	nop	;;11,14
	nop	;;11,14
	sw	0(%GPR3),%GPR1	
	nop	;;14,18
	nop	;;14,18
	nop	;;14,18
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4),%GPR2	
	j	L2	
	nop
	nop
	nop
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
	; Automatically 2 NOPs removed by reduceNOPs.sh
exit:
	nop
	nop
