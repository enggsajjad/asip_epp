	.section	.data
	;.global	_array
	.align	4
_array:
	.data.32	45
	.data.32	75
	.data.32	342
	.data.32	54
	.data.32	7
	.data.32	86
	.data.32	92
	.data.32	235
	.data.32	4
	.data.32	42
	.data.32	99
	.data.32	78
	.data.32	63
	.data.32	352
	.data.32	21
	.data.32	634
	.data.32	6
	.data.32	77
	.data.32	346
	.data.32	23
	.section	.text
	.addressing	Word
bubbleSort:
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
				; Automatically 6 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR1,%GPR0	
	nop
	nop
	nop
L2:
	sltu	%GPR27,%GPR3,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L3	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L9	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L3:
	add	%GPR4,%GPR1,%GPR0	
	nop
	nop
	nop
L4:
	subu	%GPR5,%GPR2,%GPR3	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sltu	%GPR27,%GPR4,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L5	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L5:
	addui	%GPR5,%GPR4,$1	
	nop	;;1,3
	nop	;;1,3
	lhi	%GPR6,$( _array	/0x10000)
	nop
	nop
	nop
	ori	%GPR6,%GPR6,$( _array	%0x10000)
	lhi	%GPR7,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$4	
	lhi	%GPR9,$( _array	/0x10000)
	nop
	nop
	nop
	ori	%GPR9,%GPR9,$( _array	%0x10000)
	lhi	%GPR8,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$4	
	nop	;;6,8
	nop	;;6,8
	multu	%GPR5,%GPR5,%GPR7	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	multu	%GPR7,%GPR4,%GPR8	
	add	%GPR5,%GPR6,%GPR5	
	nop	;;13,16
	nop	;;13,16
	nop	;;13,16
	add	%GPR6,%GPR9,%GPR7	
	lw	%GPR5,0(%GPR5)	
	nop	;;17,20
	nop	;;17,20
	nop	;;17,20
	lw	%GPR6,0(%GPR6)	
	nop	;;20,24
	nop	;;20,24
	nop	;;20,24
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sltu	%GPR27,%GPR5,%GPR6	
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
	nop	;;0,2
	nop	;;0,2
	addui	%GPR5,%GPR4,$1	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR6,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$4	
	lhi	%GPR7,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$4	
	nop	;;5,7
	nop	;;5,7
	lhi	%GPR9,$( _array	/0x10000)
	nop
	nop
	nop
	ori	%GPR9,%GPR9,$( _array	%0x10000)
	multu	%GPR5,%GPR5,%GPR6	
	multu	%GPR7,%GPR4,%GPR7	
	lhi	%GPR8,$( _array	/0x10000)
	nop
	nop
	nop
	ori	%GPR8,%GPR8,$( _array	%0x10000)
	addui	%GPR11,%GPR4,$1	
	lhi	%GPR6,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$4	
	lhi	%GPR12,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR12,%GPR12,$4	
	add	%GPR7,%GPR9,%GPR7	
	add	%GPR5,%GPR8,%GPR5	
	multu	%GPR6,%GPR4,%GPR6	
	multu	%GPR9,%GPR11,%GPR12	
	lhi	%GPR10,$( _array	/0x10000)
	nop
	nop
	nop
	ori	%GPR10,%GPR10,$( _array	%0x10000)
	lhi	%GPR8,$( _array	/0x10000)
	nop
	nop
	nop
	ori	%GPR8,%GPR8,$( _array	%0x10000)
	nop	;;19,21
	nop	;;19,21
	lw	%GPR11,0(%GPR5)	
	add	%GPR6,%GPR10,%GPR6	
	lw	%GPR5,0(%GPR7)	
	add	%GPR7,%GPR8,%GPR9	
	nop	;;24,26
	nop	;;24,26
	sw	0(%GPR6),%GPR11	
	nop	;;26,30
	nop	;;26,30
	nop	;;26,30
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR7),%GPR5	
	nop
	nop
	nop
L7:
	addui	%GPR4,%GPR4,$1	
	j	L4	
	nop
	nop
	nop
L8:
	addui	%GPR3,%GPR3,$1	
	j	L2	
	nop
	nop
	nop
L9:
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
				; Automatically 1 NOPs removed by reduceNOPs.sh
main:
L10:
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
	ori	%GPR2,%GPR2,$19	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	bubbleSort	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 8 NOPs removed by reduceNOPs.sh
L11:
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