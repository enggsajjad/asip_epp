	.section	.data
	;.global	_errorNumber
	.align	4
_errorNumber:
	.data.32	42
	;.global	_heapEnd
	.align	4
_heapEnd:
	.space	4
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
	lhi	%GPR1,$21499	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$1408985750	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1280	
	NOP		
	NOP		
	NOP		
L2:
	add	%GPR3,%GPR2,%GPR0	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lw	%GPR3,0(%GPR3)	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sne	%GPR27,%GPR3,%GPR1	
	bnez	%GPR27,L5	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L3	
	NOP		
	NOP		
	NOP		
	NOP		
L3:
	NOP		;;0,2
	NOP		;;0,2
	addi	%GPR2,%GPR2,$4	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$113	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4096	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	multu	%GPR1,%GPR1,%GPR3	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	addui	%GPR1,%GPR1,$1	
	sle	%GPR27,%GPR2,%GPR4	
	bnez	%GPR27,L2	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L4	
	NOP		
	NOP		
	NOP		
	NOP		
L4:
	NOP		;;0,2
	NOP		;;0,2
	LI	%GPR1, *_errorNumber	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	sw	0(%GPR1),%GPR2	
	j	L6	
	NOP		
	NOP		
	NOP		
	NOP		
L5:
	NOP		;;0,2
	NOP		;;0,2
	LI	%GPR1, *_errorNumber	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1	
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	sw	0(%GPR1),%GPR2	
	j	L6	
	NOP		
	NOP		
	NOP		
	NOP		
L6:
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
