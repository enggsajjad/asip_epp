	.section	.data
	;.global	_sinusLUT
	.align	4
_sinusLUT:
	.space	4
	.data.32	1144
	.data.32	2287
	.data.32	3430
	.data.32	4572
	.data.32	5712
	.data.32	6850
	.data.32	7987
	.data.32	9121
	.data.32	10252
	.data.32	11380
	.data.32	12505
	.data.32	13626
	.data.32	14742
	.data.32	15855
	.data.32	16962
	.data.32	18064
	.data.32	19161
	.data.32	20252
	.data.32	21336
	;.global	_cosinusLUT
	.align	4
_cosinusLUT:
	.data.32	65536
	.data.32	65526
	.data.32	65496
	.data.32	65446
	.data.32	65376
	.data.32	65287
	.data.32	65177
	.data.32	65048
	.data.32	64898
	.data.32	64729
	.data.32	64540
	.data.32	64332
	.data.32	64104
	.data.32	63856
	.data.32	63589
	.data.32	63303
	.data.32	62997
	.data.32	62672
	.data.32	62328
	.data.32	61966
	.align	4
L1:
	.space	12
L2:
	.data.8	40
	.space	1
L3:
	.data.8	44
	.space	1
L4:
	.data.8	41
	.space	1
	;.global	_bargraphValue
	.align	4
_bargraphValue:
	.space	4
L5:
	.data.8	65
	.space	1
L6:
	.data.8	78
	.space	1
L7:
	.data.8	66
	.space	1
	.section	.text
sin:
L8:
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
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	slt	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L10	
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
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$80	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sgt	%GPR27,%GPR1,%GPR2	
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
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	j	L12	
	NOP		
	NOP		
	NOP		
	NOP		
L11:
	LI	%GPR3, *_sinusLUT	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		;;6,8
	NOP		;;6,8
	mult	%GPR1,%GPR1,%GPR4	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	lw	%GPR28,0(%GPR1)	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	j	L12	
	NOP		
	NOP		
	NOP		
	NOP		
L12:
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
cos:
L13:
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
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	slt	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L15	
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
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$80	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sgt	%GPR27,%GPR1,%GPR2	
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
	ori	%GPR28,%GPR28,$0	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	j	L17	
	NOP		
	NOP		
	NOP		
	NOP		
L16:
	LI	%GPR3, *_cosinusLUT	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		;;6,8
	NOP		;;6,8
	mult	%GPR1,%GPR1,%GPR4	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	lw	%GPR28,0(%GPR1)	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
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
rotate:
L18:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$28	
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR30),%GPR1	
	sw	-8(%GPR30),%GPR3	
	NOP		
	NOP		
	NOP		
	lw	%GPR1,0(%GPR1)	
	lw	%GPR3,0(%GPR2)	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	sub	%GPR1,%GPR3,%GPR1	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$4	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	NOP		;;11,13
	NOP		;;11,13
	sw	-12(%GPR30),%GPR1	
	lw	%GPR1,-4(%GPR30)	
	add	%GPR2,%GPR2,%GPR5	
	NOP		;;15,18
	NOP		;;15,18
	NOP		;;15,18
	add	%GPR1,%GPR1,%GPR4	
	lw	%GPR2,0(%GPR2)	
	NOP		;;19,22
	NOP		;;19,22
	NOP		;;19,22
	lw	%GPR1,0(%GPR1)	
	NOP		;;22,26
	NOP		;;22,26
	NOP		;;22,26
	NOP		;;22,26
	sub	%GPR1,%GPR2,%GPR1	
	NOP		;;26,30
	NOP		;;26,30
	NOP		;;26,30
	NOP		;;26,30
	sw	-16(%GPR30),%GPR1	
	lw	%GPR1,-8(%GPR30)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	sin	
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
	sw	-20(%GPR30),%GPR28	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	cos	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR2,-16(%GPR30)	
	lw	%GPR1,-20(%GPR30)	
	LI	%GPR3, *L1	
	LI	%GPR4, *L1	
	NOP		;;39,41
	NOP		;;39,41
	mult	%GPR1,%GPR1,%GPR2	
	LI	%GPR5, *L1	
	NOP		;;42,45
	NOP		;;42,45
	NOP		;;42,45
	lw	%GPR2,-12(%GPR30)	
	LI	%GPR6, *L1	
	NOP		;;46,49
	NOP		;;46,49
	NOP		;;46,49
	mult	%GPR2,%GPR28,%GPR2	
	NOP		;;49,53
	NOP		;;49,53
	NOP		;;49,53
	NOP		;;49,53
	sub	%GPR1,%GPR2,%GPR1	
	LI	%GPR2, *L1	
	NOP		;;54,57
	NOP		;;54,57
	NOP		;;54,57
	sw	0(%GPR3),%GPR1	
	LI	%GPR1, *L1	
	NOP		;;58,61
	NOP		;;58,61
	NOP		;;58,61
	lw	%GPR3,0(%GPR4)	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	NOP		;;62,65
	NOP		;;62,65
	NOP		;;62,65
	srai	%GPR3,%GPR3,$16	
	NOP		;;65,69
	NOP		;;65,69
	NOP		;;65,69
	NOP		;;65,69
	sw	0(%GPR5),%GPR3	
	lw	%GPR3,-4(%GPR30)	
	NOP		;;70,73
	NOP		;;70,73
	NOP		;;70,73
	lw	%GPR2,0(%GPR2)	
	lw	%GPR3,0(%GPR3)	
	NOP		;;74,78
	NOP		;;74,78
	NOP		;;74,78
	NOP		;;74,78
	add	%GPR2,%GPR2,%GPR3	
	NOP		;;78,82
	NOP		;;78,82
	NOP		;;78,82
	NOP		;;78,82
	sw	0(%GPR6),%GPR2	
	NOP		;;82,86
	NOP		;;82,86
	NOP		;;82,86
	NOP		;;82,86
	lw	%GPR1,0(%GPR1)	
	NOP		;;86,90
	NOP		;;86,90
	NOP		;;86,90
	NOP		;;86,90
	slt	%GPR27,%GPR1,%GPR4	
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
L20:
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
	ori	%GPR2,%GPR2,$320	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	sgt	%GPR27,%GPR1,%GPR2	
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
	LI	%GPR1, *L1	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$320	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sw	0(%GPR1),%GPR2	
	NOP		
	NOP		
	NOP		
