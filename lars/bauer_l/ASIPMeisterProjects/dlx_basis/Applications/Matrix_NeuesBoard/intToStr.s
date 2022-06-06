	.section	.data
	.section	.text
	.addressing	Word
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
intToStr:
L1:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR29),%GPR31	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	subui	%GPR30,%GPR29,$4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 4 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$56	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-36(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-40(%GPR30),%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 32 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	sw	-44(%GPR30),%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-48(%GPR30),%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,-36(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR2,%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	bnez	%GPR27,L2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L2:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR1,-36(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sub	%GPR1,%GPR0,%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$45	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-36(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,-40(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-44(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-44(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	j	L5	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
L3:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR2,-36(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR2,%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	bnez	%GPR27,L4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L6	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L4:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR1,-40(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$48	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-44(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-44(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
L5:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR2,-36(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR2,%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	bnez	%GPR27,L6	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L7	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L6:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	subi	%GPR1,%GPR30,$32	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR3,-48(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$10	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR3,-36(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	MOD	%GPR2,%GPR3,%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR2,%GPR2,$48	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-48(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,-36(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-48(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$10	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	div	%GPR1,%GPR2,%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-36(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	j	L5	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
L7:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR2,-48(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sgt	%GPR27,%GPR2,%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	bnez	%GPR27,L8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L9	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L8:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR2,-48(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	subi	%GPR1,%GPR30,$32	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%GPR2,%GPR2,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	sw	-48(%GPR30),%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 32 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	loadByteUnsigned	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-40(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR3,-44(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	add	%GPR2,%GPR28,%GPR0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-44(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-44(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	j	L7	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
L9:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR1,-40(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,-44(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 36 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$42	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L10	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L10:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	addui	%GPR29,%GPR30,$4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR30,0(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	nop
	jr	%GPR31	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
