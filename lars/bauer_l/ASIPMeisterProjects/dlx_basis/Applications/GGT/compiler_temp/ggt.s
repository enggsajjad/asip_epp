	.section	.data
	.section	.text
main:
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
	NOP		
	NOP		
	NOP		
	NOP		;;1,6
	NOP		;;1,6
	NOP		;;1,6
	NOP		;;1,6
	NOP		;;1,6
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		
	NOP		
	NOP		
L2:
	add	%GPR3,%GPR1,%GPR0	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$26	
	NOP		
	NOP		
	NOP		
L3:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sne	%GPR27,%GPR3,%GPR4	
	bnez	%GPR27,L4	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L7	
	NOP		
	NOP		
	NOP		
	NOP		
L4:
	sge	%GPR27,%GPR2,%GPR3	
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
	sub	%GPR2,%GPR2,%GPR3	
	j	L3	
	NOP		
	NOP		
	NOP		
L6:
	add	%GPR4,%GPR2,%GPR0	
	add	%GPR2,%GPR3,%GPR0	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	add	%GPR3,%GPR4,%GPR0	
	j	L3	
	NOP		
	NOP		
	NOP		
L7:
	addi	%GPR1,%GPR1,$1	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1024	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	slt	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L2	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L8	
	NOP		
	NOP		
	NOP		
	NOP		
L8:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	j	L9	
	NOP		
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
