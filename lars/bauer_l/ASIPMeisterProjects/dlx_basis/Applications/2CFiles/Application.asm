	.section	.data
	.section	.text
	.addressing	Word
_start:
	xor	%GPR30, %GPR30, %GPR30
	xor	%GPR29, %GPR29, %GPR29
	xor	%GPR28, %GPR28, %GPR28
	sll	%GPR0,%GPR0,%GPR0
	addui	%GPR30, %GPR30, $3
	addui	%GPR29, %GPR29, $3
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	slli	%GPR30, %GPR30, $12
	slli	%GPR29, %GPR29, $12
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sw	-4(%GPR29), %GPR30
	sw	-8(%GPR29), %GPR31
	addi	%GPR29, %GPR30, $-8
	jal	main	
	sll	%GPR0,%GPR0,%GPR0
	sw	0(%GPR29), %GPR1
	jal	exit	
	sll	%GPR0,%GPR0,%GPR0
max:
L_CFileHelp_1:
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$8	
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sgt	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L_CFileHelp_2	
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	j	L_CFileHelp_3	
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
L_CFileHelp_2:
	add	%GPR2,%GPR1,%GPR0	
	j	L_CFileHelp_4	
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
L_CFileHelp_3:
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
L_CFileHelp_4:
	add	%GPR28,%GPR2,%GPR0	
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	j	L_CFileHelp_5	
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
L_CFileHelp_5:
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	lw	%GPR30,0(%GPR30)	
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	jr	%GPR31	
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	.section	.data
	.align	4
L_CFileMain_1:
	.data.32	23
	.align	4
L_CFileMain_2:
	.data.32	42
	.align	4
L_CFileMain_3:
	.space	4
	.section	.text
	.addressing	Word
main:
L_CFileMain_4:
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$12	
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	lhi	%GPR2,$( L_CFileMain_2	/0x10000)
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	ori	%GPR2,%GPR2,$( L_CFileMain_2	%0x10000)
	lhi	%GPR1,$( L_CFileMain_1	/0x10000)
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	ori	%GPR1,%GPR1,$( L_CFileMain_1	%0x10000)
	lhi	%GPR3,$( L_CFileMain_3	/0x10000)
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	ori	%GPR3,%GPR3,$( L_CFileMain_3	%0x10000)
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	lw	%GPR2,0(%GPR2)	
	lw	%GPR1,0(%GPR1)	
	sll	%GPR0,%GPR0,%GPR0
	sw	-4(%GPR30),%GPR3	
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	subi	%GPR29,%GPR29,$8	
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	jal	max	
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	addi	%GPR29,%GPR29,$8	
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	lhi	%GPR1,$( L_CFileMain_3	/0x10000)
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	ori	%GPR1,%GPR1,$( L_CFileMain_3	%0x10000)
	lw	%GPR2,-4(%GPR30)	
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sw	0(%GPR2),%GPR28	
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	lw	%GPR28,0(%GPR1)	
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	j	L_CFileMain_5	
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
L_CFileMain_5:
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	lw	%GPR30,0(%GPR30)	
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	jr	%GPR31	
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
exit:
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