L22:
	lw	%GPR1,-20(%GPR30)	
	lw	%GPR2,-12(%GPR30)	
	NOP		;;1,3
	NOP		;;1,3
	LI	%GPR3, *L1	
	NOP		;;3,5
	NOP		;;3,5
	mult	%GPR1,%GPR1,%GPR2	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$4	
	LI	%GPR4, *L1	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$4	
	lw	%GPR2,-16(%GPR30)	
	add	%GPR3,%GPR3,%GPR5	
	NOP		;;10,13
	NOP		;;10,13
	NOP		;;10,13
	mult	%GPR2,%GPR28,%GPR2	
	NOP		;;13,16
	NOP		;;13,16
	NOP		;;13,16
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$4	
	add	%GPR1,%GPR1,%GPR2	
	add	%GPR2,%GPR4,%GPR6	
	LI	%GPR4, *L1	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$4	
	sw	0(%GPR3),%GPR1	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$4	
	LI	%GPR3, *L1	
	NOP		;;23,25
	NOP		;;23,25
	lw	%GPR2,0(%GPR2)	
	add	%GPR1,%GPR4,%GPR1	
	lw	%GPR4,-4(%GPR30)	
	add	%GPR3,%GPR3,%GPR5	
	srai	%GPR2,%GPR2,$16	
	LI	%GPR5, *L1	
	add	%GPR4,%GPR4,%GPR6	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$4	
	sw	0(%GPR1),%GPR2	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	LI	%GPR1, *L1	
	NOP		;;35,37
	NOP		;;35,37
	lw	%GPR3,0(%GPR3)	
	lw	%GPR4,0(%GPR4)	
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;39,42
	NOP		;;39,42
	NOP		;;39,42
	add	%GPR2,%GPR3,%GPR4	
	add	%GPR3,%GPR5,%GPR6	
	NOP		;;43,46
	NOP		;;43,46
	NOP		;;43,46
	sw	0(%GPR1),%GPR2	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;47,50
	NOP		;;47,50
	NOP		;;47,50
	lw	%GPR2,0(%GPR3)	
	NOP		;;50,54
	NOP		;;50,54
	NOP		;;50,54
	NOP		;;50,54
	slt	%GPR27,%GPR2,%GPR1	
	bnez	%GPR27,L23	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L24	
	NOP		
	NOP		
	NOP		
	NOP		
L23:
	LI	%GPR1, *L1	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	sw	0(%GPR1),%GPR3	
	NOP		
	NOP		
	NOP		
L24:
	LI	%GPR1, *L1	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$240	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	lw	%GPR1,0(%GPR1)	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	sgt	%GPR27,%GPR1,%GPR3	
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
	LI	%GPR1, *L1	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$240	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	sw	0(%GPR1),%GPR3	
	NOP		
	NOP		
	NOP		
