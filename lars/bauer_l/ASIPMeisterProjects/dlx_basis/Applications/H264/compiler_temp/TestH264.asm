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
intToStr:
L_intToStr_1:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
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
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
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
	nop	; Automatically Added by addNopAfterLabels.pl
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
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
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
	nop	; Automatically Added by addNopAfterLabels.pl
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
	nop	; Automatically Added by addNopAfterLabels.pl
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
	nop	; Automatically Added by addNopAfterLabels.pl
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
	nop	; Automatically Added by addNopAfterLabels.pl
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
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
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
	nop	; Automatically Added by addNopAfterLabels.pl
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
	nop	; Automatically Added by addNopAfterLabels.pl
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
	nop	; Automatically Added by addNopAfterLabels.pl
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
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	nop
	jr	%GPR31	
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
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
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
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	nop
	jr	%GPR31	
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
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
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
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	nop
	jr	%GPR31	
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
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
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
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	nop
	jr	%GPR31	
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
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
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
L_lib_lcd_dlxsim_8:
	nop	; Automatically Added by addNopAfterLabels.pl
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
	bnez	%GPR27,L_lib_lcd_dlxsim_9	
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
	nop	; Automatically Added by addNopAfterLabels.pl
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

	j	L_lib_lcd_dlxsim_8	
	nop
	nop
	nop
L_lib_lcd_dlxsim_10:
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
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	nop
	jr	%GPR31	
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
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
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
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	nop
	jr	%GPR31	
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
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
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
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	nop
	jr	%GPR31	
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
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
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
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	nop
	jr	%GPR31	
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
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
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
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	nop
	jr	%GPR31	
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
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
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
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	nop
	jr	%GPR31	
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
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
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
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	nop
	jr	%GPR31	
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
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
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
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	nop
	jr	%GPR31	
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
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
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
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	nop
	jr	%GPR31	
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
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
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
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	nop
	jr	%GPR31	
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
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
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
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	nop
	jr	%GPR31	
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
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
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
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	nop
	jr	%GPR31	
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
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
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
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
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
	nop
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
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
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
	nop
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
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	nop
	jr	%GPR31	
	nop
	nop
	nop
	.section	.data
L_main_1:
	.data.8	13
	.data.8	10
	.space	1
L_main_2:
	.data.8	13
	.data.8	10
	.space	1
L_main_3:
	.data.8	13
	.data.8	10
	.space	1
	.section	.text
	.addressing	Word
	;.addressing	Word
Hadamard_2x2_Chroma:
L_main_4:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh
	andi	%GPR5,%GPR2,$65535	
	andi	%GPR6,%GPR1,$65535	
	lhi	%GPR8,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$-65536	
	lhi	%GPR7,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$-65536	
	slli	%GPR5,%GPR5,$16	
	slli	%GPR9,%GPR6,$16	
	and	%GPR1,%GPR1,%GPR8	
	and	%GPR2,%GPR2,%GPR7	
	srai	%GPR6,%GPR5,$16	
	srai	%GPR5,%GPR9,$16	
	srli	%GPR1,%GPR1,$16	
	srli	%GPR2,%GPR2,$16	
	nop	;;16,19
	nop	;;16,19
	nop	;;16,19
	add	%GPR8,%GPR1,%GPR5	
	add	%GPR7,%GPR2,%GPR6	
	sub	%GPR11,%GPR1,%GPR5	
	sub	%GPR9,%GPR2,%GPR6	
	sub	%GPR12,%GPR1,%GPR5	
	add	%GPR7,%GPR8,%GPR7	
	add	%GPR5,%GPR1,%GPR5	
	add	%GPR1,%GPR11,%GPR9	
	sub	%GPR10,%GPR2,%GPR6	
	andi	%GPR7,%GPR7,$65535	
	add	%GPR2,%GPR2,%GPR6	
	nop	;;29,32
	nop	;;29,32
	nop	;;29,32
	slli	%GPR6,%GPR7,$16	
	andi	%GPR7,%GPR1,$65535	
	sub	%GPR1,%GPR10,%GPR12	
	nop	;;34,38
	nop	;;34,38
	nop	;;34,38
	; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR8,%GPR1,$65535	
	sub	%GPR1,%GPR2,%GPR5	
	slli	%GPR2,%GPR7,$16	
	nop	;;40,42
	nop	;;40,42
	or	%GPR5,%GPR6,%GPR8	
	andi	%GPR1,%GPR1,$65535	
	nop	;;43,46
	nop	;;43,46
	nop	;;43,46
	sw	0(%GPR3),%GPR5	
	or	%GPR1,%GPR2,%GPR1	
	nop	;;47,51
	nop	;;47,51
	nop	;;47,51
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4),%GPR1	
	j	L_main_5	
	nop
	nop
	nop
L_main_5:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	nop
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
Hadamard_4x4_IntraLuma:
L_main_6:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
	subi	%GPR29,%GPR29,$32	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR18,%GPR1,%GPR0	
	nop
	nop
	nop
	; Automatically 3 NOPs removed by reduceNOPs.sh
	lw	%GPR5,0(%GPR18)	
	nop	;;5,7
	nop	;;5,7
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$32	
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$32	
	nop	;;8,10
	nop	;;8,10
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$32	
	add	%GPR18,%GPR18,%GPR1	
	sw	-4(%GPR30),%GPR5	
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$32	
	nop	;;13,15
	nop	;;13,15
	lw	%GPR1,0(%GPR18)	
	add	%GPR18,%GPR18,%GPR3	
	nop	;;16,18
	nop	;;16,18
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$32	
	sw	-8(%GPR30),%GPR1	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR3,0(%GPR18)	
	add	%GPR18,%GPR18,%GPR4	
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$32	
	nop	;;22,24
	nop	;;22,24
	sw	-12(%GPR30),%GPR3	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR4,0(%GPR18)	
	add	%GPR18,%GPR18,%GPR5	
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$32	
	nop	;;27,29
	nop	;;27,29
	sw	-16(%GPR30),%GPR4	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR5,0(%GPR18)	
	add	%GPR18,%GPR18,%GPR6	
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$32	
	nop	;;32,34
	nop	;;32,34
	sw	-20(%GPR30),%GPR5	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR6,0(%GPR18)	
	add	%GPR18,%GPR18,%GPR1	
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$32	
	nop	;;37,40
	nop	;;37,40
	nop	;;37,40
	lw	%GPR12,0(%GPR18)	
	add	%GPR18,%GPR18,%GPR3	
	lhi	%GPR9,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$32	
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$32	
	nop	;;43,45
	nop	;;43,45
	lw	%GPR3,0(%GPR18)	
	add	%GPR18,%GPR18,%GPR4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-24(%GPR30),%GPR6	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$32	
	nop	;;48,50
	nop	;;48,50
	lw	%GPR23,0(%GPR18)	
	add	%GPR18,%GPR18,%GPR5	
	nop	;;51,54
	nop	;;51,54
	nop	;;51,54
	lhi	%GPR24,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR24,%GPR24,$-65536	
	lw	%GPR19,0(%GPR18)	
	add	%GPR18,%GPR18,%GPR9	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$32	
	nop	;;57,60
	nop	;;57,60
	nop	;;57,60
	lw	%GPR11,0(%GPR18)	
	add	%GPR18,%GPR18,%GPR1	
	lhi	%GPR5,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$-65536	
	nop	;;62,64
	nop	;;62,64
	and	%GPR23,%GPR23,%GPR24	
	lw	%GPR4,0(%GPR18)	
	add	%GPR18,%GPR18,%GPR6	
	nop	;;66,68
	nop	;;66,68
	lhi	%GPR27,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR27,%GPR27,$-65536	
	lhi	%GPR8,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$32	
	lw	%GPR20,0(%GPR18)	
	add	%GPR18,%GPR18,%GPR7	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR24,-20(%GPR30)	
	nop	;;72,74
	nop	;;72,74
	and	%GPR5,%GPR20,%GPR5	
	lhi	%GPR14,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR14,%GPR14,$-65536	
	lw	%GPR20,-24(%GPR30)	
	nop	;;76,78
	nop	;;76,78
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR22,0(%GPR18)	
	lhi	%GPR16,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR16,%GPR16,$-65536	
	nop	;;79,82
	nop	;;79,82
	nop	;;79,82
	add	%GPR18,%GPR18,%GPR8	
	and	%GPR24,%GPR24,%GPR27	
	nop	;;83,88
	nop	;;83,88
	nop	;;83,88
	; Automatically 2 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$-65536	
	lw	%GPR27,-4(%GPR30)	
	and	%GPR20,%GPR20,%GPR14	
	lhi	%GPR21,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR21,%GPR21,$-65536	
	and	%GPR16,%GPR3,%GPR16	
	lhi	%GPR15,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR15,%GPR15,$-65536	
	lhi	%GPR13,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR13,%GPR13,$-65536	
	lw	%GPR14,-8(%GPR30)	
	lw	%GPR8,0(%GPR18)	
	lhi	%GPR17,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR17,%GPR17,$-65536	
	lhi	%GPR10,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$-65536	
	lhi	%GPR6,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$-65536	
	lhi	%GPR28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$32	
	lw	%GPR3,-16(%GPR30)	
	nop	;;101,103
	nop	;;101,103
	and	%GPR1,%GPR27,%GPR1	
	and	%GPR19,%GPR19,%GPR21	
	nop	;;104,106
	nop	;;104,106
	and	%GPR21,%GPR14,%GPR15	
	and	%GPR22,%GPR22,%GPR13	
	nop	;;107,109
	nop	;;107,109
	and	%GPR15,%GPR4,%GPR10	
	and	%GPR14,%GPR8,%GPR6	
	add	%GPR18,%GPR18,%GPR28	
	and	%GPR17,%GPR3,%GPR17	
	lhi	%GPR7,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$-65536	
	lw	%GPR13,-12(%GPR30)	
	nop	;;114,116
	nop	;;114,116
	srli	%GPR4,%GPR23,$16	
	srli	%GPR6,%GPR5,$16	
	srli	%GPR3,%GPR24,$16	
	srli	%GPR1,%GPR1,$16	
	lhi	%GPR25,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR25,%GPR25,$-65536	
	lhi	%GPR26,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR26,%GPR26,$-65536	
	lw	%GPR18,0(%GPR18)	
	and	%GPR13,%GPR13,%GPR7	
	lhi	%GPR9,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$-65536	
	add	%GPR8,%GPR3,%GPR4	
	add	%GPR7,%GPR1,%GPR6	
	srli	%GPR5,%GPR19,$16	
	srli	%GPR19,%GPR21,$16	
	srli	%GPR20,%GPR20,$16	
	and	%GPR11,%GPR11,%GPR25	
	srli	%GPR22,%GPR22,$16	
	and	%GPR12,%GPR12,%GPR26	
	and	%GPR18,%GPR18,%GPR9	
	sub	%GPR10,%GPR7,%GPR8	
	add	%GPR9,%GPR7,%GPR8	
	add	%GPR8,%GPR20,%GPR5	
	add	%GPR7,%GPR19,%GPR22	
	srli	%GPR21,%GPR11,$16	
	srli	%GPR11,%GPR13,$16	
	srli	%GPR12,%GPR12,$16	
	srli	%GPR25,%GPR14,$16	
	add	%GPR23,%GPR7,%GPR8	
	sub	%GPR24,%GPR7,%GPR8	
	srli	%GPR14,%GPR16,$16	
	add	%GPR8,%GPR12,%GPR21	
	add	%GPR7,%GPR11,%GPR25	
	sub	%GPR3,%GPR3,%GPR4	
	sub	%GPR1,%GPR1,%GPR6	
	srli	%GPR13,%GPR17,$16	
	srli	%GPR16,%GPR18,$16	
	srli	%GPR15,%GPR15,$16	
	add	%GPR26,%GPR7,%GPR8	
	sub	%GPR27,%GPR7,%GPR8	
	add	%GPR4,%GPR1,%GPR3	
	sub	%GPR6,%GPR1,%GPR3	
	add	%GPR8,%GPR14,%GPR15	
	add	%GPR7,%GPR13,%GPR16	
	sub	%GPR3,%GPR20,%GPR5	
	sub	%GPR1,%GPR19,%GPR22	
	nop	;;159,161
	nop	;;159,161
	add	%GPR17,%GPR7,%GPR8	
	sub	%GPR18,%GPR7,%GPR8	
	add	%GPR5,%GPR1,%GPR3	
	sub	%GPR19,%GPR1,%GPR3	
	sub	%GPR3,%GPR12,%GPR21	
	sub	%GPR1,%GPR11,%GPR25	
	add	%GPR7,%GPR9,%GPR17	
	add	%GPR8,%GPR23,%GPR26	
	nop	;;168,170
	nop	;;168,170
	add	%GPR12,%GPR1,%GPR3	
	sub	%GPR11,%GPR1,%GPR3	
	sub	%GPR1,%GPR13,%GPR16	
	sub	%GPR3,%GPR14,%GPR15	
	add	%GPR28,%GPR7,%GPR8	
	sub	%GPR16,%GPR7,%GPR8	
	nop	;;175,177
	nop	;;175,177
	add	%GPR13,%GPR1,%GPR3	
	sub	%GPR14,%GPR1,%GPR3	
	srai	%GPR1,%GPR28,$1	
	sub	%GPR3,%GPR23,%GPR26	
	add	%GPR8,%GPR5,%GPR12	
	nop	;;181,183
	nop	;;181,183
	andi	%GPR15,%GPR1,$65535	
	sub	%GPR1,%GPR9,%GPR17	
	nop	;;184,188
	nop	;;184,188
	nop	;;184,188
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sub	%GPR17,%GPR1,%GPR3	
	add	%GPR9,%GPR1,%GPR3	
	slli	%GPR1,%GPR15,$16	
	nop	;;190,192
	nop	;;190,192
	srai	%GPR7,%GPR17,$1	
	srai	%GPR3,%GPR9,$1	
	lhi	%GPR9,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$4	
	nop	;;194,196
	nop	;;194,196
	andi	%GPR17,%GPR7,$65535	
	andi	%GPR3,%GPR3,$65535	
	add	%GPR7,%GPR4,%GPR13	
	nop	;;198,200
	nop	;;198,200
	or	%GPR17,%GPR1,%GPR17	
	slli	%GPR15,%GPR3,$16	
	sub	%GPR1,%GPR4,%GPR13	
	sub	%GPR3,%GPR5,%GPR12	
	add	%GPR20,%GPR7,%GPR8	
	sw	0(%GPR2),%GPR17	
	add	%GPR9,%GPR2,%GPR9	
	add	%GPR5,%GPR1,%GPR3	
	sub	%GPR1,%GPR1,%GPR3	
	srai	%GPR3,%GPR16,$1	
	sub	%GPR4,%GPR7,%GPR8	
	add	%GPR7,%GPR10,%GPR18	
	srai	%GPR1,%GPR1,$1	
	andi	%GPR12,%GPR3,$65535	
	srai	%GPR3,%GPR20,$1	
	add	%GPR8,%GPR24,%GPR27	
	andi	%GPR1,%GPR1,$65535	
	or	%GPR12,%GPR15,%GPR12	
	andi	%GPR13,%GPR3,$65535	
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$8	
	srai	%GPR5,%GPR5,$1	
	sw	0(%GPR9),%GPR12	
	slli	%GPR13,%GPR13,$16	
	add	%GPR12,%GPR2,%GPR3	
	sub	%GPR3,%GPR24,%GPR27	
	add	%GPR15,%GPR7,%GPR8	
	or	%GPR13,%GPR13,%GPR1	
	sub	%GPR1,%GPR10,%GPR18	
	andi	%GPR5,%GPR5,$65535	
	nop	;;228,231
	nop	;;228,231
	nop	;;228,231
	add	%GPR10,%GPR1,%GPR3	
	sub	%GPR1,%GPR1,%GPR3	
	srai	%GPR3,%GPR4,$1	
	slli	%GPR5,%GPR5,$16	
	lhi	%GPR9,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$12	
	srai	%GPR1,%GPR1,$1	
	andi	%GPR16,%GPR3,$65535	
	srai	%GPR3,%GPR15,$1	
	sw	0(%GPR12),%GPR13	
	add	%GPR9,%GPR2,%GPR9	
	or	%GPR12,%GPR5,%GPR16	
	andi	%GPR15,%GPR3,$65535	
	andi	%GPR1,%GPR1,$65535	
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$16	
	sub	%GPR4,%GPR7,%GPR8	
	slli	%GPR5,%GPR15,$16	
	sw	0(%GPR9),%GPR12	
	srai	%GPR7,%GPR10,$1	
	add	%GPR12,%GPR2,%GPR3	
	or	%GPR5,%GPR5,%GPR1	
	sub	%GPR1,%GPR6,%GPR14	
	sub	%GPR3,%GPR19,%GPR11	
	andi	%GPR13,%GPR7,$65535	
	add	%GPR7,%GPR6,%GPR14	
	add	%GPR8,%GPR19,%GPR11	
	add	%GPR6,%GPR1,%GPR3	
	sub	%GPR3,%GPR1,%GPR3	
	srai	%GPR1,%GPR4,$1	
	add	%GPR10,%GPR7,%GPR8	
	nop	;;259,261
	nop	;;259,261
	sw	0(%GPR12),%GPR5	
	andi	%GPR4,%GPR1,$65535	
	srai	%GPR1,%GPR10,$1	
	lhi	%GPR9,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$20	
	sub	%GPR5,%GPR7,%GPR8	
	slli	%GPR13,%GPR13,$16	
	andi	%GPR1,%GPR1,$65535	
	add	%GPR8,%GPR2,%GPR9	
	nop	;;268,270
	nop	;;268,270
	or	%GPR4,%GPR13,%GPR4	
	slli	%GPR9,%GPR1,$16	
	srai	%GPR1,%GPR6,$1	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$24	
	sw	0(%GPR8),%GPR4	
	nop	;;274,276
	nop	;;274,276
	andi	%GPR6,%GPR1,$65535	
	srai	%GPR1,%GPR3,$1	
	add	%GPR4,%GPR2,%GPR7	
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$28	
	slli	%GPR6,%GPR6,$16	
	andi	%GPR1,%GPR1,$65535	
	nop	;;281,283
	nop	;;281,283
	add	%GPR2,%GPR2,%GPR3	
	nop	;;283,285
	nop	;;283,285
	or	%GPR7,%GPR9,%GPR1	
	srai	%GPR1,%GPR5,$1	
	nop	;;286,289
	nop	;;286,289
	nop	;;286,289
	sw	0(%GPR4),%GPR7	
	andi	%GPR1,%GPR1,$65535	
	nop	;;290,294
	nop	;;290,294
	nop	;;290,294
	; Automatically 1 NOPs removed by reduceNOPs.sh
	or	%GPR1,%GPR6,%GPR1	
	nop	;;294,298
	nop	;;294,298
	nop	;;294,298
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2),%GPR1	
	j	L_main_7	
	nop
	nop
	nop
