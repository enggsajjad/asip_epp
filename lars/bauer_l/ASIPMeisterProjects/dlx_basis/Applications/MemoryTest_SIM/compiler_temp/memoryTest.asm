	.section	.data
	;.global	_pattern
	.align	4
_pattern:
	.data.32	-1431655766
	.data.32	305419896
	.data.32	-2023406815
	.data.32	-252645136
	.data.32	252645135
	;.global	_errorNumber
	.align	4
_errorNumber:
	.space	4
	;.global	_heapEnd
	.align	4
_heapEnd:
	.space	4
	.section	.text
	.addressing	Word
	.section	.text
	.addressing	Word
	;.addressing	Word

	xor	%GPR30, %GPR30, %GPR30
	xor	%GPR29, %GPR29, %GPR29
	xor	%GPR28, %GPR28, %GPR28
	nop
	lhi	%GPR30, $(0x5FFC/0x10000)
	lhi	%GPR29, $(0x5FFC/0x10000)
	nop
	nop
	ori	%GPR30, %GPR30, $(0x5FFC%0x10000)
	ori	%GPR29, %GPR29, $(0x5FFC%0x10000)
	nop
	nop
	nop
	sw	-4(%GPR29), %GPR30
	sw	-8(%GPR29), %GPR31
	addi	%GPR29, %GPR30, $-8
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	jal	main	
	nop
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR29), %GPR1
	jal	exit	
	nop
main:
L1:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop
	nop
	nop
L2:
	nop	;;0,2
	nop	;;0,2
	add	%GPR4,%GPR2,%GPR0	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$24576	
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$40960	
	nop
	nop
	nop
L3:
	nop	; Automatically Added by addNopAfterLabels.pl
	slli	%GPR6,%GPR4,$2	
	lhi	%GPR5,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _pattern	%0x10000)
	nop	;;1,3
	nop	;;1,3
	addi	%GPR4,%GPR4,$1	
	nop	;;3,5
	nop	;;3,5
	add	%GPR5,%GPR5,%GPR6	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$5	
	nop	;;6,9
	nop	;;6,9
	nop	;;6,9
	lw	%GPR5,0(%GPR5)	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR3),%GPR5	
	sge	%GPR27,%GPR4,%GPR6	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L4	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L5	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L4:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
L5:
	nop	; Automatically Added by addNopAfterLabels.pl
	slli	%GPR6,%GPR4,$2	
	lhi	%GPR5,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _pattern	%0x10000)
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	addi	%GPR4,%GPR4,$1	
	add	%GPR5,%GPR5,%GPR6	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$4	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$5	
	nop	;;7,9
	nop	;;7,9
	lw	%GPR5,0(%GPR5)	
	add	%GPR7,%GPR3,%GPR7	
	nop	;;10,14
	nop	;;10,14
	nop	;;10,14
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR7),%GPR5	
	sge	%GPR27,%GPR4,%GPR6	
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
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
L7:
	nop	; Automatically Added by addNopAfterLabels.pl
	slli	%GPR6,%GPR4,$2	
	lhi	%GPR5,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _pattern	%0x10000)
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	addi	%GPR4,%GPR4,$1	
	add	%GPR5,%GPR5,%GPR6	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$8	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$5	
	nop	;;7,9
	nop	;;7,9
	lw	%GPR5,0(%GPR5)	
	add	%GPR7,%GPR3,%GPR7	
	nop	;;10,14
	nop	;;10,14
	nop	;;10,14
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR7),%GPR5	
	sge	%GPR27,%GPR4,%GPR6	
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
L8:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
L9:
	nop	; Automatically Added by addNopAfterLabels.pl
	slli	%GPR6,%GPR4,$2	
	lhi	%GPR5,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _pattern	%0x10000)
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	addi	%GPR4,%GPR4,$1	
	add	%GPR5,%GPR5,%GPR6	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$12	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$5	
	nop	;;7,9
	nop	;;7,9
	lw	%GPR5,0(%GPR5)	
	add	%GPR7,%GPR3,%GPR7	
	nop	;;10,14
	nop	;;10,14
	nop	;;10,14
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR7),%GPR5	
	sge	%GPR27,%GPR4,%GPR6	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L10	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L11	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L10:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
L11:
	nop	;;0,2
	nop	;;0,2
	addi	%GPR1,%GPR1,$-4	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$16	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR3,%GPR3,%GPR5	
	sgt	%GPR27,%GPR1,%GPR6	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L3	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L12	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L12:
	nop	;;0,2
	nop	;;0,2
	add	%GPR3,%GPR2,%GPR0	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$24576	
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$24576	
	nop
	nop
	nop
L13:
	nop	; Automatically Added by addNopAfterLabels.pl
	lhi	%GPR5,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _pattern	%0x10000)
	slli	%GPR6,%GPR3,$2	
	lw	%GPR7,0(%GPR4)	
	nop	;;2,5
	nop	;;2,5
	nop	;;2,5
	add	%GPR5,%GPR5,%GPR6	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR5,0(%GPR5)	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR7,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L156	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L14	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L14:
	nop	; Automatically Added by addNopAfterLabels.pl
	addi	%GPR3,%GPR3,$1	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$5	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sge	%GPR27,%GPR3,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L15	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L16	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L15:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
