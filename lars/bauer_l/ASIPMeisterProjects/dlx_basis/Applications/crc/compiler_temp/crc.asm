	.section	.data
	;.global	_lin
_lin:
	.data.8	97
	.data.8	115
	.data.8	100
	.data.8	102
	.data.8	102
	.data.8	101
	.data.8	97
	.data.8	103
	.data.8	101
	.data.8	119
	.data.8	97
	.data.8	72
	.data.8	65
	.data.8	70
	.data.8	69
	.data.8	70
	.data.8	97
	.data.8	101
	.data.8	68
	.data.8	115
	.data.8	70
	.data.8	69
	.data.8	97
	.data.8	119
	.data.8	70
	.data.8	100
	.data.8	115
	.data.8	70
	.data.8	97
	.data.8	101
	.data.8	102
	.data.8	97
	.data.8	101
	.data.8	101
	.data.8	114
	.data.8	100
	.data.8	106
	.data.8	103
	.data.8	112
	.space	1
	.space	1
	.space	1
	;.global	_icrctb
	.align	2
_icrctb:
	.space	512
	.align	4
L1:
	.space	4
L2:
	.space	256
L3:
	.space	1
	.data.8	8
	.data.8	4
	.data.8	12
	.data.8	2
	.data.8	10
	.data.8	6
	.data.8	14
	.data.8	1
	.data.8	9
	.data.8	5
	.data.8	13
	.data.8	3
	.data.8	11
	.data.8	7
	.data.8	15
	;.global	_i1
	.align	2
_i1:
	.space	2
	;.global	_i2
	.align	2
_i2:
	.space	2
	.section	.text
	.addressing	Word
	.section	.text
	.addressing	Word
	;.addressing	Word

	xor	%GPR30, %GPR30, %GPR30
	xor	%GPR29, %GPR29, %GPR29
	xor	%GPR28, %GPR28, %GPR28
	nop
	lhi	%GPR30, $(0xFFFFC/0x10000)
	lhi	%GPR29, $(0xFFFFC/0x10000)
	nop
	nop
	ori	%GPR30, %GPR30, $(0xFFFFC%0x10000)
	ori	%GPR29, %GPR29, $(0xFFFFC%0x10000)
	nop
	nop
	nop
	sw	-4(%GPR29), %GPR30
	sw	-8(%GPR29), %GPR31
	addi	%GPR29, %GPR30, $-8
	nop
	nop
	nop
	jal	main	
	nop
	nop
	nop
	; Automatically 2 NOPs removed by reduceNOPs.sh
	sw	0(%GPR29), %GPR1
	jal	exit
	nop
	nop

icrc1:
L4:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 11 NOPs removed by reduceNOPs.sh
	slli	%GPR3,%GPR2,$8	
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	;;8,11
	nop	;;8,11
	nop	;;8,11
	xor	%GPR28,%GPR3,%GPR1	
	nop
	nop
	nop
L5:
	nop	; Automatically Added by addNopAfterLabels.pl
	andi	%GPR1,%GPR28,$32768	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR1,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L6	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L7	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L6:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slli	%GPR28,%GPR28,$1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	xori	%GPR28,%GPR28,$4129	
	j	L8	
	nop
	nop
	nop
L7:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slli	%GPR28,%GPR28,$1	
	nop
	nop
	nop
L8:
	nop	; Automatically Added by addNopAfterLabels.pl
	addi	%GPR2,%GPR2,$1	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$8	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR2,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L5	
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
	nop	; Automatically Added by addNopAfterLabels.pl
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
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
icrc:
L11:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
	subi	%GPR29,%GPR29,$32	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR2	
	sw	-8(%GPR30),%GPR3	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-12(%GPR30),%GPR4	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	-16(%GPR30),%GPR1	
	lhi	%GPR1,$( L1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L1	%0x10000)
	nop	;;6,10
	nop	;;6,10
	nop	;;6,10
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	;;11,15
	nop	;;11,15
	nop	;;11,15
	; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L12	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L15	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L12:
	nop	;;0,2
	nop	;;0,2
	lhi	%GPR1,$( L1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L1	%0x10000)
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	sw	0(%GPR1),%GPR2	
	sw	-20(%GPR30),%GPR3	
	nop
	nop
	nop
