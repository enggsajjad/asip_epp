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
main:
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
	NOP		
	NOP		
	NOP		
	NOP		;;1,6
	NOP		;;1,6
	NOP		;;1,6
	NOP		;;1,6
	NOP		;;1,6
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		
	NOP		
	NOP		
L2:
	NOP		;;0,2
	NOP		;;0,2
	add	%GPR4,%GPR2,%GPR0	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$24576	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$40960	
	NOP		
	NOP		
	NOP		
L3:
	slli	%GPR6,%GPR4,$2	
	LI	%GPR5, *_pattern	
	NOP		;;1,3
	NOP		;;1,3
	addi	%GPR4,%GPR4,$1	
	NOP		;;3,5
	NOP		;;3,5
	add	%GPR5,%GPR5,%GPR6	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$5	
	NOP		;;6,9
	NOP		;;6,9
	NOP		;;6,9
	lw	%GPR5,0(%GPR5)	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	sw	0(%GPR3),%GPR5	
	sge	%GPR27,%GPR4,%GPR6	
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
L4:
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
L5:
	slli	%GPR6,%GPR4,$2	
	LI	%GPR5, *_pattern	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	addi	%GPR4,%GPR4,$1	
	add	%GPR5,%GPR5,%GPR6	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$4	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$5	
	NOP		;;7,9
	NOP		;;7,9
	lw	%GPR5,0(%GPR5)	
	add	%GPR7,%GPR3,%GPR7	
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	sw	0(%GPR7),%GPR5	
	sge	%GPR27,%GPR4,%GPR6	
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
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	NOP		
	NOP		
	NOP		
L7:
	slli	%GPR6,%GPR4,$2	
	LI	%GPR5, *_pattern	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	addi	%GPR4,%GPR4,$1	
	add	%GPR5,%GPR5,%GPR6	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$8	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$5	
	NOP		;;7,9
	NOP		;;7,9
	lw	%GPR5,0(%GPR5)	
	add	%GPR7,%GPR3,%GPR7	
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	sw	0(%GPR7),%GPR5	
	sge	%GPR27,%GPR4,%GPR6	
	bnez	%GPR27,L8	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L9	
	NOP		
	NOP		
	NOP		
	NOP		
L8:
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
L9:
	slli	%GPR6,%GPR4,$2	
	LI	%GPR5, *_pattern	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	addi	%GPR4,%GPR4,$1	
	add	%GPR5,%GPR5,%GPR6	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$12	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$5	
	NOP		;;7,9
	NOP		;;7,9
	lw	%GPR5,0(%GPR5)	
	add	%GPR7,%GPR3,%GPR7	
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	sw	0(%GPR7),%GPR5	
	sge	%GPR27,%GPR4,%GPR6	
	bnez	%GPR27,L10	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L11	
	NOP		
	NOP		
	NOP		
	NOP		
L10:
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
L11:
	NOP		;;0,2
	NOP		;;0,2
	addi	%GPR1,%GPR1,$-4	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$16	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$0	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	add	%GPR3,%GPR3,%GPR5	
	sgt	%GPR27,%GPR1,%GPR6	
	bnez	%GPR27,L3	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L12	
	NOP		
	NOP		
	NOP		
	NOP		
L12:
	NOP		;;0,2
	NOP		;;0,2
	add	%GPR3,%GPR2,%GPR0	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$24576	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$24576	
	NOP		
	NOP		
	NOP		
L13:
	LI	%GPR5, *_pattern	
	slli	%GPR6,%GPR3,$2	
	lw	%GPR7,0(%GPR4)	
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	add	%GPR5,%GPR5,%GPR6	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	lw	%GPR5,0(%GPR5)	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	sne	%GPR27,%GPR7,%GPR5	
	bnez	%GPR27,L156	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L14	
	NOP		
	NOP		
	NOP		
	NOP		
L14:
	addi	%GPR3,%GPR3,$1	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$5	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sge	%GPR27,%GPR3,%GPR5	
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
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		
	NOP		
	NOP		
L16:
	LI	%GPR5, *_pattern	
	slli	%GPR6,%GPR3,$2	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$4	
	NOP		;;4,6
	NOP		;;4,6
	add	%GPR5,%GPR5,%GPR6	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR4,%GPR4,%GPR7	
	NOP		;;8,10
	NOP		;;8,10
	lw	%GPR5,0(%GPR5)	
	NOP		;;10,12
	NOP		;;10,12
	lw	%GPR6,0(%GPR4)	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	sne	%GPR27,%GPR6,%GPR5	
	bnez	%GPR27,L156	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L17	
	NOP		
	NOP		
	NOP		
	NOP		
L17:
	addi	%GPR3,%GPR3,$1	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$5	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sge	%GPR27,%GPR3,%GPR5	
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
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		
	NOP		
	NOP		
L19:
	LI	%GPR5, *_pattern	
	slli	%GPR6,%GPR3,$2	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$4	
	NOP		;;4,6
	NOP		;;4,6
	add	%GPR5,%GPR5,%GPR6	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR4,%GPR4,%GPR7	
	NOP		;;8,10
	NOP		;;8,10
	lw	%GPR5,0(%GPR5)	
	NOP		;;10,12
	NOP		;;10,12
	lw	%GPR6,0(%GPR4)	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	sne	%GPR27,%GPR6,%GPR5	
	bnez	%GPR27,L156	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L20	
	NOP		
	NOP		
	NOP		
	NOP		
L20:
	addi	%GPR3,%GPR3,$1	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$5	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sge	%GPR27,%GPR3,%GPR5	
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
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		
	NOP		
	NOP		
L22:
	LI	%GPR5, *_pattern	
	slli	%GPR6,%GPR3,$2	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$4	
	NOP		;;4,6
	NOP		;;4,6
	add	%GPR5,%GPR5,%GPR6	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR4,%GPR4,%GPR7	
	NOP		;;8,10
	NOP		;;8,10
	lw	%GPR5,0(%GPR5)	
	NOP		;;10,12
	NOP		;;10,12
	lw	%GPR6,0(%GPR4)	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	sne	%GPR27,%GPR6,%GPR5	
	bnez	%GPR27,L156	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L23	
	NOP		
	NOP		
	NOP		
	NOP		