L16:
	nop	; Automatically Added by addNopAfterLabels.pl
	lhi	%GPR5,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _pattern	%0x10000)
	slli	%GPR6,%GPR3,$2	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$4	
	nop	;;4,6
	nop	;;4,6
	add	%GPR5,%GPR5,%GPR6	
	nop	;;6,8
	nop	;;6,8
	add	%GPR4,%GPR4,%GPR7	
	nop	;;8,10
	nop	;;8,10
	lw	%GPR5,0(%GPR5)	
	nop	;;10,12
	nop	;;10,12
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR6,0(%GPR4)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR6,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L156	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L17	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L17:
	nop	; Automatically Added by addNopAfterLabels.pl
	addi	%GPR3,%GPR3,$1	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$5	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sge	%GPR27,%GPR3,%GPR5	
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
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
L19:
	nop	; Automatically Added by addNopAfterLabels.pl
	lhi	%GPR5,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _pattern	%0x10000)
	slli	%GPR6,%GPR3,$2	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$4	
	nop	;;4,6
	nop	;;4,6
	add	%GPR5,%GPR5,%GPR6	
	nop	;;6,8
	nop	;;6,8
	add	%GPR4,%GPR4,%GPR7	
	nop	;;8,10
	nop	;;8,10
	lw	%GPR5,0(%GPR5)	
	nop	;;10,12
	nop	;;10,12
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR6,0(%GPR4)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR6,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L156	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L20	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L20:
	nop	; Automatically Added by addNopAfterLabels.pl
	addi	%GPR3,%GPR3,$1	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$5	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sge	%GPR27,%GPR3,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L21	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L22	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L21:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
L22:
	nop	; Automatically Added by addNopAfterLabels.pl
	lhi	%GPR5,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _pattern	%0x10000)
	slli	%GPR6,%GPR3,$2	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$4	
	nop	;;4,6
	nop	;;4,6
	add	%GPR5,%GPR5,%GPR6	
	nop	;;6,8
	nop	;;6,8
	add	%GPR4,%GPR4,%GPR7	
	nop	;;8,10
	nop	;;8,10
	lw	%GPR5,0(%GPR5)	
	nop	;;10,12
	nop	;;10,12
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR6,0(%GPR4)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR6,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L156	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L23	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L23:
	nop	; Automatically Added by addNopAfterLabels.pl
	addi	%GPR3,%GPR3,$1	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$5	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sge	%GPR27,%GPR3,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L24	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L25	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L24:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
L25:
	nop	;;0,2
	nop	;;0,2
	addi	%GPR1,%GPR1,$4	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$65535	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR4,%GPR4,%GPR5	
	sle	%GPR27,%GPR1,%GPR6	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L13	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L26	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L26:
	nop	;;0,2
	nop	;;0,2
	add	%GPR4,%GPR2,%GPR0	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$24576	
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$40960	
	nop
	nop
	nop
L27:
	nop	; Automatically Added by addNopAfterLabels.pl
	slli	%GPR6,%GPR4,$2	
	lhi	%GPR5,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _pattern	%0x10000)
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	addi	%GPR4,%GPR4,$1	
	add	%GPR5,%GPR5,%GPR6	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$2	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$5	
	nop	;;7,9
	nop	;;7,9
	lw	%GPR8,0(%GPR5)	
	add	%GPR5,%GPR3,%GPR6	
	nop	;;10,13
	nop	;;10,13
	nop	;;10,13
	andi	%GPR6,%GPR8,$65535	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sh	0(%GPR3),%GPR6	
	sge	%GPR27,%GPR4,%GPR7	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L28	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L29	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L28:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
L29:
	nop	; Automatically Added by addNopAfterLabels.pl
	slli	%GPR7,%GPR4,$2	
	lhi	%GPR6,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR6,%GPR6,$( _pattern	%0x10000)
	addi	%GPR3,%GPR4,$1	
	nop	;;2,5
	nop	;;2,5
	nop	;;2,5
	add	%GPR4,%GPR6,%GPR7	
	nop	;;5,7
	nop	;;5,7
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$2	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$5	
	lw	%GPR8,0(%GPR4)	
	nop	;;9,11
	nop	;;9,11
	add	%GPR4,%GPR5,%GPR6	
	nop	;;11,13
	nop	;;11,13
	andi	%GPR6,%GPR8,$65535	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sh	0(%GPR5),%GPR6	
	sge	%GPR27,%GPR3,%GPR7	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L30	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L30:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
L31:
	nop	; Automatically Added by addNopAfterLabels.pl
	slli	%GPR6,%GPR3,$2	
	lhi	%GPR5,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _pattern	%0x10000)
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	addi	%GPR3,%GPR3,$1	
	add	%GPR5,%GPR5,%GPR6	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$2	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$5	
	nop	;;7,9
	nop	;;7,9
	lw	%GPR8,0(%GPR5)	
	add	%GPR5,%GPR4,%GPR6	
	nop	;;10,13
	nop	;;10,13
	nop	;;10,13
	andi	%GPR6,%GPR8,$65535	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sh	0(%GPR4),%GPR6	
	sge	%GPR27,%GPR3,%GPR7	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L32	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L33	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L32:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
L33:
	nop	; Automatically Added by addNopAfterLabels.pl
	slli	%GPR6,%GPR3,$2	
	lhi	%GPR4,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( _pattern	%0x10000)
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	addi	%GPR3,%GPR3,$1	
	add	%GPR4,%GPR4,%GPR6	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$2	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$5	
	nop	;;7,9
	nop	;;7,9
	lw	%GPR8,0(%GPR4)	
	add	%GPR4,%GPR5,%GPR6	
	nop	;;10,13
	nop	;;10,13
	nop	;;10,13
	andi	%GPR6,%GPR8,$65535	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sh	0(%GPR5),%GPR6	
	sge	%GPR27,%GPR3,%GPR7	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L34	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L35	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L34:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
L35:
	nop	; Automatically Added by addNopAfterLabels.pl
	slli	%GPR6,%GPR3,$2	
	lhi	%GPR5,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _pattern	%0x10000)
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	addi	%GPR3,%GPR3,$1	
	add	%GPR5,%GPR5,%GPR6	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$2	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$5	
	nop	;;7,9
	nop	;;7,9
	lw	%GPR8,0(%GPR5)	
	add	%GPR5,%GPR4,%GPR6	
	nop	;;10,13
	nop	;;10,13
	nop	;;10,13
	andi	%GPR6,%GPR8,$65535	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sh	0(%GPR4),%GPR6	
	sge	%GPR27,%GPR3,%GPR7	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L36	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L37	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L36:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
