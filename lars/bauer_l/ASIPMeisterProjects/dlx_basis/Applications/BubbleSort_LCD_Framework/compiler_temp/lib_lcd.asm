	.section	.data
	.align	4
L1:
	.data.32	1
	.section	.text
	.addressing	Word
checkbuffer:
L2:
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
	; Automatically 25 NOPs removed by reduceNOPs.sh


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
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1), %GPR2

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$222	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1), %GPR2

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$18	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1), %GPR2

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1), %GPR2

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$73	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1), %GPR2

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$92	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1), %GPR2

	nop
	nop
	nop
	j	L4	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L3:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$65535	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$-1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR3,%GPR4	
	nop
	nop
	nop
	bnez	%GPR27,L4	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L6	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L4:
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
	sw	0(%GPR1), %GPR2

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$223	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1), %GPR2

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
	sw	0(%GPR1), %GPR2



	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,0(%GPR1)
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh



	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%GPR6,0(%GPR1)
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh



	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%GPR3,0(%GPR1)
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh



	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR1)
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh



	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%GPR4,0(%GPR1)
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh



	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%GPR5,0(%GPR1)
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
	add	%GPR3,%GPR6,%GPR3	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR3,%GPR2	
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$256	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR3,%GPR4	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	MOD	%GPR3,%GPR3,%GPR6	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR3,%GPR5	
	nop
	nop
	nop
	bnez	%GPR27,L5	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L3	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L5:
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
	sw	0(%GPR1), %GPR3

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$222	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1), %GPR3

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
	sw	0(%GPR1), %GPR3

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
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
	sw	0(%GPR1), %GPR3

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
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
	sw	0(%GPR1), %GPR3

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$101	
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$101	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1), %GPR4

	nop
	nop
	nop
	j	L3	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L6:
	nop
	nop
	nop
	add	%GPR28,%GPR2,%GPR0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L7	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L7:
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
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
getbytes:
L8:
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
	subi	%GPR29,%GPR29,$32	
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
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-12(%GPR30),%GPR1	


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
	sw	-16(%GPR30),%GPR1	
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
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$222	


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
	ori	%GPR1,%GPR1,$83	


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
	ori	%GPR1,%GPR1,$102	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2), %GPR1

	nop
	nop
	nop
	j	L12	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L9:
	nop
	nop
	nop
	lw	%GPR1,-16(%GPR30)	


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
	lw	%GPR2,-20(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	andi	%GPR2,%GPR2,$255	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR2,%GPR1	
	nop
	nop
	nop
	bnez	%GPR27,L10	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L11	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L10:
	nop
	nop
	nop
	lw	%GPR2,-16(%GPR30)	
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
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$222	


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
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2), %GPR1

	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR2,%GPR0	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
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
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$101	
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$101	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3), %GPR1

	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L11:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
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
	bnez	%GPR27,L12	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L15	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L12:
	nop
	nop
	nop
	lw	%GPR2,-16(%GPR30)	
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
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$223	


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
	lw	%GPR2,0(%GPR1)
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh



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
	add	%GPR1,%GPR2,%GPR1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-20(%GPR30),%GPR1	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L13:
	nop
	nop
	nop
	lw	%GPR1,-12(%GPR30)	
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
	bnez	%GPR27,L14	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L9	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L14:
	nop
	nop
	nop
	lw	%GPR1,-16(%GPR30)	


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
	lw	%GPR2,-12(%GPR30)	
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
	lw	%GPR1,-12(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,-24(%GPR30)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-12(%GPR30),%GPR1	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,-20(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-20(%GPR30),%GPR1	
	nop
	nop
	nop
	j	L13	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L15:
	nop
	nop
	nop
	lw	%GPR28,-12(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L16	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L16:
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
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
sendcommand:
L17:
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
	slli	%GPR1,%GPR7,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-32(%GPR30),%GPR1	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L18:
	nop
	nop
	nop
	lw	%GPR1,-12(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	lw	%GPR2,-28(%GPR30)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$6	
	nop
	nop
	nop
	; Automatically 33 NOPs removed by reduceNOPs.sh


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2), %GPR1

	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,-32(%GPR30)	
	nop
	nop
	nop
	; Automatically 33 NOPs removed by reduceNOPs.sh


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2), %GPR1

	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR2,%GPR0	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$17	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2), %GPR1

	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,-12(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR2,%GPR1,$3	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
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
	; Automatically 8 NOPs removed by reduceNOPs.sh
	add	%GPR4,%GPR3,%GPR0	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$27	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3), %GPR1

	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR3,-4(%GPR30)	
	nop
	nop
	nop
	; Automatically 32 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR3,%GPR0	
	nop
	nop
	nop
	; Automatically 17 NOPs removed by reduceNOPs.sh


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4), %GPR1

	nop
	nop
	nop
	addi	%GPR4,%GPR2,$44	
	nop
	nop
	nop
	lw	%GPR2,-8(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,-12(%GPR30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR4,%GPR3	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-36(%GPR30),%GPR3	
	nop
	nop
	nop
	j	L20	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L19:
	nop
	nop
	nop
	lw	%GPR2,-20(%GPR30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$-1	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	add	%GPR4,%GPR2,%GPR0	
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
	lw	%GPR2,0(%GPR2)	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR4,%GPR3	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-20(%GPR30),%GPR3	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L20:
	nop
	nop
	nop
	add	%GPR3,%GPR2,%GPR0	
	nop
	nop
	nop
	lw	%GPR4,-28(%GPR30)	
	nop
	nop
	nop
	; Automatically 13 NOPs removed by reduceNOPs.sh


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4), %GPR3

	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR3,-36(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR3,%GPR2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-36(%GPR30),%GPR2	
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
	sne	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	bnez	%GPR27,L19	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L21	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L21:
	nop
	nop
	nop
	lw	%GPR1,-16(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	-40(%GPR30),%GPR1	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L22:
	nop
	nop
	nop
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
	sne	%GPR27,%GPR2,%GPR1	
	nop
	nop
	nop
	bnez	%GPR27,L23	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L24	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L23:
	nop
	nop
	nop
	lw	%GPR1,-24(%GPR30)	
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
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%GPR4,-24(%GPR30)	
	nop
	nop
	nop
	add	%GPR1,%GPR28,%GPR0	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$1	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR4,%GPR3	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-24(%GPR30),%GPR3	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR3,-28(%GPR30)	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR3), %GPR2

	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,-40(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR2,%GPR2,$-1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-40(%GPR30),%GPR2	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,-36(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR2,%GPR1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-36(%GPR30),%GPR1	
	nop
	nop
	nop
	j	L22	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L24:
	nop
	nop
	nop
	lw	%GPR1,-36(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,-28(%GPR30)	
	nop
	nop
	nop
	; Automatically 29 NOPs removed by reduceNOPs.sh


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2), %GPR1



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
	; Automatically 20 NOPs removed by reduceNOPs.sh
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
	sw	0(%GPR1), %GPR2

	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,-32(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR2,%GPR2,$1	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1), %GPR2

	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	


	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1), %GPR2



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
	bnez	%GPR27,L18	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L25	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L25:
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
	j	L26	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L26:
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
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
t_print:
L27:
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
	sw	-4(%GPR30),%GPR1	
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	-8(%GPR30),%GPR1	
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
	sw	-12(%GPR30),%GPR1	
	nop
	nop
	nop
	j	L29	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L28:
	nop
	nop
	nop
	lw	%GPR6,-12(%GPR30)	
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR4,-4(%GPR30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
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
	j	L31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L29:
	nop
	nop
	nop
	lw	%GPR1,-8(%GPR30)	
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
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%GPR3,-8(%GPR30)	
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
	add	%GPR2,%GPR3,%GPR2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-8(%GPR30),%GPR2	
	nop
	nop
	nop
	sne	%GPR27,%GPR28,%GPR1	
	nop
	nop
	nop
	bnez	%GPR27,L30	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L28	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L30:
	nop
	nop
	nop
	lw	%GPR1,-12(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-12(%GPR30),%GPR1	
	nop
	nop
	nop
	j	L29	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L31:
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
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
t_cursor:
L32:
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
	j	L33	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L33:
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
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
t_enable:
L34:
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
	bnez	%GPR27,L35	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L36	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L35:
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
	j	L37	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L36:
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
L37:
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
	j	L38	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L38:
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
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
g_print:
L39:
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
	subi	%GPR29,%GPR29,$28	
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
	nop	; Automatically added by fix-stall-insns.pl
	sw	-16(%GPR30),%GPR1	
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
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-20(%GPR30),%GPR4	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR1),%GPR3	
	nop
	nop
	nop
	j	L41	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L40:
	nop
	nop
	nop
	lw	%GPR1,-20(%GPR30)	
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR6,%GPR1,$1	
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$8	
	nop
	nop
	nop
	lw	%GPR4,-12(%GPR30)	
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
	j	L43	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L41:
	nop
	nop
	nop
	lw	%GPR1,-16(%GPR30)	
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
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%GPR3,-16(%GPR30)	
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
	add	%GPR2,%GPR3,%GPR2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR2	
	nop
	nop
	nop
	sne	%GPR27,%GPR28,%GPR1	
	nop
	nop
	nop
	bnez	%GPR27,L42	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L40	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L42:
	nop
	nop
	nop
	lw	%GPR1,-20(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-20(%GPR30),%GPR1	
	nop
	nop
	nop
	j	L41	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L43:
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
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
g_drawrect:
L44:
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
	j	L45	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L45:
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
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
g_drawline:
L46:
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
	j	L47	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L47:
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
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
g_makebar:
L48:
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
	subi	%GPR29,%GPR29,$60	
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
	lhi	%GPR7,$( L1	/0x10000)
	nop
	nop
	nop
	ori	%GPR7,%GPR7,$( L1	%0x10000)
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-48(%GPR30),%GPR7	
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
	lw	%GPR7,0(%GPR7)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR7,%GPR10	
	nop
	nop
	nop
	bnez	%GPR27,L49	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L52	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L49:
	nop
	nop
	nop
	sw	-36(%GPR30),%GPR7	
	nop
	nop
	nop
	subi	%GPR10,%GPR30,$36	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$4	
	nop
	nop
	nop
	subi	%GPR11,%GPR30,$36	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR12,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR12,%GPR12,$8	
	nop
	nop
	nop
	add	%GPR7,%GPR10,%GPR7	
	nop
	nop
	nop
	subi	%GPR10,%GPR30,$36	
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
	; Automatically 8 NOPs removed by reduceNOPs.sh
	sw	0(%GPR7),%GPR1	
	nop
	nop
	nop
	add	%GPR1,%GPR11,%GPR12	
	nop
	nop
	nop
	subi	%GPR7,%GPR30,$36	
	nop
	nop
	nop
	lhi	%GPR11,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR11,%GPR11,$16	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	nop
	nop
	nop
	add	%GPR1,%GPR10,%GPR13	
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$36	
	nop
	nop
	nop
	lhi	%GPR10,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$20	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR3	
	nop
	nop
	nop
	add	%GPR1,%GPR7,%GPR11	
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$36	
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
	; Automatically 8 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR4	
	nop
	nop
	nop
	add	%GPR1,%GPR2,%GPR10	
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$36	
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
	; Automatically 8 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR5	
	nop
	nop
	nop
	add	%GPR1,%GPR3,%GPR7	
	nop
	nop
	nop
	add	%GPR4,%GPR2,%GPR4	
	nop
	nop
	nop
	subi	%GPR10,%GPR30,$36	
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
	sw	0(%GPR1),%GPR6	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR4),%GPR8	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
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
	bnez	%GPR27,L50	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L51	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L50:
	nop
	nop
	nop
	lw	%GPR1,-48(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
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
L51:
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L1	%0x10000)
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	subi	%GPR8,%GPR30,$36	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR1,%GPR0	
	nop
	nop
	nop
	sw	-52(%GPR30),%GPR1	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,0(%GPR1)	
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
	; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%GPR2,%GPR1,$1	
	nop
	nop
	nop
	add	%GPR8,%GPR8,%GPR9	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR2	
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
	sw	-36(%GPR30),%GPR1	
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
	subi	%GPR3,%GPR30,$36	
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
	lw	%GPR1,-52(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR28,%GPR1,$-1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L53	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L52:
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
	j	L53	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L53:
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
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
g_setbar:
L54:
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
	j	L55	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L55:
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
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
g_makeswitch:
L56:
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
	nop	; Automatically added by fix-stall-insns.pl
	sw	-32(%GPR30),%GPR1	
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$24	
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	subi	%GPR8,%GPR30,$24	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	lhi	%GPR9,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$8	
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$24	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR3	
	nop
	nop
	nop
	add	%GPR1,%GPR8,%GPR9	
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
	; Automatically 8 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$24	
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
	lhi	%GPR8,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$16	
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$24	
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
	sw	0(%GPR1),%GPR5	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR3,%GPR8	
	nop
	nop
	nop
	add	%GPR1,%GPR2,%GPR4	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop
	nop
	nop
	sw	0(%GPR3),%GPR6	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	-36(%GPR30),%GPR2	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR1),%GPR7	
	nop
	nop
	nop
	j	L58	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L57:
	nop
	nop
	nop
	lw	%GPR1,-36(%GPR30)	
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR6,%GPR1,$1	
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$24	
	nop
	nop
	nop
	lw	%GPR4,-28(%GPR30)	
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
	j	L60	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L58:
	nop
	nop
	nop
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
	jal	loadByteUnsigned	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%GPR3,-32(%GPR30)	
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
	add	%GPR2,%GPR3,%GPR2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-32(%GPR30),%GPR2	
	nop
	nop
	nop
	sne	%GPR27,%GPR28,%GPR1	
	nop
	nop
	nop
	bnez	%GPR27,L59	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L57	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L59:
	nop
	nop
	nop
	lw	%GPR1,-36(%GPR30)	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-36(%GPR30),%GPR1	
	nop
	nop
	nop
	j	L58	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L60:
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
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
g_makemenubutton:
L61:
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
	nop	; Automatically added by fix-stall-insns.pl
	sw	-40(%GPR30),%GPR1	
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$32	
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	subi	%GPR9,%GPR30,$32	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	lhi	%GPR10,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$8	
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
	sw	0(%GPR1),%GPR3	
	nop
	nop
	nop
	add	%GPR1,%GPR9,%GPR10	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$32	
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
	lhi	%GPR9,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$16	
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$32	
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
	sw	0(%GPR1),%GPR5	
	nop
	nop
	nop
	add	%GPR1,%GPR3,%GPR9	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR2,%GPR4	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR6	
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$32	
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
	; Automatically 8 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2),%GPR7	
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
	add	%GPR1,%GPR3,%GPR5	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	-44(%GPR30),%GPR2	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR1),%GPR8	
	nop
	nop
	nop
	j	L65	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L62:
	nop
	nop
	nop
	lw	%GPR1,-44(%GPR30)	
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR6,%GPR1,$1	
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$32	
	nop
	nop
	nop
	lw	%GPR4,-36(%GPR30)	
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
	bnez	%GPR27,L63	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L64	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L63:
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
L64:
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
	j	L67	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L65:
	nop
	nop
	nop
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
	jal	loadByteUnsigned	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%GPR3,-40(%GPR30)	
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
	add	%GPR2,%GPR3,%GPR2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-40(%GPR30),%GPR2	
	nop
	nop
	nop
	sne	%GPR27,%GPR28,%GPR1	
	nop
	nop
	nop
	bnez	%GPR27,L66	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L62	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L66:
	nop
	nop
	nop
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
	j	L65	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L67:
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
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
g_makeradiogroup:
L68:
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
	j	L69	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L69:
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
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
d_clear:
L70:
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
	j	L71	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L71:
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
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
strlength:
L72:
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
L73:
	nop
	nop
	nop
	lw	%GPR1,-4(%GPR30)	
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
	; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%GPR3,-4(%GPR30)	
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
	add	%GPR2,%GPR3,%GPR2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR2	
	nop
	nop
	nop
	sne	%GPR27,%GPR28,%GPR1	
	nop
	nop
	nop
	bnez	%GPR27,L74	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L75	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L74:
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
	j	L73	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L75:
	nop
	nop
	nop
	lw	%GPR28,-8(%GPR30)	
	nop
	nop
	nop
	; Automatically 32 NOPs removed by reduceNOPs.sh
	j	L76	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L76:
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
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
wait:
L77:
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
	lhi	%GPR28,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L78:
	nop
	nop
	nop
	sne	%GPR27,%GPR28,%GPR1	
	nop
	nop
	nop
	bnez	%GPR27,L79	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L80	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L79:
	nop
	nop
	nop
	addi	%GPR28,%GPR28,$1	
	nop
	nop
	nop
	j	L78	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
L80:
	nop
	nop
	nop
	j	L81	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L81:
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
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
getack:
L82:
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
	; Automatically 33 NOPs removed by reduceNOPs.sh


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
	bnez	%GPR27,L83	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L84	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L83:
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
	j	L85	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L84:
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
	j	L85	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L85:
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
	jr	%GPR31	
	nop
	nop
	nop