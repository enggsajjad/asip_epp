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
	.addressing	Word
main:
L7:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$12	
	nop
	nop
	nop
				; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L1	%0x10000)
	nop	;;3,6
	nop	;;3,6
	nop	;;3,6
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	nop	;;6,10
	nop	;;6,10
	nop	;;6,10
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR2	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	u_print	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$42	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	u_printInt	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L2	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L2	%0x10000)
	nop	;;18,23
	nop	;;18,23
	nop	;;18,23
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	u_print	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$6	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$424242	


	lhi	%GPR2, $0x300
	nop
	nop
	nop
	sw	0(%GPR2), %GPR1

	lhi	%GPR2,$( _globVal	/0x10000)
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$( _globVal	%0x10000)


	lhi	%GPR3,$0x300
	nop
	nop
	nop
	lw	%GPR3, 0(%GPR3)
	nop
	nop
	nop

	lhi	%GPR1,$( L3	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L3	%0x10000)
	sw	0(%GPR2),%GPR3	
	nop	;;33,37
	nop	;;33,37
	nop	;;33,37
				; Automatically 5 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( _globVal	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _globVal	%0x10000)
	nop	;;38,42
	nop	;;38,42
	nop	;;38,42
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_printInt	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L4	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L4	%0x10000)
	nop	;;44,49
	nop	;;44,49
	nop	;;44,49
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	


	lhi	%GPR2, $0x300
	nop
	nop
	nop
	sw	0(%GPR2), %GPR1

	nop	;;55,60
	nop	;;55,60
	nop	;;55,60
				; Automatically 2 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
L8:
	lw	%GPR2,-4(%GPR30)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	mult	%GPR2,%GPR2,%GPR1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR2	
	addi	%GPR1,%GPR1,$1	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$128	
	nop	;;10,14
	nop	;;10,14
	nop	;;10,14
				; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L9	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L9:
	lhi	%GPR2,$( _globVal	/0x10000)
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$( _globVal	%0x10000)


	lhi	%GPR3,$0x300
	nop
	nop
	nop
	lw	%GPR3, 0(%GPR3)
	nop
	nop
	nop

	lhi	%GPR1,$( L5	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L5	%0x10000)
	sw	0(%GPR2),%GPR3	
	nop	;;3,7
	nop	;;3,7
	nop	;;3,7
				; Automatically 5 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( _globVal	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _globVal	%0x10000)
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_printInt	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L6	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L6	%0x10000)
	nop	;;14,19
	nop	;;14,19
	nop	;;14,19
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR28,-4(%GPR30)	
	nop	;;20,24
	nop	;;20,24
	nop	;;20,24
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L10	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L10:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	jr	%GPR31	
	nop
	nop
	nop
