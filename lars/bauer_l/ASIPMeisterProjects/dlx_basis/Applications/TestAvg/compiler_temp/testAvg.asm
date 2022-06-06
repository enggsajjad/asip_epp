	.section	.data
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

testAvg:
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
	; Automatically 8 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop	;;4,7
	nop	;;4,7
	nop	;;4,7
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$2	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
	; Automatically 1 NOPs removed by reduceNOPs.sh
	div	%GPR28,%GPR1,%GPR2	
	nop	;;11,15
	nop	;;11,15
	nop	;;11,15
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
