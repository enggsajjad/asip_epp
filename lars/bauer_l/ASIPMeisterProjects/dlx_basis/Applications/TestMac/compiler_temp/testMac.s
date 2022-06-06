	.section	.data
	;.global	_a
	.align	4
_a:
	.space	4
	;.global	_b
	.align	4
_b:
	.space	4
	;.global	_c
	.align	4
_c:
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
	NOP		;;1,3
	NOP		;;1,3
	LI	%GPR1, *_a	
	NOP		;;3,5
	NOP		;;3,5
	LI	%GPR3, *_b	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$3	
	NOP		;;6,8
	NOP		;;6,8
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$5	
	LI	%GPR5, *_c	
	sw	0(%GPR1),%GPR2	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$7	
	LI	%GPR2, *_b	
	LI	%GPR6, *_a	
	sw	0(%GPR3),%GPR4	
	LI	%GPR3, *_c	
	LI	%GPR4, *_c	
	LI	%GPR7, *_c	
	sw	0(%GPR5),%GPR1	
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	lw	%GPR1,0(%GPR3)	
	lw	%GPR2,0(%GPR2)	
	lw	%GPR3,0(%GPR6)	
	NOP		;;24,28
	NOP		;;24,28
	NOP		;;24,28
	NOP		;;24,28
	mac	%GPR1,%GPR3,%GPR2	
	NOP		;;28,32
	NOP		;;28,32
	NOP		;;28,32
	NOP		;;28,32
	sw	0(%GPR4),%GPR1	
	NOP		;;32,36
	NOP		;;32,36
	NOP		;;32,36
	NOP		;;32,36
	lw	%GPR28,0(%GPR7)	
	NOP		;;36,40
	NOP		;;36,40
	NOP		;;36,40
	NOP		;;36,40
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
