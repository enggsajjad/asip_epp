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
	lhi	%GPR30, $(0x3BFC/0x10000)
	lhi	%GPR29, $(0x3BFC/0x10000)
	nop
	nop
	ori	%GPR30, %GPR30, $(0x3BFC%0x10000)
	ori	%GPR29, %GPR29, $(0x3BFC%0x10000)
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
	nop
	nop
	nop
intToStr:
L_intToStr_1:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$56	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-36(%GPR30),%GPR1	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	-40(%GPR30),%GPR2	
	nop
	nop
	nop
	; Automatically 32 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	sw	-44(%GPR30),%GPR2	
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-48(%GPR30),%GPR2	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,-36(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR2,%GPR1	
	nop
	nop
	nop
	bnez	%GPR27,L_intToStr_2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_intToStr_3	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_intToStr_2:
	nop
	nop
	nop
	lw	%GPR1,-36(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sub	%GPR1,%GPR0,%GPR1	
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$45	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-36(%GPR30),%GPR1	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,-40(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-44(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-44(%GPR30),%GPR1	
	nop
	nop
	nop
	j	L_intToStr_5	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L_intToStr_3:
	nop
	nop
	nop
	lw	%GPR2,-36(%GPR30)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR2,%GPR1	
	nop
	nop
	nop
	bnez	%GPR27,L_intToStr_4	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_intToStr_6	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_intToStr_4:
	nop
	nop
	nop
	lw	%GPR1,-40(%GPR30)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$48	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-44(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-44(%GPR30),%GPR1	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L_intToStr_5:
	nop
	nop
	nop
	lw	%GPR2,-36(%GPR30)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR2,%GPR1	
	nop
	nop
	nop
	bnez	%GPR27,L_intToStr_6	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_intToStr_7	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_intToStr_6:
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$32	
	nop
	nop
	nop
	lw	%GPR3,-48(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR3	
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$10	
	nop
	nop
	nop
	lw	%GPR3,-36(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	MOD	%GPR2,%GPR3,%GPR2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR2,%GPR2,$48	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-48(%GPR30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,-36(%GPR30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-48(%GPR30),%GPR1	
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$10	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	div	%GPR1,%GPR2,%GPR1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-36(%GPR30),%GPR1	
	nop
	nop
	nop
	j	L_intToStr_5	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L_intToStr_7:
	nop
	nop
	nop
	lw	%GPR2,-48(%GPR30)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sgt	%GPR27,%GPR2,%GPR1	
	nop
	nop
	nop
	bnez	%GPR27,L_intToStr_8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_intToStr_9	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_intToStr_8:
	nop
	nop
	nop
	lw	%GPR2,-48(%GPR30)	
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$32	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	sw	-48(%GPR30),%GPR2	
	nop
	nop
	nop
	; Automatically 32 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	loadByteUnsigned	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-40(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR3,-44(%GPR30)	
	nop
	nop
	nop
	add	%GPR2,%GPR28,%GPR0	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR3	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-44(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-44(%GPR30),%GPR1	
	nop
	nop
	nop
	j	L_intToStr_7	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L_intToStr_9:
	nop
	nop
	nop
	lw	%GPR1,-40(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,-44(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_intToStr_10	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_intToStr_10:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	nop
	nop
	jr	%GPR31	
	nop
	nop
	nop
	.section	.data
	.align	4
L_lib_lcd_1:
	.data.32	1
	.section	.text
	.addressing	Word
	;.addressing	Word
checkbuffer:
L_lib_lcd_2:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 48 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$222	


	nop
	nop
	nop
	lhi	%GPR5, $0x200
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$4	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR5), %GPR3



	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR5), %GPR1

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$18	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR5), %GPR3

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$18	
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$1	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR5), %GPR3

	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	add	%GPR4,%GPR4,%GPR3	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$73	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR5), %GPR3

	nop
	nop
	nop
	add	%GPR4,%GPR4,%GPR3	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR5), %GPR4

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$65535	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$-1	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_3:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR5), %GPR2

	nop
	nop
	nop
	addi	%GPR3,%GPR1,$1	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR5), %GPR3

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$6	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR5), %GPR2



	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR3,0(%GPR5)
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh



	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%GPR3,0(%GPR5)
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh



	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR5)
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
	add	%GPR4,%GPR3,%GPR2	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR5)
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
	add	%GPR4,%GPR4,%GPR2	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%GPR3,0(%GPR5)
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
	add	%GPR4,%GPR4,%GPR3	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%GPR3,0(%GPR5)
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$256	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	MOD	%GPR4,%GPR4,%GPR6	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR4,%GPR3	
	nop
	nop
	nop
	bnez	%GPR27,L_lib_lcd_4	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_5	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_4:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$4	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR5), %GPR3



	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR5), %GPR1

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$18	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR5), %GPR3

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$18	
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$1	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR5), %GPR3

	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	add	%GPR4,%GPR4,%GPR3	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$82	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR5), %GPR3

	nop
	nop
	nop
	add	%GPR4,%GPR4,%GPR3	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR5), %GPR4

	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_5:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$65535	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$-1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR4,%GPR3	
	nop
	nop
	nop
	bnez	%GPR27,L_lib_lcd_3	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_6	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_6:
	nop
	nop
	nop
	add	%GPR28,%GPR2,%GPR0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_7	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_7:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	nop
	nop
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
getbytes:
L_lib_lcd_8:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$36	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR1	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	-8(%GPR30),%GPR2	
	nop
	nop
	nop
	; Automatically 32 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$222	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-12(%GPR30),%GPR1	
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR1	


	nop
	nop
	nop
	lhi	%GPR1, $0x200
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	sw	-20(%GPR30),%GPR1	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2), %GPR1

	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,-12(%GPR30)	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR2), %GPR1

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$18	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2), %GPR1

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-24(%GPR30),%GPR1	
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$18	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-28(%GPR30),%GPR1	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,-24(%GPR30)	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR2), %GPR1

	nop
	nop
	nop
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	lw	%GPR1,-28(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	lw	%GPR2,-20(%GPR30)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	-28(%GPR30),%GPR1	
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$83	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2), %GPR1

	nop
	nop
	nop
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	lw	%GPR1,-28(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	lw	%GPR2,-20(%GPR30)	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR2), %GPR1

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$65535	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$-1	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_9:
	nop
	nop
	nop
	lw	%GPR2,-20(%GPR30)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2), %GPR1

	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,-12(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2), %GPR1

	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,-8(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$4	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2), %GPR1

	nop
	nop
	nop
	add	%GPR1,%GPR2,%GPR0	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
	add	%GPR1,%GPR2,%GPR0	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	lw	%GPR1,-20(%GPR30)	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,0(%GPR1)
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
	add	%GPR1,%GPR2,%GPR1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-28(%GPR30),%GPR1	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_10:
	nop
	nop
	nop
	lw	%GPR1,-16(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,-8(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	bnez	%GPR27,L_lib_lcd_11	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_12	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_11:
	nop
	nop
	nop
	lw	%GPR1,-20(%GPR30)	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,0(%GPR1)
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
	sw	-24(%GPR30),%GPR1	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,-4(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	lw	%GPR2,-24(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-28(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,-24(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-28(%GPR30),%GPR1	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,-16(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR1	
	nop
	nop
	nop
	j	L_lib_lcd_10	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_12:
	nop
	nop
	nop
	lw	%GPR1,-20(%GPR30)	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,0(%GPR1)
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
	lw	%GPR2,-28(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	andi	%GPR2,%GPR2,$255	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-28(%GPR30),%GPR2	
	nop
	nop
	nop
	sne	%GPR27,%GPR2,%GPR1	
	nop
	nop
	nop
	bnez	%GPR27,L_lib_lcd_13	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_14	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_13:
	nop
	nop
	nop
	lw	%GPR2,-20(%GPR30)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2), %GPR1

	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,-12(%GPR30)	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR2), %GPR1

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$18	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2), %GPR1

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-24(%GPR30),%GPR1	
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$18	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-28(%GPR30),%GPR1	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,-24(%GPR30)	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR2), %GPR1

	nop
	nop
	nop
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	lw	%GPR1,-28(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	lw	%GPR2,-20(%GPR30)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	-28(%GPR30),%GPR1	
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$82	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2), %GPR1

	nop
	nop
	nop
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	lw	%GPR1,-28(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	lw	%GPR2,-20(%GPR30)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	-28(%GPR30),%GPR1	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR2), %GPR1

	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_14:
	nop
	nop
	nop
	lw	%GPR2,-28(%GPR30)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$65535	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$-1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR2,%GPR1	
	nop
	nop
	nop
	bnez	%GPR27,L_lib_lcd_9	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_15	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_15:
	nop
	nop
	nop
	lw	%GPR28,-16(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_16	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_16:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	nop
	nop
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
sendcommand:
L_lib_lcd_17:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$52	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR1	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	-8(%GPR30),%GPR2	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	-12(%GPR30),%GPR5	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	-16(%GPR30),%GPR6	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	-20(%GPR30),%GPR3	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	-24(%GPR30),%GPR4	


	nop
	nop
	nop
	lhi	%GPR1, $0x200
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
	sw	-28(%GPR30),%GPR1	
	nop
	nop
	nop
	add	%GPR1,%GPR7,%GPR0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	slli	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-32(%GPR30),%GPR1	
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$3	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-36(%GPR30),%GPR1	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_18:
	nop
	nop
	nop
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,-12(%GPR30)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR2,%GPR0	
	nop
	nop
	nop
	sw	-40(%GPR30),%GPR2	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,-12(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR2,%GPR3	
	nop
	nop
	nop
	lw	%GPR3,-36(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR2,%GPR3	
	nop
	nop
	nop
	lw	%GPR3,-28(%GPR30)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%GPR2,%GPR2,$3	
	nop
	nop
	nop
	; Automatically 17 NOPs removed by reduceNOPs.sh


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3), %GPR2

	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,-32(%GPR30)	
	nop
	nop
	nop
	; Automatically 17 NOPs removed by reduceNOPs.sh


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3), %GPR2

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$17	
	nop
	nop
	nop
	; Automatically 17 NOPs removed by reduceNOPs.sh


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3), %GPR2

	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR3,-16(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,-12(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR2,%GPR3	
	nop
	nop
	nop
	lw	%GPR3,-36(%GPR30)	
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$17	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR2,%GPR3	
	nop
	nop
	nop
	sw	-44(%GPR30),%GPR4	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR4,-28(%GPR30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR2,%GPR0	
	nop
	nop
	nop
	; Automatically 17 NOPs removed by reduceNOPs.sh


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4), %GPR3

	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR3,-44(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR3,%GPR2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-44(%GPR30),%GPR2	
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$27	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR2,%GPR0	
	nop
	nop
	nop
	; Automatically 17 NOPs removed by reduceNOPs.sh


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4), %GPR3

	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR3,-44(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR3,%GPR2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-44(%GPR30),%GPR2	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,-4(%GPR30)	
	nop
	nop
	nop
	; Automatically 32 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR2,%GPR0	
	nop
	nop
	nop
	; Automatically 17 NOPs removed by reduceNOPs.sh


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4), %GPR3

	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR3,-44(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR3,%GPR2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-44(%GPR30),%GPR2	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,-8(%GPR30)	
	nop
	nop
	nop
	; Automatically 32 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR2,%GPR0	
	nop
	nop
	nop
	; Automatically 17 NOPs removed by reduceNOPs.sh


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4), %GPR3

	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR3,-44(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR3,%GPR2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-44(%GPR30),%GPR2	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_19:
	nop
	nop
	nop
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	subi	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR2,%GPR3	
	nop
	nop
	nop
	bnez	%GPR27,L_lib_lcd_20	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_21	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_20:
	nop
	nop
	nop
	lw	%GPR2,-20(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR5,%GPR2,%GPR0	
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop
	nop
	nop
	lw	%GPR2,0(%GPR2)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%GPR4,%GPR5,%GPR4	
	nop
	nop
	nop
	add	%GPR3,%GPR2,%GPR0	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-20(%GPR30),%GPR4	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR4,-28(%GPR30)	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR4), %GPR3

	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR3,-44(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR3,%GPR2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-44(%GPR30),%GPR2	
	nop
	nop
	nop
	j	L_lib_lcd_19	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_21:
	nop
	nop
	nop
	lw	%GPR2,-40(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR2,%GPR0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-40(%GPR30),%GPR1	
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR2,%GPR1	
	nop
	nop
	nop
	bnez	%GPR27,L_lib_lcd_22	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_23	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_22:
	nop
	nop
	nop
	lw	%GPR1,-24(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR1,%GPR0	
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR3,%GPR2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-24(%GPR30),%GPR2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	loadByteUnsigned	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR28,%GPR0	
	nop
	nop
	nop
	lw	%GPR3,-28(%GPR30)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR2,%GPR0	
	nop
	nop
	nop
	; Automatically 17 NOPs removed by reduceNOPs.sh


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3), %GPR1

	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,-44(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-44(%GPR30),%GPR1	
	nop
	nop
	nop
	j	L_lib_lcd_21	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_23:
	nop
	nop
	nop
	lw	%GPR2,-44(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,-28(%GPR30)	
	nop
	nop
	nop
	; Automatically 13 NOPs removed by reduceNOPs.sh


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1), %GPR2

	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,-32(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	getack	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR28,%GPR1	
	nop
	nop
	nop
	bnez	%GPR27,L_lib_lcd_18	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_24	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_24:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_25	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_25:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	nop
	nop
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
t_print:
L_lib_lcd_26:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$12	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR1	
	nop
	nop
	nop
	; Automatically 28 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	strlength	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 40 NOPs removed by reduceNOPs.sh
	lw	%GPR4,-4(%GPR30)	
	nop
	nop
	nop
	add	%GPR6,%GPR28,%GPR0	
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$84	
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$90	
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_27	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_27:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	nop
	nop
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
t_cursor:
L_lib_lcd_28:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$12	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR1	
	nop
	nop
	nop
	; Automatically 40 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$4	
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$67	
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$84	
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_29	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_29:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	nop
	nop
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
t_enable:
L_lib_lcd_30:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 56 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	bnez	%GPR27,L_lib_lcd_31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_32	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_31:
	nop
	nop
	nop
	; Automatically 28 NOPs removed by reduceNOPs.sh
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$69	
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$84	
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_33	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_32:
	nop
	nop
	nop
	; Automatically 28 NOPs removed by reduceNOPs.sh
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$65	
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$84	
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 28 NOPs removed by reduceNOPs.sh
L_lib_lcd_33:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_34	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_34:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	nop
	nop
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
g_print:
L_lib_lcd_35:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$20	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-12(%GPR30),%GPR1	
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	-8(%GPR30),%GPR2	
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$8	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR3	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,-12(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	strlength	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
	lw	%GPR4,-12(%GPR30)	
	nop
	nop
	nop
	addi	%GPR6,%GPR28,$1	
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$8	
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$2	
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$76	
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$90	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_36	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_36:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	nop
	nop
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
g_drawrect:
L_lib_lcd_37:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$24	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR8,%GPR4,%GPR0	
	nop
	nop
	nop
	add	%GPR4,%GPR3,%GPR0	
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR1	
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$16	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	
	nop
	nop
	nop
	subi	%GPR5,%GPR30,$16	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$8	
	nop
	nop
	nop
	add	%GPR1,%GPR3,%GPR1	
	nop
	nop
	nop
	subi	%GPR9,%GPR30,$16	
	nop
	nop
	nop
	lhi	%GPR10,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$12	
	nop
	nop
	nop
	add	%GPR11,%GPR5,%GPR6	
	nop
	nop
	nop
	sw	0(%GPR1),%GPR2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR11),%GPR4	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%GPR9,%GPR9,%GPR10	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$16	
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$82	
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$71	
	nop
	nop
	nop
	sw	0(%GPR9),%GPR8	
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_38	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_38:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	nop
	nop
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
g_drawline:
L_lib_lcd_39:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$24	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR8,%GPR4,%GPR0	
	nop
	nop
	nop
	add	%GPR4,%GPR3,%GPR0	
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR1	
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$16	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	
	nop
	nop
	nop
	subi	%GPR5,%GPR30,$16	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$8	
	nop
	nop
	nop
	add	%GPR1,%GPR3,%GPR1	
	nop
	nop
	nop
	subi	%GPR9,%GPR30,$16	
	nop
	nop
	nop
	lhi	%GPR10,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$12	
	nop
	nop
	nop
	add	%GPR11,%GPR5,%GPR6	
	nop
	nop
	nop
	sw	0(%GPR1),%GPR2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR11),%GPR4	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%GPR9,%GPR9,%GPR10	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$16	
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$68	
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$71	
	nop
	nop
	nop
	sw	0(%GPR9),%GPR8	
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_40	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_40:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	nop
	nop
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
g_makebar:
L_lib_lcd_41:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$52	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-40(%GPR30),%GPR7	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	-44(%GPR30),%GPR10	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR7,$( L_lib_lcd_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR7,%GPR7,$( L_lib_lcd_1	%0x10000)
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR7,0(%GPR7)	
	nop
	nop
	nop
	lhi	%GPR10,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$32	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR7,%GPR10	
	nop
	nop
	nop
	bnez	%GPR27,L_lib_lcd_42	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_45	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_42:
	nop
	nop
	nop
	lhi	%GPR7,$( L_lib_lcd_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR7,%GPR7,$( L_lib_lcd_1	%0x10000)
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	subi	%GPR10,%GPR30,$36	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lw	%GPR7,0(%GPR7)	
	nop
	nop
	nop
	lhi	%GPR11,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR11,%GPR11,$4	
	nop
	nop
	nop
	subi	%GPR12,%GPR30,$36	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	sw	-36(%GPR30),%GPR7	
	nop
	nop
	nop
	add	%GPR10,%GPR10,%GPR11	
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$8	
	nop
	nop
	nop
	subi	%GPR11,%GPR30,$36	
	nop
	nop
	nop
	lhi	%GPR13,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR13,%GPR13,$12	
	nop
	nop
	nop
	sw	0(%GPR10),%GPR1	
	nop
	nop
	nop
	add	%GPR1,%GPR12,%GPR7	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	subi	%GPR7,%GPR30,$36	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	nop
	nop
	nop
	add	%GPR1,%GPR11,%GPR13	
	nop
	nop
	nop
	lhi	%GPR10,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$16	
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$36	
	nop
	nop
	nop
	lhi	%GPR11,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR11,%GPR11,$20	
	nop
	nop
	nop
	sw	0(%GPR1),%GPR3	
	nop
	nop
	nop
	add	%GPR1,%GPR7,%GPR10	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$36	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR4	
	nop
	nop
	nop
	add	%GPR1,%GPR2,%GPR11	
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$24	
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$28	
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$36	
	nop
	nop
	nop
	sw	0(%GPR1),%GPR5	
	nop
	nop
	nop
	add	%GPR1,%GPR3,%GPR7	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	add	%GPR4,%GPR2,%GPR4	
	nop
	nop
	nop
	subi	%GPR10,%GPR30,$36	
	nop
	nop
	nop
	sw	0(%GPR1),%GPR6	
	nop
	nop
	nop
	lhi	%GPR11,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR11,%GPR11,$32	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4),%GPR8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR10,%GPR10,%GPR11	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$36	
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$9	
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$82	
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$66	
	nop
	nop
	nop
	sw	0(%GPR10),%GPR9	
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%GPR2,-44(%GPR30)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR2,%GPR1	
	nop
	nop
	nop
	bnez	%GPR27,L_lib_lcd_43	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_44	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_43:
	nop
	nop
	nop
	lhi	%GPR1,$( L_lib_lcd_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_lib_lcd_1	%0x10000)
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR8,0(%GPR1)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$36	
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	nop
	nop
	nop
	sw	-36(%GPR30),%GPR8	
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$66	
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$65	
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 28 NOPs removed by reduceNOPs.sh
L_lib_lcd_44:
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L_lib_lcd_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_lib_lcd_1	%0x10000)
	nop
	nop
	nop
	lhi	%GPR2,$( L_lib_lcd_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$( L_lib_lcd_1	%0x10000)
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$( L_lib_lcd_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$( L_lib_lcd_1	%0x10000)
	nop
	nop
	nop
	lw	%GPR4,0(%GPR1)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,0(%GPR2)	
	nop
	nop
	nop
	subi	%GPR8,%GPR30,$36	
	nop
	nop
	nop
	lhi	%GPR9,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$4	
	nop
	nop
	nop
	addi	%GPR2,%GPR4,$1	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%GPR8,%GPR8,%GPR9	
	nop
	nop
	nop
	sw	0(%GPR3),%GPR2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	-36(%GPR30),%GPR1	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR9,-40(%GPR30)	
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$36	
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$2	
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$65	
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$66	
	nop
	nop
	nop
	sw	0(%GPR8),%GPR9	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L_lib_lcd_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_lib_lcd_1	%0x10000)
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR28,%GPR1,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_46	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_45:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$65535	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$-1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_46	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_46:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	nop
	nop
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
g_setbar:
L_lib_lcd_47:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$16	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR8,%GPR2,%GPR0	
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR4,%GPR30,$8	
	nop
	nop
	nop
	sw	-8(%GPR30),%GPR1	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR9,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$4	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR9,%GPR4,%GPR9	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$8	
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$2	
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$65	
	nop
	nop
	nop
	sw	0(%GPR9),%GPR8	
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$66	
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_48	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_48:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	nop
	nop
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
g_makeswitch:
L_lib_lcd_49:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$36	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-28(%GPR30),%GPR1	
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	-24(%GPR30),%GPR2	
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$24	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	subi	%GPR8,%GPR30,$24	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR9,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$8	
	nop
	nop
	nop
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$24	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR10,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$12	
	nop
	nop
	nop
	sw	0(%GPR1),%GPR3	
	nop
	nop
	nop
	add	%GPR1,%GPR8,%GPR9	
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$24	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR8,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$16	
	nop
	nop
	nop
	sw	0(%GPR1),%GPR4	
	nop
	nop
	nop
	add	%GPR1,%GPR2,%GPR10	
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$20	
	nop
	nop
	nop
	add	%GPR3,%GPR3,%GPR8	
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$24	
	nop
	nop
	nop
	sw	0(%GPR1),%GPR5	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR2,%GPR4	
	nop
	nop
	nop
	sw	0(%GPR3),%GPR6	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR1),%GPR7	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,-28(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	strlength	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
	lw	%GPR4,-28(%GPR30)	
	nop
	nop
	nop
	addi	%GPR6,%GPR28,$1	
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$24	
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$6	
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$75	
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$65	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_50	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_50:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	nop
	nop
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
g_makemenubutton:
L_lib_lcd_51:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$44	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-36(%GPR30),%GPR1	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	-4(%GPR30),%GPR9	
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	-32(%GPR30),%GPR2	
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$32	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	subi	%GPR9,%GPR30,$32	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR10,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$8	
	nop
	nop
	nop
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$32	
	nop
	nop
	nop
	lhi	%GPR11,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR11,%GPR11,$12	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR3	
	nop
	nop
	nop
	add	%GPR1,%GPR9,%GPR10	
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$32	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR9,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$16	
	nop
	nop
	nop
	sw	0(%GPR1),%GPR4	
	nop
	nop
	nop
	add	%GPR1,%GPR2,%GPR11	
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$32	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$20	
	nop
	nop
	nop
	sw	0(%GPR1),%GPR5	
	nop
	nop
	nop
	add	%GPR1,%GPR3,%GPR9	
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$24	
	nop
	nop
	nop
	add	%GPR2,%GPR2,%GPR4	
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$32	
	nop
	nop
	nop
	sw	0(%GPR1),%GPR6	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR3,%GPR5	
	nop
	nop
	nop
	sw	0(%GPR2),%GPR7	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR1),%GPR8	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,-36(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	strlength	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
	lw	%GPR4,-36(%GPR30)	
	nop
	nop
	nop
	addi	%GPR6,%GPR28,$1	
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$32	
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$7	
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$77	
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$65	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-4(%GPR30)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sgt	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	bnez	%GPR27,L_lib_lcd_52	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_53	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_52:
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$4	
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$89	
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$78	
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 28 NOPs removed by reduceNOPs.sh
L_lib_lcd_53:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_54	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_54:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	nop
	nop
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
g_makeradiogroup:
L_lib_lcd_55:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$12	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR1	
	nop
	nop
	nop
	; Automatically 40 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$4	
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$82	
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$65	
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_56	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_56:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	nop
	nop
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
d_clear:
L_lib_lcd_57:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 60 NOPs removed by reduceNOPs.sh
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$76	
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$68	
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_58	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_58:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	nop
	nop
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
strlength:
L_lib_lcd_59:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$16	
	nop
	nop
	nop
	; Automatically 44 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR1	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-8(%GPR30),%GPR1	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_60:
	nop
	nop
	nop
	lw	%GPR1,-4(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR1,%GPR0	
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR3,%GPR2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	loadByteUnsigned	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR28,%GPR1	
	nop
	nop
	nop
	bnez	%GPR27,L_lib_lcd_61	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_62	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_61:
	nop
	nop
	nop
	lw	%GPR1,-8(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-8(%GPR30),%GPR1	
	nop
	nop
	nop
	j	L_lib_lcd_60	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_62:
	nop
	nop
	nop
	lw	%GPR28,-8(%GPR30)	
	nop
	nop
	nop
	; Automatically 32 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_63	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_63:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	nop
	nop
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
wait:
L_lib_lcd_64:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 56 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_65:
	nop
	nop
	nop
	add	%GPR3,%GPR2,%GPR0	
	nop
	nop
	nop
	addi	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR3,%GPR1	
	nop
	nop
	nop
	bnez	%GPR27,L_lib_lcd_65	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_66	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_66:
	nop
	nop
	nop
	subi	%GPR28,%GPR2,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_67	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_67:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	nop
	nop
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
getack:
L_lib_lcd_68:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 41 NOPs removed by reduceNOPs.sh


	nop
	nop
	nop
	lhi	%GPR2, $0x200
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2), %GPR3

	nop
	nop
	nop
	addi	%GPR1,%GPR1,$1	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2), %GPR1

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$1	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2), %GPR1



	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,0(%GPR2)
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$15	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	bnez	%GPR27,L_lib_lcd_69	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_70	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_69:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_71	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_70:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_71	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_lib_lcd_71:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	nop
	nop
	jr	%GPR31	
	nop
	nop
	nop
	.section	.data
	.section	.text
	.addressing	Word
	;.addressing	Word
	nop
	nop
	nop
loadByteUnsigned:
L_loadStoreByte_1:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	andi	%GPR1,%GPR2,$3	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR3,%GPR1,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subu	%GPR3,%GPR0,%GPR3	
	nop
	nop
	nop
	lhi	%GPR1,$65535	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$-4	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	and	%GPR1,%GPR2,%GPR1	
	nop
	nop
	nop
	slli	%GPR2,%GPR3,$3	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sra	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	andi	%GPR28,%GPR1,$255	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_loadStoreByte_2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_loadStoreByte_2:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	nop
	nop
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
loadByteSigned:
L_loadStoreByte_3:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	andi	%GPR1,%GPR2,$3	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR3,%GPR1,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subu	%GPR3,%GPR0,%GPR3	
	nop
	nop
	nop
	lhi	%GPR1,$65535	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$-4	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	and	%GPR1,%GPR2,%GPR1	
	nop
	nop
	nop
	slli	%GPR2,%GPR3,$3	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sra	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	andi	%GPR1,%GPR1,$255	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	slli	%GPR1,%GPR1,$24	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	srai	%GPR28,%GPR1,$24	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_loadStoreByte_4	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_loadStoreByte_4:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	nop
	nop
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
storeByte:
L_loadStoreByte_5:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR1,%GPR0	
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	andi	%GPR1,%GPR3,$3	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	andi	%GPR4,%GPR3,$3	
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$3	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%GPR4,%GPR4,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subu	%GPR4,%GPR0,%GPR4	
	nop
	nop
	nop
	sub	%GPR5,%GPR5,%GPR1	
	nop
	nop
	nop
	lhi	%GPR1,$65535	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$-4	
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$255	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	and	%GPR1,%GPR3,%GPR1	
	nop
	nop
	nop
	slli	%GPR3,%GPR4,$3	
	nop
	nop
	nop
	slli	%GPR4,%GPR5,$3	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lw	%GPR28,0(%GPR1)	
	nop
	nop
	nop
	sll	%GPR2,%GPR2,%GPR3	
	nop
	nop
	nop
	sll	%GPR3,%GPR6,%GPR4	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR3,%GPR3,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subu	%GPR3,%GPR0,%GPR3	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	and	%GPR28,%GPR28,%GPR3	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	or	%GPR28,%GPR28,%GPR2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR28	
	nop
	nop
	nop
	j	L_loadStoreByte_6	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_loadStoreByte_6:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	nop
	nop
	jr	%GPR31	
	nop
	nop
	nop
	.section	.data
	;.global	_array
	.align	4
_array:
	.data.32	45
	.data.32	75
	.data.32	342
	.data.32	54
	.data.32	7
	.data.32	86
	.data.32	92
	.data.32	235
	.data.32	4
	.data.32	42
	.data.32	99
	.data.32	78
	.data.32	63
	.data.32	352
	.data.32	21
	.data.32	634
	.data.32	6
	.data.32	77
	.data.32	346
	.data.32	23
L_main_1:
	.data.8	65
	.data.8	114
	.data.8	114
	.data.8	97
	.data.8	121
	.data.8	58
	.space	1
L_main_2:
	.data.8	13
	.data.8	10
	.space	1
L_main_3:
	.data.8	32
	.space	1
L_main_4:
	.data.8	13
	.data.8	10
	.space	1
L_main_5:
	.data.8	66
	.data.8	117
	.data.8	98
	.data.8	98
	.data.8	108
	.data.8	101
	.data.8	83
	.data.8	111
	.data.8	114
	.data.8	116
	.data.8	58
	.data.8	32
	.data.8	115
	.data.8	111
	.data.8	114
	.data.8	116
	.data.8	105
	.data.8	110
	.data.8	103
	.data.8	46
	.data.8	46
	.data.8	46
	.data.8	13
	.data.8	10
	.space	1
L_main_6:
	.data.8	65
	.data.8	114
	.data.8	114
	.data.8	97
	.data.8	121
	.data.8	32
	.data.8	83
	.data.8	111
	.data.8	114
	.data.8	116
	.data.8	101
	.data.8	100
	.data.8	58
	.data.8	32
	.space	1
L_main_7:
	.data.8	78
	.data.8	79
	.data.8	33
	.data.8	33
	.data.8	32
	.data.8	32
	.data.8	32
	.data.8	69
	.data.8	82
	.data.8	82
	.data.8	79
	.data.8	82
	.data.8	33
	.data.8	33
	.space	1
L_main_8:
	.data.8	89
	.data.8	69
	.data.8	83
	.space	1
L_main_9:
	.data.8	13
	.data.8	10
	.data.8	78
	.data.8	117
	.data.8	109
	.data.8	98
	.data.8	101
	.data.8	114
	.data.8	32
	.data.8	111
	.data.8	102
	.data.8	32
	.data.8	99
	.data.8	121
	.data.8	99
	.data.8	108
	.data.8	101
	.data.8	115
	.data.8	32
	.data.8	110
	.data.8	101
	.data.8	101
	.data.8	100
	.data.8	101
	.data.8	100
	.data.8	58
	.data.8	32
	.space	1
L_main_10:
	.data.8	13
	.data.8	10
	.space	1
	.section	.text
	.addressing	Word
	;.addressing	Word
printArray:
L_main_11:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$48	
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L_main_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_main_1	%0x10000)
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-36(%GPR30),%GPR2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-40(%GPR30),%GPR1	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L_main_12:
	nop
	nop
	nop
	lw	%GPR1,-40(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	andi	%GPR1,%GPR1,$7	
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	bnez	%GPR27,L_main_13	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_main_14	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_main_13:
	nop
	nop
	nop
	lhi	%GPR1,$( L_main_2	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_main_2	%0x10000)
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 28 NOPs removed by reduceNOPs.sh
L_main_14:
	nop
	nop
	nop
	lw	%GPR4,-40(%GPR30)	
	nop
	nop
	nop
	lhi	%GPR1,$( _array	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _array	%0x10000)
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$4	
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$32	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	mult	%GPR3,%GPR4,%GPR3	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR3	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	intToStr	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR1,%GPR30,$32	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L_main_3	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_main_3	%0x10000)
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%GPR2,-40(%GPR30)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sgt	%GPR27,%GPR2,%GPR1	
	nop
	nop
	nop
	bnez	%GPR27,L_main_15	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_main_19	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_main_15:
	nop
	nop
	nop
	lw	%GPR1,-40(%GPR30)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$( _array	/0x10000)
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$( _array	%0x10000)
	nop
	nop
	nop
	subi	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$4	
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop
	nop
	nop
	lhi	%GPR5,$( _array	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _array	%0x10000)
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	mult	%GPR1,%GPR1,%GPR3	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR3,-40(%GPR30)	
	nop
	nop
	nop
	add	%GPR1,%GPR2,%GPR1	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	mult	%GPR3,%GPR3,%GPR4	
	nop
	nop
	nop
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR5,%GPR3	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR2)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sleu	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	bnez	%GPR27,L_main_16	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_main_17	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_main_16:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	j	L_main_18	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L_main_17:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L_main_18:
	nop
	nop
	nop
	lw	%GPR2,-36(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	and	%GPR1,%GPR2,%GPR1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-36(%GPR30),%GPR1	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L_main_19:
	nop
	nop
	nop
	lw	%GPR1,-40(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	sw	-40(%GPR30),%GPR1	
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$20	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR2,%GPR1	
	nop
	nop
	nop
	bnez	%GPR27,L_main_12	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_main_20	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_main_20:
	nop
	nop
	nop
	lhi	%GPR1,$( L_main_4	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_main_4	%0x10000)
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR28,-36(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_main_21	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_main_21:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	nop
	nop
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh


bubbleSort:
	sw      -4(%r29), %r30
	nop
	nop
	nop
        sw      0(%r29), %r31
	nop
	nop
	nop
        subui   %r30, %r29, $4
	nop
	nop
	nop
        subi    %r29, %r29, $(4 + 10*4)
	nop
	nop
	nop

	; Save Registers 
	sw	 0(%r29), %r1		; r1 is used for comparing-results and for temporary stuff.
	sw	 4(%r29), %r2		; r2 is the parameter value "startIndex".
	sw	 8(%r29), %r3		; r3 is the parameter value "endIndex".
	sw	12(%r29), %r4		; r4 is the loop-variable "i".
	sw	16(%r29), %r5		; r5 is the loop-variable "j".
	sw	20(%r29), %r6		; r6 is the loop-end "innerLoopEnd".
	sw	24(%r29), %r7		; r7 is "next_j".
	sw	28(%r29), %r8		; r8 is "value_j".
	sw	32(%r29), %r9		; r9 is "value_next_j".
	sw	36(%r29), %r10		; r10 is the start address of 'array'.
	nop

	addi	%r3, %r2, $0
	addi	%r2, %r1, $0	
	lhi	%r10, $(_array/65536)&0xffff
	nop
	nop
	nop
	addui	%r10, %r10, $(_array&0xffff)
	slli	%r6, %r3, $2		; innerLoopEnd = array+endIndex;
	nop
	nop
	nop
	add	%r6, %r6, %r10
	add	%r4, %r2, %r0		; i = startIndex;
	nop
	nop
	nop


	;; #############################
	;; # ADD YOUR IMPLEMENTATION HERE
	;; #############################
OuterLoop_Start:
	sltu	%r1, %r4, %r3		; while (i < endIndex) {
	nop
	nop
	nop
	beqz	%r1, OuterLoop_End
	nop

	slli	%r5, %r2, $2		; j = array+startIndex;
	nop
	nop
	nop
	add	%r5, %r5, %r10

	nop
	nop
	nop
	lw	%r8, 0(%r5)		; value_j = *j;

	add	%r7, %r5, %r0		; next_j = j;

InnerLoop_Start:
	sltu	%r1, %r5, %r6		; while (j < innerLoopEnd) {
	nop
	nop
	nop
	beqz	%r1, InnerLoop_End
	nop

	addi	%r7, %r7, $4		; next_j++;

	nop
	nop
	nop
	lw	%r9, 0(%r7)		; value_next_j = *next_j;

	nop
	nop
	nop
	sltu	%r1, %r9, %r8		; if (value_next_j < value_j) {
	nop
	nop
	nop
	beqz	%r1, SkipExchange
	nop

	add	%r1, %r0, %r8		; tmp = value_j;
	sw	0(%r5), %r9		; *j = value_next_j;
	add	%r8, %r0, %r9		; value_j = value_next_j;
	nop
	sw	0(%r7), %r1		; *next_j = tmp;

	add	%r9, %r0, %r1		; value_next_j = tmp;
	nop
	nop

SkipExchange:
	add	%r5, %r0, %r7		; j = next_j;

	add	%r8, %r0, %r9		; value_j = value_next_j;

	j	InnerLoop_Start		; }
	nop

InnerLoop_End:
	subi	%r6, %r6, $4		; innerLoopEnd--;

	addi	%r4, %r4, $1		; i++;

	j	OuterLoop_Start		; }
	nop

OuterLoop_End:


	; Restore the saved registers
	lw	%r1,   0(%r29)
	lw	%r2,   4(%r29)
	lw	%r3,   8(%r29)
	lw	%r4,  12(%r29)
	lw	%r5,  16(%r29)
	lw	%r6,  20(%r29)
	lw	%r7,  24(%r29)
	lw	%r8,  28(%r29)
	lw	%r9,  32(%r29)
	lw	%r10, 36(%r29)

	lw      %r31, 4(%r30)
	nop
	nop
	nop
        addui   %r29, %r29, $(12 + 10*4)
	nop
	nop
	nop
        lw      %r30, 0(%r30)      
	nop
	nop
	nop
        jr      %r31
	nop
	nop


main:
L_main_31:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$48	
	nop
	nop
	nop
	; Automatically 28 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L_main_5	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_main_5	%0x10000)
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 13 NOPs removed by reduceNOPs.sh


	nop
	nop
	nop
	lhi	%GPR1,$0x100
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%GPR1, 0(%GPR1)
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-36(%GPR30),%GPR1	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$19	
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	bubbleSort	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 29 NOPs removed by reduceNOPs.sh


	nop
	nop
	nop
	lhi	%GPR1,$0x100
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%GPR1, 0(%GPR1)
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
	lw	%GPR2,-36(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sub	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-36(%GPR30),%GPR1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	printArray	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L_main_6	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_main_6	%0x10000)
	nop
	nop
	nop
	sw	-40(%GPR30),%GPR28	
	nop
	nop
	nop
	; Automatically 32 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%GPR2,-40(%GPR30)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR2,%GPR1	
	nop
	nop
	nop
	bnez	%GPR27,L_main_32	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_main_33	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_main_32:
	nop
	nop
	nop
	lhi	%GPR1,$( L_main_7	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_main_7	%0x10000)
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_main_34	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L_main_33:
	nop
	nop
	nop
	lhi	%GPR1,$( L_main_8	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_main_8	%0x10000)
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 28 NOPs removed by reduceNOPs.sh
L_main_34:
	nop
	nop
	nop
	lhi	%GPR1,$( L_main_9	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_main_9	%0x10000)
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-36(%GPR30)	
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$32	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	intToStr	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR1,%GPR30,$32	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L_main_10	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_main_10	%0x10000)
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L_main_35	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L_main_35:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
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
