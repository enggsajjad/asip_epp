	.section	.data
	;.global	_a
	.align	4
_a:
	.space	4
	;.global	_b
	.align	4
_b:
	.space	4
	;.global	_c
	.align	4
_c:
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
	; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( _a	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _a	%0x10000)
	nop	;;3,5
	nop	;;3,5
	lhi	%GPR3,$( _b	/0x10000)
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$( _b	%0x10000)
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$3	
	nop	;;6,8
	nop	;;6,8
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$5	
	lhi	%GPR5,$( _c	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _c	%0x10000)
	sw	0(%GPR1),%GPR2	
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$7	
	lhi	%GPR2,$( _b	/0x10000)
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$( _b	%0x10000)
	lhi	%GPR6,$( _a	/0x10000)
	nop
	nop
	nop
	ori	%GPR6,%GPR6,$( _a	%0x10000)
	sw	0(%GPR3),%GPR4	
	lhi	%GPR3,$( _c	/0x10000)
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$( _c	%0x10000)
	lhi	%GPR4,$( _c	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( _c	%0x10000)
	lhi	%GPR7,$( _c	/0x10000)
	nop
	nop
	nop
	ori	%GPR7,%GPR7,$( _c	%0x10000)
	sw	0(%GPR5),%GPR1	
	nop	;;18,22
	nop	;;18,22
	nop	;;18,22
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR3)	
	lw	%GPR2,0(%GPR2)	
	lw	%GPR3,0(%GPR6)	
	nop	;;24,28
	nop	;;24,28
	nop	;;24,28
	; Automatically 1 NOPs removed by reduceNOPs.sh
	mac	%GPR1,%GPR3,%GPR2	
	nop	;;28,32
	nop	;;28,32
	nop	;;28,32
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4),%GPR1	
	nop	;;32,36
	nop	;;32,36
	nop	;;32,36
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR28,0(%GPR7)	
	nop	;;36,40
	nop	;;36,40
	nop	;;36,40
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