L_main_7:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	nop
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
SATD_4x4:
L_main_8:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
	subi	%GPR29,%GPR29,$120	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR19,%GPR1,%GPR0	
	add	%GPR6,%GPR2,%GPR0	
	add	%GPR5,%GPR3,%GPR0	
	nop
	nop
	nop
	; Automatically 5 NOPs removed by reduceNOPs.sh
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$4	
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$4	
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop	;;11,13
	nop	;;11,13
	mult	%GPR15,%GPR6,%GPR7	
	mult	%GPR10,%GPR6,%GPR3	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	mult	%GPR2,%GPR6,%GPR2	
	nop	;;15,19
	nop	;;15,19
	nop	;;15,19
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR6,0(%GPR5)	
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$16	
	nop	;;20,23
	nop	;;20,23
	nop	;;20,23
	sw	-4(%GPR30),%GPR6	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR6,0(%GPR19)	
	nop	;;24,28
	nop	;;24,28
	nop	;;24,28
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	-8(%GPR30),%GPR6	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR6,0(%GPR5)	
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$16	
	nop	;;30,33
	nop	;;30,33
	nop	;;30,33
	sw	-12(%GPR30),%GPR6	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR6,0(%GPR19)	
	nop	;;34,38
	nop	;;34,38
	nop	;;34,38
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	-16(%GPR30),%GPR6	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR6,0(%GPR5)	
	nop	;;39,43
	nop	;;39,43
	nop	;;39,43
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	-20(%GPR30),%GPR6	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR6,0(%GPR19)	
	nop	;;44,48
	nop	;;44,48
	nop	;;44,48
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	-24(%GPR30),%GPR6	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR6,0(%GPR5)	
	add	%GPR5,%GPR5,%GPR1	
	nop	;;50,53
	nop	;;50,53
	nop	;;50,53
	sw	-28(%GPR30),%GPR6	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,0(%GPR5)	
	lw	%GPR6,0(%GPR19)	
	add	%GPR19,%GPR19,%GPR2	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR7,0(%GPR5)	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-32(%GPR30),%GPR1	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,0(%GPR5)	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-36(%GPR30),%GPR6	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR6,0(%GPR5)	
	add	%GPR5,%GPR5,%GPR4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-40(%GPR30),%GPR1	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,0(%GPR19)	
	lw	%GPR9,0(%GPR19)	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR11,0(%GPR19)	
	nop	;;66,68
	nop	;;66,68
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-44(%GPR30),%GPR1	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,0(%GPR19)	
	add	%GPR19,%GPR19,%GPR10	
	nop	;;70,73
	nop	;;70,73
	nop	;;70,73
	sw	-48(%GPR30),%GPR1	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,0(%GPR5)	
	lhi	%GPR10,$255	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$16711680	
	nop	;;75,77
	nop	;;75,77
	lhi	%GPR13,$65280	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR13,%GPR13,$-16777216	
	sw	-52(%GPR30),%GPR1	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,0(%GPR5)	
	nop	;;79,83
	nop	;;79,83
	nop	;;79,83
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	-56(%GPR30),%GPR1	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,0(%GPR19)	
	and	%GPR10,%GPR7,%GPR10	
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$16	
	and	%GPR7,%GPR6,%GPR13	
	sw	-60(%GPR30),%GPR1	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,0(%GPR19)	
	lhi	%GPR12,$255	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR12,%GPR12,$16711680	
	lhi	%GPR16,$255	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR16,%GPR16,$16711680	
	lw	%GPR6,-20(%GPR30)	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-64(%GPR30),%GPR1	
	lhi	%GPR1,$255	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$16711680	
	lw	%GPR2,0(%GPR5)	
	lw	%GPR8,0(%GPR5)	
	add	%GPR5,%GPR5,%GPR3	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-68(%GPR30),%GPR1	
	lhi	%GPR1,$255	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$16711680	
	nop	;;99,104
	nop	;;99,104
	nop	;;99,104
	; Automatically 2 NOPs removed by reduceNOPs.sh
	and	%GPR11,%GPR11,%GPR12	
	and	%GPR12,%GPR6,%GPR16	
	lhi	%GPR17,$255	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR17,%GPR17,$16711680	
	lhi	%GPR14,$65280	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR14,%GPR14,$-16777216	
	lw	%GPR6,-24(%GPR30)	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-72(%GPR30),%GPR1	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR3,0(%GPR5)	
	lhi	%GPR4,$65280	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$-16777216	
	lhi	%GPR1,$65280	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$-16777216	
	nop	;;112,114
	nop	;;112,114
	and	%GPR13,%GPR6,%GPR17	
	and	%GPR9,%GPR9,%GPR14	
	and	%GPR17,%GPR3,%GPR1	
	lhi	%GPR21,$65280	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR21,%GPR21,$-16777216	
	lw	%GPR14,-36(%GPR30)	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-76(%GPR30),%GPR4	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR22,0(%GPR19)	
	lw	%GPR23,0(%GPR19)	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR4,0(%GPR5)	
	lw	%GPR1,-68(%GPR30)	
	add	%GPR19,%GPR19,%GPR15	
	nop	;;124,126
	nop	;;124,126
	and	%GPR16,%GPR14,%GPR21	
	and	%GPR14,%GPR4,%GPR1	
	lw	%GPR6,-28(%GPR30)	
	lhi	%GPR18,$65280	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR18,%GPR18,$-16777216	
	lw	%GPR15,0(%GPR19)	
	lw	%GPR1,-76(%GPR30)	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR20,0(%GPR19)	
	and	%GPR6,%GPR6,%GPR18	
	nop	;;133,135
	nop	;;133,135
	and	%GPR18,%GPR15,%GPR1	
	lw	%GPR1,-72(%GPR30)	
	nop	;;136,138
	nop	;;136,138
	lhi	%GPR24,$255	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR24,%GPR24,$16711680	
	nop	;;138,140
	nop	;;138,140
	and	%GPR15,%GPR20,%GPR1	
	lw	%GPR1,-12(%GPR30)	
	and	%GPR8,%GPR8,%GPR24	
	lhi	%GPR25,$255	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR25,%GPR25,$16711680	
	lhi	%GPR26,$65280	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR26,%GPR26,$-16777216	
	andi	%GPR24,%GPR1,$65280	
	lw	%GPR1,-16(%GPR30)	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-80(%GPR30),%GPR8	
	and	%GPR8,%GPR23,%GPR25	
	and	%GPR2,%GPR2,%GPR26	
	andi	%GPR23,%GPR1,$65280	
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,-32(%GPR30)	
	lw	%GPR28,0(%GPR5)	
	nop	;;152,155
	nop	;;152,155
	nop	;;152,155
	andi	%GPR25,%GPR1,$65280	
	lw	%GPR1,-44(%GPR30)	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-84(%GPR30),%GPR28	
	lhi	%GPR27,$65280	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR27,%GPR27,$-16777216	
	nop	;;158,160
	nop	;;158,160
	andi	%GPR26,%GPR1,$65280	
	lw	%GPR1,-52(%GPR30)	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-88(%GPR30),%GPR8	
	and	%GPR8,%GPR22,%GPR27	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR28,0(%GPR19)	
	andi	%GPR3,%GPR1,$65280	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,-60(%GPR30)	
	lw	%GPR22,0(%GPR19)	
	lhi	%GPR19,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR19,%GPR19,$24	
	nop	;;168,170
	nop	;;168,170
	andi	%GPR4,%GPR1,$65280	
	lw	%GPR1,0(%GPR5)	
	lw	%GPR5,-84(%GPR30)	
	srl	%GPR16,%GPR16,%GPR19	
	srl	%GPR9,%GPR9,%GPR19	
	andi	%GPR21,%GPR1,$255	
	andi	%GPR5,%GPR5,$65280	
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$8	
	sw	-92(%GPR30),%GPR16	
	srl	%GPR8,%GPR8,%GPR19	
	add	%GPR27,%GPR5,%GPR0	
	add	%GPR5,%GPR28,%GPR0	
	sra	%GPR23,%GPR23,%GPR1	
	sra	%GPR24,%GPR24,%GPR1	
	sra	%GPR26,%GPR26,%GPR1	
	andi	%GPR5,%GPR5,$65280	
	sra	%GPR25,%GPR25,%GPR1	
	sra	%GPR4,%GPR4,%GPR1	
	sra	%GPR3,%GPR3,%GPR1	
	sra	%GPR5,%GPR5,%GPR1	
	sra	%GPR1,%GPR27,%GPR1	
	srl	%GPR6,%GPR6,%GPR19	
	lw	%GPR27,-92(%GPR30)	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-96(%GPR30),%GPR9	
	sw	-100(%GPR30),%GPR8	
	srl	%GPR8,%GPR2,%GPR19	
	srl	%GPR2,%GPR18,%GPR19	
	subu	%GPR6,%GPR27,%GPR6	
	nop	;;197,199
	nop	;;197,199
	srl	%GPR7,%GPR7,%GPR19	
	lw	%GPR27,-96(%GPR30)	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-104(%GPR30),%GPR2	
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$16	
	srl	%GPR9,%GPR17,%GPR19	
	subu	%GPR7,%GPR27,%GPR7	
	lw	%GPR27,-100(%GPR30)	
	sra	%GPR13,%GPR13,%GPR2	
	sra	%GPR12,%GPR12,%GPR2	
	sra	%GPR11,%GPR11,%GPR2	
	subu	%GPR8,%GPR27,%GPR8	
	lw	%GPR27,-104(%GPR30)	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-108(%GPR30),%GPR13	
	add	%GPR28,%GPR12,%GPR0	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-112(%GPR30),%GPR11	
	subu	%GPR9,%GPR27,%GPR9	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR12,-80(%GPR30)	
	lw	%GPR11,-88(%GPR30)	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR27,-108(%GPR30)	
	sra	%GPR13,%GPR15,%GPR2	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR16,-8(%GPR30)	
	lw	%GPR18,-48(%GPR30)	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR17,-40(%GPR30)	
	lw	%GPR15,-4(%GPR30)	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR20,-64(%GPR30)	
	lw	%GPR19,-56(%GPR30)	
	sra	%GPR12,%GPR12,%GPR2	
	sra	%GPR11,%GPR11,%GPR2	
	sub	%GPR27,%GPR27,%GPR28	
	sra	%GPR10,%GPR10,%GPR2	
	sra	%GPR14,%GPR14,%GPR2	
	lw	%GPR28,-112(%GPR30)	
	andi	%GPR16,%GPR16,$255	
	andi	%GPR18,%GPR18,$255	
	andi	%GPR17,%GPR17,$255	
	andi	%GPR15,%GPR15,$255	
	andi	%GPR22,%GPR22,$255	
	andi	%GPR20,%GPR20,$255	
	andi	%GPR19,%GPR19,$255	
	sub	%GPR11,%GPR11,%GPR12	
	sub	%GPR12,%GPR13,%GPR14	
	sub	%GPR10,%GPR28,%GPR10	
	sub	%GPR14,%GPR18,%GPR17	
	sub	%GPR13,%GPR16,%GPR15	
	sub	%GPR18,%GPR26,%GPR25	
	sub	%GPR15,%GPR20,%GPR19	
	sub	%GPR16,%GPR22,%GPR21	
	sub	%GPR3,%GPR4,%GPR3	
	sub	%GPR1,%GPR5,%GPR1	
	sub	%GPR17,%GPR23,%GPR24	
	sll	%GPR4,%GPR6,%GPR2	
	sll	%GPR5,%GPR7,%GPR2	
	sll	%GPR6,%GPR8,%GPR2	
	sll	%GPR7,%GPR9,%GPR2	
	andi	%GPR19,%GPR10,$65535	
	andi	%GPR20,%GPR11,$65535	
	andi	%GPR21,%GPR27,$65535	
	andi	%GPR8,%GPR12,$65535	
	andi	%GPR9,%GPR13,$65535	
	andi	%GPR10,%GPR14,$65535	
	sll	%GPR13,%GPR18,%GPR2	
	sll	%GPR14,%GPR3,%GPR2	
	andi	%GPR11,%GPR15,$65535	
	andi	%GPR12,%GPR16,$65535	
	sll	%GPR15,%GPR1,%GPR2	
	sll	%GPR16,%GPR17,%GPR2	
	nop	;;264,267
	nop	;;264,267
	nop	;;264,267
	or	%GPR3,%GPR5,%GPR19	
	nop	;;267,270
	nop	;;267,270
	nop	;;267,270
	or	%GPR1,%GPR4,%GPR21	
	or	%GPR5,%GPR6,%GPR20	
	or	%GPR4,%GPR13,%GPR10	
	or	%GPR6,%GPR14,%GPR11	
	or	%GPR7,%GPR7,%GPR8	
	or	%GPR2,%GPR16,%GPR9	
	or	%GPR8,%GPR15,%GPR12	
	lhi	%GPR13,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR13,%GPR13,$-65536	
	lhi	%GPR14,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR14,%GPR14,$-65536	
	lhi	%GPR16,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR16,%GPR16,$-65536	
	lhi	%GPR15,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR15,%GPR15,$-65536	
	andi	%GPR19,%GPR5,$65535	
	andi	%GPR20,%GPR7,$65535	
	fex	%GPR5,%GPR5,%GPR14,$16	
	fex	%GPR7,%GPR7,%GPR13,$16	
	fex	%GPR14,%GPR1,%GPR16,$16	
	fex	%GPR13,%GPR3,%GPR15,$16	
	andi	%GPR18,%GPR3,$65535	
	andi	%GPR17,%GPR1,$65535	
	add	%GPR1,%GPR14,%GPR7	
	add	%GPR3,%GPR13,%GPR5	
	sub	%GPR7,%GPR14,%GPR7	
	sub	%GPR5,%GPR13,%GPR5	
	slli	%GPR19,%GPR19,$16	
	slli	%GPR18,%GPR18,$16	
	slli	%GPR20,%GPR20,$16	
	slli	%GPR17,%GPR17,$16	
	add	%GPR13,%GPR1,%GPR3	
	add	%GPR15,%GPR7,%GPR5	
	sub	%GPR26,%GPR7,%GPR5	
	sub	%GPR25,%GPR1,%GPR3	
	srai	%GPR5,%GPR19,$16	
	srai	%GPR1,%GPR18,$16	
	srai	%GPR16,%GPR20,$16	
	srai	%GPR7,%GPR17,$16	
	nop	;;304,306
	nop	;;304,306
	add	%GPR3,%GPR1,%GPR5	
	nop	;;306,308
	nop	;;306,308
	sub	%GPR5,%GPR1,%GPR5	
	add	%GPR1,%GPR7,%GPR16	
	nop	;;309,312
	nop	;;309,312
	nop	;;309,312
	sub	%GPR7,%GPR7,%GPR16	
	lhi	%GPR23,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR23,%GPR23,$-65536	
	lhi	%GPR22,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR22,%GPR22,$-65536	
	lhi	%GPR24,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR24,%GPR24,$-65536	
	lhi	%GPR21,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR21,%GPR21,$-65536	
	add	%GPR14,%GPR1,%GPR3	
	sub	%GPR18,%GPR7,%GPR5	
	add	%GPR16,%GPR7,%GPR5	
	sub	%GPR17,%GPR1,%GPR3	
	fex	%GPR5,%GPR6,%GPR22,$16	
	fex	%GPR1,%GPR4,%GPR23,$16	
	andi	%GPR10,%GPR4,$65535	
	fex	%GPR7,%GPR8,%GPR21,$16	
	fex	%GPR4,%GPR2,%GPR24,$16	
	add	%GPR3,%GPR1,%GPR5	
	andi	%GPR11,%GPR6,$65535	
	sub	%GPR5,%GPR1,%GPR5	
	andi	%GPR9,%GPR2,$65535	
	add	%GPR1,%GPR4,%GPR7	
	andi	%GPR12,%GPR8,$65535	
	sub	%GPR7,%GPR4,%GPR7	
	slli	%GPR10,%GPR10,$16	
	slli	%GPR11,%GPR11,$16	
	slli	%GPR9,%GPR9,$16	
	slli	%GPR12,%GPR12,$16	
	add	%GPR2,%GPR1,%GPR3	
	sub	%GPR19,%GPR7,%GPR5	
	add	%GPR4,%GPR7,%GPR5	
	sub	%GPR6,%GPR1,%GPR3	
	srai	%GPR5,%GPR11,$16	
	srai	%GPR1,%GPR10,$16	
	srai	%GPR7,%GPR9,$16	
	srai	%GPR9,%GPR12,$16	
	nop	;;344,346
	nop	;;344,346
	add	%GPR3,%GPR1,%GPR5	
	sub	%GPR5,%GPR1,%GPR5	
	add	%GPR1,%GPR7,%GPR9	
	sub	%GPR7,%GPR7,%GPR9	
	nop	;;349,352
	nop	;;349,352
	nop	;;349,352
	add	%GPR10,%GPR1,%GPR3	
	sub	%GPR8,%GPR1,%GPR3	
	add	%GPR3,%GPR14,%GPR2	
	add	%GPR11,%GPR7,%GPR5	
	add	%GPR1,%GPR13,%GPR10	
	sub	%GPR9,%GPR7,%GPR5	
	sub	%GPR5,%GPR14,%GPR2	
	sub	%GPR7,%GPR13,%GPR10	
	add	%GPR20,%GPR1,%GPR3	
	sub	%GPR1,%GPR1,%GPR3	
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	add	%GPR3,%GPR7,%GPR5	
	sub	%GPR7,%GPR7,%GPR5	
	lhi	%GPR12,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR12,%GPR12,$0	
	srai	%GPR5,%GPR20,$1	
	srai	%GPR10,%GPR3,$1	
	srai	%GPR1,%GPR1,$1	
	srai	%GPR3,%GPR7,$1	
	add	%GPR2,%GPR2,%GPR5	
	slt	%GPR27,%GPR10,%GPR12	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_main_9	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_main_10	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_main_9:
	nop	; Automatically Added by addNopAfterLabels.pl
	sub	%GPR10,%GPR0,%GPR10	
	j	L_main_11	
	nop
	nop
	nop
