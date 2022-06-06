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
	.addressing	Word
mad_header_init:
L4:
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
				; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop	;;8,10
	nop	;;8,10
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$8	
	sw	0(%GPR1),%GPR3	
	add	%GPR2,%GPR1,%GPR2	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2),%GPR3	
	add	%GPR3,%GPR1,%GPR4	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$12	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$16	
	nop	;;21,23
	nop	;;21,23
	sw	0(%GPR3),%GPR2	
	add	%GPR3,%GPR1,%GPR5	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	;;25,29
	nop	;;25,29
	nop	;;25,29
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR2	
	add	%GPR3,%GPR1,%GPR4	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$20	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$24	
	nop	;;33,35
	nop	;;33,35
	sw	0(%GPR3),%GPR2	
	add	%GPR3,%GPR1,%GPR5	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	;;37,41
	nop	;;37,41
	nop	;;37,41
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR2	
	add	%GPR3,%GPR1,%GPR4	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$26	
	nop	;;44,47
	nop	;;44,47
	nop	;;44,47
	sh	0(%GPR3),%GPR2	
	add	%GPR3,%GPR1,%GPR5	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$28	
	nop	;;50,52
	nop	;;50,52
	lhi	%GPR6,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	sh	0(%GPR3),%GPR2	
	add	%GPR2,%GPR1,%GPR4	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$32	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop	;;56,58
	nop	;;56,58
	sw	0(%GPR2),%GPR6	
	add	%GPR1,%GPR1,%GPR5	
	nop	;;59,63
	nop	;;59,63
	nop	;;59,63
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR3	
	j	L5	
	nop
	nop
	nop
