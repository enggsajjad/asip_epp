	.section	.data
L1:
	.data.8	72
	.data.8	101
	.data.8	108
	.data.8	108
	.data.8	111
	.data.8	32
	.data.8	87
	.data.8	111
	.data.8	114
	.data.8	108
	.data.8	100
	.data.8	33
	.space	1
	.space	1
	.section	.text
println:
L2:
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
	NOP		;;0,2
	NOP		;;0,2
	NOP		
	NOP		
	NOP		
	NOP		;;2,7
	NOP		;;2,7
	NOP		;;2,7
	NOP		;;2,7
	NOP		;;2,7
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$2	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$17	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		;;9,11
	NOP		;;9,11
	mult	%GPR2,%GPR2,%GPR5	
	NOP		;;11,15
	NOP		;;11,15
	NOP		;;11,15
	NOP		;;11,15
	NOP		
	NOP		
	NOP		
L3:
	add	%GPR5,%GPR1,%GPR3	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lbu	%GPR5,0(%GPR5)	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$0	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	sne	%GPR27,%GPR5,%GPR6	
	bnez	%GPR27,L4	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L5	
	NOP		
	NOP		
	NOP		
	NOP		
L4:
	addi	%GPR3,%GPR3,$1	
	j	L3	
	NOP		
	NOP		
	NOP		
L5:
	addi	%GPR5,%GPR3,$5	
	NOP		;;0,9
	NOP		;;0,9
	NOP		;;0,9
	NOP		;;0,9
	NOP		;;0,9
	NOP		;;0,9
	NOP		;;0,9
	NOP		;;0,9
	NOP		;;0,9
		


  nop
  nop
  nop
  putc %GPR5
  nop
  nop
  nop
	
	add	%GPR5,%GPR2,%GPR0	
	NOP		;;10,19
	NOP		;;10,19
	NOP		;;10,19
	NOP		;;10,19
	NOP		;;10,19
	NOP		;;10,19
	NOP		;;10,19
	NOP		;;10,19
	NOP		;;10,19
		


  nop
  nop
  nop
  putc %GPR5
  nop
  nop
  nop
	
	add	%GPR2,%GPR4,%GPR0	
	NOP		;;20,29
	NOP		;;20,29
	NOP		;;20,29
	NOP		;;20,29
	NOP		;;20,29
	NOP		;;20,29
	NOP		;;20,29
	NOP		;;20,29
	NOP		;;20,29
		


  nop
  nop
  nop
  putc %GPR2
  nop
  nop
  nop
	
	addui	%GPR5,%GPR3,$2	
	NOP		;;30,34
	NOP		;;30,34
	NOP		;;30,34
	NOP		;;30,34
	add	%GPR2,%GPR5,%GPR0	
	NOP		;;34,43
	NOP		;;34,43
	NOP		;;34,43
	NOP		;;34,43
	NOP		;;34,43
	NOP		;;34,43
	NOP		;;34,43
	NOP		;;34,43
	NOP		;;34,43
		


  nop
  nop
  nop
  putc %GPR2
  nop
  nop
  nop
	
	addi	%GPR2,%GPR3,$2	
	NOP		;;44,48
	NOP		;;44,48
	NOP		;;44,48
	NOP		;;44,48
	add	%GPR4,%GPR4,%GPR2	
	NOP		
	NOP		
	NOP		
L6:
	lbu	%GPR2,0(%GPR1)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sne	%GPR27,%GPR2,%GPR3	
	bnez	%GPR27,L7	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L8	
	NOP		
	NOP		
	NOP		
	NOP		
L7:
	lbu	%GPR2,0(%GPR1)	
	NOP		;;0,9
	NOP		;;0,9
	NOP		;;0,9
	NOP		;;0,9
	NOP		;;0,9
	NOP		;;0,9
	NOP		;;0,9
	NOP		;;0,9
	NOP		;;0,9
		


  nop
  nop
  nop
  putc %GPR2
  nop
  nop
  nop
	
	NOP		;;9,11
	NOP		;;9,11
	add	%GPR4,%GPR4,%GPR5	
	NOP		;;11,14
	NOP		;;11,14
	NOP		;;11,14
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1	
	NOP		;;14,18
	NOP		;;14,18
	NOP		;;14,18
	NOP		;;14,18
	add	%GPR1,%GPR1,%GPR2	
	j	L6	
	NOP		
	NOP		
	NOP		
L8:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$13	
		


  nop
  nop
  nop
  putc %GPR1
  nop
  nop
  nop
	
	NOP		;;5,7
	NOP		;;5,7
	addi	%GPR4,%GPR4,$10	
	NOP		;;7,10
	NOP		;;7,10
	NOP		;;7,10
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$10	
		


  nop
  nop
  nop
  putc %GPR1
  nop
  nop
  nop
	
	addi	%GPR4,%GPR4,$13	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	add	%GPR5,%GPR4,%GPR0	
	NOP		;;16,25
	NOP		;;16,25
	NOP		;;16,25
	NOP		;;16,25
	NOP		;;16,25
	NOP		;;16,25
	NOP		;;16,25
	NOP		;;16,25
	NOP		;;16,25
		


  nop
  nop
  nop
  putc %GPR5
  nop
  nop
  nop
	
	NOP		;;25,30
	NOP		;;25,30
	NOP		;;25,30
	NOP		;;25,30
	NOP		;;25,30
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$42	
	NOP		;;30,34
	NOP		;;30,34
	NOP		;;30,34
	NOP		;;30,34
	j	L9	
	NOP		
	NOP		
	NOP		
	NOP		
L9:
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
L10:
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
	LI	%GPR1, *L1	
	NOP		;;2,7
	NOP		;;2,7
	NOP		;;2,7
	NOP		;;2,7
	NOP		;;2,7
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$111	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	println	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L11	
	NOP		
	NOP		
	NOP		
	NOP		
L11:
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