L26:
	LI	%GPR1, *L1	
	NOP		;;1,3
	NOP		;;1,3
	LI	%GPR28, *L1	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$8	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$1	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	sw	0(%GPR1),%GPR3	
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
printCoordinates:
L28:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$32	
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-24(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *L2	
	NOP		;;3,8
	NOP		;;3,8
	NOP		;;3,8
	NOP		;;3,8
	NOP		;;3,8
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_print	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR1,-24(%GPR30)	
	subi	%GPR2,%GPR30,$20	
	NOP		;;10,13
	NOP		;;10,13
	NOP		;;10,13
	lw	%GPR1,0(%GPR1)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	intToStr	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR1,%GPR30,$20	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_print	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *L3	
	NOP		;;17,22
	NOP		;;17,22
	NOP		;;17,22
	NOP		;;17,22
	NOP		;;17,22
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_print	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;22,24
	NOP		;;22,24
	lw	%GPR3,-24(%GPR30)	
	subi	%GPR2,%GPR30,$20	
	NOP		;;25,27
	NOP		;;25,27
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$4	
	NOP		;;27,31
	NOP		;;27,31
	NOP		;;27,31
	NOP		;;27,31
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;31,35
	NOP		;;31,35
	NOP		;;31,35
	NOP		;;31,35
	lw	%GPR1,0(%GPR1)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	intToStr	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR1,%GPR30,$20	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_print	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *L4	
	NOP		;;39,44
	NOP		;;39,44
	NOP		;;39,44
	NOP		;;39,44
	NOP		;;39,44
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_print	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;44,49
	NOP		;;44,49
	NOP		;;44,49
	NOP		;;44,49
	NOP		;;44,49
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		;;49,53
	NOP		;;49,53
	NOP		;;49,53
	NOP		;;49,53
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
drawRectangle:
L30:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$24	
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR30),%GPR1	
	sw	-8(%GPR30),%GPR2	
	sw	-12(%GPR30),%GPR3	
	sw	-16(%GPR30),%GPR4	
	NOP		
	NOP		
	NOP		
	NOP		;;5,7
	NOP		;;5,7
	lw	%GPR3,0(%GPR2)	
	add	%GPR5,%GPR1,%GPR0	
	NOP		;;8,10
	NOP		;;8,10
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	lw	%GPR1,0(%GPR1)	
	NOP		;;11,13
	NOP		;;11,13
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	add	%GPR2,%GPR5,%GPR2	
	lw	%GPR5,-8(%GPR30)	
	NOP		;;15,18
	NOP		;;15,18
	NOP		;;15,18
	lw	%GPR2,0(%GPR2)	
	add	%GPR4,%GPR5,%GPR4	
	NOP		;;19,23
	NOP		;;19,23
	NOP		;;19,23
	NOP		;;19,23
	lw	%GPR4,0(%GPR4)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	g_drawline	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR2,-12(%GPR30)	
	lw	%GPR1,-8(%GPR30)	
	NOP		;;26,29
	NOP		;;26,29
	NOP		;;26,29
	lw	%GPR3,0(%GPR2)	
	add	%GPR5,%GPR1,%GPR0	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	lw	%GPR1,0(%GPR1)	
	NOP		;;33,35
	NOP		;;33,35
	add	%GPR2,%GPR5,%GPR2	
	lw	%GPR5,-12(%GPR30)	
	NOP		;;36,39
	NOP		;;36,39
	NOP		;;36,39
	lw	%GPR2,0(%GPR2)	
	add	%GPR4,%GPR5,%GPR4	
	NOP		;;40,44
	NOP		;;40,44
	NOP		;;40,44
	NOP		;;40,44
	lw	%GPR4,0(%GPR4)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	g_drawline	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR2,-16(%GPR30)	
	lw	%GPR1,-12(%GPR30)	
	NOP		;;47,50
	NOP		;;47,50
	NOP		;;47,50
	lw	%GPR3,0(%GPR2)	
	add	%GPR5,%GPR1,%GPR0	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	lw	%GPR1,0(%GPR1)	
	NOP		;;54,56
	NOP		;;54,56
	add	%GPR2,%GPR5,%GPR2	
	lw	%GPR5,-16(%GPR30)	
	NOP		;;57,60
	NOP		;;57,60
	NOP		;;57,60
	lw	%GPR2,0(%GPR2)	
	add	%GPR4,%GPR5,%GPR4	
	NOP		;;61,65
	NOP		;;61,65
	NOP		;;61,65
	NOP		;;61,65
	lw	%GPR4,0(%GPR4)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	g_drawline	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR2,-4(%GPR30)	
	lw	%GPR1,-16(%GPR30)	
	NOP		;;68,71
	NOP		;;68,71
	NOP		;;68,71
	lw	%GPR3,0(%GPR2)	
	add	%GPR5,%GPR1,%GPR0	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	lw	%GPR1,0(%GPR1)	
	NOP		;;75,77
	NOP		;;75,77
	add	%GPR2,%GPR5,%GPR2	
	lw	%GPR5,-4(%GPR30)	
	NOP		;;78,81
	NOP		;;78,81
	NOP		;;78,81
	lw	%GPR2,0(%GPR2)	
	add	%GPR4,%GPR5,%GPR4	
	NOP		;;82,86
	NOP		;;82,86
	NOP		;;82,86
	NOP		;;82,86
	lw	%GPR4,0(%GPR4)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	g_drawline	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;87,92
	NOP		;;87,92
	NOP		;;87,92
	NOP		;;87,92
	NOP		;;87,92
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		;;92,96
	NOP		;;92,96
	NOP		;;92,96
	NOP		;;92,96
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
copyPoint:
L32:
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
	NOP		;;2,4
	NOP		;;2,4
	lw	%GPR3,0(%GPR1)	
	NOP		;;4,7
	NOP		;;4,7
	NOP		;;4,7
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	sw	0(%GPR2),%GPR3	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$4	
	NOP		;;9,11
	NOP		;;9,11
	add	%GPR4,%GPR1,%GPR4	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$8	
	add	%GPR3,%GPR2,%GPR3	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$8	
	lw	%GPR4,0(%GPR4)	
	add	%GPR1,%GPR1,%GPR5	
	NOP		;;16,18
	NOP		;;16,18
	add	%GPR2,%GPR2,%GPR6	
	sw	0(%GPR3),%GPR4	
	NOP		;;19,21
	NOP		;;19,21
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		;;21,23
	NOP		;;21,23
	lw	%GPR1,0(%GPR1)	
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	sw	0(%GPR2),%GPR1	
	j	L33	
	NOP		
	NOP		
	NOP		
	NOP		