L23:
	addi	%GPR3,%GPR3,$1	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$5	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sge	%GPR27,%GPR3,%GPR5	
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
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		
	NOP		
	NOP		
L25:
	NOP		;;0,2
	NOP		;;0,2
	addi	%GPR1,%GPR1,$4	
	NOP		;;2,4
	NOP		;;2,4
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
	ori	%GPR6,%GPR6,$65535	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	add	%GPR4,%GPR4,%GPR5	
	sle	%GPR27,%GPR1,%GPR6	
	bnez	%GPR27,L13	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L26	
	NOP		
	NOP		
	NOP		
	NOP		
L26:
	NOP		;;0,2
	NOP		;;0,2
	add	%GPR4,%GPR2,%GPR0	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$24576	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$40960	
	NOP		
	NOP		
	NOP		
L27:
	slli	%GPR6,%GPR4,$2	
	LI	%GPR5, *_pattern	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	addi	%GPR4,%GPR4,$1	
	add	%GPR5,%GPR5,%GPR6	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$2	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$5	
	NOP		;;7,9
	NOP		;;7,9
	lw	%GPR8,0(%GPR5)	
	add	%GPR5,%GPR3,%GPR6	
	NOP		;;10,13
	NOP		;;10,13
	NOP		;;10,13
	andi	%GPR6,%GPR8,$65535	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sh	0(%GPR3),%GPR6	
	sge	%GPR27,%GPR4,%GPR7	
	bnez	%GPR27,L28	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L29	
	NOP		
	NOP		
	NOP		
	NOP		
L28:
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
L29:
	slli	%GPR7,%GPR4,$2	
	LI	%GPR6, *_pattern	
	addi	%GPR3,%GPR4,$1	
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	add	%GPR4,%GPR6,%GPR7	
	NOP		;;5,7
	NOP		;;5,7
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$2	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$5	
	lw	%GPR8,0(%GPR4)	
	NOP		;;9,11
	NOP		;;9,11
	add	%GPR4,%GPR5,%GPR6	
	NOP		;;11,13
	NOP		;;11,13
	andi	%GPR6,%GPR8,$65535	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sh	0(%GPR5),%GPR6	
	sge	%GPR27,%GPR3,%GPR7	
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
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		
	NOP		
	NOP		
L31:
	slli	%GPR6,%GPR3,$2	
	LI	%GPR5, *_pattern	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	addi	%GPR3,%GPR3,$1	
	add	%GPR5,%GPR5,%GPR6	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$2	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$5	
	NOP		;;7,9
	NOP		;;7,9
	lw	%GPR8,0(%GPR5)	
	add	%GPR5,%GPR4,%GPR6	
	NOP		;;10,13
	NOP		;;10,13
	NOP		;;10,13
	andi	%GPR6,%GPR8,$65535	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sh	0(%GPR4),%GPR6	
	sge	%GPR27,%GPR3,%GPR7	
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
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		
	NOP		
	NOP		
L33:
	slli	%GPR6,%GPR3,$2	
	LI	%GPR4, *_pattern	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	addi	%GPR3,%GPR3,$1	
	add	%GPR4,%GPR4,%GPR6	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$2	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$5	
	NOP		;;7,9
	NOP		;;7,9
	lw	%GPR8,0(%GPR4)	
	add	%GPR4,%GPR5,%GPR6	
	NOP		;;10,13
	NOP		;;10,13
	NOP		;;10,13
	andi	%GPR6,%GPR8,$65535	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sh	0(%GPR5),%GPR6	
	sge	%GPR27,%GPR3,%GPR7	
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
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		
	NOP		
	NOP		
L35:
	slli	%GPR6,%GPR3,$2	
	LI	%GPR5, *_pattern	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	addi	%GPR3,%GPR3,$1	
	add	%GPR5,%GPR5,%GPR6	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$2	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$5	
	NOP		;;7,9
	NOP		;;7,9
	lw	%GPR8,0(%GPR5)	
	add	%GPR5,%GPR4,%GPR6	
	NOP		;;10,13
	NOP		;;10,13
	NOP		;;10,13
	andi	%GPR6,%GPR8,$65535	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sh	0(%GPR4),%GPR6	
	sge	%GPR27,%GPR3,%GPR7	
	bnez	%GPR27,L36	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L37	
	NOP		
	NOP		
	NOP		
	NOP		
L36:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		
	NOP		
	NOP		
L37:
	slli	%GPR6,%GPR3,$2	
	LI	%GPR4, *_pattern	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	addi	%GPR3,%GPR3,$1	
	add	%GPR4,%GPR4,%GPR6	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$2	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$5	
	NOP		;;7,9
	NOP		;;7,9
	lw	%GPR8,0(%GPR4)	
	add	%GPR4,%GPR5,%GPR6	
	NOP		;;10,13
	NOP		;;10,13
	NOP		;;10,13
	andi	%GPR6,%GPR8,$65535	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sh	0(%GPR5),%GPR6	
	sge	%GPR27,%GPR3,%GPR7	
	bnez	%GPR27,L38	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L39	
	NOP		
	NOP		
	NOP		
	NOP		
L38:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		
	NOP		
	NOP		
L39:
	slli	%GPR6,%GPR3,$2	
	LI	%GPR5, *_pattern	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	addi	%GPR3,%GPR3,$1	
	add	%GPR5,%GPR5,%GPR6	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$2	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$5	
	NOP		;;7,9
	NOP		;;7,9
	lw	%GPR8,0(%GPR5)	
	add	%GPR5,%GPR4,%GPR6	
	NOP		;;10,13
	NOP		;;10,13
	NOP		;;10,13
	andi	%GPR6,%GPR8,$65535	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sh	0(%GPR4),%GPR6	
	sge	%GPR27,%GPR3,%GPR7	
	bnez	%GPR27,L40	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L41	
	NOP		
	NOP		
	NOP		
	NOP		
L40:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		
	NOP		
	NOP		
L41:
	slli	%GPR7,%GPR3,$2	
	LI	%GPR6, *_pattern	
	addi	%GPR4,%GPR3,$1	
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	add	%GPR3,%GPR6,%GPR7	
	NOP		;;5,7
	NOP		;;5,7
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$2	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$5	
	lw	%GPR8,0(%GPR3)	
	NOP		;;9,11
	NOP		;;9,11
	add	%GPR3,%GPR5,%GPR6	
	NOP		;;11,13
	NOP		;;11,13
	andi	%GPR6,%GPR8,$65535	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sh	0(%GPR5),%GPR6	
	sge	%GPR27,%GPR4,%GPR7	
	bnez	%GPR27,L42	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L43	
	NOP		
	NOP		
	NOP		
	NOP		