L37:
	nop	; Automatically Added by addNopAfterLabels.pl
	slli	%GPR6,%GPR3,$2	
	lhi	%GPR4,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( _pattern	%0x10000)
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	addi	%GPR3,%GPR3,$1	
	add	%GPR4,%GPR4,%GPR6	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$2	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$5	
	nop	;;7,9
	nop	;;7,9
	lw	%GPR8,0(%GPR4)	
	add	%GPR4,%GPR5,%GPR6	
	nop	;;10,13
	nop	;;10,13
	nop	;;10,13
	andi	%GPR6,%GPR8,$65535	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sh	0(%GPR5),%GPR6	
	sge	%GPR27,%GPR3,%GPR7	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L38	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L39	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L38:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
L39:
	nop	; Automatically Added by addNopAfterLabels.pl
	slli	%GPR6,%GPR3,$2	
	lhi	%GPR5,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _pattern	%0x10000)
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	addi	%GPR3,%GPR3,$1	
	add	%GPR5,%GPR5,%GPR6	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$2	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$5	
	nop	;;7,9
	nop	;;7,9
	lw	%GPR8,0(%GPR5)	
	add	%GPR5,%GPR4,%GPR6	
	nop	;;10,13
	nop	;;10,13
	nop	;;10,13
	andi	%GPR6,%GPR8,$65535	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sh	0(%GPR4),%GPR6	
	sge	%GPR27,%GPR3,%GPR7	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L40	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L41	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L40:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
L41:
	nop	; Automatically Added by addNopAfterLabels.pl
	slli	%GPR7,%GPR3,$2	
	lhi	%GPR6,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR6,%GPR6,$( _pattern	%0x10000)
	addi	%GPR4,%GPR3,$1	
	nop	;;2,5
	nop	;;2,5
	nop	;;2,5
	add	%GPR3,%GPR6,%GPR7	
	nop	;;5,7
	nop	;;5,7
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$2	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$5	
	lw	%GPR8,0(%GPR3)	
	nop	;;9,11
	nop	;;9,11
	add	%GPR3,%GPR5,%GPR6	
	nop	;;11,13
	nop	;;11,13
	andi	%GPR6,%GPR8,$65535	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sh	0(%GPR5),%GPR6	
	sge	%GPR27,%GPR4,%GPR7	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L42	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L43	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L42:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
L43:
	nop	; Automatically Added by addNopAfterLabels.pl
	addi	%GPR1,%GPR1,$-4	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sgt	%GPR27,%GPR1,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L27	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L44	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L44:
	nop	;;0,2
	nop	;;0,2
	add	%GPR3,%GPR2,%GPR0	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$24576	
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$24576	
	nop
	nop
	nop
L45:
	nop	; Automatically Added by addNopAfterLabels.pl
	lhi	%GPR5,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _pattern	%0x10000)
	slli	%GPR6,%GPR3,$2	
	lhu	%GPR7,0(%GPR4)	
	nop	;;2,5
	nop	;;2,5
	nop	;;2,5
	add	%GPR5,%GPR5,%GPR6	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR5,0(%GPR5)	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR5,%GPR5,$65535	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR7,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L156	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L46	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L46:
	nop	;;0,2
	nop	;;0,2
	addi	%GPR3,%GPR3,$1	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$2	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$5	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR4,%GPR4,%GPR5	
	sge	%GPR27,%GPR3,%GPR6	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L47	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L48	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L47:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
L48:
	nop	; Automatically Added by addNopAfterLabels.pl
	lhi	%GPR5,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _pattern	%0x10000)
	slli	%GPR6,%GPR3,$2	
	lhu	%GPR7,0(%GPR4)	
	nop	;;2,5
	nop	;;2,5
	nop	;;2,5
	add	%GPR5,%GPR5,%GPR6	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR5,0(%GPR5)	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR5,%GPR5,$65535	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR7,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L156	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L49	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L49:
	nop	;;0,2
	nop	;;0,2
	addi	%GPR3,%GPR3,$1	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$2	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$5	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR4,%GPR4,%GPR5	
	sge	%GPR27,%GPR3,%GPR6	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L50	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L51	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L50:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
L51:
	nop	; Automatically Added by addNopAfterLabels.pl
	lhi	%GPR5,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _pattern	%0x10000)
	slli	%GPR6,%GPR3,$2	
	lhu	%GPR7,0(%GPR4)	
	nop	;;2,5
	nop	;;2,5
	nop	;;2,5
	add	%GPR5,%GPR5,%GPR6	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR5,0(%GPR5)	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR5,%GPR5,$65535	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR7,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L156	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L52	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L52:
	nop	;;0,2
	nop	;;0,2
	addi	%GPR3,%GPR3,$1	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$2	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$5	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR4,%GPR4,%GPR5	
	sge	%GPR27,%GPR3,%GPR6	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L53	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L54	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L53:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
L54:
	nop	; Automatically Added by addNopAfterLabels.pl
	lhi	%GPR5,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _pattern	%0x10000)
	slli	%GPR6,%GPR3,$2	
	lhu	%GPR7,0(%GPR4)	
	nop	;;2,5
	nop	;;2,5
	nop	;;2,5
	add	%GPR5,%GPR5,%GPR6	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR5,0(%GPR5)	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR5,%GPR5,$65535	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR7,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L156	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L55	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L55:
	nop	;;0,2
	nop	;;0,2
	addi	%GPR3,%GPR3,$1	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$2	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$5	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR4,%GPR4,%GPR5	
	sge	%GPR27,%GPR3,%GPR6	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L56	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L57	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L56:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