L33:
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
overwriteRectangle:
L34:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$28	
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-8(%GPR30),%GPR1	
	sw	-12(%GPR30),%GPR2	
	sw	-16(%GPR30),%GPR3	
	sw	-20(%GPR30),%GPR4	
	NOP		
	NOP		
	NOP		
	NOP		;;5,12
	NOP		;;5,12
	NOP		;;5,12
	NOP		;;5,12
	NOP		;;5,12
	NOP		;;5,12
	NOP		;;5,12
	lhi	%GPR8,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR8,%GPR8,$2	
	NOP		;;12,14
	NOP		;;12,14
	subi	%GPR3,%GPR30,$4	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$111	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$0	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$1	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$86	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$71	
	sw	-4(%GPR30),%GPR8	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	sendcommand	
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
	lw	%GPR2,-12(%GPR30)	
	lw	%GPR3,-16(%GPR30)	
	lw	%GPR4,-20(%GPR30)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	drawRectangle	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;27,34
	NOP		;;27,34
	NOP		;;27,34
	NOP		;;27,34
	NOP		;;27,34
	NOP		;;27,34
	NOP		;;27,34
	lhi	%GPR8,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR8,%GPR8,$1	
	NOP		;;34,36
	NOP		;;34,36
	subi	%GPR3,%GPR30,$4	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$111	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$0	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$1	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$86	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$71	
	sw	-4(%GPR30),%GPR8	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	sendcommand	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;44,49
	NOP		;;44,49
	NOP		;;44,49
	NOP		;;44,49
	NOP		;;44,49
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		;;49,53
	NOP		;;49,53
	NOP		;;49,53
	NOP		;;49,53
	j	L35	
	NOP		
	NOP		
	NOP		
	NOP		
L35:
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
delete:
L36:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$40	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	subi	%GPR1,%GPR30,$32	
	NOP		;;4,6
	NOP		;;4,6
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
	ori	%GPR2,%GPR2,$4	
	NOP		;;7,9
	NOP		;;7,9
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$30	
	sw	-32(%GPR30),%GPR3	
	add	%GPR1,%GPR1,%GPR2	
	subi	%GPR4,%GPR30,$32	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$8	
	NOP		;;13,16
	NOP		;;13,16
	NOP		;;13,16
	sw	0(%GPR1),%GPR5	
	add	%GPR3,%GPR4,%GPR3	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$0	
	subi	%GPR2,%GPR30,$32	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$12	
	NOP		;;20,23
	NOP		;;20,23
	NOP		;;20,23
	sw	0(%GPR3),%GPR5	
	add	%GPR1,%GPR2,%GPR1	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$30	
	subi	%GPR4,%GPR30,$32	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$16	
	NOP		;;27,30
	NOP		;;27,30
	NOP		;;27,30
	sw	0(%GPR1),%GPR5	
	add	%GPR3,%GPR4,%GPR3	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$0	
	subi	%GPR2,%GPR30,$32	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$20	
	NOP		;;34,37
	NOP		;;34,37
	NOP		;;34,37
	sw	0(%GPR3),%GPR5	
	add	%GPR1,%GPR2,%GPR1	
	subi	%GPR4,%GPR30,$32	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$120	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$24	
	NOP		;;41,44
	NOP		;;41,44
	NOP		;;41,44
	sw	0(%GPR1),%GPR5	
	add	%GPR4,%GPR4,%GPR3	
	subi	%GPR8,%GPR30,$32	
	NOP		;;46,48
	NOP		;;46,48
	lhi	%GPR10,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR10,%GPR10,$0	
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$28	
	NOP		;;49,52
	NOP		;;49,52
	NOP		;;49,52
	sw	0(%GPR4),%GPR10	
	NOP		;;52,56
	NOP		;;52,56
	NOP		;;52,56
	NOP		;;52,56
	lhi	%GPR11,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR11,%GPR11,$120	
	add	%GPR8,%GPR8,%GPR9	
	NOP		;;57,59
	NOP		;;57,59
	subi	%GPR3,%GPR30,$32	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$111	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$0	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$8	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$76	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$82	
	sw	0(%GPR8),%GPR11	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	sendcommand	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
