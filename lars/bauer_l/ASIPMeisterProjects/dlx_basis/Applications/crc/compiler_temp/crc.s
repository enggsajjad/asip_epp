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
icrc1:
L4:
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
	NOP		;;2,7
	NOP		;;2,7
	NOP		;;2,7
	NOP		;;2,7
	NOP		;;2,7
	slli	%GPR3,%GPR2,$8	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		;;8,11
	NOP		;;8,11
	NOP		;;8,11
	xor	%GPR28,%GPR3,%GPR1	
	NOP		
	NOP		
	NOP		
L5:
	andi	%GPR1,%GPR28,$32768	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sne	%GPR27,%GPR1,%GPR3	
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
L6:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	slli	%GPR28,%GPR28,$1	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	xori	%GPR28,%GPR28,$4129	
	j	L8	
	NOP		
	NOP		
	NOP		
L7:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	slli	%GPR28,%GPR28,$1	
	NOP		
	NOP		
	NOP		
L8:
	addi	%GPR2,%GPR2,$1	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$8	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	slt	%GPR27,%GPR2,%GPR1	
	bnez	%GPR27,L5	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L9	
	NOP		
	NOP		
	NOP		
	NOP		
L9:
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
icrc:
L11:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$32	
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR30),%GPR2	
	sw	-8(%GPR30),%GPR3	
	sw	-12(%GPR30),%GPR4	
	NOP		
	NOP		
	NOP		
	sw	-16(%GPR30),%GPR1	
	LI	%GPR1, *L1	
	NOP		;;6,10
	NOP		;;6,10
	NOP		;;6,10
	NOP		;;6,10
	lw	%GPR1,0(%GPR1)	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		;;11,15
	NOP		;;11,15
	NOP		;;11,15
	NOP		;;11,15
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L12	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L15	
	NOP		
	NOP		
	NOP		
	NOP		
L12:
	NOP		;;0,2
	NOP		;;0,2
	LI	%GPR1, *L1	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	sw	0(%GPR1),%GPR2	
	sw	-20(%GPR30),%GPR3	
	NOP		
	NOP		
	NOP		
L13:
	lw	%GPR1,-20(%GPR30)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	slei	%GPR27,%GPR1,$255	
	bnez	%GPR1,L14	
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
	lw	%GPR1,-20(%GPR30)	
	NOP		;;0,2
	NOP		;;0,2
	LI	%GPR3, *_icrctb	
	NOP		;;2,4
	NOP		;;2,4
	add	%GPR5,%GPR1,%GPR0	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$2	
	NOP		;;5,7
	NOP		;;5,7
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		;;7,9
	NOP		;;7,9
	mult	%GPR4,%GPR5,%GPR4	
	slli	%GPR1,%GPR1,$8	
	NOP		;;10,13
	NOP		;;10,13
	NOP		;;10,13
	add	%GPR3,%GPR3,%GPR4	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sw	-24(%GPR30),%GPR3	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	icrc1	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR2,-20(%GPR30)	
	lw	%GPR4,-24(%GPR30)	
	add	%GPR5,%GPR28,%GPR0	
	LI	%GPR1, *L3	
	andi	%GPR2,%GPR2,$15	
	LI	%GPR3, *L3	
	sh	0(%GPR4),%GPR5	
	lw	%GPR4,-20(%GPR30)	
	add	%GPR1,%GPR1,%GPR2	
	lw	%GPR2,-20(%GPR30)	
	LI	%GPR5, *L2	
	srli	%GPR4,%GPR4,$4	
	lb	%GPR1,0(%GPR1)	
	NOP		;;31,34
	NOP		;;31,34
	NOP		;;31,34
	add	%GPR3,%GPR3,%GPR4	
	NOP		;;34,36
	NOP		;;34,36
	lw	%GPR4,-20(%GPR30)	
	add	%GPR2,%GPR5,%GPR2	
	lb	%GPR3,0(%GPR3)	
	slli	%GPR1,%GPR1,$4	
	addi	%GPR4,%GPR4,$1	
	NOP		;;40,43
	NOP		;;40,43
	NOP		;;40,43
	or	%GPR1,%GPR1,%GPR3	
	sw	-20(%GPR30),%GPR4	
	NOP		;;44,47
	NOP		;;44,47
	NOP		;;44,47
	sb	0(%GPR2),%GPR1	
	j	L13	
	NOP		
	NOP		
	NOP		
L15:
	lw	%GPR1,-8(%GPR30)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	sgei	%GPR27,%GPR1,$0	
	bnez	%GPR1,L16	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L17	
	NOP		
	NOP		
	NOP		
	NOP		