L57:
	nop	; Automatically Added by addNopAfterLabels.pl
	lhi	%GPR5,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _pattern	%0x10000)
	slli	%GPR6,%GPR3,$2	
	lhu	%GPR7,0(%GPR4)	
	nop	;;2,5
	nop	;;2,5
	nop	;;2,5
	add	%GPR5,%GPR5,%GPR6	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR5,0(%GPR5)	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR5,%GPR5,$65535	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR7,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L156	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L58	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L58:
	nop	;;0,2
	nop	;;0,2
	addi	%GPR3,%GPR3,$1	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$2	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$5	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR4,%GPR4,%GPR5	
	sge	%GPR27,%GPR3,%GPR6	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L59	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L60	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L59:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
L60:
	nop	; Automatically Added by addNopAfterLabels.pl
	lhi	%GPR5,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _pattern	%0x10000)
	slli	%GPR6,%GPR3,$2	
	lhu	%GPR7,0(%GPR4)	
	nop	;;2,5
	nop	;;2,5
	nop	;;2,5
	add	%GPR5,%GPR5,%GPR6	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR5,0(%GPR5)	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR5,%GPR5,$65535	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR7,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L156	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L61	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L61:
	nop	;;0,2
	nop	;;0,2
	addi	%GPR3,%GPR3,$1	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$2	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$5	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR4,%GPR4,%GPR5	
	sge	%GPR27,%GPR3,%GPR6	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L62	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L63	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L62:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
L63:
	nop	; Automatically Added by addNopAfterLabels.pl
	lhi	%GPR5,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _pattern	%0x10000)
	slli	%GPR6,%GPR3,$2	
	lhu	%GPR7,0(%GPR4)	
	nop	;;2,5
	nop	;;2,5
	nop	;;2,5
	add	%GPR5,%GPR5,%GPR6	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR5,0(%GPR5)	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR5,%GPR5,$65535	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR7,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L156	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L64	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L64:
	nop	;;0,2
	nop	;;0,2
	addi	%GPR3,%GPR3,$1	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$2	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$5	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR4,%GPR4,%GPR5	
	sge	%GPR27,%GPR3,%GPR6	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L65	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L66	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L65:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
L66:
	nop	; Automatically Added by addNopAfterLabels.pl
	lhi	%GPR5,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _pattern	%0x10000)
	slli	%GPR6,%GPR3,$2	
	lhu	%GPR7,0(%GPR4)	
	nop	;;2,5
	nop	;;2,5
	nop	;;2,5
	add	%GPR5,%GPR5,%GPR6	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR5,0(%GPR5)	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR5,%GPR5,$65535	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR7,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L156	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L67	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L67:
	nop	;;0,2
	nop	;;0,2
	addi	%GPR3,%GPR3,$1	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$2	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$5	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR4,%GPR4,%GPR5	
	sge	%GPR27,%GPR3,%GPR6	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L68	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L69	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L68:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
L69:
	nop	; Automatically Added by addNopAfterLabels.pl
	addi	%GPR1,%GPR1,$4	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$65535	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sle	%GPR27,%GPR1,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L45	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L70	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L70:
	nop	;;0,2
	nop	;;0,2
	add	%GPR4,%GPR2,%GPR0	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$24576	
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$40960	
	nop
	nop
	nop
L71:
	nop	; Automatically Added by addNopAfterLabels.pl
	slli	%GPR6,%GPR4,$2	
	lhi	%GPR5,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _pattern	%0x10000)
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	addi	%GPR4,%GPR4,$1	
	add	%GPR5,%GPR5,%GPR6	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$1	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$5	
	nop	;;7,9
	nop	;;7,9
	lw	%GPR8,0(%GPR5)	
	add	%GPR5,%GPR3,%GPR6	
	nop	;;10,13
	nop	;;10,13
	nop	;;10,13
	andi	%GPR6,%GPR8,$255	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sb	0(%GPR3),%GPR6	
	sge	%GPR27,%GPR4,%GPR7	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L72	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L73	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L72:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
L73:
	nop	; Automatically Added by addNopAfterLabels.pl
	slli	%GPR7,%GPR4,$2	
	lhi	%GPR6,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR6,%GPR6,$( _pattern	%0x10000)
	addi	%GPR3,%GPR4,$1	
	nop	;;2,5
	nop	;;2,5
	nop	;;2,5
	add	%GPR4,%GPR6,%GPR7	
	nop	;;5,7
	nop	;;5,7
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$1	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$5	
	lw	%GPR8,0(%GPR4)	
	nop	;;9,11
	nop	;;9,11
	add	%GPR4,%GPR5,%GPR6	
	nop	;;11,13
	nop	;;11,13
	andi	%GPR6,%GPR8,$255	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sb	0(%GPR5),%GPR6	
	sge	%GPR27,%GPR3,%GPR7	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L74	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L75	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L74:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
L75:
	nop	; Automatically Added by addNopAfterLabels.pl
	slli	%GPR6,%GPR3,$2	
	lhi	%GPR5,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _pattern	%0x10000)
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	addi	%GPR3,%GPR3,$1	
	add	%GPR5,%GPR5,%GPR6	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$1	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$5	
	nop	;;7,9
	nop	;;7,9
	lw	%GPR8,0(%GPR5)	
	add	%GPR5,%GPR4,%GPR6	
	nop	;;10,13
	nop	;;10,13
	nop	;;10,13
	andi	%GPR6,%GPR8,$255	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sb	0(%GPR4),%GPR6	
	sge	%GPR27,%GPR3,%GPR7	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L76	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L77	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L76:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
