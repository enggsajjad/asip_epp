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
_start:
	xor	%GPR30, %GPR30, %GPR30
	xor	%GPR29, %GPR29, %GPR29
	xor	%GPR28, %GPR28, %GPR28
	nop
	addui	%GPR30, %GPR30, $3
	addui	%GPR29, %GPR29, $3
	nop
	nop
	slli	%GPR30, %GPR30, $12
	slli	%GPR29, %GPR29, $12
	nop
	nop
	nop
	sw	-4(%GPR29), %GPR30
	sw	-8(%GPR29), %GPR31
	addi	%GPR29, %GPR30, $-8
	jal	main	
	nop
	sw	0(%GPR29), %GPR1
	jal	exit	
	nop
main:
L3:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;0,2
	NOP		;;0,2
	NOP		
	NOP		
	NOP		
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		;;38,42
	NOP		;;38,42
	NOP		;;38,42
	NOP		;;38,42
	sgt	%GPR27,%GPR1,%GPR3	
	bnez	%GPR27,L4	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L5	
	NOP		
	NOP		
	NOP		
	NOP		
L4:
	LI	%GPR1, *L1	
	lw	%GPR2,0(%GPR2)	
	NOP		;;1,36
	NOP		;;1,36
	NOP		;;1,36
	NOP		;;1,36
	NOP		;;1,36
	NOP		;;1,36
	NOP		;;1,36
	NOP		;;1,36
	NOP		;;1,36
	NOP		;;1,36
	NOP		;;1,36
	NOP		;;1,36
	NOP		;;1,36
	NOP		;;1,36
	NOP		;;1,36
	NOP		;;1,36
	NOP		;;1,36
	NOP		;;1,36
	NOP		;;1,36
	NOP		;;1,36
	NOP		;;1,36
	NOP		;;1,36
	NOP		;;1,36
	NOP		;;1,36
	NOP		;;1,36
	NOP		;;1,36
	NOP		;;1,36
	NOP		;;1,36
	NOP		;;1,36
	NOP		;;1,36
	NOP		;;1,36
	NOP		;;1,36
	NOP		;;1,36
	NOP		;;1,36
	NOP		;;1,36
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	printf	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L6	
	NOP		
	NOP		
	NOP		
L5:
	LI	%GPR1, *L2	
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	printf	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
L6:
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	j	L7	
	NOP		
	NOP		
	NOP		
	NOP		
L7:
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	lw	%GPR30,0(%GPR30)	
	NOP		
	NOP		
	jr	%GPR31	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP
exit:
	NOP
	NOP
