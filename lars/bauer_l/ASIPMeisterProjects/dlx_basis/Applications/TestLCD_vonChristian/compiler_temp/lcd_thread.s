	.section	.data
	;.global	_switches
	.align	4
_switches:
	.space	1024
	;.global	_bars
	.align	4
_bars:
	.space	128
	;.global	_activebars
	.align	4
_activebars:
	.space	4
	;.global	_activeswitches
	.align	4
_activeswitches:
	.space	4
L1:
	.data.8	32
	.data.8	32
	.data.8	32
	.space	1
	.space	1
L2:
	.data.8	65
	.space	1
L3:
	.data.8	78
	.space	1
L4:
	.data.8	66
	.space	1
L5:
	.data.8	85
	.data.8	67
	.data.8	77
	.data.8	101
	.data.8	110
	.data.8	117
	.data.8	49
	.data.8	124
	.data.8	32
	.data.8	84
	.data.8	101
	.data.8	115
	.data.8	116
	.data.8	32
	.data.8	49
	.data.8	32
	.data.8	124
	.data.8	32
	.data.8	84
	.data.8	101
	.data.8	115
	.data.8	116
	.data.8	32
	.data.8	50
	.data.8	32
	.data.8	124
	.data.8	32
	.data.8	84
	.data.8	101
	.data.8	115
	.data.8	116
	.data.8	32
	.data.8	51
	.data.8	32
	.space	1
	.space	1
L6:
	.data.8	85
	.data.8	67
	.data.8	77
	.data.8	101
	.data.8	110
	.data.8	117
	.data.8	50
	.data.8	124
	.data.8	32
	.data.8	84
	.data.8	101
	.data.8	115
	.data.8	116
	.data.8	32
	.data.8	52
	.data.8	32
	.data.8	124
	.data.8	32
	.data.8	84
	.data.8	101
	.data.8	115
	.data.8	116
	.data.8	32
	.data.8	53
	.data.8	32
	.data.8	124
	.data.8	32
	.data.8	84
	.data.8	101
	.data.8	115
	.data.8	116
	.data.8	32
	.data.8	54
	.data.8	32
	.space	1
	.space	1
L7:
	.data.8	32
	.data.8	32
	.data.8	32
	.space	1
	.space	1
L8:
	.data.8	84
	.data.8	101
	.data.8	115
	.data.8	116
	.data.8	32
	.space	1
L9:
	.data.8	84
	.data.8	101
	.data.8	115
	.data.8	116
	.data.8	32
	.space	1
	.section	.text
poll_display:
L10:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$36	
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
L11:
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
	NOP		;;0,2
	NOP		;;0,2
	add	%GPR2,%GPR28,%GPR0	
	sw	-20(%GPR30),%GPR28	
	NOP		;;3,5
	NOP		;;3,5
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$3	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	sgt	%GPR27,%GPR2,%GPR1	
	bnez	%GPR27,L12	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L47	
	NOP		
	NOP		
	NOP		
	NOP		
L12:
	subi	%GPR2,%GPR30,$12	
	lw	%GPR1,-20(%GPR30)	
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
	LI	%GPR1, *L1	
	NOP		;;3,8
	NOP		;;3,8
	NOP		;;3,8
	NOP		;;3,8
	NOP		;;3,8
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
	ori	%GPR2,%GPR2,$8	
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
	NOP		;;10,13
	NOP		;;10,13
	NOP		;;10,13
	subi	%GPR1,%GPR30,$12	
	NOP		;;13,15
	NOP		;;13,15
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
	ori	%GPR2,%GPR2,$8	
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
	lw	%GPR2,-20(%GPR30)	
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
	lw	%GPR1,-20(%GPR30)	
	add	%GPR2,%GPR28,%GPR0	
	sw	-24(%GPR30),%GPR28	
	NOP		;;23,26
	NOP		;;23,26
	NOP		;;23,26
	sne	%GPR27,%GPR2,%GPR1	
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
	lw	%GPR28,-24(%GPR30)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	j	L48	
	NOP		
	NOP		
	NOP		
	NOP		
L14:
	lw	%GPR1,-16(%GPR30)	
	lw	%GPR2,-20(%GPR30)	
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	slt	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L15	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L46	
	NOP		
	NOP		
	NOP		
	NOP		
