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
pin_down:
L1:
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
	NOP		;;2,7
	NOP		;;2,7
	NOP		;;2,7
	NOP		;;2,7
	NOP		;;2,7
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	NOP		
	NOP		
	NOP		
L2:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$4	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$1	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$21	
	NOP		;;6,8
	NOP		;;6,8
	mult	%GPR5,%GPR4,%GPR5	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	addi	%GPR4,%GPR4,$1	
	add	%GPR5,%GPR1,%GPR5	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sw	0(%GPR5),%GPR6	
	slt	%GPR27,%GPR4,%GPR7	
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
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
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	NOP		
	NOP		
	NOP		
L4:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$4	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$1	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$15	
	NOP		;;6,8
	NOP		;;6,8
	mult	%GPR1,%GPR4,%GPR1	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	addi	%GPR4,%GPR4,$1	
	add	%GPR1,%GPR2,%GPR1	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sw	0(%GPR1),%GPR5	
	slt	%GPR27,%GPR4,%GPR6	
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	bnez	%GPR27,L4	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L5	
	NOP		
	NOP		
	NOP		
	NOP		
L5:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	NOP		
	NOP		
	NOP		
L6:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$4	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$35	
	NOP		;;6,8
	NOP		;;6,8
	mult	%GPR1,%GPR4,%GPR1	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	addi	%GPR4,%GPR4,$1	
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sw	0(%GPR1),%GPR2	
	slt	%GPR27,%GPR4,%GPR5	
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
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
	subi	%GPR29,%GPR29,$12	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *_matrixC	
	LI	%GPR4, *_matrixB	
	NOP		;;3,6
	NOP		;;3,6
	NOP		;;3,6
	sw	-4(%GPR30),%GPR1	
	add	%GPR3,%GPR1,%GPR0	
	add	%GPR2,%GPR4,%GPR0	
	LI	%GPR1, *_matrixA	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	pin_down	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;10,15
	NOP		;;10,15
	NOP		;;10,15
	NOP		;;10,15
	NOP		;;10,15
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		
	NOP		
	NOP		
L10:
	LI	%GPR1, *_matrixA	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		
	NOP		
	NOP		
L11:
	NOP		;;0,3
	NOP		;;0,3
	NOP		;;0,3
	LI	%GPR4, *_matrixB	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$3	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$4	
	lw	%GPR9,-4(%GPR30)	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$0	
	mult	%GPR8,%GPR2,%GPR5	
	NOP		;;8,11
	NOP		;;8,11
	NOP		;;8,11
	sw	0(%GPR9),%GPR7	
	mult	%GPR6,%GPR8,%GPR6	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$0	
	NOP		;;13,16
	NOP		;;13,16
	NOP		;;13,16
	add	%GPR4,%GPR4,%GPR6	
	NOP		
	NOP		
	NOP		
L12:
	add	%GPR6,%GPR4,%GPR0	
	add	%GPR7,%GPR1,%GPR0	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lw	%GPR6,0(%GPR6)	
	lw	%GPR7,0(%GPR7)	
	NOP		;;5,7
	NOP		;;5,7
	addi	%GPR5,%GPR5,$1	
	lhi	%GPR8,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR8,%GPR8,$4	
	mult	%GPR6,%GPR6,%GPR7	
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$4	
	lhi	%GPR10,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR10,%GPR10,$3	
	add	%GPR4,%GPR4,%GPR8	
	lw	%GPR7,-4(%GPR30)	
	add	%GPR1,%GPR1,%GPR9	
	NOP		;;14,17
	NOP		;;14,17
	NOP		;;14,17
	lw	%GPR7,0(%GPR7)	
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	add	%GPR6,%GPR7,%GPR6	
	lw	%GPR7,-4(%GPR30)	
	NOP		;;22,26
	NOP		;;22,26
	NOP		;;22,26
	NOP		;;22,26
	sw	0(%GPR7),%GPR6	
	slt	%GPR27,%GPR5,%GPR10	
	NOP		;;27,31
	NOP		;;27,31
	NOP		;;27,31
	NOP		;;27,31
	bnez	%GPR27,L12	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L13	
	NOP		
	NOP		
	NOP		
	NOP		
L13:
	NOP		;;0,2
	NOP		;;0,2
	lw	%GPR6,-4(%GPR30)	
	addi	%GPR3,%GPR3,$1	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$7	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	add	%GPR4,%GPR6,%GPR4	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	sw	-4(%GPR30),%GPR4	
	slt	%GPR27,%GPR3,%GPR5	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	bnez	%GPR27,L11	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L15	
	NOP		
	NOP		
	NOP		
	NOP		
L14:
	NOP		
	NOP		
	NOP		
L15:
	addi	%GPR2,%GPR2,$1	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$5	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	slt	%GPR27,%GPR2,%GPR1	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	bnez	%GPR27,L10	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L16	
	NOP		
	NOP		
	NOP		
	NOP		
L16:
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
	j	L17	
	NOP		
	NOP		
	NOP		
	NOP		
L17:
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
