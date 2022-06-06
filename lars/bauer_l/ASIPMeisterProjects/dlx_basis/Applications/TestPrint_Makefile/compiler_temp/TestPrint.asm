	.section	.data
	.align	4
L_lib_lcd_1:
	.data.32	1
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
	; Automatically 5 NOPs removed by reduceNOPs.sh
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
	; Automatically 10 NOPs removed by reduceNOPs.sh
	nop
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
	; Automatically 5 NOPs removed by reduceNOPs.sh
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
	; Automatically 10 NOPs removed by reduceNOPs.sh
	nop
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
	; Automatically 5 NOPs removed by reduceNOPs.sh
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
	; Automatically 21 NOPs removed by reduceNOPs.sh


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
	; Automatically 21 NOPs removed by reduceNOPs.sh


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
	; Automatically 21 NOPs removed by reduceNOPs.sh


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
	add	%GPR2,%GPR2,%GPR3	
	nop
	nop
	nop
	nop
	sw	-44(%GPR30),%GPR4	
	nop
	nop
	nop
	nop
	lw	%GPR4,-28(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR2,%GPR0	
	nop
	nop
	nop
	nop
	; Automatically 21 NOPs removed by reduceNOPs.sh


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
	add	%GPR3,%GPR2,%GPR0	
	nop
	nop
	nop
	nop
	; Automatically 21 NOPs removed by reduceNOPs.sh


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
	lw	%GPR2,-4(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 40 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR2,%GPR0	
	nop
	nop
	nop
	nop
	; Automatically 21 NOPs removed by reduceNOPs.sh


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
	lw	%GPR2,-8(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 40 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR2,%GPR0	
	nop
	nop
	nop
	nop
	; Automatically 21 NOPs removed by reduceNOPs.sh


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
	add	%GPR5,%GPR2,%GPR0	
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
	lw	%GPR2,0(%GPR2)	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	add	%GPR4,%GPR5,%GPR4	
	nop
	nop
	nop
	nop
	add	%GPR3,%GPR2,%GPR0	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	-20(%GPR30),%GPR4	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lw	%GPR4,-28(%GPR30)	


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
	add	%GPR2,%GPR28,%GPR0	
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
	add	%GPR1,%GPR2,%GPR0	
	nop
	nop
	nop
	nop
	; Automatically 21 NOPs removed by reduceNOPs.sh


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
	lw	%GPR2,-44(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR1,-28(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh


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
	; Automatically 10 NOPs removed by reduceNOPs.sh
	nop
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
	; Automatically 5 NOPs removed by reduceNOPs.sh
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
	; Automatically 10 NOPs removed by reduceNOPs.sh
	nop
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
	; Automatically 5 NOPs removed by reduceNOPs.sh
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
	; Automatically 10 NOPs removed by reduceNOPs.sh
	nop
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
	; Automatically 5 NOPs removed by reduceNOPs.sh
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
	; Automatically 10 NOPs removed by reduceNOPs.sh
	nop
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
	; Automatically 5 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$20	
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
	; Automatically 25 NOPs removed by reduceNOPs.sh
	sw	-8(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$8	
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
	; Automatically 20 NOPs removed by reduceNOPs.sh
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
	lw	%GPR1,-12(%GPR30)	
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
	lw	%GPR4,-12(%GPR30)	
	nop
	nop
	nop
	nop
	addi	%GPR6,%GPR28,$1	
	nop
	nop
	nop
	nop
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
	; Automatically 10 NOPs removed by reduceNOPs.sh
	nop
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
	; Automatically 5 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$24	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR8,%GPR4,%GPR0	
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR3,%GPR0	
	nop
	nop
	nop
	nop
	; Automatically 25 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$16	
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
	subi	%GPR5,%GPR30,$16	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
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
	add	%GPR1,%GPR3,%GPR1	
	nop
	nop
	nop
	nop
	subi	%GPR9,%GPR30,$16	
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
	ori	%GPR10,%GPR10,$12	
	nop
	nop
	nop
	nop
	add	%GPR11,%GPR5,%GPR6	
	nop
	nop
	nop
	nop
	sw	0(%GPR1),%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	0(%GPR11),%GPR4	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	add	%GPR9,%GPR9,%GPR10	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
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
	sw	0(%GPR9),%GPR8	
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
	; Automatically 10 NOPs removed by reduceNOPs.sh
	nop
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
	; Automatically 5 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$24	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR8,%GPR4,%GPR0	
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR3,%GPR0	
	nop
	nop
	nop
	nop
	; Automatically 25 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$16	
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
	subi	%GPR5,%GPR30,$16	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
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
	add	%GPR1,%GPR3,%GPR1	
	nop
	nop
	nop
	nop
	subi	%GPR9,%GPR30,$16	
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
	ori	%GPR10,%GPR10,$12	
	nop
	nop
	nop
	nop
	add	%GPR11,%GPR5,%GPR6	
	nop
	nop
	nop
	nop
	sw	0(%GPR1),%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	0(%GPR11),%GPR4	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	add	%GPR9,%GPR9,%GPR10	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
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
	sw	0(%GPR9),%GPR8	
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
	; Automatically 10 NOPs removed by reduceNOPs.sh
	nop
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
	; Automatically 5 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$52	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-40(%GPR30),%GPR7	
	nop
	nop
	nop
	nop
	sw	-44(%GPR30),%GPR10	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lhi	%GPR7,$( L_lib_lcd_1	/0x10000)
	nop
	nop
	nop
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
	ori	%GPR7,%GPR7,$( L_lib_lcd_1	%0x10000)
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR10,%GPR30,$36	
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
	subi	%GPR12,%GPR30,$36	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	sw	-36(%GPR30),%GPR7	
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
	subi	%GPR11,%GPR30,$36	
	nop
	nop
	nop
	nop
	lhi	%GPR13,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR13,%GPR13,$12	
	nop
	nop
	nop
	nop
	sw	0(%GPR10),%GPR1	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR12,%GPR7	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR7,%GPR30,$36	
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
	add	%GPR1,%GPR11,%GPR13	
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
	ori	%GPR10,%GPR10,$16	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$36	
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
	ori	%GPR11,%GPR11,$20	
	nop
	nop
	nop
	nop
	sw	0(%GPR1),%GPR3	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR7,%GPR10	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$36	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR4	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR2,%GPR11	
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
	ori	%GPR7,%GPR7,$24	
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
	ori	%GPR4,%GPR4,$28	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$36	
	nop
	nop
	nop
	nop
	sw	0(%GPR1),%GPR5	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR3,%GPR7	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR4,%GPR2,%GPR4	
	nop
	nop
	nop
	nop
	subi	%GPR10,%GPR30,$36	
	nop
	nop
	nop
	nop
	sw	0(%GPR1),%GPR6	
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
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4),%GPR8	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR10,%GPR10,%GPR11	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$36	
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
	ori	%GPR5,%GPR5,$9	
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
	lw	%GPR2,-44(%GPR30)	
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
	subi	%GPR3,%GPR30,$36	
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
	sw	-36(%GPR30),%GPR8	
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
	ori	%GPR1,%GPR1,$( L_lib_lcd_1	%0x10000)
	nop
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
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$( L_lib_lcd_1	/0x10000)
	nop
	nop
	nop
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
	subi	%GPR8,%GPR30,$36	
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
	sw	-36(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lw	%GPR9,-40(%GPR30)	
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
	subi	%GPR3,%GPR30,$36	
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
	; Automatically 10 NOPs removed by reduceNOPs.sh
	nop
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
	; Automatically 5 NOPs removed by reduceNOPs.sh
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
	; Automatically 10 NOPs removed by reduceNOPs.sh
	nop
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
	; Automatically 5 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$36	
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
	; Automatically 25 NOPs removed by reduceNOPs.sh
	sw	-24(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$24	
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
	subi	%GPR8,%GPR30,$24	
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
	ori	%GPR9,%GPR9,$8	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR1,%GPR2	
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
	lhi	%GPR10,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$12	
	nop
	nop
	nop
	nop
	sw	0(%GPR1),%GPR3	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR8,%GPR9	
	nop
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$24	
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
	ori	%GPR8,%GPR8,$16	
	nop
	nop
	nop
	nop
	sw	0(%GPR1),%GPR4	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR2,%GPR10	
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
	add	%GPR3,%GPR3,%GPR8	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$24	
	nop
	nop
	nop
	nop
	sw	0(%GPR1),%GPR5	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR2,%GPR4	
	nop
	nop
	nop
	nop
	sw	0(%GPR3),%GPR6	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR7	
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
	lw	%GPR4,-28(%GPR30)	
	nop
	nop
	nop
	nop
	addi	%GPR6,%GPR28,$1	
	nop
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$24	
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
	ori	%GPR5,%GPR5,$6	
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
	; Automatically 10 NOPs removed by reduceNOPs.sh
	nop
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
	; Automatically 5 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$44	
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
	sw	-4(%GPR30),%GPR9	
	nop
	nop
	nop
	nop
	; Automatically 25 NOPs removed by reduceNOPs.sh
	sw	-32(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$32	
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
	subi	%GPR9,%GPR30,$32	
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
	ori	%GPR10,%GPR10,$8	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$32	
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
	; Automatically 10 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR3	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR9,%GPR10	
	nop
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$32	
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
	ori	%GPR9,%GPR9,$16	
	nop
	nop
	nop
	nop
	sw	0(%GPR1),%GPR4	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR2,%GPR11	
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
	sw	0(%GPR1),%GPR5	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR3,%GPR9	
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
	ori	%GPR5,%GPR5,$24	
	nop
	nop
	nop
	nop
	add	%GPR2,%GPR2,%GPR4	
	nop
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$32	
	nop
	nop
	nop
	nop
	sw	0(%GPR1),%GPR6	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR3,%GPR5	
	nop
	nop
	nop
	nop
	sw	0(%GPR2),%GPR7	
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
	lw	%GPR1,-36(%GPR30)	
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
	lw	%GPR4,-36(%GPR30)	
	nop
	nop
	nop
	nop
	addi	%GPR6,%GPR28,$1	
	nop
	nop
	nop
	nop
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
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$7	
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
	; Automatically 10 NOPs removed by reduceNOPs.sh
	nop
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
	; Automatically 5 NOPs removed by reduceNOPs.sh
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
	; Automatically 10 NOPs removed by reduceNOPs.sh
	nop
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
	; Automatically 5 NOPs removed by reduceNOPs.sh
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
	; Automatically 10 NOPs removed by reduceNOPs.sh
	nop
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
	; Automatically 5 NOPs removed by reduceNOPs.sh
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
	; Automatically 10 NOPs removed by reduceNOPs.sh
	nop
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
	; Automatically 5 NOPs removed by reduceNOPs.sh
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
	; Automatically 10 NOPs removed by reduceNOPs.sh
	nop
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
	; Automatically 5 NOPs removed by reduceNOPs.sh
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
	; Automatically 10 NOPs removed by reduceNOPs.sh
	nop
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
	; Automatically 5 NOPs removed by reduceNOPs.sh
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
	; Automatically 10 NOPs removed by reduceNOPs.sh
	nop
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
	; Automatically 5 NOPs removed by reduceNOPs.sh
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
	; Automatically 10 NOPs removed by reduceNOPs.sh
	nop
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
	; Automatically 5 NOPs removed by reduceNOPs.sh
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
	; Automatically 10 NOPs removed by reduceNOPs.sh
	nop
	nop
	jr	%GPR31	
	nop
	nop
	nop
	nop
	.section	.data
	.align	4
L_main_1:
	.data.32	1
L_main_2:
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
	.data.8	13
	.data.8	10
	.space	1
L_main_3:
	.data.8	89
	.data.8	101
	.data.8	116
	.data.8	32
	.data.8	65
	.data.8	110
	.data.8	111
	.data.8	116
	.data.8	104
	.data.8	101
	.data.8	114
	.data.8	32
	.data.8	83
	.data.8	119
	.data.8	105
	.data.8	116
	.data.8	99
	.data.8	104
	.space	1
	.section	.text
	.addressing	Word
	;.addressing	Word
redrawBarGraph:
L_main_4:
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
	; Automatically 5 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$52	
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
	sw	-44(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L_main_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_main_1	%0x10000)
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
	ori	%GPR2,%GPR2,$1	
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
	bnez	%GPR27,L_main_5	
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
L_main_5:
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
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR8,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$10	
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
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	-36(%GPR30),%GPR8	
	nop
	nop
	nop
	nop
	add	%GPR8,%GPR4,%GPR9	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
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
	; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$36	
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
	ori	%GPR1,%GPR1,$66	
	nop
	nop
	nop
	nop
	sw	0(%GPR8),%GPR10	
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
	lhi	%GPR1,$( L_main_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_main_1	%0x10000)
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
L_main_6:
	nop
	nop
	nop
	nop
	; Automatically 25 NOPs removed by reduceNOPs.sh
	subi	%GPR1,%GPR30,$36	
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
	ori	%GPR2,%GPR2,$10	
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
	subi	%GPR4,%GPR30,$36	
	nop
	nop
	nop
	nop
	sw	-36(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
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
	add	%GPR4,%GPR4,%GPR5	
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
	ori	%GPR1,%GPR1,$100	
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
	ori	%GPR2,%GPR2,$12	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4),%GPR1	
	nop
	nop
	nop
	nop
	add	%GPR2,%GPR3,%GPR2	
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
	ori	%GPR1,%GPR1,$200	
	nop
	nop
	nop
	nop
	subi	%GPR5,%GPR30,$36	
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
	ori	%GPR4,%GPR4,$16	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2),%GPR1	
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR5,%GPR4	
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
	ori	%GPR1,%GPR1,$130	
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
	ori	%GPR2,%GPR2,$20	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4),%GPR1	
	nop
	nop
	nop
	nop
	add	%GPR2,%GPR3,%GPR2	
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
	subi	%GPR5,%GPR30,$36	
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
	ori	%GPR4,%GPR4,$24	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2),%GPR1	
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR5,%GPR4	
	nop
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$36	
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
	ori	%GPR1,%GPR1,$254	
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
	ori	%GPR2,%GPR2,$28	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4),%GPR1	
	nop
	nop
	nop
	nop
	add	%GPR11,%GPR3,%GPR2	
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
	subi	%GPR8,%GPR30,$36	
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
	; Automatically 10 NOPs removed by reduceNOPs.sh
	sw	0(%GPR11),%GPR9	
	nop
	nop
	nop
	nop
	; Automatically 25 NOPs removed by reduceNOPs.sh
	add	%GPR8,%GPR8,%GPR10	
	nop
	nop
	nop
	nop
	lw	%GPR9,-44(%GPR30)	
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
	subi	%GPR3,%GPR30,$36	
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
	ori	%GPR5,%GPR5,$9	
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
	; Automatically 35 NOPs removed by reduceNOPs.sh
	subi	%GPR4,%GPR30,$36	
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
	ori	%GPR9,%GPR9,$10	
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
	; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	-36(%GPR30),%GPR9	
	nop
	nop
	nop
	nop
	add	%GPR8,%GPR4,%GPR8	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR9,-40(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$36	
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
	j	L_main_7	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_main_7:
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
	; Automatically 10 NOPs removed by reduceNOPs.sh
	nop
	nop
	jr	%GPR31	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
main:
L_main_8:
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
	; Automatically 5 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$32	
	nop
	nop
	nop
	nop
	; Automatically 35 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L_main_2	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_main_2	%0x10000)
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
	ori	%GPR3,%GPR3,$20	
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
	jal	g_drawrect	
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
	ori	%GPR1,%GPR1,$( L_main_3	%0x10000)
	nop
	nop
	nop
	nop
	; Automatically 40 NOPs removed by reduceNOPs.sh
	lhi	%GPR7,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$0	
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
	ori	%GPR5,%GPR5,$30	
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
	ori	%GPR4,%GPR4,$200	
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
	ori	%GPR2,%GPR2,$30	
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
	jal	g_makeswitch	
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
	ori	%GPR7,%GPR7,$50	
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
	ori	%GPR6,%GPR6,$254	
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
	ori	%GPR4,%GPR4,$60	
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
	ori	%GPR3,%GPR3,$200	
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
	ori	%GPR2,%GPR2,$40	
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
	; Automatically 75 NOPs removed by reduceNOPs.sh
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
	ori	%GPR7,%GPR7,$0	
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
	ori	%GPR6,%GPR6,$254	
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
	ori	%GPR4,%GPR4,$90	
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
	ori	%GPR3,%GPR3,$200	
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
	ori	%GPR2,%GPR2,$70	
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
	; Automatically 45 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$50	
	nop
	nop
	nop
	nop
	sw	-4(%GPR30),%GPR28	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
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
	ori	%GPR1,%GPR1,$10	
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
	ori	%GPR1,%GPR1,$1	
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
	sw	-20(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
L_main_9:
	nop
	nop
	nop
	nop
	lw	%GPR1,-12(%GPR30)	
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
	add	%GPR1,%GPR1,%GPR2	
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
	ori	%GPR1,%GPR1,$254	
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
	bnez	%GPR27,L_main_11	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_main_10	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_main_10:
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
	slt	%GPR27,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
	bnez	%GPR27,L_main_11	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_main_12	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_main_11:
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
	sub	%GPR1,%GPR0,%GPR1	
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
	ori	%GPR2,%GPR2,$2	
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
	lw	%GPR1,-12(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	mac	%GPR1,%GPR3,%GPR2	
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
	j	L_main_13	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
L_main_12:
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
L_main_13:
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
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
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
	sw	-20(%GPR30),%GPR1	
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
	ori	%GPR1,%GPR1,$15	
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
	bnez	%GPR27,L_main_15	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_main_14	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_main_14:
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
	ori	%GPR1,%GPR1,$2	
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
	bnez	%GPR27,L_main_15	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_main_16	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_main_15:
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
	sub	%GPR1,%GPR0,%GPR1	
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
	ori	%GPR2,%GPR2,$2	
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
	lw	%GPR1,-20(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	mac	%GPR1,%GPR3,%GPR2	
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
	j	L_main_17	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
L_main_16:
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
L_main_17:
	nop
	nop
	nop
	nop
	lw	%GPR2,-20(%GPR30)	
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
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	redrawBarGraph	
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
	sw	-24(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
L_main_18:
	nop
	nop
	nop
	nop
	lw	%GPR2,-24(%GPR30)	
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
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	g_setbar	
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
	; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$2	
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
	ori	%GPR1,%GPR1,$254	
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
	bnez	%GPR27,L_main_18	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_main_19	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_main_19:
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
	ori	%GPR1,%GPR1,$254	
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
L_main_20:
	nop
	nop
	nop
	nop
	lw	%GPR2,-24(%GPR30)	
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
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	g_setbar	
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
	; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR1,%GPR1,$2	
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
	bnez	%GPR27,L_main_20	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L_main_9	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L_main_21:
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
	; Automatically 10 NOPs removed by reduceNOPs.sh
	nop
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