L42:
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
L43:
	addi	%GPR1,%GPR1,$-4	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$0	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sgt	%GPR27,%GPR1,%GPR5	
	bnez	%GPR27,L27	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L44	
	NOP		
	NOP		
	NOP		
	NOP		
L44:
	NOP		;;0,2
	NOP		;;0,2
	add	%GPR3,%GPR2,%GPR0	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$24576	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$24576	
	NOP		
	NOP		
	NOP		
L45:
	LI	%GPR5, *_pattern	
	slli	%GPR6,%GPR3,$2	
	lhu	%GPR7,0(%GPR4)	
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	add	%GPR5,%GPR5,%GPR6	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	lw	%GPR5,0(%GPR5)	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	andi	%GPR5,%GPR5,$65535	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sne	%GPR27,%GPR7,%GPR5	
	bnez	%GPR27,L156	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L46	
	NOP		
	NOP		
	NOP		
	NOP		
L46:
	NOP		;;0,2
	NOP		;;0,2
	addi	%GPR3,%GPR3,$1	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$2	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$5	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	add	%GPR4,%GPR4,%GPR5	
	sge	%GPR27,%GPR3,%GPR6	
	bnez	%GPR27,L47	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L48	
	NOP		
	NOP		
	NOP		
	NOP		
L47:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		
	NOP		
	NOP		
L48:
	LI	%GPR5, *_pattern	
	slli	%GPR6,%GPR3,$2	
	lhu	%GPR7,0(%GPR4)	
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	add	%GPR5,%GPR5,%GPR6	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	lw	%GPR5,0(%GPR5)	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	andi	%GPR5,%GPR5,$65535	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sne	%GPR27,%GPR7,%GPR5	
	bnez	%GPR27,L156	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L49	
	NOP		
	NOP		
	NOP		
	NOP		
L49:
	NOP		;;0,2
	NOP		;;0,2
	addi	%GPR3,%GPR3,$1	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$2	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$5	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	add	%GPR4,%GPR4,%GPR5	
	sge	%GPR27,%GPR3,%GPR6	
	bnez	%GPR27,L50	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L51	
	NOP		
	NOP		
	NOP		
	NOP		
L50:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		
	NOP		
	NOP		
L51:
	LI	%GPR5, *_pattern	
	slli	%GPR6,%GPR3,$2	
	lhu	%GPR7,0(%GPR4)	
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	add	%GPR5,%GPR5,%GPR6	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	lw	%GPR5,0(%GPR5)	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	andi	%GPR5,%GPR5,$65535	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sne	%GPR27,%GPR7,%GPR5	
	bnez	%GPR27,L156	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L52	
	NOP		
	NOP		
	NOP		
	NOP		
L52:
	NOP		;;0,2
	NOP		;;0,2
	addi	%GPR3,%GPR3,$1	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$2	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$5	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	add	%GPR4,%GPR4,%GPR5	
	sge	%GPR27,%GPR3,%GPR6	
	bnez	%GPR27,L53	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L54	
	NOP		
	NOP		
	NOP		
	NOP		
L53:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		
	NOP		
	NOP		
L54:
	LI	%GPR5, *_pattern	
	slli	%GPR6,%GPR3,$2	
	lhu	%GPR7,0(%GPR4)	
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	add	%GPR5,%GPR5,%GPR6	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	lw	%GPR5,0(%GPR5)	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	andi	%GPR5,%GPR5,$65535	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sne	%GPR27,%GPR7,%GPR5	
	bnez	%GPR27,L156	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L55	
	NOP		
	NOP		
	NOP		
	NOP		
L55:
	NOP		;;0,2
	NOP		;;0,2
	addi	%GPR3,%GPR3,$1	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$2	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$5	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	add	%GPR4,%GPR4,%GPR5	
	sge	%GPR27,%GPR3,%GPR6	
	bnez	%GPR27,L56	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L57	
	NOP		
	NOP		
	NOP		
	NOP		
L56:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		
	NOP		
	NOP		
L57:
	LI	%GPR5, *_pattern	
	slli	%GPR6,%GPR3,$2	
	lhu	%GPR7,0(%GPR4)	
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	add	%GPR5,%GPR5,%GPR6	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	lw	%GPR5,0(%GPR5)	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	andi	%GPR5,%GPR5,$65535	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sne	%GPR27,%GPR7,%GPR5	
	bnez	%GPR27,L156	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L58	
	NOP		
	NOP		
	NOP		
	NOP		
L58:
	NOP		;;0,2
	NOP		;;0,2
	addi	%GPR3,%GPR3,$1	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$2	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$5	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	add	%GPR4,%GPR4,%GPR5	
	sge	%GPR27,%GPR3,%GPR6	
	bnez	%GPR27,L59	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L60	
	NOP		
	NOP		
	NOP		
	NOP		
L59:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		
	NOP		
	NOP		
L60:
	LI	%GPR5, *_pattern	
	slli	%GPR6,%GPR3,$2	
	lhu	%GPR7,0(%GPR4)	
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	add	%GPR5,%GPR5,%GPR6	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	lw	%GPR5,0(%GPR5)	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	andi	%GPR5,%GPR5,$65535	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sne	%GPR27,%GPR7,%GPR5	
	bnez	%GPR27,L156	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L61	
	NOP		
	NOP		
	NOP		
	NOP		
L61:
	NOP		;;0,2
	NOP		;;0,2
	addi	%GPR3,%GPR3,$1	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$2	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$5	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	add	%GPR4,%GPR4,%GPR5	
	sge	%GPR27,%GPR3,%GPR6	
	bnez	%GPR27,L62	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L63	
	NOP		
	NOP		
	NOP		
	NOP		
L62:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		
	NOP		
	NOP		