L77:
	nop	; Automatically Added by addNopAfterLabels.pl
	slli	%GPR6,%GPR3,$2	
	lhi	%GPR4,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( _pattern	%0x10000)
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	addi	%GPR3,%GPR3,$1	
	add	%GPR4,%GPR4,%GPR6	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$1	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$5	
	nop	;;7,9
	nop	;;7,9
	lw	%GPR8,0(%GPR4)	
	add	%GPR4,%GPR5,%GPR6	
	nop	;;10,13
	nop	;;10,13
	nop	;;10,13
	andi	%GPR6,%GPR8,$255	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sb	0(%GPR5),%GPR6	
	sge	%GPR27,%GPR3,%GPR7	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L78	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L79	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L78:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
L79:
	nop	; Automatically Added by addNopAfterLabels.pl
	slli	%GPR7,%GPR3,$2	
	lhi	%GPR6,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR6,%GPR6,$( _pattern	%0x10000)
	addi	%GPR5,%GPR3,$1	
	nop	;;2,5
	nop	;;2,5
	nop	;;2,5
	add	%GPR3,%GPR6,%GPR7	
	nop	;;5,7
	nop	;;5,7
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$1	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$5	
	lw	%GPR8,0(%GPR3)	
	nop	;;9,11
	nop	;;9,11
	add	%GPR3,%GPR4,%GPR6	
	nop	;;11,13
	nop	;;11,13
	andi	%GPR6,%GPR8,$255	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sb	0(%GPR4),%GPR6	
	sge	%GPR27,%GPR5,%GPR7	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L80	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L81	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L80:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	nop
	nop
	nop
L81:
	nop	; Automatically Added by addNopAfterLabels.pl
	slli	%GPR6,%GPR5,$2	
	lhi	%GPR4,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( _pattern	%0x10000)
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	addi	%GPR5,%GPR5,$1	
	add	%GPR4,%GPR4,%GPR6	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$1	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$5	
	nop	;;7,9
	nop	;;7,9
	lw	%GPR8,0(%GPR4)	
	add	%GPR4,%GPR3,%GPR6	
	nop	;;10,13
	nop	;;10,13
	nop	;;10,13
	andi	%GPR6,%GPR8,$255	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sb	0(%GPR3),%GPR6	
	sge	%GPR27,%GPR5,%GPR7	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L82	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L83	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L82:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	nop
	nop
	nop
L83:
	nop	; Automatically Added by addNopAfterLabels.pl
	slli	%GPR7,%GPR5,$2	
	lhi	%GPR6,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR6,%GPR6,$( _pattern	%0x10000)
	addi	%GPR3,%GPR5,$1	
	nop	;;2,5
	nop	;;2,5
	nop	;;2,5
	add	%GPR5,%GPR6,%GPR7	
	nop	;;5,7
	nop	;;5,7
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$1	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$5	
	lw	%GPR8,0(%GPR5)	
	nop	;;9,11
	nop	;;9,11
	add	%GPR5,%GPR4,%GPR6	
	nop	;;11,13
	nop	;;11,13
	andi	%GPR6,%GPR8,$255	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sb	0(%GPR4),%GPR6	
	sge	%GPR27,%GPR3,%GPR7	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L84	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L85	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L84:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
L85:
	nop	; Automatically Added by addNopAfterLabels.pl
	slli	%GPR6,%GPR3,$2	
	lhi	%GPR4,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( _pattern	%0x10000)
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	addi	%GPR3,%GPR3,$1	
	add	%GPR4,%GPR4,%GPR6	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$1	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$5	
	nop	;;7,9
	nop	;;7,9
	lw	%GPR8,0(%GPR4)	
	add	%GPR4,%GPR5,%GPR6	
	nop	;;10,13
	nop	;;10,13
	nop	;;10,13
	andi	%GPR6,%GPR8,$255	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sb	0(%GPR5),%GPR6	
	sge	%GPR27,%GPR3,%GPR7	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L86	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L87	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L86:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
L87:
	nop	; Automatically Added by addNopAfterLabels.pl
	slli	%GPR7,%GPR3,$2	
	lhi	%GPR6,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR6,%GPR6,$( _pattern	%0x10000)
	addi	%GPR5,%GPR3,$1	
	nop	;;2,5
	nop	;;2,5
	nop	;;2,5
	add	%GPR3,%GPR6,%GPR7	
	nop	;;5,7
	nop	;;5,7
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$1	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$5	
	lw	%GPR8,0(%GPR3)	
	nop	;;9,11
	nop	;;9,11
	add	%GPR3,%GPR4,%GPR6	
	nop	;;11,13
	nop	;;11,13
	andi	%GPR6,%GPR8,$255	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sb	0(%GPR4),%GPR6	
	sge	%GPR27,%GPR5,%GPR7	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L88	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L89	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L88:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	nop
	nop
	nop
L89:
	nop	; Automatically Added by addNopAfterLabels.pl
	slli	%GPR6,%GPR5,$2	
	lhi	%GPR4,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( _pattern	%0x10000)
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	addi	%GPR5,%GPR5,$1	
	add	%GPR4,%GPR4,%GPR6	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$1	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$5	
	nop	;;7,9
	nop	;;7,9
	lw	%GPR8,0(%GPR4)	
	add	%GPR4,%GPR3,%GPR6	
	nop	;;10,13
	nop	;;10,13
	nop	;;10,13
	andi	%GPR6,%GPR8,$255	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sb	0(%GPR3),%GPR6	
	sge	%GPR27,%GPR5,%GPR7	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L90	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L91	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L90:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	nop
	nop
	nop
