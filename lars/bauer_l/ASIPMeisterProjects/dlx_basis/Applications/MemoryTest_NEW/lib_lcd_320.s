	.section	.data
	.align	4
L1:
	.data.32	1
L2:
	.data.8	48
	.data.8	120
	.space	1
	.section	.text
	.addressing	Word
t_printInt:
L3:
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
	j	L4	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L4:
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
L5:
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
	lhi	%GPR1,$( L2	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L2	%0x10000)
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
	j	L6	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L6:
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
L7:
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
L8:
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
	bnez	%GPR27,L9	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L10	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L9:
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
L10:
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
	bnez	%GPR27,L8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L11	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L11:
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
	j	L12	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L12:
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
L13:
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
L14:
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
L15:
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
	bnez	%GPR27,L16	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L17	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L16:
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
	j	L15	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
L17:
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
	bnez	%GPR27,L18	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L19	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L18:
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
L19:
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
	bnez	%GPR27,L14	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L20	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L20:
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
	j	L21	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L21:
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
L22:
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
L23:
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
L24:
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
	bnez	%GPR27,L25	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L26	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L25:
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
	j	L24	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
L26:
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
	bnez	%GPR27,L27	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L28	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L27:
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
	j	L26	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
L28:
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
	bnez	%GPR27,L23	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L29	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L29:
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
	j	L30	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L30:
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
L31:
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
	j	L32	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L32:
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
L33:
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
	j	L34	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L34:
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
L35:
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
	bnez	%GPR27,L36	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L37	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L36:
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
	j	L38	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
L37:
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
L38:
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
	j	L39	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L39:
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
t_saveCursorPosition:
L40:
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
	ori	%GPR2,%GPR2,$83	
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
	j	L41	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L41:
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
t_restoreLastSavedCursorPositio:
L42:
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
	j	L43	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L43:
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
L44:
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
	j	L45	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L45:
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
L46:
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
	j	L47	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L47:
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
L48:
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
	j	L49	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L49:
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
L50:
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
	lhi	%GPR7,$( L1	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$( L1	%0x10000)
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
	bnez	%GPR27,L51	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L54	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L51:
	nop
	nop
	nop
	nop
	lhi	%GPR7,$( L1	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$( L1	%0x10000)
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
	bnez	%GPR27,L52	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L53	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L52:
	nop
	nop
	nop
	nop
	lhi	%GPR1,$( L1	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L1	%0x10000)
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
L53:
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L1	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L1	%0x10000)
	nop
	nop
	nop
	nop
	lhi	%GPR2,$( L1	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$( L1	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$( L1	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$( L1	%0x10000)
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
	lhi	%GPR1,$( L1	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L1	%0x10000)
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
	j	L55	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L54:
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
	j	L55	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L55:
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
L56:
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
	j	L57	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L57:
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
L58:
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
	j	L59	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L59:
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
L60:
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
	bnez	%GPR27,L61	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L62	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L61:
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
L62:
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
	j	L63	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L63:
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
L64:
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
	j	L65	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L65:
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
L66:
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
	j	L67	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L67:
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
L68:
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
L69:
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
	bnez	%GPR27,L69	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L70	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L70:
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
	j	L71	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L71:
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
L72:
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
	bnez	%GPR27,L73	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L74	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L73:
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
	j	L75	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L74:
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
	j	L75	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L75:
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