L_main_10:
	nop
	nop
	nop
L_main_11:
	nop	; Automatically Added by addNopAfterLabels.pl
	add	%GPR2,%GPR2,%GPR10	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR1,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_main_12	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_main_13	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_main_12:
	nop	; Automatically Added by addNopAfterLabels.pl
	sub	%GPR10,%GPR0,%GPR1	
	j	L_main_14	
	nop
	nop
	nop
L_main_13:
	nop	; Automatically Added by addNopAfterLabels.pl
	add	%GPR10,%GPR1,%GPR0	
	nop
	nop
	nop
L_main_14:
	nop	; Automatically Added by addNopAfterLabels.pl
	add	%GPR2,%GPR2,%GPR10	
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
	slt	%GPR27,%GPR3,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_main_15	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_main_16	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_main_15:
	nop	; Automatically Added by addNopAfterLabels.pl
	sub	%GPR10,%GPR0,%GPR3	
	j	L_main_17	
	nop
	nop
	nop
L_main_16:
	nop	; Automatically Added by addNopAfterLabels.pl
	add	%GPR10,%GPR3,%GPR0	
	nop
	nop
	nop
L_main_17:
	nop	; Automatically Added by addNopAfterLabels.pl
	add	%GPR1,%GPR15,%GPR11	
	add	%GPR3,%GPR16,%GPR4	
	sub	%GPR5,%GPR16,%GPR4	
	sub	%GPR7,%GPR15,%GPR11	
	nop	;;3,5
	nop	;;3,5
	add	%GPR12,%GPR1,%GPR3	
	sub	%GPR1,%GPR1,%GPR3	
	add	%GPR3,%GPR7,%GPR5	
	add	%GPR2,%GPR2,%GPR10	
	lhi	%GPR11,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR11,%GPR11,$0	
	sub	%GPR5,%GPR7,%GPR5	
	srai	%GPR10,%GPR12,$1	
	srai	%GPR4,%GPR1,$1	
	srai	%GPR3,%GPR3,$1	
	srai	%GPR1,%GPR5,$1	
	slt	%GPR27,%GPR10,%GPR11	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_main_18	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_main_19	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_main_18:
	nop	; Automatically Added by addNopAfterLabels.pl
	sub	%GPR10,%GPR0,%GPR10	
	j	L_main_20	
	nop
	nop
	nop
