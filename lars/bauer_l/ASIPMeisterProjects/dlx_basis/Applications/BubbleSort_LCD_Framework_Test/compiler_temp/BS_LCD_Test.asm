	.section	.data
	.section	.text
	.addressing	Word
	.section	.text
	.addressing	Word
	;.addressing	Word

	nop
	nop
	nop
	xor	%r30, %r30, %r30
	nop
	nop
	nop
	xor	%r29, %r29, %r29
	nop
	nop
	nop
	xor	%r28, %r28, %r28
	nop
	nop
	nop
				; Automatically 4 NOPs removed by reduceNOPs.sh
	lhi	%r30, $(0x3BFC/0x10000)
	nop
	nop
	nop
	lhi	%r29, $(0x3BFC/0x10000)
	nop
	nop
	nop
				; Automatically 8 NOPs removed by reduceNOPs.sh
	ori	%r30, %r30, $(0x3BFC%0x10000)
	nop
	nop
	nop
	ori	%r29, %r29, $(0x3BFC%0x10000)
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-4(%r29), %r30
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	-8(%r29), %r31
	nop
	nop
	nop
	addi	%r29, %r30, $-8
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	main	
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	0(%r29), %r1
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	jal	exit
	nop
	nop
	nop
				; Automatically 5 NOPs removed by reduceNOPs.sh

	;.addressing	Word
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
intToStr:
L_intToStr_1:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%r29),%r31	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$56	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-36(%r30),%r1	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	-40(%r30),%r2	
	nop
	nop
	nop
	; Automatically 32 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-44(%r30),%r2	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-48(%r30),%r2	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r2,-36(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	slt	%r27,%r2,%r1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_intToStr_2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_intToStr_3	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_intToStr_2:
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r1,-36(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sub	%r1,%r0,%r1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$45	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-36(%r30),%r1	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r1,-40(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r1,-44(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r1,%r1,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-44(%r30),%r1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_intToStr_5	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_intToStr_3:
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r2,-36(%r30)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	seq	%r27,%r2,%r1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_intToStr_4	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_intToStr_6	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_intToStr_4:
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r1,-40(%r30)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$48	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r1,-44(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r1,%r1,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-44(%r30),%r1	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_intToStr_5:
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r2,-36(%r30)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sne	%r27,%r2,%r1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_intToStr_6	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_intToStr_7	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_intToStr_6:
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r1,%r30,$32	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r3,-48(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r3	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$10	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r3,-36(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	MOD	%r2,%r3,%r2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r2,%r2,$48	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r1,-48(%r30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r2,-36(%r30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r1,%r1,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-48(%r30),%r1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$10	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	div	%r1,%r2,%r1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-36(%r30),%r1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_intToStr_5	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_intToStr_7:
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r2,-48(%r30)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sgt	%r27,%r2,%r1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_intToStr_8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_intToStr_9	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_intToStr_8:
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r2,-48(%r30)	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r1,%r30,$32	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r2,%r2,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r2	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-48(%r30),%r2	
	nop
	nop
	nop
	; Automatically 32 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	loadByteUnsigned	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r1,-40(%r30)	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r3,-44(%r30)	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r2,%r28,%r0	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r3	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r1,-44(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r1,%r1,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-44(%r30),%r1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_intToStr_7	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_intToStr_9:
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r1,-40(%r30)	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r2,-44(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r2	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_intToStr_10	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_intToStr_10:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 20 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	jr	%r31	
	nop
	nop
	nop
				; Automatically 9 NOPs removed by reduceNOPs.sh
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
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%r29),%r31	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 48 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$222	


	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r5, $0x200
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh
				; Automatically 9 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$4	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r5), %r3



	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%r5), %r1

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$18	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r5), %r3

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$18	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$1	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r5), %r3

	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r4,%r4,%r3	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$73	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r5), %r3

	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r4,%r4,%r3	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r5), %r4

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r4,$65535	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$-1	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_3:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r5), %r2

	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r3,%r1,$1	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r5), %r3

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$6	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r5), %r2



	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r3,0(%r5)
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh
				; Automatically 9 NOPs removed by reduceNOPs.sh



	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r3,0(%r5)
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh
				; Automatically 9 NOPs removed by reduceNOPs.sh



	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r2,0(%r5)
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh
				; Automatically 9 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r4,%r3,%r2	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r2,0(%r5)
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh
				; Automatically 9 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r4,%r4,%r2	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r3,0(%r5)
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh
				; Automatically 9 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r4,%r4,%r3	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r3,0(%r5)
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh
				; Automatically 9 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r6,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r6,%r6,$256	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	MOD	%r4,%r4,%r6	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sne	%r27,%r4,%r3	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_lib_lcd_4	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_5	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_4:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$4	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r5), %r3



	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%r5), %r1

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$18	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r5), %r3

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$18	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$1	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r5), %r3

	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r4,%r4,%r3	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$82	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r5), %r3

	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r4,%r4,%r3	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r5), %r4

	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_5:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r3,$65535	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$-1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	seq	%r27,%r4,%r3	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_lib_lcd_3	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_6	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_6:
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r28,%r2,%r0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_7	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_7:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 20 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	jr	%r31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
getbytes:
L_lib_lcd_8:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%r29),%r31	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$36	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-4(%r30),%r1	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	-8(%r30),%r2	
	nop
	nop
	nop
	; Automatically 32 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$222	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-12(%r30),%r1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-16(%r30),%r1	


	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1, $0x200
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh
				; Automatically 9 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r2,%r1,%r0	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-20(%r30),%r1	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$4	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r2), %r1

	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r1,-12(%r30)	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%r2), %r1

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$18	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r2), %r1

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-24(%r30),%r1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$18	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-28(%r30),%r1	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r1,-24(%r30)	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%r2), %r1

	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r2,%r1,%r0	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r1,-28(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r2	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r2,-20(%r30)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	-28(%r30),%r1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$83	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r2), %r1

	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r2,%r1,%r0	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r1,-28(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r2	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r2,-20(%r30)	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%r2), %r1

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$65535	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$-1	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_9:
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r2,-20(%r30)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r2), %r1

	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r1,-12(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r1,%r1,$1	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r2), %r1

	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r1,-8(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r1,%r1,$4	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r2), %r1

	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r1,%r2,%r0	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r1,0(%r1)
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh
				; Automatically 9 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r1,%r2,%r0	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r1,0(%r1)
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh
				; Automatically 9 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r2,%r1,%r0	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r1,-20(%r30)	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r1,0(%r1)
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh
				; Automatically 9 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r1,%r2,%r1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-28(%r30),%r1	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_10:
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r1,-16(%r30)	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r2,-8(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sne	%r27,%r1,%r2	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_lib_lcd_11	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_12	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_11:
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r1,-20(%r30)	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r1,0(%r1)
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh
				; Automatically 9 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-24(%r30),%r1	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r2,-16(%r30)	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r1,-4(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r2	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r2,-24(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r1,-28(%r30)	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r2,-24(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-28(%r30),%r1	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r1,-16(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r1,%r1,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-16(%r30),%r1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_10	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_12:
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r1,-20(%r30)	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r1,0(%r1)
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh
				; Automatically 9 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r2,-28(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	andi	%r2,%r2,$255	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-28(%r30),%r2	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sne	%r27,%r2,%r1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_lib_lcd_13	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_14	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_13:
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r2,-20(%r30)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$4	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r2), %r1

	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r1,-12(%r30)	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%r2), %r1

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$18	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r2), %r1

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-24(%r30),%r1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$18	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-28(%r30),%r1	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r1,-24(%r30)	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%r2), %r1

	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r2,%r1,%r0	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r1,-28(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r2	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r2,-20(%r30)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	-28(%r30),%r1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$82	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r2), %r1

	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r2,%r1,%r0	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r1,-28(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r2	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r2,-20(%r30)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	-28(%r30),%r1	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%r2), %r1

	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_14:
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r2,-28(%r30)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$65535	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$-1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	seq	%r27,%r2,%r1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_lib_lcd_9	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_15	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_15:
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r28,-16(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_16	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_16:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 20 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	jr	%r31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
sendcommand:
L_lib_lcd_17:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%r29),%r31	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$52	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-4(%r30),%r1	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	-8(%r30),%r2	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	-12(%r30),%r5	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	-16(%r30),%r6	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	-20(%r30),%r3	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	-24(%r30),%r4	


	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1, $0x200
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh
				; Automatically 9 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-28(%r30),%r1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r1,%r7,%r0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	slli	%r1,%r1,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-32(%r30),%r1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$3	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-36(%r30),%r1	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_18:
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r2,-16(%r30)	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r1,-12(%r30)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r3,%r2,%r0	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-40(%r30),%r2	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r2,-12(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r2,%r2,%r3	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r3,-36(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r2,%r2,%r3	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r3,-28(%r30)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r2,%r2,$3	
	nop
	nop
	nop
	; Automatically 17 NOPs removed by reduceNOPs.sh
				; Automatically 9 NOPs removed by reduceNOPs.sh


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r3), %r2

	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r2,-32(%r30)	
	nop
	nop
	nop
	; Automatically 17 NOPs removed by reduceNOPs.sh
				; Automatically 9 NOPs removed by reduceNOPs.sh


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r3), %r2

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$17	
	nop
	nop
	nop
	; Automatically 17 NOPs removed by reduceNOPs.sh
				; Automatically 9 NOPs removed by reduceNOPs.sh


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r3), %r2

	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r3,-16(%r30)	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r2,-12(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r2,%r2,%r3	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r3,-36(%r30)	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$17	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r2,%r2,%r3	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-44(%r30),%r4	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r4,-28(%r30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r3,%r2,%r0	
	nop
	nop
	nop
	; Automatically 17 NOPs removed by reduceNOPs.sh
				; Automatically 9 NOPs removed by reduceNOPs.sh


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r4), %r3

	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r3,-44(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r2,%r3,%r2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-44(%r30),%r2	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$27	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r3,%r2,%r0	
	nop
	nop
	nop
	; Automatically 17 NOPs removed by reduceNOPs.sh
				; Automatically 9 NOPs removed by reduceNOPs.sh


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r4), %r3

	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r3,-44(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r2,%r3,%r2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-44(%r30),%r2	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r2,-4(%r30)	
	nop
	nop
	nop
	; Automatically 32 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r3,%r2,%r0	
	nop
	nop
	nop
	; Automatically 17 NOPs removed by reduceNOPs.sh
				; Automatically 9 NOPs removed by reduceNOPs.sh


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r4), %r3

	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r3,-44(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r2,%r3,%r2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-44(%r30),%r2	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r2,-8(%r30)	
	nop
	nop
	nop
	; Automatically 32 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r3,%r2,%r0	
	nop
	nop
	nop
	; Automatically 17 NOPs removed by reduceNOPs.sh
				; Automatically 9 NOPs removed by reduceNOPs.sh


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r4), %r3

	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r3,-44(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r2,%r3,%r2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-44(%r30),%r2	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_19:
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r2,%r1,%r0	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r1,%r1,$1	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sne	%r27,%r2,%r3	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_lib_lcd_20	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_21	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_20:
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r2,-20(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r5,%r2,%r0	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r2,0(%r2)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r4,%r5,%r4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r3,%r2,%r0	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-20(%r30),%r4	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r4,-28(%r30)	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%r4), %r3

	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r3,-44(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r2,%r3,%r2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-44(%r30),%r2	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_19	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_21:
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r2,-40(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r1,%r2,%r0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r1,%r1,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-40(%r30),%r1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sne	%r27,%r2,%r1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_lib_lcd_22	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_23	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_22:
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r1,-24(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r3,%r1,%r0	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r2,%r3,%r2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-24(%r30),%r2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	loadByteUnsigned	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r2,%r28,%r0	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r3,-28(%r30)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r1,%r2,%r0	
	nop
	nop
	nop
	; Automatically 17 NOPs removed by reduceNOPs.sh
				; Automatically 9 NOPs removed by reduceNOPs.sh


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r3), %r1

	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r1,-44(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-44(%r30),%r1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_21	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_23:
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r2,-44(%r30)	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r1,-28(%r30)	
	nop
	nop
	nop
	; Automatically 13 NOPs removed by reduceNOPs.sh
				; Automatically 9 NOPs removed by reduceNOPs.sh


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r1), %r2

	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r1,-32(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	getack	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sne	%r27,%r28,%r1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_lib_lcd_18	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_24	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_24:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_25	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_25:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 20 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	jr	%r31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
t_print:
L_lib_lcd_26:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%r29),%r31	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$12	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-4(%r30),%r1	
	nop
	nop
	nop
	; Automatically 28 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	strlength	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 40 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r4,-4(%r30)	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r6,%r28,%r0	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r7,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r7,%r7,$111	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r5,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$0	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$84	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$90	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_27	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_27:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 20 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	jr	%r31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
t_cursor:
L_lib_lcd_28:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%r29),%r31	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$12	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-4(%r30),%r1	
	nop
	nop
	nop
	; Automatically 40 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r3,%r30,$4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r7,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r7,%r7,$111	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r6,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r6,%r6,$0	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r5,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$67	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$84	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_29	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_29:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 20 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	jr	%r31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
t_enable:
L_lib_lcd_30:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%r29),%r31	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 56 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sne	%r27,%r1,%r2	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_lib_lcd_31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_32	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_31:
	nop
	nop
	nop
	; Automatically 28 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r7,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r7,%r7,$111	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r6,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r6,%r6,$0	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r5,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$0	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$69	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$84	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$0	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_33	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_32:
	nop
	nop
	nop
	; Automatically 28 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r7,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r7,%r7,$111	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r6,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r6,%r6,$0	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r5,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$0	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$65	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$84	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$0	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 28 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_33:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_34	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_34:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 20 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	jr	%r31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
g_print:
L_lib_lcd_35:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%r29),%r31	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$20	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-12(%r30),%r1	
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	-8(%r30),%r2	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r1,%r30,$8	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$4	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r1),%r3	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r1,-12(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	strlength	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r4,-12(%r30)	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r6,%r28,$1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r3,%r30,$8	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r7,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r7,%r7,$111	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r5,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$2	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$76	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$90	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_36	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_36:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 20 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	jr	%r31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
g_drawrect:
L_lib_lcd_37:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%r29),%r31	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$24	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r8,%r4,%r0	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r4,%r3,%r0	
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-16(%r30),%r1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r3,%r30,$16	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r5,%r30,$16	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r6,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r6,%r6,$8	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r1,%r3,%r1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r9,%r30,$16	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r10,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r10,%r10,$12	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r11,%r5,%r6	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r1),%r2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%r11),%r4	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r9,%r9,%r10	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r3,%r30,$16	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r7,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r7,%r7,$111	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r6,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r6,%r6,$0	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r5,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$82	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$71	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r9),%r8	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_38	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_38:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 20 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	jr	%r31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
g_drawline:
L_lib_lcd_39:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%r29),%r31	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$24	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r8,%r4,%r0	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r4,%r3,%r0	
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-16(%r30),%r1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r3,%r30,$16	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r5,%r30,$16	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r6,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r6,%r6,$8	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r1,%r3,%r1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r9,%r30,$16	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r10,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r10,%r10,$12	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r11,%r5,%r6	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r1),%r2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%r11),%r4	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r9,%r9,%r10	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r3,%r30,$16	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r7,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r7,%r7,$111	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r6,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r6,%r6,$0	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r5,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$68	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$71	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r9),%r8	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_40	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_40:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 20 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	jr	%r31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
g_makebar:
L_lib_lcd_41:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%r29),%r31	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$52	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-40(%r30),%r7	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	-44(%r30),%r10	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r7,$( L_lib_lcd_1	/0x10000)
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r7,%r7,$( L_lib_lcd_1	%0x10000)
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r7,0(%r7)	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r10,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r10,%r10,$32	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	slt	%r27,%r7,%r10	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_lib_lcd_42	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_45	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_42:
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r7,$( L_lib_lcd_1	/0x10000)
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r7,%r7,$( L_lib_lcd_1	%0x10000)
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r10,%r30,$36	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r7,0(%r7)	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r11,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r11,%r11,$4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r12,%r30,$36	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-36(%r30),%r7	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r10,%r10,%r11	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r7,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r7,%r7,$8	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r11,%r30,$36	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r13,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r13,%r13,$12	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r10),%r1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r1,%r12,%r7	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r7,%r30,$36	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r1),%r2	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r1,%r11,%r13	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r10,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r10,%r10,$16	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r2,%r30,$36	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r11,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r11,%r11,$20	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r1),%r3	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r1,%r7,%r10	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r3,%r30,$36	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r1),%r4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r1,%r2,%r11	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r7,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r7,%r7,$24	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$28	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r2,%r30,$36	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r1),%r5	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r1,%r3,%r7	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r4,%r2,%r4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r10,%r30,$36	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r1),%r6	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r11,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r11,%r11,$32	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r4),%r8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r10,%r10,%r11	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r3,%r30,$36	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r7,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r7,%r7,$111	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r6,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r6,%r6,$0	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r5,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$9	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$82	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$66	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r10),%r9	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r2,-44(%r30)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sne	%r27,%r2,%r1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_lib_lcd_43	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_44	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_43:
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$( L_lib_lcd_1	/0x10000)
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$( L_lib_lcd_1	%0x10000)
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r8,0(%r1)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r3,%r30,$36	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r7,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r7,%r7,$111	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r6,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r6,%r6,$0	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r5,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-36(%r30),%r8	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$66	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$65	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 28 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_44:
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$( L_lib_lcd_1	/0x10000)
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$( L_lib_lcd_1	%0x10000)
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r2,$( L_lib_lcd_1	/0x10000)
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$( L_lib_lcd_1	%0x10000)
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r3,$( L_lib_lcd_1	/0x10000)
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$( L_lib_lcd_1	%0x10000)
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r4,0(%r1)	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r1,0(%r2)	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r8,%r30,$36	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r9,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r9,%r9,$4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r2,%r4,$1	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r8,%r8,%r9	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r3),%r2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	-36(%r30),%r1	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r9,-40(%r30)	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$0	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r7,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r7,%r7,$111	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r6,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r6,%r6,$0	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r3,%r30,$36	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r5,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$2	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$65	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$66	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r8),%r9	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$( L_lib_lcd_1	/0x10000)
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$( L_lib_lcd_1	%0x10000)
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r1,0(%r1)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r28,%r1,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_46	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_45:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r28,$65535	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$-1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_46	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_46:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 20 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	jr	%r31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
g_setbar:
L_lib_lcd_47:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%r29),%r31	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$16	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r8,%r2,%r0	
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r4,%r30,$8	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-8(%r30),%r1	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r9,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r9,%r9,$4	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r9,%r4,%r9	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r3,%r30,$8	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r7,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r7,%r7,$111	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r6,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r6,%r6,$0	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r5,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$2	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$65	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r9),%r8	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$66	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_48	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_48:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 20 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	jr	%r31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
g_makeswitch:
L_lib_lcd_49:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%r29),%r31	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$36	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-28(%r30),%r1	
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	-24(%r30),%r2	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r1,%r30,$24	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r8,%r30,$24	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r9,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r9,%r9,$8	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r2	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r2,%r30,$24	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r10,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r10,%r10,$12	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r1),%r3	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r1,%r8,%r9	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r3,%r30,$24	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r8,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r8,%r8,$16	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r1),%r4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r1,%r2,%r10	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$20	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r3,%r3,%r8	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r2,%r30,$24	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r1),%r5	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r1,%r2,%r4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r3),%r6	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%r1),%r7	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r1,-28(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	strlength	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r4,-28(%r30)	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r6,%r28,$1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r3,%r30,$24	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r7,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r7,%r7,$111	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r5,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$6	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$75	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$65	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_50	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_50:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 20 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	jr	%r31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
g_makemenubutton:
L_lib_lcd_51:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%r29),%r31	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$44	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-36(%r30),%r1	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	-4(%r30),%r9	
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	-32(%r30),%r2	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r1,%r30,$32	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r9,%r30,$32	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r10,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r10,%r10,$8	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r2	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r2,%r30,$32	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r11,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r11,%r11,$12	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r1),%r3	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r1,%r9,%r10	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r3,%r30,$32	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r9,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r9,%r9,$16	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r1),%r4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r1,%r2,%r11	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r2,%r30,$32	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$20	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r1),%r5	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r1,%r3,%r9	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r5,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$24	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r2,%r2,%r4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r3,%r30,$32	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r1),%r6	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r1,%r3,%r5	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r2),%r7	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%r1),%r8	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r1,-36(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	strlength	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r4,-36(%r30)	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r6,%r28,$1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r3,%r30,$32	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r7,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r7,%r7,$111	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r5,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$7	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$77	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$65	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r1,-4(%r30)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sgt	%r27,%r1,%r2	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_lib_lcd_52	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_53	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_52:
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r3,%r30,$4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r7,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r7,%r7,$111	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r6,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r6,%r6,$0	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r5,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$89	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$78	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 28 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_53:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_54	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_54:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 20 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	jr	%r31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
g_makeradiogroup:
L_lib_lcd_55:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%r29),%r31	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$12	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-4(%r30),%r1	
	nop
	nop
	nop
	; Automatically 40 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r3,%r30,$4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r7,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r7,%r7,$111	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r6,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r6,%r6,$0	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r5,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$82	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$65	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_56	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_56:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 20 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	jr	%r31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
