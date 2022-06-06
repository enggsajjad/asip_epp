	.section	.data
	;.global	_errorNumber
	.align	4
_errorNumber:
	.data.32	42
	;.global	_heapEnd
	.align	4
_heapEnd:
	.space	4
	.section	.text
	.addressing	Word
	.section	.text
	.addressing	Word
	;.addressing	Word

	xor	%GPR30, %GPR30, %GPR30
	xor	%GPR29, %GPR29, %GPR29
	xor	%GPR28, %GPR28, %GPR28
	nop
	lhi	%GPR30, $(0x4FC/0x10000)
	lhi	%GPR29, $(0x4FC/0x10000)
	nop
	nop
	ori	%GPR30, %GPR30, $(0x4FC%0x10000)
	ori	%GPR29, %GPR29, $(0x4FC%0x10000)
	nop
	nop
	nop
	sw	-4(%GPR29), %GPR30
	sw	-8(%GPR29), %GPR31
	addi	%GPR29, %GPR30, $-8
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	jal	main	
	nop
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
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
	lhi	%GPR1,$21499	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$1408985750	
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1280	
	nop
	nop
	nop
L2:
	nop	; Automatically Added by addNopAfterLabels.pl
	add	%GPR3,%GPR2,%GPR0	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR3,0(%GPR3)	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR3,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L5	
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
	nop	;;0,2
	nop	;;0,2
	addi	%GPR2,%GPR2,$4	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$113	
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4096	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	multu	%GPR1,%GPR1,%GPR3	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addui	%GPR1,%GPR1,$1	
	sle	%GPR27,%GPR2,%GPR4	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L2	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L4	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L4:
	nop	;;0,2
	nop	;;0,2
	lhi	%GPR1,$( _errorNumber	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _errorNumber	%0x10000)
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	lhi	%GPR28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	sw	0(%GPR1),%GPR2	
	j	L6	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L5:
	nop	;;0,2
	nop	;;0,2
	lhi	%GPR1,$( _errorNumber	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _errorNumber	%0x10000)
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	lhi	%GPR28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	sw	0(%GPR1),%GPR2	
	j	L6	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L6:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 2 NOPs removed by reduceNOPs.sh
exit:
	nop
	nop