L63:
	LI	%GPR5, *_pattern	
	slli	%GPR6,%GPR3,$2	
	lhu	%GPR7,0(%GPR4)	
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	add	%GPR5,%GPR5,%GPR6	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	lw	%GPR5,0(%GPR5)	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	andi	%GPR5,%GPR5,$65535	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sne	%GPR27,%GPR7,%GPR5	
	bnez	%GPR27,L156	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L64	
	NOP		
	NOP		
	NOP		
	NOP		
L64:
	NOP		;;0,2
	NOP		;;0,2
	addi	%GPR3,%GPR3,$1	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$2	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$5	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	add	%GPR4,%GPR4,%GPR5	
	sge	%GPR27,%GPR3,%GPR6	
	bnez	%GPR27,L65	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L66	
	NOP		
	NOP		
	NOP		
	NOP		
L65:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		
	NOP		
	NOP		
L66:
	LI	%GPR5, *_pattern	
	slli	%GPR6,%GPR3,$2	
	lhu	%GPR7,0(%GPR4)	
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	add	%GPR5,%GPR5,%GPR6	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	lw	%GPR5,0(%GPR5)	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	andi	%GPR5,%GPR5,$65535	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sne	%GPR27,%GPR7,%GPR5	
	bnez	%GPR27,L156	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L67	
	NOP		
	NOP		
	NOP		
	NOP		
L67:
	NOP		;;0,2
	NOP		;;0,2
	addi	%GPR3,%GPR3,$1	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$2	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$5	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	add	%GPR4,%GPR4,%GPR5	
	sge	%GPR27,%GPR3,%GPR6	
	bnez	%GPR27,L68	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L69	
	NOP		
	NOP		
	NOP		
	NOP		
L68:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		
	NOP		
	NOP		
L69:
	addi	%GPR1,%GPR1,$4	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$65535	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sle	%GPR27,%GPR1,%GPR5	
	bnez	%GPR27,L45	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L70	
	NOP		
	NOP		
	NOP		
	NOP		
L70:
	NOP		;;0,2
	NOP		;;0,2
	add	%GPR4,%GPR2,%GPR0	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$24576	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$40960	
	NOP		
	NOP		
	NOP		
L71:
	slli	%GPR6,%GPR4,$2	
	LI	%GPR5, *_pattern	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	addi	%GPR4,%GPR4,$1	
	add	%GPR5,%GPR5,%GPR6	
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
	ori	%GPR7,%GPR7,$5	
	NOP		;;7,9
	NOP		;;7,9
	lw	%GPR8,0(%GPR5)	
	add	%GPR5,%GPR3,%GPR6	
	NOP		;;10,13
	NOP		;;10,13
	NOP		;;10,13
	andi	%GPR6,%GPR8,$255	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sb	0(%GPR3),%GPR6	
	sge	%GPR27,%GPR4,%GPR7	
	bnez	%GPR27,L72	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L73	
	NOP		
	NOP		
	NOP		
	NOP		
L72:
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
L73:
	slli	%GPR7,%GPR4,$2	
	LI	%GPR6, *_pattern	
	addi	%GPR3,%GPR4,$1	
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	add	%GPR4,%GPR6,%GPR7	
	NOP		;;5,7
	NOP		;;5,7
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
	ori	%GPR7,%GPR7,$5	
	lw	%GPR8,0(%GPR4)	
	NOP		;;9,11
	NOP		;;9,11
	add	%GPR4,%GPR5,%GPR6	
	NOP		;;11,13
	NOP		;;11,13
	andi	%GPR6,%GPR8,$255	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sb	0(%GPR5),%GPR6	
	sge	%GPR27,%GPR3,%GPR7	
	bnez	%GPR27,L74	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L75	
	NOP		
	NOP		
	NOP		
	NOP		
L74:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		
	NOP		
	NOP		
L75:
	slli	%GPR6,%GPR3,$2	
	LI	%GPR5, *_pattern	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	addi	%GPR3,%GPR3,$1	
	add	%GPR5,%GPR5,%GPR6	
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
	ori	%GPR7,%GPR7,$5	
	NOP		;;7,9
	NOP		;;7,9
	lw	%GPR8,0(%GPR5)	
	add	%GPR5,%GPR4,%GPR6	
	NOP		;;10,13
	NOP		;;10,13
	NOP		;;10,13
	andi	%GPR6,%GPR8,$255	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sb	0(%GPR4),%GPR6	
	sge	%GPR27,%GPR3,%GPR7	
	bnez	%GPR27,L76	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L77	
	NOP		
	NOP		
	NOP		
	NOP		
L76:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		
	NOP		
	NOP		
L77:
	slli	%GPR6,%GPR3,$2	
	LI	%GPR4, *_pattern	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	addi	%GPR3,%GPR3,$1	
	add	%GPR4,%GPR4,%GPR6	
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
	ori	%GPR7,%GPR7,$5	
	NOP		;;7,9
	NOP		;;7,9
	lw	%GPR8,0(%GPR4)	
	add	%GPR4,%GPR5,%GPR6	
	NOP		;;10,13
	NOP		;;10,13
	NOP		;;10,13
	andi	%GPR6,%GPR8,$255	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sb	0(%GPR5),%GPR6	
	sge	%GPR27,%GPR3,%GPR7	
	bnez	%GPR27,L78	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L79	
	NOP		
	NOP		
	NOP		
	NOP		
L78:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		
	NOP		
	NOP		
L79:
	slli	%GPR7,%GPR3,$2	
	LI	%GPR6, *_pattern	
	addi	%GPR5,%GPR3,$1	
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	add	%GPR3,%GPR6,%GPR7	
	NOP		;;5,7
	NOP		;;5,7
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
	ori	%GPR7,%GPR7,$5	
	lw	%GPR8,0(%GPR3)	
	NOP		;;9,11
	NOP		;;9,11
	add	%GPR3,%GPR4,%GPR6	
	NOP		;;11,13
	NOP		;;11,13
	andi	%GPR6,%GPR8,$255	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sb	0(%GPR4),%GPR6	
	sge	%GPR27,%GPR5,%GPR7	
	bnez	%GPR27,L80	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L81	
	NOP		
	NOP		
	NOP		
	NOP		
L80:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$0	
	NOP		
	NOP		
	NOP		