L16:
	lw	%GPR1,-8(%GPR30)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	add	%GPR2,%GPR1,%GPR0	
	NOP		;;4,13
	NOP		;;4,13
	NOP		;;4,13
	NOP		;;4,13
	NOP		;;4,13
	NOP		;;4,13
	NOP		;;4,13
	NOP		;;4,13
	NOP		;;4,13
	slli	%GPR1,%GPR1,$8	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	or	%GPR1,%GPR1,%GPR2	
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	sw	-16(%GPR30),%GPR1	
	j	L19	
	NOP		
	NOP		
	NOP		
L17:
	lw	%GPR2,-12(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
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
	slt	%GPR27,%GPR2,%GPR1	
	bnez	%GPR27,L18	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L19	
	NOP		
	NOP		
	NOP		
	NOP		
L18:
	lw	%GPR1,-16(%GPR30)	
	LI	%GPR2, *L2	
	LI	%GPR4, *L2	
	NOP		;;2,4
	NOP		;;2,4
	add	%GPR3,%GPR1,%GPR0	
	andi	%GPR1,%GPR1,$255	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	srli	%GPR3,%GPR3,$8	
	NOP		;;8,17
	NOP		;;8,17
	NOP		;;8,17
	NOP		;;8,17
	NOP		;;8,17
	NOP		;;8,17
	NOP		;;8,17
	NOP		;;8,17
	NOP		;;8,17
	add	%GPR1,%GPR2,%GPR1	
	NOP		;;17,20
	NOP		;;17,20
	NOP		;;17,20
	add	%GPR2,%GPR4,%GPR3	
	lb	%GPR1,0(%GPR1)	
	NOP		;;21,24
	NOP		;;21,24
	NOP		;;21,24
	lb	%GPR2,0(%GPR2)	
	NOP		;;24,29
	NOP		;;24,29
	NOP		;;24,29
	NOP		;;24,29
	NOP		;;24,29
	slli	%GPR1,%GPR1,$8	
	NOP		;;29,33
	NOP		;;29,33
	NOP		;;29,33
	NOP		;;29,33
	or	%GPR1,%GPR1,%GPR2	
	NOP		;;33,37
	NOP		;;33,37
	NOP		;;33,37
	NOP		;;33,37
	sw	-16(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
L19:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$1	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sw	-20(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
L20:
	lw	%GPR1,-4(%GPR30)	
	lw	%GPR2,-20(%GPR30)	
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	sle	%GPR27,%GPR2,%GPR1	
	bnez	%GPR27,L21	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L25	
	NOP		
	NOP		
	NOP		
	NOP		
L21:
	lw	%GPR2,-12(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
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
	slt	%GPR27,%GPR2,%GPR1	
	bnez	%GPR27,L22	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L23	
	NOP		
	NOP		
	NOP		
	NOP		
L22:
	lw	%GPR2,-20(%GPR30)	
	LI	%GPR1, *_lin	
	LI	%GPR3, *L2	
	lw	%GPR4,-16(%GPR30)	
	NOP		;;3,8
	NOP		;;3,8
	NOP		;;3,8
	NOP		;;3,8
	NOP		;;3,8
	add	%GPR1,%GPR1,%GPR2	
	srli	%GPR4,%GPR4,$8	
	NOP		;;9,12
	NOP		;;9,12
	NOP		;;9,12
	lb	%GPR1,0(%GPR1)	
	NOP		;;12,20
	NOP		;;12,20
	NOP		;;12,20
	NOP		;;12,20
	NOP		;;12,20
	NOP		;;12,20
	NOP		;;12,20
	NOP		;;12,20
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	lb	%GPR1,0(%GPR1)	
	NOP		;;24,28
	NOP		;;24,28
	NOP		;;24,28
	NOP		;;24,28
	xor	%GPR1,%GPR1,%GPR4	
	j	L24	
	NOP		
	NOP		
	NOP		
L23:
	lw	%GPR1,-20(%GPR30)	
	LI	%GPR2, *_lin	
	lw	%GPR3,-16(%GPR30)	
	NOP		;;2,6
	NOP		;;2,6
	NOP		;;2,6
	NOP		;;2,6
	srli	%GPR3,%GPR3,$8	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR1,%GPR2,%GPR1	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	lb	%GPR1,0(%GPR1)	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	xor	%GPR1,%GPR1,%GPR3	
	NOP		
	NOP		
	NOP		
L24:
	lw	%GPR2,-16(%GPR30)	
	NOP		;;0,2
	NOP		;;0,2
	LI	%GPR3, *_icrctb	
	lw	%GPR5,-20(%GPR30)	
	andi	%GPR2,%GPR2,$255	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$2	
	NOP		;;5,7
	NOP		;;5,7
	addi	%GPR5,%GPR5,$1	
	NOP		;;7,9
	NOP		;;7,9
	mult	%GPR1,%GPR1,%GPR4	
	NOP		;;9,11
	NOP		;;9,11
	sw	-20(%GPR30),%GPR5	
	NOP		;;11,13
	NOP		;;11,13
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;13,16
	NOP		;;13,16
	NOP		;;13,16
	slli	%GPR2,%GPR2,$8	
	lh	%GPR1,0(%GPR1)	
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	xor	%GPR1,%GPR2,%GPR1	
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	sw	-16(%GPR30),%GPR1	
	j	L20	
	NOP		
	NOP		
	NOP		
L25:
	lw	%GPR2,-12(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
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
	sge	%GPR27,%GPR2,%GPR1	
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
	lw	%GPR28,-16(%GPR30)	
	j	L28	
	NOP		
	NOP		
	NOP		
L27:
	lw	%GPR1,-16(%GPR30)	
	LI	%GPR2, *L2	
	LI	%GPR4, *L2	
	NOP		;;2,4
	NOP		;;2,4
	add	%GPR3,%GPR1,%GPR0	
	andi	%GPR1,%GPR1,$255	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	srli	%GPR3,%GPR3,$8	
	NOP		;;8,17
	NOP		;;8,17
	NOP		;;8,17
	NOP		;;8,17
	NOP		;;8,17
	NOP		;;8,17
	NOP		;;8,17
	NOP		;;8,17
	NOP		;;8,17
	add	%GPR1,%GPR2,%GPR1	
	NOP		;;17,20
	NOP		;;17,20
	NOP		;;17,20
	add	%GPR2,%GPR4,%GPR3	
	lb	%GPR1,0(%GPR1)	
	NOP		;;21,24
	NOP		;;21,24
	NOP		;;21,24
	lb	%GPR2,0(%GPR2)	
	NOP		;;24,29
	NOP		;;24,29
	NOP		;;24,29
	NOP		;;24,29
	NOP		;;24,29
	slli	%GPR1,%GPR1,$8	
	NOP		;;29,33
	NOP		;;29,33
	NOP		;;29,33
	NOP		;;29,33
	or	%GPR28,%GPR1,%GPR2	
	NOP		
	NOP		
	NOP		
L28:
	j	L29	
	NOP		
	NOP		
	NOP		
	NOP		
L29:
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
L30:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$16	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;1,3
	NOP		;;1,3
	LI	%GPR5, *_lin	
	NOP		;;3,6
	NOP		;;3,6
	NOP		;;3,6
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$41	
	NOP		;;6,10
	NOP		;;6,10
	NOP		;;6,10
	NOP		;;6,10
	add	%GPR5,%GPR5,%GPR6	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$0	
	LI	%GPR6, *_i1	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$1	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$40	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	sb	0(%GPR5),%GPR7	
	sw	-4(%GPR30),%GPR6	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	icrc	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR3,-4(%GPR30)	
	LI	%GPR1, *_i1	
	NOP		;;21,23
	NOP		;;21,23
	LI	%GPR2, *_lin	
	sh	0(%GPR3),%GPR28	
	LI	%GPR3, *_i1	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$41	
	NOP		;;26,28
	NOP		;;26,28
	lh	%GPR1,0(%GPR1)	
	LI	%GPR5, *_lin	
	add	%GPR2,%GPR2,%GPR4	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$42	
	srli	%GPR1,%GPR1,$8	
	LI	%GPR6, *_i1	
	LI	%GPR7, *_i2	
	add	%GPR5,%GPR5,%GPR4	
	sb	0(%GPR2),%GPR1	
	NOP		;;36,40
	NOP		;;36,40
	NOP		;;36,40
	NOP		;;36,40
	lh	%GPR1,0(%GPR3)	
	NOP		;;40,42
	NOP		;;40,42
	sw	-8(%GPR30),%GPR7	
	NOP		;;42,44
	NOP		;;42,44
	andi	%GPR1,%GPR1,$255	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$1	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$42	
	sb	0(%GPR5),%GPR1	
	NOP		;;48,52
	NOP		;;48,52
	NOP		;;48,52
	NOP		;;48,52
	lh	%GPR1,0(%GPR6)	
	NOP		;;52,61
	NOP		;;52,61
	NOP		;;52,61
	NOP		;;52,61
	NOP		;;52,61
	NOP		;;52,61
	NOP		;;52,61
	NOP		;;52,61
	NOP		;;52,61
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	icrc	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR1,-8(%GPR30)	
	NOP		;;62,66
	NOP		;;62,66
	NOP		;;62,66
	NOP		;;62,66
	sh	0(%GPR1),%GPR28	
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		;;67,71
	NOP		;;67,71
	NOP		;;67,71
	NOP		;;67,71
	j	L31	
	NOP		
	NOP		
	NOP		
	NOP		
L31:
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