	.section	.data
	.section	.text
max:
L_CFileHelp_1:
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
	sgt	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L_CFileHelp_2	
	NOP		
	NOP		
	NOP		
	j	L_CFileHelp_3	
	NOP		
	NOP		
	NOP		
L_CFileHelp_2:
	add	%GPR2,%GPR1,%GPR0	
	j	L_CFileHelp_4	
	NOP		
	NOP		
	NOP		
L_CFileHelp_3:
	NOP		
	NOP		
	NOP		
L_CFileHelp_4:
	add	%GPR28,%GPR2,%GPR0	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	j	L_CFileHelp_5	
	NOP		
	NOP		
	NOP		
L_CFileHelp_5:
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
main:
L_CFileMain_4:
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
	LI	%GPR2, *L_CFileMain_2	
	LI	%GPR1, *L_CFileMain_1	
	LI	%GPR3, *L_CFileMain_3	
	NOP		;;4,37
	NOP		;;4,37
	NOP		;;4,37
	lw	%GPR2,0(%GPR2)	
	lw	%GPR1,0(%GPR1)	
	NOP
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
	LI	%GPR1, *L_CFileMain_3	
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
	j	L_CFileMain_5	
	NOP		
	NOP		
	NOP		
L_CFileMain_5:
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
