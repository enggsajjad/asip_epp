	.section	.data
	.align	4
L1:
	.data.32	1
L2:
	.data.8	72
	.data.8	97
	.data.8	108
	.data.8	108
	.data.8	111
	.data.8	32
	.data.8	87
	.data.8	101
	.data.8	108
	.data.8	116
	.space	1
L3:
	.data.8	13
	.data.8	10
	.space	1
L4:
	.data.8	66
	.data.8	108
	.data.8	97
	.data.8	66
	.data.8	108
	.data.8	97
	.data.8	13
	.data.8	10
	.space	1
L5:
	.data.8	89
	.data.8	101
	.data.8	116
	.data.8	32
	.data.8	65
	.data.8	110
	.data.8	111
	.data.8	116
	.data.8	104
	.data.8	101
	.data.8	114
	.data.8	32
	.data.8	83
	.data.8	119
	.data.8	105
	.data.8	116
	.data.8	99
	.data.8	104
	.space	1
	.section	.text
	.addressing	Word
redrawBarGraph:
L6:
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop
	nop
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	nop
	nop
	subi	%GPR29,%GPR29,$52	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-40(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	nop
	sw	-44(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L1	/0x10000)
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L1	%0x10000)
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L7	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
L7:
	nop
	nop
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%GPR4,%GPR30,$36	
	nop
	nop
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR8,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$10	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR9,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$4	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	sw	-36(%GPR30),%GPR8	
	nop
	nop
	nop
	nop
	nop
	add	%GPR8,%GPR4,%GPR9	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%GPR10,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$1	
	nop
	nop
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$36	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$2	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$68	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$66	
	nop
	nop
	nop
	nop
	nop
	sw	0(%GPR8),%GPR10	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 36 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L1	/0x10000)
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L1	%0x10000)
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
L8:
	nop
	nop
	nop
	nop
	nop
				; Automatically 30 NOPs removed by reduceNOPs.sh
	subi	%GPR1,%GPR30,$36	
	nop
	nop
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$10	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$4	
	nop
	nop
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%GPR4,%GPR30,$36	
	nop
	nop
	nop
	nop
	nop
	sw	-36(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR1,%GPR3	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$10	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	nop
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR4,%GPR5	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$100	
	nop
	nop
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$36	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$12	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4),%GPR1	
	nop
	nop
	nop
	nop
	nop
	add	%GPR2,%GPR3,%GPR2	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$200	
	nop
	nop
	nop
	nop
	nop
	subi	%GPR5,%GPR30,$36	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$16	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2),%GPR1	
	nop
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR5,%GPR4	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$130	
	nop
	nop
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$36	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$20	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4),%GPR1	
	nop
	nop
	nop
	nop
	nop
	add	%GPR2,%GPR3,%GPR2	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
	nop
	nop
	subi	%GPR5,%GPR30,$36	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$24	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2),%GPR1	
	nop
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR5,%GPR4	
	nop
	nop
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$36	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$254	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$28	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4),%GPR1	
	nop
	nop
	nop
	nop
	nop
	add	%GPR11,%GPR3,%GPR2	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR9,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$1	
	nop
	nop
	nop
	nop
	nop
	subi	%GPR8,%GPR30,$36	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR10,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$32	
	nop
	nop
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR11),%GPR9	
	nop
	nop
	nop
	nop
	nop
				; Automatically 30 NOPs removed by reduceNOPs.sh
	add	%GPR8,%GPR8,%GPR10	
	nop
	nop
	nop
	nop
	nop
	lw	%GPR9,-44(%GPR30)	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$36	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$9	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$82	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$66	
	nop
	nop
	nop
	nop
	nop
	sw	0(%GPR8),%GPR9	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 42 NOPs removed by reduceNOPs.sh
	subi	%GPR4,%GPR30,$36	
	nop
	nop
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR9,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$10	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR8,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$4	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	sw	-36(%GPR30),%GPR9	
	nop
	nop
	nop
	nop
	nop
	add	%GPR8,%GPR4,%GPR8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	lw	%GPR9,-40(%GPR30)	
	nop
	nop
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$36	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$2	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$65	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$66	
	nop
	nop
	nop
	nop
	nop
	sw	0(%GPR8),%GPR9	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 54 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L9	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
