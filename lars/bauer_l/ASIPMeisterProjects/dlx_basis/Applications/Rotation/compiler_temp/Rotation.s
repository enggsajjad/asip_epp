	.section	.data
	.section	.text
	.addressing	Word
intToStr:
L_intToStr_1:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$56	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-36(%GPR30),%GPR1	
	sw	-40(%GPR30),%GPR2	
	nop
	nop
	nop
				; Automatically 5 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	;;8,10
	nop	;;8,10
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	;;10,12
	nop	;;10,12
	sw	-44(%GPR30),%GPR2	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-48(%GPR30),%GPR2	
	lw	%GPR2,-36(%GPR30)	
	nop	;;18,22
	nop	;;18,22
	nop	;;18,22
				; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR2,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_intToStr_2	
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
	lw	%GPR1,-36(%GPR30)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sub	%GPR1,%GPR0,%GPR1	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$45	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	sw	-36(%GPR30),%GPR1	
	lw	%GPR1,-40(%GPR30)	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-44(%GPR30)	
	nop	;;11,15
	nop	;;11,15
	nop	;;11,15
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop	;;15,19
	nop	;;15,19
	nop	;;15,19
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-44(%GPR30),%GPR1	
	j	L_intToStr_5	
	nop
	nop
	nop
L_intToStr_3:
	lw	%GPR2,-36(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
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
	seq	%GPR27,%GPR2,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_intToStr_4	
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
	lw	%GPR1,-40(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$48	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-44(%GPR30)	
	nop	;;6,10
	nop	;;6,10
	nop	;;6,10
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop	;;10,14
	nop	;;10,14
	nop	;;10,14
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-44(%GPR30),%GPR1	
	nop
	nop
	nop
L_intToStr_5:
	lw	%GPR2,-36(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
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
	sne	%GPR27,%GPR2,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_intToStr_6	
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
	subi	%GPR1,%GPR30,$32	
	lw	%GPR3,-48(%GPR30)	
	nop	;;1,5
	nop	;;1,5
	nop	;;1,5
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR3	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$10	
	lw	%GPR3,-36(%GPR30)	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
				; Automatically 1 NOPs removed by reduceNOPs.sh
	MOD	%GPR2,%GPR3,%GPR2	
	nop	;;11,15
	nop	;;11,15
	nop	;;11,15
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR2,%GPR2,$48	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-48(%GPR30)	
	nop	;;17,19
	nop	;;17,19
	lw	%GPR2,-36(%GPR30)	
	nop	;;19,21
	nop	;;19,21
	addi	%GPR1,%GPR1,$1	
	nop	;;21,25
	nop	;;21,25
	nop	;;21,25
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-48(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$10	
	nop	;;26,30
	nop	;;26,30
	nop	;;26,30
				; Automatically 1 NOPs removed by reduceNOPs.sh
	div	%GPR1,%GPR2,%GPR1	
	nop	;;30,34
	nop	;;30,34
	nop	;;30,34
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-36(%GPR30),%GPR1	
	j	L_intToStr_5	
	nop
	nop
	nop
L_intToStr_7:
	lw	%GPR2,-48(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
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
	sgt	%GPR27,%GPR2,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_intToStr_8	
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
	lw	%GPR2,-48(%GPR30)	
	subi	%GPR1,%GPR30,$32	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	subi	%GPR2,%GPR2,$1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	sw	-48(%GPR30),%GPR2	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
				; Automatically 5 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	loadByteUnsigned	
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
	lw	%GPR3,-44(%GPR30)	
	add	%GPR2,%GPR28,%GPR0	
	nop	;;16,19
	nop	;;16,19
	nop	;;16,19
	add	%GPR1,%GPR1,%GPR3	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-44(%GPR30)	
	nop	;;21,25
	nop	;;21,25
	nop	;;21,25
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop	;;25,29
	nop	;;25,29
	nop	;;25,29
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-44(%GPR30),%GPR1	
	j	L_intToStr_7	
	nop
	nop
	nop
L_intToStr_9:
	lw	%GPR1,-40(%GPR30)	
	lw	%GPR2,-44(%GPR30)	
	nop	;;1,5
	nop	;;1,5
	nop	;;1,5
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	storeByte	
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
	.section	.data
	.section	.text
	.addressing	Word
wait:
L_lib_lcd_1:
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
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop
	nop
	nop
L_lib_lcd_2:
	add	%GPR3,%GPR2,%GPR0	
	addi	%GPR2,%GPR2,$1	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	sne	%GPR27,%GPR3,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_lib_lcd_2	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_3	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_3:
	subi	%GPR28,%GPR2,$1	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_4	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_4:
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
				; Automatically 1 NOPs removed by reduceNOPs.sh
checkbuffer:
L_lib_lcd_5:
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
				; Automatically 9 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop	;;6,10
	nop	;;6,10
	nop	;;6,10
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_6	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_6:
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
				; Automatically 1 NOPs removed by reduceNOPs.sh
getbytes:
L_lib_lcd_7:
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
	lhi	%GPR28,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_8:
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
				; Automatically 1 NOPs removed by reduceNOPs.sh
sendcommand:
L_lib_lcd_9:
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
	lhi	%GPR28,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_10	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_10:
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
				; Automatically 1 NOPs removed by reduceNOPs.sh
t_print:
L_lib_lcd_11:
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


	lhi	%GPR2, $0x200
	nop
	nop
	nop

	nop
	nop
	nop
L_lib_lcd_12:
	lb	%GPR3,0(%GPR1)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR3,%GPR4	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_lib_lcd_13	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_14	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_13:
	add	%GPR3,%GPR1,%GPR0	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lb	%GPR3,0(%GPR3)	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$1	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR4	


	nop
	nop
	nop
	sw	0(%GPR2), %GPR3

	j	L_lib_lcd_12	
	nop
	nop
	nop
L_lib_lcd_14:
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
	j	L_lib_lcd_15	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_15:
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
				; Automatically 1 NOPs removed by reduceNOPs.sh
t_cursor:
L_lib_lcd_16:
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
	lhi	%GPR28,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_17	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_17:
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
				; Automatically 1 NOPs removed by reduceNOPs.sh
t_enable:
L_lib_lcd_18:
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
	lhi	%GPR28,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_19	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_19:
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
				; Automatically 1 NOPs removed by reduceNOPs.sh
g_print:
L_lib_lcd_20:
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
	lhi	%GPR28,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_21	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_21:
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
				; Automatically 1 NOPs removed by reduceNOPs.sh
g_drawrect:
L_lib_lcd_22:
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
	lhi	%GPR28,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_23	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_23:
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
				; Automatically 1 NOPs removed by reduceNOPs.sh
g_drawline:
L_lib_lcd_24:
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
	lhi	%GPR28,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_25	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_25:
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
				; Automatically 1 NOPs removed by reduceNOPs.sh
g_makebar:
L_lib_lcd_26:
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
	lhi	%GPR28,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_27	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_27:
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
				; Automatically 1 NOPs removed by reduceNOPs.sh
g_setbar:
L_lib_lcd_28:
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
	lhi	%GPR28,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_29	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_29:
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
				; Automatically 1 NOPs removed by reduceNOPs.sh
g_makeswitch:
L_lib_lcd_30:
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
	lhi	%GPR28,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_31	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_31:
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
				; Automatically 1 NOPs removed by reduceNOPs.sh
g_makemenubutton:
L_lib_lcd_32:
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
	lhi	%GPR28,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_33	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_33:
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
				; Automatically 1 NOPs removed by reduceNOPs.sh
g_makeradiogroup:
L_lib_lcd_34:
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
	lhi	%GPR28,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_35	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_35:
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
				; Automatically 1 NOPs removed by reduceNOPs.sh
d_clear:
L_lib_lcd_36:
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
				; Automatically 9 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop	;;6,10
	nop	;;6,10
	nop	;;6,10
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_37	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_lib_lcd_37:
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
	.section	.data
	.section	.text
	.addressing	Word
loadByteUnsigned:
L_loadStoreByte_1:
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
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	andi	%GPR1,%GPR2,$3	
	nop	;;3,7
	nop	;;3,7
	nop	;;3,7
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR3,%GPR1,$1	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subu	%GPR3,%GPR0,%GPR3	
	lhi	%GPR1,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$-4	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	and	%GPR1,%GPR2,%GPR1	
	slli	%GPR2,%GPR3,$3	
	nop	;;13,16
	nop	;;13,16
	nop	;;13,16
	lw	%GPR1,0(%GPR1)	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sra	%GPR1,%GPR1,%GPR2	
	nop	;;20,24
	nop	;;20,24
	nop	;;20,24
				; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR28,%GPR1,$255	
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
				; Automatically 1 NOPs removed by reduceNOPs.sh
loadByteSigned:
L_loadStoreByte_3:
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
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	andi	%GPR1,%GPR2,$3	
	nop	;;3,7
	nop	;;3,7
	nop	;;3,7
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR3,%GPR1,$1	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subu	%GPR3,%GPR0,%GPR3	
	lhi	%GPR1,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$-4	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	and	%GPR1,%GPR2,%GPR1	
	slli	%GPR2,%GPR3,$3	
	nop	;;13,16
	nop	;;13,16
	nop	;;13,16
	lw	%GPR1,0(%GPR1)	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sra	%GPR1,%GPR1,%GPR2	
	nop	;;20,24
	nop	;;20,24
	nop	;;20,24
				; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR1,%GPR1,$255	
	nop	;;24,28
	nop	;;24,28
	nop	;;24,28
				; Automatically 1 NOPs removed by reduceNOPs.sh
	slli	%GPR1,%GPR1,$24	
	nop	;;28,32
	nop	;;28,32
	nop	;;28,32
				; Automatically 1 NOPs removed by reduceNOPs.sh
	srai	%GPR28,%GPR1,$24	
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
				; Automatically 1 NOPs removed by reduceNOPs.sh
storeByte:
L_loadStoreByte_5:
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
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR1,%GPR0	
	nop
	nop
	nop
				; Automatically 2 NOPs removed by reduceNOPs.sh
	andi	%GPR1,%GPR3,$3	
	nop	;;4,6
	nop	;;4,6
	andi	%GPR4,%GPR3,$3	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$3	
	nop	;;7,10
	nop	;;7,10
	nop	;;7,10
	addi	%GPR4,%GPR4,$1	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subu	%GPR4,%GPR0,%GPR4	
	sub	%GPR5,%GPR5,%GPR1	
	lhi	%GPR1,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$-4	
	lhi	%GPR6,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$255	
	nop	;;13,16
	nop	;;13,16
	nop	;;13,16
	and	%GPR1,%GPR3,%GPR1	
	slli	%GPR3,%GPR4,$3	
	slli	%GPR4,%GPR5,$3	
	nop	;;18,20
	nop	;;18,20
	lw	%GPR28,0(%GPR1)	
	sll	%GPR2,%GPR2,%GPR3	
	sll	%GPR3,%GPR6,%GPR4	
	nop	;;22,26
	nop	;;22,26
	nop	;;22,26
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR3,%GPR3,$1	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subu	%GPR3,%GPR0,%GPR3	
	nop	;;26,30
	nop	;;26,30
	nop	;;26,30
				; Automatically 1 NOPs removed by reduceNOPs.sh
	and	%GPR28,%GPR28,%GPR3	
	nop	;;30,34
	nop	;;30,34
	nop	;;30,34
				; Automatically 1 NOPs removed by reduceNOPs.sh
	or	%GPR28,%GPR28,%GPR2	
	nop	;;34,38
	nop	;;34,38
	nop	;;34,38
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR28	
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
	.data.8	115
	.data.8	105
	.data.8	110
	.data.8	65
	.data.8	108
	.data.8	112
	.data.8	104
	.data.8	97
	.data.8	61
	.space	1
L_Rotation_3:
	.data.8	32
	.data.8	100
	.data.8	101
	.data.8	108
	.data.8	116
	.data.8	97
	.data.8	88
	.data.8	61
	.space	1
L_Rotation_4:
	.data.8	13
	.data.8	10
	.data.8	99
	.data.8	111
	.data.8	115
	.data.8	65
	.data.8	108
	.data.8	112
	.data.8	104
	.data.8	97
	.data.8	61
	.space	1
L_Rotation_5:
	.data.8	32
	.data.8	100
	.data.8	101
	.data.8	108
	.data.8	116
	.data.8	97
	.data.8	89
	.data.8	61
	.space	1
L_Rotation_6:
	.data.8	13
	.data.8	10
	.data.8	116
	.data.8	101
	.data.8	109
	.data.8	112
	.data.8	49
	.data.8	61
	.space	1
L_Rotation_7:
	.data.8	32
	.data.8	116
	.data.8	101
	.data.8	109
	.data.8	112
	.data.8	50
	.data.8	61
	.space	1
L_Rotation_8:
	.data.8	32
	.data.8	114
	.data.8	101
	.data.8	115
	.data.8	117
	.data.8	108
	.data.8	116
	.data.8	80
	.data.8	111
	.data.8	105
	.data.8	110
	.data.8	116
	.data.8	46
	.data.8	121
	.data.8	61
	.space	1
L_Rotation_9:
	.data.8	13
	.data.8	10
	.data.8	114
	.data.8	101
	.data.8	115
	.data.8	117
	.data.8	108
	.data.8	116
	.data.8	80
	.data.8	111
	.data.8	105
	.data.8	110
	.data.8	116
	.data.8	46
	.data.8	121
	.data.8	61
	.space	1
L_Rotation_10:
	.data.8	13
	.data.8	10
	.data.8	114
	.data.8	101
	.data.8	115
	.data.8	117
	.data.8	108
	.data.8	116
	.data.8	80
	.data.8	111
	.data.8	105
	.data.8	110
	.data.8	116
	.data.8	46
	.data.8	121
	.data.8	61
	.space	1
L_Rotation_11:
	.data.8	13
	.data.8	10
	.data.8	10
	.space	1
L_Rotation_12:
	.data.8	40
	.space	1
L_Rotation_13:
	.data.8	44
	.space	1
L_Rotation_14:
	.data.8	41
	.space	1
L_Rotation_15:
	.data.8	32
	.space	1
L_Rotation_16:
	.data.8	32
	.space	1
L_Rotation_17:
	.data.8	32
	.space	1
L_Rotation_18:
	.data.8	13
	.data.8	10
	.space	1
	;.global	_bargraphValue
	.align	4
_bargraphValue:
	.space	4
L_Rotation_19:
	.data.8	65
	.space	1
L_Rotation_20:
	.data.8	78
	.space	1
L_Rotation_21:
	.data.8	66
	.space	1
L_Rotation_22:
	.data.8	82
	.data.8	111
	.data.8	116
	.data.8	97
	.data.8	116
	.data.8	105
	.data.8	111
	.data.8	110
	.data.8	58
	.data.8	13
	.data.8	10
	.space	1
	.section	.text
	.addressing	Word
sin:
L_Rotation_23:
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
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
				; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_Rotation_25	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Rotation_24	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_Rotation_24:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$80	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sgt	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_Rotation_25	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Rotation_26	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_Rotation_25:
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
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	j	L_Rotation_27	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_Rotation_26:
	lhi	%GPR3,$( _sinusLUT	/0x10000)
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$( _sinusLUT	%0x10000)
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	;;6,8
	nop	;;6,8
	mult	%GPR1,%GPR1,%GPR4	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR3,%GPR1	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR28,0(%GPR1)	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Rotation_27	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_Rotation_27:
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
				; Automatically 1 NOPs removed by reduceNOPs.sh
cos:
L_Rotation_28:
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
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
				; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_Rotation_30	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Rotation_29	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_Rotation_29:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$80	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sgt	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_Rotation_30	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Rotation_31	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_Rotation_30:
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
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	j	L_Rotation_32	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_Rotation_31:
	lhi	%GPR3,$( _cosinusLUT	/0x10000)
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$( _cosinusLUT	%0x10000)
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	;;6,8
	nop	;;6,8
	mult	%GPR1,%GPR1,%GPR4	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR3,%GPR1	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR28,0(%GPR1)	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Rotation_32	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_Rotation_32:
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
				; Automatically 1 NOPs removed by reduceNOPs.sh
rotate:
L_Rotation_33:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$60	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-24(%GPR30),%GPR1	
	sw	-28(%GPR30),%GPR3	
	nop
	nop
	nop
	lw	%GPR1,0(%GPR1)	
	lw	%GPR3,0(%GPR2)	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sub	%GPR1,%GPR3,%GPR1	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop	;;11,13
	nop	;;11,13
	sw	-32(%GPR30),%GPR1	
	lw	%GPR1,-24(%GPR30)	
	add	%GPR2,%GPR2,%GPR5	
	nop	;;15,18
	nop	;;15,18
	nop	;;15,18
	add	%GPR1,%GPR1,%GPR4	
	lw	%GPR2,0(%GPR2)	
	nop	;;19,22
	nop	;;19,22
	nop	;;19,22
	lw	%GPR1,0(%GPR1)	
	nop	;;22,26
	nop	;;22,26
	nop	;;22,26
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sub	%GPR1,%GPR2,%GPR1	
	nop	;;26,30
	nop	;;26,30
	nop	;;26,30
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-36(%GPR30),%GPR1	
	lw	%GPR1,-28(%GPR30)	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	sin	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-28(%GPR30)	
	sw	-40(%GPR30),%GPR28	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	cos	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR2,-36(%GPR30)	
	lw	%GPR1,-40(%GPR30)	
	lw	%GPR3,-32(%GPR30)	
	lhi	%GPR4,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( L_Rotation_1	%0x10000)
	nop	;;39,41
	nop	;;39,41
	mult	%GPR1,%GPR1,%GPR2	
	lhi	%GPR5,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( L_Rotation_1	%0x10000)
	nop	;;42,45
	nop	;;42,45
	nop	;;42,45
	add	%GPR2,%GPR28,%GPR0	
	lhi	%GPR6,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR6,%GPR6,$( L_Rotation_1	%0x10000)
	nop	;;46,49
	nop	;;46,49
	nop	;;46,49
	mult	%GPR2,%GPR2,%GPR3	
	nop	;;49,53
	nop	;;49,53
	nop	;;49,53
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sub	%GPR1,%GPR2,%GPR1	
	lhi	%GPR3,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$( L_Rotation_1	%0x10000)
	lhi	%GPR2,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$( L_Rotation_1	%0x10000)
	nop	;;55,58
	nop	;;55,58
	nop	;;55,58
	sw	0(%GPR3),%GPR1	
	lhi	%GPR1,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_Rotation_1	%0x10000)
	sw	-44(%GPR30),%GPR28	
	nop	;;60,62
	nop	;;60,62
	lw	%GPR3,0(%GPR4)	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop	;;63,66
	nop	;;63,66
	nop	;;63,66
	srai	%GPR3,%GPR3,$16	
	nop	;;66,70
	nop	;;66,70
	nop	;;66,70
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR5),%GPR3	
	lw	%GPR3,-24(%GPR30)	
	nop	;;71,74
	nop	;;71,74
	nop	;;71,74
	lw	%GPR2,0(%GPR2)	
	lw	%GPR3,0(%GPR3)	
	nop	;;75,79
	nop	;;75,79
	nop	;;75,79
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR2,%GPR3	
	nop	;;79,83
	nop	;;79,83
	nop	;;79,83
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR6),%GPR2	
	nop	;;83,87
	nop	;;83,87
	nop	;;83,87
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop	;;87,91
	nop	;;87,91
	nop	;;87,91
				; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR1,%GPR4	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_Rotation_34	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Rotation_35	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_Rotation_34:
	lhi	%GPR1,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_Rotation_1	%0x10000)
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	nop
	nop
	nop
L_Rotation_35:
	lhi	%GPR1,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_Rotation_1	%0x10000)
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$240	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sgt	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_Rotation_36	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Rotation_37	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_Rotation_36:
	lhi	%GPR1,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_Rotation_1	%0x10000)
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$240	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	nop
	nop
	nop
