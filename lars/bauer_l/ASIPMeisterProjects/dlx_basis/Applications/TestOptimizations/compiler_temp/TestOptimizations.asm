	.section	.data
	.section	.text
	.addressing	Word
	.section	.text
	.addressing	Word
	;.addressing	Word

	xor	%r30, %r30, %r30
	xor	%r29, %r29, %r29
	xor	%r28, %r28, %r28
	lhi	%r30, $(0xFFFFC/0x10000)
	lhi	%r29, $(0xFFFFC/0x10000)
	ori	%r30, %r30, $(0xFFFFC%0x10000)
	ori	%r29, %r29, $(0xFFFFC%0x10000)
	sw	-4(%r29), %r30
	sw	-8(%r29), %r31
	addi	%r29, %r30, $-8
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	jal	main	
	nop
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%r29), %r1
	jal	exit
	nop

	;.addressing	Word
intToStr:
L_intToStr_1:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	subi	%r29,%r29,$56	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-36(%r30),%r1	
	sw	-40(%r30),%r2	
	; Automatically 5 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	lhi	%r1,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	sw	-44(%r30),%r2	
	lhi	%r2,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-48(%r30),%r2	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r2,-36(%r30)	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%r27,%r2,%r1	
	bnez	%r27,L_intToStr_2	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_intToStr_3	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_intToStr_2:
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%r1,-36(%r30)	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sub	%r1,%r0,%r1	
	lhi	%r2,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$45	
	nop	; Automatically added by fix-stall-insns.pl
	sw	-36(%r30),%r1	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r1,-40(%r30)	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	jal	storeByte	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r1,-44(%r30)	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r1,%r1,$1	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-44(%r30),%r1	
	j	L_intToStr_5	
	nop
L_intToStr_3:
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r2,-36(%r30)	
	lhi	%r1,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%r27,%r2,%r1	
	bnez	%r27,L_intToStr_4	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_intToStr_6	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_intToStr_4:
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%r1,-40(%r30)	
	lhi	%r2,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$48	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	jal	storeByte	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r1,-44(%r30)	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r1,%r1,$1	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-44(%r30),%r1	
L_intToStr_5:
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r2,-36(%r30)	
	lhi	%r1,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%r27,%r2,%r1	
	bnez	%r27,L_intToStr_6	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_intToStr_7	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_intToStr_6:
	nop	; Automatically Added by addNopAfterLabels.pl
	subi	%r1,%r30,$32	
	lw	%r3,-48(%r30)	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r3	
	lhi	%r2,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$10	
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r3,-36(%r30)	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	MOD	%r2,%r3,%r2	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r2,%r2,$48	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	jal	storeByte	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r1,-48(%r30)	
	lw	%r2,-36(%r30)	
	addi	%r1,%r1,$1	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-48(%r30),%r1	
	lhi	%r1,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$10	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	div	%r1,%r2,%r1	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-36(%r30),%r1	
	j	L_intToStr_5	
	nop
L_intToStr_7:
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r2,-48(%r30)	
	lhi	%r1,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sgt	%r27,%r2,%r1	
	bnez	%r27,L_intToStr_8	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_intToStr_9	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_intToStr_8:
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%r2,-48(%r30)	
	subi	%r1,%r30,$32	
	subi	%r2,%r2,$1	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r2	
	nop	; Automatically added by fix-stall-insns.pl
	sw	-48(%r30),%r2	
	; Automatically 5 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	jal	loadByteUnsigned	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r1,-40(%r30)	
	lw	%r3,-44(%r30)	
	add	%r2,%r28,%r0	
	add	%r1,%r1,%r3	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	jal	storeByte	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r1,-44(%r30)	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r1,%r1,$1	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-44(%r30),%r1	
	j	L_intToStr_7	
	nop
L_intToStr_9:
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r1,-40(%r30)	
	lw	%r2,-44(%r30)	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r2	
	lhi	%r2,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_intToStr_10	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_intToStr_10:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r30,0(%r30)	
	jr	%r31	
	nop
	.section	.data
	.section	.text
	.addressing	Word
	;.addressing	Word
checkbuffer:
L_lib_lcd_dlxsim_1:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	subi	%r29,%r29,$8	
	; Automatically 9 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_2	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_2:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r30,0(%r30)	
	jr	%r31	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
getbytes:
L_lib_lcd_dlxsim_3:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	subi	%r29,%r29,$8	
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_4	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_4:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r30,0(%r30)	
	jr	%r31	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
sendcommand:
L_lib_lcd_dlxsim_5:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	subi	%r29,%r29,$8	
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_6	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_6:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r30,0(%r30)	
	jr	%r31	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
t_print:
L_lib_lcd_dlxsim_7:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	subi	%r29,%r29,$8	
	; Automatically 6 NOPs removed by reduceNOPs.sh


	lhi	%r2, $0x200

L_lib_lcd_dlxsim_8:
	nop	; Automatically Added by addNopAfterLabels.pl
	lb	%r3,0(%r1)	
	lhi	%r4,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%r27,%r3,%r4	
	bnez	%r27,L_lib_lcd_dlxsim_9	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_10	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_9:
	nop	; Automatically Added by addNopAfterLabels.pl
	lb	%r3,0(%r1)	
	; Automatically 2 NOPs removed by reduceNOPs.sh


	sw	0(%r2), %r3

	; Automatically 2 NOPs removed by reduceNOPs.sh
	lhi	%r3,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$1	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r3	
	j	L_lib_lcd_dlxsim_8	
	nop
