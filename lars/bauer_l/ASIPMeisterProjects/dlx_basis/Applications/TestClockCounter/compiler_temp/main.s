	.section	.data
	;.global	_globVal
	.align	4
_globVal:
	.space	4
L1:
	.data.8	83
	.data.8	111
	.data.8	109
	.data.8	101
	.data.8	32
	.data.8	86
	.data.8	97
	.data.8	108
	.data.8	117
	.data.8	101
	.data.8	58
	.data.8	32
	.space	1
L2:
	.data.8	13
	.data.8	10
	.space	1
L3:
	.data.8	82
	.data.8	101
	.data.8	97
	.data.8	100
	.data.8	32
	.data.8	67
	.data.8	108
	.data.8	111
	.data.8	99
	.data.8	107
	.data.8	67
	.data.8	111
	.data.8	117
	.data.8	110
	.data.8	116
	.data.8	101
	.data.8	114
	.data.8	58
	.data.8	32
	.space	1
L4:
	.data.8	13
	.data.8	10
	.space	1
L5:
	.data.8	82
	.data.8	101
	.data.8	97
	.data.8	100
	.data.8	32
	.data.8	67
	.data.8	108
	.data.8	111
	.data.8	99
	.data.8	107
	.data.8	67
	.data.8	111
	.data.8	117
	.data.8	110
	.data.8	116
	.data.8	101
	.data.8	114
	.data.8	58
	.data.8	32
	.space	1
L6:
	.data.8	13
	.data.8	10
	.space	1
	.section	.text
main:
L7:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$12	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;1,3
	NOP		;;1,3
	LI	%GPR1, *L1	
	NOP		;;3,6
	NOP		;;3,6
	NOP		;;3,6
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1	
	NOP		;;6,10
	NOP		;;6,10
	NOP		;;6,10
	NOP		;;6,10
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
	jal	u_print	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;11,16
	NOP		;;11,16
	NOP		;;11,16
	NOP		;;11,16
	NOP		;;11,16
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$42	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	u_printInt	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *L2	
	NOP		;;18,23
	NOP		;;18,23
	NOP		;;18,23
	NOP		;;18,23
	NOP		;;18,23
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	u_print	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;23,28
	NOP		;;23,28
	NOP		;;23,28
	NOP		;;23,28
	NOP		;;23,28
	lhi	%GPR1,$6	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$424242	
		
 
	lhi	%GPR2, $0x300
	nop
	nop
	nop
	sw	0(%GPR2), %GPR1
	
	LI	%GPR2, *_globVal	
		

	lhi	%GPR3,$0x300
	nop
	nop
	nop
	lw	%GPR3, 0(%GPR3)
	nop
	nop
	nop
	
	LI	%GPR1, *L3	
	sw	0(%GPR2),%GPR3	
	NOP		;;33,37
	NOP		;;33,37
	NOP		;;33,37
	NOP		;;33,37
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_print	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *_globVal	
	NOP		;;38,42
	NOP		;;38,42
	NOP		;;38,42
	NOP		;;38,42
	lw	%GPR1,0(%GPR1)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_printInt	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *L4	
	NOP		;;44,49
	NOP		;;44,49
	NOP		;;44,49
	NOP		;;44,49
	NOP		;;44,49
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_print	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;49,54
	NOP		;;49,54
	NOP		;;49,54
	NOP		;;49,54
	NOP		;;49,54
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
		
 
	lhi	%GPR2, $0x300
	nop
	nop
	nop
	sw	0(%GPR2), %GPR1
	
	NOP		;;55,60
	NOP		;;55,60
	NOP		;;55,60
	NOP		;;55,60
	NOP		;;55,60
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		
	NOP		
	NOP		
L8:
	lw	%GPR2,-4(%GPR30)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	mult	%GPR2,%GPR2,%GPR1	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sw	-4(%GPR30),%GPR2	
	addi	%GPR1,%GPR1,$1	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$128	
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	slt	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L8	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L9	
	NOP		
	NOP		
	NOP		
	NOP		
L9:
	LI	%GPR2, *_globVal	
		

	lhi	%GPR3,$0x300
	nop
	nop
	nop
	lw	%GPR3, 0(%GPR3)
	nop
	nop
	nop
	
	LI	%GPR1, *L5	
	sw	0(%GPR2),%GPR3	
	NOP		;;3,7
	NOP		;;3,7
	NOP		;;3,7
	NOP		;;3,7
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_print	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *_globVal	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	lw	%GPR1,0(%GPR1)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_printInt	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *L6	
	NOP		;;14,19
	NOP		;;14,19
	NOP		;;14,19
	NOP		;;14,19
	NOP		;;14,19
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_print	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR28,-4(%GPR30)	
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	j	L10	
	NOP		
	NOP		
	NOP		
	NOP		
L10:
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