L81:
	slli	%GPR6,%GPR5,$2	
	LI	%GPR4, *_pattern	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	addi	%GPR5,%GPR5,$1	
	add	%GPR4,%GPR4,%GPR6	
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
	ori	%GPR7,%GPR7,$5	
	NOP		;;7,9
	NOP		;;7,9
	lw	%GPR8,0(%GPR4)	
	add	%GPR4,%GPR3,%GPR6	
	NOP		;;10,13
	NOP		;;10,13
	NOP		;;10,13
	andi	%GPR6,%GPR8,$255	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sb	0(%GPR3),%GPR6	
	sge	%GPR27,%GPR5,%GPR7	
	bnez	%GPR27,L82	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L83	
	NOP		
	NOP		
	NOP		
	NOP		
L82:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$0	
	NOP		
	NOP		
	NOP		
L83:
	slli	%GPR7,%GPR5,$2	
	LI	%GPR6, *_pattern	
	addi	%GPR3,%GPR5,$1	
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	add	%GPR5,%GPR6,%GPR7	
	NOP		;;5,7
	NOP		;;5,7
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
	ori	%GPR7,%GPR7,$5	
	lw	%GPR8,0(%GPR5)	
	NOP		;;9,11
	NOP		;;9,11
	add	%GPR5,%GPR4,%GPR6	
	NOP		;;11,13
	NOP		;;11,13
	andi	%GPR6,%GPR8,$255	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sb	0(%GPR4),%GPR6	
	sge	%GPR27,%GPR3,%GPR7	
	bnez	%GPR27,L84	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L85	
	NOP		
	NOP		
	NOP		
	NOP		
L84:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		
	NOP		
	NOP		
L85:
	slli	%GPR6,%GPR3,$2	
	LI	%GPR4, *_pattern	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	addi	%GPR3,%GPR3,$1	
	add	%GPR4,%GPR4,%GPR6	
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
	ori	%GPR7,%GPR7,$5	
	NOP		;;7,9
	NOP		;;7,9
	lw	%GPR8,0(%GPR4)	
	add	%GPR4,%GPR5,%GPR6	
	NOP		;;10,13
	NOP		;;10,13
	NOP		;;10,13
	andi	%GPR6,%GPR8,$255	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sb	0(%GPR5),%GPR6	
	sge	%GPR27,%GPR3,%GPR7	
	bnez	%GPR27,L86	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L87	
	NOP		
	NOP		
	NOP		
	NOP		
L86:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		
	NOP		
	NOP		
L87:
	slli	%GPR7,%GPR3,$2	
	LI	%GPR6, *_pattern	
	addi	%GPR5,%GPR3,$1	
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	add	%GPR3,%GPR6,%GPR7	
	NOP		;;5,7
	NOP		;;5,7
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
	ori	%GPR7,%GPR7,$5	
	lw	%GPR8,0(%GPR3)	
	NOP		;;9,11
	NOP		;;9,11
	add	%GPR3,%GPR4,%GPR6	
	NOP		;;11,13
	NOP		;;11,13
	andi	%GPR6,%GPR8,$255	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sb	0(%GPR4),%GPR6	
	sge	%GPR27,%GPR5,%GPR7	
	bnez	%GPR27,L88	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L89	
	NOP		
	NOP		
	NOP		
	NOP		
L88:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$0	
	NOP		
	NOP		
	NOP		
L89:
	slli	%GPR6,%GPR5,$2	
	LI	%GPR4, *_pattern	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	addi	%GPR5,%GPR5,$1	
	add	%GPR4,%GPR4,%GPR6	
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
	ori	%GPR7,%GPR7,$5	
	NOP		;;7,9
	NOP		;;7,9
	lw	%GPR8,0(%GPR4)	
	add	%GPR4,%GPR3,%GPR6	
	NOP		;;10,13
	NOP		;;10,13
	NOP		;;10,13
	andi	%GPR6,%GPR8,$255	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sb	0(%GPR3),%GPR6	
	sge	%GPR27,%GPR5,%GPR7	
	bnez	%GPR27,L90	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L91	
	NOP		
	NOP		
	NOP		
	NOP		
L90:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$0	
	NOP		
	NOP		
	NOP		
L91:
	slli	%GPR7,%GPR5,$2	
	LI	%GPR6, *_pattern	
	addi	%GPR3,%GPR5,$1	
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	add	%GPR5,%GPR6,%GPR7	
	NOP		;;5,7
	NOP		;;5,7
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
	ori	%GPR7,%GPR7,$5	
	lw	%GPR8,0(%GPR5)	
	NOP		;;9,11
	NOP		;;9,11
	add	%GPR5,%GPR4,%GPR6	
	NOP		;;11,13
	NOP		;;11,13
	andi	%GPR6,%GPR8,$255	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sb	0(%GPR4),%GPR6	
	sge	%GPR27,%GPR3,%GPR7	
	bnez	%GPR27,L92	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L93	
	NOP		
	NOP		
	NOP		
	NOP		
L92:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		
	NOP		
	NOP		
L93:
	slli	%GPR6,%GPR3,$2	
	LI	%GPR4, *_pattern	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	addi	%GPR3,%GPR3,$1	
	add	%GPR4,%GPR4,%GPR6	
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
	ori	%GPR7,%GPR7,$5	
	NOP		;;7,9
	NOP		;;7,9
	lw	%GPR8,0(%GPR4)	
	add	%GPR4,%GPR5,%GPR6	
	NOP		;;10,13
	NOP		;;10,13
	NOP		;;10,13
	andi	%GPR6,%GPR8,$255	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sb	0(%GPR5),%GPR6	
	sge	%GPR27,%GPR3,%GPR7	
	bnez	%GPR27,L94	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L95	
	NOP		
	NOP		
	NOP		
	NOP		
L94:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		
	NOP		
	NOP		
L95:
	slli	%GPR7,%GPR3,$2	
	LI	%GPR6, *_pattern	
	addi	%GPR5,%GPR3,$1	
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	add	%GPR3,%GPR6,%GPR7	
	NOP		;;5,7
	NOP		;;5,7
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
	ori	%GPR7,%GPR7,$5	
	lw	%GPR8,0(%GPR3)	
	NOP		;;9,11
	NOP		;;9,11
	add	%GPR3,%GPR4,%GPR6	
	NOP		;;11,13
	NOP		;;11,13
	andi	%GPR6,%GPR8,$255	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sb	0(%GPR4),%GPR6	
	sge	%GPR27,%GPR5,%GPR7	
	bnez	%GPR27,L96	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L97	
	NOP		
	NOP		
	NOP		
	NOP		