L_Rotation_37:
	lhi	%GPR1,$( L_Rotation_2	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_Rotation_2	%0x10000)
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
	lw	%GPR1,-40(%GPR30)	
	subi	%GPR2,%GPR30,$20	
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
	lhi	%GPR1,$( L_Rotation_3	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_Rotation_3	%0x10000)
	nop	;;11,16
	nop	;;11,16
	nop	;;11,16
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
	lw	%GPR1,-32(%GPR30)	
	subi	%GPR2,%GPR30,$20	
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
	lhi	%GPR1,$( L_Rotation_4	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_Rotation_4	%0x10000)
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
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-44(%GPR30)	
	subi	%GPR2,%GPR30,$20	
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
	lhi	%GPR1,$( L_Rotation_5	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_Rotation_5	%0x10000)
	nop	;;33,38
	nop	;;33,38
	nop	;;33,38
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
	subi	%GPR2,%GPR30,$20	
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
	lw	%GPR2,-40(%GPR30)	
	lw	%GPR3,-32(%GPR30)	
	lhi	%GPR1,$( L_Rotation_6	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_Rotation_6	%0x10000)
	nop	;;46,49
	nop	;;46,49
	nop	;;46,49
	mult	%GPR2,%GPR2,%GPR3	
	nop	;;49,53
	nop	;;49,53
	nop	;;49,53
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-48(%GPR30),%GPR2	
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
	lw	%GPR1,-48(%GPR30)	
	subi	%GPR2,%GPR30,$20	
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
	lw	%GPR2,-44(%GPR30)	
	lw	%GPR3,-36(%GPR30)	
	lhi	%GPR1,$( L_Rotation_7	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_Rotation_7	%0x10000)
	nop	;;62,65
	nop	;;62,65
	nop	;;62,65
	mult	%GPR2,%GPR2,%GPR3	
	nop	;;65,69
	nop	;;65,69
	nop	;;65,69
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-52(%GPR30),%GPR2	
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
	lw	%GPR1,-52(%GPR30)	
	subi	%GPR2,%GPR30,$20	
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
	lw	%GPR4,-52(%GPR30)	
	lw	%GPR3,-48(%GPR30)	
	nop	;;77,79
	nop	;;77,79
	lhi	%GPR2,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$( L_Rotation_1	%0x10000)
	lhi	%GPR1,$( L_Rotation_8	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_Rotation_8	%0x10000)
	add	%GPR3,%GPR3,%GPR4	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop	;;82,86
	nop	;;82,86
	nop	;;82,86
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR2,%GPR4	
	nop	;;86,90
	nop	;;86,90
	nop	;;86,90
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2),%GPR3	
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
				; Automatically 3 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_Rotation_1	%0x10000)
	subi	%GPR2,%GPR30,$20	
	nop	;;94,96
	nop	;;94,96
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$4	
	nop	;;96,100
	nop	;;96,100
	nop	;;96,100
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR3	
	nop	;;100,104
	nop	;;100,104
	nop	;;100,104
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
				; Automatically 3 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$( L_Rotation_1	%0x10000)
	nop	;;109,111
	nop	;;109,111
	lhi	%GPR4,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( L_Rotation_1	%0x10000)
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$4	
	lhi	%GPR1,$( L_Rotation_9	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_Rotation_9	%0x10000)
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	nop	;;114,116
	nop	;;114,116
	add	%GPR2,%GPR2,%GPR3	
	nop	;;116,118
	nop	;;116,118
	add	%GPR3,%GPR4,%GPR5	
	nop	;;118,120
	nop	;;118,120
	lw	%GPR2,0(%GPR2)	
	nop	;;120,124
	nop	;;120,124
	nop	;;120,124
				; Automatically 1 NOPs removed by reduceNOPs.sh
	srai	%GPR2,%GPR2,$16	
	nop	;;124,128
	nop	;;124,128
	nop	;;124,128
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR2	
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
				; Automatically 3 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_Rotation_1	%0x10000)
	subi	%GPR2,%GPR30,$20	
	nop	;;132,134
	nop	;;132,134
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$4	
	nop	;;134,138
	nop	;;134,138
	nop	;;134,138
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR3	
	nop	;;138,142
	nop	;;138,142
	nop	;;138,142
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
				; Automatically 4 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$( L_Rotation_1	%0x10000)
	lw	%GPR6,-24(%GPR30)	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$4	
	nop	;;151,153
	nop	;;151,153
	lhi	%GPR5,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( L_Rotation_1	%0x10000)
	add	%GPR2,%GPR2,%GPR4	
	add	%GPR3,%GPR6,%GPR3	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	lhi	%GPR1,$( L_Rotation_10	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_Rotation_10	%0x10000)
	lw	%GPR2,0(%GPR2)	
	lw	%GPR3,0(%GPR3)	
	add	%GPR4,%GPR5,%GPR4	
	nop	;;160,163
	nop	;;160,163
	nop	;;160,163
	add	%GPR2,%GPR2,%GPR3	
	nop	;;163,167
	nop	;;163,167
	nop	;;163,167
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4),%GPR2	
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
				; Automatically 3 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_Rotation_1	%0x10000)
	subi	%GPR2,%GPR30,$20	
	nop	;;171,173
	nop	;;171,173
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$4	
	nop	;;173,177
	nop	;;173,177
	nop	;;173,177
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR3	
	nop	;;177,181
	nop	;;177,181
	nop	;;177,181
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
				; Automatically 3 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_Rotation_1	%0x10000)
	nop	;;186,189
	nop	;;186,189
	nop	;;186,189
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop	;;189,191
	nop	;;189,191
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop	;;191,193
	nop	;;191,193
	add	%GPR1,%GPR1,%GPR2	
	nop	;;193,197
	nop	;;193,197
	nop	;;193,197
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop	;;197,201
	nop	;;197,201
	nop	;;197,201
				; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR1,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_Rotation_38	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Rotation_39	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_Rotation_38:
	lhi	%GPR1,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_Rotation_1	%0x10000)
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR1,%GPR2	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR3	
	nop
	nop
	nop
