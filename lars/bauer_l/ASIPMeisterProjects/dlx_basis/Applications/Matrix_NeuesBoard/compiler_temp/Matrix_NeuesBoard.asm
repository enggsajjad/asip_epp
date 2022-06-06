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
	nop
	nop
	sw	0(%GPR29), %GPR1
	jal	exit
	nop
	nop

	;.addressing	Word
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
intToStr:
L_intToStr_1:
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
	bnez	%GPR27,L_intToStr_2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_intToStr_3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_intToStr_2:
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
	j	L_intToStr_5	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
L_intToStr_3:
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
	bnez	%GPR27,L_intToStr_4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_intToStr_6	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_intToStr_4:
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
L_intToStr_5:
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
	bnez	%GPR27,L_intToStr_6	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_intToStr_7	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_intToStr_6:
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
	j	L_intToStr_5	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
L_intToStr_7:
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
	bnez	%GPR27,L_intToStr_8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_intToStr_9	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_intToStr_8:
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
	j	L_intToStr_7	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
L_intToStr_9:
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
	j	L_intToStr_10	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_intToStr_10:
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
	nop
	jr	%GPR31	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	.section	.data
	.align	4
L_lib_lcd_1:
	.data.32	1
	.section	.text
	.addressing	Word
	;.addressing	Word