L_main_19:
	nop
	nop
	nop
L_main_20:
	nop	; Automatically Added by addNopAfterLabels.pl
	add	%GPR2,%GPR2,%GPR10	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR3,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_main_21	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_main_22	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_main_21:
	nop	; Automatically Added by addNopAfterLabels.pl
	sub	%GPR10,%GPR0,%GPR3	
	j	L_main_23	
	nop
	nop
	nop
L_main_22:
	nop	; Automatically Added by addNopAfterLabels.pl
	add	%GPR10,%GPR3,%GPR0	
	nop
	nop
	nop
L_main_23:
	nop	; Automatically Added by addNopAfterLabels.pl
	add	%GPR2,%GPR2,%GPR10	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR4,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_main_24	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_main_25	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_main_24:
	nop	; Automatically Added by addNopAfterLabels.pl
	sub	%GPR10,%GPR0,%GPR4	
	j	L_main_26	
	nop
	nop
	nop
L_main_25:
	nop	; Automatically Added by addNopAfterLabels.pl
	add	%GPR10,%GPR4,%GPR0	
	nop
	nop
	nop
L_main_26:
	nop	; Automatically Added by addNopAfterLabels.pl
	add	%GPR2,%GPR2,%GPR10	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR1,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_main_27	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_main_28	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_main_27:
	nop	; Automatically Added by addNopAfterLabels.pl
	sub	%GPR10,%GPR0,%GPR1	
	j	L_main_29	
	nop
	nop
	nop
L_main_28:
	nop	; Automatically Added by addNopAfterLabels.pl
	add	%GPR10,%GPR1,%GPR0	
	nop
	nop
	nop
L_main_29:
	nop	; Automatically Added by addNopAfterLabels.pl
	add	%GPR1,%GPR25,%GPR8	
	add	%GPR3,%GPR17,%GPR6	
	sub	%GPR5,%GPR17,%GPR6	
	sub	%GPR7,%GPR25,%GPR8	
	nop	;;3,5
	nop	;;3,5
	add	%GPR8,%GPR1,%GPR3	
	sub	%GPR1,%GPR1,%GPR3	
	add	%GPR6,%GPR7,%GPR5	
	add	%GPR2,%GPR2,%GPR10	
	sub	%GPR5,%GPR7,%GPR5	
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	srai	%GPR10,%GPR8,$1	
	srai	%GPR3,%GPR1,$1	
	srai	%GPR5,%GPR5,$1	
	srai	%GPR1,%GPR6,$1	
	slt	%GPR27,%GPR10,%GPR4	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_main_30	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_main_31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_main_30:
	nop	; Automatically Added by addNopAfterLabels.pl
	sub	%GPR10,%GPR0,%GPR10	
	j	L_main_32	
	nop
	nop
	nop
L_main_31:
	nop
	nop
	nop
L_main_32:
	nop	; Automatically Added by addNopAfterLabels.pl
	add	%GPR2,%GPR2,%GPR10	
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
	slt	%GPR27,%GPR1,%GPR4	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_main_33	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_main_34	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_main_33:
	nop	; Automatically Added by addNopAfterLabels.pl
	sub	%GPR10,%GPR0,%GPR1	
	j	L_main_35	
	nop
	nop
	nop
L_main_34:
	nop	; Automatically Added by addNopAfterLabels.pl
	add	%GPR10,%GPR1,%GPR0	
	nop
	nop
	nop
L_main_35:
	nop	; Automatically Added by addNopAfterLabels.pl
	add	%GPR2,%GPR2,%GPR10	
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
	slt	%GPR27,%GPR3,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_main_36	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_main_37	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_main_36:
	nop	; Automatically Added by addNopAfterLabels.pl
	sub	%GPR10,%GPR0,%GPR3	
	j	L_main_38	
	nop
	nop
	nop
L_main_37:
	nop	; Automatically Added by addNopAfterLabels.pl
	add	%GPR10,%GPR3,%GPR0	
	nop
	nop
	nop
L_main_38:
	nop	; Automatically Added by addNopAfterLabels.pl
	add	%GPR2,%GPR2,%GPR10	
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
	slt	%GPR27,%GPR5,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_main_39	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_main_40	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_main_39:
	nop	; Automatically Added by addNopAfterLabels.pl
	sub	%GPR10,%GPR0,%GPR5	
	j	L_main_41	
	nop
	nop
	nop
L_main_40:
	nop	; Automatically Added by addNopAfterLabels.pl
	add	%GPR10,%GPR5,%GPR0	
	nop
	nop
	nop
L_main_41:
	nop	; Automatically Added by addNopAfterLabels.pl
	add	%GPR1,%GPR26,%GPR9	
	add	%GPR3,%GPR18,%GPR19	
	sub	%GPR5,%GPR18,%GPR19	
	sub	%GPR7,%GPR26,%GPR9	
	nop	;;3,5
	nop	;;3,5
	add	%GPR6,%GPR1,%GPR3	
	sub	%GPR1,%GPR1,%GPR3	
	add	%GPR8,%GPR7,%GPR5	
	add	%GPR2,%GPR2,%GPR10	
	sub	%GPR5,%GPR7,%GPR5	
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	srai	%GPR10,%GPR6,$1	
	srai	%GPR3,%GPR1,$1	
	srai	%GPR5,%GPR5,$1	
	srai	%GPR1,%GPR8,$1	
	slt	%GPR27,%GPR10,%GPR4	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_main_42	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_main_43	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_main_42:
	nop	; Automatically Added by addNopAfterLabels.pl
	sub	%GPR10,%GPR0,%GPR10	
	j	L_main_44	
	nop
	nop
	nop
L_main_43:
	nop
	nop
	nop
L_main_44:
	nop	; Automatically Added by addNopAfterLabels.pl
	add	%GPR2,%GPR2,%GPR10	
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
	slt	%GPR27,%GPR1,%GPR4	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_main_45	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_main_46	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_main_45:
	nop	; Automatically Added by addNopAfterLabels.pl
	sub	%GPR10,%GPR0,%GPR1	
	j	L_main_47	
	nop
	nop
	nop
L_main_46:
	nop	; Automatically Added by addNopAfterLabels.pl
	add	%GPR10,%GPR1,%GPR0	
	nop
	nop
	nop
L_main_47:
	nop	; Automatically Added by addNopAfterLabels.pl
	add	%GPR2,%GPR2,%GPR10	
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
	slt	%GPR27,%GPR3,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_main_48	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_main_49	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_main_48:
	nop	; Automatically Added by addNopAfterLabels.pl
	sub	%GPR10,%GPR0,%GPR3	
	j	L_main_50	
	nop
	nop
	nop
L_main_49:
	nop	; Automatically Added by addNopAfterLabels.pl
	add	%GPR10,%GPR3,%GPR0	
	nop
	nop
	nop
L_main_50:
	nop	; Automatically Added by addNopAfterLabels.pl
	add	%GPR2,%GPR2,%GPR10	
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
	slt	%GPR27,%GPR5,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_main_51	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_main_52	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_main_51:
	nop	; Automatically Added by addNopAfterLabels.pl
	sub	%GPR10,%GPR0,%GPR5	
	j	L_main_53	
	nop
	nop
	nop
L_main_52:
	nop	; Automatically Added by addNopAfterLabels.pl
	add	%GPR10,%GPR5,%GPR0	
	nop
	nop
	nop
