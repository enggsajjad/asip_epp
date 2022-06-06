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
	LI	%GPR2, *_b	
	NOP		;;5,7
	NOP		;;5,7
	LI	%GPR3, *_c	
	LI	%GPR5, *_a	
	LI	%GPR4, *_b	
	LI	%GPR6, *_c	
	LI	%GPR7, *_c	
	LI	%GPR8, *_c	
	NOP		;;12,37
	NOP		;;12,37
	NOP		;;12,37
	NOP		;;12,37
	NOP		;;12,37
	NOP		;;12,37
	NOP		;;12,37
	NOP		;;12,37
	NOP		;;12,37
	NOP		;;12,37
	NOP		;;12,37
	NOP		;;12,37
	NOP		;;12,37
	NOP		;;12,37
	NOP		;;12,37
	NOP		;;12,37
	NOP		;;12,37
	NOP		;;12,37
	NOP		;;12,37
	NOP		;;12,37
	NOP		;;12,37
	NOP		;;12,37
	NOP		;;12,37
	NOP		;;12,37
	NOP		;;12,37
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$3	
	NOP		;;37,39
	NOP		;;37,39
	lhi	%GPR10,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR10,%GPR10,$5	
	NOP		;;39,41
	NOP		;;39,41
	sw	0(%GPR1),%GPR9	
	lhi	%GPR11,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR11,%GPR11,$7	
	NOP		;;42,45
	NOP		;;42,45
	NOP		;;42,45
	sw	0(%GPR2),%GPR10	
	NOP		;;45,49
	NOP		;;45,49
	NOP		;;45,49
	NOP		;;45,49
	sw	0(%GPR3),%GPR11	
	NOP		;;49,53
	NOP		;;49,53
	NOP		;;49,53
	NOP		;;49,53
	lw	%GPR1,0(%GPR5)	
	lw	%GPR2,0(%GPR4)	
	lw	%GPR3,0(%GPR6)	
	NOP		;;55,58
	NOP		;;55,58
	NOP		;;55,58
	mult	%GPR1,%GPR1,%GPR2	
	NOP		;;58,94
	NOP		;;58,94
	NOP		;;58,94
	NOP		;;58,94
	NOP		;;58,94
	NOP		;;58,94
	NOP		;;58,94
	NOP		;;58,94
	NOP		;;58,94
	NOP		;;58,94
	NOP		;;58,94
	NOP		;;58,94
	NOP		;;58,94
	NOP		;;58,94
	NOP		;;58,94
	NOP		;;58,94
	NOP		;;58,94
	NOP		;;58,94
	NOP		;;58,94
	NOP		;;58,94
	NOP		;;58,94
	NOP		;;58,94
	NOP		;;58,94
	NOP		;;58,94
	NOP		;;58,94
	NOP		;;58,94
	NOP		;;58,94
	NOP		;;58,94
	NOP		;;58,94
	NOP		;;58,94
	NOP		;;58,94
	NOP		;;58,94
	NOP		;;58,94
	NOP		;;58,94
	NOP		;;58,94
	NOP		;;58,94
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;94,98
	NOP		;;94,98
	NOP		;;94,98
	NOP		;;94,98
	sw	0(%GPR7),%GPR1	
	NOP		;;98,102
	NOP		;;98,102
	NOP		;;98,102
	NOP		;;98,102
	lw	%GPR28,0(%GPR8)	
	NOP		;;102,106
	NOP		;;102,106
	NOP		;;102,106
	NOP		;;102,106
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
