	.section	.data
	;.global	_result1
	.align	4
_result1:
	.space	4
	;.global	_result2
	.align	4
_result2:
	.space	4
	;.global	_value
	.align	4
_value:
	.data.32	255
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

main:
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
	; Automatically 4 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( _value	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _value	%0x10000)
	lhi	%GPR2,$( _result1	/0x10000)
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$( _result1	%0x10000)
	lhi	%GPR3,$( _result1	/0x10000)
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$( _result1	%0x10000)
	nop	;;4,6
	nop	;;4,6
	lw	%GPR1,0(%GPR1)	
	lhi	%GPR4,$( _result2	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( _result2	%0x10000)
	lhi	%GPR6,$( _result1	/0x10000)
	nop
	nop
	nop
	ori	%GPR6,%GPR6,$( _result1	%0x10000)
	nop	;;8,10
	nop	;;8,10
	slli	%GPR1,%GPR1,$24	
	lhi	%GPR5,$( _result2	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _result2	%0x10000)
	nop	;;11,14
	nop	;;11,14
	nop	;;11,14
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
	nop	;;26,30
	nop	;;26,30
	nop	;;26,30
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,0(%GPR6)	
	lw	%GPR2,0(%GPR5)	
	nop	;;31,35
	nop	;;31,35
	nop	;;31,35
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR28,%GPR1,%GPR2	
	nop	;;35,39
	nop	;;35,39
	nop	;;35,39
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
