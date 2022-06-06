	.section	.data
	;.global	_mp3Stream
	.align	4
_mp3Stream:
	.space	1024
L1:
	.data.8	100
	.data.8	101
	.data.8	99
	.data.8	111
	.data.8	100
	.data.8	105
	.data.8	110
	.data.8	103
	.data.8	32
	.data.8	101
	.data.8	114
	.data.8	114
	.data.8	111
	.data.8	114
	.data.8	32
	.space	1
L2:
	.data.8	32
	.data.8	40
	.space	1
L3:
	.data.8	41
	.data.8	32
	.data.8	97
	.data.8	116
	.data.8	32
	.data.8	98
	.data.8	121
	.data.8	116
	.data.8	101
	.data.8	32
	.data.8	111
	.data.8	102
	.data.8	102
	.data.8	115
	.data.8	101
	.data.8	116
	.data.8	32
	.space	1
L4:
	.data.8	10
	.space	1
	.section	.text
decode:
L5:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$72	
	NOP		
	NOP		
	NOP		
	NOP		
	add	%GPR4,%GPR1,%GPR0	
	add	%GPR9,%GPR2,%GPR0	
	NOP		
	NOP		
	NOP		
	NOP		;;3,5
	NOP		;;3,5
	subi	%GPR5,%GPR30,$8	
	LI	%GPR7, error	
	LI	%GPR6, output	
	lhi	%GPR8,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR8,%GPR8,$4	
	LI	%GPR3, input	
	sw	-8(%GPR30),%GPR4	
	NOP		;;10,12
	NOP		;;10,12
	add	%GPR10,%GPR5,%GPR8	
	NOP		;;12,15
	NOP		;;12,15
	NOP		;;12,15
	subi	%GPR2,%GPR30,$8	
	subi	%GPR1,%GPR30,$60	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sw	0(%GPR10),%GPR9	
	lhi	%GPR8,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR8,%GPR8,$0	
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
	jal	mad_decoder_init	
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
	NOP		
	NOP		;;24,26
	NOP		;;24,26
	subi	%GPR1,%GPR30,$60	
	NOP		;;26,29
	NOP		;;26,29
	NOP		;;26,29
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
	jal	mad_decoder_run	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR1,%GPR30,$60	
	sw	-64(%GPR30),%GPR28	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	mad_decoder_finish	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR28,-64(%GPR30)	
	NOP		;;34,38
	NOP		;;34,38
	NOP		;;34,38
	NOP		;;34,38
	j	L6	
	NOP		
	NOP		
	NOP		
	NOP		
L6:
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
L7:
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
	LI	%GPR1, *_mp3Stream	
	NOP		;;3,8
	NOP		;;3,8
	NOP		;;3,8
	NOP		;;3,8
	NOP		;;3,8
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$256	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	decode	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;9,14
	NOP		;;9,14
	NOP		;;9,14
	NOP		;;9,14
	NOP		;;9,14
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		;;14,18
	NOP		;;14,18
	NOP		;;14,18
	NOP		;;14,18
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
input:
L9:
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
	add	%GPR4,%GPR2,%GPR0	
	NOP		
	NOP		
	NOP		
	NOP		;;2,4
	NOP		;;2,4
	add	%GPR3,%GPR1,%GPR0	
	sw	-4(%GPR30),%GPR1	
	NOP		;;5,7
	NOP		;;5,7
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$4	
	NOP		;;7,10
	NOP		;;7,10
	NOP		;;7,10
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;11,15
	NOP		;;11,15
	NOP		;;11,15
	NOP		;;11,15
	lw	%GPR1,0(%GPR1)	
	NOP		;;15,19
	NOP		;;15,19
	NOP		;;15,19
	NOP		;;15,19
	seq	%GPR27,%GPR1,%GPR2	
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
	ori	%GPR28,%GPR28,$16	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	j	L12	
	NOP		
	NOP		
	NOP		
	NOP		