L_main_53:
	nop	; Automatically Added by addNopAfterLabels.pl
	add	%GPR28,%GPR2,%GPR10	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_main_54	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_main_54:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	nop
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
DCT_4x4:
L_main_55:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
	subi	%GPR29,%GPR29,$116	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR13,%GPR1,%GPR0	
	add	%GPR6,%GPR2,%GPR0	
	add	%GPR17,%GPR3,%GPR0	
	nop
	nop
	nop
	; Automatically 5 NOPs removed by reduceNOPs.sh
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
	ori	%GPR5,%GPR5,$4	
	lw	%GPR10,0(%GPR17)	
	nop	;;11,13
	nop	;;11,13
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	mult	%GPR2,%GPR6,%GPR1	
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$4	
	sw	-4(%GPR30),%GPR10	
	nop	;;15,17
	nop	;;15,17
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,0(%GPR17)	
	mult	%GPR7,%GPR6,%GPR3	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR10,0(%GPR13)	
	nop	;;19,21
	nop	;;19,21
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-8(%GPR30),%GPR1	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,0(%GPR13)	
	lw	%GPR3,0(%GPR13)	
	nop	;;23,26
	nop	;;23,26
	nop	;;23,26
	nop	; Automatically added by fix-stall-insns.pl
	sw	-12(%GPR30),%GPR1	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,0(%GPR17)	
	lhi	%GPR8,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$4	
	nop	;;28,31
	nop	;;28,31
	nop	;;28,31
	sw	-16(%GPR30),%GPR1	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,0(%GPR13)	
	add	%GPR13,%GPR13,%GPR2	
	nop	;;33,36
	nop	;;33,36
	nop	;;33,36
	sw	-20(%GPR30),%GPR1	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,0(%GPR17)	
	add	%GPR17,%GPR17,%GPR5	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR21,0(%GPR13)	
	lw	%GPR2,0(%GPR13)	
	nop	;;40,42
	nop	;;40,42
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR5,0(%GPR17)	
	lw	%GPR18,0(%GPR17)	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR19,0(%GPR17)	
	nop	;;44,46
	nop	;;44,46
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-24(%GPR30),%GPR5	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR5,0(%GPR17)	
	add	%GPR17,%GPR17,%GPR8	
	nop	;;48,51
	nop	;;48,51
	nop	;;48,51
	sw	-28(%GPR30),%GPR5	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR5,0(%GPR13)	
	nop	;;52,56
	nop	;;52,56
	nop	;;52,56
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	-32(%GPR30),%GPR5	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR5,0(%GPR13)	
	add	%GPR13,%GPR13,%GPR7	
	nop	;;58,61
	nop	;;58,61
	nop	;;58,61
	sw	-36(%GPR30),%GPR5	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR5,0(%GPR17)	
	nop	;;62,66
	nop	;;62,66
	nop	;;62,66
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	-40(%GPR30),%GPR5	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR5,0(%GPR17)	
	lhi	%GPR26,$255	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR26,%GPR26,$16711680	
	nop	;;68,71
	nop	;;68,71
	nop	;;68,71
	sw	-44(%GPR30),%GPR5	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR5,0(%GPR13)	
	lhi	%GPR9,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$4	
	and	%GPR19,%GPR19,%GPR26	
	nop	;;74,76
	nop	;;74,76
	sw	-48(%GPR30),%GPR5	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR5,0(%GPR13)	
	nop	;;77,79
	nop	;;77,79
	lhi	%GPR27,$255	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR27,%GPR27,$16711680	
	nop	;;79,81
	nop	;;79,81
	sw	-52(%GPR30),%GPR5	
	lhi	%GPR5,$255	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$16711680	
	nop	;;82,84
	nop	;;82,84
	mult	%GPR11,%GPR6,%GPR9	
	nop	;;84,86
	nop	;;84,86
	nop	; Automatically added by fix-stall-insns.pl
	sw	-56(%GPR30),%GPR5	
	lhi	%GPR5,$255	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$16711680	
	nop	;;87,90
	nop	;;87,90
	nop	;;87,90
	sw	-60(%GPR30),%GPR19	
	sw	-64(%GPR30),%GPR5	
	lhi	%GPR5,$65280	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$-16777216	
	and	%GPR19,%GPR21,%GPR27	
	nop	;;93,95
	nop	;;93,95
	lhi	%GPR15,$65280	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR15,%GPR15,$-16777216	
	sw	-68(%GPR30),%GPR5	
	lhi	%GPR5,$65280	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$-16777216	
	lw	%GPR22,0(%GPR17)	
	lhi	%GPR6,$255	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$16711680	
	sw	-72(%GPR30),%GPR10	
	sw	-76(%GPR30),%GPR5	
	lhi	%GPR5,$255	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$16711680	
	lw	%GPR24,0(%GPR13)	
	lhi	%GPR9,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$4	
	lhi	%GPR10,$255	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$16711680	
	and	%GPR5,%GPR3,%GPR5	
	lhi	%GPR7,$65280	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$-16777216	
	lw	%GPR3,-4(%GPR30)	
	nop	;;108,110
	nop	;;108,110
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-80(%GPR30),%GPR19	
	and	%GPR19,%GPR2,%GPR15	
	nop	;;111,113
	nop	;;111,113
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR20,0(%GPR17)	
	and	%GPR2,%GPR22,%GPR6	
	add	%GPR17,%GPR17,%GPR9	
	and	%GPR6,%GPR24,%GPR10	
	and	%GPR10,%GPR3,%GPR7	
	lhi	%GPR12,$65280	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR12,%GPR12,$-16777216	
	lhi	%GPR8,$65280	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$-16777216	
	lw	%GPR3,-72(%GPR30)	
	nop	;;120,122
	nop	;;120,122
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR16,0(%GPR17)	
	and	%GPR21,%GPR20,%GPR12	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR23,0(%GPR13)	
	and	%GPR12,%GPR3,%GPR8	
	lhi	%GPR14,$65280	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR14,%GPR14,$-16777216	
	lw	%GPR9,0(%GPR17)	
	lw	%GPR3,-68(%GPR30)	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-84(%GPR30),%GPR16	
	and	%GPR20,%GPR23,%GPR14	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR7,-56(%GPR30)	
	and	%GPR14,%GPR9,%GPR3	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR3,-84(%GPR30)	
	add	%GPR13,%GPR13,%GPR11	
	nop	;;134,137
	nop	;;134,137
	nop	;;134,137
	and	%GPR8,%GPR3,%GPR7	
	lw	%GPR11,0(%GPR13)	
	lw	%GPR3,-76(%GPR30)	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR16,0(%GPR13)	
	lhi	%GPR28,$65280	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$-16777216	
	nop	;;141,143
	nop	;;141,143
	and	%GPR15,%GPR11,%GPR3	
	lw	%GPR3,-64(%GPR30)	
	and	%GPR18,%GPR18,%GPR28	
	nop	;;145,148
	nop	;;145,148
	nop	;;145,148
	and	%GPR9,%GPR16,%GPR3	
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$24	
	lw	%GPR16,-80(%GPR30)	
	lhi	%GPR25,$255	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR25,%GPR25,$16711680	
	nop	;;151,153
	nop	;;151,153
	srl	%GPR11,%GPR18,%GPR3	
	lhi	%GPR18,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR18,%GPR18,$16	
	and	%GPR1,%GPR1,%GPR25	
	srl	%GPR7,%GPR19,%GPR3	
	srl	%GPR24,%GPR12,%GPR3	
	sra	%GPR26,%GPR16,%GPR18	
	lw	%GPR16,-60(%GPR30)	
	sra	%GPR19,%GPR2,%GPR18	
	srl	%GPR25,%GPR10,%GPR3	
	srl	%GPR2,%GPR15,%GPR3	
	sra	%GPR27,%GPR16,%GPR18	
	sra	%GPR16,%GPR6,%GPR18	
	sra	%GPR6,%GPR1,%GPR18	
	lw	%GPR1,-24(%GPR30)	
	srl	%GPR20,%GPR20,%GPR3	
	srl	%GPR21,%GPR21,%GPR3	
	srl	%GPR3,%GPR14,%GPR3	
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR12,-48(%GPR30)	
	andi	%GPR14,%GPR1,$65280	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,-32(%GPR30)	
	sra	%GPR10,%GPR8,%GPR18	
	andi	%GPR15,%GPR12,$65280	
	subu	%GPR12,%GPR7,%GPR11	
	subu	%GPR7,%GPR20,%GPR21	
	andi	%GPR8,%GPR1,$65280	
	lw	%GPR23,0(%GPR13)	
	lw	%GPR20,0(%GPR13)	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,-40(%GPR30)	
	nop	;;180,182
	nop	;;180,182
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR13,-16(%GPR30)	
	sub	%GPR16,%GPR16,%GPR19	
	andi	%GPR1,%GPR1,$65280	
	lhi	%GPR19,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR19,%GPR19,$8	
	andi	%GPR13,%GPR13,$65280	
	sub	%GPR11,%GPR26,%GPR27	
	sra	%GPR5,%GPR5,%GPR18	
	sra	%GPR26,%GPR1,%GPR19	
	lw	%GPR1,-8(%GPR30)	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-88(%GPR30),%GPR13	
	sra	%GPR9,%GPR9,%GPR18	
	subu	%GPR2,%GPR2,%GPR3	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR13,-20(%GPR30)	
	lw	%GPR22,0(%GPR17)	
	sub	%GPR3,%GPR5,%GPR6	
	subu	%GPR24,%GPR24,%GPR25	
	sra	%GPR25,%GPR15,%GPR19	
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR5,-28(%GPR30)	
	andi	%GPR15,%GPR1,$255	
	sub	%GPR9,%GPR9,%GPR10	
	andi	%GPR21,%GPR13,$65280	
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,-12(%GPR30)	
	sll	%GPR10,%GPR12,%GPR18	
	andi	%GPR13,%GPR22,$65280	
	andi	%GPR12,%GPR11,$65535	
	andi	%GPR22,%GPR5,$255	
	andi	%GPR11,%GPR16,$65535	
	lw	%GPR5,-36(%GPR30)	
	andi	%GPR16,%GPR1,$255	
	sll	%GPR1,%GPR24,%GPR18	
	add	%GPR27,%GPR13,%GPR0	
	andi	%GPR13,%GPR23,$65280	
	lw	%GPR24,-88(%GPR30)	
	andi	%GPR23,%GPR5,$255	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR6,-52(%GPR30)	
	lw	%GPR5,-44(%GPR30)	
	nop	;;217,219
	nop	;;217,219
	sra	%GPR8,%GPR8,%GPR19	
	sra	%GPR14,%GPR14,%GPR19	
	sra	%GPR21,%GPR21,%GPR19	
	sra	%GPR13,%GPR13,%GPR19	
	sra	%GPR24,%GPR24,%GPR19	
	sra	%GPR19,%GPR27,%GPR19	
	andi	%GPR6,%GPR6,$255	
	andi	%GPR5,%GPR5,$255	
	lhi	%GPR27,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR27,%GPR27,$2	
	nop	;;227,229
	nop	;;227,229
	sub	%GPR22,%GPR23,%GPR22	
	sub	%GPR23,%GPR6,%GPR5	
	sw	-92(%GPR30),%GPR27	
	or	%GPR5,%GPR10,%GPR12	
	lhi	%GPR27,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR27,%GPR27,$-65536	
	sll	%GPR2,%GPR2,%GPR18	
	andi	%GPR9,%GPR9,$65535	
	nop	;;235,237
	nop	;;235,237
	sub	%GPR6,%GPR8,%GPR14	
	andi	%GPR10,%GPR5,$65535	
	sw	-96(%GPR30),%GPR27	
	or	%GPR9,%GPR2,%GPR9	
	lhi	%GPR27,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR27,%GPR27,$-65536	
	andi	%GPR2,%GPR23,$65535	
	sll	%GPR23,%GPR6,%GPR18	
	sll	%GPR7,%GPR7,%GPR18	
	slli	%GPR6,%GPR10,$16	
	add	%GPR10,%GPR27,%GPR0	
	nop	;;246,248
	nop	;;246,248
	lw	%GPR17,0(%GPR17)	
	or	%GPR7,%GPR7,%GPR11	
	fex	%GPR5,%GPR5,%GPR10,$16	
	andi	%GPR3,%GPR3,$65535	
	lhi	%GPR11,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR11,%GPR11,$2	
	andi	%GPR20,%GPR20,$255	
	andi	%GPR17,%GPR17,$255	
	lw	%GPR10,-96(%GPR30)	
	nop	;;255,258
	nop	;;255,258
	nop	;;255,258
	sub	%GPR8,%GPR25,%GPR26	
	or	%GPR3,%GPR1,%GPR3	
	sub	%GPR15,%GPR16,%GPR15	
	andi	%GPR14,%GPR7,$65535	
	sw	-100(%GPR30),%GPR11	
	fex	%GPR7,%GPR7,%GPR10,$16	
	sub	%GPR16,%GPR20,%GPR17	
	lhi	%GPR12,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR12,%GPR12,$-65536	
	lhi	%GPR11,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR11,%GPR11,$-65536	
	sub	%GPR17,%GPR21,%GPR24	
	sll	%GPR24,%GPR8,%GPR18	
	andi	%GPR20,%GPR9,$65535	
	andi	%GPR21,%GPR3,$65535	
	slli	%GPR8,%GPR14,$16	
	sub	%GPR10,%GPR5,%GPR7	
	fex	%GPR9,%GPR9,%GPR11,$16	
	fex	%GPR3,%GPR3,%GPR12,$16	
	lw	%GPR14,-92(%GPR30)	
	lw	%GPR12,-100(%GPR30)	
	nop	;;276,278
	nop	;;276,278
	sub	%GPR11,%GPR3,%GPR9	
	nop	; Automatically added by fix-stall-insns.pl
	mult	%GPR26,%GPR10,%GPR14	
	srai	%GPR6,%GPR6,$16	
	srai	%GPR8,%GPR8,$16	
	nop	;;281,283
	nop	;;281,283
	mac	%GPR10,%GPR11,%GPR12	
	sub	%GPR19,%GPR13,%GPR19	
	sll	%GPR17,%GPR17,%GPR18	
	lhi	%GPR13,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR13,%GPR13,$2	
	add	%GPR12,%GPR10,%GPR0	
	lhi	%GPR10,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$2	
	sll	%GPR18,%GPR19,%GPR18	
	nop	;;289,291
	nop	;;289,291
	slli	%GPR19,%GPR21,$16	
	sw	-104(%GPR30),%GPR10	
	sub	%GPR10,%GPR6,%GPR8	
	slli	%GPR20,%GPR20,$16	
	srai	%GPR19,%GPR19,$16	
	andi	%GPR1,%GPR22,$65535	
	mult	%GPR25,%GPR10,%GPR13	
	srai	%GPR20,%GPR20,$16	
	nop	;;298,301
	nop	;;298,301
	nop	;;298,301
	sub	%GPR13,%GPR11,%GPR26	
	lhi	%GPR11,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR11,%GPR11,$2	
	nop	;;302,304
	nop	;;302,304
	or	%GPR2,%GPR24,%GPR2	
	or	%GPR1,%GPR23,%GPR1	
	sw	-108(%GPR30),%GPR11	
	sub	%GPR11,%GPR19,%GPR20	
	andi	%GPR15,%GPR15,$65535	
	andi	%GPR16,%GPR16,$65535	
	lhi	%GPR14,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR14,%GPR14,$2	
	lhi	%GPR22,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR22,%GPR22,$-65536	
	lhi	%GPR21,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR21,%GPR21,$-65536	
	nop	;;312,315
	nop	;;312,315
	nop	;;312,315
	or	%GPR15,%GPR17,%GPR15	
	or	%GPR16,%GPR18,%GPR16	
	mac	%GPR10,%GPR11,%GPR14	
	andi	%GPR24,%GPR2,$65535	
	andi	%GPR23,%GPR1,$65535	
	fex	%GPR2,%GPR2,%GPR21,$16	
	fex	%GPR1,%GPR1,%GPR22,$16	
	lhi	%GPR27,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR27,%GPR27,$-65536	
	lhi	%GPR26,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR26,%GPR26,$-65536	
	add	%GPR5,%GPR5,%GPR7	
	add	%GPR3,%GPR3,%GPR9	
	add	%GPR14,%GPR10,%GPR0	
	andi	%GPR17,%GPR15,$65535	
	andi	%GPR18,%GPR16,$65535	
	sub	%GPR10,%GPR1,%GPR2	
	fex	%GPR15,%GPR15,%GPR27,$16	
	fex	%GPR16,%GPR16,%GPR26,$16	
	lw	%GPR21,-104(%GPR30)	
	add	%GPR7,%GPR3,%GPR5	
	sub	%GPR9,%GPR3,%GPR5	
	sub	%GPR22,%GPR11,%GPR25	
	nop	; Automatically added by fix-stall-insns.pl
	mult	%GPR21,%GPR10,%GPR21	
	sub	%GPR11,%GPR15,%GPR16	
	add	%GPR5,%GPR6,%GPR8	
	add	%GPR3,%GPR19,%GPR20	
	lw	%GPR26,-108(%GPR30)	
	slli	%GPR24,%GPR24,$16	
	slli	%GPR23,%GPR23,$16	
	slli	%GPR17,%GPR17,$16	
	slli	%GPR18,%GPR18,$16	
	add	%GPR6,%GPR3,%GPR5	
	sub	%GPR8,%GPR3,%GPR5	
	mac	%GPR10,%GPR11,%GPR26	
	sub	%GPR19,%GPR11,%GPR21	
	add	%GPR5,%GPR1,%GPR2	
	add	%GPR3,%GPR15,%GPR16	
	srai	%GPR11,%GPR17,$16	
	srai	%GPR23,%GPR23,$16	
	srai	%GPR24,%GPR24,$16	
	nop	;;353,355
	nop	;;353,355
	srai	%GPR17,%GPR18,$16	
	add	%GPR26,%GPR10,%GPR0	
	sub	%GPR10,%GPR23,%GPR24	
	sub	%GPR1,%GPR3,%GPR5	
	add	%GPR15,%GPR3,%GPR5	
	lhi	%GPR28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$2	
	nop	;;360,362
	nop	;;360,362
	add	%GPR3,%GPR11,%GPR17	
	add	%GPR5,%GPR23,%GPR24	
	mult	%GPR28,%GPR10,%GPR28	
	sub	%GPR11,%GPR11,%GPR17	
	lhi	%GPR25,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR25,%GPR25,$2	
	add	%GPR16,%GPR3,%GPR5	
	sub	%GPR2,%GPR3,%GPR5	
	add	%GPR5,%GPR6,%GPR15	
	mac	%GPR10,%GPR11,%GPR25	
	add	%GPR3,%GPR7,%GPR16	
	nop	;;371,374
	nop	;;371,374
	nop	;;371,374
	add	%GPR17,%GPR10,%GPR0	
	add	%GPR10,%GPR3,%GPR5	
	lhi	%GPR27,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR27,%GPR27,$2	
	lhi	%GPR18,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR18,%GPR18,$2	
	nop	;;377,379
	nop	;;377,379
	andi	%GPR20,%GPR10,$65535	
	sub	%GPR10,%GPR6,%GPR15	
	sub	%GPR6,%GPR11,%GPR28	
	sub	%GPR11,%GPR7,%GPR16	
	slli	%GPR20,%GPR20,$16	
	mult	%GPR21,%GPR10,%GPR27	
	sub	%GPR3,%GPR3,%GPR5	
	nop	;;385,388
	nop	;;385,388
	nop	;;385,388
	mac	%GPR10,%GPR11,%GPR18	
	sub	%GPR7,%GPR11,%GPR21	
	lhi	%GPR11,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR11,%GPR11,$4	
	lhi	%GPR15,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR15,%GPR15,$2	
	andi	%GPR10,%GPR10,$65535	
	andi	%GPR18,%GPR7,$65535	
	add	%GPR5,%GPR14,%GPR26	
	add	%GPR21,%GPR4,%GPR11	
	slli	%GPR16,%GPR10,$16	
	or	%GPR18,%GPR20,%GPR18	
	sub	%GPR10,%GPR14,%GPR26	
	andi	%GPR20,%GPR3,$65535	
	add	%GPR3,%GPR12,%GPR17	
	sub	%GPR11,%GPR12,%GPR17	
	mult	%GPR15,%GPR10,%GPR15	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$2	
	add	%GPR14,%GPR3,%GPR5	
	nop	;;404,406
	nop	;;404,406
	sw	0(%GPR4),%GPR18	
	mac	%GPR10,%GPR11,%GPR7	
	sub	%GPR7,%GPR11,%GPR15	
	andi	%GPR23,%GPR14,$65535	
	or	%GPR16,%GPR16,%GPR20	
	lhi	%GPR18,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR18,%GPR18,$8	
	andi	%GPR17,%GPR7,$65535	
	slli	%GPR20,%GPR23,$16	
	andi	%GPR10,%GPR10,$65535	
	nop	;;414,416
	nop	;;414,416
	sub	%GPR3,%GPR3,%GPR5	
	sw	0(%GPR21),%GPR16	
	nop	;;417,419
	nop	;;417,419
	add	%GPR12,%GPR4,%GPR18	
	or	%GPR16,%GPR20,%GPR17	
	slli	%GPR15,%GPR10,$16	
	lhi	%GPR11,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR11,%GPR11,$12	
	sub	%GPR10,%GPR8,%GPR1	
	lhi	%GPR14,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR14,%GPR14,$2	
	nop	;;424,426
	nop	;;424,426
	andi	%GPR17,%GPR3,$65535	
	add	%GPR3,%GPR9,%GPR2	
	add	%GPR5,%GPR8,%GPR1	
	sw	0(%GPR12),%GPR16	
	add	%GPR12,%GPR4,%GPR11	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	mult	%GPR14,%GPR10,%GPR14	
	sub	%GPR11,%GPR9,%GPR2	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$2	
	add	%GPR1,%GPR3,%GPR5	
	nop	;;434,436
	nop	;;434,436
	sub	%GPR2,%GPR11,%GPR14	
	mac	%GPR10,%GPR11,%GPR7	
	andi	%GPR18,%GPR1,$65535	
	or	%GPR15,%GPR15,%GPR17	
	sub	%GPR3,%GPR3,%GPR5	
	andi	%GPR9,%GPR10,$65535	
	andi	%GPR10,%GPR2,$65535	
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$16	
	slli	%GPR16,%GPR18,$16	
	nop	;;444,446
	nop	;;444,446
	sw	0(%GPR12),%GPR15	
	andi	%GPR12,%GPR3,$65535	
	or	%GPR11,%GPR16,%GPR10	
	add	%GPR1,%GPR4,%GPR1	
	nop	;;449,451
	nop	;;449,451
	add	%GPR3,%GPR13,%GPR6	
	sub	%GPR10,%GPR22,%GPR19	
	add	%GPR5,%GPR22,%GPR19	
	lhi	%GPR8,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$2	
	nop	;;454,456
	nop	;;454,456
	sw	0(%GPR1),%GPR11	
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$20	
	nop	;;457,459
	nop	;;457,459
	mult	%GPR8,%GPR10,%GPR8	
	add	%GPR14,%GPR3,%GPR5	
	sub	%GPR11,%GPR13,%GPR6	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$2	
	slli	%GPR9,%GPR9,$16	
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$24	
	add	%GPR15,%GPR4,%GPR2	
	sub	%GPR2,%GPR11,%GPR8	
	mac	%GPR10,%GPR11,%GPR7	
	andi	%GPR14,%GPR14,$65535	
	or	%GPR9,%GPR9,%GPR12	
	add	%GPR8,%GPR4,%GPR1	
	sub	%GPR1,%GPR3,%GPR5	
	andi	%GPR2,%GPR2,$65535	
	andi	%GPR6,%GPR10,$65535	
	nop	;;473,475
	nop	;;473,475
	slli	%GPR12,%GPR14,$16	
	sw	0(%GPR15),%GPR9	
	andi	%GPR1,%GPR1,$65535	
	slli	%GPR6,%GPR6,$16	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$28	
	or	%GPR2,%GPR12,%GPR2	
	nop	;;480,482
	nop	;;480,482
	or	%GPR1,%GPR6,%GPR1	
	add	%GPR3,%GPR4,%GPR7	
	sw	0(%GPR8),%GPR2	
	nop	;;484,488
	nop	;;484,488
	nop	;;484,488
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR3),%GPR1	
	nop
	nop
	nop
L_main_56:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	nop
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
main:
L_main_57:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
	subi	%GPR29,%GPR29,$1512	
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$16	
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
	; Automatically 1 NOPs removed by reduceNOPs.sh
	div	%GPR2,%GPR1,%GPR2	
	nop	;;11,15
	nop	;;11,15
	nop	;;11,15
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-1464(%GPR30),%GPR2	
	subi	%GPR2,%GPR30,$1460	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-1468(%GPR30),%GPR2	
	subi	%GPR2,%GPR30,$1428	
	nop	;;21,25
	nop	;;21,25
	nop	;;21,25
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-1472(%GPR30),%GPR2	
	subi	%GPR2,%GPR30,$1428	
	nop	;;26,30
	nop	;;26,30
	nop	;;26,30
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-1476(%GPR30),%GPR2	
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	;;31,35
	nop	;;31,35
	nop	;;31,35
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-1480(%GPR30),%GPR2	
	lhi	%GPR2,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$-1	
	nop	;;36,40
	nop	;;36,40
	nop	;;36,40
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-1484(%GPR30),%GPR2	
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	;;41,45
	nop	;;41,45
	nop	;;41,45
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-1488(%GPR30),%GPR2	
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	;;46,50
	nop	;;46,50
	nop	;;46,50
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-1492(%GPR30),%GPR2	
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	;;51,55
	nop	;;51,55
	nop	;;51,55
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-1496(%GPR30),%GPR2	
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	;;56,60
	nop	;;56,60
	nop	;;56,60
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-1500(%GPR30),%GPR2	
	nop
	nop
	nop