d_clear:
L_lib_lcd_57:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%r29),%r31	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 60 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r7,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r7,%r7,$111	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r6,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r6,%r6,$0	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r5,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$0	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$76	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$68	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$0	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_58	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_58:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 20 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	jr	%r31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
strlength:
L_lib_lcd_59:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%r29),%r31	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$16	
	nop
	nop
	nop
	; Automatically 44 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-4(%r30),%r1	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-8(%r30),%r1	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_60:
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r1,-4(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r3,%r1,%r0	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r2,%r3,%r2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-4(%r30),%r2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	loadByteUnsigned	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sne	%r27,%r28,%r1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_lib_lcd_61	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_62	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_61:
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r1,-8(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r1,%r1,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-8(%r30),%r1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_60	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_62:
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r28,-8(%r30)	
	nop
	nop
	nop
	; Automatically 32 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_63	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_63:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 20 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	jr	%r31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
wait:
L_lib_lcd_64:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%r29),%r31	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 56 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_65:
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r3,%r2,%r0	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r2,%r2,$1	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sne	%r27,%r3,%r1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_lib_lcd_65	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_66	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_66:
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r28,%r2,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_67	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_67:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 20 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	jr	%r31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
getack:
L_lib_lcd_68:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%r29),%r31	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 41 NOPs removed by reduceNOPs.sh
				; Automatically 9 NOPs removed by reduceNOPs.sh


	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r2, $0x200
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh
				; Automatically 9 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$0	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r2), %r3

	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r1,%r1,$1	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r2), %r1

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$1	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r2), %r1



	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r1,0(%r2)
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh
				; Automatically 9 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$15	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	seq	%r27,%r1,%r2	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_lib_lcd_69	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_70	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_69:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_71	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_70:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_71	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_lib_lcd_71:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 20 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	jr	%r31	
	nop
	nop
	nop
				; Automatically 9 NOPs removed by reduceNOPs.sh
	.section	.data
	.section	.text
	.addressing	Word
	;.addressing	Word
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
loadByteUnsigned:
L_loadStoreByte_1:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%r29),%r31	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r2,%r1,%r0	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	andi	%r1,%r2,$3	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r3,%r1,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subu	%r3,%r0,%r3	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$65535	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$-4	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	and	%r1,%r2,%r1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	slli	%r2,%r3,$3	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r1,0(%r1)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sra	%r1,%r1,%r2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	andi	%r28,%r1,$255	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_loadStoreByte_2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_loadStoreByte_2:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 20 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	jr	%r31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
loadByteSigned:
L_loadStoreByte_3:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%r29),%r31	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r2,%r1,%r0	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	andi	%r1,%r2,$3	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r3,%r1,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subu	%r3,%r0,%r3	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$65535	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$-4	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	and	%r1,%r2,%r1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	slli	%r2,%r3,$3	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r1,0(%r1)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sra	%r1,%r1,%r2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	andi	%r1,%r1,$255	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	slli	%r1,%r1,$24	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	srai	%r28,%r1,$24	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_loadStoreByte_4	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_loadStoreByte_4:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 20 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	jr	%r31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
storeByte:
L_loadStoreByte_5:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%r29),%r31	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r3,%r1,%r0	
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	andi	%r1,%r3,$3	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	andi	%r4,%r3,$3	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r5,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$3	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r4,%r4,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subu	%r4,%r0,%r4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sub	%r5,%r5,%r1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$65535	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$-4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r6,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r6,%r6,$255	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	and	%r1,%r3,%r1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	slli	%r3,%r4,$3	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	slli	%r4,%r5,$3	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r28,0(%r1)	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sll	%r2,%r2,%r3	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sll	%r3,%r6,%r4	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r3,%r3,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subu	%r3,%r0,%r3	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	and	%r28,%r28,%r3	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	or	%r28,%r28,%r2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%r1),%r28	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_loadStoreByte_6	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_loadStoreByte_6:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 20 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	jr	%r31	
	nop
	nop
	nop
				; Automatically 9 NOPs removed by reduceNOPs.sh
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
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%r29),%r31	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$48	
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$( L_main_1	/0x10000)
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$( L_main_1	%0x10000)
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-36(%r30),%r2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-40(%r30),%r1	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_main_12:
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r1,-40(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	andi	%r1,%r1,$7	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	seq	%r27,%r1,%r2	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_main_13	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_main_14	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_main_13:
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$( L_main_2	/0x10000)
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$( L_main_2	%0x10000)
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 28 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_main_14:
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r4,-40(%r30)	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$( _array	/0x10000)
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$( _array	%0x10000)
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r2,%r30,$32	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	mult	%r3,%r4,%r3	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r3	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r1,0(%r1)	
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	intToStr	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r1,%r30,$32	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$( L_main_3	/0x10000)
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$( L_main_3	%0x10000)
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r2,-40(%r30)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sgt	%r27,%r2,%r1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_main_15	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_main_19	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_main_15:
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r1,-40(%r30)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r2,$( _array	/0x10000)
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$( _array	%0x10000)
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r1,%r1,$1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r5,$( _array	/0x10000)
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$( _array	%0x10000)
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	mult	%r1,%r1,%r3	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r3,-40(%r30)	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r1,%r2,%r1	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	mult	%r3,%r3,%r4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r1,0(%r1)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r2,%r5,%r3	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r2,0(%r2)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sleu	%r27,%r1,%r2	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_main_16	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_main_17	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_main_16:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_main_18	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_main_17:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_main_18:
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r2,-36(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	and	%r1,%r2,%r1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-36(%r30),%r1	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_main_19:
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r1,-40(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r1,%r1,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r2,%r1,%r0	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-40(%r30),%r1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$20	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	slt	%r27,%r2,%r1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_main_12	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_main_20	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_main_20:
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$( L_main_4	/0x10000)
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$( L_main_4	%0x10000)
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r28,-36(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_main_21	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_main_21:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 20 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	jr	%r31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 9 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
bubbleSort:
	;; #############################
	;; # ADD YOUR CODE HERE
	;; #############################

	
	;; COMPILER STACK OUTPUT:
        ;; sw      -4(r29),r30
        ;; sw      0(r29),r31
        ;; subui   r30,r29,$4
        ;; subi    r29,r29,$8
        ;; add     r3,r1,r0
	;; 
	;; METHOD...
	;;
	;; lw      r31,4(r30)      
        ;; addui   r29,r30,$4      
        ;; lw      r30,0(r30)      
        ;; jr      r31
	;; nop

	nop
	nop
	nop
	sw      -4(%r29), %r30
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
        sw      0(%r29), %r31
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
        subui   %r30, %r29, $4
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
        subi    %r29, %r29, $(12 + 10*4)
	nop
	nop
	nop
				; Automatically 9 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
	sw	0(%r29), %r30		; Save the frame pointer 
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	4(%r29), %r31		; Save the return address 
	; Save Registers 
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	 8(%r29), %r1		; r1 is used for comparing-results and for temporary stuff.
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	12(%r29), %r2		; r2 is the parameter value "startIndex".
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	16(%r29), %r3		; r3 is the parameter value "endIndex".
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	20(%r29), %r4		; r4 is the loop-variable "i".
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	24(%r29), %r5		; r5 is the loop-variable "j".
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	28(%r29), %r6		; r6 is the loop-end "innerLoopEnd".
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	32(%r29), %r7		; r7 is "next_j".
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	36(%r29), %r8		; r8 is "value_j".
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	40(%r29), %r9		; r9 is "value_next_j".
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	44(%r29), %r10		; r10 is the start address of 'array'.
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	
	;; lw	%r2, 0(%r30)
	;; lw	%r3, 4(%r30)
	nop
	nop
	nop
	addi	%r3, %r2, $0
	nop
	nop
	nop
	addi	%r2, %r1, $0
	
	nop
	nop
	nop
	lhi	%r10, $(_array/65536)&0xffff
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addui	%r10, %r10, $(_array&0xffff)
	nop
	nop
	nop
	slli	%r6, %r3, $2		; innerLoopEnd = array+endIndex;
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r6, %r6, %r10
	nop
	nop
	nop
	add	%r4, %r2, %r0		; i = startIndex;
	nop
	nop
	nop
				; Automatically 9 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
OuterLoop_Start:
	nop
	nop
	nop
	sltu	%r1, %r4, %r3		; while (i < endIndex) {
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	beqz	%r1, OuterLoop_End
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
	slli	%r5, %r2, $2		; j = array+startIndex;
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%r5, %r5, %r10

	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r8, 0(%r5)		; value_j = *j;

	nop
	nop
	nop
	add	%r7, %r5, %r0		; next_j = j;

	nop
	nop
	nop
InnerLoop_Start:
	nop
	nop
	nop
	sltu	%r1, %r5, %r6		; while (j < innerLoopEnd) {
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	beqz	%r1, InnerLoop_End
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
	addi	%r7, %r7, $4		; next_j++;

	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r9, 0(%r7)		; value_next_j = *next_j;

	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sltu	%r1, %r9, %r8		; if (value_next_j < value_j) {
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	beqz	%r1, SkipExchange
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
	add	%r1, %r0, %r8		; tmp = value_j;
	nop
	nop
	nop
	sw	0(%r5), %r9		; *j = value_next_j;
	nop
	nop
	nop
	add	%r8, %r0, %r9		; value_j = value_next_j;
	nop
	nop
	nop
				; Automatically 4 NOPs removed by reduceNOPs.sh
	sw	0(%r7), %r1		; *next_j = tmp;

	nop
	nop
	nop
	add	%r9, %r0, %r1		; value_next_j = tmp;
	nop
	nop
	nop
				; Automatically 5 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
SkipExchange:
	nop
	nop
	nop
	add	%r5, %r0, %r7		; j = next_j;

	nop
	nop
	nop
	add	%r8, %r0, %r9		; value_j = value_next_j;

	nop
	nop
	nop
	j	InnerLoop_Start		; }
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
InnerLoop_End:
	nop
	nop
	nop
	subi	%r6, %r6, $4		; innerLoopEnd--;

	nop
	nop
	nop
	addi	%r4, %r4, $1		; i++;

	nop
	nop
	nop
	j	OuterLoop_Start		; }
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
OuterLoop_End:
	; Restore the saved registers
	nop
	nop
	nop
	lw	%r1, 8(%r29)
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r2, 12(%r29)
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r3, 16(%r29)
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r4, 20(%r29)
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r5, 24(%r29)
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r6, 28(%r29)
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r7, 32(%r29)
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r8, 36(%r29)
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r9, 40(%r29)
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r10,48(%r29)

	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw      %r31, 4(%r30)
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
        addui   %r29, %r29, $(12 + 10*4)
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
        lw      %r30, 0(%r30)      
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
        jr      %r31
	nop
	nop
	nop
				; Automatically 5 NOPs removed by reduceNOPs.sh

	;; COMPILER STACK OUTPUT
	;; lw      r31,4(r30)      
        ;; addui   r29,r30,$4      
        ;; lw      r30,0(r30)      
        ;; jr      r31
	;; nop

	nop
	nop
	nop
main:
L_main_31:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%r29),%r31	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subui	%r30,%r29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$48	
	nop
	nop
	nop
	; Automatically 28 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$( L_main_5	/0x10000)
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$( L_main_5	%0x10000)
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 13 NOPs removed by reduceNOPs.sh
				; Automatically 9 NOPs removed by reduceNOPs.sh


	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0x100
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r1, 0(%r1)
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh
				; Automatically 9 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-36(%r30),%r1	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$19	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	bubbleSort	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 29 NOPs removed by reduceNOPs.sh
				; Automatically 9 NOPs removed by reduceNOPs.sh


	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0x100
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r1, 0(%r1)
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh
				; Automatically 9 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r2,-36(%r30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sub	%r1,%r1,%r2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-36(%r30),%r1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	printArray	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$( L_main_6	/0x10000)
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$( L_main_6	%0x10000)
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-40(%r30),%r28	
	nop
	nop
	nop
	; Automatically 32 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r2,-40(%r30)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	seq	%r27,%r2,%r1	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_main_32	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_main_33	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_main_32:
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$( L_main_7	/0x10000)
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$( L_main_7	%0x10000)
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_main_34	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_main_33:
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$( L_main_8	/0x10000)
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$( L_main_8	%0x10000)
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 28 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_main_34:
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$( L_main_9	/0x10000)
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$( L_main_9	%0x10000)
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r1,-36(%r30)	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r2,%r30,$32	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	intToStr	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r1,%r30,$32	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r1,$( L_main_10	/0x10000)
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$( L_main_10	%0x10000)
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L_main_35	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
L_main_35:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	addui	%r29,%r30,$4	
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
				; Automatically 20 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	jr	%r31	
	nop
	nop
	nop
				; Automatically 16 NOPs removed by reduceNOPs.sh
exit:
	nop
	nop
	nop
