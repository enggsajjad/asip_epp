	.section	.data
	.align	4
_a:
	.data.32	5
	.align	4
_b:
	.data.32	7
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
	; Automatically 4 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$( _a	/0x10000)
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$( _a	%0x10000)
	lhi	%GPR1,$( _b	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _b	%0x10000)
	nop	;;3,37
	nop	;;3,37
	nop	;;3,37
	; Automatically 31 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR2)	
	lw	%GPR1,0(%GPR1)	
	nop	;;38,42
	nop	;;38,42
	nop	;;38,42
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR2,%GPR1	
	nop	;;42,46
	nop	;;42,46
	nop	;;42,46
	; Automatically 1 NOPs removed by reduceNOPs.sh
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
L2:
	nop	;;0,35
	nop	;;0,35
	nop	;;0,35
	; Automatically 32 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$1	
	j	L4	
	nop
	nop
	nop
L3:
	nop	;;0,35
	nop	;;0,35
	nop	;;0,35
	; Automatically 32 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
L4:
	j	L5	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L5:
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
