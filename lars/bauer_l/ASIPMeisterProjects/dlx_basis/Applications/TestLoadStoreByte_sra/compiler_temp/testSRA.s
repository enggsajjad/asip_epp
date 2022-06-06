	.section	.data
	;.global	_result1
	.align	4
_result1:
	.space	4
	;.global	_result2
	.align	4
_result2:
	.space	4
	;.global	_value
	.align	4
_value:
	.data.32	255
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
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *_value	
	LI	%GPR2, *_result1	
	LI	%GPR3, *_result1	
	NOP		;;4,6
	NOP		;;4,6
	lw	%GPR1,0(%GPR1)	
	LI	%GPR4, *_result2	
	LI	%GPR6, *_result1	
	NOP		;;8,10
	NOP		;;8,10
	slli	%GPR1,%GPR1,$24	
	LI	%GPR5, *_result2	
	NOP		;;11,14
	NOP		;;11,14
	NOP		;;11,14
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
	NOP		;;26,30
	NOP		;;26,30
	NOP		;;26,30
	NOP		;;26,30
	lw	%GPR1,0(%GPR6)	
	lw	%GPR2,0(%GPR5)	
	NOP		;;31,35
	NOP		;;31,35
	NOP		;;31,35
	NOP		;;31,35
	add	%GPR28,%GPR1,%GPR2	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	j	L2	
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
