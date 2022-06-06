	.section	.data
	;.global	_array
	.align	4
_array:
	.data.32	45
	.data.32	75
	.data.32	342
	.data.32	54
	.data.32	7
	.data.32	86
	.data.32	92
	.data.32	235
	.data.32	4
	.data.32	42
	.data.32	99
	.data.32	78
	.data.32	63
	.data.32	352
	.data.32	21
	.data.32	634
	.data.32	6
	.data.32	77
	.data.32	346
	.data.32	23
	.section	.text
bubbleSort:
L1:
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
	add	%GPR3,%GPR1,%GPR0	
	NOP		
	NOP		
	NOP		
L2:
	sltu	%GPR27,%GPR3,%GPR2	
	bnez	%GPR27,L3	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L9	
	NOP		
	NOP		
	NOP		
	NOP		
L3:
	add	%GPR4,%GPR1,%GPR0	
	NOP		
	NOP		
	NOP		
L4:
	subu	%GPR5,%GPR2,%GPR3	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	sltu	%GPR27,%GPR4,%GPR5	
	bnez	%GPR27,L5	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L8	
	NOP		
	NOP		
	NOP		
	NOP		
L5:
	addui	%GPR5,%GPR4,$1	
	NOP		;;1,3
	NOP		;;1,3
	LI	%GPR6, *_array	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$4	
	LI	%GPR9, *_array	
	lhi	%GPR8,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR8,%GPR8,$4	
	NOP		;;6,8
	NOP		;;6,8
	multu	%GPR5,%GPR5,%GPR7	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	multu	%GPR7,%GPR4,%GPR8	
	add	%GPR5,%GPR6,%GPR5	
	NOP		;;13,16
	NOP		;;13,16
	NOP		;;13,16
	add	%GPR6,%GPR9,%GPR7	
	lw	%GPR5,0(%GPR5)	
	NOP		;;17,20
	NOP		;;17,20
	NOP		;;17,20
	lw	%GPR6,0(%GPR6)	
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	sltu	%GPR27,%GPR5,%GPR6	
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
	NOP		;;0,2
	NOP		;;0,2
	addui	%GPR5,%GPR4,$1	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$4	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$4	
	NOP		;;5,7
	NOP		;;5,7
	LI	%GPR9, *_array	
	multu	%GPR5,%GPR5,%GPR6	
	multu	%GPR7,%GPR4,%GPR7	
	LI	%GPR8, *_array	
	addui	%GPR11,%GPR4,$1	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$4	
	lhi	%GPR12,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR12,%GPR12,$4	
	add	%GPR7,%GPR9,%GPR7	
	add	%GPR5,%GPR8,%GPR5	
	multu	%GPR6,%GPR4,%GPR6	
	multu	%GPR9,%GPR11,%GPR12	
	LI	%GPR10, *_array	
	LI	%GPR8, *_array	
	NOP		;;19,21
	NOP		;;19,21
	lw	%GPR11,0(%GPR5)	
	add	%GPR6,%GPR10,%GPR6	
	lw	%GPR5,0(%GPR7)	
	add	%GPR7,%GPR8,%GPR9	
	NOP		;;24,26
	NOP		;;24,26
	sw	0(%GPR6),%GPR11	
	NOP		;;26,30
	NOP		;;26,30
	NOP		;;26,30
	NOP		;;26,30
	sw	0(%GPR7),%GPR5	
	NOP		
	NOP		
	NOP		
L7:
	addui	%GPR4,%GPR4,$1	
	j	L4	
	NOP		
	NOP		
	NOP		
L8:
	addui	%GPR3,%GPR3,$1	
	j	L2	
	NOP		
	NOP		
	NOP		
L9:
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
main:
L10:
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
	NOP		;;1,6
	NOP		;;1,6
	NOP		;;1,6
	NOP		;;1,6
	NOP		;;1,6
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$19	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	bubbleSort	
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
