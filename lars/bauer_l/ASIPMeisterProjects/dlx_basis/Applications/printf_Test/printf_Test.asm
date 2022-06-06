	.section	.data
L1:
	.data.8	37
	.data.8	115
	.data.8	10
	.space	1
L2:
	.data.8	75
	.data.8	101
	.data.8	105
	.data.8	110
	.data.8	101
	.data.8	32
	.data.8	80
	.data.8	97
	.data.8	114
	.data.8	97
	.data.8	109
	.data.8	101
	.data.8	116
	.data.8	101
	.data.8	114
	.data.8	32
	.data.8	117
	.data.8	101
	.data.8	98
	.data.8	101
	.data.8	114
	.data.8	103
	.data.8	101
	.data.8	98
	.data.8	101
	.data.8	110
	.data.8	46
	.data.8	10
	.space	1
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
main:
L3:
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
	lhi	%GPR3,$0	
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	ori	%GPR3,%GPR3,$0	
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sgt	%GPR27,%GPR1,%GPR3	
	bnez	%GPR27,L4	
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	j	L5	
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
L4:
	lhi	%GPR1,$( L1	/0x10000)
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	ori	%GPR1,%GPR1,$( L1	%0x10000)
	lw	%GPR2,0(%GPR2)	
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	subi	%GPR29,%GPR29,$8	
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	jal	printf	
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	addi	%GPR29,%GPR29,$8	
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	j	L6	
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
L5:
	lhi	%GPR1,$( L2	/0x10000)
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	ori	%GPR1,%GPR1,$( L2	%0x10000)
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	subi	%GPR29,%GPR29,$8	
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	jal	printf	
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	addi	%GPR29,%GPR29,$8	
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
L6:
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	lhi	%GPR28,$0	
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	ori	%GPR28,%GPR28,$0	
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	j	L7	
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
L7:
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
exit:
	sll	%GPR0,%GPR0,%GPR0
	sll	%GPR0,%GPR0,%GPR0
