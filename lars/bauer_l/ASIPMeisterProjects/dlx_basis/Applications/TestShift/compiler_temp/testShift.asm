	.section	.data
	;.global	_intVar
	.align	4
_intVar:
	.data.32	-16777216
	;.global	_uintVar
	.align	4
_uintVar:
	.data.32	4278190080
	;.global	_intResult
	.align	4
_intResult:
	.space	4
	;.global	_uintResult
	.align	4
_uintResult:
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
	lhi	%GPR30, $(0xFFFFC/0x10000)
	lhi	%GPR29, $(0xFFFFC/0x10000)
	nop
	nop
	ori	%GPR30, %GPR30, $(0xFFFFC%0x10000)
	ori	%GPR29, %GPR29, $(0xFFFFC%0x10000)
	nop
	nop
	nop
	sw	-4(%GPR29), %GPR30
	sw	-8(%GPR29), %GPR31
	addi	%GPR29, %GPR30, $-8
	nop
	nop
	nop
	jal	main	
	nop
	nop
	nop
	; Automatically 2 NOPs removed by reduceNOPs.sh
	sw	0(%GPR29), %GPR1
	jal	exit
	nop
	nop

dummyCall:
L1:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 7 NOPs removed by reduceNOPs.sh
L2:
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
	; Automatically 1 NOPs removed by reduceNOPs.sh
main:
L3:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( _intVar	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _intVar	%0x10000)
	lhi	%GPR2,$( _intResult	/0x10000)
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$( _intResult	%0x10000)
	lhi	%GPR3,$( _intVar	/0x10000)
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$( _intVar	%0x10000)
	nop	;;4,6
	nop	;;4,6
	lw	%GPR1,0(%GPR1)	
	lhi	%GPR4,$( _uintResult	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( _uintResult	%0x10000)
	nop	;;7,10
	nop	;;7,10
	nop	;;7,10
	srai	%GPR1,%GPR1,$24	
	nop	;;10,14
	nop	;;10,14
	nop	;;10,14
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2),%GPR1	
	nop	;;14,18
	nop	;;14,18
	nop	;;14,18
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,0(%GPR3)	
	nop	;;18,22
	nop	;;18,22
	nop	;;18,22
	; Automatically 1 NOPs removed by reduceNOPs.sh
	srai	%GPR1,%GPR1,$24	
	nop	;;22,26
	nop	;;22,26
	nop	;;22,26
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4),%GPR1	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	dummyCall	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( _uintVar	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _uintVar	%0x10000)
	lhi	%GPR2,$( _intResult	/0x10000)
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$( _intResult	%0x10000)
	lhi	%GPR3,$( _uintVar	/0x10000)
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$( _uintVar	%0x10000)
	nop	;;30,32
	nop	;;30,32
	lw	%GPR1,0(%GPR1)	
	lhi	%GPR4,$( _uintResult	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( _uintResult	%0x10000)
	nop	;;33,35
	nop	;;33,35
	lhi	%GPR28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	srli	%GPR1,%GPR1,$24	
	nop	;;36,40
	nop	;;36,40
	nop	;;36,40
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2),%GPR1	
	nop	;;40,44
	nop	;;40,44
	nop	;;40,44
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,0(%GPR3)	
	nop	;;44,48
	nop	;;44,48
	nop	;;44,48
	; Automatically 1 NOPs removed by reduceNOPs.sh
	srli	%GPR1,%GPR1,$24	
	nop	;;48,52
	nop	;;48,52
	nop	;;48,52
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4),%GPR1	
	j	L4	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L4:
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
