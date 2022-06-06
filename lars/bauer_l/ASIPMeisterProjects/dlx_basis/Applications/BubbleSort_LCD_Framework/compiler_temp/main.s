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
L1:
	.data.8	65
	.data.8	114
	.data.8	114
	.data.8	97
	.data.8	121
	.data.8	58
	.space	1
L2:
	.data.8	13
	.data.8	10
	.space	1
L3:
	.data.8	32
	.space	1
L4:
	.data.8	66
	.data.8	117
	.data.8	98
	.data.8	98
	.data.8	108
	.data.8	101
	.data.8	83
	.data.8	111
	.data.8	114
	.data.8	116
	.data.8	58
	.data.8	32
	.data.8	115
	.data.8	111
	.data.8	114
	.data.8	116
	.data.8	105
	.data.8	110
	.data.8	103
	.data.8	46
	.data.8	46
	.data.8	46
	.data.8	13
	.data.8	10
	.space	1
L5:
	.data.8	65
	.data.8	114
	.data.8	114
	.data.8	97
	.data.8	121
	.data.8	32
	.data.8	83
	.data.8	111
	.data.8	114
	.data.8	116
	.data.8	101
	.data.8	100
	.data.8	58
	.data.8	32
	.space	1
L6:
	.data.8	78
	.data.8	79
	.data.8	33
	.data.8	33
	.data.8	32
	.data.8	32
	.data.8	32
	.data.8	69
	.data.8	82
	.data.8	82
	.data.8	79
	.data.8	82
	.data.8	33
	.data.8	33
	.space	1
L7:
	.data.8	89
	.data.8	69
	.data.8	83
	.space	1
L8:
	.data.8	13
	.data.8	10
	.data.8	78
	.data.8	117
	.data.8	109
	.data.8	98
	.data.8	101
	.data.8	114
	.data.8	32
	.data.8	111
	.data.8	102
	.data.8	32
	.data.8	99
	.data.8	121
	.data.8	99
	.data.8	108
	.data.8	101
	.data.8	115
	.data.8	32
	.data.8	110
	.data.8	101
	.data.8	101
	.data.8	100
	.data.8	101
	.data.8	100
	.data.8	58
	.data.8	32
	.space	1
	.section	.text
