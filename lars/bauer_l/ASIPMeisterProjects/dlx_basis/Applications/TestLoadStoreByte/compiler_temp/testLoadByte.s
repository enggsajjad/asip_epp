	.section	.data
	;.global	_string1
_string1:
	.data.8	72
	.data.8	97
	.data.8	108
	.data.8	108
	.data.8	111
	.data.8	32
	.data.8	87
	.data.8	101
	.data.8	108
	.data.8	116
	.data.8	10
	.space	1
	.space	1
	.space	1
	.space	1
	;.global	_string2
_string2:
	.data.8	71
	.data.8	117
	.data.8	116
	.data.8	101
	.data.8	110
	.data.8	32
	.data.8	84
	.data.8	97
	.data.8	103
	.data.8	33
	.data.8	10
	.space	1
	.space	1
	.space	1
	;.global	_ch
_ch:
	.data.8	-1
	;.global	_signedch
	.align	4
_signedch:
	.space	4
	.section	.text
putString:
L1:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$12	
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
L2:
	lw	%GPR1,-4(%GPR30)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	add	%GPR3,%GPR1,%GPR0	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	add	%GPR2,%GPR3,%GPR2	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	sw	-4(%GPR30),%GPR2	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	loadByteUnsigned	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	add	%GPR1,%GPR28,%GPR0	
		
  
  nop
  nop
  nop
  putc %GPR1
	
	NOP		;;16,21
	NOP		;;16,21
	NOP		;;16,21
	NOP		;;16,21
	NOP		;;16,21
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	sne	%GPR27,%GPR1,%GPR2	
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
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
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
main:
L5:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$16	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR2, *_signedch	
	LI	%GPR1, *_ch	
	NOP		;;3,6
	NOP		;;3,6
	NOP		;;3,6
	sw	-4(%GPR30),%GPR2	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	loadByteSigned	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *_string1	
	lw	%GPR2,-4(%GPR30)	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	sw	0(%GPR2),%GPR28	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	putString	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;14,19
	NOP		;;14,19
	NOP		;;14,19
	NOP		;;14,19
	NOP		;;14,19
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;19,23
	NOP		;;19,23
	NOP		;;19,23
	NOP		;;19,23
	sw	-8(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
L6:
	LI	%GPR1, *_string2	
	lw	%GPR2,-8(%GPR30)	
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;5,10
	NOP		;;5,10
	NOP		;;5,10
	NOP		;;5,10
	NOP		;;5,10
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	loadByteUnsigned	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *_string1	
	lw	%GPR3,-8(%GPR30)	
	add	%GPR2,%GPR28,%GPR0	
	NOP		;;13,16
	NOP		;;13,16
	NOP		;;13,16
	add	%GPR1,%GPR1,%GPR3	
	NOP		;;16,21
	NOP		;;16,21
	NOP		;;16,21
	NOP		;;16,21
	NOP		;;16,21
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	storeByte	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR1,-8(%GPR30)	
	NOP		;;22,26
	NOP		;;22,26
	NOP		;;22,26
	NOP		;;22,26
	addi	%GPR1,%GPR1,$1	
	NOP		;;26,30
	NOP		;;26,30
	NOP		;;26,30
	NOP		;;26,30
	add	%GPR2,%GPR1,%GPR0	
	sw	-8(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$13	
	NOP		;;32,36
	NOP		;;32,36
	NOP		;;32,36
	NOP		;;32,36
	slt	%GPR27,%GPR2,%GPR1	
	bnez	%GPR27,L6	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L7	
	NOP		
	NOP		
	NOP		
	NOP		
L7:
	LI	%GPR1, *_string1	
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	putString	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;5,10
	NOP		;;5,10
	NOP		;;5,10
	NOP		;;5,10
	NOP		;;5,10
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	j	L8	
	NOP		
	NOP		
	NOP		
	NOP		
L8:
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
