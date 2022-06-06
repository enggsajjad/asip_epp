	.section	.data
	.align	4
L1:
	.data.32	23
	.align	4
L2:
	.data.32	42
	.align	4
L3:
	.space	4
	.section	.text
main:
L4:
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
	LI	%GPR2, *L2	
	LI	%GPR1, *L1	
	LI	%GPR3, *L3	
	NOP		;;4,37
	NOP		;;4,37
	NOP		;;4,37
	lw	%GPR2,0(%GPR2)	
	lw	%GPR1,0(%GPR1)	
	sw	-4(%GPR30),%GPR3	
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	jal	max	
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *L3	
	lw	%GPR2,-4(%GPR30)	
	NOP		;;42,46
	NOP		;;42,46
	NOP		;;42,46
	sw	0(%GPR2),%GPR28	
	NOP		;;46,76
	NOP		;;46,76
	NOP		;;46,76
	lw	%GPR28,0(%GPR1)	
	NOP		;;76,80
	NOP		;;76,80
	NOP		;;76,80
	j	L5	
	NOP		
	NOP		
	NOP		
L5:
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