L9:
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	jr	%GPR31	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
main:
L10:
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop
	nop
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	nop
	nop
	subi	%GPR29,%GPR29,$32	
	nop
	nop
	nop
	nop
	nop
				; Automatically 42 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L2	/0x10000)
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L2	%0x10000)
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L3	/0x10000)
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L3	%0x10000)
	nop
	nop
	nop
	nop
	nop
				; Automatically 54 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L4	/0x10000)
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L4	%0x10000)
	nop
	nop
	nop
	nop
	nop
				; Automatically 54 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 54 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$20	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$20	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$10	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$10	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	g_drawrect	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L5	/0x10000)
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L5	%0x10000)
	nop
	nop
	nop
	nop
	nop
				; Automatically 48 NOPs removed by reduceNOPs.sh
	lhi	%GPR7,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$0	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$30	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$200	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$10	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$30	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	g_makeswitch	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 90 NOPs removed by reduceNOPs.sh
	lhi	%GPR10,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$1	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR9,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$1	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR8,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$1	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$50	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$254	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$60	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$200	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$40	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$10	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	g_makebar	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 90 NOPs removed by reduceNOPs.sh
	lhi	%GPR10,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$0	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR9,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$1	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR8,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$1	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$0	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$254	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$90	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$200	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$70	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$10	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	g_makebar	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 54 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$50	
	nop
	nop
	nop
	nop
	nop
	sw	-4(%GPR30),%GPR28	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	sw	-8(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$10	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-12(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-20(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
L11:
	nop
	nop
	nop
	nop
	nop
	lw	%GPR1,-12(%GPR30)	
	nop
	nop
	nop
	nop
	nop
	lw	%GPR2,-8(%GPR30)	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	nop
	sw	-12(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$254	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	sgt	%GPR27,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L13	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L12	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
L12:
	nop
	nop
	nop
	nop
	nop
	lw	%GPR2,-12(%GPR30)	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$10	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L13	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L14	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
L13:
	nop
	nop
	nop
	nop
	nop
	lw	%GPR1,-8(%GPR30)	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	sub	%GPR1,%GPR0,%GPR1	
	nop
	nop
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$2	
	nop
	nop
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	nop
	sw	-8(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-12(%GPR30)	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	mac	%GPR1,%GPR3,%GPR2	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-12(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	nop
	j	L15	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
L14:
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
L15:
	nop
	nop
	nop
	nop
	nop
	lw	%GPR1,-20(%GPR30)	
	nop
	nop
	nop
	nop
	nop
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	nop
	sw	-20(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$15	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	sgt	%GPR27,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L17	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L16	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
L16:
	nop
	nop
	nop
	nop
	nop
	lw	%GPR2,-20(%GPR30)	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$2	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L17	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L18	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
L17:
	nop
	nop
	nop
	nop
	nop
	lw	%GPR1,-16(%GPR30)	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	sub	%GPR1,%GPR0,%GPR1	
	nop
	nop
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$2	
	nop
	nop
	nop
	nop
	nop
				; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	nop
	sw	-16(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-20(%GPR30)	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	mac	%GPR1,%GPR3,%GPR2	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-20(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	nop
	j	L19	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
L18:
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
L19:
	nop
	nop
	nop
	nop
	nop
	lw	%GPR2,-20(%GPR30)	
	nop
	nop
	nop
	nop
	nop
	lw	%GPR1,-12(%GPR30)	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	redrawBarGraph	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 54 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-24(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
L20:
	nop
	nop
	nop
	nop
	nop
	lw	%GPR2,-24(%GPR30)	
	nop
	nop
	nop
	nop
	nop
	lw	%GPR1,-4(%GPR30)	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	g_setbar	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-24(%GPR30)	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$2	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	nop
	sw	-24(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$254	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L20	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L21	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
L21:
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$254	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-24(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
L22:
	nop
	nop
	nop
	nop
	nop
	lw	%GPR2,-24(%GPR30)	
	nop
	nop
	nop
	nop
	nop
	lw	%GPR1,-4(%GPR30)	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	jal	g_setbar	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-24(%GPR30)	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	subi	%GPR1,%GPR1,$2	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	nop
	sw	-24(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	sgt	%GPR27,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L22	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	j	L11	
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
L23:
	nop
	nop
	nop
	nop
	nop
				; Automatically 24 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop
	nop
				; Automatically 18 NOPs removed by reduceNOPs.sh
	jr	%GPR31	
	nop
	nop
	nop
	nop
	nop
