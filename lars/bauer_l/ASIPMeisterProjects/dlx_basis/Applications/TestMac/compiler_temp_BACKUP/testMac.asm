	.section	.data
	.align	4
_a:
	.space	4
	.align	4
_b:
	.space	4
	.align	4
_c:
	.space	4
	.section	.text
	.addressing	Word
_start:
	xor	%GPR30, %GPR30, %GPR30
	xor	%GPR29, %GPR29, %GPR29
	xor	%GPR28, %GPR28, %GPR28
	nop
	addui	%GPR30, %GPR30, $3
	addui	%GPR29, %GPR29, $3
	nop
	nop
	slli	%GPR30, %GPR30, $12
	slli	%GPR29, %GPR29, $12
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
	lhi	%GPR2,$( _b	/0x10000)
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$( _b	%0x10000)
	nop	;;5,7
	nop	;;5,7
	lhi	%GPR3,$( _c	/0x10000)
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$( _c	%0x10000)
	lhi	%GPR5,$( _a	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _a	%0x10000)
	lhi	%GPR4,$( _b	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( _b	%0x10000)
	lhi	%GPR6,$( _c	/0x10000)
	nop
	nop
	nop
	ori	%GPR6,%GPR6,$( _c	%0x10000)
	lhi	%GPR7,$( _c	/0x10000)
	nop
	nop
	nop
	ori	%GPR7,%GPR7,$( _c	%0x10000)
	lhi	%GPR8,$( _c	/0x10000)
	nop
	nop
	nop
	ori	%GPR8,%GPR8,$( _c	%0x10000)
	nop	;;12,37
	nop	;;12,37
	nop	;;12,37
	; Automatically 22 NOPs removed by reduceNOPs.sh
	lhi	%GPR9,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$3	
	nop	;;37,39
	nop	;;37,39
	lhi	%GPR10,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$5	
	nop	;;39,41
	nop	;;39,41
	sw	0(%GPR1),%GPR9	
	lhi	%GPR11,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR11,%GPR11,$7	
	nop	;;42,45
	nop	;;42,45
	nop	;;42,45
	sw	0(%GPR2),%GPR10	
	nop	;;45,49
	nop	;;45,49
	nop	;;45,49
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR11	
	nop	;;49,53
	nop	;;49,53
	nop	;;49,53
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR5)	
	lw	%GPR2,0(%GPR4)	
	lw	%GPR3,0(%GPR6)	
	nop	;;55,58
	nop	;;55,58
	nop	;;55,58
	mult	%GPR1,%GPR1,%GPR2	
	nop	;;58,94
	nop	;;58,94
	nop	;;58,94
	; Automatically 33 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR3,%GPR1	
	nop	;;94,98
	nop	;;94,98
	nop	;;94,98
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR7),%GPR1	
	nop	;;98,102
	nop	;;98,102
	nop	;;98,102
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR28,0(%GPR8)	
	nop	;;102,106
	nop	;;102,106
	nop	;;102,106
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
