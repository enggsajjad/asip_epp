	.section	.data
	.align	4
L1:
	.data.32	4294967286
	.align	4
L2:
	.data.32	42
	.section	.text
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
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *L1	
	NOP		;;2,37
	NOP		;;2,37
	NOP		;;2,37
	NOP		;;2,37
	NOP		;;2,37
	NOP		;;2,37
	NOP		;;2,37
	NOP		;;2,37
	NOP		;;2,37
	NOP		;;2,37
	NOP		;;2,37
	NOP		;;2,37
	NOP		;;2,37
	NOP		;;2,37
	NOP		;;2,37
	NOP		;;2,37
	NOP		;;2,37
	NOP		;;2,37
	NOP		;;2,37
	NOP		;;2,37
	NOP		;;2,37
	NOP		;;2,37
	NOP		;;2,37
	NOP		;;2,37
	NOP		;;2,37
	NOP		;;2,37
	NOP		;;2,37
	NOP		;;2,37
	NOP		;;2,37
	NOP		;;2,37
	NOP		;;2,37
	NOP		;;2,37
	NOP		;;2,37
	NOP		;;2,37
	NOP		;;2,37
	lw	%GPR2,0(%GPR1)	
	NOP		
	NOP		
	NOP		
L4:
	LI	%GPR1, *L1	
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$10	
	lw	%GPR3,0(%GPR1)	
	NOP		;;36,40
	NOP		;;36,40
	NOP		;;36,40
	NOP		;;36,40
	sltu	%GPR27,%GPR3,%GPR4	
	NOP		;;40,44
	NOP		;;40,44
	NOP		;;40,44
	NOP		;;40,44
	bnez	%GPR27,L5	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L10	
	NOP		
	NOP		
	NOP		
	NOP		
L5:
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
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$10	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	subu	%GPR4,%GPR4,%GPR2	
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	andi	%GPR4,%GPR4,$3	
	NOP		;;43,47
	NOP		;;43,47
	NOP		;;43,47
	NOP		;;43,47
	addu	%GPR4,%GPR2,%GPR4	
	NOP		;;47,51
	NOP		;;47,51
	NOP		;;47,51
	NOP		;;47,51
	sltu	%GPR27,%GPR3,%GPR4	
	NOP		;;51,55
	NOP		;;51,55
	NOP		;;51,55
	NOP		;;51,55
	bnez	%GPR27,L6	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L7	
	NOP		
	NOP		
	NOP		
	NOP		
L6:
	LI	%GPR4, *L2	
	addui	%GPR6,%GPR3,$1	
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$10	
	lw	%GPR5,0(%GPR4)	
	NOP		;;36,39
	NOP		;;36,39
	NOP		;;36,39
	multu	%GPR3,%GPR3,%GPR7	
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	addu	%GPR3,%GPR5,%GPR3	
	NOP		;;75,79
	NOP		;;75,79
	NOP		;;75,79
	NOP		;;75,79
	sw	0(%GPR4),%GPR3	
	NOP		;;79,83
	NOP		;;79,83
	NOP		;;79,83
	NOP		;;79,83
	sw	0(%GPR1),%GPR6	
	j	L4	
	NOP		
	NOP		
	NOP		
L7:
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
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$10	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	sltu	%GPR27,%GPR3,%GPR2	
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	bnez	%GPR27,L8	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L10	
	NOP		
	NOP		
	NOP		
	NOP		
L8:
	LI	%GPR3, *L2	
	NOP		;;0,32
	NOP		;;0,32
	NOP		;;0,32
	NOP		;;0,32
	NOP		;;0,32
	NOP		;;0,32
	NOP		;;0,32
	NOP		;;0,32
	NOP		;;0,32
	NOP		;;0,32
	NOP		;;0,32
	NOP		;;0,32
	NOP		;;0,32
	NOP		;;0,32
	NOP		;;0,32
	NOP		;;0,32
	NOP		;;0,32
	NOP		;;0,32
	NOP		;;0,32
	NOP		;;0,32
	NOP		;;0,32
	NOP		;;0,32
	NOP		;;0,32
	NOP		;;0,32
	NOP		;;0,32
	NOP		;;0,32
	NOP		;;0,32
	NOP		;;0,32
	NOP		;;0,32
	NOP		;;0,32
	NOP		;;0,32
	NOP		;;0,32
	NOP		
	NOP		
	NOP		