printArray:
L9:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$52	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;1,3
	NOP		;;1,3
	LI	%GPR1, *L1	
	NOP		;;3,6
	NOP		;;3,6
	NOP		;;3,6
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1	
	NOP		;;6,10
	NOP		;;6,10
	NOP		;;6,10
	NOP		;;6,10
	sw	-36(%GPR30),%GPR2	
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
	NOP		;;11,16
	NOP		;;11,16
	NOP		;;11,16
	NOP		;;11,16
	NOP		;;11,16
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sw	-40(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
L10:
	lw	%GPR1,-40(%GPR30)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	andi	%GPR1,%GPR1,$7	
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
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L11	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L12	
	NOP		
	NOP		
	NOP		
	NOP		
L11:
	LI	%GPR1, *L2	
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
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
	NOP		
	NOP		
	NOP		
L12:
	LI	%GPR2, *_array	
	lw	%GPR1,-40(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	add	%GPR3,%GPR2,%GPR0	
	slli	%GPR1,%GPR1,$2	
	sw	-44(%GPR30),%GPR2	
	subi	%GPR2,%GPR30,$32	
	NOP		;;7,9
	NOP		;;7,9
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	lw	%GPR1,0(%GPR1)	
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
	subi	%GPR1,%GPR30,$32	
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
	NOP		;;21,26
	NOP		;;21,26
	NOP		;;21,26
	NOP		;;21,26
	NOP		;;21,26
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
	NOP		;;26,28
	NOP		;;26,28
	lw	%GPR2,-40(%GPR30)	
	NOP		;;28,31
	NOP		;;28,31
	NOP		;;28,31
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;31,35
	NOP		;;31,35
	NOP		;;31,35
	NOP		;;31,35
	sgt	%GPR27,%GPR2,%GPR1	
	bnez	%GPR27,L13	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L17	
	NOP		
	NOP		
	NOP		
	NOP		
L13:
	lw	%GPR1,-40(%GPR30)	
	lw	%GPR3,-44(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	slli	%GPR1,%GPR1,$2	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR2,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$-4	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	lw	%GPR3,0(%GPR1)	
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	lw	%GPR1,0(%GPR1)	
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	sleu	%GPR27,%GPR1,%GPR3	
	bnez	%GPR27,L14	
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
	j	L16	
	NOP		
	NOP		
	NOP		
L15:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		
	NOP		
	NOP		
L16:
	lw	%GPR2,-36(%GPR30)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	and	%GPR1,%GPR2,%GPR1	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sw	-36(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
L17:
	lw	%GPR1,-40(%GPR30)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	addi	%GPR1,%GPR1,$1	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	add	%GPR2,%GPR1,%GPR0	
	sw	-40(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$20	
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	slt	%GPR27,%GPR2,%GPR1	
	bnez	%GPR27,L10	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L18	
	NOP		
	NOP		
	NOP		
	NOP		
L18:
	LI	%GPR1, *L2	
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
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
	lw	%GPR28,-36(%GPR30)	
	NOP		;;6,10
	NOP		;;6,10
	NOP		;;6,10
	NOP		;;6,10
	j	L19	
	NOP		
	NOP		
	NOP		
	NOP		
L19:
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
bubbleSort:
L20:
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
	add	%GPR3,%GPR1,%GPR0	
	j	L22	
	NOP		
	NOP		
	NOP		
L21:
	addui	%GPR3,%GPR3,$1	
	NOP		
	NOP		
	NOP		
L22:
	sltu	%GPR27,%GPR3,%GPR2	
	bnez	%GPR27,L23	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L28	
	NOP		
	NOP		
	NOP		
	NOP		
L23:
	add	%GPR4,%GPR1,%GPR0	
	NOP		
	NOP		
	NOP		
L24:
	subu	%GPR5,%GPR2,%GPR3	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	sltu	%GPR27,%GPR4,%GPR5	
	bnez	%GPR27,L25	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L21	
	NOP		
	NOP		
	NOP		
	NOP		
L25:
	LI	%GPR5, *_array	
	slli	%GPR6,%GPR4,$2	
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	add	%GPR8,%GPR5,%GPR6	
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$4	
	NOP		;;6,9
	NOP		;;6,9
	NOP		;;6,9
	lw	%GPR7,0(%GPR8)	
	add	%GPR6,%GPR8,%GPR9	
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	lw	%GPR5,0(%GPR6)	
	NOP		;;14,18
	NOP		;;14,18
	NOP		;;14,18
	NOP		;;14,18
	sltu	%GPR27,%GPR5,%GPR7	
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
	sw	0(%GPR8),%GPR5	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	sw	0(%GPR6),%GPR7	
	NOP		
	NOP		
	NOP		
L27:
	addui	%GPR4,%GPR4,$1	
	j	L24	
	NOP		
	NOP		
	NOP		
L28:
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
L29:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$92	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *L4	
	NOP		;;2,7
	NOP		;;2,7
	NOP		;;2,7
	NOP		;;2,7
	NOP		;;2,7
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
		

	lhi	%GPR1,$0x100
	nop
	nop
	nop
	lw	%GPR1, 0(%GPR1)
	nop
	nop
	nop
	
	NOP		;;8,10
	NOP		;;8,10
	sw	-68(%GPR30),%GPR1	
	NOP		;;10,13
	NOP		;;10,13
	NOP		;;10,13
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	j	L44	
	NOP		
	NOP		
	NOP		
L30:
		

	lhi	%GPR1,$0x100
	nop
	nop
	nop
	lw	%GPR1, 0(%GPR1)
	nop
	nop
	nop
	
	NOP		;;0,2
	NOP		;;0,2
	sw	-72(%GPR30),%GPR1	
	LI	%GPR1, *L1	
	NOP		;;3,5
	NOP		;;3,5
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	sw	-76(%GPR30),%GPR2	
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
	NOP		;;10,15
	NOP		;;10,15
	NOP		;;10,15
	NOP		;;10,15
	NOP		;;10,15
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;15,19
	NOP		;;15,19
	NOP		;;15,19
	NOP		;;15,19
	sw	-80(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
L31:
	lw	%GPR1,-80(%GPR30)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	andi	%GPR1,%GPR1,$7	
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
	seq	%GPR27,%GPR1,%GPR2	
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
	LI	%GPR1, *L2	
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
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
	NOP		
	NOP		
	NOP		
L33:
	LI	%GPR2, *_array	
	lw	%GPR1,-80(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	add	%GPR3,%GPR2,%GPR0	
	slli	%GPR1,%GPR1,$2	
	sw	-84(%GPR30),%GPR2	
	subi	%GPR2,%GPR30,$64	
	NOP		;;7,9
	NOP		;;7,9
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	lw	%GPR1,0(%GPR1)	
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
	subi	%GPR1,%GPR30,$64	
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
	NOP		;;21,26
	NOP		;;21,26
	NOP		;;21,26
	NOP		;;21,26
	NOP		;;21,26
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
	NOP		;;26,28
	NOP		;;26,28
	lw	%GPR2,-80(%GPR30)	
	NOP		;;28,31
	NOP		;;28,31
	NOP		;;28,31
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;31,35
	NOP		;;31,35
	NOP		;;31,35
	NOP		;;31,35
	sgt	%GPR27,%GPR2,%GPR1	
	bnez	%GPR27,L34	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L38	
	NOP		
	NOP		
	NOP		
	NOP		
L34:
	lw	%GPR1,-80(%GPR30)	
	lw	%GPR3,-84(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	slli	%GPR1,%GPR1,$2	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR2,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$-4	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	lw	%GPR3,0(%GPR1)	
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	lw	%GPR1,0(%GPR1)	
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	sleu	%GPR27,%GPR1,%GPR3	
	bnez	%GPR27,L35	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L36	
	NOP		
	NOP		
	NOP		
	NOP		
L35:
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
	j	L37	
	NOP		
	NOP		
	NOP		
L36:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		
	NOP		
	NOP		
L37:
	lw	%GPR2,-76(%GPR30)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	and	%GPR1,%GPR2,%GPR1	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sw	-76(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
L38:
	lw	%GPR1,-80(%GPR30)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	addi	%GPR1,%GPR1,$1	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	add	%GPR2,%GPR1,%GPR0	
	sw	-80(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$20	
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	slt	%GPR27,%GPR2,%GPR1	
	bnez	%GPR27,L31	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L39	
	NOP		
	NOP		
	NOP		
	NOP		
L39:
	LI	%GPR1, *L2	
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
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
	LI	%GPR1, *L5	
	NOP		;;6,11
	NOP		;;6,11
	NOP		;;6,11
	NOP		;;6,11
	NOP		;;6,11
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
	NOP		;;11,13
	NOP		;;11,13
	lw	%GPR2,-76(%GPR30)	
	NOP		;;13,16
	NOP		;;13,16
	NOP		;;13,16
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	seq	%GPR27,%GPR2,%GPR1	
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
	LI	%GPR1, *L6	
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
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
	j	L42	
	NOP		
	NOP		
	NOP		
L41:
	LI	%GPR1, *L7	
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
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
	NOP		
	NOP		
	NOP		
L42:
	LI	%GPR1, *L8	
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
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
	lw	%GPR2,-68(%GPR30)	
	lw	%GPR1,-72(%GPR30)	
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	sub	%GPR1,%GPR1,%GPR2	
	subi	%GPR2,%GPR30,$32	
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
	subi	%GPR1,%GPR30,$32	
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
	LI	%GPR1, *L2	
	NOP		;;16,21
	NOP		;;16,21
	NOP		;;16,21
	NOP		;;16,21
	NOP		;;16,21
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
	NOP		;;21,26
	NOP		;;21,26
	NOP		;;21,26
	NOP		;;21,26
	NOP		;;21,26
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		;;26,30
	NOP		;;26,30
	NOP		;;26,30
	NOP		;;26,30
	j	L49	
	NOP		
	NOP		
	NOP		
	NOP		
L43:
	addui	%GPR1,%GPR1,$1	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$19	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sltu	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L44	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L30	
	NOP		
	NOP		
	NOP		
	NOP		
L44:
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
L45:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$19	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	subu	%GPR3,%GPR3,%GPR1	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	sltu	%GPR27,%GPR2,%GPR3	
	bnez	%GPR27,L46	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L43	
	NOP		
	NOP		
	NOP		
	NOP		
L46:
	LI	%GPR3, *_array	
	slli	%GPR4,%GPR2,$2	
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	add	%GPR6,%GPR3,%GPR4	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$4	
	NOP		;;6,9
	NOP		;;6,9
	NOP		;;6,9
	lw	%GPR5,0(%GPR6)	
	add	%GPR4,%GPR6,%GPR7	
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	lw	%GPR3,0(%GPR4)	
	NOP		;;14,18
	NOP		;;14,18
	NOP		;;14,18
	NOP		;;14,18
	sltu	%GPR27,%GPR3,%GPR5	
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
	sw	0(%GPR6),%GPR3	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	sw	0(%GPR4),%GPR5	
	NOP		
	NOP		
	NOP		
L48:
	addui	%GPR2,%GPR2,$1	
	j	L45	
	NOP		
	NOP		
	NOP		
L49:
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