L91:
	nop	; Automatically Added by addNopAfterLabels.pl
	slli	%GPR7,%GPR5,$2	
	lhi	%GPR6,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR6,%GPR6,$( _pattern	%0x10000)
	addi	%GPR3,%GPR5,$1	
	nop	;;2,5
	nop	;;2,5
	nop	;;2,5
	add	%GPR5,%GPR6,%GPR7	
	nop	;;5,7
	nop	;;5,7
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$1	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$5	
	lw	%GPR8,0(%GPR5)	
	nop	;;9,11
	nop	;;9,11
	add	%GPR5,%GPR4,%GPR6	
	nop	;;11,13
	nop	;;11,13
	andi	%GPR6,%GPR8,$255	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sb	0(%GPR4),%GPR6	
	sge	%GPR27,%GPR3,%GPR7	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L92	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L93	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L92:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
L93:
	nop	; Automatically Added by addNopAfterLabels.pl
	slli	%GPR6,%GPR3,$2	
	lhi	%GPR4,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( _pattern	%0x10000)
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	addi	%GPR3,%GPR3,$1	
	add	%GPR4,%GPR4,%GPR6	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$1	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$5	
	nop	;;7,9
	nop	;;7,9
	lw	%GPR8,0(%GPR4)	
	add	%GPR4,%GPR5,%GPR6	
	nop	;;10,13
	nop	;;10,13
	nop	;;10,13
	andi	%GPR6,%GPR8,$255	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sb	0(%GPR5),%GPR6	
	sge	%GPR27,%GPR3,%GPR7	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L94	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L95	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L94:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
L95:
	nop	; Automatically Added by addNopAfterLabels.pl
	slli	%GPR7,%GPR3,$2	
	lhi	%GPR6,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR6,%GPR6,$( _pattern	%0x10000)
	addi	%GPR5,%GPR3,$1	
	nop	;;2,5
	nop	;;2,5
	nop	;;2,5
	add	%GPR3,%GPR6,%GPR7	
	nop	;;5,7
	nop	;;5,7
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$1	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$5	
	lw	%GPR8,0(%GPR3)	
	nop	;;9,11
	nop	;;9,11
	add	%GPR3,%GPR4,%GPR6	
	nop	;;11,13
	nop	;;11,13
	andi	%GPR6,%GPR8,$255	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sb	0(%GPR4),%GPR6	
	sge	%GPR27,%GPR5,%GPR7	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L96	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L97	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L96:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	nop
	nop
	nop
L97:
	nop	; Automatically Added by addNopAfterLabels.pl
	slli	%GPR6,%GPR5,$2	
	lhi	%GPR4,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( _pattern	%0x10000)
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	addi	%GPR5,%GPR5,$1	
	add	%GPR4,%GPR4,%GPR6	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$1	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$5	
	nop	;;7,9
	nop	;;7,9
	lw	%GPR8,0(%GPR4)	
	add	%GPR4,%GPR3,%GPR6	
	nop	;;10,13
	nop	;;10,13
	nop	;;10,13
	andi	%GPR6,%GPR8,$255	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sb	0(%GPR3),%GPR6	
	sge	%GPR27,%GPR5,%GPR7	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L98	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L99	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L98:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	nop
	nop
	nop
L99:
	nop	; Automatically Added by addNopAfterLabels.pl
	slli	%GPR7,%GPR5,$2	
	lhi	%GPR6,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR6,%GPR6,$( _pattern	%0x10000)
	addi	%GPR3,%GPR5,$1	
	nop	;;2,5
	nop	;;2,5
	nop	;;2,5
	add	%GPR5,%GPR6,%GPR7	
	nop	;;5,7
	nop	;;5,7
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$1	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$5	
	lw	%GPR8,0(%GPR5)	
	nop	;;9,11
	nop	;;9,11
	add	%GPR5,%GPR4,%GPR6	
	nop	;;11,13
	nop	;;11,13
	andi	%GPR6,%GPR8,$255	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sb	0(%GPR4),%GPR6	
	sge	%GPR27,%GPR3,%GPR7	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L100	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L101	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L100:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
L101:
	nop	; Automatically Added by addNopAfterLabels.pl
	slli	%GPR7,%GPR3,$2	
	lhi	%GPR6,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR6,%GPR6,$( _pattern	%0x10000)
	addi	%GPR4,%GPR3,$1	
	nop	;;2,5
	nop	;;2,5
	nop	;;2,5
	add	%GPR3,%GPR6,%GPR7	
	nop	;;5,7
	nop	;;5,7
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$1	
	lhi	%GPR7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$5	
	lw	%GPR8,0(%GPR3)	
	nop	;;9,11
	nop	;;9,11
	add	%GPR3,%GPR5,%GPR6	
	nop	;;11,13
	nop	;;11,13
	andi	%GPR6,%GPR8,$255	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sb	0(%GPR5),%GPR6	
	sge	%GPR27,%GPR4,%GPR7	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L102	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L103	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L102:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
L103:
	nop	; Automatically Added by addNopAfterLabels.pl
	addi	%GPR1,%GPR1,$-4	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sgt	%GPR27,%GPR1,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L71	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L104	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L104:
	nop	;;0,2
	nop	;;0,2
	add	%GPR3,%GPR2,%GPR0	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$24576	
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$24576	
	nop
	nop
	nop
L105:
	nop	; Automatically Added by addNopAfterLabels.pl
	lhi	%GPR5,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _pattern	%0x10000)
	slli	%GPR6,%GPR3,$2	
	lbu	%GPR7,0(%GPR4)	
	nop	;;2,5
	nop	;;2,5
	nop	;;2,5
	add	%GPR5,%GPR5,%GPR6	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR5,0(%GPR5)	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR5,%GPR5,$255	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR7,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L156	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L106	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L106:
	nop	;;0,2
	nop	;;0,2
	addi	%GPR3,%GPR3,$1	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$5	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR4,%GPR4,%GPR5	
	sge	%GPR27,%GPR3,%GPR6	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L107	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L108	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L107:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
