	.section	.data
	;.global	_matrixA
	.align	4
_matrixA:
	.space	84
	;.global	_matrixB
	.align	4
_matrixB:
	.space	60
	;.global	_matrixC
	.align	4
_matrixC:
	.space	140
	.section	.text
	.addressing	Word
pin_down:
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
				; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
L2:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
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
	ori	%GPR6,%GPR6,$1	
	lhi	%GPR7,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$21	
	nop	;;6,8
	nop	;;6,8
	mult	%GPR5,%GPR4,%GPR5	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR4,%GPR4,$1	
	add	%GPR5,%GPR1,%GPR5	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR5),%GPR6	
	slt	%GPR27,%GPR4,%GPR7	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L2	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L3	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L3:
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
L4:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	
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
	ori	%GPR6,%GPR6,$15	
	nop	;;6,8
	nop	;;6,8
	mult	%GPR1,%GPR4,%GPR1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR4,%GPR4,$1	
	add	%GPR1,%GPR2,%GPR1	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR5	
	slt	%GPR27,%GPR4,%GPR6	
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
L5:
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
L6:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$35	
	nop	;;6,8
	nop	;;6,8
	mult	%GPR1,%GPR4,%GPR1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR4,%GPR4,$1	
	add	%GPR1,%GPR3,%GPR1	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	slt	%GPR27,%GPR4,%GPR5	
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
L7:
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
	j	L8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L8:
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
L9:
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
				; Automatically 4 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( _matrixC	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _matrixC	%0x10000)
	lhi	%GPR4,$( _matrixB	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( _matrixB	%0x10000)
	nop	;;3,6
	nop	;;3,6
	nop	;;3,6
	sw	-4(%GPR30),%GPR1	
	add	%GPR3,%GPR1,%GPR0	
	add	%GPR2,%GPR4,%GPR0	
	lhi	%GPR1,$( _matrixA	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _matrixA	%0x10000)
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	pin_down	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop
	nop
	nop
L10:
	lhi	%GPR1,$( _matrixA	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _matrixA	%0x10000)
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
L11:
	nop	;;0,3
	nop	;;0,3
	nop	;;0,3
	lhi	%GPR4,$( _matrixB	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( _matrixB	%0x10000)
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$3	
	lhi	%GPR6,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$4	
	lw	%GPR9,-4(%GPR30)	
	lhi	%GPR7,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$0	
	mult	%GPR8,%GPR2,%GPR5	
	nop	;;8,11
	nop	;;8,11
	nop	;;8,11
	sw	0(%GPR9),%GPR7	
	mult	%GPR6,%GPR8,%GPR6	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	nop	;;13,16
	nop	;;13,16
	nop	;;13,16
	add	%GPR4,%GPR4,%GPR6	
	nop
	nop
	nop
L12:
	add	%GPR6,%GPR4,%GPR0	
	add	%GPR7,%GPR1,%GPR0	
	lw	%GPR8,-4(%GPR30)	
	nop	;;2,4
	nop	;;2,4
	lw	%GPR6,0(%GPR6)	
	lw	%GPR7,0(%GPR7)	
	lw	%GPR8,0(%GPR8)	
	nop	;;6,9
	nop	;;6,9
	nop	;;6,9
	addi	%GPR5,%GPR5,$1	
	mac	%GPR8,%GPR6,%GPR7	
	lhi	%GPR6,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$4	
	lhi	%GPR9,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$3	
	lhi	%GPR7,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$4	
	nop	;;13,15
	nop	;;13,15
	add	%GPR4,%GPR4,%GPR6	
	lw	%GPR6,-4(%GPR30)	
	add	%GPR1,%GPR1,%GPR7	
	nop	;;17,20
	nop	;;17,20
	nop	;;17,20
	sw	0(%GPR6),%GPR8	
	slt	%GPR27,%GPR5,%GPR9	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L12	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L13	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L13:
	lw	%GPR6,-4(%GPR30)	
	nop	;;1,3
	nop	;;1,3
	addi	%GPR3,%GPR3,$1	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$7	
	nop	;;6,8
	nop	;;6,8
	add	%GPR4,%GPR6,%GPR4	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR4	
	slt	%GPR27,%GPR3,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L11	
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
	bnez	%GPR27,L10	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L15	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L15:
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
	j	L16	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L16:
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