L9:
	NOP		;;0,3
	NOP		;;0,3
	NOP		;;0,3
	lw	%GPR4,0(%GPR1)	
	NOP		;;3,7
	NOP		;;3,7
	NOP		;;3,7
	NOP		;;3,7
	addui	%GPR5,%GPR4,$1	
	addui	%GPR6,%GPR4,$2	
	addui	%GPR8,%GPR4,$3	
	addui	%GPR2,%GPR4,$4	
	lw	%GPR7,0(%GPR3)	
	NOP		;;11,35
	NOP		;;11,35
	NOP		;;11,35
	NOP		;;11,35
	NOP		;;11,35
	NOP		;;11,35
	NOP		;;11,35
	NOP		;;11,35
	NOP		;;11,35
	NOP		;;11,35
	NOP		;;11,35
	NOP		;;11,35
	NOP		;;11,35
	NOP		;;11,35
	NOP		;;11,35
	NOP		;;11,35
	NOP		;;11,35
	NOP		;;11,35
	NOP		;;11,35
	NOP		;;11,35
	NOP		;;11,35
	NOP		;;11,35
	NOP		;;11,35
	NOP		;;11,35
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$10	
	lhi	%GPR10,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR10,%GPR10,$10	
	lhi	%GPR11,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR11,%GPR11,$10	
	NOP		;;37,39
	NOP		;;37,39
	multu	%GPR4,%GPR4,%GPR9	
	multu	%GPR5,%GPR5,%GPR10	
	multu	%GPR6,%GPR6,%GPR11	
	NOP		;;41,72
	NOP		;;41,72
	NOP		;;41,72
	NOP		;;41,72
	NOP		;;41,72
	NOP		;;41,72
	NOP		;;41,72
	NOP		;;41,72
	NOP		;;41,72
	NOP		;;41,72
	NOP		;;41,72
	NOP		;;41,72
	NOP		;;41,72
	NOP		;;41,72
	NOP		;;41,72
	NOP		;;41,72
	NOP		;;41,72
	NOP		;;41,72
	NOP		;;41,72
	NOP		;;41,72
	NOP		;;41,72
	NOP		;;41,72
	NOP		;;41,72
	NOP		;;41,72
	NOP		;;41,72
	NOP		;;41,72
	NOP		;;41,72
	NOP		;;41,72
	NOP		;;41,72
	NOP		;;41,72
	NOP		;;41,72
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$10	
	NOP		;;72,75
	NOP		;;72,75
	NOP		;;72,75
	addu	%GPR4,%GPR7,%GPR4	
	multu	%GPR8,%GPR8,%GPR9	
	NOP		;;76,79
	NOP		;;76,79
	NOP		;;76,79
	sw	0(%GPR3),%GPR4	
	NOP		;;79,83
	NOP		;;79,83
	NOP		;;79,83
	NOP		;;79,83
	lw	%GPR4,0(%GPR3)	
	NOP		;;83,87
	NOP		;;83,87
	NOP		;;83,87
	NOP		;;83,87
	addu	%GPR4,%GPR4,%GPR5	
	NOP		;;87,91
	NOP		;;87,91
	NOP		;;87,91
	NOP		;;87,91
	sw	0(%GPR3),%GPR4	
	NOP		;;91,95
	NOP		;;91,95
	NOP		;;91,95
	NOP		;;91,95
	lw	%GPR4,0(%GPR3)	
	NOP		;;95,99
	NOP		;;95,99
	NOP		;;95,99
	NOP		;;95,99
	addu	%GPR4,%GPR4,%GPR6	
	NOP		;;99,103
	NOP		;;99,103
	NOP		;;99,103
	NOP		;;99,103
	sw	0(%GPR3),%GPR4	
	NOP		;;103,107
	NOP		;;103,107
	NOP		;;103,107
	NOP		;;103,107
	lw	%GPR4,0(%GPR3)	
	NOP		;;107,109
	NOP		;;107,109
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$10	
	NOP		;;109,112
	NOP		;;109,112
	NOP		;;109,112
	addu	%GPR4,%GPR4,%GPR8	
	NOP		;;112,116
	NOP		;;112,116
	NOP		;;112,116
	NOP		;;112,116
	sw	0(%GPR3),%GPR4	
	NOP		;;116,120
	NOP		;;116,120
	NOP		;;116,120
	NOP		;;116,120
	sw	0(%GPR1),%GPR2	
	NOP		;;120,124
	NOP		;;120,124
	NOP		;;120,124
	NOP		;;120,124
	lw	%GPR2,0(%GPR1)	
	NOP		;;124,128
	NOP		;;124,128
	NOP		;;124,128
	NOP		;;124,128
	sltu	%GPR27,%GPR2,%GPR9	
	NOP		;;128,132
	NOP		;;128,132
	NOP		;;128,132
	NOP		;;128,132
	bnez	%GPR27,L9	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L10	
	NOP		
	NOP		
	NOP		
	NOP		
L10:
	LI	%GPR1, *L2	
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
	lw	%GPR28,0(%GPR1)	
	NOP		;;35,74
	NOP		;;35,74
	NOP		;;35,74
	NOP		;;35,74
	NOP		;;35,74
	NOP		;;35,74
	NOP		;;35,74
	NOP		;;35,74
	NOP		;;35,74
	NOP		;;35,74
	NOP		;;35,74
	NOP		;;35,74
	NOP		;;35,74
	NOP		;;35,74
	NOP		;;35,74
	NOP		;;35,74
	NOP		;;35,74
	NOP		;;35,74
	NOP		;;35,74
	NOP		;;35,74
	NOP		;;35,74
	NOP		;;35,74
	NOP		;;35,74
	NOP		;;35,74
	NOP		;;35,74
	NOP		;;35,74
	NOP		;;35,74
	NOP		;;35,74
	NOP		;;35,74
	NOP		;;35,74
	NOP		;;35,74
	NOP		;;35,74
	NOP		;;35,74
	NOP		;;35,74
	NOP		;;35,74
	NOP		;;35,74
	NOP		;;35,74
	NOP		;;35,74
	NOP		;;35,74
	j	L11	
	NOP		
	NOP		
	NOP		
	NOP		
L11:
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