L_lib_lcd_dlxsim_10:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	lhi	%r28,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_11	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_11:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r30,0(%r30)	
	jr	%r31	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
t_cursor:
L_lib_lcd_dlxsim_12:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	subi	%r29,%r29,$8	
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_13	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_13:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r30,0(%r30)	
	jr	%r31	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
t_enable:
L_lib_lcd_dlxsim_14:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	subi	%r29,%r29,$8	
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_15	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_15:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r30,0(%r30)	
	jr	%r31	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
g_print:
L_lib_lcd_dlxsim_16:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	subi	%r29,%r29,$8	
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_17	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_17:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r30,0(%r30)	
	jr	%r31	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
g_drawrect:
L_lib_lcd_dlxsim_18:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	subi	%r29,%r29,$8	
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_19	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_19:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r30,0(%r30)	
	jr	%r31	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
g_drawline:
L_lib_lcd_dlxsim_20:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	subi	%r29,%r29,$8	
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_21	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_21:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r30,0(%r30)	
	jr	%r31	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
g_makebar:
L_lib_lcd_dlxsim_22:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	subi	%r29,%r29,$8	
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_23	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_23:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r30,0(%r30)	
	jr	%r31	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
g_setbar:
L_lib_lcd_dlxsim_24:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	subi	%r29,%r29,$8	
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_25	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_25:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r30,0(%r30)	
	jr	%r31	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
g_makeswitch:
L_lib_lcd_dlxsim_26:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	subi	%r29,%r29,$8	
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_27	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_27:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r30,0(%r30)	
	jr	%r31	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
g_makemenubutton:
L_lib_lcd_dlxsim_28:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	subi	%r29,%r29,$8	
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_29	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_29:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r30,0(%r30)	
	jr	%r31	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
g_makeradiogroup:
L_lib_lcd_dlxsim_30:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	subi	%r29,%r29,$8	
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_31	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_31:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r30,0(%r30)	
	jr	%r31	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
d_clear:
L_lib_lcd_dlxsim_32:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	subi	%r29,%r29,$8	
	; Automatically 9 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_33	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_33:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r30,0(%r30)	
	jr	%r31	
	nop
	.section	.data
	.section	.text
	.addressing	Word
	;.addressing	Word
loadByteUnsigned:
L_loadStoreByte_1:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	subi	%r29,%r29,$8	
	; Automatically 6 NOPs removed by reduceNOPs.sh
	andi	%r2,%r1,$-4	
	andi	%r1,%r1,$3	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r1,%r1,$1	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subu	%r1,%r0,%r1	
	lw	%r2,0(%r2)	
	slli	%r1,%r1,$3	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sra	%r1,%r2,%r1	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%r28,%r1,$255	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_loadStoreByte_2	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_loadStoreByte_2:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r30,0(%r30)	
	jr	%r31	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
loadByteSigned:
L_loadStoreByte_3:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	subi	%r29,%r29,$8	
	; Automatically 6 NOPs removed by reduceNOPs.sh
	andi	%r2,%r1,$-4	
	andi	%r1,%r1,$3	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r1,%r1,$1	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subu	%r1,%r0,%r1	
	lw	%r2,0(%r2)	
	slli	%r1,%r1,$3	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sra	%r1,%r2,%r1	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%r1,%r1,$255	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slli	%r1,%r1,$24	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	srai	%r28,%r1,$24	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_loadStoreByte_4	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_loadStoreByte_4:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r30,0(%r30)	
	jr	%r31	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
storeByte:
L_loadStoreByte_5:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	subi	%r29,%r29,$8	
	; Automatically 8 NOPs removed by reduceNOPs.sh
	andi	%r3,%r1,$3	
	andi	%r4,%r1,$3	
	lhi	%r5,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$3	
	andi	%r1,%r1,$-4	
	lhi	%r6,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r6,%r6,$255	
	addi	%r4,%r4,$1	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subu	%r4,%r0,%r4	
	sub	%r3,%r5,%r3	
	lw	%r5,0(%r1)	
	slli	%r4,%r4,$3	
	slli	%r3,%r3,$3	
	sll	%r2,%r2,%r4	
	sll	%r3,%r6,%r3	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r3,%r3,$1	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subu	%r3,%r0,%r3	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	and	%r3,%r5,%r3	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	or	%r28,%r3,%r2	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%r1),%r28	
	j	L_loadStoreByte_6	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_loadStoreByte_6:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r30,0(%r30)	
	jr	%r31	
	nop
	.section	.data
L_testOpt_1:
	.data.8	90
	.data.8	97
	.data.8	104
	.data.8	108
	.data.8	58
	.data.8	32
	.space	1
L_testOpt_2:
	.data.8	13
	.data.8	10
	.space	1
	.section	.text
	.addressing	Word
	;.addressing	Word
main:
L_testOpt_3:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	subi	%r29,%r29,$28	
	; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%r2,%r30,$20	
	lhi	%r1,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$42	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	intToStr	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r1,$( L_testOpt_1	/0x10000)
	ori	%r1,%r1,$( L_testOpt_1	%0x10000)
	; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r1,%r30,$20	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r1,$( L_testOpt_2	/0x10000)
	ori	%r1,%r1,$( L_testOpt_2	%0x10000)
	; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_testOpt_4	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_testOpt_4:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r30,0(%r30)	
	jr	%r31	
	nop
exit: