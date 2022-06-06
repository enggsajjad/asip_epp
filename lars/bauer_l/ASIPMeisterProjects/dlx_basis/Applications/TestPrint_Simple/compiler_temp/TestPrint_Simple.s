	.section	.data
	.align	4
L_lib_lcd_320_1:
	.data.32	1
L_lib_lcd_320_2:
	.data.8	48
	.data.8	120
	.space	1
	.section	.text
	.addressing	Word
t_printInt:
L_lib_lcd_320_3:
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
				; Automatically 45 NOPs removed by reduceNOPs.sh
	subi	%GPR2,%GPR30,$20	
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
	j	L_lib_lcd_320_4	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_320_4:
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
				; Automatically 20 NOPs removed by reduceNOPs.sh
t_printHex:
L_lib_lcd_320_5:
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
	subi	%GPR29,%GPR29,$20	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR2,%GPR0	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	subi	%GPR2,%GPR30,$12	
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
	jal	intToHexStr	
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
	lhi	%GPR1,$( L_lib_lcd_320_2	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L_lib_lcd_320_2	%0x10000)
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
	j	L_lib_lcd_320_6	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_320_6:
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
				; Automatically 20 NOPs removed by reduceNOPs.sh
checkbuffer:
L_lib_lcd_320_7:
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
	sw	-4(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR4,-4(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR2,-4(%GPR30)	
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
	sw	0(%GPR4), %GPR3

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
	sw	0(%GPR2), %GPR1

	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lw	%GPR2,-4(%GPR30)	
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
	ori	%GPR3,%GPR3,$18	


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
				; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR2,-4(%GPR30)	
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
	sw	0(%GPR2), %GPR3

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
	lw	%GPR2,-4(%GPR30)	
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
	ori	%GPR3,%GPR3,$73	


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
	add	%GPR4,%GPR4,%GPR3	
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
	sw	0(%GPR2), %GPR4

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
L_lib_lcd_320_8:
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
	addi	%GPR3,%GPR1,$1	
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
	sw	0(%GPR2), %GPR3

	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lw	%GPR2,-4(%GPR30)	
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
	ori	%GPR3,%GPR3,$6	


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
	lw	%GPR2,-4(%GPR30)	


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
				; Automatically 11 NOPs removed by reduceNOPs.sh

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
	lw	%GPR3,0(%GPR2)
	nop
	nop
	nop
	nop
				; Automatically 11 NOPs removed by reduceNOPs.sh

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
	lw	%GPR2,0(%GPR2)
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
	lw	%GPR5,-4(%GPR30)	


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
	lw	%GPR3,-4(%GPR30)	


	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR3,0(%GPR3)
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
	lw	%GPR5,-4(%GPR30)	


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
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$256	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	MOD	%GPR4,%GPR4,%GPR5	
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
	bnez	%GPR27,L_lib_lcd_320_9	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_320_10	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_320_9:
	nop
	nop
	nop
	nop
	lw	%GPR4,-4(%GPR30)	
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
	ori	%GPR3,%GPR3,$4	


	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4), %GPR3

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
	sw	0(%GPR3), %GPR1

	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lw	%GPR4,-4(%GPR30)	
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
	ori	%GPR3,%GPR3,$18	


	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4), %GPR3

	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR5,-4(%GPR30)	
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
	lw	%GPR5,-4(%GPR30)	
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
	lw	%GPR5,-4(%GPR30)	


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
L_lib_lcd_320_10:
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
	bnez	%GPR27,L_lib_lcd_320_8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_320_11	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_320_11:
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
	j	L_lib_lcd_320_12	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_320_12:
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
				; Automatically 20 NOPs removed by reduceNOPs.sh
getbytes:
L_lib_lcd_320_13:
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
	sw	-16(%GPR30),%GPR1	
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
	sw	-20(%GPR30),%GPR1	


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
	sw	-4(%GPR30),%GPR1	
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
	lw	%GPR2,-4(%GPR30)	
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
				; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1), %GPR2

	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
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
	ori	%GPR2,%GPR2,$18	


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
				; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-4(%GPR30)	
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
	ori	%GPR2,%GPR2,$1	
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
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$18	
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
	lw	%GPR2,-24(%GPR30)	


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
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$83	
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
	add	%GPR3,%GPR2,%GPR0	
	nop
	nop
	nop
	nop
	lw	%GPR1,-4(%GPR30)	


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
	lw	%GPR2,-28(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR1,-4(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR2,%GPR3	


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
L_lib_lcd_320_14:
	nop
	nop
	nop
	nop
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
				; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1), %GPR2

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
				; Automatically 15 NOPs removed by reduceNOPs.sh
	addi	%GPR2,%GPR2,$1	


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
	lw	%GPR2,-12(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR1,-4(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	addi	%GPR2,%GPR2,$4	


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
	lw	%GPR1,-4(%GPR30)	


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
	lw	%GPR1,-4(%GPR30)	


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
	lw	%GPR1,-4(%GPR30)	


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
L_lib_lcd_320_15:
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
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_lib_lcd_320_16	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_320_17	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_320_16:
	nop
	nop
	nop
	nop
	lw	%GPR1,-4(%GPR30)	


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
	lw	%GPR2,-20(%GPR30)	
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
	lw	%GPR1,-20(%GPR30)	
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
	sw	-20(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	j	L_lib_lcd_320_15	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
L_lib_lcd_320_17:
	nop
	nop
	nop
	nop
	lw	%GPR1,-4(%GPR30)	


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
	bnez	%GPR27,L_lib_lcd_320_18	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_320_19	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_320_18:
	nop
	nop
	nop
	nop
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
	ori	%GPR2,%GPR2,$4	


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
				; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1), %GPR2

	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
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
	ori	%GPR2,%GPR2,$18	


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
				; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-4(%GPR30)	
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
	ori	%GPR2,%GPR2,$1	
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
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$18	
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
	lw	%GPR2,-24(%GPR30)	


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
				; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	-28(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	add	%GPR3,%GPR2,%GPR0	
	nop
	nop
	nop
	nop
	lw	%GPR1,-4(%GPR30)	


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
	lw	%GPR2,-28(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR1,-4(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR2,%GPR3	
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
				; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1), %GPR2

	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
L_lib_lcd_320_19:
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
	bnez	%GPR27,L_lib_lcd_320_14	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_320_20	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_320_20:
	nop
	nop
	nop
	nop
	lw	%GPR28,-20(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_320_21	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_320_21:
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
				; Automatically 20 NOPs removed by reduceNOPs.sh
sendcommand:
L_lib_lcd_320_22:
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
	subi	%GPR29,%GPR29,$44	
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
	sw	-16(%GPR30),%GPR5	
	nop
	nop
	nop
	nop
	sw	-20(%GPR30),%GPR6	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	-24(%GPR30),%GPR3	
	nop
	nop
	nop
	nop
	sw	-28(%GPR30),%GPR4	


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
	sw	-4(%GPR30),%GPR1	
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
	lw	%GPR1,-4(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
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
L_lib_lcd_320_23:
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
	lw	%GPR5,-4(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR2,%GPR0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR3,%GPR4	
	nop
	nop
	nop
	nop
	lw	%GPR4,-36(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR3,%GPR4	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR4,%GPR3,$3	


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
	lw	%GPR3,-4(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR4,-32(%GPR30)	


	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3), %GPR4

	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lw	%GPR3,-4(%GPR30)	
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
	ori	%GPR4,%GPR4,$17	


	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3), %GPR4

	nop
	nop
	nop
	nop
	lw	%GPR4,-20(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR3,-16(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lw	%GPR5,-4(%GPR30)	
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
	lw	%GPR4,-36(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR4,%GPR3,%GPR4	
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
				; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR5), %GPR4

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
	lw	%GPR5,-4(%GPR30)	
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
	ori	%GPR4,%GPR4,$27	


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
	add	%GPR3,%GPR3,%GPR4	
	nop
	nop
	nop
	nop
	lw	%GPR5,-4(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR4,-8(%GPR30)	


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
	add	%GPR3,%GPR3,%GPR4	
	nop
	nop
	nop
	nop
	lw	%GPR5,-4(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR4,-12(%GPR30)	


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
	add	%GPR3,%GPR3,%GPR4	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
L_lib_lcd_320_24:
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR1,%GPR0	
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
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR4,%GPR5	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_lib_lcd_320_25	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_320_26	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_320_25:
	nop
	nop
	nop
	nop
	lw	%GPR4,-24(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lw	%GPR5,-4(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR7,%GPR4,%GPR0	
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
	lw	%GPR4,0(%GPR4)	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	add	%GPR6,%GPR7,%GPR6	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-24(%GPR30),%GPR6	


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
	add	%GPR3,%GPR3,%GPR4	
	nop
	nop
	nop
	nop
	j	L_lib_lcd_320_24	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
L_lib_lcd_320_26:
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR2,%GPR0	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR2,$1	
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
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR4,%GPR1	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_lib_lcd_320_27	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_320_28	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_320_27:
	nop
	nop
	nop
	nop
	lw	%GPR1,-28(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lw	%GPR5,-4(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR6,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	lb	%GPR4,0(%GPR1)	
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
	ori	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR6,%GPR1	
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
	sw	0(%GPR5), %GPR4

	nop
	nop
	nop
	nop
	add	%GPR3,%GPR3,%GPR4	
	nop
	nop
	nop
	nop
	j	L_lib_lcd_320_26	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
L_lib_lcd_320_28:
	nop
	nop
	nop
	nop
	lw	%GPR1,-4(%GPR30)	


	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1), %GPR3

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
	bnez	%GPR27,L_lib_lcd_320_23	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_320_29	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_320_29:
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
	j	L_lib_lcd_320_30	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_320_30:
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
				; Automatically 20 NOPs removed by reduceNOPs.sh
t_print:
L_lib_lcd_320_31:
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
	jal	strlen	
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
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$10000	
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
	j	L_lib_lcd_320_32	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_320_32:
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
				; Automatically 20 NOPs removed by reduceNOPs.sh
t_cursor:
L_lib_lcd_320_33:
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
	j	L_lib_lcd_320_34	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_320_34:
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
				; Automatically 20 NOPs removed by reduceNOPs.sh
t_enable:
L_lib_lcd_320_35:
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
	bnez	%GPR27,L_lib_lcd_320_36	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_320_37	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_320_36:
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
	j	L_lib_lcd_320_38	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
L_lib_lcd_320_37:
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
L_lib_lcd_320_38:
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
	j	L_lib_lcd_320_39	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_320_39:
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
				; Automatically 20 NOPs removed by reduceNOPs.sh
g_print:
L_lib_lcd_320_40:
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
	jal	strlen	
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
	j	L_lib_lcd_320_41	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_320_41:
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
				; Automatically 20 NOPs removed by reduceNOPs.sh
g_drawrect:
L_lib_lcd_320_42:
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
	j	L_lib_lcd_320_43	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_320_43:
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
				; Automatically 20 NOPs removed by reduceNOPs.sh
g_drawline:
L_lib_lcd_320_44:
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
	j	L_lib_lcd_320_45	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_320_45:
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
				; Automatically 20 NOPs removed by reduceNOPs.sh
g_makebar:
L_lib_lcd_320_46:
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
	lhi	%GPR7,$( L_lib_lcd_320_1	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$( L_lib_lcd_320_1	%0x10000)
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
	bnez	%GPR27,L_lib_lcd_320_47	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_320_50	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_320_47:
	nop
	nop
	nop
	nop
	lhi	%GPR7,$( L_lib_lcd_320_1	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$( L_lib_lcd_320_1	%0x10000)
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
	bnez	%GPR27,L_lib_lcd_320_48	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_320_49	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_320_48:
	nop
	nop
	nop
	nop
	lhi	%GPR1,$( L_lib_lcd_320_1	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L_lib_lcd_320_1	%0x10000)
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
L_lib_lcd_320_49:
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L_lib_lcd_320_1	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L_lib_lcd_320_1	%0x10000)
	nop
	nop
	nop
	nop
	lhi	%GPR2,$( L_lib_lcd_320_1	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$( L_lib_lcd_320_1	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$( L_lib_lcd_320_1	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$( L_lib_lcd_320_1	%0x10000)
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
	lhi	%GPR1,$( L_lib_lcd_320_1	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L_lib_lcd_320_1	%0x10000)
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
	j	L_lib_lcd_320_51	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_320_50:
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
	j	L_lib_lcd_320_51	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_320_51:
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
				; Automatically 20 NOPs removed by reduceNOPs.sh
g_setbar:
L_lib_lcd_320_52:
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
	j	L_lib_lcd_320_53	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_320_53:
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
				; Automatically 20 NOPs removed by reduceNOPs.sh
g_makeswitch:
L_lib_lcd_320_54:
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
	jal	strlen	
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
	j	L_lib_lcd_320_55	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_320_55:
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
				; Automatically 20 NOPs removed by reduceNOPs.sh
g_makemenubutton:
L_lib_lcd_320_56:
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
	jal	strlen	
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
	bnez	%GPR27,L_lib_lcd_320_57	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_320_58	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_320_57:
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
L_lib_lcd_320_58:
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
	j	L_lib_lcd_320_59	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_320_59:
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
				; Automatically 20 NOPs removed by reduceNOPs.sh
g_makeradiogroup:
L_lib_lcd_320_60:
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
	j	L_lib_lcd_320_61	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_320_61:
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
				; Automatically 20 NOPs removed by reduceNOPs.sh
d_clear:
L_lib_lcd_320_62:
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
	j	L_lib_lcd_320_63	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_320_63:
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
				; Automatically 20 NOPs removed by reduceNOPs.sh
wait:
L_lib_lcd_320_64:
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
L_lib_lcd_320_65:
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
	bnez	%GPR27,L_lib_lcd_320_65	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_320_66	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_320_66:
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
	j	L_lib_lcd_320_67	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_320_67:
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
				; Automatically 20 NOPs removed by reduceNOPs.sh
getack:
L_lib_lcd_320_68:
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
	sw	-4(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR3,-4(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR2,-4(%GPR30)	
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
	sw	0(%GPR3), %GPR4

	nop
	nop
	nop
	nop
	addi	%GPR1,%GPR1,$1	
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
	sw	0(%GPR2), %GPR1

	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
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
	ori	%GPR2,%GPR2,$1	


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
	lw	%GPR1,-4(%GPR30)	


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
	bnez	%GPR27,L_lib_lcd_320_69	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_lib_lcd_320_70	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_320_69:
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
	j	L_lib_lcd_320_71	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_320_70:
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
	j	L_lib_lcd_320_71	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_lib_lcd_320_71:
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
	.section	.data
	;.global	_temp
	.align	4
_temp:
	.space	4
	.section	.text
	.addressing	Word
storeByte:
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
	jr	%GPR31	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
storeShort:
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
	add	%GPR3,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
				; Automatically 25 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$( _temp	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$( _temp	%0x10000)
	nop
	nop
	nop
	nop
	andi	%GPR5,%GPR3,$2	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
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
	lhi	%GPR6,$( _temp	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$( _temp	%0x10000)
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
	andi	%GPR3,%GPR3,$1	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR28,0(%GPR1)	
	nop
	nop
	nop
	nop
	sw	0(%GPR4),%GPR5	
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
				; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR4,0(%GPR6)	
	nop
	nop
	nop
	nop
	sub	%GPR3,%GPR5,%GPR3	
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
	ori	%GPR6,%GPR6,$65535	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	srai	%GPR4,%GPR4,$1	
	nop
	nop
	nop
	nop
	slli	%GPR3,%GPR3,$4	
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
	sll	%GPR3,%GPR6,%GPR3	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	slli	%GPR4,%GPR4,$4	
	nop
	nop
	nop
	nop
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
				; Automatically 15 NOPs removed by reduceNOPs.sh
	sra	%GPR2,%GPR2,%GPR4	
	nop
	nop
	nop
	nop
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
	jr	%GPR31	
	nop
	nop
	nop
	nop
	.section	.data
L_main_1:
	.data.8	72
	.data.8	97
	.data.8	108
	.data.8	108
	.data.8	111
	.data.8	32
	.data.8	87
	.data.8	101
	.data.8	108
	.data.8	116
	.data.8	33
	.data.8	13
	.data.8	10
	.space	1
L_main_2:
	.data.8	69
	.data.8	105
	.data.8	110
	.data.8	101
	.data.8	32
	.data.8	90
	.data.8	97
	.data.8	104
	.data.8	108
	.data.8	58
	.data.8	32
	.space	1
L_main_3:
	.data.8	32
	.data.8	61
	.data.8	32
	.space	1
L_main_4:
	.data.8	13
	.data.8	10
	.space	1
	.section	.text
	.addressing	Word
main:
L_main_5:
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
				; Automatically 35 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L_main_1	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L_main_1	%0x10000)
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
	lhi	%GPR1,$( L_main_2	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L_main_2	%0x10000)
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
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$42	
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
	jal	t_printInt	
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
	lhi	%GPR1,$( L_main_3	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L_main_3	%0x10000)
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
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$42	
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
	jal	t_printHex	
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
	lhi	%GPR1,$( L_main_4	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L_main_4	%0x10000)
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
	j	L_main_6	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_main_6:
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
	.section	.data
	.section	.text
	.addressing	Word
	nop
	nop
	nop
	nop
intToStr:
L_string_1:
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
	bnez	%GPR27,L_string_2	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_string_3	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_2:
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
	j	L_string_5	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
L_string_3:
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
	bnez	%GPR27,L_string_4	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_string_6	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_4:
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
L_string_5:
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
	bnez	%GPR27,L_string_6	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_string_7	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_6:
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
	j	L_string_5	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
L_string_7:
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
	bnez	%GPR27,L_string_8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_string_9	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_8:
	nop
	nop
	nop
	nop
	lw	%GPR1,-48(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR3,-44(%GPR30)	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$32	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR1,%GPR1,$1	
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
	lw	%GPR1,-40(%GPR30)	
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
	lw	%GPR3,-48(%GPR30)	
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
	lb	%GPR2,0(%GPR2)	
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
	j	L_string_7	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
L_string_9:
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
	j	L_string_10	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_10:
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
				; Automatically 20 NOPs removed by reduceNOPs.sh
intToHexStr:
L_string_11:
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
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	sw	-20(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	sw	-24(%GPR30),%GPR3	
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
	ori	%GPR1,%GPR1,$0	
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
L_string_12:
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
	bnez	%GPR27,L_string_13	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_string_20	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_13:
	nop
	nop
	nop
	nop
	lw	%GPR2,-24(%GPR30)	
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
	bnez	%GPR27,L_string_15	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_string_14	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_14:
	nop
	nop
	nop
	nop
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
	sge	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_string_15	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_string_19	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_15:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
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
L_string_16:
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
	subi	%GPR1,%GPR1,$1	
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
	sw	-32(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
L_string_17:
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
	sge	%GPR27,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_string_18	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_string_24	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_18:
	nop
	nop
	nop
	nop
	lw	%GPR1,-20(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR3,-32(%GPR30)	
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
	add	%GPR1,%GPR1,%GPR3	
	nop
	nop
	nop
	nop
	lw	%GPR3,-28(%GPR30)	
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
	lb	%GPR2,0(%GPR2)	
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
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR1,%GPR1,$1	
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
	lw	%GPR1,-32(%GPR30)	
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
	sw	-32(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	j	L_string_17	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
L_string_19:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
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
L_string_20:
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
	andi	%GPR1,%GPR1,$15	
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
	ori	%GPR3,%GPR3,$10	
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
				; Automatically 15 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR1,%GPR3	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_string_21	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_string_22	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_21:
	nop
	nop
	nop
	nop
	addi	%GPR2,%GPR1,$48	
	nop
	nop
	nop
	nop
	lw	%GPR1,-28(%GPR30)	
	nop
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$12	
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
				; Automatically 45 NOPs removed by reduceNOPs.sh
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
	j	L_string_23	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
L_string_22:
	nop
	nop
	nop
	nop
	addi	%GPR2,%GPR1,$55	
	nop
	nop
	nop
	nop
	lw	%GPR1,-28(%GPR30)	
	nop
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$12	
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
				; Automatically 45 NOPs removed by reduceNOPs.sh
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
				; Automatically 35 NOPs removed by reduceNOPs.sh
L_string_23:
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
	srai	%GPR1,%GPR1,$4	
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
	lw	%GPR1,-28(%GPR30)	
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
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
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
	ori	%GPR1,%GPR1,$8	
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
	bnez	%GPR27,L_string_12	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_string_16	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_24:
	nop
	nop
	nop
	nop
	lw	%GPR1,-20(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR2,-32(%GPR30)	
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
	j	L_string_25	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_25:
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
				; Automatically 20 NOPs removed by reduceNOPs.sh
strlen:
L_string_26:
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
				; Automatically 15 NOPs removed by reduceNOPs.sh
L_string_27:
	nop
	nop
	nop
	nop
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lb	%GPR2,0(%GPR2)	
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
	add	%GPR1,%GPR1,%GPR3	
	nop
	nop
	nop
	nop
	sne	%GPR27,%GPR2,%GPR4	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_string_28	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_string_29	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_28:
	nop
	nop
	nop
	nop
	addi	%GPR28,%GPR28,$1	
	nop
	nop
	nop
	nop
	j	L_string_27	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
L_string_29:
	nop
	nop
	nop
	nop
	j	L_string_30	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_30:
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
				; Automatically 20 NOPs removed by reduceNOPs.sh
strcat:
L_string_31:
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
	subi	%GPR29,%GPR29,$20	
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
				; Automatically 15 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	lb	%GPR1,0(%GPR1)	
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
	add	%GPR1,%GPR2,%GPR1	
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
				; Automatically 15 NOPs removed by reduceNOPs.sh
L_string_32:
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
	bnez	%GPR27,L_string_33	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_string_34	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_33:
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
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	lb	%GPR1,0(%GPR1)	
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
	add	%GPR1,%GPR2,%GPR1	
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
	j	L_string_32	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
L_string_34:
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
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	lb	%GPR1,0(%GPR1)	
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
	add	%GPR1,%GPR2,%GPR1	
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
				; Automatically 15 NOPs removed by reduceNOPs.sh
L_string_35:
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
	bnez	%GPR27,L_string_36	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_string_37	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_36:
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
	sw	-12(%GPR30),%GPR2	
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
	lw	%GPR1,-4(%GPR30)	
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
	add	%GPR1,%GPR28,%GPR0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
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
	add	%GPR1,%GPR2,%GPR1	
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
	j	L_string_35	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
L_string_37:
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
				; Automatically 35 NOPs removed by reduceNOPs.sh
L_string_38:
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
				; Automatically 20 NOPs removed by reduceNOPs.sh
strncat:
L_string_39:
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
				; Automatically 25 NOPs removed by reduceNOPs.sh
	lb	%GPR1,0(%GPR1)	
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
	sw	-16(%GPR30),%GPR1	
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
	ori	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	sw	-20(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	lw	%GPR2,-4(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR2,%GPR1	
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
				; Automatically 15 NOPs removed by reduceNOPs.sh
L_string_40:
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
	bnez	%GPR27,L_string_41	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_string_42	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_41:
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
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	lb	%GPR1,0(%GPR1)	
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
	add	%GPR1,%GPR2,%GPR1	
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
	j	L_string_40	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
L_string_42:
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
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	lb	%GPR1,0(%GPR1)	
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
	add	%GPR1,%GPR2,%GPR1	
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
L_string_43:
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
	bnez	%GPR27,L_string_44	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_string_46	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_44:
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
				; Automatically 15 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
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
	slt	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_string_45	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_string_46	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_45:
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-4(%GPR30)	
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
	lw	%GPR3,-4(%GPR30)	
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
	lw	%GPR2,-16(%GPR30)	
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
	lw	%GPR1,-8(%GPR30)	
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
	add	%GPR1,%GPR28,%GPR0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
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
	add	%GPR1,%GPR2,%GPR1	
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
	j	L_string_43	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
L_string_46:
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-4(%GPR30)	
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
	lw	%GPR28,-4(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_string_47	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_47:
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
				; Automatically 20 NOPs removed by reduceNOPs.sh
strcpy:
L_string_48:
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
	subi	%GPR29,%GPR29,$20	
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
	add	%GPR1,%GPR2,%GPR0	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	lb	%GPR1,0(%GPR1)	
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
	add	%GPR1,%GPR2,%GPR1	
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
				; Automatically 15 NOPs removed by reduceNOPs.sh
L_string_49:
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
	bnez	%GPR27,L_string_50	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_string_51	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_50:
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
	lw	%GPR2,-8(%GPR30)	
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
	lw	%GPR1,-12(%GPR30)	
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
	add	%GPR1,%GPR28,%GPR0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
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
	add	%GPR1,%GPR2,%GPR1	
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
	j	L_string_49	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
L_string_51:
	nop
	nop
	nop
	nop
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
	lw	%GPR28,-4(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_string_52	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_52:
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
				; Automatically 20 NOPs removed by reduceNOPs.sh
strncpy:
L_string_53:
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
	add	%GPR1,%GPR2,%GPR0	
	nop
	nop
	nop
	nop
				; Automatically 25 NOPs removed by reduceNOPs.sh
	lb	%GPR1,0(%GPR1)	
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
	sw	-16(%GPR30),%GPR1	
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
	ori	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	sw	-20(%GPR30),%GPR2	
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
	add	%GPR1,%GPR2,%GPR1	
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
L_string_54:
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
	bnez	%GPR27,L_string_55	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_string_57	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_55:
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
				; Automatically 15 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
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
	slt	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_string_56	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_string_57	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_56:
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-4(%GPR30)	
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
	lw	%GPR3,-4(%GPR30)	
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
	lw	%GPR2,-16(%GPR30)	
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
	lw	%GPR1,-8(%GPR30)	
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
	add	%GPR1,%GPR28,%GPR0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
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
	add	%GPR1,%GPR2,%GPR1	
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
	j	L_string_54	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
L_string_57:
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-4(%GPR30)	
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
	lw	%GPR28,-4(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_string_58	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_58:
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
				; Automatically 20 NOPs removed by reduceNOPs.sh
strcmp:
L_string_59:
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
				; Automatically 45 NOPs removed by reduceNOPs.sh
	add	%GPR4,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lb	%GPR3,0(%GPR4)	
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR2,%GPR0	
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
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$1	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lb	%GPR4,0(%GPR4)	
	nop
	nop
	nop
	nop
	add	%GPR2,%GPR2,%GPR5	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR1,%GPR6	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
L_string_60:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
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
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR3,%GPR5	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_string_61	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_string_64	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_61:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
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
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR4,%GPR5	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_string_62	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_string_64	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_62:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
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
	slt	%GPR27,%GPR3,%GPR4	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_string_63	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_string_66	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_63:
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
	j	L_string_72	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_64:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
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
				; Automatically 15 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR3,%GPR1	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_string_65	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_string_69	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_65:
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
	j	L_string_72	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_66:
	nop
	nop
	nop
	nop
	sgt	%GPR27,%GPR3,%GPR4	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_string_67	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_string_68	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_67:
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
	j	L_string_72	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_68:
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lb	%GPR3,0(%GPR4)	
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR2,%GPR0	
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
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$1	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lb	%GPR4,0(%GPR4)	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR1,%GPR5	
	nop
	nop
	nop
	nop
	add	%GPR2,%GPR2,%GPR6	
	nop
	nop
	nop
	nop
	j	L_string_60	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
L_string_69:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
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
	sne	%GPR27,%GPR4,%GPR1	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_string_70	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_string_71	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_70:
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
	j	L_string_72	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_71:
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
	j	L_string_72	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_72:
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
				; Automatically 20 NOPs removed by reduceNOPs.sh
strncmp:
L_string_73:
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
	add	%GPR4,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	lb	%GPR1,0(%GPR4)	
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR2,%GPR0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lb	%GPR2,0(%GPR4)	
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
L_string_74:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
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
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR1,%GPR5	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_string_75	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_string_79	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_75:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
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
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR2,%GPR5	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_string_76	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_string_79	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_76:
	nop
	nop
	nop
	nop
	addi	%GPR4,%GPR4,$1	
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
	ori	%GPR5,%GPR5,$1	
	nop
	nop
	nop
	nop
	slt	%GPR27,%GPR4,%GPR3	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_string_77	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_string_80	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_77:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
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
	slt	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_string_78	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_string_82	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_78:
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
	j	L_string_89	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_79:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
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
				; Automatically 15 NOPs removed by reduceNOPs.sh
L_string_80:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
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
	seq	%GPR27,%GPR4,%GPR3	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_string_81	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_string_84	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_81:
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
	j	L_string_89	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_82:
	nop
	nop
	nop
	nop
	sgt	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_string_83	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_string_74	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_83:
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
	j	L_string_89	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_84:
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
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR1,%GPR3	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_string_85	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_string_86	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_85:
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
	j	L_string_89	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_86:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
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
	bnez	%GPR27,L_string_87	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_string_88	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_87:
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
	j	L_string_89	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_88:
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
	j	L_string_89	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_89:
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
				; Automatically 20 NOPs removed by reduceNOPs.sh
tolower:
L_string_90:
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
	ori	%GPR2,%GPR2,$65	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sge	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_string_91	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_string_93	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_91:
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
	ori	%GPR2,%GPR2,$90	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sle	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_string_92	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_string_93	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_92:
	nop
	nop
	nop
	nop
	addi	%GPR28,%GPR1,$32	
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
	ori	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	nop
	j	L_string_94	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_93:
	nop
	nop
	nop
	nop
	add	%GPR28,%GPR1,%GPR0	
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
	j	L_string_94	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_94:
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
				; Automatically 20 NOPs removed by reduceNOPs.sh
toupper:
L_string_95:
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
	ori	%GPR2,%GPR2,$97	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sge	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_string_96	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_string_98	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_96:
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
	ori	%GPR2,%GPR2,$122	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sle	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_string_97	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_string_98	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_97:
	nop
	nop
	nop
	nop
	addi	%GPR28,%GPR1,$-32	
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
	ori	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	nop
	j	L_string_99	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_98:
	nop
	nop
	nop
	nop
	add	%GPR28,%GPR1,%GPR0	
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
	j	L_string_99	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_99:
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
				; Automatically 20 NOPs removed by reduceNOPs.sh
isdigit:
L_string_100:
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
	ori	%GPR2,%GPR2,$48	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sge	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_string_101	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_string_103	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_101:
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
	ori	%GPR2,%GPR2,$57	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sle	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L_string_102	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_string_103	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_102:
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
	j	L_string_104	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_103:
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
	j	L_string_104	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L_string_104:
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