L96:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$0	
	NOP		
	NOP		
	NOP		
L97:
	slli	%GPR6,%GPR5,$2	
	LI	%GPR4, *_pattern	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	addi	%GPR5,%GPR5,$1	
	add	%GPR4,%GPR4,%GPR6	
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
	ori	%GPR7,%GPR7,$5	
	NOP		;;7,9
	NOP		;;7,9
	lw	%GPR8,0(%GPR4)	
	add	%GPR4,%GPR3,%GPR6	
	NOP		;;10,13
	NOP		;;10,13
	NOP		;;10,13
	andi	%GPR6,%GPR8,$255	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sb	0(%GPR3),%GPR6	
	sge	%GPR27,%GPR5,%GPR7	
	bnez	%GPR27,L98	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L99	
	NOP		
	NOP		
	NOP		
	NOP		
L98:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$0	
	NOP		
	NOP		
	NOP		
L99:
	slli	%GPR7,%GPR5,$2	
	LI	%GPR6, *_pattern	
	addi	%GPR3,%GPR5,$1	
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	add	%GPR5,%GPR6,%GPR7	
	NOP		;;5,7
	NOP		;;5,7
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
	ori	%GPR7,%GPR7,$5	
	lw	%GPR8,0(%GPR5)	
	NOP		;;9,11
	NOP		;;9,11
	add	%GPR5,%GPR4,%GPR6	
	NOP		;;11,13
	NOP		;;11,13
	andi	%GPR6,%GPR8,$255	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sb	0(%GPR4),%GPR6	
	sge	%GPR27,%GPR3,%GPR7	
	bnez	%GPR27,L100	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L101	
	NOP		
	NOP		
	NOP		
	NOP		
L100:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		
	NOP		
	NOP		
L101:
	slli	%GPR7,%GPR3,$2	
	LI	%GPR6, *_pattern	
	addi	%GPR4,%GPR3,$1	
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	add	%GPR3,%GPR6,%GPR7	
	NOP		;;5,7
	NOP		;;5,7
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
	ori	%GPR7,%GPR7,$5	
	lw	%GPR8,0(%GPR3)	
	NOP		;;9,11
	NOP		;;9,11
	add	%GPR3,%GPR5,%GPR6	
	NOP		;;11,13
	NOP		;;11,13
	andi	%GPR6,%GPR8,$255	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sb	0(%GPR5),%GPR6	
	sge	%GPR27,%GPR4,%GPR7	
	bnez	%GPR27,L102	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L103	
	NOP		
	NOP		
	NOP		
	NOP		
L102:
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
L103:
	addi	%GPR1,%GPR1,$-4	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$0	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sgt	%GPR27,%GPR1,%GPR5	
	bnez	%GPR27,L71	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L104	
	NOP		
	NOP		
	NOP		
	NOP		
L104:
	NOP		;;0,2
	NOP		;;0,2
	add	%GPR3,%GPR2,%GPR0	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$24576	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$24576	
	NOP		
	NOP		
	NOP		
L105:
	LI	%GPR5, *_pattern	
	slli	%GPR6,%GPR3,$2	
	lbu	%GPR7,0(%GPR4)	
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	add	%GPR5,%GPR5,%GPR6	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	lw	%GPR5,0(%GPR5)	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	andi	%GPR5,%GPR5,$255	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sne	%GPR27,%GPR7,%GPR5	
	bnez	%GPR27,L156	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L106	
	NOP		
	NOP		
	NOP		
	NOP		
L106:
	NOP		;;0,2
	NOP		;;0,2
	addi	%GPR3,%GPR3,$1	
	NOP		;;2,4
	NOP		;;2,4
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
	ori	%GPR6,%GPR6,$5	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	add	%GPR4,%GPR4,%GPR5	
	sge	%GPR27,%GPR3,%GPR6	
	bnez	%GPR27,L107	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L108	
	NOP		
	NOP		
	NOP		
	NOP		
L107:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		
	NOP		
	NOP		
L108:
	LI	%GPR5, *_pattern	
	slli	%GPR6,%GPR3,$2	
	lbu	%GPR7,0(%GPR4)	
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	add	%GPR5,%GPR5,%GPR6	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	lw	%GPR5,0(%GPR5)	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	andi	%GPR5,%GPR5,$255	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sne	%GPR27,%GPR7,%GPR5	
	bnez	%GPR27,L156	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L109	
	NOP		
	NOP		
	NOP		
	NOP		
L109:
	NOP		;;0,2
	NOP		;;0,2
	addi	%GPR3,%GPR3,$1	
	NOP		;;2,4
	NOP		;;2,4
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
	ori	%GPR6,%GPR6,$5	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	add	%GPR4,%GPR4,%GPR5	
	sge	%GPR27,%GPR3,%GPR6	
	bnez	%GPR27,L110	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L111	
	NOP		
	NOP		
	NOP		
	NOP		
L110:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		
	NOP		
	NOP		
L111:
	LI	%GPR5, *_pattern	
	slli	%GPR6,%GPR3,$2	
	lbu	%GPR7,0(%GPR4)	
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	add	%GPR5,%GPR5,%GPR6	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	lw	%GPR5,0(%GPR5)	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	andi	%GPR5,%GPR5,$255	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sne	%GPR27,%GPR7,%GPR5	
	bnez	%GPR27,L156	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L112	
	NOP		
	NOP		
	NOP		
	NOP		
L112:
	NOP		;;0,2
	NOP		;;0,2
	addi	%GPR3,%GPR3,$1	
	NOP		;;2,4
	NOP		;;2,4
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
	ori	%GPR6,%GPR6,$5	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	add	%GPR4,%GPR4,%GPR5	
	sge	%GPR27,%GPR3,%GPR6	
	bnez	%GPR27,L113	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L114	
	NOP		
	NOP		
	NOP		
	NOP		
L113:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		
	NOP		
	NOP		
