	.section	.data
	;.global	_a
	.align	4
_a:
	.data.32	5
	;.global	_b
	.align	4
_b:
	.data.32	7
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
	LI	%GPR2, *_a	
	LI	%GPR1, *_b	
	NOP		;;3,37
	NOP		;;3,37
	NOP		;;3,37
	NOP		;;3,37
	NOP		;;3,37
	NOP		;;3,37
	NOP		;;3,37
	NOP		;;3,37
	NOP		;;3,37
	NOP		;;3,37
	NOP		;;3,37
	NOP		;;3,37
	NOP		;;3,37
	NOP		;;3,37
	NOP		;;3,37
	NOP		;;3,37
	NOP		;;3,37
	NOP		;;3,37
	NOP		;;3,37
	NOP		;;3,37
	NOP		;;3,37
	NOP		;;3,37
	NOP		;;3,37
	NOP		;;3,37
	NOP		;;3,37
	NOP		;;3,37
	NOP		;;3,37
	NOP		;;3,37
	NOP		;;3,37
	NOP		;;3,37
	NOP		;;3,37
	NOP		;;3,37
	NOP		;;3,37
	NOP		;;3,37
	lw	%GPR2,0(%GPR2)	
	lw	%GPR1,0(%GPR1)	
	NOP		;;38,42
	NOP		;;38,42
	NOP		;;38,42
	NOP		;;38,42
	slt	%GPR27,%GPR2,%GPR1	
	NOP		;;42,46
	NOP		;;42,46
	NOP		;;42,46
	NOP		;;42,46
	bnez	%GPR27,L2	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L3	
	NOP		
	NOP		
	NOP		
	NOP		
L2:
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$1	
	j	L4	
	NOP		
	NOP		
	NOP		
L3:
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		
	NOP		
	NOP		
L4:
	j	L5	
	NOP		
	NOP		
	NOP		
	NOP		
L5:
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