L_main_58:
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%GPR6,-1480(%GPR30)	
	subi	%GPR2,%GPR30,$1428	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$4	
	nop	;;4,7
	nop	;;4,7
	nop	;;4,7
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	mult	%GPR3,%GPR6,%GPR3	
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$128	
	nop	;;9,12
	nop	;;9,12
	nop	;;9,12
	add	%GPR2,%GPR2,%GPR3	
	add	%GPR3,%GPR6,%GPR0	
	nop	;;13,16
	nop	;;13,16
	nop	;;13,16
	sw	0(%GPR2),%GPR4	
	addi	%GPR3,%GPR3,$1	
	nop	;;17,21
	nop	;;17,21
	nop	;;17,21
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR3,%GPR0	
	sw	-1480(%GPR30),%GPR3	
	nop	;;22,25
	nop	;;22,25
	nop	;;22,25
	slt	%GPR27,%GPR2,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_main_58	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_main_59	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_main_59:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
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
	sw	-1480(%GPR30),%GPR2	
	nop
	nop
	nop
L_main_60:
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%GPR6,-1480(%GPR30)	
	subi	%GPR2,%GPR30,$1460	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$4	
	nop	;;4,7
	nop	;;4,7
	nop	;;4,7
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	mult	%GPR3,%GPR6,%GPR3	
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$8	
	nop	;;9,12
	nop	;;9,12
	nop	;;9,12
	add	%GPR2,%GPR2,%GPR3	
	add	%GPR3,%GPR6,%GPR0	
	nop	;;13,16
	nop	;;13,16
	nop	;;13,16
	sw	0(%GPR2),%GPR4	
	addi	%GPR3,%GPR3,$1	
	nop	;;17,21
	nop	;;17,21
	nop	;;17,21
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR3,%GPR0	
	sw	-1480(%GPR30),%GPR3	
	nop	;;22,25
	nop	;;22,25
	nop	;;22,25
	slt	%GPR27,%GPR2,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_main_60	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_main_61	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_main_61:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
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
	sw	-1480(%GPR30),%GPR2	
	nop
	nop
	nop
L_main_62:
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%GPR3,-1480(%GPR30)	
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
	add	%GPR7,%GPR3,%GPR0	
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$1	
	mult	%GPR2,%GPR3,%GPR2	
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	nop	;;9,12
	nop	;;9,12
	nop	;;9,12
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$4	
	nop	;;12,14
	nop	;;12,14
	mac	%GPR4,%GPR7,%GPR5	
	add	%GPR9,%GPR7,%GPR0	
	lhi	%GPR8,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$4	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$2	
	mult	%GPR2,%GPR2,%GPR3	
	subi	%GPR6,%GPR30,$404	
	nop	;;19,21
	nop	;;19,21
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	nop	;;21,23
	nop	;;21,23
	mac	%GPR7,%GPR9,%GPR8	
	add	%GPR2,%GPR6,%GPR2	
	lhi	%GPR8,$514	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$33686276	
	mult	%GPR4,%GPR4,%GPR5	
	subi	%GPR3,%GPR30,$404	
	nop	;;27,31
	nop	;;27,31
	nop	;;27,31
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR9,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$4	
	sw	0(%GPR2),%GPR8	
	add	%GPR3,%GPR3,%GPR4	
	lhi	%GPR2,$1286	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$84281096	
	lw	%GPR6,-1480(%GPR30)	
	subi	%GPR5,%GPR30,$404	
	lhi	%GPR10,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$3	
	mult	%GPR7,%GPR7,%GPR9	
	nop	;;38,40
	nop	;;38,40
	lhi	%GPR11,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR11,%GPR11,$4	
	nop	;;40,42
	nop	;;40,42
	sw	0(%GPR3),%GPR2	
	lhi	%GPR2,$2314	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$151653132	
	add	%GPR5,%GPR5,%GPR7	
	mac	%GPR10,%GPR6,%GPR11	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$4	
	nop	;;46,48
	nop	;;46,48
	sw	0(%GPR5),%GPR2	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,-1480(%GPR30)	
	mult	%GPR3,%GPR10,%GPR6	
	nop	;;50,52
	nop	;;50,52
	subi	%GPR4,%GPR30,$404	
	addi	%GPR2,%GPR2,$1	
	lhi	%GPR6,$3342	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$219025152	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$16	
	add	%GPR3,%GPR4,%GPR3	
	sw	-1480(%GPR30),%GPR2	
	nop	;;57,60
	nop	;;57,60
	nop	;;57,60
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR3),%GPR6	
	slt	%GPR27,%GPR2,%GPR7	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_main_62	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_main_63	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_main_63:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
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
	sw	-1480(%GPR30),%GPR2	
	nop
	nop
	nop
L_main_64:
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%GPR3,-1480(%GPR30)	
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
	add	%GPR7,%GPR3,%GPR0	
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$1	
	mult	%GPR2,%GPR3,%GPR2	
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	nop	;;9,12
	nop	;;9,12
	nop	;;9,12
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$4	
	nop	;;12,14
	nop	;;12,14
	mac	%GPR4,%GPR7,%GPR5	
	add	%GPR9,%GPR7,%GPR0	
	lhi	%GPR8,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$4	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$2	
	mult	%GPR2,%GPR2,%GPR3	
	subi	%GPR6,%GPR30,$660	
	nop	;;19,21
	nop	;;19,21
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	nop	;;21,23
	nop	;;21,23
	mac	%GPR7,%GPR9,%GPR8	
	add	%GPR2,%GPR6,%GPR2	
	lhi	%GPR8,$2319	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$151980553	
	mult	%GPR4,%GPR4,%GPR5	
	subi	%GPR3,%GPR30,$660	
	nop	;;27,31
	nop	;;27,31
	nop	;;27,31
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR9,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$4	
	sw	0(%GPR2),%GPR8	
	add	%GPR3,%GPR3,%GPR4	
	lhi	%GPR2,$1804	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$118227712	
	lw	%GPR6,-1480(%GPR30)	
	subi	%GPR5,%GPR30,$660	
	lhi	%GPR10,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$3	
	mult	%GPR7,%GPR7,%GPR9	
	nop	;;38,40
	nop	;;38,40
	lhi	%GPR11,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR11,%GPR11,$4	
	nop	;;40,42
	nop	;;40,42
	sw	0(%GPR3),%GPR2	
	lhi	%GPR2,$1032	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$67636481	
	add	%GPR5,%GPR5,%GPR7	
	mac	%GPR10,%GPR6,%GPR11	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$4	
	nop	;;46,48
	nop	;;46,48
	sw	0(%GPR5),%GPR2	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,-1480(%GPR30)	
	mult	%GPR3,%GPR10,%GPR6	
	nop	;;50,52
	nop	;;50,52
	subi	%GPR4,%GPR30,$660	
	addi	%GPR2,%GPR2,$1	
	lhi	%GPR6,$1550	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$101583621	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$16	
	add	%GPR3,%GPR4,%GPR3	
	sw	-1480(%GPR30),%GPR2	
	nop	;;57,60
	nop	;;57,60
	nop	;;57,60
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR3),%GPR6	
	slt	%GPR27,%GPR2,%GPR7	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_main_64	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_main_65	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_main_65:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
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
	sw	-1480(%GPR30),%GPR2	
	nop
	nop
	nop
L_main_66:
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%GPR3,-1480(%GPR30)	
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
	add	%GPR7,%GPR3,%GPR0	
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$1	
	mult	%GPR2,%GPR3,%GPR2	
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	nop	;;9,12
	nop	;;9,12
	nop	;;9,12
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$4	
	nop	;;12,14
	nop	;;12,14
	mac	%GPR4,%GPR7,%GPR5	
	add	%GPR9,%GPR7,%GPR0	
	lhi	%GPR8,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$4	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$2	
	mult	%GPR2,%GPR2,%GPR3	
	subi	%GPR6,%GPR30,$916	
	nop	;;19,21
	nop	;;19,21
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	nop	;;21,23
	nop	;;21,23
	mac	%GPR7,%GPR9,%GPR8	
	add	%GPR2,%GPR6,%GPR2	
	lhi	%GPR8,$2319	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$151980553	
	mult	%GPR4,%GPR4,%GPR5	
	subi	%GPR3,%GPR30,$916	
	nop	;;27,31
	nop	;;27,31
	nop	;;27,31
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR9,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$4	
	sw	0(%GPR2),%GPR8	
	add	%GPR3,%GPR3,%GPR4	
	lhi	%GPR2,$1804	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$118227712	
	lw	%GPR6,-1480(%GPR30)	
	subi	%GPR5,%GPR30,$916	
	lhi	%GPR10,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$3	
	mult	%GPR7,%GPR7,%GPR9	
	nop	;;38,40
	nop	;;38,40
	lhi	%GPR11,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR11,%GPR11,$4	
	nop	;;40,42
	nop	;;40,42
	sw	0(%GPR3),%GPR2	
	lhi	%GPR2,$1032	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$67636481	
	add	%GPR5,%GPR5,%GPR7	
	mac	%GPR10,%GPR6,%GPR11	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$4	
	nop	;;46,48
	nop	;;46,48
	sw	0(%GPR5),%GPR2	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,-1480(%GPR30)	
	mult	%GPR3,%GPR10,%GPR6	
	nop	;;50,52
	nop	;;50,52
	subi	%GPR4,%GPR30,$916	
	addi	%GPR2,%GPR2,$1	
	lhi	%GPR6,$1550	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$101583621	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$16	
	add	%GPR3,%GPR4,%GPR3	
	sw	-1480(%GPR30),%GPR2	
	nop	;;57,60
	nop	;;57,60
	nop	;;57,60
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR3),%GPR6	
	slt	%GPR27,%GPR2,%GPR7	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_main_66	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_main_67	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_main_67:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
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
	sw	-1480(%GPR30),%GPR2	
	nop
	nop
	nop