L114:
	LI	%GPR5, *_pattern	
	slli	%GPR6,%GPR3,$2	
	lbu	%GPR7,0(%GPR4)	
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	add	%GPR5,%GPR5,%GPR6	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	lw	%GPR5,0(%GPR5)	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	andi	%GPR5,%GPR5,$255	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sne	%GPR27,%GPR7,%GPR5	
	bnez	%GPR27,L156	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L115	
	NOP		
	NOP		
	NOP		
	NOP		
L115:
	NOP		;;0,2
	NOP		;;0,2
	addi	%GPR3,%GPR3,$1	
	NOP		;;2,4
	NOP		;;2,4
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
	ori	%GPR6,%GPR6,$5	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	add	%GPR4,%GPR4,%GPR5	
	sge	%GPR27,%GPR3,%GPR6	
	bnez	%GPR27,L116	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L117	
	NOP		
	NOP		
	NOP		
	NOP		
L116:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		
	NOP		
	NOP		
L117:
	LI	%GPR5, *_pattern	
	slli	%GPR6,%GPR3,$2	
	lbu	%GPR7,0(%GPR4)	
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	add	%GPR5,%GPR5,%GPR6	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	lw	%GPR5,0(%GPR5)	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	andi	%GPR5,%GPR5,$255	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sne	%GPR27,%GPR7,%GPR5	
	bnez	%GPR27,L156	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L118	
	NOP		
	NOP		
	NOP		
	NOP		
L118:
	NOP		;;0,2
	NOP		;;0,2
	addi	%GPR5,%GPR3,$1	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$1	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$5	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	add	%GPR3,%GPR4,%GPR3	
	sge	%GPR27,%GPR5,%GPR6	
	bnez	%GPR27,L119	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L120	
	NOP		
	NOP		
	NOP		
	NOP		
L119:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$0	
	NOP		
	NOP		
	NOP		
L120:
	LI	%GPR4, *_pattern	
	slli	%GPR6,%GPR5,$2	
	lbu	%GPR7,0(%GPR3)	
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	add	%GPR4,%GPR4,%GPR6	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	lw	%GPR4,0(%GPR4)	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	andi	%GPR4,%GPR4,$255	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sne	%GPR27,%GPR7,%GPR4	
	bnez	%GPR27,L156	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L121	
	NOP		
	NOP		
	NOP		
	NOP		
L121:
	NOP		;;0,2
	NOP		;;0,2
	addi	%GPR4,%GPR5,$1	
	NOP		;;2,4
	NOP		;;2,4
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
	ori	%GPR6,%GPR6,$5	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	add	%GPR3,%GPR3,%GPR5	
	sge	%GPR27,%GPR4,%GPR6	
	bnez	%GPR27,L122	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L123	
	NOP		
	NOP		
	NOP		
	NOP		
L122:
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
L123:
	LI	%GPR5, *_pattern	
	slli	%GPR6,%GPR4,$2	
	lbu	%GPR7,0(%GPR3)	
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	add	%GPR5,%GPR5,%GPR6	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	lw	%GPR5,0(%GPR5)	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	andi	%GPR5,%GPR5,$255	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sne	%GPR27,%GPR7,%GPR5	
	bnez	%GPR27,L156	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L124	
	NOP		
	NOP		
	NOP		
	NOP		
L124:
	NOP		;;0,2
	NOP		;;0,2
	addi	%GPR5,%GPR4,$1	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$1	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$5	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	add	%GPR4,%GPR3,%GPR4	
	sge	%GPR27,%GPR5,%GPR6	
	bnez	%GPR27,L125	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L126	
	NOP		
	NOP		
	NOP		
	NOP		
L125:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$0	
	NOP		
	NOP		
	NOP		
L126:
	LI	%GPR3, *_pattern	
	slli	%GPR6,%GPR5,$2	
	lbu	%GPR7,0(%GPR4)	
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	add	%GPR3,%GPR3,%GPR6	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	lw	%GPR3,0(%GPR3)	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	andi	%GPR3,%GPR3,$255	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sne	%GPR27,%GPR7,%GPR3	
	bnez	%GPR27,L156	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L127	
	NOP		
	NOP		
	NOP		
	NOP		
L127:
	NOP		;;0,2
	NOP		;;0,2
	addi	%GPR3,%GPR5,$1	
	NOP		;;2,4
	NOP		;;2,4
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
	ori	%GPR6,%GPR6,$5	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	add	%GPR4,%GPR4,%GPR5	
	sge	%GPR27,%GPR3,%GPR6	
	bnez	%GPR27,L128	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L129	
	NOP		
	NOP		
	NOP		
	NOP		
L128:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		
	NOP		
	NOP		
L129:
	LI	%GPR5, *_pattern	
	slli	%GPR6,%GPR3,$2	
	lbu	%GPR7,0(%GPR4)	
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	add	%GPR5,%GPR5,%GPR6	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	lw	%GPR5,0(%GPR5)	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	andi	%GPR5,%GPR5,$255	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sne	%GPR27,%GPR7,%GPR5	
	bnez	%GPR27,L156	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L130	
	NOP		
	NOP		
	NOP		
	NOP		
L130:
	NOP		;;0,2
	NOP		;;0,2
	addi	%GPR5,%GPR3,$1	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$1	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$5	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	add	%GPR3,%GPR4,%GPR3	
	sge	%GPR27,%GPR5,%GPR6	
	bnez	%GPR27,L131	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L132	
	NOP		
	NOP		
	NOP		
	NOP		
L131:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$0	
	NOP		
	NOP		
	NOP		
L132:
	LI	%GPR4, *_pattern	
	slli	%GPR6,%GPR5,$2	
	lbu	%GPR7,0(%GPR3)	
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	add	%GPR4,%GPR4,%GPR6	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	lw	%GPR4,0(%GPR4)	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	andi	%GPR4,%GPR4,$255	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sne	%GPR27,%GPR7,%GPR4	
	bnez	%GPR27,L156	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L133	
	NOP		
	NOP		
	NOP		
	NOP		
L133:
	NOP		;;0,2
	NOP		;;0,2
	addi	%GPR4,%GPR5,$1	
	NOP		;;2,4
	NOP		;;2,4
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
	ori	%GPR6,%GPR6,$5	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	add	%GPR3,%GPR3,%GPR5	
	sge	%GPR27,%GPR4,%GPR6	
	bnez	%GPR27,L134	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L135	
	NOP		
	NOP		
	NOP		
	NOP		
