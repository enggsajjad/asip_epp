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
	nop
intToStr:
L_intToStr_1:
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
	subi	%GPR29,%GPR29,$56	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-36(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	sw	-40(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 40 NOPs removed by reduceNOPs.sh
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
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	sw	-44(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
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
	sw	-48(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	lw	%GPR2,-36(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_intToStr_2	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_intToStr_3	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_intToStr_2:
	nop
	nop
	nop
	nop
	lw	%GPR1,-36(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sub	%GPR1,%GPR0,%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$45	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	-36(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lw	%GPR1,-40(%GPR30)	
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
	jal	storeByte	
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
	lw	%GPR1,-44(%GPR30)	
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
	sw	-44(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	j	L_intToStr_5	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
L_intToStr_3:
	nop
	nop
	nop
	nop
	lw	%GPR2,-36(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_intToStr_4	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_intToStr_6	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_intToStr_4:
	nop
	nop
	nop
	nop
	lw	%GPR1,-40(%GPR30)	
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
	ori	%GPR2,%GPR2,$48	
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
	jal	storeByte	
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
	lw	%GPR1,-44(%GPR30)	
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
	sw	-44(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
L_intToStr_5:
	nop
	nop
	nop
	nop
	lw	%GPR2,-36(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_intToStr_6	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_intToStr_7	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_intToStr_6:
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$32	
	nop
	nop
	nop
	nop
	lw	%GPR3,-48(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR3	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$10	
	nop
	nop
	nop
	nop
	lw	%GPR3,-36(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	MOD	%GPR2,%GPR3,%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR2,%GPR2,$48	
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
	jal	storeByte	
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
	lw	%GPR1,-48(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lw	%GPR2,-36(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-48(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$10	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	div	%GPR1,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-36(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	j	L_intToStr_5	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
L_intToStr_7:
	nop
	nop
	nop
	nop
	lw	%GPR2,-48(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sgt	%GPR27,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_intToStr_8	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_intToStr_9	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_intToStr_8:
	nop
	nop
	nop
	nop
	lw	%GPR2,-48(%GPR30)	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$32	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	subi	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	sw	-48(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 40 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	loadByteUnsigned	
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
	lw	%GPR1,-40(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR3,-44(%GPR30)	
	nop
	nop
	nop
	nop
	add	%GPR2,%GPR28,%GPR0	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR3	
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
	jal	storeByte	
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
	lw	%GPR1,-44(%GPR30)	
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
	sw	-44(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	j	L_intToStr_7	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
L_intToStr_9:
	nop
	nop
	nop
	nop
	lw	%GPR1,-40(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR2,-44(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
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
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	storeByte	
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
	; Automatically 45 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_intToStr_10	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_intToStr_10:
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
	nop
	jr	%GPR31	
	nop
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
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	; Automatically 60 NOPs removed by reduceNOPs.sh
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
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$222	


	nop
	nop
	nop
	nop
	lhi	%GPR5, $0x200
	nop
	nop
	nop
	nop
	; Automatically 11 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
	nop
	; Automatically 25 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$4	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR5), %GPR3



	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR5), %GPR1

	nop
	nop
	nop
	nop
	; Automatically 25 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$18	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR5), %GPR3

	nop
	nop
	nop
	nop
	; Automatically 25 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$18	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$1	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR5), %GPR3

	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR4,%GPR4,%GPR3	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$73	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR5), %GPR3

	nop
	nop
	nop
	nop
	add	%GPR4,%GPR4,%GPR3	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR5), %GPR4

	nop
	nop
	nop
	nop
	; Automatically 25 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$65535	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$-1	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
L_lib_lcd_3:
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
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
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR5), %GPR2

	nop
	nop
	nop
	nop
	addi	%GPR3,%GPR1,$1	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR5), %GPR3

	nop
	nop
	nop
	nop
	; Automatically 25 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$6	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR5), %GPR2



	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR3,0(%GPR5)
	nop
	nop
	nop
	nop
	; Automatically 11 NOPs removed by reduceNOPs.sh



	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR3,0(%GPR5)
	nop
	nop
	nop
	nop
	; Automatically 11 NOPs removed by reduceNOPs.sh



	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR5)
	nop
	nop
	nop
	nop
	; Automatically 11 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
	nop
	add	%GPR4,%GPR3,%GPR2	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR5)
	nop
	nop
	nop
	nop
	; Automatically 11 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
	nop
	add	%GPR4,%GPR4,%GPR2	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR3,0(%GPR5)
	nop
	nop
	nop
	nop
	; Automatically 11 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
	nop
	add	%GPR4,%GPR4,%GPR3	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR3,0(%GPR5)
	nop
	nop
	nop
	nop
	; Automatically 11 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
	nop
	; Automatically 25 NOPs removed by reduceNOPs.sh
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$256	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	MOD	%GPR4,%GPR4,%GPR6	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR4,%GPR3	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_lib_lcd_4	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_5	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_4:
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$4	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR5), %GPR3



	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR5), %GPR1

	nop
	nop
	nop
	nop
	; Automatically 25 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$18	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR5), %GPR3

	nop
	nop
	nop
	nop
	; Automatically 25 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$18	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$1	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR5), %GPR3

	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR4,%GPR4,%GPR3	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$82	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR5), %GPR3

	nop
	nop
	nop
	nop
	add	%GPR4,%GPR4,%GPR3	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR5), %GPR4

	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
L_lib_lcd_5:
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$65535	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$-1	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR4,%GPR3	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_lib_lcd_3	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_6	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_6:
	nop
	nop
	nop
	nop
	add	%GPR28,%GPR2,%GPR0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_7	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_7:
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
	nop
	jr	%GPR31	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
getbytes:
L_lib_lcd_8:
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
	subi	%GPR29,%GPR29,$36	
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
	sw	-8(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 40 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$222	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-12(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR1	


	nop
	nop
	nop
	nop
	lhi	%GPR1, $0x200
	nop
	nop
	nop
	nop
	; Automatically 11 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	sw	-20(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2), %GPR1

	nop
	nop
	nop
	nop
	lw	%GPR1,-12(%GPR30)	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2), %GPR1

	nop
	nop
	nop
	nop
	; Automatically 25 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$18	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2), %GPR1

	nop
	nop
	nop
	nop
	; Automatically 25 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-24(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$18	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-28(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lw	%GPR1,-24(%GPR30)	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2), %GPR1

	nop
	nop
	nop
	nop
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	lw	%GPR1,-28(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	lw	%GPR2,-20(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	-28(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$83	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2), %GPR1

	nop
	nop
	nop
	nop
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	lw	%GPR1,-28(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	lw	%GPR2,-20(%GPR30)	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2), %GPR1

	nop
	nop
	nop
	nop
	; Automatically 25 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$65535	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$-1	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
L_lib_lcd_9:
	nop
	nop
	nop
	nop
	lw	%GPR2,-20(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2), %GPR1

	nop
	nop
	nop
	nop
	lw	%GPR1,-12(%GPR30)	
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
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2), %GPR1

	nop
	nop
	nop
	nop
	lw	%GPR1,-8(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$4	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2), %GPR1

	nop
	nop
	nop
	nop
	add	%GPR1,%GPR2,%GPR0	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)
	nop
	nop
	nop
	nop
	; Automatically 11 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
	nop
	add	%GPR1,%GPR2,%GPR0	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)
	nop
	nop
	nop
	nop
	; Automatically 11 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
	nop
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	lw	%GPR1,-20(%GPR30)	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)
	nop
	nop
	nop
	nop
	; Automatically 11 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
	nop
	add	%GPR1,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-28(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
L_lib_lcd_10:
	nop
	nop
	nop
	nop
	lw	%GPR1,-16(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR2,-8(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_lib_lcd_11	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_12	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_11:
	nop
	nop
	nop
	nop
	lw	%GPR1,-20(%GPR30)	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)
	nop
	nop
	nop
	nop
	; Automatically 11 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
	nop
	sw	-24(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR1,-4(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	lw	%GPR2,-24(%GPR30)	
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
	jal	storeByte	
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
	lw	%GPR1,-28(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR2,-24(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-28(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lw	%GPR1,-16(%GPR30)	
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
	sw	-16(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	j	L_lib_lcd_10	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
L_lib_lcd_12:
	nop
	nop
	nop
	nop
	lw	%GPR1,-20(%GPR30)	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)
	nop
	nop
	nop
	nop
	; Automatically 11 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
	nop
	lw	%GPR2,-28(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	andi	%GPR2,%GPR2,$255	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-28(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	sne	%GPR27,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_lib_lcd_13	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_14	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_13:
	nop
	nop
	nop
	nop
	lw	%GPR2,-20(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2), %GPR1

	nop
	nop
	nop
	nop
	lw	%GPR1,-12(%GPR30)	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2), %GPR1

	nop
	nop
	nop
	nop
	; Automatically 25 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$18	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2), %GPR1

	nop
	nop
	nop
	nop
	; Automatically 25 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-24(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$18	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-28(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lw	%GPR1,-24(%GPR30)	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2), %GPR1

	nop
	nop
	nop
	nop
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	lw	%GPR1,-28(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	lw	%GPR2,-20(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	-28(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$82	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2), %GPR1

	nop
	nop
	nop
	nop
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	lw	%GPR1,-28(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	lw	%GPR2,-20(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	-28(%GPR30),%GPR1	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2), %GPR1

	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
L_lib_lcd_14:
	nop
	nop
	nop
	nop
	lw	%GPR2,-28(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$65535	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$-1	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_lib_lcd_9	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_15	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_15:
	nop
	nop
	nop
	nop
	lw	%GPR28,-16(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_16	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_16:
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
	nop
	jr	%GPR31	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
sendcommand:
L_lib_lcd_17:
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
	subi	%GPR29,%GPR29,$52	
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
	sw	-8(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	sw	-12(%GPR30),%GPR5	
	nop
	nop
	nop
	nop
	sw	-16(%GPR30),%GPR6	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	-20(%GPR30),%GPR3	
	nop
	nop
	nop
	nop
	sw	-24(%GPR30),%GPR4	


	nop
	nop
	nop
	nop
	lhi	%GPR1, $0x200
	nop
	nop
	nop
	nop
	; Automatically 11 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
	nop
	sw	-28(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR7,%GPR0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	slli	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-32(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$3	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-36(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
L_lib_lcd_18:
	nop
	nop
	nop
	nop
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR1,-12(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR2,%GPR0	
	nop
	nop
	nop
	nop
	sw	-40(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	lw	%GPR2,-12(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR2,%GPR3	
	nop
	nop
	nop
	nop
	lw	%GPR3,-36(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR2,%GPR3	
	nop
	nop
	nop
	nop
	lw	%GPR3,-28(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	addi	%GPR2,%GPR2,$3	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3), %GPR2

	nop
	nop
	nop
	nop
	lw	%GPR2,-32(%GPR30)	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3), %GPR2

	nop
	nop
	nop
	nop
	; Automatically 25 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$17	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3), %GPR2

	nop
	nop
	nop
	nop
	lw	%GPR3,-16(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR2,-12(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR2,%GPR3	
	nop
	nop
	nop
	nop
	lw	%GPR3,-36(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR2,%GPR3	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$17	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-44(%GPR30),%GPR3	
	nop
	nop
	nop
	nop
	lw	%GPR3,-28(%GPR30)	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3), %GPR2

	nop
	nop
	nop
	nop
	lw	%GPR3,-44(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR3,%GPR2	
	nop
	nop
	nop
	nop
	lw	%GPR3,-28(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	-44(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$27	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3), %GPR2

	nop
	nop
	nop
	nop
	lw	%GPR3,-44(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR3,%GPR2	
	nop
	nop
	nop
	nop
	lw	%GPR3,-28(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	-44(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	lw	%GPR2,-4(%GPR30)	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3), %GPR2

	nop
	nop
	nop
	nop
	lw	%GPR3,-44(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR3,%GPR2	
	nop
	nop
	nop
	nop
	lw	%GPR3,-28(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	-44(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	lw	%GPR2,-8(%GPR30)	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3), %GPR2

	nop
	nop
	nop
	nop
	lw	%GPR3,-44(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR3,%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-44(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
L_lib_lcd_19:
	nop
	nop
	nop
	nop
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR2,%GPR3	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_lib_lcd_20	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_21	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_20:
	nop
	nop
	nop
	nop
	lw	%GPR2,-20(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR4,%GPR2,%GPR0	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$4	
	nop
	nop
	nop
	nop
	lw	%GPR2,0(%GPR2)	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR4,%GPR3	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-20(%GPR30),%GPR3	
	nop
	nop
	nop
	nop
	lw	%GPR3,-28(%GPR30)	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3), %GPR2

	nop
	nop
	nop
	nop
	lw	%GPR3,-44(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR3,%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-44(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	j	L_lib_lcd_19	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
L_lib_lcd_21:
	nop
	nop
	nop
	nop
	lw	%GPR2,-40(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR2,%GPR0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-40(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_lib_lcd_22	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_23	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_22:
	nop
	nop
	nop
	nop
	lw	%GPR1,-24(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR3,%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-24(%GPR30),%GPR2	
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
	jal	loadByteUnsigned	
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
	lw	%GPR1,-28(%GPR30)	
	nop
	nop
	nop
	nop
	add	%GPR2,%GPR28,%GPR0	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1), %GPR2

	nop
	nop
	nop
	nop
	lw	%GPR1,-44(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-44(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	j	L_lib_lcd_21	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
L_lib_lcd_23:
	nop
	nop
	nop
	nop
	lw	%GPR1,-44(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR2,-28(%GPR30)	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2), %GPR1

	nop
	nop
	nop
	nop
	lw	%GPR1,-32(%GPR30)	
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
	jal	getack	
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
	; Automatically 45 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR28,%GPR1	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_lib_lcd_18	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_24	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_24:
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_25	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_25:
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
	nop
	jr	%GPR31	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
t_print:
L_lib_lcd_26:
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
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	; Automatically 35 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	strlength	
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
	; Automatically 50 NOPs removed by reduceNOPs.sh
	lw	%GPR4,-4(%GPR30)	
	nop
	nop
	nop
	nop
	add	%GPR6,%GPR28,%GPR0	
	nop
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$84	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$90	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
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
	jal	sendcommand	
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
	; Automatically 45 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_27	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_27:
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
	nop
	jr	%GPR31	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
t_cursor:
L_lib_lcd_28:
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
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	; Automatically 50 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$4	
	nop
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$67	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$84	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
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
	jal	sendcommand	
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
	; Automatically 45 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_29	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_29:
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
	nop
	jr	%GPR31	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
t_enable:
L_lib_lcd_30:
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
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	; Automatically 70 NOPs removed by reduceNOPs.sh
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
	sne	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_lib_lcd_31	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_32	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_31:
	nop
	nop
	nop
	nop
	; Automatically 35 NOPs removed by reduceNOPs.sh
	lhi	%GPR7,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$69	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$84	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
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
	jal	sendcommand	
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
	j	L_lib_lcd_33	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
L_lib_lcd_32:
	nop
	nop
	nop
	nop
	; Automatically 35 NOPs removed by reduceNOPs.sh
	lhi	%GPR7,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$65	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$84	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
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
	jal	sendcommand	
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
L_lib_lcd_33:
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_34	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_34:
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
	nop
	jr	%GPR31	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
g_print:
L_lib_lcd_35:
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
	subi	%GPR29,%GPR29,$28	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-20(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	; Automatically 25 NOPs removed by reduceNOPs.sh
	subi	%GPR1,%GPR30,$16	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop
	nop
	nop
	nop
	subi	%GPR5,%GPR30,$16	
	nop
	nop
	nop
	nop
	srai	%GPR2,%GPR2,$8	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR4	
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$8	
	nop
	nop
	nop
	nop
	subi	%GPR4,%GPR30,$16	
	nop
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$12	
	nop
	nop
	nop
	nop
	sw	0(%GPR1),%GPR2	
	nop
	nop
	nop
	nop
	add	%GPR5,%GPR5,%GPR6	
	nop
	nop
	nop
	nop
	srai	%GPR1,%GPR3,$8	
	nop
	nop
	nop
	nop
	add	%GPR2,%GPR4,%GPR7	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	sw	0(%GPR5),%GPR3	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2),%GPR1	
	nop
	nop
	nop
	nop
	lw	%GPR1,-20(%GPR30)	
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
	jal	strlength	
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
	; Automatically 45 NOPs removed by reduceNOPs.sh
	lw	%GPR4,-20(%GPR30)	
	nop
	nop
	nop
	nop
	addi	%GPR6,%GPR28,$1	
	nop
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$16	
	nop
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$76	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$90	
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
	jal	sendcommand	
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
	; Automatically 45 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_36	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_36:
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
	nop
	jr	%GPR31	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
g_drawrect:
L_lib_lcd_37:
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
	subi	%GPR29,%GPR29,$40	
	nop
	nop
	nop
	nop
	; Automatically 55 NOPs removed by reduceNOPs.sh
	subi	%GPR5,%GPR30,$32	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	sw	-32(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$4	
	nop
	nop
	nop
	nop
	srai	%GPR1,%GPR1,$8	
	nop
	nop
	nop
	nop
	subi	%GPR7,%GPR30,$32	
	nop
	nop
	nop
	nop
	lhi	%GPR8,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$8	
	nop
	nop
	nop
	nop
	add	%GPR5,%GPR5,%GPR6	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR6,%GPR30,$32	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	sw	0(%GPR5),%GPR1	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR7,%GPR8	
	nop
	nop
	nop
	nop
	lhi	%GPR9,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$12	
	nop
	nop
	nop
	nop
	srai	%GPR7,%GPR2,$8	
	nop
	nop
	nop
	nop
	subi	%GPR5,%GPR30,$32	
	nop
	nop
	nop
	nop
	sw	0(%GPR1),%GPR2	
	nop
	nop
	nop
	nop
	add	%GPR2,%GPR6,%GPR9	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$16	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR6,%GPR30,$32	
	nop
	nop
	nop
	nop
	sw	0(%GPR2),%GPR7	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR5,%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR8,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$20	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	srai	%GPR5,%GPR3,$8	
	nop
	nop
	nop
	nop
	sw	0(%GPR1),%GPR3	
	nop
	nop
	nop
	nop
	add	%GPR3,%GPR6,%GPR8	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$32	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$24	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR5	
	nop
	nop
	nop
	nop
	subi	%GPR8,%GPR30,$32	
	nop
	nop
	nop
	nop
	add	%GPR10,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR9,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$28	
	nop
	nop
	nop
	nop
	srai	%GPR11,%GPR4,$8	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	sw	0(%GPR10),%GPR4	
	nop
	nop
	nop
	nop
	; Automatically 25 NOPs removed by reduceNOPs.sh
	add	%GPR8,%GPR8,%GPR9	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$32	
	nop
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$8	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$82	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$71	
	nop
	nop
	nop
	nop
	sw	0(%GPR8),%GPR11	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
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
	jal	sendcommand	
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
	; Automatically 45 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_38	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_38:
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
	nop
	jr	%GPR31	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
g_drawline:
L_lib_lcd_39:
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
	subi	%GPR29,%GPR29,$40	
	nop
	nop
	nop
	nop
	; Automatically 55 NOPs removed by reduceNOPs.sh
	subi	%GPR5,%GPR30,$32	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	sw	-32(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$4	
	nop
	nop
	nop
	nop
	srai	%GPR1,%GPR1,$8	
	nop
	nop
	nop
	nop
	subi	%GPR7,%GPR30,$32	
	nop
	nop
	nop
	nop
	lhi	%GPR8,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$8	
	nop
	nop
	nop
	nop
	add	%GPR5,%GPR5,%GPR6	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR6,%GPR30,$32	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	sw	0(%GPR5),%GPR1	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR7,%GPR8	
	nop
	nop
	nop
	nop
	lhi	%GPR9,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$12	
	nop
	nop
	nop
	nop
	srai	%GPR7,%GPR2,$8	
	nop
	nop
	nop
	nop
	subi	%GPR5,%GPR30,$32	
	nop
	nop
	nop
	nop
	sw	0(%GPR1),%GPR2	
	nop
	nop
	nop
	nop
	add	%GPR2,%GPR6,%GPR9	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$16	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR6,%GPR30,$32	
	nop
	nop
	nop
	nop
	sw	0(%GPR2),%GPR7	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR5,%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR8,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$20	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	srai	%GPR5,%GPR3,$8	
	nop
	nop
	nop
	nop
	sw	0(%GPR1),%GPR3	
	nop
	nop
	nop
	nop
	add	%GPR3,%GPR6,%GPR8	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$32	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$24	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR5	
	nop
	nop
	nop
	nop
	subi	%GPR8,%GPR30,$32	
	nop
	nop
	nop
	nop
	add	%GPR10,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR9,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$28	
	nop
	nop
	nop
	nop
	srai	%GPR11,%GPR4,$8	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	sw	0(%GPR10),%GPR4	
	nop
	nop
	nop
	nop
	; Automatically 25 NOPs removed by reduceNOPs.sh
	add	%GPR8,%GPR8,%GPR9	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$32	
	nop
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$8	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$68	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$71	
	nop
	nop
	nop
	nop
	sw	0(%GPR8),%GPR11	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
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
	jal	sendcommand	
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
	; Automatically 45 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_40	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_40:
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
	nop
	jr	%GPR31	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
g_makebar:
L_lib_lcd_41:
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
	subi	%GPR29,%GPR29,$68	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-56(%GPR30),%GPR7	
	nop
	nop
	nop
	nop
	sw	-60(%GPR30),%GPR10	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lhi	%GPR7,$( L_lib_lcd_1	/0x10000)
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$( L_lib_lcd_1	%0x10000)
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR7,0(%GPR7)	
	nop
	nop
	nop
	nop
	lhi	%GPR10,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$32	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR7,%GPR10	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_lib_lcd_42	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_45	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_42:
	nop
	nop
	nop
	nop
	lhi	%GPR7,$( L_lib_lcd_1	/0x10000)
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$( L_lib_lcd_1	%0x10000)
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR10,%GPR30,$52	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lw	%GPR7,0(%GPR7)	
	nop
	nop
	nop
	nop
	lhi	%GPR11,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR11,%GPR11,$4	
	nop
	nop
	nop
	nop
	subi	%GPR12,%GPR30,$52	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	sw	-52(%GPR30),%GPR7	
	nop
	nop
	nop
	nop
	add	%GPR10,%GPR10,%GPR11	
	nop
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$8	
	nop
	nop
	nop
	nop
	srai	%GPR11,%GPR1,$8	
	nop
	nop
	nop
	nop
	subi	%GPR13,%GPR30,$52	
	nop
	nop
	nop
	nop
	sw	0(%GPR10),%GPR1	
	nop
	nop
	nop
	nop
	add	%GPR7,%GPR12,%GPR7	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$12	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR10,%GPR30,$52	
	nop
	nop
	nop
	nop
	sw	0(%GPR7),%GPR11	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR13,%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR12,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR12,%GPR12,$16	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	srai	%GPR7,%GPR2,$8	
	nop
	nop
	nop
	nop
	sw	0(%GPR1),%GPR2	
	nop
	nop
	nop
	nop
	add	%GPR2,%GPR10,%GPR12	
	nop
	nop
	nop
	nop
	subi	%GPR11,%GPR30,$52	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$20	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2),%GPR7	
	nop
	nop
	nop
	nop
	subi	%GPR10,%GPR30,$52	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR11,%GPR1	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR12,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR12,%GPR12,$24	
	nop
	nop
	nop
	nop
	srai	%GPR2,%GPR3,$8	
	nop
	nop
	nop
	nop
	sw	0(%GPR1),%GPR3	
	nop
	nop
	nop
	nop
	subi	%GPR7,%GPR30,$52	
	nop
	nop
	nop
	nop
	add	%GPR3,%GPR10,%GPR12	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$28	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR10,%GPR30,$52	
	nop
	nop
	nop
	nop
	sw	0(%GPR3),%GPR2	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR7,%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR11,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR11,%GPR11,$32	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	srai	%GPR2,%GPR4,$8	
	nop
	nop
	nop
	nop
	sw	0(%GPR1),%GPR4	
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR10,%GPR11	
	nop
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$52	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$36	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4),%GPR2	
	nop
	nop
	nop
	nop
	subi	%GPR7,%GPR30,$52	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR3,%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR10,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$40	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR2,%GPR30,$52	
	nop
	nop
	nop
	nop
	sw	0(%GPR1),%GPR5	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR7,%GPR10	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$44	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR4,%GPR30,$52	
	nop
	nop
	nop
	nop
	sw	0(%GPR1),%GPR6	
	nop
	nop
	nop
	nop
	add	%GPR11,%GPR2,%GPR3	
	nop
	nop
	nop
	nop
	lhi	%GPR10,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$48	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR10,%GPR4,%GPR10	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR11),%GPR8	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$52	
	nop
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$13	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$82	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$66	
	nop
	nop
	nop
	nop
	sw	0(%GPR10),%GPR9	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
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
	jal	sendcommand	
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
	; Automatically 30 NOPs removed by reduceNOPs.sh
	lw	%GPR2,-60(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_lib_lcd_43	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_44	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_43:
	nop
	nop
	nop
	nop
	lhi	%GPR1,$( L_lib_lcd_1	/0x10000)
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L_lib_lcd_1	%0x10000)
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR8,0(%GPR1)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$52	
	nop
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	nop
	nop
	nop
	nop
	sw	-52(%GPR30),%GPR8	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$66	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$65	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
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
	jal	sendcommand	
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
L_lib_lcd_44:
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L_lib_lcd_1	/0x10000)
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L_lib_lcd_1	%0x10000)
	nop
	nop
	nop
	nop
	lhi	%GPR2,$( L_lib_lcd_1	/0x10000)
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$( L_lib_lcd_1	%0x10000)
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$( L_lib_lcd_1	/0x10000)
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$( L_lib_lcd_1	%0x10000)
	nop
	nop
	nop
	nop
	lw	%GPR4,0(%GPR1)	
	nop
	nop
	nop
	nop
	lw	%GPR1,0(%GPR2)	
	nop
	nop
	nop
	nop
	subi	%GPR8,%GPR30,$52	
	nop
	nop
	nop
	nop
	lhi	%GPR9,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$4	
	nop
	nop
	nop
	nop
	addi	%GPR2,%GPR4,$1	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	add	%GPR8,%GPR8,%GPR9	
	nop
	nop
	nop
	nop
	sw	0(%GPR3),%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-52(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lw	%GPR9,-56(%GPR30)	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$52	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$2	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$65	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$66	
	nop
	nop
	nop
	nop
	sw	0(%GPR8),%GPR9	
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
	jal	sendcommand	
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
	lhi	%GPR1,$( L_lib_lcd_1	/0x10000)
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L_lib_lcd_1	%0x10000)
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR28,%GPR1,$1	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_46	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_45:
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$65535	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$-1	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_46	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_46:
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
	nop
	jr	%GPR31	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
g_setbar:
L_lib_lcd_47:
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
	subi	%GPR29,%GPR29,$16	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR8,%GPR2,%GPR0	
	nop
	nop
	nop
	nop
	; Automatically 25 NOPs removed by reduceNOPs.sh
	subi	%GPR4,%GPR30,$8	
	nop
	nop
	nop
	nop
	sw	-8(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR9,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$4	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR9,%GPR4,%GPR9	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$8	
	nop
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$2	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$65	
	nop
	nop
	nop
	nop
	sw	0(%GPR9),%GPR8	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$66	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
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
	jal	sendcommand	
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
	; Automatically 45 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_48	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_48:
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
	nop
	jr	%GPR31	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
g_makeswitch:
L_lib_lcd_49:
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
	subi	%GPR29,%GPR29,$52	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-44(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	; Automatically 25 NOPs removed by reduceNOPs.sh
	subi	%GPR1,%GPR30,$40	
	nop
	nop
	nop
	nop
	sw	-40(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR8,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$4	
	nop
	nop
	nop
	nop
	srai	%GPR2,%GPR2,$8	
	nop
	nop
	nop
	nop
	subi	%GPR9,%GPR30,$40	
	nop
	nop
	nop
	nop
	lhi	%GPR10,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$8	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR1,%GPR8	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR8,%GPR30,$40	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR9,%GPR10	
	nop
	nop
	nop
	nop
	lhi	%GPR11,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR11,%GPR11,$12	
	nop
	nop
	nop
	nop
	srai	%GPR9,%GPR3,$8	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$40	
	nop
	nop
	nop
	nop
	sw	0(%GPR1),%GPR3	
	nop
	nop
	nop
	nop
	add	%GPR3,%GPR8,%GPR11	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$16	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR8,%GPR30,$40	
	nop
	nop
	nop
	nop
	sw	0(%GPR3),%GPR9	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR10,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$20	
	nop
	nop
	nop
	nop
	srai	%GPR3,%GPR4,$8	
	nop
	nop
	nop
	nop
	sw	0(%GPR1),%GPR4	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$40	
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR8,%GPR10	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$24	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR8,%GPR30,$40	
	nop
	nop
	nop
	nop
	sw	0(%GPR4),%GPR3	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR9,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$28	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$40	
	nop
	nop
	nop
	nop
	sw	0(%GPR1),%GPR5	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$32	
	nop
	nop
	nop
	nop
	srai	%GPR3,%GPR5,$8	
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR8,%GPR9	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
	subi	%GPR5,%GPR30,$40	
	nop
	nop
	nop
	nop
	sw	0(%GPR4),%GPR3	
	nop
	nop
	nop
	nop
	lhi	%GPR8,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$36	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR6	
	nop
	nop
	nop
	nop
	add	%GPR2,%GPR5,%GPR8	
	nop
	nop
	nop
	nop
	lw	%GPR1,-44(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2),%GPR7	
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
	jal	strlength	
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
	; Automatically 45 NOPs removed by reduceNOPs.sh
	lw	%GPR4,-44(%GPR30)	
	nop
	nop
	nop
	nop
	addi	%GPR6,%GPR28,$1	
	nop
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$40	
	nop
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$10	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$75	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$65	
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
	jal	sendcommand	
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
	; Automatically 45 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_50	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_50:
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
	nop
	jr	%GPR31	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
g_makemenubutton:
L_lib_lcd_51:
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
	subi	%GPR29,%GPR29,$60	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-52(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	sw	-4(%GPR30),%GPR9	
	nop
	nop
	nop
	nop
	; Automatically 25 NOPs removed by reduceNOPs.sh
	subi	%GPR1,%GPR30,$48	
	nop
	nop
	nop
	nop
	sw	-48(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR9,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$4	
	nop
	nop
	nop
	nop
	srai	%GPR2,%GPR2,$8	
	nop
	nop
	nop
	nop
	subi	%GPR10,%GPR30,$48	
	nop
	nop
	nop
	nop
	lhi	%GPR11,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR11,%GPR11,$8	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR1,%GPR9	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR9,%GPR30,$48	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR10,%GPR11	
	nop
	nop
	nop
	nop
	lhi	%GPR12,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR12,%GPR12,$12	
	nop
	nop
	nop
	nop
	srai	%GPR10,%GPR3,$8	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$48	
	nop
	nop
	nop
	nop
	sw	0(%GPR1),%GPR3	
	nop
	nop
	nop
	nop
	add	%GPR3,%GPR9,%GPR12	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$16	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR9,%GPR30,$48	
	nop
	nop
	nop
	nop
	sw	0(%GPR3),%GPR10	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR11,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR11,%GPR11,$20	
	nop
	nop
	nop
	nop
	srai	%GPR3,%GPR4,$8	
	nop
	nop
	nop
	nop
	sw	0(%GPR1),%GPR4	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$48	
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR9,%GPR11	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$24	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR9,%GPR30,$48	
	nop
	nop
	nop
	nop
	sw	0(%GPR4),%GPR3	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR10,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$28	
	nop
	nop
	nop
	nop
	srai	%GPR3,%GPR5,$8	
	nop
	nop
	nop
	nop
	sw	0(%GPR1),%GPR5	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$48	
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR9,%GPR10	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$32	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4),%GPR3	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
	subi	%GPR5,%GPR30,$48	
	nop
	nop
	nop
	nop
	lhi	%GPR9,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$36	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$40	
	nop
	nop
	nop
	nop
	sw	0(%GPR1),%GPR6	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$48	
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR5,%GPR9	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR2,%GPR3	
	nop
	nop
	nop
	nop
	sw	0(%GPR4),%GPR7	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR8	
	nop
	nop
	nop
	nop
	lw	%GPR1,-52(%GPR30)	
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
	jal	strlength	
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
	; Automatically 45 NOPs removed by reduceNOPs.sh
	lw	%GPR4,-52(%GPR30)	
	nop
	nop
	nop
	nop
	addi	%GPR6,%GPR28,$1	
	nop
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$48	
	nop
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$11	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$77	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$65	
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
	jal	sendcommand	
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
	; Automatically 30 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-4(%GPR30)	
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
	sgt	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_lib_lcd_52	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_53	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_52:
	nop
	nop
	nop
	nop
	; Automatically 30 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$4	
	nop
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$89	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$78	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
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
	jal	sendcommand	
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
L_lib_lcd_53:
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_54	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_54:
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
	nop
	jr	%GPR31	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
g_makeradiogroup:
L_lib_lcd_55:
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
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	; Automatically 50 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$4	
	nop
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$82	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$65	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
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
	jal	sendcommand	
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
	; Automatically 45 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_56	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_56:
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
	nop
	jr	%GPR31	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
d_clear:
L_lib_lcd_57:
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
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	; Automatically 75 NOPs removed by reduceNOPs.sh
	lhi	%GPR7,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$76	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$68	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
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
	jal	sendcommand	
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
	; Automatically 45 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_58	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_58:
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
	nop
	jr	%GPR31	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
strlength:
L_lib_lcd_59:
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
	subi	%GPR29,%GPR29,$16	
	nop
	nop
	nop
	nop
	; Automatically 55 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-8(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
L_lib_lcd_60:
	nop
	nop
	nop
	nop
	lw	%GPR1,-4(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR3,%GPR2	
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
	jal	loadByteUnsigned	
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
	; Automatically 45 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR28,%GPR1	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_lib_lcd_61	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_62	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_61:
	nop
	nop
	nop
	nop
	lw	%GPR1,-8(%GPR30)	
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
	sw	-8(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	j	L_lib_lcd_60	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
L_lib_lcd_62:
	nop
	nop
	nop
	nop
	lw	%GPR28,-8(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 40 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_63	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_63:
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
	nop
	jr	%GPR31	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
wait:
L_lib_lcd_64:
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
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	; Automatically 70 NOPs removed by reduceNOPs.sh
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
	; Automatically 15 NOPs removed by reduceNOPs.sh
L_lib_lcd_65:
	nop
	nop
	nop
	nop
	add	%GPR3,%GPR2,%GPR0	
	nop
	nop
	nop
	nop
	addi	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR3,%GPR1	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_lib_lcd_65	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_66	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_66:
	nop
	nop
	nop
	nop
	subi	%GPR28,%GPR2,$1	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_67	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_67:
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
	nop
	jr	%GPR31	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
getack:
L_lib_lcd_68:
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
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	; Automatically 51 NOPs removed by reduceNOPs.sh


	nop
	nop
	nop
	nop
	lhi	%GPR2, $0x200
	nop
	nop
	nop
	nop
	; Automatically 11 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
	nop
	; Automatically 25 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2), %GPR3

	nop
	nop
	nop
	nop
	addi	%GPR1,%GPR1,$1	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2), %GPR1

	nop
	nop
	nop
	nop
	; Automatically 25 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$1	


	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2), %GPR1



	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR2)
	nop
	nop
	nop
	nop
	; Automatically 11 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
	nop
	; Automatically 25 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$15	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_lib_lcd_69	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_70	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_69:
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$1	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_71	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_70:
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_71	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_71:
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
	nop
	jr	%GPR31	
	nop
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
	nop
loadByteUnsigned:
L_loadStoreByte_1:
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
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	andi	%GPR1,%GPR2,$3	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR3,%GPR1,$1	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	subu	%GPR3,%GPR0,%GPR3	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$65535	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$-4	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	and	%GPR1,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
	slli	%GPR2,%GPR3,$3	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sra	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	andi	%GPR28,%GPR1,$255	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_loadStoreByte_2	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_loadStoreByte_2:
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
	nop
	jr	%GPR31	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
loadByteSigned:
L_loadStoreByte_3:
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
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	andi	%GPR1,%GPR2,$3	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR3,%GPR1,$1	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	subu	%GPR3,%GPR0,%GPR3	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$65535	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$-4	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	and	%GPR1,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
	slli	%GPR2,%GPR3,$3	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sra	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	andi	%GPR1,%GPR1,$255	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	slli	%GPR1,%GPR1,$24	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	srai	%GPR28,%GPR1,$24	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_loadStoreByte_4	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_loadStoreByte_4:
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
	nop
	jr	%GPR31	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
storeByte:
L_loadStoreByte_5:
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
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	; Automatically 25 NOPs removed by reduceNOPs.sh
	andi	%GPR1,%GPR3,$3	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	andi	%GPR4,%GPR3,$3	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$3	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	addi	%GPR4,%GPR4,$1	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	subu	%GPR4,%GPR0,%GPR4	
	nop
	nop
	nop
	nop
	sub	%GPR5,%GPR5,%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$65535	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$-4	
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$255	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	and	%GPR1,%GPR3,%GPR1	
	nop
	nop
	nop
	nop
	slli	%GPR3,%GPR4,$3	
	nop
	nop
	nop
	nop
	slli	%GPR4,%GPR5,$3	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lw	%GPR28,0(%GPR1)	
	nop
	nop
	nop
	nop
	sll	%GPR2,%GPR2,%GPR3	
	nop
	nop
	nop
	nop
	sll	%GPR3,%GPR6,%GPR4	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR3,%GPR3,$1	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	subu	%GPR3,%GPR0,%GPR3	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	and	%GPR28,%GPR28,%GPR3	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	or	%GPR28,%GPR28,%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR28	
	nop
	nop
	nop
	nop
	j	L_loadStoreByte_6	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_loadStoreByte_6:
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
	nop
	jr	%GPR31	
	nop
	nop
	nop
	nop
	.section	.data
	;.global	_sinusLUT
	.align	4
_sinusLUT:
	.space	4
	.data.32	1144
	.data.32	2287
	.data.32	3430
	.data.32	4572
	.data.32	5712
	.data.32	6850
	.data.32	7987
	.data.32	9121
	.data.32	10252
	.data.32	11380
	.data.32	12505
	.data.32	13626
	.data.32	14742
	.data.32	15855
	.data.32	16962
	.data.32	18064
	.data.32	19161
	.data.32	20252
	.data.32	21336
	;.global	_cosinusLUT
	.align	4
_cosinusLUT:
	.data.32	65536
	.data.32	65526
	.data.32	65496
	.data.32	65446
	.data.32	65376
	.data.32	65287
	.data.32	65177
	.data.32	65048
	.data.32	64898
	.data.32	64729
	.data.32	64540
	.data.32	64332
	.data.32	64104
	.data.32	63856
	.data.32	63589
	.data.32	63303
	.data.32	62997
	.data.32	62672
	.data.32	62328
	.data.32	61966
	.align	4
L_Rotation_1:
	.space	12
L_Rotation_2:
	.data.8	40
	.space	1
L_Rotation_3:
	.data.8	44
	.space	1
L_Rotation_4:
	.data.8	41
	.space	1
	;.global	_bargraphValue
	.align	4
_bargraphValue:
	.space	4
L_Rotation_5:
	.data.8	65
	.space	1
L_Rotation_6:
	.data.8	78
	.space	1
L_Rotation_7:
	.data.8	66
	.space	1
	.section	.text
	.addressing	Word
	;.addressing	Word
sin:
L_Rotation_8:
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
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	; Automatically 70 NOPs removed by reduceNOPs.sh
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
	slt	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_Rotation_10	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_Rotation_9	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_Rotation_9:
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$80	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sgt	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_Rotation_10	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_Rotation_11	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_Rotation_10:
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	j	L_Rotation_12	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_Rotation_11:
	nop
	nop
	nop
	nop
	lhi	%GPR3,$( _sinusLUT	/0x10000)
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$( _sinusLUT	%0x10000)
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
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
	; Automatically 10 NOPs removed by reduceNOPs.sh
	mult	%GPR1,%GPR1,%GPR4	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR3,%GPR1	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR28,0(%GPR1)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_Rotation_12	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_Rotation_12:
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
	nop
	jr	%GPR31	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
cos:
L_Rotation_13:
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
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	; Automatically 70 NOPs removed by reduceNOPs.sh
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
	slt	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_Rotation_15	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_Rotation_14	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_Rotation_14:
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$80	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sgt	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_Rotation_15	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_Rotation_16	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_Rotation_15:
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	j	L_Rotation_17	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_Rotation_16:
	nop
	nop
	nop
	nop
	lhi	%GPR3,$( _cosinusLUT	/0x10000)
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$( _cosinusLUT	%0x10000)
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
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
	; Automatically 10 NOPs removed by reduceNOPs.sh
	mult	%GPR1,%GPR1,%GPR4	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR3,%GPR1	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR28,0(%GPR1)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_Rotation_17	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_Rotation_17:
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
	nop
	jr	%GPR31	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
rotate:
L_Rotation_18:
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
	subi	%GPR29,%GPR29,$28	
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
	sw	-8(%GPR30),%GPR3	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	nop
	lw	%GPR3,0(%GPR2)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sub	%GPR1,%GPR3,%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	sw	-12(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lw	%GPR1,-4(%GPR30)	
	nop
	nop
	nop
	nop
	add	%GPR2,%GPR2,%GPR5	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR4	
	nop
	nop
	nop
	nop
	lw	%GPR2,0(%GPR2)	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sub	%GPR1,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lw	%GPR1,-8(%GPR30)	
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
	jal	sin	
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
	lw	%GPR1,-8(%GPR30)	
	nop
	nop
	nop
	nop
	sw	-20(%GPR30),%GPR28	
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
	jal	cos	
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
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR1,-20(%GPR30)	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$( L_Rotation_1	%0x10000)
	nop
	nop
	nop
	nop
	lhi	%GPR4,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$( L_Rotation_1	%0x10000)
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	mult	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$( L_Rotation_1	%0x10000)
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR2,-12(%GPR30)	
	nop
	nop
	nop
	nop
	lhi	%GPR6,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$( L_Rotation_1	%0x10000)
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	mult	%GPR2,%GPR28,%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sub	%GPR1,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$( L_Rotation_1	%0x10000)
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L_Rotation_1	%0x10000)
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR3,0(%GPR4)	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	srai	%GPR3,%GPR3,$16	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	0(%GPR5),%GPR3	
	nop
	nop
	nop
	nop
	lw	%GPR3,-4(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR2)	
	nop
	nop
	nop
	nop
	lw	%GPR3,0(%GPR3)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR2,%GPR3	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	0(%GPR6),%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR1,%GPR4	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_Rotation_19	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_Rotation_20	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_Rotation_19:
	nop
	nop
	nop
	nop
	lhi	%GPR1,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L_Rotation_1	%0x10000)
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
	sw	0(%GPR1),%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
L_Rotation_20:
	nop
	nop
	nop
	nop
	lhi	%GPR1,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L_Rotation_1	%0x10000)
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$320	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sgt	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_Rotation_21	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_Rotation_22	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_Rotation_21:
	nop
	nop
	nop
	nop
	lhi	%GPR1,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L_Rotation_1	%0x10000)
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
	ori	%GPR2,%GPR2,$320	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
L_Rotation_22:
	nop
	nop
	nop
	nop
	lw	%GPR1,-20(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR2,-12(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$( L_Rotation_1	%0x10000)
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	mult	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$( L_Rotation_1	%0x10000)
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$4	
	nop
	nop
	nop
	nop
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop
	add	%GPR3,%GPR3,%GPR5	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	mult	%GPR2,%GPR28,%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	add	%GPR2,%GPR4,%GPR6	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$( L_Rotation_1	%0x10000)
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$4	
	nop
	nop
	nop
	nop
	sw	0(%GPR3),%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$( L_Rotation_1	%0x10000)
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR2)	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR4,%GPR1	
	nop
	nop
	nop
	nop
	lw	%GPR4,-4(%GPR30)	
	nop
	nop
	nop
	nop
	add	%GPR3,%GPR3,%GPR5	
	nop
	nop
	nop
	nop
	srai	%GPR2,%GPR2,$16	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$( L_Rotation_1	%0x10000)
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR4,%GPR6	
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$4	
	nop
	nop
	nop
	nop
	sw	0(%GPR1),%GPR2	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L_Rotation_1	%0x10000)
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lw	%GPR3,0(%GPR3)	
	nop
	nop
	nop
	nop
	lw	%GPR4,0(%GPR4)	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR3,%GPR4	
	nop
	nop
	nop
	nop
	add	%GPR3,%GPR5,%GPR6	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR3)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_Rotation_23	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_Rotation_24	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_Rotation_23:
	nop
	nop
	nop
	nop
	lhi	%GPR1,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L_Rotation_1	%0x10000)
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
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR3	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
L_Rotation_24:
	nop
	nop
	nop
	nop
	lhi	%GPR1,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L_Rotation_1	%0x10000)
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
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$240	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sgt	%GPR27,%GPR1,%GPR3	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_Rotation_25	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_Rotation_26	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_Rotation_25:
	nop
	nop
	nop
	nop
	lhi	%GPR1,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L_Rotation_1	%0x10000)
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
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$240	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR3	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
L_Rotation_26:
	nop
	nop
	nop
	nop
	lhi	%GPR1,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L_Rotation_1	%0x10000)
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$( L_Rotation_1	%0x10000)
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$8	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$1	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR3	
	nop
	nop
	nop
	nop
	j	L_Rotation_27	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_Rotation_27:
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
	nop
	jr	%GPR31	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
printCoordinates:
L_Rotation_28:
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
	subi	%GPR29,%GPR29,$32	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-24(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L_Rotation_2	/0x10000)
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L_Rotation_2	%0x10000)
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
	jal	t_print	
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
	lw	%GPR1,-24(%GPR30)	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$20	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
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
	jal	intToStr	
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
	subi	%GPR1,%GPR30,$20	
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
	jal	t_print	
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
	lhi	%GPR1,$( L_Rotation_3	/0x10000)
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L_Rotation_3	%0x10000)
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
	jal	t_print	
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
	; Automatically 30 NOPs removed by reduceNOPs.sh
	lw	%GPR3,-24(%GPR30)	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$20	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR3,%GPR1	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
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
	jal	intToStr	
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
	subi	%GPR1,%GPR30,$20	
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
	jal	t_print	
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
	lhi	%GPR1,$( L_Rotation_4	/0x10000)
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L_Rotation_4	%0x10000)
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
	jal	t_print	
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
	; Automatically 45 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_Rotation_29	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_Rotation_29:
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
	nop
	jr	%GPR31	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
drawRectangle:
L_Rotation_30:
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
	subi	%GPR29,%GPR29,$24	
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
	sw	-8(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	sw	-12(%GPR30),%GPR3	
	nop
	nop
	nop
	nop
	sw	-16(%GPR30),%GPR4	
	nop
	nop
	nop
	nop
	; Automatically 25 NOPs removed by reduceNOPs.sh
	lw	%GPR3,0(%GPR2)	
	nop
	nop
	nop
	nop
	add	%GPR5,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	nop
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop
	nop
	nop
	nop
	add	%GPR2,%GPR5,%GPR2	
	nop
	nop
	nop
	nop
	lw	%GPR5,-8(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR2)	
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR5,%GPR4	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR4,0(%GPR4)	
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
	jal	g_drawline	
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
	lw	%GPR2,-12(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR1,-8(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR3,0(%GPR2)	
	nop
	nop
	nop
	nop
	add	%GPR5,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop
	nop
	nop
	nop
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR5,%GPR2	
	nop
	nop
	nop
	nop
	lw	%GPR5,-12(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR2)	
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR5,%GPR4	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR4,0(%GPR4)	
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
	jal	g_drawline	
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
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR1,-12(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR3,0(%GPR2)	
	nop
	nop
	nop
	nop
	add	%GPR5,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop
	nop
	nop
	nop
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR5,%GPR2	
	nop
	nop
	nop
	nop
	lw	%GPR5,-16(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR2)	
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR5,%GPR4	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR4,0(%GPR4)	
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
	jal	g_drawline	
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
	lw	%GPR2,-4(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR1,-16(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR3,0(%GPR2)	
	nop
	nop
	nop
	nop
	add	%GPR5,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop
	nop
	nop
	nop
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR5,%GPR2	
	nop
	nop
	nop
	nop
	lw	%GPR5,-4(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR2)	
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR5,%GPR4	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR4,0(%GPR4)	
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
	jal	g_drawline	
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
	; Automatically 45 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_Rotation_31	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_Rotation_31:
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
	nop
	jr	%GPR31	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
copyPoint:
L_Rotation_32:
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
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	; Automatically 55 NOPs removed by reduceNOPs.sh
	lw	%GPR3,0(%GPR1)	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop
	nop
	nop
	nop
	sw	0(%GPR2),%GPR3	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$4	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR4,%GPR1,%GPR4	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$8	
	nop
	nop
	nop
	nop
	add	%GPR3,%GPR2,%GPR3	
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$8	
	nop
	nop
	nop
	nop
	lw	%GPR4,0(%GPR4)	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR1,%GPR5	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR2,%GPR6	
	nop
	nop
	nop
	nop
	sw	0(%GPR3),%GPR4	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2),%GPR1	
	nop
	nop
	nop
	nop
	j	L_Rotation_33	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_Rotation_33:
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
	nop
	jr	%GPR31	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
overwriteRectangle:
L_Rotation_34:
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
	subi	%GPR29,%GPR29,$28	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-8(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	sw	-12(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	sw	-16(%GPR30),%GPR3	
	nop
	nop
	nop
	nop
	sw	-20(%GPR30),%GPR4	
	nop
	nop
	nop
	nop
	; Automatically 50 NOPs removed by reduceNOPs.sh
	lhi	%GPR8,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$2	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$4	
	nop
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$86	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$71	
	nop
	nop
	nop
	nop
	sw	-4(%GPR30),%GPR8	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
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
	jal	sendcommand	
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
	lw	%GPR1,-8(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR2,-12(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR3,-16(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR4,-20(%GPR30)	
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
	jal	drawRectangle	
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
	; Automatically 55 NOPs removed by reduceNOPs.sh
	lhi	%GPR8,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$1	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$4	
	nop
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$86	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$71	
	nop
	nop
	nop
	nop
	sw	-4(%GPR30),%GPR8	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
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
	jal	sendcommand	
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
	; Automatically 45 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_Rotation_35	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_Rotation_35:
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
	nop
	jr	%GPR31	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
delete:
L_Rotation_36:
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
	subi	%GPR29,%GPR29,$40	
	nop
	nop
	nop
	nop
	; Automatically 50 NOPs removed by reduceNOPs.sh
	subi	%GPR1,%GPR30,$32	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$30	
	nop
	nop
	nop
	nop
	sw	-32(%GPR30),%GPR3	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	subi	%GPR4,%GPR30,$32	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$8	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR5	
	nop
	nop
	nop
	nop
	add	%GPR3,%GPR4,%GPR3	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$32	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$12	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR5	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$30	
	nop
	nop
	nop
	nop
	subi	%GPR4,%GPR30,$32	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$16	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR5	
	nop
	nop
	nop
	nop
	add	%GPR3,%GPR4,%GPR3	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$32	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$20	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR5	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
	subi	%GPR4,%GPR30,$32	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$120	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$24	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR5	
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR4,%GPR3	
	nop
	nop
	nop
	nop
	subi	%GPR8,%GPR30,$32	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR10,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$0	
	nop
	nop
	nop
	nop
	lhi	%GPR9,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$28	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4),%GPR10	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR11,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR11,%GPR11,$120	
	nop
	nop
	nop
	nop
	add	%GPR8,%GPR8,%GPR9	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$32	
	nop
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$8	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$76	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$82	
	nop
	nop
	nop
	nop
	sw	0(%GPR8),%GPR11	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
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
	jal	sendcommand	
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
L_Rotation_37:
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
	nop
	jr	%GPR31	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
pollDisplay:
L_Rotation_38:
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
	subi	%GPR29,%GPR29,$32	
	nop
	nop
	nop
	nop
	; Automatically 60 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR1	
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
	jal	checkbuffer	
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
	; Automatically 30 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR28,%GPR0	
	nop
	nop
	nop
	nop
	sw	-20(%GPR30),%GPR28	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$3	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sgt	%GPR27,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_Rotation_39	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_Rotation_61	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_Rotation_39:
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$12	
	nop
	nop
	nop
	nop
	lw	%GPR2,-20(%GPR30)	
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
	jal	getbytes	
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
	lw	%GPR2,-20(%GPR30)	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR28,%GPR0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_Rotation_40	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_Rotation_41	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_Rotation_40:
	nop
	nop
	nop
	nop
	add	%GPR28,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_Rotation_62	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_Rotation_41:
	nop
	nop
	nop
	nop
	lw	%GPR1,-16(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR2,-20(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_Rotation_42	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_Rotation_61	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_Rotation_42:
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$12	
	nop
	nop
	nop
	nop
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
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
	jal	loadByteUnsigned	
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
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR28,%GPR0	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	addi	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$27	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_Rotation_43	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_Rotation_55	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_Rotation_43:
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$1	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_Rotation_62	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_Rotation_44:
	nop
	nop
	nop
	nop
	lhi	%GPR1,$( L_Rotation_5	/0x10000)
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L_Rotation_5	%0x10000)
	nop
	nop
	nop
	nop
	; Automatically 25 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$120	
	nop
	nop
	nop
	nop
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
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	g_print	
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
	subi	%GPR1,%GPR30,$12	
	nop
	nop
	nop
	nop
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
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
	jal	loadByteUnsigned	
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
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR28,%GPR0	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	addi	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_Rotation_45	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_Rotation_46	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_Rotation_45:
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$3	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_Rotation_62	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_Rotation_46:
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$12	
	nop
	nop
	nop
	nop
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
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
	jal	loadByteUnsigned	
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
	add	%GPR1,%GPR28,%GPR0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-16(%GPR30)	
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
	addi	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
L_Rotation_47:
	nop
	nop
	nop
	nop
	lw	%GPR1,-20(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sgt	%GPR27,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_Rotation_48	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_Rotation_41	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_Rotation_48:
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$5	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_Rotation_62	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_Rotation_49:
	nop
	nop
	nop
	nop
	lhi	%GPR1,$( L_Rotation_6	/0x10000)
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L_Rotation_6	%0x10000)
	nop
	nop
	nop
	nop
	; Automatically 25 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$120	
	nop
	nop
	nop
	nop
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
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	g_print	
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
	subi	%GPR1,%GPR30,$12	
	nop
	nop
	nop
	nop
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
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
	jal	loadByteUnsigned	
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
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR28,%GPR0	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	addi	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_Rotation_50	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_Rotation_51	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_Rotation_50:
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$3	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_Rotation_62	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_Rotation_51:
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$12	
	nop
	nop
	nop
	nop
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
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
	jal	loadByteUnsigned	
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
	add	%GPR1,%GPR28,%GPR0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-16(%GPR30)	
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
	addi	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	j	L_Rotation_47	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
L_Rotation_52:
	nop
	nop
	nop
	nop
	lhi	%GPR1,$( L_Rotation_7	/0x10000)
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L_Rotation_7	%0x10000)
	nop
	nop
	nop
	nop
	; Automatically 25 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$120	
	nop
	nop
	nop
	nop
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
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	g_print	
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
	subi	%GPR1,%GPR30,$12	
	nop
	nop
	nop
	nop
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
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
	jal	loadByteUnsigned	
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
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR28,%GPR0	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	addi	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$2	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_Rotation_53	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_Rotation_54	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_Rotation_53:
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$3	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_Rotation_62	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_Rotation_54:
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$12	
	nop
	nop
	nop
	nop
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
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
	jal	loadByteUnsigned	
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
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR28,%GPR0	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	addi	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$12	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$( _bargraphValue	/0x10000)
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$( _bargraphValue	%0x10000)
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-24(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
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
	jal	loadByteUnsigned	
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
	lw	%GPR1,-16(%GPR30)	
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
	sw	-16(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lw	%GPR1,-24(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR28	
	nop
	nop
	nop
	nop
	j	L_Rotation_47	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
L_Rotation_55:
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$12	
	nop
	nop
	nop
	nop
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
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
	jal	loadByteUnsigned	
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
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR28,%GPR0	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	addi	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$65	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_Rotation_44	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_Rotation_56	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_Rotation_56:
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$66	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_Rotation_52	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_Rotation_57	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_Rotation_57:
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$72	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_Rotation_47	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_Rotation_58	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_Rotation_58:
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$78	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_Rotation_49	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_Rotation_59	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_Rotation_59:
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$84	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_Rotation_47	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_Rotation_60	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_Rotation_60:
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$2	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_Rotation_62	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_Rotation_61:
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_Rotation_62	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_Rotation_62:
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
	nop
	jr	%GPR31	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
main:
L_Rotation_63:
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
	subi	%GPR29,%GPR29,$132	
	nop
	nop
	nop
	nop
	; Automatically 50 NOPs removed by reduceNOPs.sh
	subi	%GPR1,%GPR30,$12	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$80	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR4,%GPR30,$12	
	nop
	nop
	nop
	nop
	sw	-12(%GPR30),%GPR3	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$80	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$8	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR3	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR4,%GPR5	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$24	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$130	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR4,%GPR30,$24	
	nop
	nop
	nop
	nop
	sw	-24(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR3,%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$80	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$8	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR4,%GPR5	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$1	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR2,%GPR30,$36	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR3	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$130	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR4,%GPR30,$36	
	nop
	nop
	nop
	nop
	sw	-36(%GPR30),%GPR3	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$130	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$8	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR3	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR4,%GPR5	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$48	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$80	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR4,%GPR30,$48	
	nop
	nop
	nop
	nop
	sw	-48(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR3,%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$8	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$130	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	add	%GPR4,%GPR4,%GPR5	
	nop
	nop
	nop
	nop
	sw	0(%GPR1),%GPR2	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$1	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4),%GPR3	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$24	
	nop
	nop
	nop
	nop
	subi	%GPR6,%GPR30,$12	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lw	%GPR2,-12(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR3,-24(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR4,-36(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR5,-48(%GPR30)	
	nop
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$4	
	nop
	nop
	nop
	nop
	add	%GPR2,%GPR2,%GPR3	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$4	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR2,%GPR4	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR1,%GPR3	
	nop
	nop
	nop
	nop
	add	%GPR3,%GPR6,%GPR7	
	nop
	nop
	nop
	nop
	subi	%GPR4,%GPR30,$36	
	nop
	nop
	nop
	nop
	add	%GPR2,%GPR2,%GPR5	
	nop
	nop
	nop
	nop
	lhi	%GPR8,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$4	
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$4	
	nop
	nop
	nop
	nop
	subi	%GPR5,%GPR30,$48	
	nop
	nop
	nop
	nop
	srai	%GPR2,%GPR2,$2	
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR4,%GPR8	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR5,%GPR5,%GPR6	
	nop
	nop
	nop
	nop
	sw	-60(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$60	
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$4	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lw	%GPR3,0(%GPR3)	
	nop
	nop
	nop
	nop
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	nop
	lw	%GPR4,0(%GPR4)	
	nop
	nop
	nop
	nop
	lw	%GPR5,0(%GPR5)	
	nop
	nop
	nop
	nop
	add	%GPR2,%GPR2,%GPR6	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR3,%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$8	
	nop
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$60	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR4	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR3,%GPR7	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$1	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR1,%GPR5	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	subi	%GPR5,%GPR30,$72	
	nop
	nop
	nop
	nop
	srai	%GPR1,%GPR1,$2	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR7,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$160	
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$4	
	nop
	nop
	nop
	nop
	sw	0(%GPR2),%GPR1	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$72	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$8	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR4	
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR5,%GPR6	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$120	
	nop
	nop
	nop
	nop
	sw	-72(%GPR30),%GPR7	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$15	
	nop
	nop
	nop
	nop
	sw	0(%GPR4),%GPR3	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	-124(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	sw	0(%GPR1),%GPR5	
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
	jal	d_clear	
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
	; Automatically 75 NOPs removed by reduceNOPs.sh
	lhi	%GPR10,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$1	
	nop
	nop
	nop
	nop
	lhi	%GPR9,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$1	
	nop
	nop
	nop
	nop
	lhi	%GPR8,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$1	
	nop
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$15	
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$19	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$20	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$100	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$10	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$10	
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
	jal	g_makebar	
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
	subi	%GPR4,%GPR30,$48	
	nop
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$36	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$24	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$12	
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
	jal	drawRectangle	
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
	subi	%GPR2,%GPR30,$84	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$12	
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
	jal	copyPoint	
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
	subi	%GPR2,%GPR30,$96	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$24	
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
	jal	copyPoint	
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
	subi	%GPR2,%GPR30,$108	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$36	
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
	jal	copyPoint	
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
	subi	%GPR2,%GPR30,$120	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$48	
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
	jal	copyPoint	
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
L_Rotation_64:
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$60	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$72	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$5	
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
	jal	rotate	
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
	; Automatically 30 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR28)	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR4,%GPR30,$60	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	nop
	sw	-60(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR6,%GPR28,%GPR2	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$72	
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR4,%GPR5	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$5	
	nop
	nop
	nop
	nop
	lw	%GPR6,0(%GPR6)	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$12	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4),%GPR6	
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
	jal	rotate	
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
	; Automatically 30 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR28)	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR4,%GPR30,$12	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	nop
	sw	-12(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR6,%GPR28,%GPR2	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$72	
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR4,%GPR5	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$5	
	nop
	nop
	nop
	nop
	lw	%GPR6,0(%GPR6)	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$24	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4),%GPR6	
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
	jal	rotate	
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
	; Automatically 30 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR28)	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR4,%GPR30,$24	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	nop
	sw	-24(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR6,%GPR28,%GPR2	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$72	
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR4,%GPR5	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$5	
	nop
	nop
	nop
	nop
	lw	%GPR6,0(%GPR6)	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$36	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4),%GPR6	
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
	jal	rotate	
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
	; Automatically 30 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR28)	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR4,%GPR30,$36	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	nop
	sw	-36(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR6,%GPR28,%GPR2	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$72	
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR4,%GPR5	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$5	
	nop
	nop
	nop
	nop
	lw	%GPR6,0(%GPR6)	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$48	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4),%GPR6	
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
	jal	rotate	
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
	lw	%GPR1,0(%GPR28)	
	nop
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$48	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop
	nop
	nop
	nop
	sw	-48(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$60	
	nop
	nop
	nop
	nop
	add	%GPR5,%GPR28,%GPR2	
	nop
	nop
	nop
	nop
	add	%GPR3,%GPR3,%GPR4	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$12	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lw	%GPR4,0(%GPR5)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR4	
	nop
	nop
	nop
	nop
	lw	%GPR3,-124(%GPR30)	
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
	jal	rotate	
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
	lw	%GPR1,0(%GPR28)	
	nop
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$12	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop
	nop
	nop
	nop
	sw	-12(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$60	
	nop
	nop
	nop
	nop
	add	%GPR5,%GPR28,%GPR2	
	nop
	nop
	nop
	nop
	add	%GPR3,%GPR3,%GPR4	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$24	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lw	%GPR4,0(%GPR5)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR4	
	nop
	nop
	nop
	nop
	lw	%GPR3,-124(%GPR30)	
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
	jal	rotate	
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
	lw	%GPR1,0(%GPR28)	
	nop
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$24	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop
	nop
	nop
	nop
	sw	-24(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$60	
	nop
	nop
	nop
	nop
	add	%GPR5,%GPR28,%GPR2	
	nop
	nop
	nop
	nop
	add	%GPR3,%GPR3,%GPR4	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$36	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lw	%GPR4,0(%GPR5)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR4	
	nop
	nop
	nop
	nop
	lw	%GPR3,-124(%GPR30)	
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
	jal	rotate	
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
	lw	%GPR1,0(%GPR28)	
	nop
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$36	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop
	nop
	nop
	nop
	sw	-36(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$60	
	nop
	nop
	nop
	nop
	add	%GPR5,%GPR28,%GPR2	
	nop
	nop
	nop
	nop
	add	%GPR3,%GPR3,%GPR4	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$48	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lw	%GPR4,0(%GPR5)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR4	
	nop
	nop
	nop
	nop
	lw	%GPR3,-124(%GPR30)	
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
	jal	rotate	
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
	; Automatically 30 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR28)	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$48	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	nop
	sw	-48(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR28,%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR3,%GPR4	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$1	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$100000	
	nop
	nop
	nop
	nop
	lw	%GPR2,0(%GPR2)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR2	
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
	jal	wait	
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
	subi	%GPR4,%GPR30,$120	
	nop
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$108	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$96	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$84	
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
	jal	overwriteRectangle	
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
	subi	%GPR2,%GPR30,$84	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$12	
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
	jal	copyPoint	
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
	subi	%GPR2,%GPR30,$96	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$24	
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
	jal	copyPoint	
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
	subi	%GPR2,%GPR30,$108	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$36	
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
	jal	copyPoint	
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
	subi	%GPR2,%GPR30,$120	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$48	
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
	jal	copyPoint	
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
	subi	%GPR4,%GPR30,$48	
	nop
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$36	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$24	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$12	
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
	jal	drawRectangle	
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
	j	L_Rotation_64	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
L_Rotation_65:
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
	nop
	jr	%GPR31	
	nop
	nop
	nop
	nop
	nop
exit:
	nop
	nop
