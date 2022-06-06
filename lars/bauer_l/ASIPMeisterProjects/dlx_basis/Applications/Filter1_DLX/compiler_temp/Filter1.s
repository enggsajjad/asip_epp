	.section	.data
	;.global	_fifoArray
	.align	4
_fifoArray:
	.space	64
	;.global	_fifoNextWrite
	.align	4
_fifoNextWrite:
	.space	4
	;.global	_fifoNextRead
	.align	4
_fifoNextRead:
	.space	4
	.align	4
L1:
	.space	4
	.section	.text
computeFilter1:
L2:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$12	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;0,2
	NOP		;;0,2
	NOP		
	NOP		
	NOP		
	NOP		;;2,4
	NOP		;;2,4
	LI	%GPR2, *L1	
	LI	%GPR3, *L1	
	NOP		;;5,7
	NOP		;;5,7
	slli	%GPR1,%GPR1,$4	
	lw	%GPR2,0(%GPR2)	
	NOP		;;8,11
	NOP		;;8,11
	NOP		;;8,11
	sw	-4(%GPR30),%GPR1	
	add	%GPR1,%GPR2,%GPR1	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	sw	0(%GPR3),%GPR1	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	fifoGet	
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
	LI	%GPR2, *L1	
	NOP		;;19,22
	NOP		;;19,22
	NOP		;;19,22
	lw	%GPR1,0(%GPR1)	
	NOP		;;22,26
	NOP		;;22,26
	NOP		;;22,26
	NOP		;;22,26
	sub	%GPR1,%GPR1,%GPR28	
	NOP		;;26,30
	NOP		;;26,30
	NOP		;;26,30
	NOP		;;26,30
	sw	0(%GPR2),%GPR1	
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
	jal	fifoPut	
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
	NOP		;;33,37
	NOP		;;33,37
	NOP		;;33,37
	NOP		;;33,37
	lw	%GPR1,0(%GPR1)	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$255	
	NOP		;;38,42
	NOP		;;38,42
	NOP		;;38,42
	NOP		;;38,42
	sgt	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L3	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L4	
	NOP		
	NOP		
	NOP		
	NOP		
L3:
	LI	%GPR1, *L1	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$255	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sw	0(%GPR1),%GPR2	
	j	L6	
	NOP		
	NOP		
	NOP		
L4:
	LI	%GPR1, *L1	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lw	%GPR1,0(%GPR1)	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	slt	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L5	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L6	
	NOP		
	NOP		
	NOP		
	NOP		
L5:
	LI	%GPR1, *L1	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sw	0(%GPR1),%GPR2	
	NOP		
	NOP		
	NOP		
L6:
	LI	%GPR1, *L1	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lw	%GPR28,0(%GPR1)	
	NOP		;;4,12
	NOP		;;4,12
	NOP		;;4,12
	NOP		;;4,12
	NOP		;;4,12
	NOP		;;4,12
	NOP		;;4,12
	NOP		;;4,12
	j	L7	
	NOP		
	NOP		
	NOP		
	NOP		
L7:
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
fifoInit:
L8:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;1,6
	NOP		;;1,6
	NOP		;;1,6
	NOP		;;1,6
	NOP		;;1,6
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		
	NOP		
	NOP		
L9:
	LI	%GPR2, *_fifoArray	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$4	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$16	
	mult	%GPR3,%GPR1,%GPR3	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	addi	%GPR1,%GPR1,$1	
	add	%GPR2,%GPR2,%GPR3	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sw	0(%GPR2),%GPR4	
	slt	%GPR27,%GPR1,%GPR5	
	bnez	%GPR27,L9	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L10	
	NOP		
	NOP		
	NOP		
	NOP		
L10:
	LI	%GPR1, *_fifoNextWrite	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	LI	%GPR3, *_fifoNextRead	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	sw	0(%GPR1),%GPR2	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	sw	0(%GPR3),%GPR4	
	j	L11	
	NOP		
	NOP		
	NOP		
	NOP		