L_Rotation_39:
	lhi	%GPR1,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_Rotation_1	%0x10000)
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$128	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR1,%GPR2	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sgt	%GPR27,%GPR1,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_Rotation_40	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Rotation_41	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_Rotation_40:
	lhi	%GPR1,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_Rotation_1	%0x10000)
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$128	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR1,%GPR2	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR3	
	nop
	nop
	nop
L_Rotation_41:
	lhi	%GPR2,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$( L_Rotation_1	%0x10000)
	nop	;;1,3
	nop	;;1,3
	lhi	%GPR1,$( L_Rotation_11	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_Rotation_11	%0x10000)
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$8	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$1	
	nop	;;6,8
	nop	;;6,8
	add	%GPR2,%GPR2,%GPR3	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2),%GPR4	
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
	lhi	%GPR28,$( L_Rotation_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR28,%GPR28,$( L_Rotation_1	%0x10000)
	nop	;;14,18
	nop	;;14,18
	nop	;;14,18
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Rotation_42	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_Rotation_42:
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
				; Automatically 1 NOPs removed by reduceNOPs.sh
printCoordinates:
L_Rotation_43:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$32	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-24(%GPR30),%GPR1	
	nop
	nop
	nop
	lhi	%GPR1,$( L_Rotation_12	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_Rotation_12	%0x10000)
	nop	;;3,8
	nop	;;3,8
	nop	;;3,8
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
	lw	%GPR1,-24(%GPR30)	
	subi	%GPR2,%GPR30,$20	
	nop	;;10,13
	nop	;;10,13
	nop	;;10,13
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
	lhi	%GPR1,$( L_Rotation_13	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_Rotation_13	%0x10000)
	nop	;;17,22
	nop	;;17,22
	nop	;;17,22
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
				; Automatically 3 NOPs removed by reduceNOPs.sh
	lw	%GPR3,-24(%GPR30)	
	subi	%GPR2,%GPR30,$20	
	nop	;;25,27
	nop	;;25,27
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	
	nop	;;27,31
	nop	;;27,31
	nop	;;27,31
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR3,%GPR1	
	nop	;;31,35
	nop	;;31,35
	nop	;;31,35
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
	lhi	%GPR1,$( L_Rotation_14	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_Rotation_14	%0x10000)
	nop	;;39,44
	nop	;;39,44
	nop	;;39,44
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
	nop	;;49,53
	nop	;;49,53
	nop	;;49,53
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Rotation_44	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_Rotation_44:
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
				; Automatically 1 NOPs removed by reduceNOPs.sh
drawRectangle:
L_Rotation_45:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$20	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR2	
	sw	-8(%GPR30),%GPR3	
	sw	-12(%GPR30),%GPR4	
	nop
	nop
	nop
				; Automatically 4 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	printCoordinates	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L_Rotation_15	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_Rotation_15	%0x10000)
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
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-4(%GPR30)	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	printCoordinates	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L_Rotation_16	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_Rotation_16	%0x10000)
	nop	;;14,19
	nop	;;14,19
	nop	;;14,19
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
	lw	%GPR1,-8(%GPR30)	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	printCoordinates	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L_Rotation_17	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_Rotation_17	%0x10000)
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
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-12(%GPR30)	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	printCoordinates	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L_Rotation_18	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_Rotation_18	%0x10000)
	nop	;;30,35
	nop	;;30,35
	nop	;;30,35
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
	nop	;;40,44
	nop	;;40,44
	nop	;;40,44
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Rotation_46	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_Rotation_46:
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
				; Automatically 1 NOPs removed by reduceNOPs.sh
