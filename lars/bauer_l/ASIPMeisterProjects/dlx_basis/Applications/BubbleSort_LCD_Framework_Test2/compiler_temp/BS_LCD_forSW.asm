	.section	.data
	.section	.text
	.addressing	Word
	.section	.text
	.addressing	Word
	;.addressing	Word

	xor	%r30, %r30, %r30
	xor	%r29, %r29, %r29
	xor	%r28, %r28, %r28
	nop
	lhi	%r30, $(0xFFFFC/0x10000)
	lhi	%r29, $(0xFFFFC/0x10000)
	nop
	nop
	ori	%r30, %r30, $(0xFFFFC%0x10000)
	ori	%r29, %r29, $(0xFFFFC%0x10000)
	nop
	nop
	nop
	sw	-4(%r29), %r30
	sw	-8(%r29), %r31
	addi	%r29, %r30, $-8
	nop
	nop
	nop
	jal	main	
	nop
	nop
	nop
	nop
	nop
	sw	0(%r29), %r1
	jal	exit
	nop
	nop

	;.addressing	Word
intToStr:
L_intToStr_1:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	nop
	subi	%r29,%r29,$56	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-36(%r30),%r1	
	sw	-40(%r30),%r2	
	nop
	nop
	nop
	; Automatically 5 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	nop	;;8,10
	nop	;;8,10
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop	;;10,12
	nop	;;10,12
	sw	-44(%r30),%r2	
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-48(%r30),%r2	
	nop	; Automatically added by findLoadStoreProblem.sh
	lw	%r2,-36(%r30)	
	nop	;;18,22
	nop	;;18,22
	nop	;;18,22
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%r27,%r2,%r1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%r27,L_intToStr_2	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_intToStr_3	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_intToStr_2:
	lw	%r1,-36(%r30)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sub	%r1,%r0,%r1	
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$45	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	sw	-36(%r30),%r1	
	nop	; Automatically added by findLoadStoreProblem.sh
	lw	%r1,-40(%r30)	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r1,-44(%r30)	
	nop	;;11,15
	nop	;;11,15
	nop	;;11,15
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r1,%r1,$1	
	nop	;;15,19
	nop	;;15,19
	nop	;;15,19
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-44(%r30),%r1	
	j	L_intToStr_5	
	nop
	nop
	nop
