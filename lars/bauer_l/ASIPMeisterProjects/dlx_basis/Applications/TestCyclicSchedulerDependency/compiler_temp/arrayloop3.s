	.section	.data
	;.global	_resultMax
	.align	4
_resultMax:
	.space	20
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
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
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
	NOP		;;0,3
	NOP		;;0,3
	NOP		;;0,3
	LI	%GPR4, *_resultMax	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$5	
	NOP		;;6,8
	NOP		;;6,8
	mult	%GPR6,%GPR1,%GPR2	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$5	
	NOP		;;9,12
	NOP		;;9,12
	NOP		;;9,12
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$7	
		
  
  nop
  nop
  nop
  minmax %GPR2, %GPR3, %GPR3, %GPR2
  nop
  nop
  nop
	
	add	%GPR2,%GPR4,%GPR6	
	addi	%GPR1,%GPR1,$1	
	NOP		;;15,18
	NOP		;;15,18
	NOP		;;15,18
	lw	%GPR2,0(%GPR2)	
	slt	%GPR27,%GPR1,%GPR5	
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
L3:
	j	L4	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	LI	%GPR2, *_resultMax	
	lw	%GPR3,-4(%GPR30)	
	NOP		;;6,8
	NOP		;;6,8
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	mult	%GPR1,%GPR1,%GPR4	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	add	%GPR1,%GPR2,%GPR1	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sw	0(%GPR1),%GPR3	
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