L11:
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
fifoPut:
L12:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
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
	LI	%GPR2, *_fifoNextWrite	
	NOP		;;3,7
	NOP		;;3,7
	NOP		;;3,7
	NOP		;;3,7
	lw	%GPR2,0(%GPR2)	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$16	
	NOP		;;8,11
	NOP		;;8,11
	NOP		;;8,11
	addi	%GPR2,%GPR2,$1	
	NOP		;;11,15
	NOP		;;11,15
	NOP		;;11,15
	NOP		;;11,15
	seq	%GPR27,%GPR2,%GPR3	
	bnez	%GPR27,L13	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L14	
	NOP		
	NOP		
	NOP		
	NOP		
L13:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		
	NOP		
	NOP		
L14:
	LI	%GPR3, *_fifoNextRead	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lw	%GPR3,0(%GPR3)	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR2,%GPR3	
	bnez	%GPR27,L15	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L16	
	NOP		
	NOP		
	NOP		
	NOP		
L15:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$1	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	j	L17	
	NOP		
	NOP		
	NOP		
	NOP		
L16:
	LI	%GPR3, *_fifoNextWrite	
	NOP		;;0,2
	NOP		;;0,2
	LI	%GPR4, *_fifoArray	
	NOP		;;2,4
	NOP		;;2,4
	lw	%GPR3,0(%GPR3)	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$4	
	LI	%GPR6, *_fifoNextWrite	
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		;;7,9
	NOP		;;7,9
	mult	%GPR3,%GPR3,%GPR5	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	add	%GPR3,%GPR4,%GPR3	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sw	0(%GPR3),%GPR1	
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	sw	0(%GPR6),%GPR2	
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
fifoGet:
L18:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR2, *_fifoNextRead	
	LI	%GPR1, *_fifoNextWrite	
	NOP		;;3,6
	NOP		;;3,6
	NOP		;;3,6
	lw	%GPR2,0(%GPR2)	
	lw	%GPR1,0(%GPR1)	
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	seq	%GPR27,%GPR2,%GPR1	
	bnez	%GPR27,L19	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L20	
	NOP		
	NOP		
	NOP		
	NOP		
L19:
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
	j	L23	
	NOP		
	NOP		
	NOP		
	NOP		
L20:
	LI	%GPR1, *_fifoNextRead	
	NOP		;;0,2
	NOP		;;0,2
	LI	%GPR2, *_fifoNextRead	
	LI	%GPR3, *_fifoArray	
	lw	%GPR1,0(%GPR1)	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	lw	%GPR2,0(%GPR2)	
	LI	%GPR5, *_fifoNextRead	
	LI	%GPR6, *_fifoNextRead	
	mult	%GPR1,%GPR1,%GPR4	
	addi	%GPR2,%GPR2,$1	
	NOP		;;10,13
	NOP		;;10,13
	NOP		;;10,13
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;13,15
	NOP		;;13,15
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$16	
	NOP		;;15,17
	NOP		;;15,17
	lw	%GPR28,0(%GPR1)	
	sw	0(%GPR5),%GPR2	
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	lw	%GPR1,0(%GPR6)	
	NOP		;;22,26
	NOP		;;22,26
	NOP		;;22,26
	NOP		;;22,26
	seq	%GPR27,%GPR1,%GPR3	
	bnez	%GPR27,L21	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L22	
	NOP		
	NOP		
	NOP		
	NOP		
L21:
	LI	%GPR1, *_fifoNextRead	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sw	0(%GPR1),%GPR2	
	NOP		
	NOP		
	NOP		
L22:
	j	L23	
	NOP		
	NOP		
	NOP		
	NOP		
L23:
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
getFifoFillLevel:
L24:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR2, *_fifoNextWrite	
	LI	%GPR1, *_fifoNextRead	
	LI	%GPR3, *_fifoNextWrite	
	NOP		;;4,6
	NOP		;;4,6
	lw	%GPR2,0(%GPR2)	
	lw	%GPR4,0(%GPR1)	
	lw	%GPR1,0(%GPR3)	
	NOP		;;8,11
	NOP		;;8,11
	NOP		;;8,11
	slt	%GPR27,%GPR2,%GPR4	
	bnez	%GPR27,L25	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L26	
	NOP		
	NOP		
	NOP		
	NOP		
L25:
	addi	%GPR1,%GPR1,$16	
	NOP		
	NOP		
	NOP		
L26:
	LI	%GPR2, *_fifoNextRead	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lw	%GPR2,0(%GPR2)	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sub	%GPR28,%GPR1,%GPR2	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	j	L27	
	NOP		
	NOP		
	NOP		
	NOP		
L27:
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