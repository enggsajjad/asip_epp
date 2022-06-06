	.section	.data
	;.global	_resultMax
	.align	4
_resultMax:
	.space	4
	;.global	_resultMin
	.align	4
_resultMin:
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
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$2	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$5	
		
	

	nop
	nop
	nop
	minMax	%GPR1, %GPR27, %GPR1, %GPR2
	nop
	nop
	nop
	
		
	

	add	%GPR2, %GPR0, %GPR27
	nop
	nop
	nop
	
	LI	%GPR3, *_resultMax	
	LI	%GPR4, *_resultMin	
	NOP		;;11,14
	NOP		;;11,14
	NOP		;;11,14
	sw	0(%GPR3),%GPR1	
	NOP		;;14,18
	NOP		;;14,18
	NOP		;;14,18
	NOP		;;14,18
	sw	0(%GPR4),%GPR2	
	j	L2	
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
