	.section	.data
	;.global	_pattern
	.align	4
_pattern:
	.data.32	-1431655766
	.data.32	305419896
	.data.32	-2023406815
	.data.32	-252645136
	.data.32	252645135
	.data.32	1414812756
	.data.32	-2021387930
	.data.32	-11251423
	.data.32	-1157911534
	.data.32	1680958601
	.data.32	-559038801
	;.global	_errorNumber
	.align	4
_errorNumber:
	.data.32	42
	;.global	_heapEnd
	.align	4
_heapEnd:
	.space	4
	;.global	_errorCounter_thisTest
	.align	4
_errorCounter_thisTest:
	.space	4
	;.global	_errorCounter_overall
	.align	4
_errorCounter_overall:
	.space	4
	;.global	_testNumber
	.align	4
_testNumber:
	.space	4
L1:
	.data.8	13
	.data.8	10
	.data.8	77
	.data.8	69
	.data.8	77
	.data.8	79
	.data.8	82
	.data.8	89
	.data.8	32
	.data.8	84
	.data.8	69
	.data.8	83
	.data.8	84
	.data.8	32
	.data.8	40
	.space	1
L2:
	.data.8	32
	.data.8	45
	.data.8	32
	.space	1
L3:
	.data.8	41
	.data.8	13
	.data.8	10
	.data.8	13
	.data.8	10
	.data.8	69
	.data.8	114
	.data.8	114
	.data.8	111
	.data.8	114
	.data.8	115
	.data.8	32
	.data.8	40
	.data.8	116
	.data.8	111
	.data.8	116
	.data.8	97
	.data.8	108
	.data.8	41
	.data.8	58
	.data.8	32
	.space	1
L4:
	.data.8	13
	.data.8	10
	.data.8	69
	.data.8	114
	.data.8	114
	.data.8	111
	.data.8	114
	.data.8	115
	.data.8	32
	.data.8	40
	.data.8	116
	.data.8	101
	.data.8	115
	.data.8	116
	.data.8	32
	.space	1
L5:
	.data.8	41
	.data.8	58
	.data.8	32
	.space	1
L6:
	.data.8	13
	.data.8	10
	.data.8	13
	.data.8	10
	.space	1
L7:
	.data.8	12
	.space	1
L8:
	.data.8	80
	.data.8	97
	.data.8	116
	.data.8	116
	.data.8	101
	.data.8	114
	.data.8	110
	.data.8	32
	.space	1
L9:
	.data.8	58
	.data.8	32
	.data.8	40
	.space	1
L10:
	.data.8	41
	.data.8	32
	.data.8	32
	.data.8	32
	.data.8	32
	.data.8	32
	.data.8	32
	.data.8	32
	.data.8	32
	.data.8	13
	.data.8	10
	.data.8	87
	.data.8	114
	.data.8	105
	.data.8	116
	.data.8	105
	.data.8	110
	.data.8	103
	.data.8	58
	.data.8	32
	.space	1
L11:
	.data.8	46
	.space	1
L12:
	.data.8	13
	.data.8	10
	.data.8	82
	.data.8	101
	.data.8	97
	.data.8	100
	.data.8	105
	.data.8	110
	.data.8	103
	.data.8	58
	.data.8	32
	.space	1
L13:
	.data.8	46
	.space	1
L14:
	.data.8	13
	.data.8	10
	.data.8	69
	.data.8	82
	.data.8	82
	.data.8	79
	.data.8	82
	.data.8	58
	.data.8	32
	.data.8	65
	.data.8	100
	.data.8	114
	.data.8	101
	.data.8	115
	.data.8	115
	.data.8	101
	.data.8	58
	.data.8	32
	.space	1
L15:
	.data.8	13
	.data.8	10
	.data.8	32
	.data.8	32
	.data.8	119
	.data.8	114
	.data.8	105
	.data.8	116
	.data.8	116
	.data.8	101
	.data.8	110
	.data.8	58
	.data.8	32
	.space	1
L16:
	.data.8	32
	.data.8	32
	.data.8	114
	.data.8	101
	.data.8	97
	.data.8	100
	.data.8	58
	.data.8	32
	.space	1
L17:
	.data.8	13
	.data.8	10
	.space	1
	.section	.text