L5:
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
mad_header_decode:
L6:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
	subi	%GPR29,%GPR29,$20	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR1	
	sw	-8(%GPR30),%GPR2	
	add	%GPR4,%GPR2,%GPR0	
	nop
	nop
	nop
				; Automatically 4 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$24	
	nop	;;10,13
	nop	;;10,13
	nop	;;10,13
	add	%GPR2,%GPR4,%GPR2	
	add	%GPR3,%GPR4,%GPR3	
	nop	;;14,17
	nop	;;14,17
	nop	;;14,17
	lw	%GPR2,0(%GPR2)	
	nop	;;17,21
	nop	;;17,21
	nop	;;17,21
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-12(%GPR30),%GPR2	
	lw	%GPR2,0(%GPR3)	
	nop	;;22,26
	nop	;;22,26
	nop	;;22,26
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR2,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L7	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L9	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L7:
	lw	%GPR3,-8(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$60	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$2	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR3,%GPR1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	nop
	nop
	nop
L8:
	nop	;;0,2
	nop	;;0,2
	lw	%GPR3,-8(%GPR30)	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$12	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	;;5,7
	nop	;;5,7
	lhi	%GPR28,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$-1	
	add	%GPR1,%GPR3,%GPR1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	j	L64	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L9:
	lw	%GPR4,-8(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$8	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR4,%GPR1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR1,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L10	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L15	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L10:
	lw	%GPR4,-8(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$12	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR4,%GPR1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L11	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L12	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L11:
	lw	%GPR2,-8(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$20	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR2,%GPR1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR1)	
	nop
	nop
	nop
L12:
	lw	%GPR4,-8(%GPR30)	
	lw	%GPR1,-12(%GPR30)	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$8	
	nop	;;4,6
	nop	;;4,6
	sub	%GPR1,%GPR1,%GPR2	
	nop	;;6,8
	nop	;;6,8
	add	%GPR3,%GPR4,%GPR3	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR3,0(%GPR3)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR1,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L13	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L14	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L13:
	lw	%GPR1,-12(%GPR30)	
	nop	;;0,2
	nop	;;0,2
	lw	%GPR5,-8(%GPR30)	
	nop	;;2,4
	nop	;;2,4
	sub	%GPR1,%GPR1,%GPR2	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$8	
	nop	;;5,7
	nop	;;5,7
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$8	
	add	%GPR6,%GPR5,%GPR0	
	add	%GPR2,%GPR5,%GPR2	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$24	
	add	%GPR3,%GPR5,%GPR3	
	nop	;;11,13
	nop	;;11,13
	lw	%GPR2,0(%GPR2)	
	nop	;;13,15
	nop	;;13,15
	add	%GPR7,%GPR6,%GPR0	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$60	
	subu	%GPR1,%GPR2,%GPR1	
	add	%GPR4,%GPR6,%GPR4	
	lhi	%GPR6,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$1	
	add	%GPR5,%GPR7,%GPR5	
	sw	0(%GPR3),%GPR1	
	lw	%GPR1,-12(%GPR30)	
	nop	;;22,26
	nop	;;22,26
	nop	;;22,26
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4),%GPR1	
	nop	;;26,30
	nop	;;26,30
	nop	;;26,30
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR5),%GPR6	
	j	L8	
	nop
	nop
	nop
L14:
	lw	%GPR5,-8(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$8	
	add	%GPR6,%GPR5,%GPR0	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$8	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR5,%GPR1	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	add	%GPR3,%GPR6,%GPR3	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$12	
	nop	;;11,13
	nop	;;11,13
	add	%GPR7,%GPR6,%GPR0	
	lw	%GPR1,0(%GPR1)	
	sw	0(%GPR3),%GPR4	
	lhi	%GPR6,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$1	
	add	%GPR5,%GPR7,%GPR5	
	add	%GPR2,%GPR2,%GPR1	
	nop	;;18,21
	nop	;;18,21
	nop	;;18,21
	sw	0(%GPR5),%GPR6	
	nop
	nop
	nop
L15:
	lw	%GPR4,-8(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$12	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR4,%GPR1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR1,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L16	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L22	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L16:
	lw	%GPR1,-12(%GPR30)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sub	%GPR1,%GPR1,%GPR2	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$8	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
				; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR1,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L17	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L18	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L17:
	lw	%GPR5,-8(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$24	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$60	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$1	
	add	%GPR1,%GPR5,%GPR1	
	nop	;;8,10
	nop	;;8,10
	add	%GPR3,%GPR5,%GPR3	
	nop	;;10,12
	nop	;;10,12
	sw	0(%GPR1),%GPR2	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR4	
	j	L8	
	nop
	nop
	nop
L18:
	lbu	%GPR1,0(%GPR2)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$255	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L19	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L21	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L19:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$1	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$224	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR1,%GPR2,%GPR1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lbu	%GPR1,0(%GPR1)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR1,%GPR1,$224	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L20	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L21	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L20:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$1	
	j	L27	
	nop
	nop
	nop
L21:
	lw	%GPR5,-8(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$20	
	add	%GPR6,%GPR5,%GPR0	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$24	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$1	
	add	%GPR1,%GPR5,%GPR1	
	nop	;;8,11
	nop	;;8,11
	nop	;;8,11
	add	%GPR4,%GPR2,%GPR4	
	sw	0(%GPR1),%GPR2	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$60	
	add	%GPR1,%GPR6,%GPR0	
	add	%GPR3,%GPR6,%GPR3	
	nop	;;15,17
	nop	;;15,17
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$257	
	add	%GPR5,%GPR1,%GPR5	
	sw	0(%GPR3),%GPR4	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	;;20,23
	nop	;;20,23
	nop	;;20,23
	sw	0(%GPR5),%GPR2	
	j	L8	
	nop
	nop
	nop
L22:
	lw	%GPR3,-8(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$28	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR3,%GPR1	
	nop	;;8,13
	nop	;;8,13
	nop	;;8,13
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	mad_bit_init	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 5 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-8(%GPR30)	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	mad_stream_sync	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$-1	
	nop	;;20,24
	nop	;;20,24
	nop	;;20,24
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR28,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L23	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L26	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L23:
	lw	%GPR3,-8(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$24	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$8	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR3,%GPR1	
	lw	%GPR3,-12(%GPR30)	
	nop	;;9,12
	nop	;;9,12
	nop	;;9,12
	lw	%GPR1,0(%GPR1)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sub	%GPR1,%GPR3,%GPR1	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sge	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L24	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L25	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L24:
	lw	%GPR3,-8(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$24	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$-8	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR3,%GPR1	
	lw	%GPR3,-12(%GPR30)	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR3,%GPR2	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	nop
	nop
	nop
L25:
	nop	;;0,2
	nop	;;0,2
	lw	%GPR3,-8(%GPR30)	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$60	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR1,%GPR3,%GPR1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	j	L8	
	nop
	nop
	nop
L26:
	lw	%GPR2,-8(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$28	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR2,%GPR1	
	nop	;;8,13
	nop	;;8,13
	nop	;;8,13
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	mad_bit_nextbyte	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR28,%GPR0	
	nop
	nop
	nop
L27:
	lw	%GPR5,-8(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$20	
	add	%GPR7,%GPR5,%GPR0	
	nop	;;5,7
	nop	;;5,7
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$24	
	add	%GPR1,%GPR5,%GPR1	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$1	
	nop	;;9,11
	nop	;;9,11
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$20	
	sw	0(%GPR1),%GPR2	
	add	%GPR1,%GPR7,%GPR0	
	add	%GPR2,%GPR2,%GPR4	
	add	%GPR3,%GPR7,%GPR3	
	lhi	%GPR6,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$28	
	add	%GPR4,%GPR1,%GPR5	
	nop	;;17,19
	nop	;;17,19
	sw	0(%GPR3),%GPR2	
	add	%GPR1,%GPR1,%GPR6	
	nop	;;20,23
	nop	;;20,23
	nop	;;20,23
	lw	%GPR2,0(%GPR4)	
	nop	;;23,25
	nop	;;23,25
	nop
				; Automatically 3 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	mad_bit_init	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 5 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-4(%GPR30)	
	lw	%GPR2,-8(%GPR30)	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	decode_header	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$-1	
	nop	;;33,37
	nop	;;33,37
	nop	;;33,37
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR28,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L28	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L28:
	lw	%GPR1,-4(%GPR30)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L29	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L30	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L29:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$12	
	j	L35	
	nop
	nop
	nop
L30:
	lw	%GPR1,-4(%GPR30)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$3	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L31	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L33	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L31:
	lw	%GPR3,-4(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$28	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR3,%GPR1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR1,%GPR1,$4096	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L32	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L33	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L32:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$18	
	j	L34	
	nop
	nop
	nop
L33:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$36	
	nop
	nop
	nop
L34:
	nop	;;0,3
	nop	;;0,3
	nop	;;0,3
				; Automatically 3 NOPs removed by reduceNOPs.sh
L35:
	nop	;;0,2
	nop	;;0,2
	lw	%GPR6,-4(%GPR30)	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$20	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$32	
	nop	;;5,7
	nop	;;5,7
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$36	
	add	%GPR6,%GPR6,%GPR3	
	mult	%GPR3,%GPR1,%GPR4	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	;;10,13
	nop	;;10,13
	nop	;;10,13
	lw	%GPR1,-4(%GPR30)	
	nop	;;13,15
	nop	;;13,15
	lw	%GPR4,0(%GPR6)	
	nop	;;15,17
	nop	;;15,17
	add	%GPR1,%GPR1,%GPR5	
	nop	;;17,22
	nop	;;17,22
	nop	;;17,22
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	mad_timer_set	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 7 NOPs removed by reduceNOPs.sh
	lw	%GPR3,-4(%GPR30)	
	nop	;;24,27
	nop	;;24,27
	nop	;;24,27
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$16	
	nop	;;27,29
	nop	;;27,29
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	;;29,31
	nop	;;29,31
	add	%GPR1,%GPR3,%GPR1	
	nop	;;31,35
	nop	;;31,35
	nop	;;31,35
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop	;;35,39
	nop	;;35,39
	nop	;;35,39
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L36	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L46	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L36:
	lw	%GPR3,-8(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$16	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR3,%GPR1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L38	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L37	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L37:
	lw	%GPR3,-8(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$12	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR3,%GPR1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L38	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L41	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L38:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$1	
	nop
	nop
	nop
L39:
	lw	%GPR2,-4(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-8(%GPR30)	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	free_bitrate	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$-1	
	nop	;;14,18
	nop	;;14,18
	nop	;;14,18
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR28,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L40	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L45	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L40:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$1	
	j	L8	
	nop
	nop
	nop
L41:
	lw	%GPR1,-4(%GPR30)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR1)	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$3	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	;;6,9
	nop	;;6,9
	nop	;;6,9
	seq	%GPR27,%GPR2,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L42	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L44	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L42:
	lw	%GPR3,-8(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$16	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$9	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$640000	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR3,%GPR1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sgtu	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L43	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L44	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L43:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	j	L39	
	nop
	nop
	nop
L44:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
L45:
	lw	%GPR5,-8(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$16	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$16	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$28	
	add	%GPR1,%GPR5,%GPR1	
	lw	%GPR5,-4(%GPR30)	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$28	
	nop	;;10,13
	nop	;;10,13
	nop	;;10,13
	add	%GPR2,%GPR5,%GPR2	
	add	%GPR3,%GPR5,%GPR3	
	lw	%GPR5,0(%GPR1)	
	lw	%GPR1,-4(%GPR30)	
	nop	;;16,19
	nop	;;16,19
	nop	;;16,19
	sw	0(%GPR2),%GPR5	
	add	%GPR4,%GPR1,%GPR4	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	;;21,25
	nop	;;21,25
	nop	;;21,25
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR3)	
	nop	;;25,29
	nop	;;25,29
	nop	;;25,29
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$1024	
	nop	;;29,33
	nop	;;29,33
	nop	;;29,33
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4),%GPR1	
	nop
	nop
	nop
L46:
	lw	%GPR3,-4(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$28	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR3,%GPR1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR1,%GPR1,$128	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L47	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L48	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L47:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$1	
	j	L49	
	nop
	nop
	nop
L48:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
L49:
	nop	;;0,3
	nop	;;0,3
	nop	;;0,3
	lw	%GPR2,-4(%GPR30)	
	nop	;;3,7
	nop	;;3,7
	nop	;;3,7
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR2)	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR2,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L50	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L51	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L50:
	lw	%GPR6,-4(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$16	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$20	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$12	
	add	%GPR2,%GPR6,%GPR2	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	add	%GPR3,%GPR6,%GPR3	
	nop	;;10,12
	nop	;;10,12
	lw	%GPR2,0(%GPR2)	
	nop	;;12,14
	nop	;;12,14
	lw	%GPR3,0(%GPR3)	
	nop	;;14,16
	nop	;;14,16
	multu	%GPR2,%GPR2,%GPR4	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	divu	%GPR2,%GPR2,%GPR3	
	nop	;;20,24
	nop	;;20,24
	nop	;;20,24
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addu	%GPR1,%GPR2,%GPR1	
	nop	;;24,28
	nop	;;24,28
	nop	;;24,28
				; Automatically 1 NOPs removed by reduceNOPs.sh
	multu	%GPR1,%GPR1,%GPR5	
	nop	;;28,32
	nop	;;28,32
	nop	;;28,32
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L56	
	nop
	nop
	nop
L51:
	lw	%GPR2,-4(%GPR30)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR2)	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$3	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR2,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L52	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L54	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L52:
	lw	%GPR4,-4(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$28	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop	;;6,8
	nop	;;6,8
	add	%GPR2,%GPR4,%GPR2	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR2)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR2,%GPR2,$4096	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR2,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L53	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L54	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L53:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$72	
	j	L55	
	nop
	nop
	nop
L54:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$144	
	nop
	nop
	nop
L55:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR5,-4(%GPR30)	
	nop	;;4,7
	nop	;;4,7
	nop	;;4,7
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$16	
	nop	;;7,9
	nop	;;7,9
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$20	
	nop	;;9,11
	nop	;;9,11
	add	%GPR3,%GPR5,%GPR3	
	nop	;;11,13
	nop	;;11,13
	add	%GPR4,%GPR5,%GPR4	
	nop	;;13,15
	nop	;;13,15
	lw	%GPR3,0(%GPR3)	
	nop	;;15,17
	nop	;;15,17
	lw	%GPR4,0(%GPR4)	
	nop	;;17,19
	nop	;;17,19
	multu	%GPR2,%GPR2,%GPR3	
	nop	;;19,23
	nop	;;19,23
	nop	;;19,23
				; Automatically 1 NOPs removed by reduceNOPs.sh
	divu	%GPR2,%GPR2,%GPR4	
	nop	;;23,27
	nop	;;23,27
	nop	;;23,27
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addu	%GPR1,%GPR2,%GPR1	
	nop
	nop
	nop
L56:
	lw	%GPR4,-8(%GPR30)	
	addui	%GPR2,%GPR1,$8	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$20	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR4,%GPR3	
	lw	%GPR4,-12(%GPR30)	
	nop	;;9,12
	nop	;;9,12
	nop	;;9,12
	lw	%GPR3,0(%GPR3)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sub	%GPR3,%GPR4,%GPR3	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sgtu	%GPR27,%GPR2,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L57	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L58	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L57:
	lw	%GPR5,-8(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$20	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$24	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$60	
	add	%GPR1,%GPR5,%GPR1	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$1	
	add	%GPR2,%GPR5,%GPR2	
	add	%GPR3,%GPR5,%GPR3	
	lw	%GPR1,0(%GPR1)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2),%GPR1	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR4	
	j	L8	
	nop
	nop
	nop
L58:
	lw	%GPR6,-8(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$20	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$24	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$12	
	add	%GPR2,%GPR6,%GPR2	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	add	%GPR3,%GPR6,%GPR3	
	add	%GPR4,%GPR6,%GPR4	
	lw	%GPR2,0(%GPR2)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR2,%GPR1	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR1	
	nop	;;20,24
	nop	;;20,24
	nop	;;20,24
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR4)	
	nop	;;24,28
	nop	;;24,28
	nop	;;24,28
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L59	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L62	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L59:
	lw	%GPR2,-8(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$24	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$255	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR2,%GPR1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR1)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lbu	%GPR1,0(%GPR2)	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L60	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L63	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L60:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$1	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$224	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR1,%GPR2,%GPR1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lbu	%GPR1,0(%GPR1)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR1,%GPR1,$224	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L61	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L63	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L61:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$12	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$1	
	nop	;;6,8
	nop	;;6,8
	lw	%GPR2,-8(%GPR30)	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR2,%GPR1	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR3	
	nop
	nop
	nop
L62:
	lw	%GPR3,-4(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$28	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$28	
	lhi	%GPR28,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	add	%GPR1,%GPR3,%GPR1	
	nop	;;8,10
	nop	;;8,10
	add	%GPR2,%GPR3,%GPR2	
	nop	;;10,12
	nop	;;10,12
	lw	%GPR1,0(%GPR1)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$8	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2),%GPR1	
	j	L64	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L63:
	lw	%GPR5,-8(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$20	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$24	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$1	
	add	%GPR1,%GPR5,%GPR1	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$24	
	add	%GPR5,%GPR5,%GPR2	
	lw	%GPR2,-8(%GPR30)	
	lw	%GPR1,0(%GPR1)	
	nop	;;12,15
	nop	;;12,15
	nop	;;12,15
	add	%GPR4,%GPR2,%GPR4	
	add	%GPR1,%GPR1,%GPR3	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	;;17,20
	nop	;;17,20
	nop	;;17,20
	sw	0(%GPR5),%GPR1	
	nop	;;20,24
	nop	;;20,24
	nop	;;20,24
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR4)	
	j	L15	
	nop
	nop
	nop
L64:
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
mad_frame_init:
L65:
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
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR28,%GPR1,%GPR0	
	nop
	nop
	nop
	add	%GPR1,%GPR28,%GPR0	
	nop	;;3,8
	nop	;;3,8
	nop	;;3,8
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	mad_header_init	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$44	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$9264	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	add	%GPR1,%GPR28,%GPR1	
	nop	;;17,19
	nop	;;17,19
	add	%GPR2,%GPR28,%GPR2	
	nop	;;19,21
	nop	;;19,21
	sw	0(%GPR1),%GPR3	
	add	%GPR1,%GPR28,%GPR0	
	nop	;;22,25
	nop	;;22,25
	nop	;;22,25
	sw	0(%GPR2),%GPR4	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	mad_frame_mute	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 5 NOPs removed by reduceNOPs.sh
	j	L66	
	nop
	nop
	nop
L66:
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
mad_frame_finish:
L67:
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
				; Automatically 9 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	;;5,7
	nop	;;5,7
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$9264	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR1,%GPR3	
	nop	;;11,15
	nop	;;11,15
	nop	;;11,15
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR3,0(%GPR3)	
	nop	;;15,19
	nop	;;15,19
	nop	;;15,19
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR3,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L68	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L69	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L68:
	nop	;;0,2
	nop	;;0,2
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$9264	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR3	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	j	L69	
	nop
	nop
	nop
L69:
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
mad_frame_decode:
L70:
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
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-12(%GPR30),%GPR1	
	sw	-16(%GPR30),%GPR2	
	add	%GPR5,%GPR2,%GPR0	
	nop
	nop
	nop
				; Automatically 5 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$56	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$44	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$28	
	nop	;;11,13
	nop	;;11,13
	add	%GPR1,%GPR5,%GPR1	
	lw	%GPR5,-12(%GPR30)	
	nop	;;14,16
	nop	;;14,16
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	lw	%GPR1,0(%GPR1)	
	add	%GPR2,%GPR5,%GPR2	
	add	%GPR3,%GPR5,%GPR3	
	nop	;;19,22
	nop	;;19,22
	nop	;;19,22
	sw	0(%GPR2),%GPR1	
	nop	;;22,26
	nop	;;22,26
	nop	;;22,26
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR3)	
	nop	;;26,30
	nop	;;26,30
	nop	;;26,30
				; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR1,%GPR1,$8	
	nop	;;30,34
	nop	;;30,34
	nop	;;30,34
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR4	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L71	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L74	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L71:
	lw	%GPR1,-12(%GPR30)	
	lw	%GPR2,-16(%GPR30)	
	nop	;;1,5
	nop	;;1,5
	nop	;;1,5
				; Automatically 5 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	mad_header_decode	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$-1	
	nop	;;10,14
	nop	;;10,14
	nop	;;10,14
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR28,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L72	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L74	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L72:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$1	
	nop
	nop
	nop
L73:
	nop	;;0,2
	nop	;;0,2
	lw	%GPR3,-16(%GPR30)	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$44	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	;;5,7
	nop	;;5,7
	lhi	%GPR28,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$-1	
	add	%GPR1,%GPR3,%GPR1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	j	L80	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L74:
	lw	%GPR4,-12(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$28	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$28	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR4,%GPR1	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$4	
	add	%GPR2,%GPR4,%GPR2	
	nop	;;10,12
	nop	;;10,12
	lw	%GPR1,0(%GPR1)	
	lhi	%GPR4,$( L3	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( L3	%0x10000)
	nop	;;13,16
	nop	;;13,16
	nop	;;13,16
	andi	%GPR5,%GPR1,$-9	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	;;17,20
	nop	;;17,20
	nop	;;17,20
	sw	0(%GPR2),%GPR5	
	lw	%GPR1,-12(%GPR30)	
	nop	;;21,25
	nop	;;21,25
	nop	;;21,25
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	
	lw	%GPR1,0(%GPR1)	
	nop	;;26,30
	nop	;;26,30
	nop	;;26,30
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR1,%GPR1,$1	
	nop	;;30,34
	nop	;;30,34
	nop	;;30,34
				; Automatically 1 NOPs removed by reduceNOPs.sh
	mult	%GPR1,%GPR1,%GPR3	
	nop	;;34,38
	nop	;;34,38
	nop	;;34,38
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR4,%GPR1	
	nop	;;38,42
	nop	;;38,42
	nop	;;38,42
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR3,0(%GPR1)	
	lw	%GPR1,-16(%GPR30)	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jalr	%GPR3	
	nop	; Automatically added by cosy2meta_asm.sh
	nop
	nop
				; Automatically 2 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$-1	
	nop	;;49,53
	nop	;;49,53
	nop	;;49,53
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR28,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L75	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L77	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L75:
	lw	%GPR3,-16(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$60	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR3,%GPR1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR1,%GPR1,$65280	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L76	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L73	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L76:
	lw	%GPR3,-16(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$20	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$24	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR3,%GPR1	
	nop	;;8,10
	nop	;;8,10
	add	%GPR2,%GPR3,%GPR2	
	nop	;;10,12
	nop	;;10,12
	lw	%GPR1,0(%GPR1)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2),%GPR1	
	j	L73	
	nop
	nop
	nop
L77:
	lw	%GPR1,-12(%GPR30)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$3	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L78	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L79	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L78:
	lw	%GPR3,-16(%GPR30)	
	subi	%GPR1,%GPR30,$8	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$24	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR3,%GPR2	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR2)	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	mad_bit_init	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 8 NOPs removed by reduceNOPs.sh
	lw	%GPR4,-16(%GPR30)	
	subi	%GPR2,%GPR30,$8	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$44	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$28	
	nop	;;19,22
	nop	;;19,22
	nop	;;19,22
	add	%GPR3,%GPR4,%GPR3	
	add	%GPR1,%GPR4,%GPR1	
	nop	;;23,26
	nop	;;23,26
	nop	;;23,26
	sw	-20(%GPR30),%GPR3	
	nop	;;26,28
	nop	;;26,28
	nop
				; Automatically 3 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	mad_bit_length	
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
	nop	;;29,33
	nop	;;29,33
	nop	;;29,33
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR28	
	nop
	nop
	nop
L79:
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
	j	L80	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L80:
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
mad_frame_mute:
L81:
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
				; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop
	nop
	nop
L82:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
L83:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4656	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$128	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR4,%GPR1,%GPR4	
	multu	%GPR5,%GPR2,%GPR5	
	lhi	%GPR6,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$4	
	lhi	%GPR11,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR11,%GPR11,$4	
	lhi	%GPR7,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$4656	
	lhi	%GPR8,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$128	
	nop	;;13,16
	nop	;;13,16
	nop	;;13,16
	add	%GPR4,%GPR4,%GPR5	
	multu	%GPR5,%GPR3,%GPR11	
	multu	%GPR6,%GPR3,%GPR6	
	nop	;;18,20
	nop	;;18,20
	add	%GPR7,%GPR1,%GPR7	
	multu	%GPR8,%GPR2,%GPR8	
	lhi	%GPR9,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$48	
	lhi	%GPR10,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$128	
	nop	;;23,25
	nop	;;23,25
	add	%GPR4,%GPR4,%GPR6	
	lhi	%GPR11,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR11,%GPR11,$0	
	add	%GPR7,%GPR7,%GPR8	
	add	%GPR9,%GPR1,%GPR9	
	multu	%GPR10,%GPR2,%GPR10	
	lhi	%GPR12,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR12,%GPR12,$4	
	sw	0(%GPR4),%GPR11	
	add	%GPR4,%GPR7,%GPR5	
	nop	;;32,34
	nop	;;32,34
	multu	%GPR6,%GPR3,%GPR12	
	add	%GPR8,%GPR9,%GPR10	
	lw	%GPR4,0(%GPR4)	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$32	
	addui	%GPR3,%GPR3,$1	
	add	%GPR6,%GPR8,%GPR6	
	nop	;;39,43
	nop	;;39,43
	nop	;;39,43
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR6),%GPR4	
	sltu	%GPR27,%GPR3,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L83	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L84	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L84:
	addui	%GPR2,%GPR2,$1	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$36	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sltu	%GPR27,%GPR2,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L82	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L85	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L85:
	nop	;;0,2
	nop	;;0,2
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$9264	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR1,%GPR3	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR3,0(%GPR3)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR3,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L86	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L90	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L86:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop
	nop
	nop
L87:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
L88:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$9264	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$2304	
	lhi	%GPR6,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$72	
	lhi	%GPR7,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$4	
	add	%GPR4,%GPR1,%GPR4	
	nop	;;8,10
	nop	;;8,10
	multu	%GPR6,%GPR3,%GPR6	
	multu	%GPR7,%GPR2,%GPR7	
	lw	%GPR4,0(%GPR4)	
	nop	;;12,14
	nop	;;12,14
	lhi	%GPR9,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$9264	
	nop	;;14,16
	nop	;;14,16
	add	%GPR4,%GPR4,%GPR5	
	lhi	%GPR8,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$0	
	add	%GPR5,%GPR1,%GPR9	
	lhi	%GPR9,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$72	
	add	%GPR4,%GPR4,%GPR6	
	nop	;;20,24
	nop	;;20,24
	nop	;;20,24
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR4,%GPR4,%GPR7	
	lhi	%GPR6,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$9264	
	lhi	%GPR7,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$2304	
	nop	;;26,28
	nop	;;26,28
	sw	0(%GPR4),%GPR8	
	multu	%GPR8,%GPR3,%GPR9	
	add	%GPR6,%GPR1,%GPR6	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$72	
	lw	%GPR5,0(%GPR5)	
	lhi	%GPR9,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$4	
	nop	;;33,35
	nop	;;33,35
	multu	%GPR4,%GPR3,%GPR4	
	add	%GPR5,%GPR5,%GPR7	
	lw	%GPR6,0(%GPR6)	
	lhi	%GPR7,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$4	
	multu	%GPR9,%GPR2,%GPR9	
	add	%GPR5,%GPR5,%GPR8	
	add	%GPR4,%GPR6,%GPR4	
	nop	;;41,43
	nop	;;41,43
	multu	%GPR7,%GPR2,%GPR7	
	add	%GPR5,%GPR5,%GPR9	
	addui	%GPR3,%GPR3,$1	
	lhi	%GPR6,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$32	
	add	%GPR4,%GPR4,%GPR7	
	lw	%GPR5,0(%GPR5)	
	nop	;;48,52
	nop	;;48,52
	nop	;;48,52
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4),%GPR5	
	sltu	%GPR27,%GPR3,%GPR6	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L88	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L89	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L89:
	addui	%GPR2,%GPR2,$1	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$18	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sltu	%GPR27,%GPR2,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L87	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L90	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L90:
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
decode_header:
L91:
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
	sw	-4(%GPR30),%GPR1	
	sw	-8(%GPR30),%GPR2	
	add	%GPR5,%GPR2,%GPR0	
	nop
	nop
	nop
				; Automatically 5 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$28	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$28	
	nop	;;10,12
	nop	;;10,12
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$32	
	add	%GPR1,%GPR5,%GPR1	
	lw	%GPR5,-4(%GPR30)	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop	;;15,17
	nop	;;15,17
	lhi	%GPR6,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	add	%GPR7,%GPR5,%GPR0	
	add	%GPR5,%GPR5,%GPR2	
	nop	;;19,21
	nop	;;19,21
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$11	
	add	%GPR3,%GPR7,%GPR3	
	sw	0(%GPR5),%GPR4	
	nop	;;23,27
	nop	;;23,27
	nop	;;23,27
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR6	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	mad_bit_skip	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 7 NOPs removed by reduceNOPs.sh
	lw	%GPR3,-8(%GPR30)	
	nop	;;30,33
	nop	;;30,33
	nop	;;30,33
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$28	
	nop	;;33,35
	nop	;;33,35
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	nop	;;35,37
	nop	;;35,37
	add	%GPR1,%GPR3,%GPR1	
	nop	;;37,42
	nop	;;37,42
	nop	;;37,42
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	mad_bit_read	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	;;47,51
	nop	;;47,51
	nop	;;47,51
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR28,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L92	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L93	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L92:
	lw	%GPR3,-4(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$28	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$28	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR3,%GPR1	
	nop	;;8,10
	nop	;;8,10
	add	%GPR2,%GPR3,%GPR2	
	nop	;;10,12
	nop	;;10,12
	lw	%GPR1,0(%GPR1)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$16384	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2),%GPR1	
	nop
	nop
	nop
L93:
	lw	%GPR3,-8(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$28	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR3,%GPR1	
	nop	;;8,13
	nop	;;8,13
	nop	;;8,13
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	mad_bit_read	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	;;18,22
	nop	;;18,22
	nop	;;18,22
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR28,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L94	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L97	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L94:
	lw	%GPR3,-4(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$28	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$28	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR3,%GPR1	
	nop	;;8,10
	nop	;;8,10
	add	%GPR2,%GPR3,%GPR2	
	nop	;;10,12
	nop	;;10,12
	lw	%GPR1,0(%GPR1)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4096	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2),%GPR1	
	nop
	nop
	nop
L95:
	lw	%GPR3,-8(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$28	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$2	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR3,%GPR1	
	nop	;;8,13
	nop	;;8,13
	nop	;;8,13
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	mad_bit_read	
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
	nop	;;15,18
	nop	;;15,18
	nop	;;15,18
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	
	nop	;;18,20
	nop	;;18,20
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop	;;20,22
	nop	;;20,22
	subu	%GPR1,%GPR1,%GPR28	
	nop	;;22,26
	nop	;;22,26
	nop	;;22,26
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR1	
	add	%GPR1,%GPR3,%GPR0	
	nop	;;27,31
	nop	;;27,31
	nop	;;27,31
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop	;;31,35
	nop	;;31,35
	nop	;;31,35
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L96	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L99	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L96:
	nop	;;0,2
	nop	;;0,2
	lw	%GPR3,-8(%GPR30)	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$60	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$258	
	nop	;;5,7
	nop	;;5,7
	lhi	%GPR28,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$-1	
	add	%GPR1,%GPR3,%GPR1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	j	L122	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L97:
	lw	%GPR3,-4(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$28	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR3,%GPR1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR1,%GPR1,$16384	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L98	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L95	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L98:
	nop	;;0,2
	nop	;;0,2
	lw	%GPR3,-8(%GPR30)	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$60	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$257	
	nop	;;5,7
	nop	;;5,7
	lhi	%GPR28,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$-1	
	add	%GPR1,%GPR3,%GPR1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	j	L122	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L99:
	lw	%GPR3,-8(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$28	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR3,%GPR1	
	nop	;;8,13
	nop	;;8,13
	nop	;;8,13
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	mad_bit_read	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	;;18,22
	nop	;;18,22
	nop	;;18,22
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR28,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L100	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L101	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L100:
	lw	%GPR3,-4(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$28	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$28	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR3,%GPR1	
	nop	;;8,10
	nop	;;8,10
	add	%GPR2,%GPR3,%GPR2	
	nop	;;10,12
	nop	;;10,12
	lw	%GPR1,0(%GPR1)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$16	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2),%GPR1	
	nop
	nop
	nop
L101:
	lw	%GPR3,-8(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$28	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR3,%GPR1	
	nop	;;8,13
	nop	;;8,13
	nop	;;8,13
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	mad_bit_read	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$15	
	nop	;;18,22
	nop	;;18,22
	nop	;;18,22
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR28,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L102	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L103	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L102:
	nop	;;0,2
	nop	;;0,2
	lw	%GPR3,-8(%GPR30)	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$60	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$259	
	nop	;;5,7
	nop	;;5,7
	lhi	%GPR28,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$-1	
	add	%GPR1,%GPR3,%GPR1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	j	L122	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L103:
	lw	%GPR3,-4(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$28	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR3,%GPR1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR1,%GPR1,$4096	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L104	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L105	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L104:
	lw	%GPR1,-4(%GPR30)	
	nop	;;0,3
	nop	;;0,3
	nop	;;0,3
	lhi	%GPR2,$( L1	/0x10000)
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$( L1	%0x10000)
	lw	%GPR1,0(%GPR1)	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$60	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop	;;6,8
	nop	;;6,8
	srai	%GPR1,%GPR1,$1	
	nop	;;8,10
	nop	;;8,10
	multu	%GPR4,%GPR28,%GPR4	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$16	
	addi	%GPR1,%GPR1,$3	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	mult	%GPR1,%GPR1,%GPR3	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR2,%GPR1	
	lw	%GPR3,-4(%GPR30)	
	nop	;;21,24
	nop	;;21,24
	nop	;;21,24
	add	%GPR1,%GPR1,%GPR4	
	add	%GPR3,%GPR3,%GPR5	
	nop	;;25,28
	nop	;;25,28
	nop	;;25,28
	lw	%GPR1,0(%GPR1)	
	nop	;;28,32
	nop	;;28,32
	nop	;;28,32
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR1	
	j	L106	
	nop
	nop
	nop
L105:
	lw	%GPR1,-4(%GPR30)	
	nop	;;0,3
	nop	;;0,3
	nop	;;0,3
	lhi	%GPR2,$( L1	/0x10000)
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$( L1	%0x10000)
	lw	%GPR1,0(%GPR1)	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$60	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop	;;6,8
	nop	;;6,8
	subi	%GPR1,%GPR1,$1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	mult	%GPR1,%GPR1,%GPR3	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	multu	%GPR3,%GPR28,%GPR4	
	add	%GPR1,%GPR2,%GPR1	
	lw	%GPR2,-4(%GPR30)	
	nop	;;18,20
	nop	;;18,20
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$16	
	add	%GPR1,%GPR1,%GPR3	
	nop	;;21,24
	nop	;;21,24
	nop	;;21,24
	add	%GPR2,%GPR2,%GPR4	
	lw	%GPR1,0(%GPR1)	
	nop	;;25,29
	nop	;;25,29
	nop	;;25,29
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2),%GPR1	
	nop
	nop
	nop
L106:
	lw	%GPR3,-8(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$28	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$2	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR3,%GPR1	
	nop	;;8,13
	nop	;;8,13
	nop	;;8,13
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	mad_bit_read	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$3	
	nop	;;18,22
	nop	;;18,22
	nop	;;18,22
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR28,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L107	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L108	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L107:
	nop	;;0,2
	nop	;;0,2
	lw	%GPR3,-8(%GPR30)	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$60	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$260	
	nop	;;5,7
	nop	;;5,7
	lhi	%GPR28,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$-1	
	add	%GPR1,%GPR3,%GPR1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	j	L122	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L108:
	lhi	%GPR1,$( L2	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L2	%0x10000)
	nop	;;1,3
	nop	;;1,3
	lw	%GPR5,-4(%GPR30)	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$20	
	add	%GPR6,%GPR5,%GPR0	
	multu	%GPR2,%GPR28,%GPR2	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$28	
	add	%GPR3,%GPR5,%GPR3	
	nop	;;10,12
	nop	;;10,12
	add	%GPR1,%GPR1,%GPR2	
	add	%GPR4,%GPR6,%GPR4	
	nop	;;13,15
	nop	;;13,15
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	lw	%GPR1,0(%GPR1)	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR1	
	nop	;;20,24
	nop	;;20,24
	nop	;;20,24
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR4)	
	nop	;;24,28
	nop	;;24,28
	nop	;;24,28
				; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR1,%GPR1,$4096	
	nop	;;28,32
	nop	;;28,32
	nop	;;28,32
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR1,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L109	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L111	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L109:
	lw	%GPR5,-4(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$20	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$20	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$2	
	add	%GPR1,%GPR5,%GPR1	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$28	
	add	%GPR2,%GPR5,%GPR2	
	nop	;;10,12
	nop	;;10,12
	lw	%GPR1,0(%GPR1)	
	add	%GPR4,%GPR5,%GPR4	
	nop	;;13,15
	nop	;;13,15
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	divu	%GPR1,%GPR1,%GPR3	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2),%GPR1	
	nop	;;20,24
	nop	;;20,24
	nop	;;20,24
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR4)	
	nop	;;24,28
	nop	;;24,28
	nop	;;24,28
				; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR1,%GPR1,$16384	
	nop	;;28,32
	nop	;;28,32
	nop	;;28,32
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR1,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L110	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L111	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L110:
	lw	%GPR4,-4(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$20	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$20	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$2	
	add	%GPR1,%GPR4,%GPR1	
	nop	;;8,10
	nop	;;8,10
	add	%GPR2,%GPR4,%GPR2	
	nop	;;10,12
	nop	;;10,12
	lw	%GPR1,0(%GPR1)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	divu	%GPR1,%GPR1,%GPR3	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2),%GPR1	
	nop
	nop
	nop
L111:
	lw	%GPR3,-8(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$28	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR3,%GPR1	
	nop	;;8,13
	nop	;;8,13
	nop	;;8,13
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	mad_bit_read	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	;;18,22
	nop	;;18,22
	nop	;;18,22
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR28,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L112	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L113	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L112:
	lw	%GPR3,-4(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$28	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$28	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR3,%GPR1	
	nop	;;8,10
	nop	;;8,10
	add	%GPR2,%GPR3,%GPR2	
	nop	;;10,12
	nop	;;10,12
	lw	%GPR1,0(%GPR1)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$128	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2),%GPR1	
	nop
	nop
	nop
L113:
	lw	%GPR3,-8(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$28	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR3,%GPR1	
	nop	;;8,13
	nop	;;8,13
	nop	;;8,13
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	mad_bit_read	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	;;18,22
	nop	;;18,22
	nop	;;18,22
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR28,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L114	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L115	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L114:
	lw	%GPR3,-4(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$32	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$32	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR3,%GPR1	
	nop	;;8,10
	nop	;;8,10
	add	%GPR2,%GPR3,%GPR2	
	nop	;;10,12
	nop	;;10,12
	lw	%GPR1,0(%GPR1)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$256	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2),%GPR1	
	nop
	nop
	nop
L115:
	lw	%GPR3,-8(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$28	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$2	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR3,%GPR1	
	nop	;;8,13
	nop	;;8,13
	nop	;;8,13
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	mad_bit_read	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 3 NOPs removed by reduceNOPs.sh
	lw	%GPR5,-8(%GPR30)	
	nop	;;15,18
	nop	;;15,18
	nop	;;15,18
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$28	
	nop	;;18,20
	nop	;;18,20
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$3	
	add	%GPR1,%GPR5,%GPR1	
	lw	%GPR5,-4(%GPR30)	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$2	
	subu	%GPR3,%GPR3,%GPR28	
	nop	;;25,27
	nop	;;25,27
	add	%GPR4,%GPR5,%GPR4	
	nop	;;27,31
	nop	;;27,31
	nop	;;27,31
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4),%GPR3	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	mad_bit_read	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 3 NOPs removed by reduceNOPs.sh
	lw	%GPR4,-8(%GPR30)	
	nop	;;34,37
	nop	;;34,37
	nop	;;34,37
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$28	
	nop	;;37,39
	nop	;;37,39
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$8	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	add	%GPR1,%GPR4,%GPR1	
	lw	%GPR4,-4(%GPR30)	
	nop	;;42,46
	nop	;;42,46
	nop	;;42,46
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR4,%GPR3	
	nop	;;46,50
	nop	;;46,50
	nop	;;46,50
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR28	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	mad_bit_read	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	;;56,60
	nop	;;56,60
	nop	;;56,60
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR28,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L116	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L117	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L116:
	lw	%GPR3,-4(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$28	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$28	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR3,%GPR1	
	nop	;;8,10
	nop	;;8,10
	add	%GPR2,%GPR3,%GPR2	
	nop	;;10,12
	nop	;;10,12
	lw	%GPR1,0(%GPR1)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$32	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2),%GPR1	
	nop
	nop
	nop
L117:
	lw	%GPR3,-8(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$28	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR3,%GPR1	
	nop	;;8,13
	nop	;;8,13
	nop	;;8,13
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	mad_bit_read	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	;;18,22
	nop	;;18,22
	nop	;;18,22
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR28,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L118	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L119	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L118:
	lw	%GPR3,-4(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$28	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$28	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR3,%GPR1	
	nop	;;8,10
	nop	;;8,10
	add	%GPR2,%GPR3,%GPR2	
	nop	;;10,12
	nop	;;10,12
	lw	%GPR1,0(%GPR1)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$64	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2),%GPR1	
	nop
	nop
	nop
L119:
	lw	%GPR3,-8(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$28	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$2	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR3,%GPR1	
	nop	;;8,13
	nop	;;8,13
	nop	;;8,13
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	mad_bit_read	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 3 NOPs removed by reduceNOPs.sh
	lw	%GPR4,-4(%GPR30)	
	nop	;;15,18
	nop	;;15,18
	nop	;;15,18
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$12	
	nop	;;18,20
	nop	;;18,20
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$28	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	add	%GPR1,%GPR4,%GPR1	
	nop	;;22,24
	nop	;;22,24
	add	%GPR2,%GPR4,%GPR2	
	nop	;;24,26
	nop	;;24,26
	sw	0(%GPR1),%GPR28	
	nop	;;26,30
	nop	;;26,30
	nop	;;26,30
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR2)	
	nop	;;30,34
	nop	;;30,34
	nop	;;30,34
				; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR1,%GPR1,$16	
	nop	;;34,38
	nop	;;34,38
	nop	;;34,38
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR1,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L120	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L121	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L120:
	lw	%GPR3,-8(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$28	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$16	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR3,%GPR1	
	nop	;;8,13
	nop	;;8,13
	nop	;;8,13
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	mad_bit_read	
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
	nop	;;15,18
	nop	;;15,18
	nop	;;15,18
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$26	
	nop	;;18,22
	nop	;;18,22
	nop	;;18,22
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR2,%GPR1	
	nop	;;22,26
	nop	;;22,26
	nop	;;22,26
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sh	0(%GPR1),%GPR28	
	nop
	nop
	nop
L121:
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
	j	L122	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L122:
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
free_bitrate:
L123:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
	subi	%GPR29,%GPR29,$136	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-112(%GPR30),%GPR1	
	sw	-116(%GPR30),%GPR2	
	nop
	nop
	nop
				; Automatically 5 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$28	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	;;10,12
	nop	;;10,12
	sw	-120(%GPR30),%GPR3	
	lw	%GPR3,-116(%GPR30)	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR3,%GPR1	
	nop	;;17,21
	nop	;;17,21
	nop	;;17,21
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop	;;21,25
	nop	;;21,25
	nop	;;21,25
				; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR1,%GPR1,$128	
	nop	;;25,29
	nop	;;25,29
	nop	;;25,29
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L124	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L125	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L124:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$1	
	j	L126	
	nop
	nop
	nop
L125:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
L126:
	sw	-124(%GPR30),%GPR1	
	lw	%GPR1,-116(%GPR30)	
	nop	;;1,5
	nop	;;1,5
	nop	;;1,5
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$3	
	nop	;;6,10
	nop	;;6,10
	nop	;;6,10
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L127	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L129	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L127:
	lw	%GPR3,-116(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$28	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR3,%GPR1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR1,%GPR1,$4096	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L128	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L129	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L128:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$72	
	j	L130	
	nop
	nop
	nop
L129:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$144	
	nop
	nop
	nop
L130:
	sw	-128(%GPR30),%GPR1	
	nop
	nop
	nop
L131:
	lw	%GPR1,-112(%GPR30)	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	mad_stream_sync	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	;;6,10
	nop	;;6,10
	nop	;;6,10
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR28,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L132	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L142	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L132:
	subi	%GPR2,%GPR30,$64	
	subi	%GPR1,%GPR30,$108	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	decode_header	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR28,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L133	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L137	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L133:
	lw	%GPR2,-116(%GPR30)	
	lw	%GPR1,-108(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lw	%GPR2,0(%GPR2)	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L134	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L137	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L134:
	nop	;;0,2
	nop	;;0,2
	subi	%GPR2,%GPR30,$108	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$20	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$1	
	nop	;;5,7
	nop	;;5,7
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$20	
	nop	;;7,9
	nop	;;7,9
	add	%GPR1,%GPR2,%GPR3	
	lw	%GPR2,-116(%GPR30)	
	nop	;;10,13
	nop	;;10,13
	nop	;;10,13
	lw	%GPR1,0(%GPR1)	
	add	%GPR2,%GPR2,%GPR4	
	nop	;;14,18
	nop	;;14,18
	nop	;;14,18
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR2)	
	nop	;;18,22
	nop	;;18,22
	nop	;;18,22
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L135	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L138	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L135:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$1	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$28	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	lw	%GPR1,-112(%GPR30)	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop	;;12,17
	nop	;;12,17
	nop	;;12,17
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	mad_bit_nextbyte	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-116(%GPR30)	
	nop	;;18,20
	nop	;;18,20
	lw	%GPR4,-112(%GPR30)	
	nop	;;20,22
	nop	;;20,22
	lw	%GPR2,0(%GPR1)	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$20	
	nop	;;23,25
	nop	;;23,25
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$1	
	nop	;;25,27
	nop	;;25,27
	add	%GPR1,%GPR4,%GPR1	
	nop	;;27,31
	nop	;;27,31
	nop	;;27,31
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop	;;31,35
	nop	;;31,35
	nop	;;31,35
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sub	%GPR1,%GPR28,%GPR1	
	seq	%GPR27,%GPR2,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L136	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L140	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L136:
	lw	%GPR5,-124(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$20	
	nop	;;6,8
	nop	;;6,8
	multu	%GPR2,%GPR5,%GPR2	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$48000	
	nop	;;9,12
	nop	;;9,12
	nop	;;9,12
	lw	%GPR5,-116(%GPR30)	
	subu	%GPR1,%GPR1,%GPR2	
	nop	;;13,16
	nop	;;13,16
	nop	;;13,16
	add	%GPR3,%GPR5,%GPR3	
	addui	%GPR1,%GPR1,$4	
	nop	;;17,20
	nop	;;17,20
	nop	;;17,20
	lw	%GPR2,0(%GPR3)	
	nop	;;20,24
	nop	;;20,24
	nop	;;20,24
				; Automatically 1 NOPs removed by reduceNOPs.sh
	multu	%GPR1,%GPR1,%GPR2	
	nop	;;24,28
	nop	;;24,28
	nop	;;24,28
				; Automatically 1 NOPs removed by reduceNOPs.sh
	divu	%GPR1,%GPR1,%GPR4	
	nop	;;28,32
	nop	;;28,32
	nop	;;28,32
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-120(%GPR30),%GPR1	
	j	L141	
	nop
	nop
	nop
L137:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
L138:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
L139:
	lw	%GPR3,-112(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$28	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$8	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR3,%GPR1	
	nop	;;8,13
	nop	;;8,13
	nop	;;8,13
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	mad_bit_skip	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 5 NOPs removed by reduceNOPs.sh
	j	L131	
	nop
	nop
	nop
L140:
	lw	%GPR2,-124(%GPR30)	
	nop	;;0,2
	nop	;;0,2
	lw	%GPR4,-116(%GPR30)	
	nop	;;2,4
	nop	;;2,4
	subu	%GPR1,%GPR1,%GPR2	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$20	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	addui	%GPR1,%GPR1,$1	
	add	%GPR2,%GPR4,%GPR2	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$1000	
	nop	;;10,13
	nop	;;10,13
	nop	;;10,13
	lw	%GPR2,0(%GPR2)	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
				; Automatically 1 NOPs removed by reduceNOPs.sh
	multu	%GPR1,%GPR1,%GPR2	
	nop	;;17,21
	nop	;;17,21
	nop	;;17,21
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR2,-128(%GPR30)	
	nop	;;21,25
	nop	;;21,25
	nop	;;21,25
				; Automatically 1 NOPs removed by reduceNOPs.sh
	divu	%GPR1,%GPR1,%GPR2	
	nop	;;25,29
	nop	;;25,29
	nop	;;25,29
				; Automatically 1 NOPs removed by reduceNOPs.sh
	divu	%GPR1,%GPR1,%GPR3	
	nop	;;29,33
	nop	;;29,33
	nop	;;29,33
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-120(%GPR30),%GPR1	
	nop
	nop
	nop
L141:
	lw	%GPR2,-120(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$8	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sgeu	%GPR27,%GPR2,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L143	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L139	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L142:
	lw	%GPR2,-120(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$8	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sltu	%GPR27,%GPR2,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L146	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L143	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L143:
	lw	%GPR1,-116(%GPR30)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$3	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L144	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L147	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L144:
	lw	%GPR2,-120(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$640	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sgtu	%GPR27,%GPR2,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L145	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L147	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L145:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$1	
	nop
	nop
	nop
L146:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$1	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$60	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$257	
	lhi	%GPR28,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$-1	
	lw	%GPR1,-112(%GPR30)	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR3	
	j	L148	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L147:
	lw	%GPR3,-112(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$16	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1000	
	nop	;;6,8
	nop	;;6,8
	add	%GPR3,%GPR3,%GPR1	
	lw	%GPR1,-120(%GPR30)	
	lhi	%GPR28,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop	;;10,13
	nop	;;10,13
	nop	;;10,13
	multu	%GPR2,%GPR1,%GPR2	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	sw	0(%GPR3),%GPR2	
	nop	;;18,21
	nop	;;18,21
	nop	;;18,21
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	j	L148	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L148:
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