delete:
L_Rotation_47:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$40	
	nop
	nop
	nop
				; Automatically 7 NOPs removed by reduceNOPs.sh
	subi	%GPR1,%GPR30,$32	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop	;;7,9
	nop	;;7,9
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$30	
	sw	-32(%GPR30),%GPR3	
	add	%GPR1,%GPR1,%GPR2	
	subi	%GPR4,%GPR30,$32	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$8	
	nop	;;13,16
	nop	;;13,16
	nop	;;13,16
	sw	0(%GPR1),%GPR5	
	add	%GPR3,%GPR4,%GPR3	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	subi	%GPR2,%GPR30,$32	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$12	
	nop	;;20,23
	nop	;;20,23
	nop	;;20,23
	sw	0(%GPR3),%GPR5	
	add	%GPR1,%GPR2,%GPR1	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$30	
	subi	%GPR4,%GPR30,$32	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$16	
	nop	;;27,30
	nop	;;27,30
	nop	;;27,30
	sw	0(%GPR1),%GPR5	
	add	%GPR3,%GPR4,%GPR3	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	subi	%GPR2,%GPR30,$32	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$20	
	nop	;;34,37
	nop	;;34,37
	nop	;;34,37
	sw	0(%GPR3),%GPR5	
	add	%GPR1,%GPR2,%GPR1	
	subi	%GPR4,%GPR30,$32	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$120	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$24	
	nop	;;41,44
	nop	;;41,44
	nop	;;41,44
	sw	0(%GPR1),%GPR5	
	add	%GPR4,%GPR4,%GPR3	
	subi	%GPR8,%GPR30,$32	
	nop	;;46,48
	nop	;;46,48
	lhi	%GPR10,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$0	
	lhi	%GPR9,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$28	
	nop	;;49,52
	nop	;;49,52
	nop	;;49,52
	sw	0(%GPR4),%GPR10	
	nop	;;52,56
	nop	;;52,56
	nop	;;52,56
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR11,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR11,%GPR11,$120	
	add	%GPR8,%GPR8,%GPR9	
	nop	;;57,59
	nop	;;57,59
	subi	%GPR3,%GPR30,$32	
	lhi	%GPR7,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	lhi	%GPR6,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$8	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$76	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$82	
	sw	0(%GPR8),%GPR11	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 4 NOPs removed by reduceNOPs.sh