L15:
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
	lw	%GPR1,-16(%GPR30)	
	NOP		;;11,13
	NOP		;;11,13
	add	%GPR2,%GPR28,%GPR0	
	NOP		;;13,15
	NOP		;;13,15
	addi	%GPR1,%GPR1,$1	
	NOP		;;15,19
	NOP		;;15,19
	NOP		;;15,19
	NOP		;;15,19
	sw	-16(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$27	
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	sne	%GPR27,%GPR2,%GPR1	
	bnez	%GPR27,L16	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L40	
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
	ori	%GPR28,%GPR28,$1	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	j	L48	
	NOP		
	NOP		
	NOP		
	NOP		
L17:
	LI	%GPR1, *L2	
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
	lw	%GPR1,-16(%GPR30)	
	NOP		;;19,21
	NOP		;;19,21
	add	%GPR2,%GPR28,%GPR0	
	NOP		;;21,23
	NOP		;;21,23
	addi	%GPR1,%GPR1,$1	
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	sw	-16(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$1	
	NOP		;;28,32
	NOP		;;28,32
	NOP		;;28,32
	NOP		;;28,32
	sne	%GPR27,%GPR2,%GPR1	
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
	j	L48	
	NOP		
	NOP		
	NOP		
	NOP		
L19:
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
	add	%GPR2,%GPR28,%GPR0	
	NOP		;;11,13
	NOP		;;11,13
	lw	%GPR3,-16(%GPR30)	
	LI	%GPR1, *_switches	
	subi	%GPR2,%GPR2,$1	
	NOP		;;15,17
	NOP		;;15,17
	addi	%GPR3,%GPR3,$1	
	NOP		;;17,19
	NOP		;;17,19
	add	%GPR4,%GPR2,%GPR0	
	sw	-24(%GPR30),%GPR2	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$16	
	sw	-16(%GPR30),%GPR3	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$1	
	NOP		;;23,25
	NOP		;;23,25
	mult	%GPR2,%GPR4,%GPR2	
	NOP		;;25,29
	NOP		;;25,29
	NOP		;;25,29
	NOP		;;25,29
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;29,33
	NOP		;;29,33
	NOP		;;29,33
	NOP		;;29,33
	lw	%GPR1,0(%GPR1)	
	NOP		;;33,37
	NOP		;;33,37
	NOP		;;33,37
	NOP		;;33,37
	seq	%GPR27,%GPR1,%GPR3	
	bnez	%GPR27,L20	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L24	
	NOP		
	NOP		
	NOP		
	NOP		
L20:
	lw	%GPR4,-24(%GPR30)	
	LI	%GPR1, *_switches	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$16	
	NOP		;;4,7
	NOP		;;4,7
	NOP		;;4,7
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	mult	%GPR2,%GPR4,%GPR2	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	sw	0(%GPR1),%GPR3	
	NOP		
	NOP		
	NOP		
L21:
	lw	%GPR3,-16(%GPR30)	
	lw	%GPR5,-24(%GPR30)	
	LI	%GPR1, *_switches	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$16	
	addi	%GPR3,%GPR3,$1	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	mult	%GPR2,%GPR5,%GPR2	
	sw	-16(%GPR30),%GPR3	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$8	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$1	
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	add	%GPR1,%GPR1,%GPR3	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sw	0(%GPR1),%GPR4	
	NOP		
	NOP		
	NOP		
L22:
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
	bnez	%GPR27,L23	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L14	
	NOP		
	NOP		
	NOP		
	NOP		
L23:
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
	j	L48	
	NOP		
	NOP		
	NOP		
	NOP		
L24:
	lw	%GPR4,-24(%GPR30)	
	LI	%GPR1, *_switches	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$16	
	NOP		;;4,7
	NOP		;;4,7
	NOP		;;4,7
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	mult	%GPR2,%GPR4,%GPR2	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	lw	%GPR1,0(%GPR1)	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	seq	%GPR27,%GPR1,%GPR3	
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
	lw	%GPR4,-24(%GPR30)	
	LI	%GPR1, *_switches	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$16	
	NOP		;;4,7
	NOP		;;4,7
	NOP		;;4,7
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$1	
	mult	%GPR2,%GPR4,%GPR2	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	sw	0(%GPR1),%GPR3	
	j	L21	
	NOP		
	NOP		
	NOP		
L26:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$4	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	j	L48	
	NOP		
	NOP		
	NOP		
	NOP		
L27:
	LI	%GPR1, *L3	
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
	lw	%GPR1,-16(%GPR30)	
	NOP		;;19,21
	NOP		;;19,21
	add	%GPR2,%GPR28,%GPR0	
	NOP		;;21,23
	NOP		;;21,23
	addi	%GPR1,%GPR1,$1	
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	sw	-16(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$1	
	NOP		;;28,32
	NOP		;;28,32
	NOP		;;28,32
	NOP		;;28,32
	sne	%GPR27,%GPR2,%GPR1	
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
	j	L48	
	NOP		
	NOP		
	NOP		
	NOP		
L29:
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
	lw	%GPR4,-16(%GPR30)	
	NOP		;;12,14
	NOP		;;12,14
	LI	%GPR2, *_switches	
	subi	%GPR1,%GPR1,$1	
	addi	%GPR4,%GPR4,$1	
	NOP		;;16,19
	NOP		;;16,19
	NOP		;;16,19
	sw	-24(%GPR30),%GPR1	
	sw	-16(%GPR30),%GPR4	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$16	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$1	
	lw	%GPR4,-24(%GPR30)	
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	mult	%GPR4,%GPR4,%GPR1	
	NOP		;;27,31
	NOP		;;27,31
	NOP		;;27,31
	NOP		;;27,31
	add	%GPR2,%GPR2,%GPR4	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;32,35
	NOP		;;32,35
	NOP		;;32,35
	sw	0(%GPR2),%GPR3	
	NOP		
	NOP		
	NOP		
L30:
	LI	%GPR2, *_activeswitches	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lw	%GPR2,0(%GPR2)	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sle	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L31	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L36	
	NOP		
	NOP		
	NOP		
	NOP		
L31:
	NOP		;;0,2
	NOP		;;0,2
	lw	%GPR6,-24(%GPR30)	
	LI	%GPR2, *_switches	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$16	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$16	
	NOP		;;5,7
	NOP		;;5,7
	LI	%GPR5, *_switches	
	mult	%GPR3,%GPR1,%GPR3	
	mult	%GPR4,%GPR6,%GPR4	
	NOP		;;9,12
	NOP		;;9,12
	NOP		;;9,12
	add	%GPR2,%GPR2,%GPR3	
	add	%GPR3,%GPR5,%GPR4	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$12	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$12	
	NOP		;;15,18
	NOP		;;15,18
	NOP		;;15,18
	add	%GPR2,%GPR2,%GPR6	
	add	%GPR3,%GPR3,%GPR7	
	NOP		;;19,22
	NOP		;;19,22
	NOP		;;19,22
	lw	%GPR2,0(%GPR2)	
	lw	%GPR3,0(%GPR3)	
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	seq	%GPR27,%GPR2,%GPR3	
	bnez	%GPR27,L32	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L34	
	NOP		
	NOP		
	NOP		
	NOP		
L32:
	lw	%GPR2,-24(%GPR30)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	sne	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L33	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L34	
	NOP		
	NOP		
	NOP		
	NOP		
L33:
	NOP		;;0,2
	NOP		;;0,2
	LI	%GPR2, *_switches	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$16	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$16	
	LI	%GPR5, *_switches	
	NOP		;;6,8
	NOP		;;6,8
	mult	%GPR3,%GPR1,%GPR3	
	mult	%GPR4,%GPR1,%GPR4	
	NOP		;;9,11
	NOP		;;9,11
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$0	
	add	%GPR2,%GPR2,%GPR3	
	add	%GPR3,%GPR5,%GPR4	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$8	
	NOP		;;14,16
	NOP		;;14,16
	sw	0(%GPR2),%GPR6	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$1	
	add	%GPR3,%GPR3,%GPR7	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1	
	NOP		;;19,22
	NOP		;;19,22
	NOP		;;19,22
	sw	0(%GPR3),%GPR4	
	j	L35	
	NOP		
	NOP		
	NOP		
L34:
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
L35:
	addi	%GPR1,%GPR1,$1	
	j	L30	
	NOP		
	NOP		
	NOP		
L36:
	lw	%GPR3,-16(%GPR30)	
	lw	%GPR5,-24(%GPR30)	
	LI	%GPR1, *_switches	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$16	
	addi	%GPR3,%GPR3,$1	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	mult	%GPR2,%GPR5,%GPR2	
	sw	-16(%GPR30),%GPR3	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$8	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$1	
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	add	%GPR1,%GPR1,%GPR3	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sw	0(%GPR1),%GPR4	
	j	L22	
	NOP		
	NOP		
	NOP		
L37:
	LI	%GPR1, *L4	
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
	lw	%GPR1,-16(%GPR30)	
	NOP		;;19,21
	NOP		;;19,21
	add	%GPR2,%GPR28,%GPR0	
	NOP		;;21,23
	NOP		;;21,23
	addi	%GPR1,%GPR1,$1	
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	sw	-16(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$2	
	NOP		;;28,32
	NOP		;;28,32
	NOP		;;28,32
	NOP		;;28,32
	sne	%GPR27,%GPR2,%GPR1	
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
	j	L48	
	NOP		
	NOP		
	NOP		
	NOP		
L39:
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
	subi	%GPR1,%GPR30,$12	
	add	%GPR4,%GPR28,%GPR0	
	NOP		;;13,15
	NOP		;;13,15
	addi	%GPR2,%GPR2,$1	
	NOP		;;15,17
	NOP		;;15,17
	subi	%GPR4,%GPR4,$1	
	NOP		;;17,19
	NOP		;;17,19
	add	%GPR3,%GPR2,%GPR0	
	sw	-16(%GPR30),%GPR2	
	LI	%GPR2, *_bars	
	sw	-24(%GPR30),%GPR4	
	add	%GPR1,%GPR1,%GPR3	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$8	
	NOP		;;24,28
	NOP		;;24,28
	NOP		;;24,28
	NOP		;;24,28
	mult	%GPR3,%GPR4,%GPR3	
	NOP		;;28,32
	NOP		;;28,32
	NOP		;;28,32
	NOP		;;28,32
	add	%GPR2,%GPR2,%GPR3	
	NOP		;;32,36
	NOP		;;32,36
	NOP		;;32,36
	NOP		;;32,36
	sw	-28(%GPR30),%GPR2	
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
	lw	%GPR4,-28(%GPR30)	
	add	%GPR5,%GPR28,%GPR0	
	NOP		;;39,41
	NOP		;;39,41
	LI	%GPR1, *_bars	
	NOP		;;41,43
	NOP		;;41,43
	sw	0(%GPR4),%GPR5	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$8	
	lw	%GPR5,-24(%GPR30)	
	NOP		;;45,47
	NOP		;;45,47
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$4	
	NOP		;;47,49
	NOP		;;47,49
	mult	%GPR2,%GPR5,%GPR2	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$1	
	NOP		;;50,53
	NOP		;;50,53
	NOP		;;50,53
	lw	%GPR5,-16(%GPR30)	
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;54,57
	NOP		;;54,57
	NOP		;;54,57
	addi	%GPR5,%GPR5,$1	
	add	%GPR1,%GPR1,%GPR3	
	NOP		;;58,61
	NOP		;;58,61
	NOP		;;58,61
	sw	-16(%GPR30),%GPR5	
	sw	0(%GPR1),%GPR4	
	j	L22	
	NOP		
	NOP		
	NOP		
L40:
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
	bnez	%GPR27,L17	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L41	
	NOP		
	NOP		
	NOP		
	NOP		
L41:
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
	bnez	%GPR27,L37	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L42	
	NOP		
	NOP		
	NOP		
	NOP		
L42:
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
	bnez	%GPR27,L22	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L43	
	NOP		
	NOP		
	NOP		
	NOP		
L43:
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
	bnez	%GPR27,L22	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L45	
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
	ori	%GPR28,%GPR28,$2	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	j	L48	
	NOP		
	NOP		
	NOP		
	NOP		
L46:
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
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sw	-16(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
L47:
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	switchThread	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L11	
	NOP		
	NOP		
	NOP		
L48:
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
test_poll:
L49:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$24	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *L5	
	NOP		;;2,8
	NOP		;;2,8
	NOP		;;2,8
	NOP		;;2,8
	NOP		;;2,8
	NOP		;;2,8
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$40	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$140	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$20	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$90	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	create_menu_switch	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *L6	
	NOP		;;13,19
	NOP		;;13,19
	NOP		;;13,19
	NOP		;;13,19
	NOP		;;13,19
	NOP		;;13,19
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$40	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$210	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$20	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$160	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	create_menu_switch	
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
L50:
	LI	%GPR1, *_switches	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$120	
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
	lw	%GPR1,0(%GPR1)	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	seq	%GPR27,%GPR1,%GPR3	
	bnez	%GPR27,L51	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L52	
	NOP		
	NOP		
	NOP		
	NOP		
L51:
	LI	%GPR1, *_switches	
	subi	%GPR2,%GPR30,$12	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$48	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	add	%GPR1,%GPR1,%GPR3	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
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
	LI	%GPR1, *L7	
	NOP		;;14,19
	NOP		;;14,19
	NOP		;;14,19
	NOP		;;14,19
	NOP		;;14,19
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$60	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$42	
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
	NOP		;;21,24
	NOP		;;21,24
	NOP		;;21,24
	subi	%GPR1,%GPR30,$12	
	NOP		;;24,26
	NOP		;;24,26
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$60	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$42	
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
	NOP		;;28,30
	NOP		;;28,30
	LI	%GPR1, *_switches	
	NOP		;;30,33
	NOP		;;30,33
	NOP		;;30,33
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$56	
	NOP		;;33,35
	NOP		;;33,35
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		;;35,37
	NOP		;;35,37
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;37,41
	NOP		;;37,41
	NOP		;;37,41
	NOP		;;37,41
	sw	0(%GPR1),%GPR3	
	NOP		
	NOP		
	NOP		
L52:
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
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sw	-16(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
L53:
	LI	%GPR1, *_activeswitches	
	lw	%GPR2,-16(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lw	%GPR1,0(%GPR1)	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sle	%GPR27,%GPR2,%GPR1	
	bnez	%GPR27,L54	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L61	
	NOP		
	NOP		
	NOP		
	NOP		
L54:
	lw	%GPR5,-16(%GPR30)	
	LI	%GPR1, *_switches	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$16	
	NOP		;;4,7
	NOP		;;4,7
	NOP		;;4,7
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$8	
	mult	%GPR2,%GPR5,%GPR2	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$1	
	NOP		;;9,12
	NOP		;;9,12
	NOP		;;9,12
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	add	%GPR1,%GPR1,%GPR3	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	lw	%GPR1,0(%GPR1)	
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	seq	%GPR27,%GPR1,%GPR4	
	bnez	%GPR27,L55	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L60	
	NOP		
	NOP		
	NOP		
	NOP		
L55:
	lw	%GPR5,-16(%GPR30)	
	LI	%GPR1, *_switches	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$16	
	NOP		;;4,7
	NOP		;;4,7
	NOP		;;4,7
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$12	
	mult	%GPR2,%GPR5,%GPR2	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$1	
	NOP		;;9,12
	NOP		;;9,12
	NOP		;;9,12
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	add	%GPR1,%GPR1,%GPR3	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	lw	%GPR1,0(%GPR1)	
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	seq	%GPR27,%GPR1,%GPR4	
	bnez	%GPR27,L56	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L60	
	NOP		
	NOP		
	NOP		
	NOP		
L56:
	NOP		;;0,2
	NOP		;;0,2
	LI	%GPR2, *_switches	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$1	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$16	
	NOP		;;5,7
	NOP		;;5,7
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$1	
	lw	%GPR1,-16(%GPR30)	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	mult	%GPR1,%GPR1,%GPR3	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	add	%GPR1,%GPR2,%GPR1	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	lw	%GPR1,0(%GPR1)	
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	seq	%GPR27,%GPR1,%GPR4	
	bnez	%GPR27,L57	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L58	
	NOP		
	NOP		
	NOP		
	NOP		
L57:
	LI	%GPR1, *L8	
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
	ori	%GPR3,%GPR3,$0	
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
	lw	%GPR1,-16(%GPR30)	
	subi	%GPR2,%GPR30,$12	
	NOP		;;9,12
	NOP		;;9,12
	NOP		;;9,12
	addi	%GPR1,%GPR1,$1	
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
	NOP		;;13,16
	NOP		;;13,16
	NOP		;;13,16
	subi	%GPR1,%GPR30,$12	
	NOP		;;16,18
	NOP		;;16,18
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
	NOP		
	NOP		
	NOP		
L58:
	lw	%GPR5,-16(%GPR30)	
	LI	%GPR1, *_switches	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$16	
	NOP		;;4,7
	NOP		;;4,7
	NOP		;;4,7
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$8	
	mult	%GPR2,%GPR5,%GPR2	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	NOP		;;9,12
	NOP		;;9,12
	NOP		;;9,12
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	add	%GPR1,%GPR1,%GPR3	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sw	0(%GPR1),%GPR4	
	NOP		
	NOP		
	NOP		
L59:
	lw	%GPR1,-16(%GPR30)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	addi	%GPR1,%GPR1,$1	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sw	-16(%GPR30),%GPR1	
	j	L53	
	NOP		
	NOP		
	NOP		
L60:
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
	j	L59	
	NOP		
	NOP		
	NOP		
L61:
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
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sw	-16(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
L62:
	LI	%GPR1, *_activeswitches	
	lw	%GPR2,-16(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lw	%GPR1,0(%GPR1)	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sle	%GPR27,%GPR2,%GPR1	
	bnez	%GPR27,L63	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L70	
	NOP		
	NOP		
	NOP		
	NOP		
L63:
	lw	%GPR5,-16(%GPR30)	
	LI	%GPR1, *_switches	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$16	
	NOP		;;4,7
	NOP		;;4,7
	NOP		;;4,7
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$8	
	mult	%GPR2,%GPR5,%GPR2	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$1	
	NOP		;;9,12
	NOP		;;9,12
	NOP		;;9,12
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	add	%GPR1,%GPR1,%GPR3	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	lw	%GPR1,0(%GPR1)	
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	seq	%GPR27,%GPR1,%GPR4	
	bnez	%GPR27,L64	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L69	
	NOP		
	NOP		
	NOP		
	NOP		
L64:
	lw	%GPR5,-16(%GPR30)	
	LI	%GPR1, *_switches	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$16	
	NOP		;;4,7
	NOP		;;4,7
	NOP		;;4,7
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$12	
	mult	%GPR2,%GPR5,%GPR2	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$2	
	NOP		;;9,12
	NOP		;;9,12
	NOP		;;9,12
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	add	%GPR1,%GPR1,%GPR3	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	lw	%GPR1,0(%GPR1)	
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	seq	%GPR27,%GPR1,%GPR4	
	bnez	%GPR27,L65	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L69	
	NOP		
	NOP		
	NOP		
	NOP		
L65:
	NOP		;;0,2
	NOP		;;0,2
	LI	%GPR2, *_switches	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$1	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$16	
	NOP		;;5,7
	NOP		;;5,7
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$1	
	lw	%GPR1,-16(%GPR30)	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	mult	%GPR1,%GPR1,%GPR3	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	add	%GPR1,%GPR2,%GPR1	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	lw	%GPR1,0(%GPR1)	
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	seq	%GPR27,%GPR1,%GPR4	
	bnez	%GPR27,L66	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L67	
	NOP		
	NOP		
	NOP		
	NOP		
L66:
	LI	%GPR1, *L9	
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
	ori	%GPR3,%GPR3,$0	
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
	lw	%GPR1,-16(%GPR30)	
	subi	%GPR2,%GPR30,$12	
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
	NOP		;;10,13
	NOP		;;10,13
	NOP		;;10,13
	subi	%GPR1,%GPR30,$12	
	NOP		;;13,15
	NOP		;;13,15
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
	NOP		
	NOP		
	NOP		
L67:
	lw	%GPR5,-16(%GPR30)	
	LI	%GPR1, *_switches	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$16	
	NOP		;;4,7
	NOP		;;4,7
	NOP		;;4,7
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$8	
	mult	%GPR2,%GPR5,%GPR2	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	NOP		;;9,12
	NOP		;;9,12
	NOP		;;9,12
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	add	%GPR1,%GPR1,%GPR3	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sw	0(%GPR1),%GPR4	
	NOP		
	NOP		
	NOP		
L68:
	lw	%GPR1,-16(%GPR30)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	addi	%GPR1,%GPR1,$1	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sw	-16(%GPR30),%GPR1	
	j	L62	
	NOP		
	NOP		
	NOP		
L69:
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
	j	L68	
	NOP		
	NOP		
	NOP		
L70:
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	switchThread	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L50	
	NOP		
	NOP		
	NOP		
L71:
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
