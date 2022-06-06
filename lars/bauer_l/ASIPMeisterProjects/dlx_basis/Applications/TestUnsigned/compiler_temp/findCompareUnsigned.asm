	.section	.data
	.align	4
L1:
	.data.32	4294967286
	.align	4
L2:
	.data.32	42
	.section	.text
	.addressing	Word
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
	nop
	nop
	nop
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	lhi	%GPR1,$( L1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L1	%0x10000)
	nop
	nop
	nop
	lw	%GPR2,0(%GPR1)	
	nop
	nop
	nop
L4:
	lhi	%GPR1,$( L1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L1	%0x10000)
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$10	
	lw	%GPR3,0(%GPR1)	
	nop
	nop
	nop
	sltu	%GPR27,%GPR3,%GPR4	
	nop
	nop
	nop
	bnez	%GPR27,L5	
	nop
	nop
	nop
	j	L10	
	nop
	nop
	nop
L5:
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$10	
	nop
	nop
	nop
	subu	%GPR4,%GPR4,%GPR2	
	nop
	nop
	nop
	andi	%GPR4,%GPR4,$3	
	nop
	nop
	nop
	addu	%GPR4,%GPR2,%GPR4	
	nop
	nop
	nop
	sltu	%GPR27,%GPR3,%GPR4	
	nop
	nop
	nop
	bnez	%GPR27,L6	
	nop
	nop
	nop
	j	L7	
	nop
	nop
	nop
L6:
	lhi	%GPR4,$( L2	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( L2	%0x10000)
	addui	%GPR6,%GPR3,$1	
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	ori	%GPR7,%GPR7,$10	
	lw	%GPR5,0(%GPR4)	
	nop
	nop
	nop
	multu	%GPR3,%GPR3,%GPR7	
	nop
	nop
	nop
	addu	%GPR3,%GPR5,%GPR3	
	nop
	nop
	nop
	sw	0(%GPR4),%GPR3	
	nop
	nop
	nop
	sw	0(%GPR1),%GPR6	
	j	L4	
	nop
	nop
	nop
L7:
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$10	
	nop
	nop
	nop
	sltu	%GPR27,%GPR3,%GPR2	
	nop
	nop
	nop
	bnez	%GPR27,L8	
	nop
	nop
	nop
	j	L10	
	nop
	nop
	nop
L8:
	lhi	%GPR3,$( L2	/0x10000)
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$( L2	%0x10000)
	nop
	nop
	nop
L9:
	nop
	nop
	nop
	lw	%GPR4,0(%GPR1)	
	nop
	nop
	nop
	addui	%GPR5,%GPR4,$1	
	addui	%GPR6,%GPR4,$2	
	addui	%GPR8,%GPR4,$3	
	addui	%GPR2,%GPR4,$4	
	lw	%GPR7,0(%GPR3)	
	nop
	nop
	nop
	lhi	%GPR9,$0	
	nop
	nop
	nop
	ori	%GPR9,%GPR9,$10	
	lhi	%GPR10,$0	
	nop
	nop
	nop
	ori	%GPR10,%GPR10,$10	
	lhi	%GPR11,$0	
	nop
	nop
	nop
	ori	%GPR11,%GPR11,$10	
	nop
	nop
	multu	%GPR4,%GPR4,%GPR9	
	multu	%GPR5,%GPR5,%GPR10	
	multu	%GPR6,%GPR6,%GPR11	
	nop
	nop
	nop
	lhi	%GPR9,$0	
	nop
	nop
	nop
	ori	%GPR9,%GPR9,$10	
	nop
	nop
	nop
	addu	%GPR4,%GPR7,%GPR4	
	multu	%GPR8,%GPR8,%GPR9	
	nop
	nop
	nop
	sw	0(%GPR3),%GPR4	
	nop
	nop
	nop
	lw	%GPR4,0(%GPR3)	
	nop
	nop
	nop
	addu	%GPR4,%GPR4,%GPR5	
	nop
	nop
	nop
	sw	0(%GPR3),%GPR4	
	nop
	nop
	nop
	lw	%GPR4,0(%GPR3)	
	nop
	nop
	nop
	addu	%GPR4,%GPR4,%GPR6	
	nop
	nop
	nop
	sw	0(%GPR3),%GPR4	
	nop
	nop
	nop
	lw	%GPR4,0(%GPR3)	
	nop
	nop
	lhi	%GPR9,$0	
	nop
	nop
	nop
	ori	%GPR9,%GPR9,$10	
	nop
	nop
	nop
	addu	%GPR4,%GPR4,%GPR8	
	nop
	nop
	nop
	sw	0(%GPR3),%GPR4	
	nop
	nop
	nop
	sw	0(%GPR1),%GPR2	
	nop
	nop
	nop
	lw	%GPR2,0(%GPR1)	
	nop
	nop
	nop
	sltu	%GPR27,%GPR2,%GPR9	
	nop
	nop
	nop
	bnez	%GPR27,L9	
	nop
	nop
	nop
	j	L10	
	nop
	nop
	nop
L10:
	lhi	%GPR1,$( L2	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L2	%0x10000)
	nop
	nop
	nop
	lw	%GPR28,0(%GPR1)	
	nop
	nop
	nop
	j	L11	
	nop
	nop
	nop
L11:
	nop
	nop
	nop
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
exit:
	nop
	nop