L_Rotation_48:
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
				; Automatically 1 NOPs removed by reduceNOPs.sh
pollDisplay:
L_Rotation_49:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$32	
	nop
	nop
	nop
				; Automatically 9 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	;;6,10
	nop	;;6,10
	nop	;;6,10
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR1	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	checkbuffer	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 3 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR28,%GPR0	
	sw	-20(%GPR30),%GPR28	
	nop	;;14,16
	nop	;;14,16
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$3	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sgt	%GPR27,%GPR2,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_Rotation_50	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Rotation_72	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_Rotation_50:
	subi	%GPR1,%GPR30,$12	
	lw	%GPR2,-20(%GPR30)	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	getbytes	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR2,-20(%GPR30)	
	add	%GPR1,%GPR28,%GPR0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_Rotation_51	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Rotation_52	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_Rotation_51:
	add	%GPR28,%GPR1,%GPR0	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Rotation_73	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_Rotation_52:
	lw	%GPR1,-16(%GPR30)	
	lw	%GPR2,-20(%GPR30)	
	nop	;;1,5
	nop	;;1,5
	nop	;;1,5
				; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_Rotation_53	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Rotation_72	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_Rotation_53:
	subi	%GPR1,%GPR30,$12	
	lw	%GPR2,-16(%GPR30)	
	nop	;;1,5
	nop	;;1,5
	nop	;;1,5
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop	;;5,10
	nop	;;5,10
	nop	;;5,10
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	loadByteUnsigned	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR2,-16(%GPR30)	
	nop	;;11,13
	nop	;;11,13
	add	%GPR1,%GPR28,%GPR0	
	nop	;;13,15
	nop	;;13,15
	addi	%GPR2,%GPR2,$1	
	nop	;;15,19
	nop	;;15,19
	nop	;;15,19
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR2	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$27	
	nop	;;20,24
	nop	;;20,24
	nop	;;20,24
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_Rotation_54	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Rotation_66	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_Rotation_54:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Rotation_73	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_Rotation_55:
	lhi	%GPR1,$( L_Rotation_19	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_Rotation_19	%0x10000)
	nop	;;0,5
	nop	;;0,5
	nop	;;0,5
				; Automatically 2 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$120	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	g_print	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR1,%GPR30,$12	
	lw	%GPR2,-16(%GPR30)	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop	;;13,18
	nop	;;13,18
	nop	;;13,18
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	loadByteUnsigned	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR2,-16(%GPR30)	
	nop	;;19,21
	nop	;;19,21
	add	%GPR1,%GPR28,%GPR0	
	nop	;;21,23
	nop	;;21,23
	addi	%GPR2,%GPR2,$1	
	nop	;;23,27
	nop	;;23,27
	nop	;;23,27
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR2	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	nop	;;28,32
	nop	;;28,32
	nop	;;28,32
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_Rotation_56	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Rotation_57	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_Rotation_56:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$3	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Rotation_73	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_Rotation_57:
	subi	%GPR1,%GPR30,$12	
	lw	%GPR2,-16(%GPR30)	
	nop	;;1,5
	nop	;;1,5
	nop	;;1,5
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop	;;5,10
	nop	;;5,10
	nop	;;5,10
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	loadByteUnsigned	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR28,%GPR0	
	nop	;;11,15
	nop	;;11,15
	nop	;;11,15
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-16(%GPR30)	
	nop	;;15,19
	nop	;;15,19
	nop	;;15,19
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop	;;19,23
	nop	;;19,23
	nop	;;19,23
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop	;;23,27
	nop	;;23,27
	nop	;;23,27
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR1	
	nop
	nop
	nop