L108:
	nop	; Automatically Added by addNopAfterLabels.pl
	lhi	%GPR5,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _pattern	%0x10000)
	slli	%GPR6,%GPR3,$2	
	lbu	%GPR7,0(%GPR4)	
	nop	;;2,5
	nop	;;2,5
	nop	;;2,5
	add	%GPR5,%GPR5,%GPR6	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR5,0(%GPR5)	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR5,%GPR5,$255	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR7,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L156	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L109	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L109:
	nop	;;0,2
	nop	;;0,2
	addi	%GPR3,%GPR3,$1	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$5	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR4,%GPR4,%GPR5	
	sge	%GPR27,%GPR3,%GPR6	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L110	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L111	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L110:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
L111:
	nop	; Automatically Added by addNopAfterLabels.pl
	lhi	%GPR5,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _pattern	%0x10000)
	slli	%GPR6,%GPR3,$2	
	lbu	%GPR7,0(%GPR4)	
	nop	;;2,5
	nop	;;2,5
	nop	;;2,5
	add	%GPR5,%GPR5,%GPR6	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR5,0(%GPR5)	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR5,%GPR5,$255	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR7,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L156	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L112	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L112:
	nop	;;0,2
	nop	;;0,2
	addi	%GPR3,%GPR3,$1	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$5	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR4,%GPR4,%GPR5	
	sge	%GPR27,%GPR3,%GPR6	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L113	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L114	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L113:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
L114:
	nop	; Automatically Added by addNopAfterLabels.pl
	lhi	%GPR5,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _pattern	%0x10000)
	slli	%GPR6,%GPR3,$2	
	lbu	%GPR7,0(%GPR4)	
	nop	;;2,5
	nop	;;2,5
	nop	;;2,5
	add	%GPR5,%GPR5,%GPR6	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR5,0(%GPR5)	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR5,%GPR5,$255	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR7,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L156	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L115	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L115:
	nop	;;0,2
	nop	;;0,2
	addi	%GPR3,%GPR3,$1	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$5	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR4,%GPR4,%GPR5	
	sge	%GPR27,%GPR3,%GPR6	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L116	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L117	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L116:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
L117:
	nop	; Automatically Added by addNopAfterLabels.pl
	lhi	%GPR5,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _pattern	%0x10000)
	slli	%GPR6,%GPR3,$2	
	lbu	%GPR7,0(%GPR4)	
	nop	;;2,5
	nop	;;2,5
	nop	;;2,5
	add	%GPR5,%GPR5,%GPR6	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR5,0(%GPR5)	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR5,%GPR5,$255	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR7,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L156	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L118	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L118:
	nop	;;0,2
	nop	;;0,2
	addi	%GPR5,%GPR3,$1	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$1	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$5	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR3,%GPR4,%GPR3	
	sge	%GPR27,%GPR5,%GPR6	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L119	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L120	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L119:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	nop
	nop
	nop
L120:
	nop	; Automatically Added by addNopAfterLabels.pl
	lhi	%GPR4,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( _pattern	%0x10000)
	slli	%GPR6,%GPR5,$2	
	lbu	%GPR7,0(%GPR3)	
	nop	;;2,5
	nop	;;2,5
	nop	;;2,5
	add	%GPR4,%GPR4,%GPR6	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR4,0(%GPR4)	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR4,%GPR4,$255	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR7,%GPR4	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L156	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L121	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L121:
	nop	;;0,2
	nop	;;0,2
	addi	%GPR4,%GPR5,$1	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$5	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR3,%GPR3,%GPR5	
	sge	%GPR27,%GPR4,%GPR6	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L122	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L123	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L122:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
L123:
	nop	; Automatically Added by addNopAfterLabels.pl
	lhi	%GPR5,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _pattern	%0x10000)
	slli	%GPR6,%GPR4,$2	
	lbu	%GPR7,0(%GPR3)	
	nop	;;2,5
	nop	;;2,5
	nop	;;2,5
	add	%GPR5,%GPR5,%GPR6	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR5,0(%GPR5)	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR5,%GPR5,$255	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR7,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L156	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L124	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L124:
	nop	;;0,2
	nop	;;0,2
	addi	%GPR5,%GPR4,$1	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$1	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$5	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR4,%GPR3,%GPR4	
	sge	%GPR27,%GPR5,%GPR6	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L125	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L126	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L125:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	nop
	nop
	nop
L126:
	nop	; Automatically Added by addNopAfterLabels.pl
	lhi	%GPR3,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$( _pattern	%0x10000)
	slli	%GPR6,%GPR5,$2	
	lbu	%GPR7,0(%GPR4)	
	nop	;;2,5
	nop	;;2,5
	nop	;;2,5
	add	%GPR3,%GPR3,%GPR6	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR3,0(%GPR3)	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR3,%GPR3,$255	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR7,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L156	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L127	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L127:
	nop	;;0,2
	nop	;;0,2
	addi	%GPR3,%GPR5,$1	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$5	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR4,%GPR4,%GPR5	
	sge	%GPR27,%GPR3,%GPR6	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L128	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L129	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L128:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
L129:
	nop	; Automatically Added by addNopAfterLabels.pl
	lhi	%GPR5,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _pattern	%0x10000)
	slli	%GPR6,%GPR3,$2	
	lbu	%GPR7,0(%GPR4)	
	nop	;;2,5
	nop	;;2,5
	nop	;;2,5
	add	%GPR5,%GPR5,%GPR6	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR5,0(%GPR5)	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR5,%GPR5,$255	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR7,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L156	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L130	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L130:
	nop	;;0,2
	nop	;;0,2
	addi	%GPR5,%GPR3,$1	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$1	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$5	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR3,%GPR4,%GPR3	
	sge	%GPR27,%GPR5,%GPR6	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L131	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L132	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L131:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	nop
	nop
	nop