L11:
	lw	%GPR1,-4(%GPR30)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	add	%GPR3,%GPR1,%GPR0	
	lw	%GPR2,0(%GPR1)	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$4	
	NOP		;;6,10
	NOP		;;6,10
	NOP		;;6,10
	NOP		;;6,10
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	lw	%GPR3,0(%GPR1)	
	add	%GPR1,%GPR4,%GPR0	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	mad_stream_buffer	
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
	NOP		
	NOP		;;16,19
	NOP		;;16,19
	NOP		;;16,19
	lw	%GPR3,-4(%GPR30)	
	NOP		;;19,21
	NOP		;;19,21
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
	NOP		;;22,24
	NOP		;;22,24
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;25,29
	NOP		;;25,29
	NOP		;;25,29
	NOP		;;25,29
	sw	0(%GPR1),%GPR2	
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
scale:
L13:
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
	NOP		;;2,4
	NOP		;;2,4
	addi	%GPR1,%GPR1,$4096	
	NOP		;;4,7
	NOP		;;4,7
	NOP		;;4,7
	lhi	%GPR2,$4096	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$268435456	
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	sge	%GPR27,%GPR1,%GPR2	
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
	lhi	%GPR1,$4095	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$268435455	
	j	L17	
	NOP		
	NOP		
	NOP		
L15:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$61440	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$-268435456	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	slt	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L16	
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
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR1,$61440	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$-268435456	
	NOP		
	NOP		
	NOP		
L17:
	srai	%GPR28,%GPR1,$13	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	j	L18	
	NOP		
	NOP		
	NOP		
	NOP		
L18:
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
putchar:
L19:
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
	add	%GPR2,%GPR1,%GPR0	
	NOP		
	NOP		
	NOP		
	NOP		;;2,4
	NOP		;;2,4
	subi	%GPR3,%GPR30,$4	
	NOP		;;4,6
	NOP		;;4,6
	sb	-4(%GPR30),%GPR2	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$1	
	subi	%GPR1,%GPR30,$4	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		;;9,11
	NOP		;;9,11
	add	%GPR3,%GPR3,%GPR4	
	NOP		;;11,15
	NOP		;;11,15
	NOP		;;11,15
	NOP		;;11,15
	sb	0(%GPR3),%GPR2	
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
	NOP		;;16,21
	NOP		;;16,21
	NOP		;;16,21
	NOP		;;16,21
	NOP		;;16,21
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	j	L20	
	NOP		
	NOP		
	NOP		
	NOP		
L20:
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
output:
L21:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$28	
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
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$6	
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
	ori	%GPR4,%GPR4,$4616	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$8	
	add	%GPR1,%GPR3,%GPR1	
	add	%GPR2,%GPR3,%GPR2	
	add	%GPR4,%GPR3,%GPR4	
	add	%GPR3,%GPR3,%GPR5	
	lhu	%GPR1,0(%GPR1)	
	NOP		;;15,17
	NOP		;;15,17
	sw	-4(%GPR30),%GPR4	
	sw	-8(%GPR30),%GPR3	
	sw	-12(%GPR30),%GPR1	
	lhu	%GPR1,0(%GPR2)	
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	sw	-16(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
L22:
	lw	%GPR1,-12(%GPR30)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	add	%GPR2,%GPR1,%GPR0	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	subui	%GPR2,%GPR2,$1	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	sw	-12(%GPR30),%GPR2	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sne	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L23	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L25	
	NOP		
	NOP		
	NOP		
	NOP		
L23:
	lw	%GPR1,-8(%GPR30)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	add	%GPR3,%GPR1,%GPR0	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	lw	%GPR1,0(%GPR1)	
	NOP		;;6,9
	NOP		;;6,9
	NOP		;;6,9
	add	%GPR2,%GPR3,%GPR2	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	sw	-8(%GPR30),%GPR2	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	scale	
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
	sw	-20(%GPR30),%GPR28	
	NOP		;;16,19
	NOP		;;16,19
	NOP		;;16,19
	andi	%GPR1,%GPR1,$255	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	putchar	
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
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	srai	%GPR1,%GPR1,$8	
	NOP		;;25,29
	NOP		;;25,29
	NOP		;;25,29
	NOP		;;25,29
	andi	%GPR1,%GPR1,$255	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	putchar	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;30,32
	NOP		;;30,32
	lw	%GPR2,-16(%GPR30)	
	NOP		;;32,35
	NOP		;;32,35
	NOP		;;32,35
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$2	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	seq	%GPR27,%GPR2,%GPR1	
	bnez	%GPR27,L24	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L22	
	NOP		
	NOP		
	NOP		
	NOP		
L24:
	lw	%GPR1,-4(%GPR30)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	add	%GPR3,%GPR1,%GPR0	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	lw	%GPR1,0(%GPR1)	
	NOP		;;6,9
	NOP		;;6,9
	NOP		;;6,9
	add	%GPR2,%GPR3,%GPR2	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	sw	-4(%GPR30),%GPR2	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	scale	
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
	sw	-20(%GPR30),%GPR28	
	NOP		;;16,19
	NOP		;;16,19
	NOP		;;16,19
	andi	%GPR1,%GPR1,$255	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	putchar	
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
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	srai	%GPR1,%GPR1,$8	
	NOP		;;25,29
	NOP		;;25,29
	NOP		;;25,29
	NOP		;;25,29
	andi	%GPR1,%GPR1,$255	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	putchar	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L22	
	NOP		
	NOP		
	NOP		
L25:
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
	j	L26	
	NOP		
	NOP		
	NOP		
	NOP		
L26:
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
error:
L27:
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
	sw	-4(%GPR30),%GPR2	
	NOP		
	NOP		
	NOP		
	sw	-8(%GPR30),%GPR1	
	LI	%GPR1, *L1	
	NOP		;;4,9
	NOP		;;4,9
	NOP		;;4,9
	NOP		;;4,9
	NOP		;;4,9
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
	NOP		;;9,11
	NOP		;;9,11
	lw	%GPR2,-4(%GPR30)	
	NOP		;;11,14
	NOP		;;11,14
	NOP		;;11,14
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$60	
	NOP		;;14,18
	NOP		;;14,18
	NOP		;;14,18
	NOP		;;14,18
	add	%GPR1,%GPR2,%GPR1	
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
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
	jal	printInt	
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
	NOP		;;24,29
	NOP		;;24,29
	NOP		;;24,29
	NOP		;;24,29
	NOP		;;24,29
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
	jal	mad_stream_errorstr	
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
	NOP		;;34,39
	NOP		;;34,39
	NOP		;;34,39
	NOP		;;34,39
	NOP		;;34,39
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
	NOP		;;39,41
	NOP		;;39,41
	lw	%GPR3,-4(%GPR30)	
	lw	%GPR1,-8(%GPR30)	
	NOP		;;42,44
	NOP		;;42,44
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$20	
	NOP		;;44,46
	NOP		;;44,46
	lw	%GPR1,0(%GPR1)	
	NOP		;;46,48
	NOP		;;46,48
	add	%GPR2,%GPR3,%GPR2	
	NOP		;;48,52
	NOP		;;48,52
	NOP		;;48,52
	NOP		;;48,52
	lw	%GPR2,0(%GPR2)	
	NOP		;;52,56
	NOP		;;52,56
	NOP		;;52,56
	NOP		;;52,56
	sub	%GPR1,%GPR2,%GPR1	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	printInt	
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
	NOP		;;58,63
	NOP		;;58,63
	NOP		;;58,63
	NOP		;;58,63
	NOP		;;58,63
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
	NOP		;;63,68
	NOP		;;63,68
	NOP		;;63,68
	NOP		;;63,68
	NOP		;;63,68
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$17	
	NOP		;;68,72
	NOP		;;68,72
	NOP		;;68,72
	NOP		;;68,72
	j	L28	
	NOP		
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