L_main_68:
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%GPR3,-1480(%GPR30)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR4,%GPR3,%GPR0	
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop	;;5,7
	nop	;;5,7
	lhi	%GPR8,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$4	
	add	%GPR9,%GPR4,%GPR0	
	mult	%GPR2,%GPR4,%GPR2	
	nop	;;9,11
	nop	;;9,11
	lhi	%GPR10,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$4	
	nop	;;11,13
	nop	;;11,13
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$1	
	nop	;;13,15
	nop	;;13,15
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	mult	%GPR16,%GPR2,%GPR10	
	mac	%GPR4,%GPR9,%GPR8	
	add	%GPR8,%GPR9,%GPR0	
	lhi	%GPR14,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR14,%GPR14,$4	
	nop	;;19,23
	nop	;;19,23
	nop	;;19,23
	; Automatically 1 NOPs removed by reduceNOPs.sh
	mult	%GPR3,%GPR3,%GPR1	
	lhi	%GPR11,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR11,%GPR11,$4	
	nop	;;24,26
	nop	;;24,26
	mac	%GPR5,%GPR8,%GPR1	
	lw	%GPR2,-1480(%GPR30)	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	mult	%GPR4,%GPR4,%GPR14	
	subi	%GPR6,%GPR30,$148	
	lhi	%GPR12,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR12,%GPR12,$4	
	lhi	%GPR9,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$2	
	lhi	%GPR8,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$2	
	mult	%GPR17,%GPR3,%GPR11	
	subi	%GPR7,%GPR30,$660	
	subi	%GPR10,%GPR30,$148	
	lhi	%GPR15,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR15,%GPR15,$4	
	nop	;;36,42
	nop	;;36,42
	nop	;;36,42
	; Automatically 3 NOPs removed by reduceNOPs.sh
	add	%GPR14,%GPR6,%GPR16	
	mac	%GPR8,%GPR2,%GPR12	
	mac	%GPR9,%GPR2,%GPR1	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR6,-1480(%GPR30)	
	mult	%GPR5,%GPR5,%GPR15	
	add	%GPR7,%GPR7,%GPR17	
	add	%GPR4,%GPR10,%GPR4	
	subi	%GPR11,%GPR30,$660	
	lhi	%GPR18,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR18,%GPR18,$4	
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$3	
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$3	
	lw	%GPR10,-1480(%GPR30)	
	lhi	%GPR13,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR13,%GPR13,$4	
	lhi	%GPR12,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR12,%GPR12,$4	
	nop	;;55,57
	nop	;;55,57
	sw	0(%GPR14),%GPR7	
	nop	;;57,59
	nop	;;57,59
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	mac	%GPR2,%GPR6,%GPR18	
	add	%GPR5,%GPR11,%GPR5	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	mac	%GPR3,%GPR6,%GPR1	
	nop	;;61,63
	nop	;;61,63
	nop	; Automatically added by fix-stall-insns.pl
	mult	%GPR9,%GPR9,%GPR13	
	mult	%GPR8,%GPR8,%GPR12	
	add	%GPR11,%GPR10,%GPR0	
	lhi	%GPR16,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR16,%GPR16,$4	
	subi	%GPR7,%GPR30,$660	
	subi	%GPR6,%GPR30,$148	
	nop	;;68,71
	nop	;;68,71
	nop	;;68,71
	lhi	%GPR14,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR14,%GPR14,$4	
	sw	0(%GPR4),%GPR5	
	lhi	%GPR15,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR15,%GPR15,$4	
	nop	;;73,75
	nop	;;73,75
	mult	%GPR11,%GPR11,%GPR16	
	add	%GPR7,%GPR7,%GPR9	
	add	%GPR8,%GPR6,%GPR8	
	nop	;;77,80
	nop	;;77,80
	nop	;;77,80
	lw	%GPR6,-1480(%GPR30)	
	lhi	%GPR18,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR18,%GPR18,$4	
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$1	
	nop	;;82,84
	nop	;;82,84
	mult	%GPR2,%GPR2,%GPR14	
	subi	%GPR12,%GPR30,$148	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	mult	%GPR3,%GPR3,%GPR15	
	subi	%GPR13,%GPR30,$660	
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	sw	0(%GPR8),%GPR7	
	nop	;;89,93
	nop	;;89,93
	nop	;;89,93
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	mult	%GPR10,%GPR10,%GPR1	
	lhi	%GPR16,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR16,%GPR16,$4	
	lhi	%GPR17,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR17,%GPR17,$4	
	nop	;;95,97
	nop	;;95,97
	mac	%GPR4,%GPR6,%GPR18	
	lhi	%GPR8,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$4	
	add	%GPR12,%GPR12,%GPR2	
	lw	%GPR2,-1480(%GPR30)	
	add	%GPR3,%GPR13,%GPR3	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	mac	%GPR5,%GPR6,%GPR1	
	lhi	%GPR14,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR14,%GPR14,$2	
	lhi	%GPR15,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR15,%GPR15,$2	
	lhi	%GPR18,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR18,%GPR18,$4	
	mult	%GPR11,%GPR11,%GPR16	
	mult	%GPR10,%GPR10,%GPR17	
	subi	%GPR7,%GPR30,$404	
	lhi	%GPR9,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$4	
	subi	%GPR6,%GPR30,$84	
	mult	%GPR4,%GPR4,%GPR8	
	nop	;;111,114
	nop	;;111,114
	nop	;;111,114
	sw	0(%GPR12),%GPR3	
	mac	%GPR14,%GPR2,%GPR18	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	mac	%GPR15,%GPR2,%GPR1	
	mult	%GPR5,%GPR5,%GPR9	
	add	%GPR7,%GPR7,%GPR10	
	add	%GPR6,%GPR6,%GPR11	
	subi	%GPR3,%GPR30,$404	
	subi	%GPR2,%GPR30,$84	
	nop	;;121,123
	nop	;;121,123
	lw	%GPR8,-1480(%GPR30)	
	lhi	%GPR16,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR16,%GPR16,$3	
	nop	;;124,128
	nop	;;124,128
	nop	;;124,128
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR18,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR18,%GPR18,$4	
	sw	0(%GPR6),%GPR7	
	add	%GPR3,%GPR3,%GPR5	
	add	%GPR2,%GPR2,%GPR4	
	lhi	%GPR17,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR17,%GPR17,$3	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$4	
	mac	%GPR16,%GPR8,%GPR18	
	nop	;;134,136
	nop	;;134,136
	lhi	%GPR12,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR12,%GPR12,$4	
	lhi	%GPR13,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR13,%GPR13,$4	
	sw	0(%GPR2),%GPR3	
	mac	%GPR17,%GPR8,%GPR1	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	mult	%GPR2,%GPR16,%GPR7	
	subi	%GPR6,%GPR30,$404	
	subi	%GPR4,%GPR30,$84	
	subi	%GPR8,%GPR30,$84	
	lhi	%GPR9,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$4	
	mult	%GPR10,%GPR14,%GPR12	
	mult	%GPR11,%GPR15,%GPR13	
	add	%GPR2,%GPR4,%GPR2	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	mult	%GPR3,%GPR17,%GPR9	
	add	%GPR7,%GPR8,%GPR10	
	subi	%GPR5,%GPR30,$404	
	add	%GPR6,%GPR6,%GPR11	
	lw	%GPR4,-1480(%GPR30)	
	nop	;;152,154
	nop	;;152,154
	add	%GPR3,%GPR5,%GPR3	
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR7),%GPR6	
	addi	%GPR4,%GPR4,$1	
	lhi	%GPR8,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$4	
	nop	;;157,159
	nop	;;157,159
	sw	0(%GPR2),%GPR3	
	add	%GPR2,%GPR4,%GPR0	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-1480(%GPR30),%GPR4	
	nop	;;161,164
	nop	;;161,164
	nop	;;161,164
	slt	%GPR27,%GPR2,%GPR8	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_main_68	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_main_69	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_main_69:
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
	sw	-1480(%GPR30),%GPR1	
	nop
	nop
	nop
L_main_70:
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%GPR1,-1480(%GPR30)	
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
	sw	-1480(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$16	
	nop	;;10,14
	nop	;;10,14
	nop	;;10,14
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR2,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_main_70	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_main_71	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_main_71:
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
	sw	-1504(%GPR30),%GPR1	
	nop
	nop
	nop
L_main_72:
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
	sw	-1480(%GPR30),%GPR1	
	nop
	nop
	nop
L_main_73:
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


	lhi	%GPR2, $0x100
	nop
	nop
	nop
	sw	0(%GPR2), %GPR1

	nop	;;5,7
	nop	;;5,7
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR5,-1504(%GPR30)	
	nop	;;7,9
	nop	;;7,9
	subi	%GPR2,%GPR30,$148	
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$4	
	subi	%GPR1,%GPR30,$84	
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop	;;12,14
	nop	;;12,14
	mult	%GPR3,%GPR5,%GPR3	
	nop	;;14,18
	nop	;;14,18
	nop	;;14,18
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR5,-1480(%GPR30)	
	add	%GPR1,%GPR1,%GPR3	
	nop	;;19,22
	nop	;;19,22
	nop	;;19,22
	mult	%GPR4,%GPR5,%GPR4	
	lw	%GPR1,0(%GPR1)	
	nop	;;23,26
	nop	;;23,26
	nop	;;23,26
	add	%GPR2,%GPR2,%GPR4	
	nop	;;26,30
	nop	;;26,30
	nop	;;26,30
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR3,0(%GPR2)	
	lw	%GPR2,-1464(%GPR30)	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	SATD_4x4	
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


	lhi	%GPR2,$0x100
	nop
	nop
	nop
	lw	%GPR2, 0(%GPR2)
	nop
	nop
	nop

	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR3,-1496(%GPR30)	
	nop	;;35,39
	nop	;;35,39
	nop	;;35,39
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR3,%GPR2	
	nop	;;39,43
	nop	;;39,43
	nop	;;39,43
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-1496(%GPR30),%GPR2	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,-1484(%GPR30)	
	nop	;;44,48
	nop	;;44,48
	nop	;;44,48
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sltu	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_main_74	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_main_75	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_main_74:
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%GPR3,-1480(%GPR30)	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-1484(%GPR30),%GPR1	
	subi	%GPR1,%GPR30,$148	
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	mult	%GPR2,%GPR3,%GPR2	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	-1500(%GPR30),%GPR1	
	nop
	nop
	nop
L_main_75:
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%GPR1,-1480(%GPR30)	
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
	sw	-1480(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$16	
	nop	;;10,14
	nop	;;10,14
	nop	;;10,14
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR2,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_main_73	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_main_76	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_main_76:
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


	lhi	%GPR2, $0x100
	nop
	nop
	nop
	sw	0(%GPR2), %GPR1

	nop	;;5,7
	nop	;;5,7
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR3,-1504(%GPR30)	
	subi	%GPR1,%GPR30,$84	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR4,-1476(%GPR30)	
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop	;;10,14
	nop	;;10,14
	nop	;;10,14
	; Automatically 1 NOPs removed by reduceNOPs.sh
	mult	%GPR2,%GPR3,%GPR2	
	nop	;;14,18
	nop	;;14,18
	nop	;;14,18
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	lw	%GPR3,-1500(%GPR30)	
	lw	%GPR2,-1464(%GPR30)	
	nop	;;20,22
	nop	;;20,22
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
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
	jal	DCT_4x4	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh


	lhi	%GPR1,$0x100
	nop
	nop
	nop
	lw	%GPR1, 0(%GPR1)
	nop
	nop
	nop

	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,-1504(%GPR30)	
	nop	;;25,27
	nop	;;25,27
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR3,-1476(%GPR30)	
	nop	;;27,29
	nop	;;27,29
	addi	%GPR2,%GPR2,$1	
	nop	;;29,33
	nop	;;29,33
	nop	;;29,33
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-1504(%GPR30),%GPR2	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,-1492(%GPR30)	
	nop	;;34,38
	nop	;;34,38
	nop	;;34,38
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR2,%GPR1	
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$32	
	nop	;;39,42
	nop	;;39,42
	nop	;;39,42
	sw	-1492(%GPR30),%GPR1	
	add	%GPR2,%GPR3,%GPR2	
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$16	
	nop	;;44,47
	nop	;;44,47
	nop	;;44,47
	sw	-1476(%GPR30),%GPR2	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,-1504(%GPR30)	
	nop	;;48,52
	nop	;;48,52
	nop	;;48,52
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR2,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_main_72	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_main_77	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_main_77:
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


	lhi	%GPR2, $0x100
	nop
	nop
	nop
	sw	0(%GPR2), %GPR1

	lw	%GPR1,-1472(%GPR30)	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,-1468(%GPR30)	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	Hadamard_4x4_IntraLuma	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 5 NOPs removed by reduceNOPs.sh


	lhi	%GPR1,$0x100
	nop
	nop
	nop
	lw	%GPR1, 0(%GPR1)
	nop
	nop
	nop

	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR3,-1488(%GPR30)	
	nop	;;10,12
	nop	;;10,12
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR4,-1492(%GPR30)	
	nop	;;12,14
	nop	;;12,14
	add	%GPR1,%GPR3,%GPR1	
	subi	%GPR2,%GPR30,$20	
	nop	;;15,17
	nop	;;15,17
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$256	
	sw	-1488(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$16	
	nop	;;19,23
	nop	;;19,23
	nop	;;19,23
	; Automatically 1 NOPs removed by reduceNOPs.sh
	div	%GPR1,%GPR4,%GPR1	
	nop	;;23,27
	nop	;;23,27
	nop	;;23,27
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-1492(%GPR30),%GPR1	
	nop	; Automatically added by findLoadStoreProblem.sh
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,-1496(%GPR30)	
	nop	;;28,32
	nop	;;28,32
	nop	;;28,32
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	div	%GPR1,%GPR1,%GPR3	
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
	lhi	%GPR1,$( L_main_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_main_1	%0x10000)
	nop	;;36,41
	nop	;;36,41
	nop	;;36,41
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
	lw	%GPR1,-1492(%GPR30)	
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
	lhi	%GPR1,$( L_main_2	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_main_2	%0x10000)
	nop	;;47,52
	nop	;;47,52
	nop	;;47,52
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
	lw	%GPR1,-1488(%GPR30)	
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
	lhi	%GPR1,$( L_main_3	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_main_3	%0x10000)
	nop	;;58,63
	nop	;;58,63
	nop	;;58,63
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
	lw	%GPR28,-1468(%GPR30)	
	nop	;;64,72
	nop	;;64,72
	nop	;;64,72
	; Automatically 5 NOPs removed by reduceNOPs.sh
	j	L_main_78	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_main_78:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	nop
	jr	%GPR31	
	nop
	nop
	nop
	nop
exit:
	nop
	nop
