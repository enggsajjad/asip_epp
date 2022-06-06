	.section	.data
	;.global	_g8
	.align	4
_g8:
	.space	4
	;.global	_g9
	.align	4
_g9:
	.space	4
	;.global	_g10
	.align	4
_g10:
	.data.32	10
	;.global	_g11
	.align	4
_g11:
	.data.32	11
	.align	4
L1:
	.data.32	12
	.align	4
L2:
	.data.32	13
	.section	.text
function1:
L3:
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
	add	%GPR28,%GPR1,%GPR2	
	NOP		;;3,7
	NOP		;;3,7
	NOP		;;3,7
	NOP		;;3,7
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
function2:
L5:
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
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;3,7
	NOP		;;3,7
	NOP		;;3,7
	NOP		;;3,7
	add	%GPR1,%GPR1,%GPR3	
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	add	%GPR1,%GPR1,%GPR4	
	NOP		;;11,15
	NOP		;;11,15
	NOP		;;11,15
	NOP		;;11,15
	add	%GPR1,%GPR1,%GPR5	
	NOP		;;15,19
	NOP		;;15,19
	NOP		;;15,19
	NOP		;;15,19
	add	%GPR1,%GPR1,%GPR6	
	NOP		;;19,23
	NOP		;;19,23
	NOP		;;19,23
	NOP		;;19,23
	add	%GPR1,%GPR1,%GPR7	
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	add	%GPR1,%GPR1,%GPR8	
	NOP		;;27,31
	NOP		;;27,31
	NOP		;;27,31
	NOP		;;27,31
	add	%GPR1,%GPR1,%GPR9	
	NOP		;;31,35
	NOP		;;31,35
	NOP		;;31,35
	NOP		;;31,35
	add	%GPR1,%GPR1,%GPR10	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	add	%GPR1,%GPR1,%GPR11	
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	add	%GPR1,%GPR1,%GPR12	
	NOP		;;43,47
	NOP		;;43,47
	NOP		;;43,47
	NOP		;;43,47
	add	%GPR28,%GPR1,%GPR13	
	NOP		;;47,51
	NOP		;;47,51
	NOP		;;47,51
	NOP		;;47,51
	j	L6	
	NOP		
	NOP		
	NOP		
	NOP		