L13:
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%GPR1,-20(%GPR30)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slei	%GPR27,%GPR1,$255	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L14			; Automatically fixed by findCompareBranchProblem.sh. Previous Register was %GPR1
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L15	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L14:
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%GPR1,-20(%GPR30)	
	nop	;;0,2
	nop	;;0,2
	lhi	%GPR3,$( _icrctb	/0x10000)
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$( _icrctb	%0x10000)
	nop	;;2,4
	nop	;;2,4
	add	%GPR5,%GPR1,%GPR0	
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$2	
	nop	;;5,7
	nop	;;5,7
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	;;7,9
	nop	;;7,9
	mult	%GPR4,%GPR5,%GPR4	
	slli	%GPR1,%GPR1,$8	
	nop	;;10,13
	nop	;;10,13
	nop	;;10,13
	add	%GPR3,%GPR3,%GPR4	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-24(%GPR30),%GPR3	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	icrc1	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR2,-20(%GPR30)	
	lw	%GPR4,-24(%GPR30)	
	add	%GPR5,%GPR28,%GPR0	
	lhi	%GPR1,$( L3	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L3	%0x10000)
	andi	%GPR2,%GPR2,$15	
	lhi	%GPR3,$( L3	/0x10000)
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$( L3	%0x10000)
	sh	0(%GPR4),%GPR5	
	nop	; Automatically added by findLoadStoreProblem.sh
	lw	%GPR4,-20(%GPR30)	
	add	%GPR1,%GPR1,%GPR2	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,-20(%GPR30)	
	lhi	%GPR5,$( L2	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( L2	%0x10000)
	srli	%GPR4,%GPR4,$4	
	lb	%GPR1,0(%GPR1)	
	nop	;;31,34
	nop	;;31,34
	nop	;;31,34
	add	%GPR3,%GPR3,%GPR4	
	nop	;;34,36
	nop	;;34,36
	lw	%GPR4,-20(%GPR30)	
	add	%GPR2,%GPR5,%GPR2	
	lb	%GPR3,0(%GPR3)	
	slli	%GPR1,%GPR1,$4	
	addi	%GPR4,%GPR4,$1	
	nop	;;40,43
	nop	;;40,43
	nop	;;40,43
	or	%GPR1,%GPR1,%GPR3	
	sw	-20(%GPR30),%GPR4	
	nop	;;44,47
	nop	;;44,47
	nop	;;44,47
	sb	0(%GPR2),%GPR1	
	j	L13	
	nop
	nop
	nop
L15:
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%GPR1,-8(%GPR30)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sgei	%GPR27,%GPR1,$0	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L16			; Automatically fixed by findCompareBranchProblem.sh. Previous Register was %GPR1
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L17	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L16:
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%GPR1,-8(%GPR30)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	
	nop	;;4,13
	nop	;;4,13
	nop	;;4,13
	; Automatically 6 NOPs removed by reduceNOPs.sh
	slli	%GPR1,%GPR1,$8	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	or	%GPR1,%GPR1,%GPR2	
	nop	;;17,21
	nop	;;17,21
	nop	;;17,21
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR1	
	j	L19	
	nop
	nop
	nop
L17:
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%GPR2,-12(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR2,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L18	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L19	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L18:
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%GPR1,-16(%GPR30)	
	lhi	%GPR2,$( L2	/0x10000)
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$( L2	%0x10000)
	lhi	%GPR4,$( L2	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( L2	%0x10000)
	nop	;;2,4
	nop	;;2,4
	add	%GPR3,%GPR1,%GPR0	
	andi	%GPR1,%GPR1,$255	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	srli	%GPR3,%GPR3,$8	
	nop	;;8,17
	nop	;;8,17
	nop	;;8,17
	; Automatically 6 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR2,%GPR1	
	nop	;;17,20
	nop	;;17,20
	nop	;;17,20
	add	%GPR2,%GPR4,%GPR3	
	lb	%GPR1,0(%GPR1)	
	nop	;;21,24
	nop	;;21,24
	nop	;;21,24
	lb	%GPR2,0(%GPR2)	
	nop	;;24,29
	nop	;;24,29
	nop	;;24,29
	; Automatically 2 NOPs removed by reduceNOPs.sh
	slli	%GPR1,%GPR1,$8	
	nop	;;29,33
	nop	;;29,33
	nop	;;29,33
	; Automatically 1 NOPs removed by reduceNOPs.sh
	or	%GPR1,%GPR1,%GPR2	
	nop	;;33,37
	nop	;;33,37
	nop	;;33,37
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR1	
	nop
	nop
	nop
L19:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-20(%GPR30),%GPR1	
	nop
	nop
	nop
L20:
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%GPR1,-4(%GPR30)	
	lw	%GPR2,-20(%GPR30)	
	nop	;;1,5
	nop	;;1,5
	nop	;;1,5
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sle	%GPR27,%GPR2,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L21	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L25	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L21:
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%GPR2,-12(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR2,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L22	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L23	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L22:
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%GPR2,-20(%GPR30)	
	lhi	%GPR1,$( _lin	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _lin	%0x10000)
	lhi	%GPR3,$( L2	/0x10000)
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$( L2	%0x10000)
	lw	%GPR4,-16(%GPR30)	
	nop	;;3,8
	nop	;;3,8
	nop	;;3,8
	; Automatically 2 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	srli	%GPR4,%GPR4,$8	
	nop	;;9,12
	nop	;;9,12
	nop	;;9,12
	lb	%GPR1,0(%GPR1)	
	nop	;;12,20
	nop	;;12,20
	nop	;;12,20
	; Automatically 5 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR3,%GPR1	
	nop	;;20,24
	nop	;;20,24
	nop	;;20,24
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lb	%GPR1,0(%GPR1)	
	nop	;;24,28
	nop	;;24,28
	nop	;;24,28
	; Automatically 1 NOPs removed by reduceNOPs.sh
	xor	%GPR1,%GPR1,%GPR4	
	j	L24	
	nop
	nop
	nop
L23:
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%GPR1,-20(%GPR30)	
	lhi	%GPR2,$( _lin	/0x10000)
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$( _lin	%0x10000)
	lw	%GPR3,-16(%GPR30)	
	nop	;;2,6
	nop	;;2,6
	nop	;;2,6
	; Automatically 1 NOPs removed by reduceNOPs.sh
	srli	%GPR3,%GPR3,$8	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR2,%GPR1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lb	%GPR1,0(%GPR1)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
	; Automatically 1 NOPs removed by reduceNOPs.sh
	xor	%GPR1,%GPR1,%GPR3	
	nop
	nop
	nop
L24:
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%GPR2,-16(%GPR30)	
	nop	;;0,2
	nop	;;0,2
	lhi	%GPR3,$( _icrctb	/0x10000)
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$( _icrctb	%0x10000)
	lw	%GPR5,-20(%GPR30)	
	andi	%GPR2,%GPR2,$255	
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$2	
	nop	;;5,7
	nop	;;5,7
	addi	%GPR5,%GPR5,$1	
	nop	;;7,9
	nop	;;7,9
	mult	%GPR1,%GPR1,%GPR4	
	nop	;;9,11
	nop	;;9,11
	nop	; Automatically added by fix-stall-insns.pl
	sw	-20(%GPR30),%GPR5	
	nop	;;11,13
	nop	;;11,13
	add	%GPR1,%GPR3,%GPR1	
	nop	;;13,16
	nop	;;13,16
	nop	;;13,16
	slli	%GPR2,%GPR2,$8	
	lh	%GPR1,0(%GPR1)	
	nop	;;17,21
	nop	;;17,21
	nop	;;17,21
	; Automatically 1 NOPs removed by reduceNOPs.sh
	xor	%GPR1,%GPR2,%GPR1	
	nop	;;21,25
	nop	;;21,25
	nop	;;21,25
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR1	
	j	L20	
	nop
	nop
	nop
L25:
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%GPR2,-12(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sge	%GPR27,%GPR2,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L26	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L27	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L26:
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%GPR28,-16(%GPR30)	
	j	L28	
	nop
	nop
	nop
L27:
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%GPR1,-16(%GPR30)	
	lhi	%GPR2,$( L2	/0x10000)
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$( L2	%0x10000)
	lhi	%GPR4,$( L2	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( L2	%0x10000)
	nop	;;2,4
	nop	;;2,4
	add	%GPR3,%GPR1,%GPR0	
	andi	%GPR1,%GPR1,$255	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	srli	%GPR3,%GPR3,$8	
	nop	;;8,17
	nop	;;8,17
	nop	;;8,17
	; Automatically 6 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR2,%GPR1	
	nop	;;17,20
	nop	;;17,20
	nop	;;17,20
	add	%GPR2,%GPR4,%GPR3	
	lb	%GPR1,0(%GPR1)	
	nop	;;21,24
	nop	;;21,24
	nop	;;21,24
	lb	%GPR2,0(%GPR2)	
	nop	;;24,29
	nop	;;24,29
	nop	;;24,29
	; Automatically 2 NOPs removed by reduceNOPs.sh
	slli	%GPR1,%GPR1,$8	
	nop	;;29,33
	nop	;;29,33
	nop	;;29,33
	; Automatically 1 NOPs removed by reduceNOPs.sh
	or	%GPR28,%GPR1,%GPR2	
	nop
	nop
	nop
L28:
	nop	; Automatically Added by addNopAfterLabels.pl
	j	L29	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L29:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
main:
L30:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
	subi	%GPR29,%GPR29,$16	
	nop
	nop
	nop
	; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR5,$( _lin	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _lin	%0x10000)
	nop	;;3,6
	nop	;;3,6
	nop	;;3,6
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$41	
	nop	;;6,10
	nop	;;6,10
	nop	;;6,10
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR5,%GPR5,%GPR6	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$0	
	lhi	%GPR6,$( _i1	/0x10000)
	nop
	nop
	nop
	ori	%GPR6,%GPR6,$( _i1	%0x10000)
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$1	
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$40	
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	sb	0(%GPR5),%GPR7	
	sw	-4(%GPR30),%GPR6	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	icrc	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR3,-4(%GPR30)	
	lhi	%GPR1,$( _i1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _i1	%0x10000)
	nop	;;21,23
	nop	;;21,23
	lhi	%GPR2,$( _lin	/0x10000)
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$( _lin	%0x10000)
	sh	0(%GPR3),%GPR28	
	lhi	%GPR3,$( _i1	/0x10000)
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$( _i1	%0x10000)
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$41	
	nop	;;26,28
	nop	;;26,28
	lh	%GPR1,0(%GPR1)	
	lhi	%GPR5,$( _lin	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _lin	%0x10000)
	add	%GPR2,%GPR2,%GPR4	
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$42	
	srli	%GPR1,%GPR1,$8	
	lhi	%GPR6,$( _i1	/0x10000)
	nop
	nop
	nop
	ori	%GPR6,%GPR6,$( _i1	%0x10000)
	lhi	%GPR7,$( _i2	/0x10000)
	nop
	nop
	nop
	ori	%GPR7,%GPR7,$( _i2	%0x10000)
	add	%GPR5,%GPR5,%GPR4	
	sb	0(%GPR2),%GPR1	
	nop	;;36,40
	nop	;;36,40
	nop	;;36,40
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lh	%GPR1,0(%GPR3)	
	nop	;;40,42
	nop	;;40,42
	sw	-8(%GPR30),%GPR7	
	nop	;;42,44
	nop	;;42,44
	andi	%GPR1,%GPR1,$255	
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$1	
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$42	
	sb	0(%GPR5),%GPR1	
	nop	;;48,52
	nop	;;48,52
	nop	;;48,52
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lh	%GPR1,0(%GPR6)	
	nop	;;52,61
	nop	;;52,61
	nop	;;52,61
	; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	icrc	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-8(%GPR30)	
	nop	;;62,66
	nop	;;62,66
	nop	;;62,66
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sh	0(%GPR1),%GPR28	
	lhi	%GPR28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop	;;67,71
	nop	;;67,71
	nop	;;67,71
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L31:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 2 NOPs removed by reduceNOPs.sh
exit:
	nop
	nop