L_Rotation_58:
	lw	%GPR1,-20(%GPR30)	
	lw	%GPR2,-16(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	addi	%GPR1,%GPR1,$1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sgt	%GPR27,%GPR2,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_Rotation_59	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Rotation_52	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_Rotation_59:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$5	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Rotation_73	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_Rotation_60:
	lhi	%GPR1,$( L_Rotation_20	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_Rotation_20	%0x10000)
	nop	;;0,5
	nop	;;0,5
	nop	;;0,5
				; Automatically 2 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$120	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	g_print	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR1,%GPR30,$12	
	lw	%GPR2,-16(%GPR30)	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop	;;13,18
	nop	;;13,18
	nop	;;13,18
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	loadByteUnsigned	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR2,-16(%GPR30)	
	nop	;;19,21
	nop	;;19,21
	add	%GPR1,%GPR28,%GPR0	
	nop	;;21,23
	nop	;;21,23
	addi	%GPR2,%GPR2,$1	
	nop	;;23,27
	nop	;;23,27
	nop	;;23,27
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR2	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	nop	;;28,32
	nop	;;28,32
	nop	;;28,32
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_Rotation_61	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Rotation_62	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_Rotation_61:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$3	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Rotation_73	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_Rotation_62:
	subi	%GPR1,%GPR30,$12	
	lw	%GPR2,-16(%GPR30)	
	nop	;;1,5
	nop	;;1,5
	nop	;;1,5
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop	;;5,10
	nop	;;5,10
	nop	;;5,10
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	loadByteUnsigned	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR28,%GPR0	
	nop	;;11,15
	nop	;;11,15
	nop	;;11,15
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-16(%GPR30)	
	nop	;;15,19
	nop	;;15,19
	nop	;;15,19
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop	;;19,23
	nop	;;19,23
	nop	;;19,23
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop	;;23,27
	nop	;;23,27
	nop	;;23,27
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR1	
	j	L_Rotation_58	
	nop
	nop
	nop
L_Rotation_63:
	lhi	%GPR1,$( L_Rotation_21	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_Rotation_21	%0x10000)
	nop	;;0,5
	nop	;;0,5
	nop	;;0,5
				; Automatically 2 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$120	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	g_print	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR1,%GPR30,$12	
	lw	%GPR2,-16(%GPR30)	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop	;;13,18
	nop	;;13,18
	nop	;;13,18
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	loadByteUnsigned	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR2,-16(%GPR30)	
	nop	;;19,21
	nop	;;19,21
	add	%GPR1,%GPR28,%GPR0	
	nop	;;21,23
	nop	;;21,23
	addi	%GPR2,%GPR2,$1	
	nop	;;23,27
	nop	;;23,27
	nop	;;23,27
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR2	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$2	
	nop	;;28,32
	nop	;;28,32
	nop	;;28,32
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_Rotation_64	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Rotation_65	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_Rotation_64:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$3	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Rotation_73	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_Rotation_65:
	subi	%GPR1,%GPR30,$12	
	lw	%GPR2,-16(%GPR30)	
	nop	;;1,5
	nop	;;1,5
	nop	;;1,5
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop	;;5,10
	nop	;;5,10
	nop	;;5,10
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	loadByteUnsigned	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR2,-16(%GPR30)	
	add	%GPR1,%GPR28,%GPR0	
	nop	;;12,15
	nop	;;12,15
	nop	;;12,15
	addi	%GPR2,%GPR2,$1	
	subi	%GPR1,%GPR30,$12	
	nop	;;16,19
	nop	;;16,19
	nop	;;16,19
	sw	-16(%GPR30),%GPR2	
	lhi	%GPR2,$( _bargraphValue	/0x10000)
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$( _bargraphValue	%0x10000)
	nop	;;20,24
	nop	;;20,24
	nop	;;20,24
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-24(%GPR30),%GPR2	
	lw	%GPR2,-16(%GPR30)	
	nop	;;25,29
	nop	;;25,29
	nop	;;25,29
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop	;;29,34
	nop	;;29,34
	nop	;;29,34
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	loadByteUnsigned	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-16(%GPR30)	
	nop	;;35,39
	nop	;;35,39
	nop	;;35,39
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop	;;39,43
	nop	;;39,43
	nop	;;39,43
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR1	
	lw	%GPR1,-24(%GPR30)	
	nop	;;44,48
	nop	;;44,48
	nop	;;44,48
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR28	
	j	L_Rotation_58	
	nop
	nop
	nop
L_Rotation_66:
	subi	%GPR1,%GPR30,$12	
	lw	%GPR2,-16(%GPR30)	
	nop	;;1,5
	nop	;;1,5
	nop	;;1,5
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop	;;5,10
	nop	;;5,10
	nop	;;5,10
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	loadByteUnsigned	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR2,-16(%GPR30)	
	nop	;;11,13
	nop	;;11,13
	add	%GPR1,%GPR28,%GPR0	
	nop	;;13,15
	nop	;;13,15
	addi	%GPR2,%GPR2,$1	
	nop	;;15,19
	nop	;;15,19
	nop	;;15,19
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR2	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$65	
	nop	;;20,24
	nop	;;20,24
	nop	;;20,24
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_Rotation_55	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Rotation_67	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_Rotation_67:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$66	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_Rotation_63	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Rotation_68	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_Rotation_68:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$72	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_Rotation_58	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Rotation_69	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_Rotation_69:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$78	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_Rotation_60	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Rotation_70	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_Rotation_70:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$84	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_Rotation_58	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Rotation_71	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_Rotation_71:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$2	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Rotation_73	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_Rotation_72:
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
	j	L_Rotation_73	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_Rotation_73:
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
				; Automatically 1 NOPs removed by reduceNOPs.sh
main:
L_Rotation_74:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$76	
	nop
	nop
	nop
				; Automatically 4 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L_Rotation_22	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_Rotation_22	%0x10000)
	nop	;;2,7
	nop	;;2,7
	nop	;;2,7
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
				; Automatically 4 NOPs removed by reduceNOPs.sh
	subi	%GPR1,%GPR30,$12	
	nop	;;10,12
	nop	;;10,12
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$50	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop	;;13,15
	nop	;;13,15
	subi	%GPR4,%GPR30,$12	
	sw	-12(%GPR30),%GPR3	
	add	%GPR1,%GPR1,%GPR2	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$50	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$8	
	nop	;;19,22
	nop	;;19,22
	nop	;;19,22
	sw	0(%GPR1),%GPR3	
	add	%GPR1,%GPR4,%GPR5	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	nop	;;24,26
	nop	;;24,26
	subi	%GPR3,%GPR30,$24	
	nop	;;26,28
	nop	;;26,28
	sw	0(%GPR1),%GPR2	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$100	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	
	nop	;;30,32
	nop	;;30,32
	subi	%GPR4,%GPR30,$24	
	sw	-24(%GPR30),%GPR2	
	add	%GPR1,%GPR3,%GPR1	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$50	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$8	
	nop	;;36,39
	nop	;;36,39
	nop	;;36,39
	sw	0(%GPR1),%GPR2	
	add	%GPR1,%GPR4,%GPR5	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$1	
	nop	;;41,43
	nop	;;41,43
	subi	%GPR2,%GPR30,$36	
	nop	;;43,45
	nop	;;43,45
	sw	0(%GPR1),%GPR3	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$100	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	
	nop	;;47,49
	nop	;;47,49
	subi	%GPR4,%GPR30,$36	
	sw	-36(%GPR30),%GPR3	
	add	%GPR1,%GPR2,%GPR1	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$100	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$8	
	nop	;;53,56
	nop	;;53,56
	nop	;;53,56
	sw	0(%GPR1),%GPR3	
	add	%GPR1,%GPR4,%GPR5	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	nop	;;58,60
	nop	;;58,60
	subi	%GPR3,%GPR30,$48	
	nop	;;60,62
	nop	;;60,62
	sw	0(%GPR1),%GPR2	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$50	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	
	nop	;;64,66
	nop	;;64,66
	subi	%GPR4,%GPR30,$48	
	sw	-48(%GPR30),%GPR2	
	add	%GPR1,%GPR3,%GPR1	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$8	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$100	
	nop	;;70,73
	nop	;;70,73
	nop	;;70,73
	add	%GPR4,%GPR4,%GPR5	
	sw	0(%GPR1),%GPR2	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$1	
	nop	;;75,79
	nop	;;75,79
	nop	;;75,79
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4),%GPR3	
	subi	%GPR1,%GPR30,$24	
	subi	%GPR6,%GPR30,$12	
	nop	;;81,83
	nop	;;81,83
	lw	%GPR2,-12(%GPR30)	
	lw	%GPR3,-24(%GPR30)	
	lw	%GPR4,-36(%GPR30)	
	lw	%GPR5,-48(%GPR30)	
	lhi	%GPR7,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$4	
	add	%GPR2,%GPR2,%GPR3	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$4	
	nop	;;89,92
	nop	;;89,92
	nop	;;89,92
	add	%GPR2,%GPR2,%GPR4	
	add	%GPR1,%GPR1,%GPR3	
	add	%GPR3,%GPR6,%GPR7	
	lhi	%GPR8,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$4	
	add	%GPR2,%GPR2,%GPR5	
	subi	%GPR4,%GPR30,$36	
	lhi	%GPR6,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$4	
	subi	%GPR5,%GPR30,$48	
	srai	%GPR2,%GPR2,$2	
	add	%GPR4,%GPR4,%GPR8	
	nop	;;101,103
	nop	;;101,103
	add	%GPR5,%GPR5,%GPR6	
	sw	-60(%GPR30),%GPR2	
	nop	;;104,106
	nop	;;104,106
	lhi	%GPR6,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$4	
	subi	%GPR2,%GPR30,$60	
	lw	%GPR3,0(%GPR3)	
	lw	%GPR1,0(%GPR1)	
	lw	%GPR4,0(%GPR4)	
	lw	%GPR5,0(%GPR5)	
	subi	%GPR7,%GPR30,$60	
	add	%GPR1,%GPR3,%GPR1	
	lhi	%GPR8,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$8	
	add	%GPR6,%GPR2,%GPR6	
	nop	;;115,117
	nop	;;115,117
	add	%GPR4,%GPR1,%GPR4	
	nop	;;117,119
	nop	;;117,119
	add	%GPR7,%GPR7,%GPR8	
	lhi	%GPR8,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$15	
	add	%GPR5,%GPR4,%GPR5	
	lhi	%GPR9,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$1	
	subi	%GPR3,%GPR30,$36	
	subi	%GPR2,%GPR30,$24	
	srai	%GPR5,%GPR5,$2	
	subi	%GPR1,%GPR30,$12	
	sw	-64(%GPR30),%GPR8	
	subi	%GPR4,%GPR30,$48	
	sw	0(%GPR6),%GPR5	
	nop	;;129,133
	nop	;;129,133
	nop	;;129,133
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR7),%GPR9	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	drawRectangle	
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
	nop	;;139,143
	nop	;;139,143
	nop	;;139,143
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-68(%GPR30),%GPR1	
	nop
	nop
	nop