L37:
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
pollDisplay:
L38:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$32	
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
	NOP		;;6,10
	NOP		;;6,10
	NOP		;;6,10
	NOP		;;6,10
	sw	-16(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	checkbuffer	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;11,13
	NOP		;;11,13
	add	%GPR2,%GPR28,%GPR0	
	sw	-20(%GPR30),%GPR28	
	NOP		;;14,16
	NOP		;;14,16
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$3	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sgt	%GPR27,%GPR2,%GPR1	
	bnez	%GPR27,L39	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L61	
	NOP		
	NOP		
	NOP		
	NOP		
L39:
	subi	%GPR1,%GPR30,$12	
	lw	%GPR2,-20(%GPR30)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	getbytes	
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
	add	%GPR1,%GPR28,%GPR0	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sne	%GPR27,%GPR1,%GPR2	
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
	add	%GPR28,%GPR1,%GPR0	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	j	L62	
	NOP		
	NOP		
	NOP		
	NOP		
L41:
	lw	%GPR1,-16(%GPR30)	
	lw	%GPR2,-20(%GPR30)	
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	slt	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L42	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L61	
	NOP		
	NOP		
	NOP		
	NOP		
L42:
	subi	%GPR1,%GPR30,$12	
	lw	%GPR2,-16(%GPR30)	
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;5,10
	NOP		;;5,10
	NOP		;;5,10
	NOP		;;5,10
	NOP		;;5,10
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	loadByteUnsigned	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR2,-16(%GPR30)	
	NOP		;;11,13
	NOP		;;11,13
	add	%GPR1,%GPR28,%GPR0	
	NOP		;;13,15
	NOP		;;13,15
	addi	%GPR2,%GPR2,$1	
	NOP		;;15,19
	NOP		;;15,19
	NOP		;;15,19
	NOP		;;15,19
	sw	-16(%GPR30),%GPR2	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$27	
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	sne	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L43	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L55	
	NOP		
	NOP		
	NOP		
	NOP		
L43:
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
	j	L62	
	NOP		
	NOP		
	NOP		
	NOP		
L44:
	LI	%GPR1, *L5	
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$120	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	g_print	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR1,%GPR30,$12	
	lw	%GPR2,-16(%GPR30)	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;13,18
	NOP		;;13,18
	NOP		;;13,18
	NOP		;;13,18
	NOP		;;13,18
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	loadByteUnsigned	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR2,-16(%GPR30)	
	NOP		;;19,21
	NOP		;;19,21
	add	%GPR1,%GPR28,%GPR0	
	NOP		;;21,23
	NOP		;;21,23
	addi	%GPR2,%GPR2,$1	
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	sw	-16(%GPR30),%GPR2	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1	
	NOP		;;28,32
	NOP		;;28,32
	NOP		;;28,32
	NOP		;;28,32
	sne	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L45	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L46	
	NOP		
	NOP		
	NOP		
	NOP		
L45:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$3	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	j	L62	
	NOP		
	NOP		
	NOP		
	NOP		
L46:
	subi	%GPR1,%GPR30,$12	
	lw	%GPR2,-16(%GPR30)	
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;5,10
	NOP		;;5,10
	NOP		;;5,10
	NOP		;;5,10
	NOP		;;5,10
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	loadByteUnsigned	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	add	%GPR1,%GPR28,%GPR0	
	NOP		;;11,15
	NOP		;;11,15
	NOP		;;11,15
	NOP		;;11,15
	lw	%GPR1,-16(%GPR30)	
	NOP		;;15,19
	NOP		;;15,19
	NOP		;;15,19
	NOP		;;15,19
	addi	%GPR1,%GPR1,$1	
	NOP		;;19,23
	NOP		;;19,23
	NOP		;;19,23
	NOP		;;19,23
	addi	%GPR1,%GPR1,$1	
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	sw	-16(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
L47:
	lw	%GPR1,-20(%GPR30)	
	lw	%GPR2,-16(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	addi	%GPR1,%GPR1,$1	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sgt	%GPR27,%GPR2,%GPR1	
	bnez	%GPR27,L48	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L41	
	NOP		
	NOP		
	NOP		
	NOP		
L48:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$5	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	j	L62	
	NOP		
	NOP		
	NOP		
	NOP		
L49:
	LI	%GPR1, *L6	
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$120	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	g_print	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR1,%GPR30,$12	
	lw	%GPR2,-16(%GPR30)	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;13,18
	NOP		;;13,18
	NOP		;;13,18
	NOP		;;13,18
	NOP		;;13,18
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	loadByteUnsigned	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR2,-16(%GPR30)	
	NOP		;;19,21
	NOP		;;19,21
	add	%GPR1,%GPR28,%GPR0	
	NOP		;;21,23
	NOP		;;21,23
	addi	%GPR2,%GPR2,$1	
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	sw	-16(%GPR30),%GPR2	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1	
	NOP		;;28,32
	NOP		;;28,32
	NOP		;;28,32
	NOP		;;28,32
	sne	%GPR27,%GPR1,%GPR2	
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
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$3	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	j	L62	
	NOP		
	NOP		
	NOP		
	NOP		
L51:
	subi	%GPR1,%GPR30,$12	
	lw	%GPR2,-16(%GPR30)	
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;5,10
	NOP		;;5,10
	NOP		;;5,10
	NOP		;;5,10
	NOP		;;5,10
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	loadByteUnsigned	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	add	%GPR1,%GPR28,%GPR0	
	NOP		;;11,15
	NOP		;;11,15
	NOP		;;11,15
	NOP		;;11,15
	lw	%GPR1,-16(%GPR30)	
	NOP		;;15,19
	NOP		;;15,19
	NOP		;;15,19
	NOP		;;15,19
	addi	%GPR1,%GPR1,$1	
	NOP		;;19,23
	NOP		;;19,23
	NOP		;;19,23
	NOP		;;19,23
	addi	%GPR1,%GPR1,$1	
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	sw	-16(%GPR30),%GPR1	
	j	L47	
	NOP		
	NOP		
	NOP		
L52:
	LI	%GPR1, *L7	
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$120	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	g_print	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR1,%GPR30,$12	
	lw	%GPR2,-16(%GPR30)	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;13,18
	NOP		;;13,18
	NOP		;;13,18
	NOP		;;13,18
	NOP		;;13,18
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	loadByteUnsigned	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR2,-16(%GPR30)	
	NOP		;;19,21
	NOP		;;19,21
	add	%GPR1,%GPR28,%GPR0	
	NOP		;;21,23
	NOP		;;21,23
	addi	%GPR2,%GPR2,$1	
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	sw	-16(%GPR30),%GPR2	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$2	
	NOP		;;28,32
	NOP		;;28,32
	NOP		;;28,32
	NOP		;;28,32
	sne	%GPR27,%GPR1,%GPR2	
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
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$3	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	j	L62	
	NOP		
	NOP		
	NOP		
	NOP		
L54:
	subi	%GPR1,%GPR30,$12	
	lw	%GPR2,-16(%GPR30)	
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;5,10
	NOP		;;5,10
	NOP		;;5,10
	NOP		;;5,10
	NOP		;;5,10
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	loadByteUnsigned	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR2,-16(%GPR30)	
	add	%GPR1,%GPR28,%GPR0	
	NOP		;;12,15
	NOP		;;12,15
	NOP		;;12,15
	addi	%GPR2,%GPR2,$1	
	subi	%GPR1,%GPR30,$12	
	NOP		;;16,19
	NOP		;;16,19
	NOP		;;16,19
	sw	-16(%GPR30),%GPR2	
	LI	%GPR2, *_bargraphValue	
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	sw	-24(%GPR30),%GPR2	
	lw	%GPR2,-16(%GPR30)	
	NOP		;;25,29
	NOP		;;25,29
	NOP		;;25,29
	NOP		;;25,29
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;29,34
	NOP		;;29,34
	NOP		;;29,34
	NOP		;;29,34
	NOP		;;29,34
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	loadByteUnsigned	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR1,-16(%GPR30)	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	addi	%GPR1,%GPR1,$1	
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	sw	-16(%GPR30),%GPR1	
	lw	%GPR1,-24(%GPR30)	
	NOP		;;44,48
	NOP		;;44,48
	NOP		;;44,48
	NOP		;;44,48
	sw	0(%GPR1),%GPR28	
	j	L47	
	NOP		
	NOP		
	NOP		
L55:
	subi	%GPR1,%GPR30,$12	
	lw	%GPR2,-16(%GPR30)	
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;5,10
	NOP		;;5,10
	NOP		;;5,10
	NOP		;;5,10
	NOP		;;5,10
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	loadByteUnsigned	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR2,-16(%GPR30)	
	NOP		;;11,13
	NOP		;;11,13
	add	%GPR1,%GPR28,%GPR0	
	NOP		;;13,15
	NOP		;;13,15
	addi	%GPR2,%GPR2,$1	
	NOP		;;15,19
	NOP		;;15,19
	NOP		;;15,19
	NOP		;;15,19
	sw	-16(%GPR30),%GPR2	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$65	
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L44	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L56	
	NOP		
	NOP		
	NOP		
	NOP		
L56:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$66	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L52	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L57	
	NOP		
	NOP		
	NOP		
	NOP		
L57:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$72	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L47	
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
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$78	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L49	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L59	
	NOP		
	NOP		
	NOP		
	NOP		
L59:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$84	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L47	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L60	
	NOP		
	NOP		
	NOP		
	NOP		
L60:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$2	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	j	L62	
	NOP		
	NOP		
	NOP		
	NOP		
L61:
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
	j	L62	
	NOP		
	NOP		
	NOP		
	NOP		
L62:
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
L63:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$132	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	subi	%GPR1,%GPR30,$12	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$80	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	NOP		;;7,9
	NOP		;;7,9
	subi	%GPR4,%GPR30,$12	
	sw	-12(%GPR30),%GPR3	
	add	%GPR1,%GPR1,%GPR2	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$80	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$8	
	NOP		;;13,16
	NOP		;;13,16
	NOP		;;13,16
	sw	0(%GPR1),%GPR3	
	add	%GPR1,%GPR4,%GPR5	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1	
	NOP		;;18,20
	NOP		;;18,20
	subi	%GPR3,%GPR30,$24	
	NOP		;;20,22
	NOP		;;20,22
	sw	0(%GPR1),%GPR2	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$130	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$4	
	NOP		;;24,26
	NOP		;;24,26
	subi	%GPR4,%GPR30,$24	
	sw	-24(%GPR30),%GPR2	
	add	%GPR1,%GPR3,%GPR1	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$80	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$8	
	NOP		;;30,33
	NOP		;;30,33
	NOP		;;30,33
	sw	0(%GPR1),%GPR2	
	add	%GPR1,%GPR4,%GPR5	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$1	
	NOP		;;35,37
	NOP		;;35,37
	subi	%GPR2,%GPR30,$36	
	NOP		;;37,39
	NOP		;;37,39
	sw	0(%GPR1),%GPR3	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$130	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$4	
	NOP		;;41,43
	NOP		;;41,43
	subi	%GPR4,%GPR30,$36	
	sw	-36(%GPR30),%GPR3	
	add	%GPR1,%GPR2,%GPR1	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$130	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$8	
	NOP		;;47,50
	NOP		;;47,50
	NOP		;;47,50
	sw	0(%GPR1),%GPR3	
	add	%GPR1,%GPR4,%GPR5	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1	
	NOP		;;52,54
	NOP		;;52,54
	subi	%GPR3,%GPR30,$48	
	NOP		;;54,56
	NOP		;;54,56
	sw	0(%GPR1),%GPR2	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$80	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$4	
	NOP		;;58,60
	NOP		;;58,60
	subi	%GPR4,%GPR30,$48	
	sw	-48(%GPR30),%GPR2	
	add	%GPR1,%GPR3,%GPR1	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$8	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$130	
	NOP		;;64,67
	NOP		;;64,67
	NOP		;;64,67
	add	%GPR4,%GPR4,%GPR5	
	sw	0(%GPR1),%GPR2	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$1	
	NOP		;;69,73
	NOP		;;69,73
	NOP		;;69,73
	NOP		;;69,73
	sw	0(%GPR4),%GPR3	
	subi	%GPR1,%GPR30,$24	
	subi	%GPR6,%GPR30,$12	
	NOP		;;75,77
	NOP		;;75,77
	lw	%GPR2,-12(%GPR30)	
	lw	%GPR3,-24(%GPR30)	
	lw	%GPR4,-36(%GPR30)	
	lw	%GPR5,-48(%GPR30)	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$4	
	add	%GPR2,%GPR2,%GPR3	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$4	
	NOP		;;83,86
	NOP		;;83,86
	NOP		;;83,86
	add	%GPR2,%GPR2,%GPR4	
	add	%GPR1,%GPR1,%GPR3	
	add	%GPR3,%GPR6,%GPR7	
	subi	%GPR4,%GPR30,$36	
	add	%GPR2,%GPR2,%GPR5	
	lhi	%GPR8,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR8,%GPR8,$4	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$4	
	subi	%GPR5,%GPR30,$48	
	srai	%GPR2,%GPR2,$2	
	add	%GPR4,%GPR4,%GPR8	
	NOP		;;95,97
	NOP		;;95,97
	add	%GPR5,%GPR5,%GPR6	
	sw	-60(%GPR30),%GPR2	
	subi	%GPR2,%GPR30,$60	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$4	
	NOP		;;100,102
	NOP		;;100,102
	lw	%GPR3,0(%GPR3)	
	lw	%GPR1,0(%GPR1)	
	lw	%GPR4,0(%GPR4)	
	lw	%GPR5,0(%GPR5)	
	add	%GPR2,%GPR2,%GPR6	
	add	%GPR1,%GPR3,%GPR1	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$8	
	subi	%GPR3,%GPR30,$60	
	NOP		;;109,111
	NOP		;;109,111
	add	%GPR1,%GPR1,%GPR4	
	NOP		;;111,113
	NOP		;;111,113
	add	%GPR3,%GPR3,%GPR7	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$1	
	add	%GPR1,%GPR1,%GPR5	
	NOP		;;115,118
	NOP		;;115,118
	NOP		;;115,118
	subi	%GPR5,%GPR30,$72	
	srai	%GPR1,%GPR1,$2	
	NOP		;;119,121
	NOP		;;119,121
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$160	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$4	
	sw	0(%GPR2),%GPR1	
	subi	%GPR1,%GPR30,$72	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$8	
	NOP		;;125,127
	NOP		;;125,127
	sw	0(%GPR3),%GPR4	
	add	%GPR4,%GPR5,%GPR6	
	NOP		;;128,130
	NOP		;;128,130
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$120	
	sw	-72(%GPR30),%GPR7	
	add	%GPR1,%GPR1,%GPR2	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$1	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$15	
	sw	0(%GPR4),%GPR3	
	NOP		;;135,138
	NOP		;;135,138
	NOP		;;135,138
	sw	-124(%GPR30),%GPR2	
	sw	0(%GPR1),%GPR5	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	d_clear	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;140,151
	NOP		;;140,151
	NOP		;;140,151
	NOP		;;140,151
	NOP		;;140,151
	NOP		;;140,151
	NOP		;;140,151
	NOP		;;140,151
	NOP		;;140,151
	NOP		;;140,151
	NOP		;;140,151
	lhi	%GPR10,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR10,%GPR10,$1	
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$1	
	lhi	%GPR8,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR8,%GPR8,$1	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$15	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$19	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$0	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$20	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$100	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$10	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$10	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	g_makebar	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR4,%GPR30,$48	
	subi	%GPR3,%GPR30,$36	
	subi	%GPR2,%GPR30,$24	
	subi	%GPR1,%GPR30,$12	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	drawRectangle	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR2,%GPR30,$84	
	subi	%GPR1,%GPR30,$12	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	copyPoint	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR2,%GPR30,$96	
	subi	%GPR1,%GPR30,$24	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	copyPoint	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR2,%GPR30,$108	
	subi	%GPR1,%GPR30,$36	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	copyPoint	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR2,%GPR30,$120	
	subi	%GPR1,%GPR30,$48	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	copyPoint	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
L64:
	subi	%GPR2,%GPR30,$60	
	subi	%GPR1,%GPR30,$72	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$5	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	rotate	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;5,7
	NOP		;;5,7
	lw	%GPR1,0(%GPR28)	
	NOP		;;7,9
	NOP		;;7,9
	subi	%GPR4,%GPR30,$60	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	sw	-60(%GPR30),%GPR1	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$4	
	NOP		;;12,14
	NOP		;;12,14
	add	%GPR6,%GPR28,%GPR2	
	subi	%GPR1,%GPR30,$72	
	add	%GPR4,%GPR4,%GPR5	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$5	
	lw	%GPR6,0(%GPR6)	
	subi	%GPR2,%GPR30,$12	
	NOP		;;19,22
	NOP		;;19,22
	NOP		;;19,22
	sw	0(%GPR4),%GPR6	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	rotate	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;23,25
	NOP		;;23,25
	lw	%GPR1,0(%GPR28)	
	NOP		;;25,27
	NOP		;;25,27
	subi	%GPR4,%GPR30,$12	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	sw	-12(%GPR30),%GPR1	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$4	
	NOP		;;30,32
	NOP		;;30,32
	add	%GPR6,%GPR28,%GPR2	
	subi	%GPR1,%GPR30,$72	
	add	%GPR4,%GPR4,%GPR5	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$5	
	lw	%GPR6,0(%GPR6)	
	subi	%GPR2,%GPR30,$24	
	NOP		;;37,40
	NOP		;;37,40
	NOP		;;37,40
	sw	0(%GPR4),%GPR6	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	rotate	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;41,43
	NOP		;;41,43
	lw	%GPR1,0(%GPR28)	
	NOP		;;43,45
	NOP		;;43,45
	subi	%GPR4,%GPR30,$24	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	sw	-24(%GPR30),%GPR1	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$4	
	NOP		;;48,50
	NOP		;;48,50
	add	%GPR6,%GPR28,%GPR2	
	subi	%GPR1,%GPR30,$72	
	add	%GPR4,%GPR4,%GPR5	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$5	
	lw	%GPR6,0(%GPR6)	
	subi	%GPR2,%GPR30,$36	
	NOP		;;55,58
	NOP		;;55,58
	NOP		;;55,58
	sw	0(%GPR4),%GPR6	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	rotate	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;59,61
	NOP		;;59,61
	lw	%GPR1,0(%GPR28)	
	NOP		;;61,63
	NOP		;;61,63
	subi	%GPR4,%GPR30,$36	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	sw	-36(%GPR30),%GPR1	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$4	
	NOP		;;66,68
	NOP		;;66,68
	add	%GPR6,%GPR28,%GPR2	
	subi	%GPR1,%GPR30,$72	
	add	%GPR4,%GPR4,%GPR5	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$5	
	lw	%GPR6,0(%GPR6)	
	subi	%GPR2,%GPR30,$48	
	NOP		;;73,76
	NOP		;;73,76
	NOP		;;73,76
	sw	0(%GPR4),%GPR6	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	rotate	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;77,80
	NOP		;;77,80
	NOP		;;77,80
	lw	%GPR1,0(%GPR28)	
	subi	%GPR3,%GPR30,$48	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	sw	-48(%GPR30),%GPR1	
	subi	%GPR1,%GPR30,$60	
	add	%GPR5,%GPR28,%GPR2	
	add	%GPR3,%GPR3,%GPR4	
	subi	%GPR2,%GPR30,$12	
	NOP		;;88,90
	NOP		;;88,90
	lw	%GPR4,0(%GPR5)	
	NOP		;;90,94
	NOP		;;90,94
	NOP		;;90,94
	NOP		;;90,94
	sw	0(%GPR3),%GPR4	
	lw	%GPR3,-124(%GPR30)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	rotate	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;96,99
	NOP		;;96,99
	NOP		;;96,99
	lw	%GPR1,0(%GPR28)	
	subi	%GPR3,%GPR30,$12	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	sw	-12(%GPR30),%GPR1	
	subi	%GPR1,%GPR30,$60	
	add	%GPR5,%GPR28,%GPR2	
	add	%GPR3,%GPR3,%GPR4	
	subi	%GPR2,%GPR30,$24	
	NOP		;;107,109
	NOP		;;107,109
	lw	%GPR4,0(%GPR5)	
	NOP		;;109,113
	NOP		;;109,113
	NOP		;;109,113
	NOP		;;109,113
	sw	0(%GPR3),%GPR4	
	lw	%GPR3,-124(%GPR30)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	rotate	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;115,118
	NOP		;;115,118
	NOP		;;115,118
	lw	%GPR1,0(%GPR28)	
	subi	%GPR3,%GPR30,$24	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	sw	-24(%GPR30),%GPR1	
	subi	%GPR1,%GPR30,$60	
	add	%GPR5,%GPR28,%GPR2	
	add	%GPR3,%GPR3,%GPR4	
	subi	%GPR2,%GPR30,$36	
	NOP		;;126,128
	NOP		;;126,128
	lw	%GPR4,0(%GPR5)	
	NOP		;;128,132
	NOP		;;128,132
	NOP		;;128,132
	NOP		;;128,132
	sw	0(%GPR3),%GPR4	
	lw	%GPR3,-124(%GPR30)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	rotate	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;134,137
	NOP		;;134,137
	NOP		;;134,137
	lw	%GPR1,0(%GPR28)	
	subi	%GPR3,%GPR30,$36	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	sw	-36(%GPR30),%GPR1	
	subi	%GPR1,%GPR30,$60	
	add	%GPR5,%GPR28,%GPR2	
	add	%GPR3,%GPR3,%GPR4	
	subi	%GPR2,%GPR30,$48	
	NOP		;;145,147
	NOP		;;145,147
	lw	%GPR4,0(%GPR5)	
	NOP		;;147,151
	NOP		;;147,151
	NOP		;;147,151
	NOP		;;147,151
	sw	0(%GPR3),%GPR4	
	lw	%GPR3,-124(%GPR30)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	rotate	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;153,155
	NOP		;;153,155
	lw	%GPR1,0(%GPR28)	
	NOP		;;155,157
	NOP		;;155,157
	subi	%GPR3,%GPR30,$48	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	sw	-48(%GPR30),%GPR1	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	NOP		;;160,162
	NOP		;;160,162
	add	%GPR2,%GPR28,%GPR2	
	NOP		;;162,164
	NOP		;;162,164
	add	%GPR3,%GPR3,%GPR4	
	lhi	%GPR1,$1	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$100000	
	lw	%GPR2,0(%GPR2)	
	NOP		;;166,170
	NOP		;;166,170
	NOP		;;166,170
	NOP		;;166,170
	sw	0(%GPR3),%GPR2	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	wait	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR4,%GPR30,$120	
	subi	%GPR3,%GPR30,$108	
	subi	%GPR2,%GPR30,$96	
	subi	%GPR1,%GPR30,$84	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	overwriteRectangle	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR2,%GPR30,$84	
	subi	%GPR1,%GPR30,$12	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	copyPoint	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR2,%GPR30,$96	
	subi	%GPR1,%GPR30,$24	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	copyPoint	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR2,%GPR30,$108	
	subi	%GPR1,%GPR30,$36	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	copyPoint	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR2,%GPR30,$120	
	subi	%GPR1,%GPR30,$48	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	copyPoint	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR4,%GPR30,$48	
	subi	%GPR3,%GPR30,$36	
	subi	%GPR2,%GPR30,$24	
	subi	%GPR1,%GPR30,$12	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	drawRectangle	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L64	
	NOP		
	NOP		
	NOP		
L65:
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
