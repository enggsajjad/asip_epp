	.section	.data
	.align	4
L1:
	.space	4
	.align	4
L2:
	.data.32	1
	.section	.text
	.addressing	Word
create_switch:
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
	subi	%GPR29,%GPR29,$32	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-8(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-12(%GPR30),%GPR3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-16(%GPR30),%GPR4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-20(%GPR30),%GPR5	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-24(%GPR30),%GPR6	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	add	%GPR2,%GPR6,%GPR0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 32 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR2,%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	bnez	%GPR27,L5	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L4:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR2,-24(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$256	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sgt	%GPR27,%GPR2,%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	bnez	%GPR27,L5	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L6	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L5:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	j	L9	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L6:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1,$( L1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L1	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR1)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-24(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR2,%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	bnez	%GPR27,L7	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L7:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR1,-24(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	g_makeradiogroup	
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
	lw	%GPR2,-24(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR1),%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
L8:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1,$( _activeswitches	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _activeswitches	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR2,$( _activeswitches	/0x10000)
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$( _activeswitches	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR5,-20(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR4,-16(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,0(%GPR1)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,0(%GPR2)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR3,-12(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	addi	%GPR7,%GPR1,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	addi	%GPR6,%GPR2,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR1,-8(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,-4(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	g_makeswitch	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( _activeswitches	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _activeswitches	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$( _switches	/0x10000)
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$( _switches	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR3,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$16	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR5,$( _activeswitches	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _activeswitches	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	mult	%GPR1,%GPR1,%GPR3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR6,$( _switches	/0x10000)
	nop
	nop
	nop
	ori	%GPR6,%GPR6,$( _switches	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR2,%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR3,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$16	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR9,-24(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	lhi	%GPR1,$( _activeswitches	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _activeswitches	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lw	%GPR5,0(%GPR5)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lhi	%GPR7,$( _switches	/0x10000)
	nop
	nop
	nop
	ori	%GPR7,%GPR7,$( _switches	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	mult	%GPR3,%GPR5,%GPR3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$16	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR6,%GPR3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
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
	add	%GPR2,%GPR3,%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2),%GPR9	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	lhi	%GPR3,$( _activeswitches	/0x10000)
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$( _activeswitches	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR8,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$16	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lhi	%GPR2,$( _switches	/0x10000)
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$( _switches	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	mult	%GPR1,%GPR1,%GPR4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR9,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$12	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR7,%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR10,$( _activeswitches	/0x10000)
	nop
	nop
	nop
	ori	%GPR10,%GPR10,$( _activeswitches	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR5	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR7,$( _activeswitches	/0x10000)
	nop
	nop
	nop
	ori	%GPR7,%GPR7,$( _activeswitches	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR6	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	lhi	%GPR5,$( _activeswitches	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _activeswitches	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR3)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	mult	%GPR1,%GPR1,%GPR8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR2,%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR9	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,0(%GPR10)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	0(%GPR7),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,0(%GPR5)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR28,%GPR1,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L9	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L9:
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
create_menu_switch:
L10:
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
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lhi	%GPR1,$( _activeswitches	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _activeswitches	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR9,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$10	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	addi	%GPR8,%GPR1,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
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
	ori	%GPR6,%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	sw	-8(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-12(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,-4(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	g_makemenubutton	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 28 NOPs removed by reduceNOPs.sh
L11:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR1,-12(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,-4(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR2,%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR2,-12(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR2,%GPR2,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-12(%GPR30),%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	loadByteUnsigned	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 36 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$124	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR28,%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	bnez	%GPR27,L12	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L13	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L12:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR1,-8(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-8(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
L13:
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
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR28,%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	bnez	%GPR27,L11	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L14	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L14:
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
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-12(%GPR30),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
L15:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR1,-12(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,-8(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR1,%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	bnez	%GPR27,L16	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L17	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L16:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1,$( _activeswitches	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _activeswitches	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$( _switches	/0x10000)
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$( _switches	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR3,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$16	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR4,$( _activeswitches	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( _activeswitches	%0x10000)
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
	; Automatically 8 NOPs removed by reduceNOPs.sh
	mult	%GPR1,%GPR1,%GPR3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$16	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	add	%GPR1,%GPR2,%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR3,$( _switches	/0x10000)
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$( _switches	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR2,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR5	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR5,$( _activeswitches	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _activeswitches	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lw	%GPR4,0(%GPR4)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lhi	%GPR7,$( _switches	/0x10000)
	nop
	nop
	nop
	ori	%GPR7,%GPR7,$( _switches	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	mult	%GPR4,%GPR4,%GPR6	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR3,%GPR4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$16	
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
	; Automatically 8 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR3,%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR3,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR8,$( _activeswitches	/0x10000)
	nop
	nop
	nop
	ori	%GPR8,%GPR8,$( _activeswitches	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
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
	lw	%GPR2,0(%GPR5)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR5,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$16	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	mult	%GPR2,%GPR2,%GPR6	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR10,$( _activeswitches	/0x10000)
	nop
	nop
	nop
	ori	%GPR10,%GPR10,$( _activeswitches	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR9,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$12	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR7,%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR6,$( L2	/0x10000)
	nop
	nop
	nop
	ori	%GPR6,%GPR6,$( L2	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR7,$( _activeswitches	/0x10000)
	nop
	nop
	nop
	ori	%GPR7,%GPR7,$( _activeswitches	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR2,%GPR4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR4,-12(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR2),%GPR3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	addi	%GPR4,%GPR4,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR8)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR3,0(%GPR6)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	-12(%GPR30),%GPR4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	mult	%GPR2,%GPR2,%GPR5	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR9	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,0(%GPR7)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	0(%GPR10),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	j	L15	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
L17:
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
	lhi	%GPR2,$( L2	/0x10000)
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$( L2	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2),%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
L18:
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
create_bar:
L19:
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
	subi	%GPR29,%GPR29,$12	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR7	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 28 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	jal	g_makebar	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( _activebars	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _activebars	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$( _bars	/0x10000)
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$( _bars	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR8,-4(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,0(%GPR1)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR3,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR4,$( _activebars	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( _activebars	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	mult	%GPR1,%GPR1,%GPR3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
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
	add	%GPR1,%GPR2,%GPR1	
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
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lhi	%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	sw	0(%GPR1),%GPR8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR2,$( _activebars	/0x10000)
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$( _activebars	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR7,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lw	%GPR4,0(%GPR4)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1,$( _activebars	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _activebars	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR8,$( _activebars	/0x10000)
	nop
	nop
	nop
	ori	%GPR8,%GPR8,$( _activebars	%0x10000)
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	mult	%GPR4,%GPR4,%GPR5	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR3,%GPR4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR3,%GPR6	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR7	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR2,0(%GPR2)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR2,%GPR2,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR1,0(%GPR8)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subi	%GPR28,%GPR1,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L20	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L20:
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