L132:
	nop	; Automatically Added by addNopAfterLabels.pl
	lhi	%GPR4,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( _pattern	%0x10000)
	slli	%GPR6,%GPR5,$2	
	lbu	%GPR7,0(%GPR3)	
	nop	;;2,5
	nop	;;2,5
	nop	;;2,5
	add	%GPR4,%GPR4,%GPR6	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR4,0(%GPR4)	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR4,%GPR4,$255	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR7,%GPR4	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L156	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L133	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L133:
	nop	;;0,2
	nop	;;0,2
	addi	%GPR4,%GPR5,$1	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$5	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR3,%GPR3,%GPR5	
	sge	%GPR27,%GPR4,%GPR6	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L134	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L135	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L134:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
L135:
	nop	; Automatically Added by addNopAfterLabels.pl
	lhi	%GPR5,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _pattern	%0x10000)
	slli	%GPR6,%GPR4,$2	
	lbu	%GPR7,0(%GPR3)	
	nop	;;2,5
	nop	;;2,5
	nop	;;2,5
	add	%GPR5,%GPR5,%GPR6	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR5,0(%GPR5)	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR5,%GPR5,$255	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR7,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L156	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L136	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L136:
	nop	;;0,2
	nop	;;0,2
	addi	%GPR5,%GPR4,$1	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$1	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$5	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR4,%GPR3,%GPR4	
	sge	%GPR27,%GPR5,%GPR6	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L137	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L138	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L137:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	nop
	nop
	nop
L138:
	nop	; Automatically Added by addNopAfterLabels.pl
	lhi	%GPR3,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$( _pattern	%0x10000)
	slli	%GPR6,%GPR5,$2	
	lbu	%GPR7,0(%GPR4)	
	nop	;;2,5
	nop	;;2,5
	nop	;;2,5
	add	%GPR3,%GPR3,%GPR6	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR3,0(%GPR3)	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR3,%GPR3,$255	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR7,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L156	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L139	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L139:
	nop	;;0,2
	nop	;;0,2
	addi	%GPR3,%GPR5,$1	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$5	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR4,%GPR4,%GPR5	
	sge	%GPR27,%GPR3,%GPR6	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L140	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L141	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L140:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
L141:
	nop	; Automatically Added by addNopAfterLabels.pl
	lhi	%GPR5,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _pattern	%0x10000)
	slli	%GPR6,%GPR3,$2	
	lbu	%GPR7,0(%GPR4)	
	nop	;;2,5
	nop	;;2,5
	nop	;;2,5
	add	%GPR5,%GPR5,%GPR6	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR5,0(%GPR5)	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR5,%GPR5,$255	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR7,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L156	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L142	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L142:
	nop	;;0,2
	nop	;;0,2
	addi	%GPR5,%GPR3,$1	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$1	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$5	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR3,%GPR4,%GPR3	
	sge	%GPR27,%GPR5,%GPR6	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L143	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L144	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L143:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	nop
	nop
	nop
L144:
	nop	; Automatically Added by addNopAfterLabels.pl
	lhi	%GPR4,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( _pattern	%0x10000)
	slli	%GPR6,%GPR5,$2	
	lbu	%GPR7,0(%GPR3)	
	nop	;;2,5
	nop	;;2,5
	nop	;;2,5
	add	%GPR4,%GPR4,%GPR6	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR4,0(%GPR4)	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR4,%GPR4,$255	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR7,%GPR4	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L156	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L145	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L145:
	nop	;;0,2
	nop	;;0,2
	addi	%GPR4,%GPR5,$1	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$5	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR3,%GPR3,%GPR5	
	sge	%GPR27,%GPR4,%GPR6	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L146	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L147	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L146:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
L147:
	nop	; Automatically Added by addNopAfterLabels.pl
	lhi	%GPR5,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _pattern	%0x10000)
	slli	%GPR6,%GPR4,$2	
	lbu	%GPR7,0(%GPR3)	
	nop	;;2,5
	nop	;;2,5
	nop	;;2,5
	add	%GPR5,%GPR5,%GPR6	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR5,0(%GPR5)	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR5,%GPR5,$255	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR7,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L156	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L148	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L148:
	nop	;;0,2
	nop	;;0,2
	addi	%GPR5,%GPR4,$1	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$1	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$5	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR4,%GPR3,%GPR4	
	sge	%GPR27,%GPR5,%GPR6	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L149	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L150	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L149:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	nop
	nop
	nop
L150:
	nop	; Automatically Added by addNopAfterLabels.pl
	lhi	%GPR3,$( _pattern	/0x10000)
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$( _pattern	%0x10000)
	slli	%GPR6,%GPR5,$2	
	lbu	%GPR7,0(%GPR4)	
	nop	;;2,5
	nop	;;2,5
	nop	;;2,5
	add	%GPR3,%GPR3,%GPR6	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR3,0(%GPR3)	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
	; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR3,%GPR3,$255	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR7,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L156	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L151	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L151:
	nop	;;0,2
	nop	;;0,2
	addi	%GPR3,%GPR5,$1	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$5	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR4,%GPR4,%GPR5	
	sge	%GPR27,%GPR3,%GPR6	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L152	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L153	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L152:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
L153:
	nop	; Automatically Added by addNopAfterLabels.pl
	addi	%GPR1,%GPR1,$4	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$65535	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sle	%GPR27,%GPR1,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L105	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L154	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L154:
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
	ori	%GPR1,%GPR1,$5	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR2,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L2	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L155	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L155:
	nop	; Automatically Added by addNopAfterLabels.pl
	lhi	%GPR1,$( _errorNumber	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _errorNumber	%0x10000)
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	j	L157	
	nop
	nop
	nop
L156:
	nop	; Automatically Added by addNopAfterLabels.pl
	lhi	%GPR1,$( _errorNumber	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _errorNumber	%0x10000)
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	nop
	nop
	nop
L157:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L158	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L158:
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
