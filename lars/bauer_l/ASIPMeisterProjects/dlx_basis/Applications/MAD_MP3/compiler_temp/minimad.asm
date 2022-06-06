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
	.addressing	Word
decode:
L5:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
	subi	%GPR29,%GPR29,$72	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR4,%GPR1,%GPR0	
	add	%GPR9,%GPR2,%GPR0	
	nop
	nop
	nop
				; Automatically 2 NOPs removed by reduceNOPs.sh
	subi	%GPR5,%GPR30,$8	
	lhi	%GPR7,$( error	/0x10000)
	nop
	nop
	nop
	ori	%GPR7,%GPR7,$( error	%0x10000)
	lhi	%GPR6,$( output	/0x10000)
	nop
	nop
	nop
	ori	%GPR6,%GPR6,$( output	%0x10000)
	lhi	%GPR8,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$4	
	lhi	%GPR3,$( input	/0x10000)
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$( input	%0x10000)
	sw	-8(%GPR30),%GPR4	
	nop	;;10,12
	nop	;;10,12
	add	%GPR10,%GPR5,%GPR8	
	nop	;;12,15
	nop	;;12,15
	nop	;;12,15
	subi	%GPR2,%GPR30,$8	
	subi	%GPR1,%GPR30,$60	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR10),%GPR9	
	lhi	%GPR8,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$0	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	mad_decoder_init	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 7 NOPs removed by reduceNOPs.sh
	subi	%GPR1,%GPR30,$60	
	nop	;;26,29
	nop	;;26,29
	nop	;;26,29
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	mad_decoder_run	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR1,%GPR30,$60	
	sw	-64(%GPR30),%GPR28	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	mad_decoder_finish	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR28,-64(%GPR30)	
	nop	;;34,38
	nop	;;34,38
	nop	;;34,38
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L6	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L6:
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
L7:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( _mp3Stream	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _mp3Stream	%0x10000)
	nop	;;3,8
	nop	;;3,8
	nop	;;3,8
				; Automatically 2 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$256	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	decode	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop	;;14,18
	nop	;;14,18
	nop	;;14,18
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
input:
L9:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
	subi	%GPR29,%GPR29,$12	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR4,%GPR2,%GPR0	
	nop
	nop
	nop
				; Automatically 2 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR1,%GPR0	
	sw	-4(%GPR30),%GPR1	
	nop	;;5,7
	nop	;;5,7
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	
	nop	;;7,10
	nop	;;7,10
	nop	;;7,10
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	add	%GPR1,%GPR3,%GPR1	
	nop	;;11,15
	nop	;;11,15
	nop	;;11,15
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop	;;15,19
	nop	;;15,19
	nop	;;15,19
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L10	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L11	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L10:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$16	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L12	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L11:
	lw	%GPR1,-4(%GPR30)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR1,%GPR0	
	lw	%GPR2,0(%GPR1)	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	
	nop	;;6,10
	nop	;;6,10
	nop	;;6,10
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR3,%GPR1	
	nop	;;10,14
	nop	;;10,14
	nop	;;10,14
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR3,0(%GPR1)	
	add	%GPR1,%GPR4,%GPR0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	mad_stream_buffer	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 8 NOPs removed by reduceNOPs.sh
	lw	%GPR3,-4(%GPR30)	
	nop	;;19,21
	nop	;;19,21
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
	nop	;;22,24
	nop	;;22,24
	lhi	%GPR28,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	add	%GPR1,%GPR3,%GPR1	
	nop	;;25,29
	nop	;;25,29
	nop	;;25,29
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	j	L12	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L12:
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
scale:
L13:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 8 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$4096	
	nop	;;4,7
	nop	;;4,7
	nop	;;4,7
	lhi	%GPR2,$4096	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$268435456	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sge	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L14	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L15	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L14:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$4095	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$268435455	
	j	L17	
	nop
	nop
	nop
L15:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$61440	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$-268435456	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L16	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L17	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L16:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$61440	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$-268435456	
	nop
	nop
	nop
L17:
	srai	%GPR28,%GPR1,$13	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L18	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L18:
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
putchar:
L19:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
	subi	%GPR29,%GPR29,$12	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
				; Automatically 2 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$4	
	nop	;;4,6
	nop	;;4,6
	sb	-4(%GPR30),%GPR2	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$1	
	subi	%GPR1,%GPR30,$4	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	;;9,11
	nop	;;9,11
	add	%GPR3,%GPR3,%GPR4	
	nop	;;11,15
	nop	;;11,15
	nop	;;11,15
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sb	0(%GPR3),%GPR2	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop	;;21,25
	nop	;;21,25
	nop	;;21,25
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L20	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L20:
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
output:
L21:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
	subi	%GPR29,%GPR29,$28	
	nop
	nop
	nop
				; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$6	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4616	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$8	
	add	%GPR1,%GPR3,%GPR1	
	add	%GPR2,%GPR3,%GPR2	
	add	%GPR4,%GPR3,%GPR4	
	add	%GPR3,%GPR3,%GPR5	
	lhu	%GPR1,0(%GPR1)	
	nop	;;15,17
	nop	;;15,17
	sw	-4(%GPR30),%GPR4	
	sw	-8(%GPR30),%GPR3	
	sw	-12(%GPR30),%GPR1	
	lhu	%GPR1,0(%GPR2)	
	nop	;;20,24
	nop	;;20,24
	nop	;;20,24
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR1	
	nop
	nop
	nop
L22:
	lw	%GPR1,-12(%GPR30)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subui	%GPR2,%GPR2,$1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-12(%GPR30),%GPR2	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L23	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L25	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L23:
	lw	%GPR1,-8(%GPR30)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR1,%GPR0	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	lw	%GPR1,0(%GPR1)	
	nop	;;6,9
	nop	;;6,9
	nop	;;6,9
	add	%GPR2,%GPR3,%GPR2	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-8(%GPR30),%GPR2	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	scale	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR28,%GPR0	
	sw	-20(%GPR30),%GPR28	
	nop	;;16,19
	nop	;;16,19
	nop	;;16,19
	andi	%GPR1,%GPR1,$255	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	putchar	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-20(%GPR30)	
	nop	;;21,25
	nop	;;21,25
	nop	;;21,25
				; Automatically 1 NOPs removed by reduceNOPs.sh
	srai	%GPR1,%GPR1,$8	
	nop	;;25,29
	nop	;;25,29
	nop	;;25,29
				; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR1,%GPR1,$255	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	putchar	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 3 NOPs removed by reduceNOPs.sh
	lw	%GPR2,-16(%GPR30)	
	nop	;;32,35
	nop	;;32,35
	nop	;;32,35
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$2	
	nop	;;35,39
	nop	;;35,39
	nop	;;35,39
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR2,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L24	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L22	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L24:
	lw	%GPR1,-4(%GPR30)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR1,%GPR0	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	lw	%GPR1,0(%GPR1)	
	nop	;;6,9
	nop	;;6,9
	nop	;;6,9
	add	%GPR2,%GPR3,%GPR2	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR2	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	scale	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR28,%GPR0	
	sw	-20(%GPR30),%GPR28	
	nop	;;16,19
	nop	;;16,19
	nop	;;16,19
	andi	%GPR1,%GPR1,$255	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	putchar	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-20(%GPR30)	
	nop	;;21,25
	nop	;;21,25
	nop	;;21,25
				; Automatically 1 NOPs removed by reduceNOPs.sh
	srai	%GPR1,%GPR1,$8	
	nop	;;25,29
	nop	;;25,29
	nop	;;25,29
				; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR1,%GPR1,$255	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	putchar	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L22	
	nop
	nop
	nop
L25:
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
	j	L26	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L26:
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
error:
L27:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
	subi	%GPR29,%GPR29,$16	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR2	
	nop
	nop
	nop
	sw	-8(%GPR30),%GPR1	
	lhi	%GPR1,$( L1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L1	%0x10000)
	nop	;;4,9
	nop	;;4,9
	nop	;;4,9
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 3 NOPs removed by reduceNOPs.sh
	lw	%GPR2,-4(%GPR30)	
	nop	;;11,14
	nop	;;11,14
	nop	;;11,14
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$60	
	nop	;;14,18
	nop	;;14,18
	nop	;;14,18
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR2,%GPR1	
	nop	;;18,22
	nop	;;18,22
	nop	;;18,22
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	printInt	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L2	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L2	%0x10000)
	nop	;;24,29
	nop	;;24,29
	nop	;;24,29
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-4(%GPR30)	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	mad_stream_errorstr	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR28,%GPR0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L3	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L3	%0x10000)
	nop	;;34,39
	nop	;;34,39
	nop	;;34,39
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 3 NOPs removed by reduceNOPs.sh
	lw	%GPR3,-4(%GPR30)	
	lw	%GPR1,-8(%GPR30)	
	nop	;;42,44
	nop	;;42,44
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$20	
	nop	;;44,46
	nop	;;44,46
	lw	%GPR1,0(%GPR1)	
	nop	;;46,48
	nop	;;46,48
	add	%GPR2,%GPR3,%GPR2	
	nop	;;48,52
	nop	;;48,52
	nop	;;48,52
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR2)	
	nop	;;52,56
	nop	;;52,56
	nop	;;52,56
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sub	%GPR1,%GPR2,%GPR1	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	printInt	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L4	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L4	%0x10000)
	nop	;;58,63
	nop	;;58,63
	nop	;;58,63
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$17	
	nop	;;68,72
	nop	;;68,72
	nop	;;68,72
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L28	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L28:
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
