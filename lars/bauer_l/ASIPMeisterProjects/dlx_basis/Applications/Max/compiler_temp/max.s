	.section	.data
	.align	4
L1:
	.space	4
	.align	4
L2:
	.space	4
	.align	4
L3:
	.space	4
	.section	.text
max:
L4:
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
	sgt	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L5	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L6	
	NOP		
	NOP		
	NOP		
	NOP		
L5:
	add	%GPR2,%GPR1,%GPR0	
	j	L7	
	NOP		
	NOP		
	NOP		
L6:
	NOP		
	NOP		
	NOP		
L7:
	add	%GPR28,%GPR2,%GPR0	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	j	L8	
	NOP		
	NOP		
	NOP		
	NOP		
L8:
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
L9:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$12	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;1,3
	NOP		;;1,3
	LI	%GPR1, *L1	
	NOP		;;3,5
	NOP		;;3,5
	LI	%GPR2, *L2	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$5	
	LI	%GPR6, *L2	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$7	
	LI	%GPR5, *L1	
	sw	0(%GPR1),%GPR3	
	LI	%GPR1, *L3	
	NOP		;;11,14
	NOP		;;11,14
	NOP		;;11,14
	sw	0(%GPR2),%GPR4	
	sw	-4(%GPR30),%GPR1	
	NOP		;;15,18
	NOP		;;15,18
	NOP		;;15,18
	lw	%GPR2,0(%GPR6)	
	lw	%GPR1,0(%GPR5)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	max	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR1,-4(%GPR30)	
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	sw	0(%GPR1),%GPR28	
	j	L10	
	NOP		
	NOP		
	NOP		
L10:
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