L_Rotation_75:
	subi	%GPR2,%GPR30,$12	
	subi	%GPR1,%GPR30,$60	
	lw	%GPR3,-64(%GPR30)	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	rotate	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 4 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR28)	
	subi	%GPR3,%GPR30,$12	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	sw	-12(%GPR30),%GPR1	
	subi	%GPR1,%GPR30,$60	
	add	%GPR5,%GPR28,%GPR2	
	add	%GPR3,%GPR3,%GPR4	
	subi	%GPR2,%GPR30,$24	
	nop	;;14,16
	nop	;;14,16
	lw	%GPR4,0(%GPR5)	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR4	
	lw	%GPR3,-64(%GPR30)	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	rotate	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 4 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR28)	
	subi	%GPR3,%GPR30,$24	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	sw	-24(%GPR30),%GPR1	
	subi	%GPR1,%GPR30,$60	
	add	%GPR5,%GPR28,%GPR2	
	add	%GPR3,%GPR3,%GPR4	
	subi	%GPR2,%GPR30,$36	
	nop	;;33,35
	nop	;;33,35
	lw	%GPR4,0(%GPR5)	
	nop	;;35,39
	nop	;;35,39
	nop	;;35,39
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR4	
	lw	%GPR3,-64(%GPR30)	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	rotate	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 4 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR28)	
	subi	%GPR3,%GPR30,$36	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	sw	-36(%GPR30),%GPR1	
	subi	%GPR1,%GPR30,$60	
	add	%GPR5,%GPR28,%GPR2	
	add	%GPR3,%GPR3,%GPR4	
	subi	%GPR2,%GPR30,$48	
	nop	;;52,54
	nop	;;52,54
	lw	%GPR4,0(%GPR5)	
	nop	;;54,58
	nop	;;54,58
	nop	;;54,58
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR4	
	lw	%GPR3,-64(%GPR30)	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	rotate	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 3 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR28)	
	nop	;;62,64
	nop	;;62,64
	subi	%GPR3,%GPR30,$48	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	sw	-48(%GPR30),%GPR1	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop	;;67,69
	nop	;;67,69
	add	%GPR2,%GPR28,%GPR2	
	nop	;;69,71
	nop	;;69,71
	add	%GPR3,%GPR3,%GPR4	
	lhi	%GPR1,$7	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$500000	
	lw	%GPR2,0(%GPR2)	
	nop	;;73,77
	nop	;;73,77
	nop	;;73,77
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR2	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	wait	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR4,%GPR30,$48	
	subi	%GPR3,%GPR30,$36	
	subi	%GPR2,%GPR30,$24	
	subi	%GPR1,%GPR30,$12	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	drawRectangle	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-68(%GPR30)	
	nop	;;84,88
	nop	;;84,88
	nop	;;84,88
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop	;;88,92
	nop	;;88,92
	nop	;;88,92
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	
	sw	-68(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	;;94,98
	nop	;;94,98
	nop	;;94,98
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sle	%GPR27,%GPR2,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_Rotation_75	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_Rotation_76	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_Rotation_76:
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
	j	L_Rotation_77	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_Rotation_77:
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