refreshScreen:
L18:
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
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_restoreLastSavedCursorPositio	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *L1	
	NOP		;;3,8
	NOP		;;3,8
	NOP		;;3,8
	NOP		;;3,8
	NOP		;;3,8
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
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$8	
	lhi	%GPR1,$1024	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$67108864	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_printHex	
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
	NOP		;;21,26
	NOP		;;21,26
	NOP		;;21,26
	NOP		;;21,26
	NOP		;;21,26
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$8	
	lhi	%GPR1,$1087	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$71303164	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_printHex	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *L3	
	NOP		;;29,34
	NOP		;;29,34
	NOP		;;29,34
	NOP		;;29,34
	NOP		;;29,34
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
	LI	%GPR1, *_errorCounter_overall	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	lw	%GPR1,0(%GPR1)	
	NOP		;;39,44
	NOP		;;39,44
	NOP		;;39,44
	NOP		;;39,44
	NOP		;;39,44
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
	NOP		;;45,50
	NOP		;;45,50
	NOP		;;45,50
	NOP		;;45,50
	NOP		;;45,50
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
	LI	%GPR1, *_testNumber	
	NOP		;;51,55
	NOP		;;51,55
	NOP		;;51,55
	NOP		;;51,55
	lw	%GPR1,0(%GPR1)	
	NOP		;;55,60
	NOP		;;55,60
	NOP		;;55,60
	NOP		;;55,60
	NOP		;;55,60
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
	LI	%GPR1, *L5	
	NOP		;;61,66
	NOP		;;61,66
	NOP		;;61,66
	NOP		;;61,66
	NOP		;;61,66
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
	LI	%GPR1, *_errorCounter_thisTest	
	NOP		;;67,71
	NOP		;;67,71
	NOP		;;67,71
	NOP		;;67,71
	lw	%GPR1,0(%GPR1)	
	NOP		;;71,76
	NOP		;;71,76
	NOP		;;71,76
	NOP		;;71,76
	NOP		;;71,76
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
	NOP		;;77,82
	NOP		;;77,82
	NOP		;;77,82
	NOP		;;77,82
	NOP		;;77,82
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
	NOP		;;82,87
	NOP		;;82,87
	NOP		;;82,87
	NOP		;;82,87
	NOP		;;82,87
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		;;87,91
	NOP		;;87,91
	NOP		;;87,91
	NOP		;;87,91
	j	L19	
	NOP		
	NOP		
	NOP		
	NOP		
L19:
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
L20:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$32	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *L7	
	NOP		;;2,7
	NOP		;;2,7
	NOP		;;2,7
	NOP		;;2,7
	NOP		;;2,7
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
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_saveCursorPosition	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
L21:
	LI	%GPR1, *_errorCounter_thisTest	
	NOP		;;1,3
	NOP		;;1,3
	LI	%GPR2, *_testNumber	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	LI	%GPR3, *_testNumber	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	sw	0(%GPR1),%GPR4	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	sw	-4(%GPR30),%GPR1	
	lw	%GPR1,0(%GPR2)	
	NOP		;;14,18
	NOP		;;14,18
	NOP		;;14,18
	NOP		;;14,18
	addui	%GPR1,%GPR1,$1	
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	sw	0(%GPR3),%GPR1	
	NOP		
	NOP		
	NOP		
