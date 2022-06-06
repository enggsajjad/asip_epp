	.section	.data
L1:
	.data.8	13
	.data.8	10
	.space	1
L2:
	.data.8	67
	.data.8	111
	.data.8	117
	.data.8	110
	.data.8	116
	.data.8	101
	.data.8	114
	.data.8	58
	.data.8	32
	.space	1
L3:
	.data.8	32
	.data.8	32
	.data.8	32
	.data.8	32
	.data.8	32
	.data.8	32
	.data.8	32
	.data.8	32
	.data.8	32
	.data.8	32
	.data.8	13
	.data.8	10
	.space	1
	.section	.text
	.addressing	Word
main:
L4:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	nop
	subi	%GPR29,%GPR29,$12	
	nop
	nop
	nop
	nop
				; Automatically 45 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L1	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L1	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	u_print	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 35 NOPs removed by reduceNOPs.sh
L5:
	nop
	nop
	nop
	nop
	lhi	%GPR1,$( L2	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L2	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 45 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	u_print	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-4(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	u_printInt	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L3	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L3	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 45 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	u_print	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-4(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	j	L5	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
L6:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	jr	%GPR31	
	nop
	nop
	nop
	nop
