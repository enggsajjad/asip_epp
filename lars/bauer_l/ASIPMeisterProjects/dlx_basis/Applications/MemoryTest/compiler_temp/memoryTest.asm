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
	.addressing	Word
refreshScreen:
L18:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	nop
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 55 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	t_restoreLastSavedCursorPositio	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L1	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L1	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 45 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 45 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$8	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$1024	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$67108864	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	t_printHex	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L2	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L2	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 45 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 45 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$8	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$1087	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$71303164	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	t_printHex	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L3	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L3	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 45 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( _errorCounter_overall	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( _errorCounter_overall	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	nop
				; Automatically 45 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	t_printInt	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L4	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L4	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 45 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( _testNumber	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( _testNumber	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	nop
				; Automatically 45 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	t_printInt	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L5	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L5	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 45 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( _errorCounter_thisTest	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( _errorCounter_thisTest	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	nop
				; Automatically 45 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	t_printInt	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L6	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L6	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 45 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 45 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L19	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L19:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	jr	%GPR31	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
main:
L20:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	nop
	subi	%GPR29,%GPR29,$32	
	nop
	nop
	nop
	nop
				; Automatically 35 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L7	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L7	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 45 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 40 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	t_saveCursorPosition	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 35 NOPs removed by reduceNOPs.sh
L21:
	nop
	nop
	nop
	nop
	lhi	%GPR1,$( _errorCounter_thisTest	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( _errorCounter_thisTest	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$( _testNumber	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$( _testNumber	%0x10000)
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$( _testNumber	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$( _testNumber	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR4	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lw	%GPR1,0(%GPR2)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addui	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR1	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
L22:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	refreshScreen	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L8	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L8	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 45 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-4(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	t_printInt	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L9	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L9	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 45 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 30 NOPs removed by reduceNOPs.sh
	lw	%GPR4,-8(%GPR30)	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$( _pattern	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( _pattern	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$4	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	mult	%GPR3,%GPR4,%GPR3	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$8	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR3	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	nop
				; Automatically 65 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	t_printHex	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L10	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L10	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 45 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-4(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-8(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$1024	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$67108864	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-12(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$1024	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$67108864	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
L23:
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lw	%GPR4,-12(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$1024	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$67108864	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$65535	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
	nop
	sub	%GPR1,%GPR4,%GPR1	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	MOD	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR3	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L24	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L25	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L24:
	nop
	nop
	nop
	nop
	lhi	%GPR1,$( L11	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L11	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 45 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 35 NOPs removed by reduceNOPs.sh
L25:
	nop
	nop
	nop
	nop
	lw	%GPR6,-8(%GPR30)	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$( _pattern	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$( _pattern	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$4	
	nop
	nop
	nop
	nop
	lw	%GPR1,-16(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop
	nop
	nop
	nop
	mult	%GPR3,%GPR6,%GPR3	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$11	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR2,%GPR3	
	nop
	nop
	nop
	nop
	lw	%GPR3,-8(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR6,-16(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR2)	
	nop
	nop
	nop
	nop
	addi	%GPR3,%GPR3,$1	
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR6,%GPR4	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR3,%GPR0	
	nop
	nop
	nop
	nop
	sw	-8(%GPR30),%GPR3	
	nop
	nop
	nop
	nop
	sw	-16(%GPR30),%GPR4	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	sge	%GPR27,%GPR1,%GPR5	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L26	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L27	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L26:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-8(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
L27:
	nop
	nop
	nop
	nop
	lw	%GPR1,-12(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$4	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	sw	-12(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$1087	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$71303164	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sle	%GPR27,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L23	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L28	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L28:
	nop
	nop
	nop
	nop
	lhi	%GPR1,$( L12	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L12	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 45 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-4(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-8(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$1024	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$67108864	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-12(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$1024	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$67108864	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
L29:
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lw	%GPR4,-12(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$1024	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$67108864	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$65535	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
	nop
	sub	%GPR1,%GPR4,%GPR1	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	MOD	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR3	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L30	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L31	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L30:
	nop
	nop
	nop
	nop
	lhi	%GPR1,$( L13	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L13	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 45 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 35 NOPs removed by reduceNOPs.sh
L31:
	nop
	nop
	nop
	nop
	lw	%GPR1,-16(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lw	%GPR4,-8(%GPR30)	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$( _pattern	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$( _pattern	%0x10000)
	nop
	nop
	nop
	nop
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-20(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$4	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	mult	%GPR1,%GPR4,%GPR1	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
	lw	%GPR4,-16(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	nop
	add	%GPR3,%GPR4,%GPR3	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	sw	-24(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lw	%GPR1,-20(%GPR30)	
	nop
	nop
	nop
	nop
	sw	-16(%GPR30),%GPR3	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L32	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L33	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L32:
	nop
	nop
	nop
	nop
	lhi	%GPR2,$( _errorCounter_thisTest	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$( _errorCounter_thisTest	%0x10000)
	nop
	nop
	nop
	nop
	lhi	%GPR1,$( L14	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L14	%0x10000)
	nop
	nop
	nop
	nop
	lhi	%GPR3,$( _errorCounter_thisTest	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$( _errorCounter_thisTest	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR2)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addui	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-16(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 25 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 40 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	t_printHex	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L15	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L15	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 45 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-24(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 25 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	t_printHex	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L16	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L16	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 45 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-20(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 25 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	t_printHex	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 45 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$45	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$3000000	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	wait	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 35 NOPs removed by reduceNOPs.sh
L33:
	nop
	nop
	nop
	nop
	lw	%GPR1,-8(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	sw	-8(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$11	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sge	%GPR27,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L34	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L35	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L34:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-8(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
L35:
	nop
	nop
	nop
	nop
	lw	%GPR1,-12(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$4	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	sw	-12(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$1087	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$71303164	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sle	%GPR27,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L29	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L36	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L36:
	nop
	nop
	nop
	nop
	lhi	%GPR1,$( L17	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L17	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 45 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-4(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	sw	-4(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$11	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L22	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L21	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L37:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	jr	%GPR31	
	nop
	nop
	nop
	nop