L134:
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
L135:
	LI	%GPR5, *_pattern	
	slli	%GPR6,%GPR4,$2	
	lbu	%GPR7,0(%GPR3)	
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	add	%GPR5,%GPR5,%GPR6	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	lw	%GPR5,0(%GPR5)	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	andi	%GPR5,%GPR5,$255	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sne	%GPR27,%GPR7,%GPR5	
	bnez	%GPR27,L156	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L136	
	NOP		
	NOP		
	NOP		
	NOP		
L136:
	NOP		;;0,2
	NOP		;;0,2
	addi	%GPR5,%GPR4,$1	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$1	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$5	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	add	%GPR4,%GPR3,%GPR4	
	sge	%GPR27,%GPR5,%GPR6	
	bnez	%GPR27,L137	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L138	
	NOP		
	NOP		
	NOP		
	NOP		
L137:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$0	
	NOP		
	NOP		
	NOP		
L138:
	LI	%GPR3, *_pattern	
	slli	%GPR6,%GPR5,$2	
	lbu	%GPR7,0(%GPR4)	
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	add	%GPR3,%GPR3,%GPR6	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	lw	%GPR3,0(%GPR3)	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	andi	%GPR3,%GPR3,$255	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sne	%GPR27,%GPR7,%GPR3	
	bnez	%GPR27,L156	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L139	
	NOP		
	NOP		
	NOP		
	NOP		
L139:
	NOP		;;0,2
	NOP		;;0,2
	addi	%GPR3,%GPR5,$1	
	NOP		;;2,4
	NOP		;;2,4
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
	ori	%GPR6,%GPR6,$5	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	add	%GPR4,%GPR4,%GPR5	
	sge	%GPR27,%GPR3,%GPR6	
	bnez	%GPR27,L140	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L141	
	NOP		
	NOP		
	NOP		
	NOP		
L140:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		
	NOP		
	NOP		
L141:
	LI	%GPR5, *_pattern	
	slli	%GPR6,%GPR3,$2	
	lbu	%GPR7,0(%GPR4)	
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	add	%GPR5,%GPR5,%GPR6	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	lw	%GPR5,0(%GPR5)	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	andi	%GPR5,%GPR5,$255	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sne	%GPR27,%GPR7,%GPR5	
	bnez	%GPR27,L156	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L142	
	NOP		
	NOP		
	NOP		
	NOP		
L142:
	NOP		;;0,2
	NOP		;;0,2
	addi	%GPR5,%GPR3,$1	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$1	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$5	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	add	%GPR3,%GPR4,%GPR3	
	sge	%GPR27,%GPR5,%GPR6	
	bnez	%GPR27,L143	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L144	
	NOP		
	NOP		
	NOP		
	NOP		
L143:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$0	
	NOP		
	NOP		
	NOP		
L144:
	LI	%GPR4, *_pattern	
	slli	%GPR6,%GPR5,$2	
	lbu	%GPR7,0(%GPR3)	
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	add	%GPR4,%GPR4,%GPR6	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	lw	%GPR4,0(%GPR4)	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	andi	%GPR4,%GPR4,$255	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sne	%GPR27,%GPR7,%GPR4	
	bnez	%GPR27,L156	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L145	
	NOP		
	NOP		
	NOP		
	NOP		
L145:
	NOP		;;0,2
	NOP		;;0,2
	addi	%GPR4,%GPR5,$1	
	NOP		;;2,4
	NOP		;;2,4
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
	ori	%GPR6,%GPR6,$5	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	add	%GPR3,%GPR3,%GPR5	
	sge	%GPR27,%GPR4,%GPR6	
	bnez	%GPR27,L146	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L147	
	NOP		
	NOP		
	NOP		
	NOP		
L146:
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
L147:
	LI	%GPR5, *_pattern	
	slli	%GPR6,%GPR4,$2	
	lbu	%GPR7,0(%GPR3)	
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	add	%GPR5,%GPR5,%GPR6	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	lw	%GPR5,0(%GPR5)	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	andi	%GPR5,%GPR5,$255	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sne	%GPR27,%GPR7,%GPR5	
	bnez	%GPR27,L156	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L148	
	NOP		
	NOP		
	NOP		
	NOP		
L148:
	NOP		;;0,2
	NOP		;;0,2
	addi	%GPR5,%GPR4,$1	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$1	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$5	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	add	%GPR4,%GPR3,%GPR4	
	sge	%GPR27,%GPR5,%GPR6	
	bnez	%GPR27,L149	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L150	
	NOP		
	NOP		
	NOP		
	NOP		
L149:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$0	
	NOP		
	NOP		
	NOP		
L150:
	LI	%GPR3, *_pattern	
	slli	%GPR6,%GPR5,$2	
	lbu	%GPR7,0(%GPR4)	
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	add	%GPR3,%GPR3,%GPR6	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	lw	%GPR3,0(%GPR3)	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	andi	%GPR3,%GPR3,$255	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sne	%GPR27,%GPR7,%GPR3	
	bnez	%GPR27,L156	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L151	
	NOP		
	NOP		
	NOP		
	NOP		
L151:
	NOP		;;0,2
	NOP		;;0,2
	addi	%GPR3,%GPR5,$1	
	NOP		;;2,4
	NOP		;;2,4
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
	ori	%GPR6,%GPR6,$5	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	add	%GPR4,%GPR4,%GPR5	
	sge	%GPR27,%GPR3,%GPR6	
	bnez	%GPR27,L152	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L153	
	NOP		
	NOP		
	NOP		
	NOP		
L152:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		
	NOP		
	NOP		
L153:
	addi	%GPR1,%GPR1,$4	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$65535	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sle	%GPR27,%GPR1,%GPR5	
	bnez	%GPR27,L105	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L154	
	NOP		
	NOP		
	NOP		
	NOP		
L154:
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
	bnez	%GPR27,L2	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L155	
	NOP		
	NOP		
	NOP		
	NOP		
L155:
	LI	%GPR1, *_errorNumber	
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
	j	L157	
	NOP		
	NOP		
	NOP		
L156:
	LI	%GPR1, *_errorNumber	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sw	0(%GPR1),%GPR2	
	NOP		
	NOP		
	NOP		
L157:
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
	j	L158	
	NOP		
	NOP		
	NOP		
	NOP		
L158:
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
