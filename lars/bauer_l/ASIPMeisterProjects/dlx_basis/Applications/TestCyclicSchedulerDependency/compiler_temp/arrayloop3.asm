	.section	.data
	;.global	_resultMax
	.align	4
_resultMax:
	.space	20
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
	nop	;;0,3
	nop	;;0,3
	nop	;;0,3
	lhi	%GPR4,$( _resultMax	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( _resultMax	%0x10000)
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$5	
	nop	;;6,8
	nop	;;6,8
	mult	%GPR6,%GPR1,%GPR2	
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$5	
	nop	;;9,12
	nop	;;9,12
	nop	;;9,12
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$7	


	nop
	nop
	nop
	minmax	%GPR2, %GPR3, %GPR3, %GPR2
	nop
	nop
	nop

	add	%GPR2,%GPR4,%GPR6	
	addi	%GPR1,%GPR1,$1	
	nop	;;15,18
	nop	;;15,18
	nop	;;15,18
	lw	%GPR2,0(%GPR2)	
	slt	%GPR27,%GPR1,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L2	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L3	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L3:
	j	L4	
	nop
	nop
	nop
	; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$( _resultMax	/0x10000)
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$( _resultMax	%0x10000)
	lw	%GPR3,-4(%GPR30)	
	nop	;;6,8
	nop	;;6,8
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	; Automatically 1 NOPs removed by reduceNOPs.sh
	mult	%GPR1,%GPR1,%GPR4	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR2,%GPR1	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR3	
L4:
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