L22:
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	refreshScreen	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *L8	
	NOP		;;1,6
	NOP		;;1,6
	NOP		;;1,6
	NOP		;;1,6
	NOP		;;1,6
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
	lw	%GPR1,-4(%GPR30)	
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
	LI	%GPR1, *L9	
	NOP		;;9,14
	NOP		;;9,14
	NOP		;;9,14
	NOP		;;9,14
	NOP		;;9,14
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
	NOP		;;14,16
	NOP		;;14,16
	lw	%GPR4,-8(%GPR30)	
	LI	%GPR1, *_pattern	
	NOP		;;17,19
	NOP		;;17,19
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$4	
	NOP		;;19,23
	NOP		;;19,23
	NOP		;;19,23
	NOP		;;19,23
	mult	%GPR3,%GPR4,%GPR3	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$8	
	NOP		;;24,27
	NOP		;;24,27
	NOP		;;24,27
	add	%GPR1,%GPR1,%GPR3	
	NOP		;;27,31
	NOP		;;27,31
	NOP		;;27,31
	NOP		;;27,31
	lw	%GPR1,0(%GPR1)	
	NOP		;;31,40
	NOP		;;31,40
	NOP		;;31,40
	NOP		;;31,40
	NOP		;;31,40
	NOP		;;31,40
	NOP		;;31,40
	NOP		;;31,40
	NOP		;;31,40
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_printHex	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *L10	
	NOP		;;41,46
	NOP		;;41,46
	NOP		;;41,46
	NOP		;;41,46
	NOP		;;41,46
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
	lw	%GPR1,-4(%GPR30)	
	NOP		;;47,51
	NOP		;;47,51
	NOP		;;47,51
	NOP		;;47,51
	sw	-8(%GPR30),%GPR1	
	lhi	%GPR1,$1024	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$67108864	
	NOP		;;52,56
	NOP		;;52,56
	NOP		;;52,56
	NOP		;;52,56
	sw	-12(%GPR30),%GPR1	
	lhi	%GPR1,$1024	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$67108864	
	NOP		;;57,61
	NOP		;;57,61
	NOP		;;57,61
	NOP		;;57,61
	sw	-16(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
L23:
	NOP		;;0,2
	NOP		;;0,2
	lw	%GPR4,-12(%GPR30)	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR1,$1024	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$67108864	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$65535	
	NOP		;;5,7
	NOP		;;5,7
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	sub	%GPR1,%GPR4,%GPR1	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	MOD	%GPR1,%GPR1,%GPR2	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	seq	%GPR27,%GPR1,%GPR3	
	bnez	%GPR27,L24	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L25	
	NOP		
	NOP		
	NOP		
	NOP		
L24:
	LI	%GPR1, *L11	
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
	NOP		
	NOP		
	NOP		
L25:
	lw	%GPR6,-8(%GPR30)	
	LI	%GPR2, *_pattern	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$4	
	lw	%GPR1,-16(%GPR30)	
	NOP		;;5,7
	NOP		;;5,7
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	mult	%GPR3,%GPR6,%GPR3	
	NOP		;;8,10
	NOP		;;8,10
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$11	
	NOP		;;10,12
	NOP		;;10,12
	add	%GPR2,%GPR2,%GPR3	
	lw	%GPR3,-8(%GPR30)	
	lw	%GPR6,-16(%GPR30)	
	NOP		;;14,16
	NOP		;;14,16
	lw	%GPR2,0(%GPR2)	
	addi	%GPR3,%GPR3,$1	
	add	%GPR4,%GPR6,%GPR4	
	NOP		;;18,20
	NOP		;;18,20
	sw	0(%GPR1),%GPR2	
	add	%GPR1,%GPR3,%GPR0	
	sw	-8(%GPR30),%GPR3	
	sw	-16(%GPR30),%GPR4	
	NOP		;;23,25
	NOP		;;23,25
	sge	%GPR27,%GPR1,%GPR5	
	bnez	%GPR27,L26	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L27	
	NOP		
	NOP		
	NOP		
	NOP		
L26:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sw	-8(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
L27:
	lw	%GPR1,-12(%GPR30)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	addi	%GPR1,%GPR1,$4	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	add	%GPR2,%GPR1,%GPR0	
	sw	-12(%GPR30),%GPR1	
	lhi	%GPR1,$1087	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$71303164	
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	sle	%GPR27,%GPR2,%GPR1	
	bnez	%GPR27,L23	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L28	
	NOP		
	NOP		
	NOP		
	NOP		
L28:
	LI	%GPR1, *L12	
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
	lw	%GPR1,-4(%GPR30)	
	NOP		;;6,10
	NOP		;;6,10
	NOP		;;6,10
	NOP		;;6,10
	sw	-8(%GPR30),%GPR1	
	lhi	%GPR1,$1024	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$67108864	
	NOP		;;11,15
	NOP		;;11,15
	NOP		;;11,15
	NOP		;;11,15
	sw	-12(%GPR30),%GPR1	
	lhi	%GPR1,$1024	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$67108864	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sw	-16(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
L29:
	NOP		;;0,2
	NOP		;;0,2
	lw	%GPR4,-12(%GPR30)	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR1,$1024	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$67108864	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$65535	
	NOP		;;5,7
	NOP		;;5,7
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	sub	%GPR1,%GPR4,%GPR1	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	MOD	%GPR1,%GPR1,%GPR2	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	seq	%GPR27,%GPR1,%GPR3	
	bnez	%GPR27,L30	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L31	
	NOP		
	NOP		
	NOP		
	NOP		
L30:
	LI	%GPR1, *L13	
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
	NOP		
	NOP		
	NOP		
L31:
	lw	%GPR1,-16(%GPR30)	
	NOP		;;0,2
	NOP		;;0,2
	lw	%GPR4,-8(%GPR30)	
	LI	%GPR2, *_pattern	
	lw	%GPR1,0(%GPR1)	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sw	-20(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$4	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$4	
	NOP		;;10,13
	NOP		;;10,13
	NOP		;;10,13
	mult	%GPR1,%GPR4,%GPR1	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	add	%GPR1,%GPR2,%GPR1	
	lw	%GPR4,-16(%GPR30)	
	NOP		;;18,21
	NOP		;;18,21
	NOP		;;18,21
	lw	%GPR1,0(%GPR1)	
	add	%GPR3,%GPR4,%GPR3	
	NOP		;;22,25
	NOP		;;22,25
	NOP		;;22,25
	add	%GPR2,%GPR1,%GPR0	
	sw	-24(%GPR30),%GPR1	
	lw	%GPR1,-20(%GPR30)	
	sw	-16(%GPR30),%GPR3	
	NOP		;;28,31
	NOP		;;28,31
	NOP		;;28,31
	sne	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L32	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L33	
	NOP		
	NOP		
	NOP		
	NOP		
L32:
	LI	%GPR2, *_errorCounter_thisTest	
	LI	%GPR1, *L14	
	LI	%GPR3, *_errorCounter_thisTest	
	NOP		;;2,4
	NOP		;;2,4
	lw	%GPR2,0(%GPR2)	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	addui	%GPR2,%GPR2,$1	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	sw	0(%GPR3),%GPR2	
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
	lw	%GPR1,-16(%GPR30)	
	NOP		;;14,19
	NOP		;;14,19
	NOP		;;14,19
	NOP		;;14,19
	NOP		;;14,19
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		;;19,23
	NOP		;;19,23
	NOP		;;19,23
	NOP		;;19,23
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_printHex	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *L15	
	NOP		;;24,29
	NOP		;;24,29
	NOP		;;24,29
	NOP		;;24,29
	NOP		;;24,29
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
	lw	%GPR1,-24(%GPR30)	
	NOP		;;30,35
	NOP		;;30,35
	NOP		;;30,35
	NOP		;;30,35
	NOP		;;30,35
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_printHex	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *L16	
	NOP		;;37,42
	NOP		;;37,42
	NOP		;;37,42
	NOP		;;37,42
	NOP		;;37,42
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
	lw	%GPR1,-20(%GPR30)	
	NOP		;;43,48
	NOP		;;43,48
	NOP		;;43,48
	NOP		;;43,48
	NOP		;;43,48
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_printHex	
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
	lhi	%GPR1,$45	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$3000000	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	wait	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
L33:
	lw	%GPR1,-8(%GPR30)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	addi	%GPR1,%GPR1,$1	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	add	%GPR2,%GPR1,%GPR0	
	sw	-8(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$11	
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	sge	%GPR27,%GPR2,%GPR1	
	bnez	%GPR27,L34	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L35	
	NOP		
	NOP		
	NOP		
	NOP		
L34:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sw	-8(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
L35:
	lw	%GPR1,-12(%GPR30)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	addi	%GPR1,%GPR1,$4	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	add	%GPR2,%GPR1,%GPR0	
	sw	-12(%GPR30),%GPR1	
	lhi	%GPR1,$1087	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$71303164	
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	sle	%GPR27,%GPR2,%GPR1	
	bnez	%GPR27,L29	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L36	
	NOP		
	NOP		
	NOP		
	NOP		
L36:
	LI	%GPR1, *L17	
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
	lw	%GPR1,-4(%GPR30)	
	NOP		;;6,10
	NOP		;;6,10
	NOP		;;6,10
	NOP		;;6,10
	addi	%GPR1,%GPR1,$1	
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	add	%GPR2,%GPR1,%GPR0	
	sw	-4(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$11	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	slt	%GPR27,%GPR2,%GPR1	
	bnez	%GPR27,L22	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L21	
	NOP		
	NOP		
	NOP		
	NOP		
L37:
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
