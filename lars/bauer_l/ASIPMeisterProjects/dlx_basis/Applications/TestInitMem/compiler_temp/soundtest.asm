	.section	.data
L1:
	.data.8	67
	.data.8	83
	.data.8	111
	.data.8	117
	.data.8	110
	.data.8	100
	.space	1
	.space	1
L2:
	.data.8	58
	.space	1
	.section	.text
	.addressing	Word
soundtest:
L3:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR29),%GPR31	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	subui	%GPR30,%GPR29,$4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 4 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$40	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 72 NOPs removed by reduceNOPs.sh
	lhi	%GPR10,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR9,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR8,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR7,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$20	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$42	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR5,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$90	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR3,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$100	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$80	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$10	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	create_bar	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 60 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR28	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR10,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR9,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR8,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR7,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$20	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$42	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR5,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$90	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR3,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$210	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$80	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$120	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	create_bar	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L1	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 24 NOPs removed by reduceNOPs.sh
	sw	-20(%GPR30),%GPR28	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR5,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$40	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$70	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR3,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$20	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$20	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	create_switch	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 60 NOPs removed by reduceNOPs.sh
	sw	-24(%GPR30),%GPR28	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR10,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR9,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR8,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR7,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$100	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR5,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$110	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR3,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$111	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$100	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$10	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	create_bar	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-28(%GPR30),%GPR28	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
L4:


	; GET_COUNTER()
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1, $(0x280DE80/0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1, %GPR1, $(0x280DE80%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR2, 0(%GPR1)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 13 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lw	%GPR5,-24(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	lhi	%GPR1,$( _switches	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _switches	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$16	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	mult	%GPR3,%GPR5,%GPR3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	bnez	%GPR27,L5	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L13	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L5:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR6,-16(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( _bars	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _bars	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR3,$( _bars	/0x10000)
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$( _bars	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR5,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	mult	%GPR4,%GPR6,%GPR4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR6,-20(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	add	%GPR1,%GPR1,%GPR4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	mult	%GPR5,%GPR6,%GPR5	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR4,%GPR3,%GPR5	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR3,0(%GPR1)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR4,0(%GPR4)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR4,%GPR6	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	bnez	%GPR27,L6	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L7	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L6:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
L7:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
L8:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	slt	%GPR27,%GPR1,%GPR4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	bnez	%GPR27,L9	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L13	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L9:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lhi	%GPR5,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
L10:


	; SET_AUDIO(int value)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR6, $(0x2625A04/0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6, %GPR6, $(0x2625A04%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	0(%GPR6), %GPR5
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 13 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	add	%GPR5,%GPR5,%GPR3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$255	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR5,%GPR6	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	bnez	%GPR27,L10	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L11	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L11:


	; SET_AUDIO(int value)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR6, $(0x2625A04/0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6, %GPR6, $(0x2625A04%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	0(%GPR6), %GPR5
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 13 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	sub	%GPR5,%GPR5,%GPR3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sgt	%GPR27,%GPR5,%GPR6	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	bnez	%GPR27,L11	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L12	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L12:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	addi	%GPR1,%GPR1,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	j	L8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
L13:


	; GET_COUNTER()
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1, $(0x280DE80/0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1, %GPR1, $(0x280DE80%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR3, 0(%GPR1)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 13 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	sub	%GPR2,%GPR3,%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	


	; SET_COUNTER()
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR4, $(0x280DE80/0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4, %GPR4, $(0x280DE80%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4), %GPR1
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 13 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-28(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$100	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	addi	%GPR1,%GPR1,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	mult	%GPR2,%GPR2,%GPR4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	div	%GPR2,%GPR2,%GPR3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-32(%GPR30),%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	g_setbar	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-32(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	subi	%GPR2,%GPR30,$12	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	intToStr	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 28 NOPs removed by reduceNOPs.sh
	subi	%GPR1,%GPR30,$12	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$120	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$70	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	g_print	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 32 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	switchThread	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
L14:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	addui	%GPR29,%GPR30,$4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR30,0(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	nop
	jr	%GPR31	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
countertest:
L15:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR29),%GPR31	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	subui	%GPR30,%GPR29,$4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 4 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$20	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 40 NOPs removed by reduceNOPs.sh
L16:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1,$( L2	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L2	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 36 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 13 NOPs removed by reduceNOPs.sh


	; GET_COUNTER()
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1, $(0x280DE80/0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1, %GPR1, $(0x280DE80%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR1, 0(%GPR1)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 13 NOPs removed by reduceNOPs.sh

	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	subi	%GPR2,%GPR30,$12	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	intToStr	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 28 NOPs removed by reduceNOPs.sh
	subi	%GPR1,%GPR30,$12	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$50	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	g_print	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 32 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	switchThread	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L16	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
L17:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	addui	%GPR29,%GPR30,$4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR30,0(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	nop
	jr	%GPR31	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl