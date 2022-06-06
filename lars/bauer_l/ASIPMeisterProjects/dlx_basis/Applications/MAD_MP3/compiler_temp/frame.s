	.section	.data
	.align	4
L1:
	.space	4
	.data.32	32000
	.data.32	64000
	.data.32	96000
	.data.32	128000
	.data.32	160000
	.data.32	192000
	.data.32	224000
	.data.32	256000
	.data.32	288000
	.data.32	320000
	.data.32	352000
	.data.32	384000
	.data.32	416000
	.data.32	448000
	.space	4
	.data.32	32000
	.data.32	48000
	.data.32	56000
	.data.32	64000
	.data.32	80000
	.data.32	96000
	.data.32	112000
	.data.32	128000
	.data.32	160000
	.data.32	192000
	.data.32	224000
	.data.32	256000
	.data.32	320000
	.data.32	384000
	.space	4
	.data.32	32000
	.data.32	40000
	.data.32	48000
	.data.32	56000
	.data.32	64000
	.data.32	80000
	.data.32	96000
	.data.32	112000
	.data.32	128000
	.data.32	160000
	.data.32	192000
	.data.32	224000
	.data.32	256000
	.data.32	320000
	.space	4
	.data.32	32000
	.data.32	48000
	.data.32	56000
	.data.32	64000
	.data.32	80000
	.data.32	96000
	.data.32	112000
	.data.32	128000
	.data.32	144000
	.data.32	160000
	.data.32	176000
	.data.32	192000
	.data.32	224000
	.data.32	256000
	.space	4
	.data.32	8000
	.data.32	16000
	.data.32	24000
	.data.32	32000
	.data.32	40000
	.data.32	48000
	.data.32	56000
	.data.32	64000
	.data.32	80000
	.data.32	96000
	.data.32	112000
	.data.32	128000
	.data.32	144000
	.data.32	160000
	.align	4
L2:
	.data.32	44100
	.data.32	48000
	.data.32	32000
	.align	4
L3:
	.space	4
	.space	4
	.data.32	mad_layer_III
	.section	.text
mad_header_init:
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
	NOP		;;8,10
	NOP		;;8,10
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$8	
	sw	0(%GPR1),%GPR3	
	add	%GPR2,%GPR1,%GPR2	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sw	0(%GPR2),%GPR3	
	add	%GPR3,%GPR1,%GPR4	
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
	ori	%GPR5,%GPR5,$12	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$16	
	NOP		;;21,23
	NOP		;;21,23
	sw	0(%GPR3),%GPR2	
	add	%GPR3,%GPR1,%GPR5	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		;;25,29
	NOP		;;25,29
	NOP		;;25,29
	NOP		;;25,29
	sw	0(%GPR3),%GPR2	
	add	%GPR3,%GPR1,%GPR4	
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
	ori	%GPR5,%GPR5,$20	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$24	
	NOP		;;33,35
	NOP		;;33,35
	sw	0(%GPR3),%GPR2	
	add	%GPR3,%GPR1,%GPR5	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		;;37,41
	NOP		;;37,41
	NOP		;;37,41
	NOP		;;37,41
	sw	0(%GPR3),%GPR2	
	add	%GPR3,%GPR1,%GPR4	
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
	ori	%GPR5,%GPR5,$26	
	NOP		;;44,47
	NOP		;;44,47
	NOP		;;44,47
	sh	0(%GPR3),%GPR2	
	add	%GPR3,%GPR1,%GPR5	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$28	
	NOP		;;50,52
	NOP		;;50,52
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$0	
	sh	0(%GPR3),%GPR2	
	add	%GPR2,%GPR1,%GPR4	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$32	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		;;56,58
	NOP		;;56,58
	sw	0(%GPR2),%GPR6	
	add	%GPR1,%GPR1,%GPR5	
	NOP		;;59,63
	NOP		;;59,63
	NOP		;;59,63
	NOP		;;59,63
	sw	0(%GPR1),%GPR3	
	j	L5	
	NOP		
	NOP		
	NOP		
L5:
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
mad_header_decode:
L6:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$20	
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR30),%GPR1	
	sw	-8(%GPR30),%GPR2	
	add	%GPR4,%GPR2,%GPR0	
	NOP		
	NOP		
	NOP		
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$24	
	NOP		;;10,13
	NOP		;;10,13
	NOP		;;10,13
	add	%GPR2,%GPR4,%GPR2	
	add	%GPR3,%GPR4,%GPR3	
	NOP		;;14,17
	NOP		;;14,17
	NOP		;;14,17
	lw	%GPR2,0(%GPR2)	
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	sw	-12(%GPR30),%GPR2	
	lw	%GPR2,0(%GPR3)	
	NOP		;;22,26
	NOP		;;22,26
	NOP		;;22,26
	NOP		;;22,26
	seq	%GPR27,%GPR2,%GPR1	
	bnez	%GPR27,L7	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L9	
	NOP		
	NOP		
	NOP		
	NOP		
L7:
	lw	%GPR3,-8(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$60	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$2	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	sw	0(%GPR1),%GPR2	
	NOP		
	NOP		
	NOP		
L8:
	NOP		;;0,2
	NOP		;;0,2
	lw	%GPR3,-8(%GPR30)	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$12	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		;;5,7
	NOP		;;5,7
	lhi	%GPR28,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$-1	
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	sw	0(%GPR1),%GPR2	
	j	L64	
	NOP		
	NOP		
	NOP		
	NOP		
L9:
	lw	%GPR4,-8(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$8	
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
	add	%GPR1,%GPR4,%GPR1	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	lw	%GPR1,0(%GPR1)	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	sne	%GPR27,%GPR1,%GPR3	
	bnez	%GPR27,L10	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L15	
	NOP		
	NOP		
	NOP		
	NOP		
L10:
	lw	%GPR4,-8(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$12	
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
	add	%GPR1,%GPR4,%GPR1	
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
	lw	%GPR2,-8(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$20	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	add	%GPR1,%GPR2,%GPR1	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	lw	%GPR2,0(%GPR1)	
	NOP		
	NOP		
	NOP		
L12:
	lw	%GPR4,-8(%GPR30)	
	lw	%GPR1,-12(%GPR30)	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$8	
	NOP		;;4,6
	NOP		;;4,6
	sub	%GPR1,%GPR1,%GPR2	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR3,%GPR4,%GPR3	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	lw	%GPR3,0(%GPR3)	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	slt	%GPR27,%GPR1,%GPR3	
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
	lw	%GPR1,-12(%GPR30)	
	NOP		;;0,2
	NOP		;;0,2
	lw	%GPR5,-8(%GPR30)	
	NOP		;;2,4
	NOP		;;2,4
	sub	%GPR1,%GPR1,%GPR2	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$8	
	NOP		;;5,7
	NOP		;;5,7
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$8	
	add	%GPR6,%GPR5,%GPR0	
	add	%GPR2,%GPR5,%GPR2	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$24	
	add	%GPR3,%GPR5,%GPR3	
	NOP		;;11,13
	NOP		;;11,13
	lw	%GPR2,0(%GPR2)	
	NOP		;;13,15
	NOP		;;13,15
	add	%GPR7,%GPR6,%GPR0	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$60	
	subu	%GPR1,%GPR2,%GPR1	
	add	%GPR4,%GPR6,%GPR4	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$1	
	add	%GPR5,%GPR7,%GPR5	
	sw	0(%GPR3),%GPR1	
	lw	%GPR1,-12(%GPR30)	
	NOP		;;22,26
	NOP		;;22,26
	NOP		;;22,26
	NOP		;;22,26
	sw	0(%GPR4),%GPR1	
	NOP		;;26,30
	NOP		;;26,30
	NOP		;;26,30
	NOP		;;26,30
	sw	0(%GPR5),%GPR6	
	j	L8	
	NOP		
	NOP		
	NOP		
L14:
	lw	%GPR5,-8(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$8	
	add	%GPR6,%GPR5,%GPR0	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$8	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR1,%GPR5,%GPR1	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	add	%GPR3,%GPR6,%GPR3	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$12	
	NOP		;;11,13
	NOP		;;11,13
	add	%GPR7,%GPR6,%GPR0	
	lw	%GPR1,0(%GPR1)	
	sw	0(%GPR3),%GPR4	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$1	
	add	%GPR5,%GPR7,%GPR5	
	add	%GPR2,%GPR2,%GPR1	
	NOP		;;18,21
	NOP		;;18,21
	NOP		;;18,21
	sw	0(%GPR5),%GPR6	
	NOP		
	NOP		
	NOP		
L15:
	lw	%GPR4,-8(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$12	
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
	add	%GPR1,%GPR4,%GPR1	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	lw	%GPR1,0(%GPR1)	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	sne	%GPR27,%GPR1,%GPR3	
	bnez	%GPR27,L16	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L22	
	NOP		
	NOP		
	NOP		
	NOP		
L16:
	lw	%GPR1,-12(%GPR30)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	sub	%GPR1,%GPR1,%GPR2	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$8	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	slt	%GPR27,%GPR1,%GPR3	
	bnez	%GPR27,L17	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L18	
	NOP		
	NOP		
	NOP		
	NOP		
L17:
	lw	%GPR5,-8(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$24	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$60	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$1	
	add	%GPR1,%GPR5,%GPR1	
	NOP		;;8,10
	NOP		;;8,10
	add	%GPR3,%GPR5,%GPR3	
	NOP		;;10,12
	NOP		;;10,12
	sw	0(%GPR1),%GPR2	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	sw	0(%GPR3),%GPR4	
	j	L8	
	NOP		
	NOP		
	NOP		
L18:
	lbu	%GPR1,0(%GPR2)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$255	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR3	
	bnez	%GPR27,L19	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L21	
	NOP		
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
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$224	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	add	%GPR1,%GPR2,%GPR1	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	lbu	%GPR1,0(%GPR1)	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	andi	%GPR1,%GPR1,$224	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	seq	%GPR27,%GPR1,%GPR3	
	bnez	%GPR27,L20	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L21	
	NOP		
	NOP		
	NOP		
	NOP		
L20:
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
	j	L27	
	NOP		
	NOP		
	NOP		
L21:
	lw	%GPR5,-8(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$20	
	add	%GPR6,%GPR5,%GPR0	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$24	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$1	
	add	%GPR1,%GPR5,%GPR1	
	NOP		;;8,11
	NOP		;;8,11
	NOP		;;8,11
	add	%GPR4,%GPR2,%GPR4	
	sw	0(%GPR1),%GPR2	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$60	
	add	%GPR1,%GPR6,%GPR0	
	add	%GPR3,%GPR6,%GPR3	
	NOP		;;15,17
	NOP		;;15,17
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$257	
	add	%GPR5,%GPR1,%GPR5	
	sw	0(%GPR3),%GPR4	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;20,23
	NOP		;;20,23
	NOP		;;20,23
	sw	0(%GPR5),%GPR2	
	j	L8	
	NOP		
	NOP		
	NOP		
L22:
	lw	%GPR3,-8(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$28	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	mad_bit_init	
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
	jal	mad_stream_sync	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;15,20
	NOP		;;15,20
	NOP		;;15,20
	NOP		;;15,20
	NOP		;;15,20
	lhi	%GPR1,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$-1	
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	seq	%GPR27,%GPR28,%GPR1	
	bnez	%GPR27,L23	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L26	
	NOP		
	NOP		
	NOP		
	NOP		
L23:
	lw	%GPR3,-8(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$24	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$8	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR1,%GPR3,%GPR1	
	lw	%GPR3,-12(%GPR30)	
	NOP		;;9,12
	NOP		;;9,12
	NOP		;;9,12
	lw	%GPR1,0(%GPR1)	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	sub	%GPR1,%GPR3,%GPR1	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sge	%GPR27,%GPR1,%GPR2	
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
	lw	%GPR3,-8(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$24	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR2,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$-8	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR1,%GPR3,%GPR1	
	lw	%GPR3,-12(%GPR30)	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	add	%GPR2,%GPR3,%GPR2	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sw	0(%GPR1),%GPR2	
	NOP		
	NOP		
	NOP		
L25:
	NOP		;;0,2
	NOP		;;0,2
	lw	%GPR3,-8(%GPR30)	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$60	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	sw	0(%GPR1),%GPR2	
	j	L8	
	NOP		
	NOP		
	NOP		
L26:
	lw	%GPR2,-8(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$28	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	add	%GPR1,%GPR2,%GPR1	
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	mad_bit_nextbyte	
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
	NOP		
	NOP		
	NOP		
L27:
	lw	%GPR5,-8(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$20	
	add	%GPR7,%GPR5,%GPR0	
	NOP		;;5,7
	NOP		;;5,7
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$24	
	add	%GPR1,%GPR5,%GPR1	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$1	
	NOP		;;9,11
	NOP		;;9,11
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$20	
	sw	0(%GPR1),%GPR2	
	add	%GPR1,%GPR7,%GPR0	
	add	%GPR2,%GPR2,%GPR4	
	add	%GPR3,%GPR7,%GPR3	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$28	
	add	%GPR4,%GPR1,%GPR5	
	NOP		;;17,19
	NOP		;;17,19
	sw	0(%GPR3),%GPR2	
	add	%GPR1,%GPR1,%GPR6	
	NOP		;;20,23
	NOP		;;20,23
	NOP		;;20,23
	lw	%GPR2,0(%GPR4)	
	NOP		;;23,25
	NOP		;;23,25
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	mad_bit_init	
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
	lw	%GPR1,-4(%GPR30)	
	lw	%GPR2,-8(%GPR30)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	decode_header	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;28,33
	NOP		;;28,33
	NOP		;;28,33
	NOP		;;28,33
	NOP		;;28,33
	lhi	%GPR1,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$-1	
	NOP		;;33,37
	NOP		;;33,37
	NOP		;;33,37
	NOP		;;33,37
	seq	%GPR27,%GPR28,%GPR1	
	bnez	%GPR27,L8	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L28	
	NOP		
	NOP		
	NOP		
	NOP		
L28:
	lw	%GPR1,-4(%GPR30)	
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
	ori	%GPR2,%GPR2,$1	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L29	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L30	
	NOP		
	NOP		
	NOP		
	NOP		
L29:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$12	
	j	L35	
	NOP		
	NOP		
	NOP		
L30:
	lw	%GPR1,-4(%GPR30)	
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
	ori	%GPR2,%GPR2,$3	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L31	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L33	
	NOP		
	NOP		
	NOP		
	NOP		
L31:
	lw	%GPR3,-4(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$28	
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
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	lw	%GPR1,0(%GPR1)	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	andi	%GPR1,%GPR1,$4096	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sne	%GPR27,%GPR1,%GPR2	
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
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$18	
	j	L34	
	NOP		
	NOP		
	NOP		
L33:
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
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$36	
	NOP		
	NOP		
	NOP		
L34:
	NOP		;;0,3
	NOP		;;0,3
	NOP		;;0,3
	NOP		
	NOP		
	NOP		
L35:
	NOP		;;0,2
	NOP		;;0,2
	lw	%GPR6,-4(%GPR30)	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$20	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$32	
	NOP		;;5,7
	NOP		;;5,7
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$36	
	add	%GPR6,%GPR6,%GPR3	
	mult	%GPR3,%GPR1,%GPR4	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		;;10,13
	NOP		;;10,13
	NOP		;;10,13
	lw	%GPR1,-4(%GPR30)	
	NOP		;;13,15
	NOP		;;13,15
	lw	%GPR4,0(%GPR6)	
	NOP		;;15,17
	NOP		;;15,17
	add	%GPR1,%GPR1,%GPR5	
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
	jal	mad_timer_set	
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
	NOP		;;22,24
	NOP		;;22,24
	lw	%GPR3,-4(%GPR30)	
	NOP		;;24,27
	NOP		;;24,27
	NOP		;;24,27
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$16	
	NOP		;;27,29
	NOP		;;27,29
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		;;29,31
	NOP		;;29,31
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;31,35
	NOP		;;31,35
	NOP		;;31,35
	NOP		;;31,35
	lw	%GPR1,0(%GPR1)	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L36	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L46	
	NOP		
	NOP		
	NOP		
	NOP		
L36:
	lw	%GPR3,-8(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$16	
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
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	lw	%GPR1,0(%GPR1)	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L38	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L37	
	NOP		
	NOP		
	NOP		
	NOP		
L37:
	lw	%GPR3,-8(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$12	
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
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	lw	%GPR1,0(%GPR1)	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L38	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L41	
	NOP		
	NOP		
	NOP		
	NOP		
L38:
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
	NOP		
	NOP		
	NOP		
L39:
	lw	%GPR2,-4(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
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
	jal	free_bitrate	
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
	lhi	%GPR1,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$-1	
	NOP		;;14,18
	NOP		;;14,18
	NOP		;;14,18
	NOP		;;14,18
	seq	%GPR27,%GPR28,%GPR1	
	bnez	%GPR27,L40	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L45	
	NOP		
	NOP		
	NOP		
	NOP		
L40:
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
	j	L8	
	NOP		
	NOP		
	NOP		
L41:
	lw	%GPR1,-4(%GPR30)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lw	%GPR2,0(%GPR1)	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$3	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;6,9
	NOP		;;6,9
	NOP		;;6,9
	seq	%GPR27,%GPR2,%GPR3	
	bnez	%GPR27,L42	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L44	
	NOP		
	NOP		
	NOP		
	NOP		
L42:
	lw	%GPR3,-8(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$16	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR2,$9	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$640000	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	lw	%GPR1,0(%GPR1)	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	sgtu	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L43	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L44	
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
	ori	%GPR2,%GPR2,$1	
	j	L39	
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
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		
	NOP		
	NOP		
L45:
	lw	%GPR5,-8(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$16	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$16	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$28	
	add	%GPR1,%GPR5,%GPR1	
	lw	%GPR5,-4(%GPR30)	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$28	
	NOP		;;10,13
	NOP		;;10,13
	NOP		;;10,13
	add	%GPR2,%GPR5,%GPR2	
	add	%GPR3,%GPR5,%GPR3	
	lw	%GPR5,0(%GPR1)	
	lw	%GPR1,-4(%GPR30)	
	NOP		;;16,19
	NOP		;;16,19
	NOP		;;16,19
	sw	0(%GPR2),%GPR5	
	add	%GPR4,%GPR1,%GPR4	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	lw	%GPR1,0(%GPR3)	
	NOP		;;25,29
	NOP		;;25,29
	NOP		;;25,29
	NOP		;;25,29
	ori	%GPR1,%GPR1,$1024	
	NOP		;;29,33
	NOP		;;29,33
	NOP		;;29,33
	NOP		;;29,33
	sw	0(%GPR4),%GPR1	
	NOP		
	NOP		
	NOP		
L46:
	lw	%GPR3,-4(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$28	
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
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	lw	%GPR1,0(%GPR1)	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	andi	%GPR1,%GPR1,$128	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sne	%GPR27,%GPR1,%GPR2	
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
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$1	
	j	L49	
	NOP		
	NOP		
	NOP		
L48:
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
L49:
	NOP		;;0,3
	NOP		;;0,3
	NOP		;;0,3
	lw	%GPR2,-4(%GPR30)	
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
	ori	%GPR3,%GPR3,$1	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	seq	%GPR27,%GPR2,%GPR3	
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
	lw	%GPR6,-4(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$16	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$20	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$12	
	add	%GPR2,%GPR6,%GPR2	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$4	
	add	%GPR3,%GPR6,%GPR3	
	NOP		;;10,12
	NOP		;;10,12
	lw	%GPR2,0(%GPR2)	
	NOP		;;12,14
	NOP		;;12,14
	lw	%GPR3,0(%GPR3)	
	NOP		;;14,16
	NOP		;;14,16
	multu	%GPR2,%GPR2,%GPR4	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	divu	%GPR2,%GPR2,%GPR3	
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	addu	%GPR1,%GPR2,%GPR1	
	NOP		;;24,28
	NOP		;;24,28
	NOP		;;24,28
	NOP		;;24,28
	multu	%GPR1,%GPR1,%GPR5	
	NOP		;;28,32
	NOP		;;28,32
	NOP		;;28,32
	NOP		;;28,32
	j	L56	
	NOP		
	NOP		
	NOP		
L51:
	lw	%GPR2,-4(%GPR30)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lw	%GPR2,0(%GPR2)	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$3	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	seq	%GPR27,%GPR2,%GPR3	
	bnez	%GPR27,L52	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L54	
	NOP		
	NOP		
	NOP		
	NOP		
L52:
	lw	%GPR4,-4(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$28	
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
	add	%GPR2,%GPR4,%GPR2	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	lw	%GPR2,0(%GPR2)	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	andi	%GPR2,%GPR2,$4096	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sne	%GPR27,%GPR2,%GPR3	
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
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$72	
	j	L55	
	NOP		
	NOP		
	NOP		
L54:
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
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$144	
	NOP		
	NOP		
	NOP		
L55:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lw	%GPR5,-4(%GPR30)	
	NOP		;;4,7
	NOP		;;4,7
	NOP		;;4,7
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$16	
	NOP		;;7,9
	NOP		;;7,9
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$20	
	NOP		;;9,11
	NOP		;;9,11
	add	%GPR3,%GPR5,%GPR3	
	NOP		;;11,13
	NOP		;;11,13
	add	%GPR4,%GPR5,%GPR4	
	NOP		;;13,15
	NOP		;;13,15
	lw	%GPR3,0(%GPR3)	
	NOP		;;15,17
	NOP		;;15,17
	lw	%GPR4,0(%GPR4)	
	NOP		;;17,19
	NOP		;;17,19
	multu	%GPR2,%GPR2,%GPR3	
	NOP		;;19,23
	NOP		;;19,23
	NOP		;;19,23
	NOP		;;19,23
	divu	%GPR2,%GPR2,%GPR4	
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	addu	%GPR1,%GPR2,%GPR1	
	NOP		
	NOP		
	NOP		
L56:
	lw	%GPR4,-8(%GPR30)	
	addui	%GPR2,%GPR1,$8	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$20	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	add	%GPR3,%GPR4,%GPR3	
	lw	%GPR4,-12(%GPR30)	
	NOP		;;9,12
	NOP		;;9,12
	NOP		;;9,12
	lw	%GPR3,0(%GPR3)	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	sub	%GPR3,%GPR4,%GPR3	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sgtu	%GPR27,%GPR2,%GPR3	
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
	lw	%GPR5,-8(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$20	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$24	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$60	
	add	%GPR1,%GPR5,%GPR1	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$1	
	add	%GPR2,%GPR5,%GPR2	
	add	%GPR3,%GPR5,%GPR3	
	lw	%GPR1,0(%GPR1)	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	sw	0(%GPR2),%GPR1	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sw	0(%GPR3),%GPR4	
	j	L8	
	NOP		
	NOP		
	NOP		
L58:
	lw	%GPR6,-8(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$20	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$24	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$12	
	add	%GPR2,%GPR6,%GPR2	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$0	
	add	%GPR3,%GPR6,%GPR3	
	add	%GPR4,%GPR6,%GPR4	
	lw	%GPR2,0(%GPR2)	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	add	%GPR1,%GPR2,%GPR1	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sw	0(%GPR3),%GPR1	
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	lw	%GPR1,0(%GPR4)	
	NOP		;;24,28
	NOP		;;24,28
	NOP		;;24,28
	NOP		;;24,28
	seq	%GPR27,%GPR1,%GPR5	
	bnez	%GPR27,L59	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L62	
	NOP		
	NOP		
	NOP		
	NOP		
L59:
	lw	%GPR2,-8(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$24	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$255	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR1,%GPR2,%GPR1	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	lw	%GPR2,0(%GPR1)	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	lbu	%GPR1,0(%GPR2)	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	seq	%GPR27,%GPR1,%GPR3	
	bnez	%GPR27,L60	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L63	
	NOP		
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
	ori	%GPR1,%GPR1,$1	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$224	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	add	%GPR1,%GPR2,%GPR1	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	lbu	%GPR1,0(%GPR1)	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	andi	%GPR1,%GPR1,$224	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	seq	%GPR27,%GPR1,%GPR3	
	bnez	%GPR27,L61	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L63	
	NOP		
	NOP		
	NOP		
	NOP		
L61:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$12	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$1	
	NOP		;;6,8
	NOP		;;6,8
	lw	%GPR2,-8(%GPR30)	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	add	%GPR1,%GPR2,%GPR1	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	sw	0(%GPR1),%GPR3	
	NOP		
	NOP		
	NOP		
L62:
	lw	%GPR3,-4(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$28	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$28	
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;8,10
	NOP		;;8,10
	add	%GPR2,%GPR3,%GPR2	
	NOP		;;10,12
	NOP		;;10,12
	lw	%GPR1,0(%GPR1)	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	ori	%GPR1,%GPR1,$8	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sw	0(%GPR2),%GPR1	
	j	L64	
	NOP		
	NOP		
	NOP		
	NOP		
L63:
	lw	%GPR5,-8(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$20	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$24	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$1	
	add	%GPR1,%GPR5,%GPR1	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$24	
	add	%GPR5,%GPR5,%GPR2	
	lw	%GPR2,-8(%GPR30)	
	lw	%GPR1,0(%GPR1)	
	NOP		;;12,15
	NOP		;;12,15
	NOP		;;12,15
	add	%GPR4,%GPR2,%GPR4	
	add	%GPR1,%GPR1,%GPR3	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		;;17,20
	NOP		;;17,20
	NOP		;;17,20
	sw	0(%GPR5),%GPR1	
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	lw	%GPR2,0(%GPR4)	
	j	L15	
	NOP		
	NOP		
	NOP		
L64:
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
mad_frame_init:
L65:
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
	add	%GPR28,%GPR1,%GPR0	
	NOP		
	NOP		
	NOP		
	add	%GPR1,%GPR28,%GPR0	
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
	jal	mad_header_init	
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
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$44	
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
	ori	%GPR2,%GPR2,$9264	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	add	%GPR1,%GPR28,%GPR1	
	NOP		;;17,19
	NOP		;;17,19
	add	%GPR2,%GPR28,%GPR2	
	NOP		;;19,21
	NOP		;;19,21
	sw	0(%GPR1),%GPR3	
	add	%GPR1,%GPR28,%GPR0	
	NOP		;;22,25
	NOP		;;22,25
	NOP		;;22,25
	sw	0(%GPR2),%GPR4	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	mad_frame_mute	
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
	j	L66	
	NOP		
	NOP		
	NOP		
L66:
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
mad_frame_finish:
L67:
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
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		;;5,7
	NOP		;;5,7
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$9264	
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	add	%GPR3,%GPR1,%GPR3	
	NOP		;;11,15
	NOP		;;11,15
	NOP		;;11,15
	NOP		;;11,15
	lw	%GPR3,0(%GPR3)	
	NOP		;;15,19
	NOP		;;15,19
	NOP		;;15,19
	NOP		;;15,19
	sne	%GPR27,%GPR3,%GPR2	
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
	NOP		;;0,2
	NOP		;;0,2
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$9264	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	add	%GPR1,%GPR1,%GPR3	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	sw	0(%GPR1),%GPR2	
	j	L69	
	NOP		
	NOP		
	NOP		
L69:
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
mad_frame_decode:
L70:
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
	sw	-12(%GPR30),%GPR1	
	sw	-16(%GPR30),%GPR2	
	add	%GPR5,%GPR2,%GPR0	
	NOP		
	NOP		
	NOP		
	NOP		;;4,9
	NOP		;;4,9
	NOP		;;4,9
	NOP		;;4,9
	NOP		;;4,9
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$56	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$44	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$28	
	NOP		;;11,13
	NOP		;;11,13
	add	%GPR1,%GPR5,%GPR1	
	lw	%GPR5,-12(%GPR30)	
	NOP		;;14,16
	NOP		;;14,16
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	lw	%GPR1,0(%GPR1)	
	add	%GPR2,%GPR5,%GPR2	
	add	%GPR3,%GPR5,%GPR3	
	NOP		;;19,22
	NOP		;;19,22
	NOP		;;19,22
	sw	0(%GPR2),%GPR1	
	NOP		;;22,26
	NOP		;;22,26
	NOP		;;22,26
	NOP		;;22,26
	lw	%GPR1,0(%GPR3)	
	NOP		;;26,30
	NOP		;;26,30
	NOP		;;26,30
	NOP		;;26,30
	andi	%GPR1,%GPR1,$8	
	NOP		;;30,34
	NOP		;;30,34
	NOP		;;30,34
	NOP		;;30,34
	seq	%GPR27,%GPR1,%GPR4	
	bnez	%GPR27,L71	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L74	
	NOP		
	NOP		
	NOP		
	NOP		
L71:
	lw	%GPR1,-12(%GPR30)	
	lw	%GPR2,-16(%GPR30)	
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	mad_header_decode	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;5,10
	NOP		;;5,10
	NOP		;;5,10
	NOP		;;5,10
	NOP		;;5,10
	lhi	%GPR1,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$-1	
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	seq	%GPR27,%GPR28,%GPR1	
	bnez	%GPR27,L72	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L74	
	NOP		
	NOP		
	NOP		
	NOP		
L72:
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
	NOP		
	NOP		
	NOP		
L73:
	NOP		;;0,2
	NOP		;;0,2
	lw	%GPR3,-16(%GPR30)	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$44	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		;;5,7
	NOP		;;5,7
	lhi	%GPR28,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$-1	
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	sw	0(%GPR1),%GPR2	
	j	L80	
	NOP		
	NOP		
	NOP		
	NOP		
L74:
	lw	%GPR4,-12(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$28	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$28	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR1,%GPR4,%GPR1	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$4	
	add	%GPR2,%GPR4,%GPR2	
	NOP		;;10,12
	NOP		;;10,12
	lw	%GPR1,0(%GPR1)	
	LI	%GPR4, *L3	
	NOP		;;13,16
	NOP		;;13,16
	NOP		;;13,16
	andi	%GPR5,%GPR1,$-9	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;17,20
	NOP		;;17,20
	NOP		;;17,20
	sw	0(%GPR2),%GPR5	
	lw	%GPR1,-12(%GPR30)	
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	add	%GPR2,%GPR1,%GPR0	
	lw	%GPR1,0(%GPR1)	
	NOP		;;26,30
	NOP		;;26,30
	NOP		;;26,30
	NOP		;;26,30
	subi	%GPR1,%GPR1,$1	
	NOP		;;30,34
	NOP		;;30,34
	NOP		;;30,34
	NOP		;;30,34
	mult	%GPR1,%GPR1,%GPR3	
	NOP		;;34,38
	NOP		;;34,38
	NOP		;;34,38
	NOP		;;34,38
	add	%GPR1,%GPR4,%GPR1	
	NOP		;;38,42
	NOP		;;38,42
	NOP		;;38,42
	NOP		;;38,42
	lw	%GPR3,0(%GPR1)	
	lw	%GPR1,-16(%GPR30)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jalr	%GPR3	
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
	lhi	%GPR1,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$-1	
	NOP		;;49,53
	NOP		;;49,53
	NOP		;;49,53
	NOP		;;49,53
	seq	%GPR27,%GPR28,%GPR1	
	bnez	%GPR27,L75	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L77	
	NOP		
	NOP		
	NOP		
	NOP		
L75:
	lw	%GPR3,-16(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$60	
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
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	lw	%GPR1,0(%GPR1)	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	andi	%GPR1,%GPR1,$65280	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L76	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L73	
	NOP		
	NOP		
	NOP		
	NOP		
L76:
	lw	%GPR3,-16(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$20	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$24	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;8,10
	NOP		;;8,10
	add	%GPR2,%GPR3,%GPR2	
	NOP		;;10,12
	NOP		;;10,12
	lw	%GPR1,0(%GPR1)	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	sw	0(%GPR2),%GPR1	
	j	L73	
	NOP		
	NOP		
	NOP		
L77:
	lw	%GPR1,-12(%GPR30)	
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
	ori	%GPR2,%GPR2,$3	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	sne	%GPR27,%GPR1,%GPR2	
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
	lw	%GPR3,-16(%GPR30)	
	subi	%GPR1,%GPR30,$8	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$24	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	add	%GPR2,%GPR3,%GPR2	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	lw	%GPR2,0(%GPR2)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	mad_bit_init	
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
	NOP		;;13,16
	NOP		;;13,16
	NOP		;;13,16
	lw	%GPR4,-16(%GPR30)	
	subi	%GPR2,%GPR30,$8	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$44	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$28	
	NOP		;;19,22
	NOP		;;19,22
	NOP		;;19,22
	add	%GPR3,%GPR4,%GPR3	
	add	%GPR1,%GPR4,%GPR1	
	NOP		;;23,26
	NOP		;;23,26
	NOP		;;23,26
	sw	-20(%GPR30),%GPR3	
	NOP		;;26,28
	NOP		;;26,28
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	mad_bit_length	
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
	NOP		;;29,33
	NOP		;;29,33
	NOP		;;29,33
	NOP		;;29,33
	sw	0(%GPR1),%GPR28	
	NOP		
	NOP		
	NOP		
L79:
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
	j	L80	
	NOP		
	NOP		
	NOP		
	NOP		
L80:
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
mad_frame_mute:
L81:
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
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		
	NOP		
	NOP		
L82:
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
L83:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4656	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$128	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	add	%GPR4,%GPR1,%GPR4	
	multu	%GPR5,%GPR2,%GPR5	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$4	
	lhi	%GPR11,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR11,%GPR11,$4	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$4656	
	lhi	%GPR8,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR8,%GPR8,$128	
	NOP		;;13,16
	NOP		;;13,16
	NOP		;;13,16
	add	%GPR4,%GPR4,%GPR5	
	multu	%GPR5,%GPR3,%GPR11	
	multu	%GPR6,%GPR3,%GPR6	
	NOP		;;18,20
	NOP		;;18,20
	add	%GPR7,%GPR1,%GPR7	
	multu	%GPR8,%GPR2,%GPR8	
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$48	
	lhi	%GPR10,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR10,%GPR10,$128	
	NOP		;;23,25
	NOP		;;23,25
	add	%GPR4,%GPR4,%GPR6	
	lhi	%GPR11,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR11,%GPR11,$0	
	add	%GPR7,%GPR7,%GPR8	
	add	%GPR9,%GPR1,%GPR9	
	multu	%GPR10,%GPR2,%GPR10	
	lhi	%GPR12,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR12,%GPR12,$4	
	sw	0(%GPR4),%GPR11	
	add	%GPR4,%GPR7,%GPR5	
	NOP		;;32,34
	NOP		;;32,34
	multu	%GPR6,%GPR3,%GPR12	
	add	%GPR8,%GPR9,%GPR10	
	lw	%GPR4,0(%GPR4)	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$32	
	addui	%GPR3,%GPR3,$1	
	add	%GPR6,%GPR8,%GPR6	
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	sw	0(%GPR6),%GPR4	
	sltu	%GPR27,%GPR3,%GPR5	
	bnez	%GPR27,L83	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L84	
	NOP		
	NOP		
	NOP		
	NOP		
L84:
	addui	%GPR2,%GPR2,$1	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$36	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sltu	%GPR27,%GPR2,%GPR3	
	bnez	%GPR27,L82	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L85	
	NOP		
	NOP		
	NOP		
	NOP		
L85:
	NOP		;;0,2
	NOP		;;0,2
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$9264	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	add	%GPR3,%GPR1,%GPR3	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	lw	%GPR3,0(%GPR3)	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	sne	%GPR27,%GPR3,%GPR2	
	bnez	%GPR27,L86	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L90	
	NOP		
	NOP		
	NOP		
	NOP		
L86:
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
L87:
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
L88:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$9264	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$2304	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$72	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$4	
	add	%GPR4,%GPR1,%GPR4	
	NOP		;;8,10
	NOP		;;8,10
	multu	%GPR6,%GPR3,%GPR6	
	multu	%GPR7,%GPR2,%GPR7	
	lw	%GPR4,0(%GPR4)	
	NOP		;;12,14
	NOP		;;12,14
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$9264	
	NOP		;;14,16
	NOP		;;14,16
	add	%GPR4,%GPR4,%GPR5	
	lhi	%GPR8,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR8,%GPR8,$0	
	add	%GPR5,%GPR1,%GPR9	
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$72	
	add	%GPR4,%GPR4,%GPR6	
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	add	%GPR4,%GPR4,%GPR7	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$9264	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$2304	
	NOP		;;26,28
	NOP		;;26,28
	sw	0(%GPR4),%GPR8	
	multu	%GPR8,%GPR3,%GPR9	
	add	%GPR6,%GPR1,%GPR6	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$72	
	lw	%GPR5,0(%GPR5)	
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$4	
	NOP		;;33,35
	NOP		;;33,35
	multu	%GPR4,%GPR3,%GPR4	
	add	%GPR5,%GPR5,%GPR7	
	lw	%GPR6,0(%GPR6)	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$4	
	multu	%GPR9,%GPR2,%GPR9	
	add	%GPR5,%GPR5,%GPR8	
	add	%GPR4,%GPR6,%GPR4	
	NOP		;;41,43
	NOP		;;41,43
	multu	%GPR7,%GPR2,%GPR7	
	add	%GPR5,%GPR5,%GPR9	
	addui	%GPR3,%GPR3,$1	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$32	
	add	%GPR4,%GPR4,%GPR7	
	lw	%GPR5,0(%GPR5)	
	NOP		;;48,52
	NOP		;;48,52
	NOP		;;48,52
	NOP		;;48,52
	sw	0(%GPR4),%GPR5	
	sltu	%GPR27,%GPR3,%GPR6	
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
L89:
	addui	%GPR2,%GPR2,$1	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$18	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sltu	%GPR27,%GPR2,%GPR3	
	bnez	%GPR27,L87	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L90	
	NOP		
	NOP		
	NOP		
	NOP		
L90:
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
decode_header:
L91:
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
	sw	-4(%GPR30),%GPR1	
	sw	-8(%GPR30),%GPR2	
	add	%GPR5,%GPR2,%GPR0	
	NOP		
	NOP		
	NOP		
	NOP		;;4,9
	NOP		;;4,9
	NOP		;;4,9
	NOP		;;4,9
	NOP		;;4,9
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$28	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$28	
	NOP		;;10,12
	NOP		;;10,12
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$32	
	add	%GPR1,%GPR5,%GPR1	
	lw	%GPR5,-4(%GPR30)	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	NOP		;;15,17
	NOP		;;15,17
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$0	
	add	%GPR7,%GPR5,%GPR0	
	add	%GPR5,%GPR5,%GPR2	
	NOP		;;19,21
	NOP		;;19,21
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$11	
	add	%GPR3,%GPR7,%GPR3	
	sw	0(%GPR5),%GPR4	
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	sw	0(%GPR3),%GPR6	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	mad_bit_skip	
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
	NOP		;;28,30
	NOP		;;28,30
	lw	%GPR3,-8(%GPR30)	
	NOP		;;30,33
	NOP		;;30,33
	NOP		;;30,33
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$28	
	NOP		;;33,35
	NOP		;;33,35
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1	
	NOP		;;35,37
	NOP		;;35,37
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;37,42
	NOP		;;37,42
	NOP		;;37,42
	NOP		;;37,42
	NOP		;;37,42
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	mad_bit_read	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;42,47
	NOP		;;42,47
	NOP		;;42,47
	NOP		;;42,47
	NOP		;;42,47
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;47,51
	NOP		;;47,51
	NOP		;;47,51
	NOP		;;47,51
	seq	%GPR27,%GPR28,%GPR1	
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
	lw	%GPR3,-4(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$28	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$28	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;8,10
	NOP		;;8,10
	add	%GPR2,%GPR3,%GPR2	
	NOP		;;10,12
	NOP		;;10,12
	lw	%GPR1,0(%GPR1)	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	ori	%GPR1,%GPR1,$16384	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sw	0(%GPR2),%GPR1	
	NOP		
	NOP		
	NOP		
L93:
	lw	%GPR3,-8(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$28	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	mad_bit_read	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;13,18
	NOP		;;13,18
	NOP		;;13,18
	NOP		;;13,18
	NOP		;;13,18
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	seq	%GPR27,%GPR28,%GPR1	
	bnez	%GPR27,L94	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L97	
	NOP		
	NOP		
	NOP		
	NOP		
L94:
	lw	%GPR3,-4(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$28	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$28	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;8,10
	NOP		;;8,10
	add	%GPR2,%GPR3,%GPR2	
	NOP		;;10,12
	NOP		;;10,12
	lw	%GPR1,0(%GPR1)	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	ori	%GPR1,%GPR1,$4096	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sw	0(%GPR2),%GPR1	
	NOP		
	NOP		
	NOP		
L95:
	lw	%GPR3,-8(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$28	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$2	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	mad_bit_read	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;13,15
	NOP		;;13,15
	lw	%GPR3,-4(%GPR30)	
	NOP		;;15,18
	NOP		;;15,18
	NOP		;;15,18
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$4	
	NOP		;;18,20
	NOP		;;18,20
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	NOP		;;20,22
	NOP		;;20,22
	subu	%GPR1,%GPR1,%GPR28	
	NOP		;;22,26
	NOP		;;22,26
	NOP		;;22,26
	NOP		;;22,26
	sw	0(%GPR3),%GPR1	
	add	%GPR1,%GPR3,%GPR0	
	NOP		;;27,31
	NOP		;;27,31
	NOP		;;27,31
	NOP		;;27,31
	lw	%GPR1,0(%GPR1)	
	NOP		;;31,35
	NOP		;;31,35
	NOP		;;31,35
	NOP		;;31,35
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L96	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L99	
	NOP		
	NOP		
	NOP		
	NOP		
L96:
	NOP		;;0,2
	NOP		;;0,2
	lw	%GPR3,-8(%GPR30)	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$60	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$258	
	NOP		;;5,7
	NOP		;;5,7
	lhi	%GPR28,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$-1	
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	sw	0(%GPR1),%GPR2	
	j	L122	
	NOP		
	NOP		
	NOP		
	NOP		
L97:
	lw	%GPR3,-4(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$28	
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
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	lw	%GPR1,0(%GPR1)	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	andi	%GPR1,%GPR1,$16384	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sne	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L98	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L95	
	NOP		
	NOP		
	NOP		
	NOP		
L98:
	NOP		;;0,2
	NOP		;;0,2
	lw	%GPR3,-8(%GPR30)	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$60	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$257	
	NOP		;;5,7
	NOP		;;5,7
	lhi	%GPR28,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$-1	
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	sw	0(%GPR1),%GPR2	
	j	L122	
	NOP		
	NOP		
	NOP		
	NOP		
L99:
	lw	%GPR3,-8(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$28	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	mad_bit_read	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;13,18
	NOP		;;13,18
	NOP		;;13,18
	NOP		;;13,18
	NOP		;;13,18
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	seq	%GPR27,%GPR28,%GPR1	
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
	lw	%GPR3,-4(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$28	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$28	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;8,10
	NOP		;;8,10
	add	%GPR2,%GPR3,%GPR2	
	NOP		;;10,12
	NOP		;;10,12
	lw	%GPR1,0(%GPR1)	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	ori	%GPR1,%GPR1,$16	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sw	0(%GPR2),%GPR1	
	NOP		
	NOP		
	NOP		
L101:
	lw	%GPR3,-8(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$28	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	mad_bit_read	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;13,18
	NOP		;;13,18
	NOP		;;13,18
	NOP		;;13,18
	NOP		;;13,18
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$15	
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	seq	%GPR27,%GPR28,%GPR1	
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
	NOP		;;0,2
	NOP		;;0,2
	lw	%GPR3,-8(%GPR30)	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$60	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$259	
	NOP		;;5,7
	NOP		;;5,7
	lhi	%GPR28,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$-1	
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	sw	0(%GPR1),%GPR2	
	j	L122	
	NOP		
	NOP		
	NOP		
	NOP		
L103:
	lw	%GPR3,-4(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$28	
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
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	lw	%GPR1,0(%GPR1)	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	andi	%GPR1,%GPR1,$4096	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sne	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L104	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L105	
	NOP		
	NOP		
	NOP		
	NOP		
L104:
	lw	%GPR1,-4(%GPR30)	
	NOP		;;0,3
	NOP		;;0,3
	NOP		;;0,3
	LI	%GPR2, *L1	
	lw	%GPR1,0(%GPR1)	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$60	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	NOP		;;6,8
	NOP		;;6,8
	srai	%GPR1,%GPR1,$1	
	NOP		;;8,10
	NOP		;;8,10
	multu	%GPR4,%GPR28,%GPR4	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$16	
	addi	%GPR1,%GPR1,$3	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	mult	%GPR1,%GPR1,%GPR3	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	add	%GPR1,%GPR2,%GPR1	
	lw	%GPR3,-4(%GPR30)	
	NOP		;;21,24
	NOP		;;21,24
	NOP		;;21,24
	add	%GPR1,%GPR1,%GPR4	
	add	%GPR3,%GPR3,%GPR5	
	NOP		;;25,28
	NOP		;;25,28
	NOP		;;25,28
	lw	%GPR1,0(%GPR1)	
	NOP		;;28,32
	NOP		;;28,32
	NOP		;;28,32
	NOP		;;28,32
	sw	0(%GPR3),%GPR1	
	j	L106	
	NOP		
	NOP		
	NOP		
L105:
	lw	%GPR1,-4(%GPR30)	
	NOP		;;0,3
	NOP		;;0,3
	NOP		;;0,3
	LI	%GPR2, *L1	
	lw	%GPR1,0(%GPR1)	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$60	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	NOP		;;6,8
	NOP		;;6,8
	subi	%GPR1,%GPR1,$1	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	mult	%GPR1,%GPR1,%GPR3	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	multu	%GPR3,%GPR28,%GPR4	
	add	%GPR1,%GPR2,%GPR1	
	lw	%GPR2,-4(%GPR30)	
	NOP		;;18,20
	NOP		;;18,20
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$16	
	add	%GPR1,%GPR1,%GPR3	
	NOP		;;21,24
	NOP		;;21,24
	NOP		;;21,24
	add	%GPR2,%GPR2,%GPR4	
	lw	%GPR1,0(%GPR1)	
	NOP		;;25,29
	NOP		;;25,29
	NOP		;;25,29
	NOP		;;25,29
	sw	0(%GPR2),%GPR1	
	NOP		
	NOP		
	NOP		
L106:
	lw	%GPR3,-8(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$28	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$2	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	mad_bit_read	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;13,18
	NOP		;;13,18
	NOP		;;13,18
	NOP		;;13,18
	NOP		;;13,18
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$3	
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	seq	%GPR27,%GPR28,%GPR1	
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
	NOP		;;0,2
	NOP		;;0,2
	lw	%GPR3,-8(%GPR30)	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$60	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$260	
	NOP		;;5,7
	NOP		;;5,7
	lhi	%GPR28,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$-1	
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	sw	0(%GPR1),%GPR2	
	j	L122	
	NOP		
	NOP		
	NOP		
	NOP		
L108:
	LI	%GPR1, *L2	
	NOP		;;1,3
	NOP		;;1,3
	lw	%GPR5,-4(%GPR30)	
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
	ori	%GPR3,%GPR3,$20	
	add	%GPR6,%GPR5,%GPR0	
	multu	%GPR2,%GPR28,%GPR2	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$28	
	add	%GPR3,%GPR5,%GPR3	
	NOP		;;10,12
	NOP		;;10,12
	add	%GPR1,%GPR1,%GPR2	
	add	%GPR4,%GPR6,%GPR4	
	NOP		;;13,15
	NOP		;;13,15
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$0	
	lw	%GPR1,0(%GPR1)	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sw	0(%GPR3),%GPR1	
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	lw	%GPR1,0(%GPR4)	
	NOP		;;24,28
	NOP		;;24,28
	NOP		;;24,28
	NOP		;;24,28
	andi	%GPR1,%GPR1,$4096	
	NOP		;;28,32
	NOP		;;28,32
	NOP		;;28,32
	NOP		;;28,32
	sne	%GPR27,%GPR1,%GPR5	
	bnez	%GPR27,L109	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L111	
	NOP		
	NOP		
	NOP		
	NOP		
L109:
	lw	%GPR5,-4(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$20	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$20	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$2	
	add	%GPR1,%GPR5,%GPR1	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$28	
	add	%GPR2,%GPR5,%GPR2	
	NOP		;;10,12
	NOP		;;10,12
	lw	%GPR1,0(%GPR1)	
	add	%GPR4,%GPR5,%GPR4	
	NOP		;;13,15
	NOP		;;13,15
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$0	
	divu	%GPR1,%GPR1,%GPR3	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sw	0(%GPR2),%GPR1	
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	lw	%GPR1,0(%GPR4)	
	NOP		;;24,28
	NOP		;;24,28
	NOP		;;24,28
	NOP		;;24,28
	andi	%GPR1,%GPR1,$16384	
	NOP		;;28,32
	NOP		;;28,32
	NOP		;;28,32
	NOP		;;28,32
	sne	%GPR27,%GPR1,%GPR5	
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
	lw	%GPR4,-4(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$20	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$20	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$2	
	add	%GPR1,%GPR4,%GPR1	
	NOP		;;8,10
	NOP		;;8,10
	add	%GPR2,%GPR4,%GPR2	
	NOP		;;10,12
	NOP		;;10,12
	lw	%GPR1,0(%GPR1)	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	divu	%GPR1,%GPR1,%GPR3	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sw	0(%GPR2),%GPR1	
	NOP		
	NOP		
	NOP		
L111:
	lw	%GPR3,-8(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$28	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	mad_bit_read	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;13,18
	NOP		;;13,18
	NOP		;;13,18
	NOP		;;13,18
	NOP		;;13,18
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	sne	%GPR27,%GPR28,%GPR1	
	bnez	%GPR27,L112	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L113	
	NOP		
	NOP		
	NOP		
	NOP		
L112:
	lw	%GPR3,-4(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$28	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$28	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;8,10
	NOP		;;8,10
	add	%GPR2,%GPR3,%GPR2	
	NOP		;;10,12
	NOP		;;10,12
	lw	%GPR1,0(%GPR1)	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	ori	%GPR1,%GPR1,$128	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sw	0(%GPR2),%GPR1	
	NOP		
	NOP		
	NOP		
L113:
	lw	%GPR3,-8(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$28	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	mad_bit_read	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;13,18
	NOP		;;13,18
	NOP		;;13,18
	NOP		;;13,18
	NOP		;;13,18
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	sne	%GPR27,%GPR28,%GPR1	
	bnez	%GPR27,L114	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L115	
	NOP		
	NOP		
	NOP		
	NOP		
L114:
	lw	%GPR3,-4(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$32	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$32	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;8,10
	NOP		;;8,10
	add	%GPR2,%GPR3,%GPR2	
	NOP		;;10,12
	NOP		;;10,12
	lw	%GPR1,0(%GPR1)	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	ori	%GPR1,%GPR1,$256	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sw	0(%GPR2),%GPR1	
	NOP		
	NOP		
	NOP		
L115:
	lw	%GPR3,-8(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$28	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$2	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	mad_bit_read	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;13,15
	NOP		;;13,15
	lw	%GPR5,-8(%GPR30)	
	NOP		;;15,18
	NOP		;;15,18
	NOP		;;15,18
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$28	
	NOP		;;18,20
	NOP		;;18,20
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$3	
	add	%GPR1,%GPR5,%GPR1	
	lw	%GPR5,-4(%GPR30)	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$2	
	subu	%GPR3,%GPR3,%GPR28	
	NOP		;;25,27
	NOP		;;25,27
	add	%GPR4,%GPR5,%GPR4	
	NOP		;;27,31
	NOP		;;27,31
	NOP		;;27,31
	NOP		;;27,31
	sw	0(%GPR4),%GPR3	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	mad_bit_read	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;32,34
	NOP		;;32,34
	lw	%GPR4,-8(%GPR30)	
	NOP		;;34,37
	NOP		;;34,37
	NOP		;;34,37
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$28	
	NOP		;;37,39
	NOP		;;37,39
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$8	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1	
	add	%GPR1,%GPR4,%GPR1	
	lw	%GPR4,-4(%GPR30)	
	NOP		;;42,46
	NOP		;;42,46
	NOP		;;42,46
	NOP		;;42,46
	add	%GPR3,%GPR4,%GPR3	
	NOP		;;46,50
	NOP		;;46,50
	NOP		;;46,50
	NOP		;;46,50
	sw	0(%GPR3),%GPR28	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	mad_bit_read	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;51,56
	NOP		;;51,56
	NOP		;;51,56
	NOP		;;51,56
	NOP		;;51,56
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;56,60
	NOP		;;56,60
	NOP		;;56,60
	NOP		;;56,60
	sne	%GPR27,%GPR28,%GPR1	
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
	lw	%GPR3,-4(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$28	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$28	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;8,10
	NOP		;;8,10
	add	%GPR2,%GPR3,%GPR2	
	NOP		;;10,12
	NOP		;;10,12
	lw	%GPR1,0(%GPR1)	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	ori	%GPR1,%GPR1,$32	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sw	0(%GPR2),%GPR1	
	NOP		
	NOP		
	NOP		
L117:
	lw	%GPR3,-8(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$28	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	mad_bit_read	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;13,18
	NOP		;;13,18
	NOP		;;13,18
	NOP		;;13,18
	NOP		;;13,18
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	sne	%GPR27,%GPR28,%GPR1	
	bnez	%GPR27,L118	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L119	
	NOP		
	NOP		
	NOP		
	NOP		
L118:
	lw	%GPR3,-4(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$28	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$28	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;8,10
	NOP		;;8,10
	add	%GPR2,%GPR3,%GPR2	
	NOP		;;10,12
	NOP		;;10,12
	lw	%GPR1,0(%GPR1)	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	ori	%GPR1,%GPR1,$64	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sw	0(%GPR2),%GPR1	
	NOP		
	NOP		
	NOP		
L119:
	lw	%GPR3,-8(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$28	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$2	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	mad_bit_read	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;13,15
	NOP		;;13,15
	lw	%GPR4,-4(%GPR30)	
	NOP		;;15,18
	NOP		;;15,18
	NOP		;;15,18
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$12	
	NOP		;;18,20
	NOP		;;18,20
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$28	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	add	%GPR1,%GPR4,%GPR1	
	NOP		;;22,24
	NOP		;;22,24
	add	%GPR2,%GPR4,%GPR2	
	NOP		;;24,26
	NOP		;;24,26
	sw	0(%GPR1),%GPR28	
	NOP		;;26,30
	NOP		;;26,30
	NOP		;;26,30
	NOP		;;26,30
	lw	%GPR1,0(%GPR2)	
	NOP		;;30,34
	NOP		;;30,34
	NOP		;;30,34
	NOP		;;30,34
	andi	%GPR1,%GPR1,$16	
	NOP		;;34,38
	NOP		;;34,38
	NOP		;;34,38
	NOP		;;34,38
	sne	%GPR27,%GPR1,%GPR3	
	bnez	%GPR27,L120	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L121	
	NOP		
	NOP		
	NOP		
	NOP		
L120:
	lw	%GPR3,-8(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$28	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$16	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	mad_bit_read	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;13,15
	NOP		;;13,15
	lw	%GPR2,-4(%GPR30)	
	NOP		;;15,18
	NOP		;;15,18
	NOP		;;15,18
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$26	
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	add	%GPR1,%GPR2,%GPR1	
	NOP		;;22,26
	NOP		;;22,26
	NOP		;;22,26
	NOP		;;22,26
	sh	0(%GPR1),%GPR28	
	NOP		
	NOP		
	NOP		
L121:
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
	j	L122	
	NOP		
	NOP		
	NOP		
	NOP		
L122:
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
free_bitrate:
L123:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$136	
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-112(%GPR30),%GPR1	
	sw	-116(%GPR30),%GPR2	
	NOP		
	NOP		
	NOP		
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
	ori	%GPR3,%GPR3,$0	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$28	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		;;10,12
	NOP		;;10,12
	sw	-120(%GPR30),%GPR3	
	lw	%GPR3,-116(%GPR30)	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	lw	%GPR1,0(%GPR1)	
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	andi	%GPR1,%GPR1,$128	
	NOP		;;25,29
	NOP		;;25,29
	NOP		;;25,29
	NOP		;;25,29
	sne	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L124	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L125	
	NOP		
	NOP		
	NOP		
	NOP		
L124:
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
	j	L126	
	NOP		
	NOP		
	NOP		
L125:
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
L126:
	sw	-124(%GPR30),%GPR1	
	lw	%GPR1,-116(%GPR30)	
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	lw	%GPR1,0(%GPR1)	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$3	
	NOP		;;6,10
	NOP		;;6,10
	NOP		;;6,10
	NOP		;;6,10
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L127	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L129	
	NOP		
	NOP		
	NOP		
	NOP		
L127:
	lw	%GPR3,-116(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$28	
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
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	lw	%GPR1,0(%GPR1)	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	andi	%GPR1,%GPR1,$4096	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sne	%GPR27,%GPR1,%GPR2	
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
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$72	
	j	L130	
	NOP		
	NOP		
	NOP		
L129:
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
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$144	
	NOP		
	NOP		
	NOP		
L130:
	sw	-128(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
L131:
	lw	%GPR1,-112(%GPR30)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	mad_stream_sync	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
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
	seq	%GPR27,%GPR28,%GPR1	
	bnez	%GPR27,L132	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L142	
	NOP		
	NOP		
	NOP		
	NOP		
L132:
	subi	%GPR2,%GPR30,$64	
	subi	%GPR1,%GPR30,$108	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	decode_header	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
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
	ori	%GPR1,%GPR1,$0	
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	seq	%GPR27,%GPR28,%GPR1	
	bnez	%GPR27,L133	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L137	
	NOP		
	NOP		
	NOP		
	NOP		
L133:
	lw	%GPR2,-116(%GPR30)	
	lw	%GPR1,-108(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lw	%GPR2,0(%GPR2)	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L134	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L137	
	NOP		
	NOP		
	NOP		
	NOP		
L134:
	NOP		;;0,2
	NOP		;;0,2
	subi	%GPR2,%GPR30,$108	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$20	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$1	
	NOP		;;5,7
	NOP		;;5,7
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$20	
	NOP		;;7,9
	NOP		;;7,9
	add	%GPR1,%GPR2,%GPR3	
	lw	%GPR2,-116(%GPR30)	
	NOP		;;10,13
	NOP		;;10,13
	NOP		;;10,13
	lw	%GPR1,0(%GPR1)	
	add	%GPR2,%GPR2,%GPR4	
	NOP		;;14,18
	NOP		;;14,18
	NOP		;;14,18
	NOP		;;14,18
	lw	%GPR2,0(%GPR2)	
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L135	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L138	
	NOP		
	NOP		
	NOP		
	NOP		
L135:
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
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$28	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	lw	%GPR1,-112(%GPR30)	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;12,17
	NOP		;;12,17
	NOP		;;12,17
	NOP		;;12,17
	NOP		;;12,17
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	mad_bit_nextbyte	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR1,-116(%GPR30)	
	NOP		;;18,20
	NOP		;;18,20
	lw	%GPR4,-112(%GPR30)	
	NOP		;;20,22
	NOP		;;20,22
	lw	%GPR2,0(%GPR1)	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$20	
	NOP		;;23,25
	NOP		;;23,25
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$1	
	NOP		;;25,27
	NOP		;;25,27
	add	%GPR1,%GPR4,%GPR1	
	NOP		;;27,31
	NOP		;;27,31
	NOP		;;27,31
	NOP		;;27,31
	lw	%GPR1,0(%GPR1)	
	NOP		;;31,35
	NOP		;;31,35
	NOP		;;31,35
	NOP		;;31,35
	sub	%GPR1,%GPR28,%GPR1	
	seq	%GPR27,%GPR2,%GPR3	
	bnez	%GPR27,L136	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L140	
	NOP		
	NOP		
	NOP		
	NOP		
L136:
	lw	%GPR5,-124(%GPR30)	
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
	ori	%GPR3,%GPR3,$20	
	NOP		;;6,8
	NOP		;;6,8
	multu	%GPR2,%GPR5,%GPR2	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$48000	
	NOP		;;9,12
	NOP		;;9,12
	NOP		;;9,12
	lw	%GPR5,-116(%GPR30)	
	subu	%GPR1,%GPR1,%GPR2	
	NOP		;;13,16
	NOP		;;13,16
	NOP		;;13,16
	add	%GPR3,%GPR5,%GPR3	
	addui	%GPR1,%GPR1,$4	
	NOP		;;17,20
	NOP		;;17,20
	NOP		;;17,20
	lw	%GPR2,0(%GPR3)	
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	multu	%GPR1,%GPR1,%GPR2	
	NOP		;;24,28
	NOP		;;24,28
	NOP		;;24,28
	NOP		;;24,28
	divu	%GPR1,%GPR1,%GPR4	
	NOP		;;28,32
	NOP		;;28,32
	NOP		;;28,32
	NOP		;;28,32
	sw	-120(%GPR30),%GPR1	
	j	L141	
	NOP		
	NOP		
	NOP		
L137:
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
L138:
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
L139:
	lw	%GPR3,-112(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$28	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$8	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR1,%GPR3,%GPR1	
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	mad_bit_skip	
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
	j	L131	
	NOP		
	NOP		
	NOP		
L140:
	lw	%GPR2,-124(%GPR30)	
	NOP		;;0,2
	NOP		;;0,2
	lw	%GPR4,-116(%GPR30)	
	NOP		;;2,4
	NOP		;;2,4
	subu	%GPR1,%GPR1,%GPR2	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$20	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	addui	%GPR1,%GPR1,$1	
	add	%GPR2,%GPR4,%GPR2	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$1000	
	NOP		;;10,13
	NOP		;;10,13
	NOP		;;10,13
	lw	%GPR2,0(%GPR2)	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	multu	%GPR1,%GPR1,%GPR2	
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	lw	%GPR2,-128(%GPR30)	
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	divu	%GPR1,%GPR1,%GPR2	
	NOP		;;25,29
	NOP		;;25,29
	NOP		;;25,29
	NOP		;;25,29
	divu	%GPR1,%GPR1,%GPR3	
	NOP		;;29,33
	NOP		;;29,33
	NOP		;;29,33
	NOP		;;29,33
	sw	-120(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
L141:
	lw	%GPR2,-120(%GPR30)	
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
	sgeu	%GPR27,%GPR2,%GPR1	
	bnez	%GPR27,L143	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L139	
	NOP		
	NOP		
	NOP		
	NOP		
L142:
	lw	%GPR2,-120(%GPR30)	
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
	sltu	%GPR27,%GPR2,%GPR1	
	bnez	%GPR27,L146	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L143	
	NOP		
	NOP		
	NOP		
	NOP		
L143:
	lw	%GPR1,-116(%GPR30)	
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
	ori	%GPR2,%GPR2,$3	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L144	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L147	
	NOP		
	NOP		
	NOP		
	NOP		
L144:
	lw	%GPR2,-120(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$640	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sgtu	%GPR27,%GPR2,%GPR1	
	bnez	%GPR27,L145	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L147	
	NOP		
	NOP		
	NOP		
	NOP		
L145:
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
	NOP		
	NOP		
	NOP		
L146:
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
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$60	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$257	
	lhi	%GPR28,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$-1	
	lw	%GPR1,-112(%GPR30)	
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
	j	L148	
	NOP		
	NOP		
	NOP		
	NOP		
L147:
	lw	%GPR3,-112(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$16	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1000	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR3,%GPR3,%GPR1	
	lw	%GPR1,-120(%GPR30)	
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		;;10,13
	NOP		;;10,13
	NOP		;;10,13
	multu	%GPR2,%GPR1,%GPR2	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	sw	0(%GPR3),%GPR2	
	NOP		;;18,21
	NOP		;;18,21
	NOP		;;18,21
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	j	L148	
	NOP		
	NOP		
	NOP		
	NOP		
L148:
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
