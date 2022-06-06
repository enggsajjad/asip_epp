	.section	.data
	;.global	_intVar
	.align	4
_intVar:
	.data.32	-16777216
	;.global	_uintVar
	.align	4
_uintVar:
	.data.32	4278190080
	;.global	_intResult
	.align	4
_intResult:
	.space	4
	;.global	_uintResult
	.align	4
_uintResult:
	.space	4
	.section	.text
dummyCall:
L1:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$8	
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
L2:
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
L3:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *_intVar	
	LI	%GPR2, *_intResult	
	LI	%GPR3, *_intVar	
	NOP		;;4,6
	NOP		;;4,6
	lw	%GPR1,0(%GPR1)	
	LI	%GPR4, *_uintResult	
	NOP		;;7,10
	NOP		;;7,10
	NOP		;;7,10
	srai	%GPR1,%GPR1,$24	
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	sw	0(%GPR2),%GPR1	
	NOP		;;14,18
	NOP		;;14,18
	NOP		;;14,18
	NOP		;;14,18
	lw	%GPR1,0(%GPR3)	
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	srai	%GPR1,%GPR1,$24	
	NOP		;;22,26
	NOP		;;22,26
	NOP		;;22,26
	NOP		;;22,26
	sw	0(%GPR4),%GPR1	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	dummyCall	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *_uintVar	
	LI	%GPR2, *_intResult	
	LI	%GPR3, *_uintVar	
	NOP		;;30,32
	NOP		;;30,32
	lw	%GPR1,0(%GPR1)	
	LI	%GPR4, *_uintResult	
	NOP		;;33,35
	NOP		;;33,35
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	srli	%GPR1,%GPR1,$24	
	NOP		;;36,40
	NOP		;;36,40
	NOP		;;36,40
	NOP		;;36,40
	sw	0(%GPR2),%GPR1	
	NOP		;;40,44
	NOP		;;40,44
	NOP		;;40,44
	NOP		;;40,44
	lw	%GPR1,0(%GPR3)	
	NOP		;;44,48
	NOP		;;44,48
	NOP		;;44,48
	NOP		;;44,48
	srli	%GPR1,%GPR1,$24	
	NOP		;;48,52
	NOP		;;48,52
	NOP		;;48,52
	NOP		;;48,52
	sw	0(%GPR4),%GPR1	
	j	L4	
	NOP		
	NOP		
	NOP		
	NOP		
L4:
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