L_intToStr_3:
	lw	%r2,-36(%r30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%r27,%r2,%r1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%r27,L_intToStr_4	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_intToStr_6	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_intToStr_4:
	lw	%r1,-40(%r30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$48	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r1,-44(%r30)	
	nop	;;6,10
	nop	;;6,10
	nop	;;6,10
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r1,%r1,$1	
	nop	;;10,14
	nop	;;10,14
	nop	;;10,14
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-44(%r30),%r1	
	nop
	nop
	nop
L_intToStr_5:
	lw	%r2,-36(%r30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%r27,%r2,%r1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%r27,L_intToStr_6	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_intToStr_7	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_intToStr_6:
	subi	%r1,%r30,$32	
	lw	%r3,-48(%r30)	
	nop	;;1,5
	nop	;;1,5
	nop	;;1,5
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r3	
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$10	
	lw	%r3,-36(%r30)	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
	; Automatically 1 NOPs removed by reduceNOPs.sh
	MOD	%r2,%r3,%r2	
	nop	;;11,15
	nop	;;11,15
	nop	;;11,15
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r2,%r2,$48	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r1,-48(%r30)	
	nop	;;17,19
	nop	;;17,19
	lw	%r2,-36(%r30)	
	nop	;;19,21
	nop	;;19,21
	addi	%r1,%r1,$1	
	nop	;;21,25
	nop	;;21,25
	nop	;;21,25
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-48(%r30),%r1	
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$10	
	nop	;;26,30
	nop	;;26,30
	nop	;;26,30
	; Automatically 1 NOPs removed by reduceNOPs.sh
	div	%r1,%r2,%r1	
	nop	;;30,34
	nop	;;30,34
	nop	;;30,34
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-36(%r30),%r1	
	j	L_intToStr_5	
	nop
	nop
	nop
L_intToStr_7:
	lw	%r2,-48(%r30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sgt	%r27,%r2,%r1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%r27,L_intToStr_8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_intToStr_9	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_intToStr_8:
	lw	%r2,-48(%r30)	
	subi	%r1,%r30,$32	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	subi	%r2,%r2,$1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r2	
	sw	-48(%r30),%r2	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 5 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	loadByteUnsigned	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r1,-40(%r30)	
	lw	%r3,-44(%r30)	
	add	%r2,%r28,%r0	
	nop	;;16,19
	nop	;;16,19
	nop	;;16,19
	add	%r1,%r1,%r3	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r1,-44(%r30)	
	nop	;;21,25
	nop	;;21,25
	nop	;;21,25
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r1,%r1,$1	
	nop	;;25,29
	nop	;;25,29
	nop	;;25,29
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-44(%r30),%r1	
	j	L_intToStr_7	
	nop
	nop
	nop
L_intToStr_9:
	lw	%r1,-40(%r30)	
	lw	%r2,-44(%r30)	
	nop	;;1,5
	nop	;;1,5
	nop	;;1,5
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r2	
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_intToStr_10	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_intToStr_10:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	jr	%r31	
	nop
	nop
	nop
	.section	.data
	.section	.text
	.addressing	Word
	;.addressing	Word
checkbuffer:
L_lib_lcd_dlxsim_1:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	nop
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop	;;6,10
	nop	;;6,10
	nop	;;6,10
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_2	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_2:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
getbytes:
L_lib_lcd_dlxsim_3:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	nop
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_4	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_4:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
sendcommand:
L_lib_lcd_dlxsim_5:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	nop
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_6	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_6:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
t_print:
L_lib_lcd_dlxsim_7:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	nop
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 6 NOPs removed by reduceNOPs.sh


	lhi	%r2, $0x200
	nop
	nop
	nop

	nop
	nop
	nop
L_lib_lcd_dlxsim_8:
	lb	%r3,0(%r1)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%r4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%r27,%r3,%r4	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%r27,L_lib_lcd_dlxsim_9	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_10	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_9:
	add	%r3,%r1,%r0	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lb	%r3,0(%r3)	
	lhi	%r4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$1	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r4	


	nop
	nop
	nop
	sw	0(%r2), %r3

	j	L_lib_lcd_dlxsim_8	
	nop
	nop
	nop
L_lib_lcd_dlxsim_10:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_11	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_11:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
t_cursor:
L_lib_lcd_dlxsim_12:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	nop
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_13	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_13:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
t_enable:
L_lib_lcd_dlxsim_14:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	nop
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_15	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_15:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
g_print:
L_lib_lcd_dlxsim_16:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	nop
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_17	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_17:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
g_drawrect:
L_lib_lcd_dlxsim_18:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	nop
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_19	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_19:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
g_drawline:
L_lib_lcd_dlxsim_20:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	nop
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_21	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_21:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
g_makebar:
L_lib_lcd_dlxsim_22:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	nop
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_23	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_23:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
g_setbar:
L_lib_lcd_dlxsim_24:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	nop
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_25	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_25:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
g_makeswitch:
L_lib_lcd_dlxsim_26:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	nop
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_27	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_27:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
g_makemenubutton:
L_lib_lcd_dlxsim_28:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	nop
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_29	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_29:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
g_makeradiogroup:
L_lib_lcd_dlxsim_30:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	nop
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_31:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
d_clear:
L_lib_lcd_dlxsim_32:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	nop
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop	;;6,10
	nop	;;6,10
	nop	;;6,10
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_dlxsim_33	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_dlxsim_33:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	jr	%r31	
	nop
	nop
	nop
	.section	.data
	.section	.text
	.addressing	Word
	;.addressing	Word
loadByteUnsigned:
L_loadStoreByte_1:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	nop
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r2,%r1,%r0	
	nop
	nop
	nop
	andi	%r1,%r2,$3	
	nop	;;3,7
	nop	;;3,7
	nop	;;3,7
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r3,%r1,$1	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subu	%r3,%r0,%r3	
	lhi	%r1,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$-4	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	; Automatically 1 NOPs removed by reduceNOPs.sh
	and	%r1,%r2,%r1	
	slli	%r2,%r3,$3	
	nop	;;13,16
	nop	;;13,16
	nop	;;13,16
	lw	%r1,0(%r1)	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sra	%r1,%r1,%r2	
	nop	;;20,24
	nop	;;20,24
	nop	;;20,24
	; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%r28,%r1,$255	
	nop	;;24,28
	nop	;;24,28
	nop	;;24,28
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_loadStoreByte_2	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_loadStoreByte_2:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
loadByteSigned:
L_loadStoreByte_3:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	nop
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r2,%r1,%r0	
	nop
	nop
	nop
	andi	%r1,%r2,$3	
	nop	;;3,7
	nop	;;3,7
	nop	;;3,7
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r3,%r1,$1	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subu	%r3,%r0,%r3	
	lhi	%r1,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$-4	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	; Automatically 1 NOPs removed by reduceNOPs.sh
	and	%r1,%r2,%r1	
	slli	%r2,%r3,$3	
	nop	;;13,16
	nop	;;13,16
	nop	;;13,16
	lw	%r1,0(%r1)	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sra	%r1,%r1,%r2	
	nop	;;20,24
	nop	;;20,24
	nop	;;20,24
	; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%r1,%r1,$255	
	nop	;;24,28
	nop	;;24,28
	nop	;;24,28
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slli	%r1,%r1,$24	
	nop	;;28,32
	nop	;;28,32
	nop	;;28,32
	; Automatically 1 NOPs removed by reduceNOPs.sh
	srai	%r28,%r1,$24	
	nop	;;32,36
	nop	;;32,36
	nop	;;32,36
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_loadStoreByte_4	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_loadStoreByte_4:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
storeByte:
L_loadStoreByte_5:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	nop
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r3,%r1,%r0	
	nop
	nop
	nop
	; Automatically 2 NOPs removed by reduceNOPs.sh
	andi	%r1,%r3,$3	
	nop	;;4,6
	nop	;;4,6
	andi	%r4,%r3,$3	
	lhi	%r5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$3	
	nop	;;7,10
	nop	;;7,10
	nop	;;7,10
	addi	%r4,%r4,$1	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subu	%r4,%r0,%r4	
	sub	%r5,%r5,%r1	
	lhi	%r1,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$-4	
	lhi	%r6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r6,%r6,$255	
	nop	;;13,16
	nop	;;13,16
	nop	;;13,16
	and	%r1,%r3,%r1	
	slli	%r3,%r4,$3	
	slli	%r4,%r5,$3	
	nop	;;18,20
	nop	;;18,20
	lw	%r28,0(%r1)	
	sll	%r2,%r2,%r3	
	sll	%r3,%r6,%r4	
	nop	;;22,26
	nop	;;22,26
	nop	;;22,26
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r3,%r3,$1	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subu	%r3,%r0,%r3	
	nop	;;26,30
	nop	;;26,30
	nop	;;26,30
	; Automatically 1 NOPs removed by reduceNOPs.sh
	and	%r28,%r28,%r3	
	nop	;;30,34
	nop	;;30,34
	nop	;;30,34
	; Automatically 1 NOPs removed by reduceNOPs.sh
	or	%r28,%r28,%r2	
	nop	;;34,38
	nop	;;34,38
	nop	;;34,38
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%r1),%r28	
	j	L_loadStoreByte_6	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_loadStoreByte_6:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	jr	%r31	
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
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	nop
	subi	%r29,%r29,$48	
	nop
	nop
	nop
	; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%r1,$( L_main_1	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( L_main_1	%0x10000)
	nop	;;3,6
	nop	;;3,6
	nop	;;3,6
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$1	
	nop	;;6,10
	nop	;;6,10
	nop	;;6,10
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-36(%r30),%r2	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-40(%r30),%r1	
	nop
	nop
	nop
L_main_12:
	lw	%r1,-40(%r30)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%r1,%r1,$7	
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%r27,%r1,%r2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%r27,L_main_13	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_main_14	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_main_13:
	lhi	%r1,$( L_main_2	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( L_main_2	%0x10000)
	nop	;;0,5
	nop	;;0,5
	nop	;;0,5
	; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
L_main_14:
	lw	%r4,-40(%r30)	
	lhi	%r1,$( _array	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( _array	%0x10000)
	nop	;;2,4
	nop	;;2,4
	lhi	%r3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$4	
	subi	%r2,%r30,$32	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	mult	%r3,%r4,%r3	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r3	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r1,0(%r1)	
	nop	;;16,21
	nop	;;16,21
	nop	;;16,21
	; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	intToStr	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r1,%r30,$32	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r1,$( L_main_3	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( L_main_3	%0x10000)
	nop	;;24,29
	nop	;;24,29
	nop	;;24,29
	; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 3 NOPs removed by reduceNOPs.sh
	lw	%r2,-40(%r30)	
	nop	;;31,34
	nop	;;31,34
	nop	;;31,34
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop	;;34,38
	nop	;;34,38
	nop	;;34,38
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sgt	%r27,%r2,%r1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%r27,L_main_15	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_main_19	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_main_15:
	lw	%r1,-40(%r30)	
	nop	;;0,3
	nop	;;0,3
	nop	;;0,3
	lhi	%r2,$( _array	/0x10000)
	nop
	nop
	nop
	ori	%r2,%r2,$( _array	%0x10000)
	subi	%r1,%r1,$1	
	lhi	%r3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$4	
	lhi	%r4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$4	
	lhi	%r5,$( _array	/0x10000)
	nop
	nop
	nop
	ori	%r5,%r5,$( _array	%0x10000)
	nop	;;7,9
	nop	;;7,9
	mult	%r1,%r1,%r3	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r3,-40(%r30)	
	add	%r1,%r2,%r1	
	nop	;;14,17
	nop	;;14,17
	nop	;;14,17
	mult	%r3,%r3,%r4	
	lw	%r1,0(%r1)	
	nop	;;18,21
	nop	;;18,21
	nop	;;18,21
	add	%r2,%r5,%r3	
	nop	;;21,25
	nop	;;21,25
	nop	;;21,25
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r2,0(%r2)	
	nop	;;25,29
	nop	;;25,29
	nop	;;25,29
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sleu	%r27,%r1,%r2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%r27,L_main_16	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_main_17	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_main_16:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$1	
	j	L_main_18	
	nop
	nop
	nop
L_main_17:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
L_main_18:
	lw	%r2,-36(%r30)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	and	%r1,%r2,%r1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-36(%r30),%r1	
	nop
	nop
	nop
L_main_19:
	lw	%r1,-40(%r30)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r1,%r1,$1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r2,%r1,%r0	
	sw	-40(%r30),%r1	
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$20	
	nop	;;10,14
	nop	;;10,14
	nop	;;10,14
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%r27,%r2,%r1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%r27,L_main_12	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_main_20	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_main_20:
	lhi	%r1,$( L_main_4	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( L_main_4	%0x10000)
	nop	;;0,5
	nop	;;0,5
	nop	;;0,5
	; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r28,-36(%r30)	
	nop	;;6,10
	nop	;;6,10
	nop	;;6,10
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_main_21	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_main_21:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh


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
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	nop
	subi	%r29,%r29,$48	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
	lhi	%r1,$( L_main_5	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( L_main_5	%0x10000)
	nop	;;2,7
	nop	;;2,7
	nop	;;2,7
	; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh


	lhi	%r1,$0x100
	nop
	nop
	nop
	lw	%r1, 0(%r1)
	nop
	nop
	nop

	nop	;;8,11
	nop	;;8,11
	nop	;;8,11
	sw	-36(%r30),%r1	
	nop	;;11,13
	nop	;;11,13
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$19	
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	bubbleSort	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 5 NOPs removed by reduceNOPs.sh


	lhi	%r1,$0x100
	nop
	nop
	nop
	lw	%r1, 0(%r1)
	nop
	nop
	nop

	lw	%r2,-36(%r30)	
	nop	;;17,21
	nop	;;17,21
	nop	;;17,21
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sub	%r1,%r1,%r2	
	nop	;;21,25
	nop	;;21,25
	nop	;;21,25
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-36(%r30),%r1	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	printArray	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r1,$( L_main_6	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( L_main_6	%0x10000)
	sw	-40(%r30),%r28	
	nop	;;28,32
	nop	;;28,32
	nop	;;28,32
	; Automatically 5 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 3 NOPs removed by reduceNOPs.sh
	lw	%r2,-40(%r30)	
	nop	;;34,37
	nop	;;34,37
	nop	;;34,37
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop	;;37,41
	nop	;;37,41
	nop	;;37,41
	; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%r27,%r2,%r1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%r27,L_main_32	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_main_33	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_main_32:
	lhi	%r1,$( L_main_7	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( L_main_7	%0x10000)
	nop	;;0,5
	nop	;;0,5
	nop	;;0,5
	; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_main_34	
	nop
	nop
	nop
L_main_33:
	lhi	%r1,$( L_main_8	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( L_main_8	%0x10000)
	nop	;;0,5
	nop	;;0,5
	nop	;;0,5
	; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
L_main_34:
	lhi	%r1,$( L_main_9	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( L_main_9	%0x10000)
	nop	;;0,5
	nop	;;0,5
	nop	;;0,5
	; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r1,-36(%r30)	
	subi	%r2,%r30,$32	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	intToStr	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r1,%r30,$32	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r1,$( L_main_10	/0x10000)
	nop
	nop
	nop
	ori	%r1,%r1,$( L_main_10	%0x10000)
	nop	;;11,16
	nop	;;11,16
	nop	;;11,16
	; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop	;;21,25
	nop	;;21,25
	nop	;;21,25
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_main_35	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_main_35:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	jr	%r31	
	nop
	nop
	nop
	nop
exit:
	nop
	nop