strlength:
L_lib_lcd_2:
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
	subi	%GPR29,%GPR29,$16	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 44 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR1	
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
	sw	-8(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_3:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR1,-4(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR1,%GPR0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR3,%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
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
	; Automatically 36 NOPs removed by reduceNOPs.sh
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
	sne	%GPR27,%GPR28,%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	bnez	%GPR27,L_lib_lcd_4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_5	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_4:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR1,-8(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-8(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	j	L_lib_lcd_3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_5:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR28,-8(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 32 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_6	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_6:
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
	nop
	jr	%GPR31	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
wait:
L_lib_lcd_7:
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
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 56 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_8:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	add	%GPR3,%GPR2,%GPR0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	addi	%GPR2,%GPR2,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR3,%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	bnez	%GPR27,L_lib_lcd_8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_9	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_9:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	subi	%GPR28,%GPR2,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_10	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_10:
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
	nop
	jr	%GPR31	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
getack:
L_lib_lcd_11:
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
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 56 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	putc	%GPR2
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	addi	%GPR1,%GPR1,$1	



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	putc	%GPR1
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$1	



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	putc	%GPR1
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh




	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	getc	%GPR1
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$15	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	bnez	%GPR27,L_lib_lcd_12	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_13	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_12:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_14	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_13:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_14	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_14:
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
	nop
	jr	%GPR31	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
checkbuffer:
L_lib_lcd_15:
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
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 48 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$222	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	putc	%GPR2
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh




	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	putc	%GPR4
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$18	



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	putc	%GPR2
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$18	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	putc	%GPR2
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR3,%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$73	



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	putc	%GPR2
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	add	%GPR3,%GPR3,%GPR2	



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	putc	%GPR3
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$65535	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$-1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_16:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	putc	%GPR1
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	addi	%GPR2,%GPR4,$1	



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	putc	%GPR2
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$6	



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	putc	%GPR1
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh




	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	getc	%GPR2
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh




	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	getc	%GPR2
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh




	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	getc	%GPR1
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	add	%GPR3,%GPR2,%GPR1	



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	getc	%GPR1
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	add	%GPR3,%GPR3,%GPR1	



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	getc	%GPR2
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	add	%GPR3,%GPR3,%GPR2	



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	getc	%GPR2
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR5,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$256	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	MOD	%GPR3,%GPR3,%GPR5	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR3,%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	bnez	%GPR27,L_lib_lcd_17	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_18	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_17:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	putc	%GPR2
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh




	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	putc	%GPR4
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$18	



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	putc	%GPR2
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$18	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	putc	%GPR2
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR3,%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$82	



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	putc	%GPR2
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	add	%GPR3,%GPR3,%GPR2	



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	putc	%GPR3
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_18:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$65535	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$-1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR3,%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	bnez	%GPR27,L_lib_lcd_16	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_19	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_19:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	add	%GPR28,%GPR1,%GPR0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_20	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_20:
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
	nop
	jr	%GPR31	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
getbytes:
L_lib_lcd_21:
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
	subi	%GPR29,%GPR29,$32	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-8(%GPR30),%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 32 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-12(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$222	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
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
	sw	-20(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,-12(%GPR30)	



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	putc	%GPR1
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR1,-16(%GPR30)	



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	putc	%GPR1
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$18	



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	putc	%GPR1
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-12(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$18	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-24(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,-12(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	putc	%GPR1
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR1,-24(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-24(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$83	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	putc	%GPR1
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR1,-24(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	putc	%GPR1
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$65535	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$-1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_22:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	putc	%GPR1
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR1,-16(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	putc	%GPR1
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR1,-8(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$4	



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	putc	%GPR1
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh




	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	getc	%GPR1
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh




	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	getc	%GPR1
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	add	%GPR2,%GPR1,%GPR0	



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	getc	%GPR1
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	add	%GPR1,%GPR2,%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-24(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_23:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR1,-20(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,-8(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR1,%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	bnez	%GPR27,L_lib_lcd_24	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_25	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_24:



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	getc	%GPR1
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	sw	-12(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,-20(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,-4(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR2,-12(%GPR30)	
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
	lw	%GPR1,-24(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,-12(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-24(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,-20(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-20(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	j	L_lib_lcd_23	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_25:



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	getc	%GPR1
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR2,-24(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	andi	%GPR2,%GPR2,$255	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-24(%GPR30),%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	sne	%GPR27,%GPR2,%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	bnez	%GPR27,L_lib_lcd_26	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_27	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_26:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	putc	%GPR1
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR1,-16(%GPR30)	



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	putc	%GPR1
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$18	



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	putc	%GPR1
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-12(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$18	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-24(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,-12(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	putc	%GPR1
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR1,-24(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-24(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$82	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	putc	%GPR1
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR1,-24(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-24(%GPR30),%GPR1	



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	putc	%GPR1
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_27:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR2,-24(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$65535	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$-1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR2,%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	bnez	%GPR27,L_lib_lcd_22	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_28	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_28:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR28,-20(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_29	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_29:
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
	nop
	jr	%GPR31	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
sendcommand:
L_lib_lcd_30:
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
	subi	%GPR29,%GPR29,$48	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-8(%GPR30),%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-12(%GPR30),%GPR5	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-16(%GPR30),%GPR6	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	add	%GPR1,%GPR7,%GPR0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	slli	%GPR1,%GPR1,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	sw	-20(%GPR30),%GPR3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-24(%GPR30),%GPR4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-28(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-32(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_31:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR2,-16(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,-12(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR2,%GPR0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	sw	-36(%GPR30),%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,-12(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR2,%GPR3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR3,-32(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR2,%GPR3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR2,%GPR2,$3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 17 NOPs removed by reduceNOPs.sh



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	putc	%GPR2
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR2,-28(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 17 NOPs removed by reduceNOPs.sh



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	putc	%GPR2
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$17	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 17 NOPs removed by reduceNOPs.sh



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	putc	%GPR2
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR3,-16(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,-12(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR2,%GPR3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR3,-32(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$17	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR2,%GPR3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR2,%GPR0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 17 NOPs removed by reduceNOPs.sh



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	putc	%GPR3
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	add	%GPR3,%GPR4,%GPR0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR3,%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-40(%GPR30),%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$27	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR2,%GPR0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 17 NOPs removed by reduceNOPs.sh



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	putc	%GPR3
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR3,-40(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR3,%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-40(%GPR30),%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,-4(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 32 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR2,%GPR0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 17 NOPs removed by reduceNOPs.sh



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	putc	%GPR3
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR3,-40(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR3,%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-40(%GPR30),%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,-8(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 32 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR2,%GPR0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 17 NOPs removed by reduceNOPs.sh



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	putc	%GPR3
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR3,-40(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR3,%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-40(%GPR30),%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_32:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	add	%GPR2,%GPR1,%GPR0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	subi	%GPR1,%GPR1,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR2,%GPR3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	bnez	%GPR27,L_lib_lcd_33	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_34	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_33:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR2,-20(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR5,%GPR2,%GPR0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR2,0(%GPR2)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%GPR4,%GPR5,%GPR4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	add	%GPR3,%GPR2,%GPR0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-20(%GPR30),%GPR4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 5 NOPs removed by reduceNOPs.sh



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	putc	%GPR3
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR3,-40(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR3,%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-40(%GPR30),%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	j	L_lib_lcd_32	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_34:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR2,-36(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR2,%GPR0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR1,%GPR1,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-36(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
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
	bnez	%GPR27,L_lib_lcd_35	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_36	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_35:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR1,-24(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR1,%GPR0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR3,%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-24(%GPR30),%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
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
	add	%GPR2,%GPR28,%GPR0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR2,%GPR0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 17 NOPs removed by reduceNOPs.sh



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	putc	%GPR1
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR1,-40(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-40(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	j	L_lib_lcd_34	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_36:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR2,-40(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 17 NOPs removed by reduceNOPs.sh



	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	putc	%GPR2
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR1,-28(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	getack	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 36 NOPs removed by reduceNOPs.sh
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
	sne	%GPR27,%GPR28,%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	bnez	%GPR27,L_lib_lcd_31	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_37	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_37:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_38	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_38:
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
	nop
	jr	%GPR31	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
t_print:
L_lib_lcd_39:
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
	subi	%GPR29,%GPR29,$12	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 28 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	strlength	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 40 NOPs removed by reduceNOPs.sh
	lw	%GPR4,-4(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	add	%GPR6,%GPR28,%GPR0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR7,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR5,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$84	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$90	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR3,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
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
	ori	%GPR28,%GPR28,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_40	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_40:
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
	nop
	jr	%GPR31	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
t_cursor:
L_lib_lcd_41:
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
	subi	%GPR29,%GPR29,$12	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 40 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR7,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR5,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$67	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$84	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
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
	ori	%GPR28,%GPR28,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_42	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_42:
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
	nop
	jr	%GPR31	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
t_enable:
L_lib_lcd_43:
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
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 56 NOPs removed by reduceNOPs.sh
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
	sne	%GPR27,%GPR1,%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	bnez	%GPR27,L_lib_lcd_44	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_45	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_44:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 28 NOPs removed by reduceNOPs.sh
	lhi	%GPR7,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR5,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$69	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$84	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR3,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_46	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_45:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 28 NOPs removed by reduceNOPs.sh
	lhi	%GPR7,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR5,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$65	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$84	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR3,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 28 NOPs removed by reduceNOPs.sh
L_lib_lcd_46:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_47	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_47:
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
	nop
	jr	%GPR31	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
g_print:
L_lib_lcd_48:
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
	subi	%GPR29,%GPR29,$20	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-12(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 20 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	-8(%GPR30),%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	subi	%GPR1,%GPR30,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,-12(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	strlength	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 36 NOPs removed by reduceNOPs.sh
	lw	%GPR4,-12(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	addi	%GPR6,%GPR28,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	subi	%GPR3,%GPR30,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR7,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR5,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$76	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$90	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
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
	ori	%GPR28,%GPR28,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_49	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_49:
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
	nop
	jr	%GPR31	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
g_drawrect:
L_lib_lcd_50:
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
	subi	%GPR29,%GPR29,$24	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR8,%GPR4,%GPR0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	add	%GPR4,%GPR3,%GPR0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	subi	%GPR3,%GPR30,$16	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	subi	%GPR5,%GPR30,$16	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	add	%GPR1,%GPR3,%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	subi	%GPR9,%GPR30,$16	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR10,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$12	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	add	%GPR11,%GPR5,%GPR6	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	sw	0(%GPR1),%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR11),%GPR4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%GPR9,%GPR9,%GPR10	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$16	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR7,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR5,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$82	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$71	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	sw	0(%GPR9),%GPR8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
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
	ori	%GPR28,%GPR28,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_51	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_51:
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
	nop
	jr	%GPR31	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
g_drawline:
L_lib_lcd_52:
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
	subi	%GPR29,%GPR29,$24	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR8,%GPR4,%GPR0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	add	%GPR4,%GPR3,%GPR0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	subi	%GPR3,%GPR30,$16	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	subi	%GPR5,%GPR30,$16	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	add	%GPR1,%GPR3,%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	subi	%GPR9,%GPR30,$16	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR10,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$12	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	add	%GPR11,%GPR5,%GPR6	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	sw	0(%GPR1),%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR11),%GPR4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%GPR9,%GPR9,%GPR10	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$16	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR7,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR5,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$68	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$71	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	sw	0(%GPR9),%GPR8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
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
	ori	%GPR28,%GPR28,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_53	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_53:
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
	nop
	jr	%GPR31	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
g_makebar:
L_lib_lcd_54:
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
	subi	%GPR29,%GPR29,$52	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-40(%GPR30),%GPR7	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-44(%GPR30),%GPR10	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR7,$( L_lib_lcd_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR7,%GPR7,$( L_lib_lcd_1	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR7,0(%GPR7)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR10,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$32	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR7,%GPR10	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	bnez	%GPR27,L_lib_lcd_55	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_58	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_55:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR7,$( L_lib_lcd_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR7,%GPR7,$( L_lib_lcd_1	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	subi	%GPR10,%GPR30,$36	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lw	%GPR7,0(%GPR7)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR11,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR11,%GPR11,$4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	subi	%GPR12,%GPR30,$36	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	sw	-36(%GPR30),%GPR7	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	add	%GPR10,%GPR10,%GPR11	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR7,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	subi	%GPR11,%GPR30,$36	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR13,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR13,%GPR13,$12	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	sw	0(%GPR10),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	add	%GPR1,%GPR12,%GPR7	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	subi	%GPR7,%GPR30,$36	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	add	%GPR1,%GPR11,%GPR13	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR10,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$16	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	subi	%GPR2,%GPR30,$36	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR11,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR11,%GPR11,$20	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	sw	0(%GPR1),%GPR3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	add	%GPR1,%GPR7,%GPR10	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$36	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	add	%GPR1,%GPR2,%GPR11	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR7,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$24	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$28	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	subi	%GPR2,%GPR30,$36	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	sw	0(%GPR1),%GPR5	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	add	%GPR1,%GPR3,%GPR7	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	add	%GPR4,%GPR2,%GPR4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	subi	%GPR10,%GPR30,$36	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	sw	0(%GPR1),%GPR6	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR11,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR11,%GPR11,$32	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4),%GPR8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR10,%GPR10,%GPR11	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$36	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR7,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR5,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$9	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$82	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$66	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	sw	0(%GPR10),%GPR9	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%GPR2,-44(%GPR30)	
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
	bnez	%GPR27,L_lib_lcd_56	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_57	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_56:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1,$( L_lib_lcd_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_lib_lcd_1	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR8,0(%GPR1)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$36	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR7,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR5,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	sw	-36(%GPR30),%GPR8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$66	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$65	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 28 NOPs removed by reduceNOPs.sh
L_lib_lcd_57:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L_lib_lcd_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_lib_lcd_1	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR2,$( L_lib_lcd_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$( L_lib_lcd_1	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$( L_lib_lcd_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$( L_lib_lcd_1	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR4,0(%GPR1)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,0(%GPR2)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	subi	%GPR8,%GPR30,$36	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR9,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	addi	%GPR2,%GPR4,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%GPR8,%GPR8,%GPR9	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	sw	0(%GPR3),%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	-36(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR9,-40(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR7,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	subi	%GPR3,%GPR30,$36	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR5,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$65	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$66	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	sw	0(%GPR8),%GPR9	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L_lib_lcd_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_lib_lcd_1	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR28,%GPR1,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_59	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_58:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$65535	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$-1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_59	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_59:
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
	nop
	jr	%GPR31	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
g_setbar:
L_lib_lcd_60:
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
	subi	%GPR29,%GPR29,$16	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR8,%GPR2,%GPR0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR4,%GPR30,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	sw	-8(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR9,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR9,%GPR4,%GPR9	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR7,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR5,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$65	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	sw	0(%GPR9),%GPR8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$66	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
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
	ori	%GPR28,%GPR28,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_61	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_61:
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
	nop
	jr	%GPR31	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
g_makeswitch:
L_lib_lcd_62:
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
	subi	%GPR29,%GPR29,$36	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-28(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 20 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	-24(%GPR30),%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	subi	%GPR1,%GPR30,$24	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	subi	%GPR8,%GPR30,$24	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR9,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	add	%GPR1,%GPR1,%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	subi	%GPR2,%GPR30,$24	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR10,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$12	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	sw	0(%GPR1),%GPR3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	add	%GPR1,%GPR8,%GPR9	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	subi	%GPR3,%GPR30,$24	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR8,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$16	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	sw	0(%GPR1),%GPR4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	add	%GPR1,%GPR2,%GPR10	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$20	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	add	%GPR3,%GPR3,%GPR8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	subi	%GPR2,%GPR30,$24	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	sw	0(%GPR1),%GPR5	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR2,%GPR4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	sw	0(%GPR3),%GPR6	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR1),%GPR7	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,-28(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	strlength	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 36 NOPs removed by reduceNOPs.sh
	lw	%GPR4,-28(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	addi	%GPR6,%GPR28,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	subi	%GPR3,%GPR30,$24	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR7,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR5,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$6	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$75	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$65	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
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
	ori	%GPR28,%GPR28,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_63	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_63:
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
	nop
	jr	%GPR31	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
g_makemenubutton:
L_lib_lcd_64:
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
	subi	%GPR29,%GPR29,$44	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-36(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-4(%GPR30),%GPR9	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 20 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	-32(%GPR30),%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	subi	%GPR1,%GPR30,$32	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	subi	%GPR9,%GPR30,$32	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR10,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	add	%GPR1,%GPR1,%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	subi	%GPR2,%GPR30,$32	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR11,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR11,%GPR11,$12	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	add	%GPR1,%GPR9,%GPR10	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	subi	%GPR3,%GPR30,$32	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR9,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$16	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	sw	0(%GPR1),%GPR4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	add	%GPR1,%GPR2,%GPR11	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	subi	%GPR2,%GPR30,$32	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$20	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	sw	0(%GPR1),%GPR5	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	add	%GPR1,%GPR3,%GPR9	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR5,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$24	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	add	%GPR2,%GPR2,%GPR4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	subi	%GPR3,%GPR30,$32	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	sw	0(%GPR1),%GPR6	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR3,%GPR5	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	sw	0(%GPR2),%GPR7	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR1),%GPR8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,-36(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	strlength	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 36 NOPs removed by reduceNOPs.sh
	lw	%GPR4,-36(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	addi	%GPR6,%GPR28,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	subi	%GPR3,%GPR30,$32	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR7,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR5,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$7	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$77	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$65	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-4(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
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
	sgt	%GPR27,%GPR1,%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	bnez	%GPR27,L_lib_lcd_65	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_66	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_65:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR7,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR5,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$89	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$78	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 28 NOPs removed by reduceNOPs.sh
L_lib_lcd_66:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_67	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_67:
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
	nop
	jr	%GPR31	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
g_makeradiogroup:
L_lib_lcd_68:
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
	subi	%GPR29,%GPR29,$12	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 40 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR7,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR5,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$82	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$65	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
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
	ori	%GPR28,%GPR28,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_69	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_69:
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
	nop
	jr	%GPR31	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
d_clear:
L_lib_lcd_70:
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
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 60 NOPs removed by reduceNOPs.sh
	lhi	%GPR7,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR5,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$76	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$68	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR3,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
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
	ori	%GPR28,%GPR28,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_71	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_71:
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
	nop
	jr	%GPR31	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	.section	.data
	.section	.text
	.addressing	Word
	;.addressing	Word
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
loadByteUnsigned:
L_loadStoreByte_1:
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
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 36 NOPs removed by reduceNOPs.sh
	andi	%GPR2,%GPR1,$3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	andi	%GPR1,%GPR1,$-4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%GPR2,%GPR2,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subu	%GPR2,%GPR0,%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR1,0(%GPR1)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	slli	%GPR2,%GPR2,$3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sra	%GPR1,%GPR1,%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	andi	%GPR28,%GPR1,$255	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_loadStoreByte_2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_loadStoreByte_2:
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
	nop
	jr	%GPR31	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
loadByteSigned:
L_loadStoreByte_3:
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
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 36 NOPs removed by reduceNOPs.sh
	andi	%GPR2,%GPR1,$3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	andi	%GPR1,%GPR1,$-4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%GPR2,%GPR2,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subu	%GPR2,%GPR0,%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR1,0(%GPR1)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	slli	%GPR2,%GPR2,$3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sra	%GPR1,%GPR1,%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	andi	%GPR1,%GPR1,$255	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	slli	%GPR1,%GPR1,$24	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	srai	%GPR28,%GPR1,$24	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_loadStoreByte_4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_loadStoreByte_4:
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
	nop
	jr	%GPR31	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
storeByte:
L_loadStoreByte_5:
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
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 44 NOPs removed by reduceNOPs.sh
	andi	%GPR3,%GPR1,$3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	andi	%GPR4,%GPR1,$3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR5,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	andi	%GPR1,%GPR1,$-4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$255	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	addi	%GPR4,%GPR4,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subu	%GPR4,%GPR0,%GPR4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	sub	%GPR3,%GPR5,%GPR3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR28,0(%GPR1)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	slli	%GPR4,%GPR4,$3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	slli	%GPR3,%GPR3,$3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sll	%GPR2,%GPR2,%GPR4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	sll	%GPR3,%GPR6,%GPR3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR3,%GPR3,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subu	%GPR3,%GPR0,%GPR3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	and	%GPR28,%GPR28,%GPR3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	or	%GPR28,%GPR28,%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR28	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	j	L_loadStoreByte_6	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_loadStoreByte_6:
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
	nop
	jr	%GPR31	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	.section	.data
	;.global	_matrixA
	.align	4
_matrixA:
	.space	4000
	;.global	_matrixB
	.align	4
_matrixB:
	.space	2000
	;.global	_matrixC
	.align	4
_matrixC:
	.space	200
L_matrix_1:
	.data.8	13
	.data.8	10
	.data.8	73
	.data.8	110
	.data.8	105
	.data.8	116
	.data.8	105
	.data.8	97
	.data.8	108
	.data.8	105
	.data.8	115
	.data.8	105
	.data.8	110
	.data.8	103
	.data.8	32
	.data.8	65
	.data.8	114
	.data.8	114
	.data.8	97
	.data.8	121
	.data.8	46
	.data.8	46
	.data.8	46
	.data.8	13
	.data.8	10
	.space	1
L_matrix_2:
	.data.8	77
	.data.8	117
	.data.8	108
	.data.8	116
	.data.8	105
	.data.8	112
	.data.8	108
	.data.8	121
	.data.8	105
	.data.8	110
	.data.8	103
	.data.8	46
	.data.8	46
	.data.8	46
	.data.8	13
	.data.8	10
	.space	1
L_matrix_3:
	.data.8	82
	.data.8	101
	.data.8	115
	.data.8	117
	.data.8	108
	.data.8	116
	.data.8	115
	.data.8	58
	.data.8	13
	.data.8	10
	.space	1
L_matrix_4:
	.data.8	44
	.data.8	32
	.space	1
L_matrix_5:
	.data.8	13
	.data.8	10
	.space	1
L_matrix_6:
	.data.8	13
	.data.8	10
	.space	1
L_matrix_7:
	.data.8	70
	.data.8	105
	.data.8	110
	.data.8	105
	.data.8	115
	.data.8	104
	.data.8	101
	.data.8	100
	.data.8	46
	.data.8	13
	.data.8	10
	.space	1
	.section	.text
	.addressing	Word
	;.addressing	Word
pin_down:
L_matrix_8:
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
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
L_matrix_9:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$1	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$1000	
	nop	;;6,8
	nop	;;6,8
	mult	%GPR5,%GPR4,%GPR5	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR4,%GPR4,$1	
	add	%GPR5,%GPR1,%GPR5	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR5),%GPR6	
	slt	%GPR27,%GPR4,%GPR7	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_matrix_9	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_matrix_10	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_matrix_10:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
L_matrix_11:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$500	
	nop	;;6,8
	nop	;;6,8
	mult	%GPR1,%GPR4,%GPR1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR4,%GPR4,$1	
	add	%GPR1,%GPR2,%GPR1	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR5	
	slt	%GPR27,%GPR4,%GPR6	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_matrix_11	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_matrix_12	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_matrix_12:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
L_matrix_13:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$50	
	nop	;;6,8
	nop	;;6,8
	mult	%GPR1,%GPR4,%GPR1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR4,%GPR4,$1	
	add	%GPR1,%GPR3,%GPR1	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	slt	%GPR27,%GPR4,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_matrix_13	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_matrix_14	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_matrix_14:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_matrix_15	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_matrix_15:
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
	nop
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
main:
L_matrix_16:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$48	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$( _matrixC	/0x10000)
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$( _matrixC	%0x10000)
	lhi	%GPR1,$( L_matrix_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_matrix_1	%0x10000)
	nop	;;3,6
	nop	;;3,6
	nop	;;3,6
	sw	-24(%GPR30),%GPR2	
	lhi	%GPR2,$( _matrixB	/0x10000)
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$( _matrixB	%0x10000)
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-28(%GPR30),%GPR2	
	lhi	%GPR2,$( _matrixA	/0x10000)
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$( _matrixA	%0x10000)
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-32(%GPR30),%GPR2	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-32(%GPR30)	
	lw	%GPR2,-28(%GPR30)	
	lw	%GPR3,-24(%GPR30)	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	pin_down	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L_matrix_2	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_matrix_2	%0x10000)
	nop	;;22,27
	nop	;;22,27
	nop	;;22,27
	; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	;;32,36
	nop	;;32,36
	nop	;;32,36
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-36(%GPR30),%GPR1	
	nop
	nop
	nop
L_matrix_17:
	lhi	%GPR1,$( _matrixA	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _matrixA	%0x10000)
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-32(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-40(%GPR30),%GPR1	
	nop
	nop
	nop
L_matrix_18:
	lw	%GPR5,-36(%GPR30)	
	nop	;;1,3
	nop	;;1,3
	lhi	%GPR2,$( _matrixB	/0x10000)
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$( _matrixB	%0x10000)
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$100	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$4	
	lw	%GPR6,-24(%GPR30)	
	mult	%GPR5,%GPR5,%GPR1	
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop	;;9,12
	nop	;;9,12
	nop	;;9,12
	mult	%GPR3,%GPR5,%GPR3	
	sw	0(%GPR6),%GPR4	
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	;;14,16
	nop	;;14,16
	add	%GPR2,%GPR2,%GPR3	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-28(%GPR30),%GPR2	
	nop
	nop
	nop
L_matrix_19:
	lw	%GPR2,-28(%GPR30)	
	lw	%GPR3,-32(%GPR30)	
	lw	%GPR4,-24(%GPR30)	
	nop	;;2,4
	nop	;;2,4
	add	%GPR6,%GPR2,%GPR0	
	lw	%GPR3,0(%GPR3)	
	lw	%GPR4,0(%GPR4)	
	lw	%GPR2,0(%GPR2)	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
	; Automatically 1 NOPs removed by reduceNOPs.sh
	mac	%GPR4,%GPR2,%GPR3	
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$4	
	addi	%GPR1,%GPR1,$1	
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$100	
	add	%GPR2,%GPR6,%GPR2	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-28(%GPR30),%GPR2	
	nop	; Automatically added by findLoadStoreProblem.sh
	lw	%GPR2,-32(%GPR30)	
	nop	;;21,25
	nop	;;21,25
	nop	;;21,25
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR2,%GPR3	
	nop	;;25,29
	nop	;;25,29
	nop	;;25,29
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-32(%GPR30),%GPR2	
	nop	; Automatically added by findLoadStoreProblem.sh
	lw	%GPR2,-24(%GPR30)	
	nop	;;30,34
	nop	;;30,34
	nop	;;30,34
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2),%GPR4	
	slt	%GPR27,%GPR1,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_matrix_19	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_matrix_20	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_matrix_20:
	lw	%GPR1,-40(%GPR30)	
	nop	;;0,2
	nop	;;0,2
	lw	%GPR3,-24(%GPR30)	
	nop	;;2,4
	nop	;;2,4
	addi	%GPR1,%GPR1,$1	
	nop	;;4,7
	nop	;;4,7
	nop	;;4,7
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$10	
	sw	-40(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR3,%GPR1	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-24(%GPR30),%GPR1	
	nop	; Automatically added by findLoadStoreProblem.sh
	lw	%GPR1,-40(%GPR30)	
	nop	;;18,22
	nop	;;18,22
	nop	;;18,22
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_matrix_18	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_matrix_21	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_matrix_21:
	lw	%GPR1,-36(%GPR30)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	
	sw	-36(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$5	
	nop	;;10,14
	nop	;;10,14
	nop	;;10,14
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR2,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_matrix_17	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_matrix_22	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_matrix_22:
	lhi	%GPR1,$( L_matrix_3	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_matrix_3	%0x10000)
	nop	;;0,5
	nop	;;0,5
	nop	;;0,5
	; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	;;10,14
	nop	;;10,14
	nop	;;10,14
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-36(%GPR30),%GPR1	
	nop
	nop
	nop
L_matrix_23:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-40(%GPR30),%GPR1	
	nop
	nop
	nop
L_matrix_24:
	lw	%GPR5,-40(%GPR30)	
	nop	;;1,3
	nop	;;1,3
	lw	%GPR6,-36(%GPR30)	
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$5	
	lhi	%GPR1,$( _matrixC	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _matrixC	%0x10000)
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	subi	%GPR2,%GPR30,$20	
	mac	%GPR5,%GPR6,%GPR3	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	; Automatically 1 NOPs removed by reduceNOPs.sh
	mult	%GPR3,%GPR5,%GPR4	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR3	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	intToStr	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR1,%GPR30,$20	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L_matrix_4	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_matrix_4	%0x10000)
	nop	;;24,29
	nop	;;24,29
	nop	;;24,29
	; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-40(%GPR30)	
	nop	;;30,34
	nop	;;30,34
	nop	;;30,34
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop	;;34,38
	nop	;;34,38
	nop	;;34,38
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	
	sw	-40(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$5	
	nop	;;40,44
	nop	;;40,44
	nop	;;40,44
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR2,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_matrix_24	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_matrix_25	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_matrix_25:
	lhi	%GPR1,$( L_matrix_5	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_matrix_5	%0x10000)
	nop	;;0,5
	nop	;;0,5
	nop	;;0,5
	; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-36(%GPR30)	
	nop	;;6,10
	nop	;;6,10
	nop	;;6,10
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop	;;10,14
	nop	;;10,14
	nop	;;10,14
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	
	sw	-36(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$10	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR2,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_matrix_23	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_matrix_26	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_matrix_26:
	lhi	%GPR1,$( L_matrix_6	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_matrix_6	%0x10000)
	nop	;;0,5
	nop	;;0,5
	nop	;;0,5
	; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L_matrix_7	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_matrix_7	%0x10000)
	nop	;;6,11
	nop	;;6,11
	nop	;;6,11
	; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_matrix_27	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_matrix_27:
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
	nop
	jr	%GPR31	
	nop
	nop
	nop
	nop
exit:
	nop
	nop