L6:
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
function3:
L7:
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
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;3,7
	NOP		;;3,7
	NOP		;;3,7
	NOP		;;3,7
	add	%GPR1,%GPR1,%GPR3	
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	add	%GPR1,%GPR1,%GPR4	
	NOP		;;11,15
	NOP		;;11,15
	NOP		;;11,15
	NOP		;;11,15
	add	%GPR1,%GPR1,%GPR5	
	NOP		;;15,19
	NOP		;;15,19
	NOP		;;15,19
	NOP		;;15,19
	add	%GPR1,%GPR1,%GPR6	
	NOP		;;19,23
	NOP		;;19,23
	NOP		;;19,23
	NOP		;;19,23
	add	%GPR1,%GPR1,%GPR7	
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	add	%GPR1,%GPR1,%GPR8	
	NOP		;;27,31
	NOP		;;27,31
	NOP		;;27,31
	NOP		;;27,31
	add	%GPR1,%GPR1,%GPR9	
	NOP		;;31,35
	NOP		;;31,35
	NOP		;;31,35
	NOP		;;31,35
	add	%GPR1,%GPR1,%GPR10	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	add	%GPR1,%GPR1,%GPR11	
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	add	%GPR1,%GPR1,%GPR12	
	NOP		;;43,47
	NOP		;;43,47
	NOP		;;43,47
	NOP		;;43,47
	add	%GPR1,%GPR1,%GPR13	
	NOP		;;47,51
	NOP		;;47,51
	NOP		;;47,51
	NOP		;;47,51
	add	%GPR1,%GPR1,%GPR14	
	NOP		;;51,55
	NOP		;;51,55
	NOP		;;51,55
	NOP		;;51,55
	add	%GPR1,%GPR1,%GPR15	
	NOP		;;55,59
	NOP		;;55,59
	NOP		;;55,59
	NOP		;;55,59
	add	%GPR2,%GPR1,%GPR16	
	lw	%GPR1,12(%GPR30)	
	NOP		;;60,63
	NOP		;;60,63
	NOP		;;60,63
	add	%GPR3,%GPR2,%GPR17	
	lw	%GPR2,16(%GPR30)	
	NOP		;;64,67
	NOP		;;64,67
	NOP		;;64,67
	add	%GPR4,%GPR3,%GPR18	
	lw	%GPR3,20(%GPR30)	
	NOP		;;68,71
	NOP		;;68,71
	NOP		;;68,71
	add	%GPR5,%GPR4,%GPR19	
	lw	%GPR4,24(%GPR30)	
	NOP		;;72,75
	NOP		;;72,75
	NOP		;;72,75
	add	%GPR6,%GPR5,%GPR20	
	lw	%GPR5,28(%GPR30)	
	NOP		;;76,79
	NOP		;;76,79
	NOP		;;76,79
	add	%GPR7,%GPR6,%GPR21	
	lw	%GPR6,32(%GPR30)	
	NOP		;;80,83
	NOP		;;80,83
	NOP		;;80,83
	add	%GPR7,%GPR7,%GPR22	
	NOP		;;83,87
	NOP		;;83,87
	NOP		;;83,87
	NOP		;;83,87
	add	%GPR7,%GPR7,%GPR23	
	NOP		;;87,91
	NOP		;;87,91
	NOP		;;87,91
	NOP		;;87,91
	add	%GPR7,%GPR7,%GPR24	
	NOP		;;91,95
	NOP		;;91,95
	NOP		;;91,95
	NOP		;;91,95
	add	%GPR7,%GPR7,%GPR25	
	NOP		;;95,99
	NOP		;;95,99
	NOP		;;95,99
	NOP		;;95,99
	add	%GPR7,%GPR7,%GPR26	
	NOP		;;99,103
	NOP		;;99,103
	NOP		;;99,103
	NOP		;;99,103
	add	%GPR7,%GPR7,%GPR27	
	NOP		;;103,107
	NOP		;;103,107
	NOP		;;103,107
	NOP		;;103,107
	add	%GPR1,%GPR7,%GPR1	
	NOP		;;107,111
	NOP		;;107,111
	NOP		;;107,111
	NOP		;;107,111
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;111,115
	NOP		;;111,115
	NOP		;;111,115
	NOP		;;111,115
	add	%GPR1,%GPR1,%GPR3	
	NOP		;;115,119
	NOP		;;115,119
	NOP		;;115,119
	NOP		;;115,119
	add	%GPR1,%GPR1,%GPR4	
	NOP		;;119,123
	NOP		;;119,123
	NOP		;;119,123
	NOP		;;119,123
	add	%GPR1,%GPR1,%GPR5	
	NOP		;;123,127
	NOP		;;123,127
	NOP		;;123,127
	NOP		;;123,127
	add	%GPR28,%GPR1,%GPR6	
	NOP		;;127,131
	NOP		;;127,131
	NOP		;;127,131
	NOP		;;127,131
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
main:
L9:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$36	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR7, *L1	
	LI	%GPR6, *_g11	
	LI	%GPR5, *_g10	
	LI	%GPR4, *_g9	
	LI	%GPR3, *_g8	
	LI	%GPR13, *L2	
	NOP		;;7,15
	NOP		;;7,15
	NOP		;;7,15
	NOP		;;7,15
	NOP		;;7,15
	NOP		;;7,15
	NOP		;;7,15
	NOP		;;7,15
	lw	%GPR12,0(%GPR7)	
	lw	%GPR11,0(%GPR6)	
	lw	%GPR10,0(%GPR5)	
	lw	%GPR9,0(%GPR4)	
	lw	%GPR8,0(%GPR3)	
	lw	%GPR13,0(%GPR13)	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$23	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$42	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$7	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$6	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$5	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$3	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$32	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	function2	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$32	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;28,31
	NOP		;;28,31
	NOP		;;28,31
	sw	-4(%GPR30),%GPR28	
	NOP		;;31,33
	NOP		;;31,33
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$23	
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
	subi	%GPR29,%GPR29,$32	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	function1	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$32	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;35,40
	NOP		;;35,40
	NOP		;;35,40
	NOP		;;35,40
	NOP		;;35,40
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$1	
	NOP		;;40,44
	NOP		;;40,44
	NOP		;;40,44
	NOP		;;40,44
	sw	-8(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$2	
	NOP		;;45,49
	NOP		;;45,49
	NOP		;;45,49
	NOP		;;45,49
	sw	-12(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$3	
	NOP		;;50,53
	NOP		;;50,53
	NOP		;;50,53
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$32	
	sw	-16(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$4	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$31	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$30	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$29	
	sw	-20(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$5	
	NOP		;;60,64
	NOP		;;60,64
	NOP		;;60,64
	NOP		;;60,64
	sw	-24(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$28	
	NOP		;;65,85
	NOP		;;65,85
	NOP		;;65,85
	NOP		;;65,85
	NOP		;;65,85
	NOP		;;65,85
	NOP		;;65,85
	NOP		;;65,85
	NOP		;;65,85
	NOP		;;65,85
	NOP		;;65,85
	NOP		;;65,85
	NOP		;;65,85
	NOP		;;65,85
	NOP		;;65,85
	NOP		;;65,85
	NOP		;;65,85
	NOP		;;65,85
	NOP		;;65,85
	NOP		;;65,85
	sw	-28(%GPR30),%GPR28	
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$33	
	sw	-24(%GPR29),%GPR5	
	sw	-20(%GPR29),%GPR4	
	sw	-16(%GPR29),%GPR3	
	sw	-12(%GPR29),%GPR2	
	sw	-8(%GPR29),%GPR1	
	sw	-28(%GPR29),%GPR28	
	lhi	%GPR27,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR27,%GPR27,$27	
	lhi	%GPR26,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR26,%GPR26,$26	
	lhi	%GPR25,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR25,%GPR25,$25	
	lhi	%GPR24,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR24,%GPR24,$24	
	lhi	%GPR23,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR23,%GPR23,$23	
	lhi	%GPR22,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR22,%GPR22,$22	
	lhi	%GPR21,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR21,%GPR21,$21	
	lhi	%GPR20,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR20,%GPR20,$20	
	lhi	%GPR19,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR19,%GPR19,$19	
	lhi	%GPR18,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR18,%GPR18,$18	
	lhi	%GPR17,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR17,%GPR17,$17	
	lhi	%GPR16,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR16,%GPR16,$16	
	lhi	%GPR15,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR15,%GPR15,$15	
	lhi	%GPR14,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR14,%GPR14,$14	
	lhi	%GPR13,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR13,%GPR13,$13	
	lhi	%GPR12,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR12,%GPR12,$12	
	lhi	%GPR11,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR11,%GPR11,$11	
	lhi	%GPR10,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR10,%GPR10,$10	
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$9	
	lhi	%GPR8,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR8,%GPR8,$8	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$7	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$6	
	lw	%GPR5,-24(%GPR30)	
	lw	%GPR4,-20(%GPR30)	
	lw	%GPR3,-16(%GPR30)	
	lw	%GPR2,-12(%GPR30)	
	lw	%GPR1,-8(%GPR30)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$32	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	function3	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$32	
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR1,-28(%GPR30)	
	lw	%GPR2,-4(%GPR30)	
	NOP		;;122,125
	NOP		;;122,125
	NOP		;;122,125
	add	%GPR1,%GPR1,%GPR28	
	NOP		;;125,129
	NOP		;;125,129
	NOP		;;125,129
	NOP		;;125,129
	mult	%GPR28,%GPR2,%GPR1	
	NOP		;;129,133
	NOP		;;129,133
	NOP		;;129,133
	NOP		;;129,133
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
