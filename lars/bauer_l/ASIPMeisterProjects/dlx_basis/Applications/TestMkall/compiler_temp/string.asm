	.section	.data
	.section	.text
	.addressing	Word
strlen:
L1:
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
	lhi	%GPR28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
L2:
	nop	; Automatically Added by addNopAfterLabels.pl
	add	%GPR2,%GPR1,%GPR0	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lb	%GPR2,0(%GPR2)	
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$1	
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop	;;6,9
	nop	;;6,9
	nop	;;6,9
	add	%GPR1,%GPR1,%GPR3	
	sne	%GPR27,%GPR2,%GPR4	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L3	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L4	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L3:
	nop	; Automatically Added by addNopAfterLabels.pl
	addi	%GPR28,%GPR28,$1	
	j	L2	
	nop
	nop
	nop
L4:
	nop	; Automatically Added by addNopAfterLabels.pl
	j	L5	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L5:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
strcat:
L6:
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
L7:
	nop	; Automatically Added by addNopAfterLabels.pl
	lb	%GPR3,0(%GPR1)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR3,%GPR4	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L9	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L8:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR3	
	j	L7	
	nop
	nop
	nop
L9:
	nop	; Automatically Added by addNopAfterLabels.pl
	lb	%GPR3,0(%GPR2)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR3,%GPR4	
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
	nop	; Automatically Added by addNopAfterLabels.pl
	add	%GPR4,%GPR2,%GPR0	
	nop	;;0,3
	nop	;;0,3
	nop	;;0,3
	add	%GPR3,%GPR1,%GPR0	
	lb	%GPR4,0(%GPR4)	
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$1	
	nop	;;6,8
	nop	;;6,8
	sb	0(%GPR3),%GPR4	
	add	%GPR1,%GPR1,%GPR5	
	add	%GPR2,%GPR2,%GPR6	
	j	L9	
	nop
	nop
	nop
L11:
	nop	; Automatically Added by addNopAfterLabels.pl
	add	%GPR28,%GPR1,%GPR0	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
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
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
strncat:
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
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
L14:
	nop	; Automatically Added by addNopAfterLabels.pl
	lb	%GPR5,0(%GPR1)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR5,%GPR6	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L15	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L16	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L15:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR5	
	j	L14	
	nop
	nop
	nop
L16:
	nop	; Automatically Added by addNopAfterLabels.pl
	lb	%GPR5,0(%GPR2)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR5,%GPR6	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L17	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L19	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L17:
	nop	; Automatically Added by addNopAfterLabels.pl
	addi	%GPR4,%GPR4,$1	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR4,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L18	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L19	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L18:
	nop	; Automatically Added by addNopAfterLabels.pl
	add	%GPR5,%GPR2,%GPR0	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lb	%GPR7,0(%GPR5)	
	add	%GPR6,%GPR1,%GPR0	
	lhi	%GPR8,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$1	
	lhi	%GPR9,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$1	
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	sb	0(%GPR6),%GPR7	
	add	%GPR1,%GPR1,%GPR8	
	add	%GPR2,%GPR2,%GPR9	
	j	L16	
	nop
	nop
	nop
L19:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	seq	%GPR27,%GPR4,%GPR3	
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
	sb	0(%GPR1),%GPR2	
	nop
	nop
	nop
L21:
	nop	; Automatically Added by addNopAfterLabels.pl
	add	%GPR28,%GPR1,%GPR0	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L22	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L22:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
strcpy:
L23:
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
L24:
	nop	; Automatically Added by addNopAfterLabels.pl
	lb	%GPR3,0(%GPR2)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR3,%GPR4	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L25	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L26	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L25:
	nop	; Automatically Added by addNopAfterLabels.pl
	add	%GPR4,%GPR2,%GPR0	
	nop	;;0,3
	nop	;;0,3
	nop	;;0,3
	add	%GPR3,%GPR1,%GPR0	
	lb	%GPR4,0(%GPR4)	
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$1	
	nop	;;6,8
	nop	;;6,8
	sb	0(%GPR3),%GPR4	
	add	%GPR1,%GPR1,%GPR5	
	add	%GPR2,%GPR2,%GPR6	
	j	L24	
	nop
	nop
	nop
L26:
	nop	; Automatically Added by addNopAfterLabels.pl
	add	%GPR28,%GPR1,%GPR0	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L27	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L27:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
strncpy:
L28:
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
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
L29:
	nop	; Automatically Added by addNopAfterLabels.pl
	lb	%GPR5,0(%GPR2)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR5,%GPR6	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L30	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L32	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L30:
	nop	; Automatically Added by addNopAfterLabels.pl
	addi	%GPR4,%GPR4,$1	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR4,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L32	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L31:
	nop	; Automatically Added by addNopAfterLabels.pl
	add	%GPR5,%GPR2,%GPR0	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lb	%GPR7,0(%GPR5)	
	add	%GPR6,%GPR1,%GPR0	
	lhi	%GPR8,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$1	
	lhi	%GPR9,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$1	
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	sb	0(%GPR6),%GPR7	
	add	%GPR1,%GPR1,%GPR8	
	add	%GPR2,%GPR2,%GPR9	
	j	L29	
	nop
	nop
	nop
L32:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	seq	%GPR27,%GPR4,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L33	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L34	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L33:
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
	sb	0(%GPR1),%GPR2	
	nop
	nop
	nop
L34:
	nop	; Automatically Added by addNopAfterLabels.pl
	add	%GPR28,%GPR1,%GPR0	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L35	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L35:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
strcmp:
L36:
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
L37:
	nop	; Automatically Added by addNopAfterLabels.pl
	lb	%GPR3,0(%GPR1)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR3,%GPR4	
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
	nop	; Automatically Added by addNopAfterLabels.pl
	lb	%GPR3,0(%GPR2)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR3,%GPR4	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L39	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L41	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L39:
	nop	; Automatically Added by addNopAfterLabels.pl
	lb	%GPR4,0(%GPR1)	
	lb	%GPR5,0(%GPR2)	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$1	
	nop	;;4,6
	nop	;;4,6
	slt	%GPR27,%GPR4,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L40	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L43	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L40:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$-1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L49	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L41:
	nop	;;0,2
	nop	;;0,2
	lb	%GPR1,0(%GPR1)	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	sne	%GPR27,%GPR1,%GPR4	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L42	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L46	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L42:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L49	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L43:
	nop	; Automatically Added by addNopAfterLabels.pl
	lb	%GPR3,0(%GPR1)	
	lb	%GPR4,0(%GPR2)	
	nop	;;1,5
	nop	;;1,5
	nop	;;1,5
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sgt	%GPR27,%GPR3,%GPR4	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L44	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L45	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L44:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L49	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L45:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$1	
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$1	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR1,%GPR1,%GPR3	
	add	%GPR2,%GPR2,%GPR4	
	j	L37	
	nop
	nop
	nop
L46:
	nop	; Automatically Added by addNopAfterLabels.pl
	lb	%GPR1,0(%GPR2)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
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
	lhi	%GPR28,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$-1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L49	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L48:
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
	j	L49	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L49:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
strncmp:
L50:
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
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
L51:
	nop	; Automatically Added by addNopAfterLabels.pl
	lb	%GPR5,0(%GPR1)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR5,%GPR6	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L52	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L56	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L52:
	nop	; Automatically Added by addNopAfterLabels.pl
	lb	%GPR5,0(%GPR2)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR5,%GPR6	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L53	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L56	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L53:
	nop	; Automatically Added by addNopAfterLabels.pl
	addi	%GPR4,%GPR4,$1	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	slt	%GPR27,%GPR4,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L54	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L57	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L54:
	nop	; Automatically Added by addNopAfterLabels.pl
	lb	%GPR6,0(%GPR1)	
	lb	%GPR7,0(%GPR2)	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	nop	;;4,6
	nop	;;4,6
	slt	%GPR27,%GPR6,%GPR7	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L55	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L59	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L55:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$-1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L67	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L56:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	nop
	nop
	nop
L57:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	seq	%GPR27,%GPR4,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L58	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L62	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L58:
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
	j	L67	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L59:
	nop	; Automatically Added by addNopAfterLabels.pl
	lb	%GPR5,0(%GPR1)	
	lb	%GPR6,0(%GPR2)	
	nop	;;1,5
	nop	;;1,5
	nop	;;1,5
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sgt	%GPR27,%GPR5,%GPR6	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L60	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L61	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L60:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L67	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L61:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$1	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR1,%GPR1,%GPR5	
	add	%GPR2,%GPR2,%GPR6	
	j	L51	
	nop
	nop
	nop
L62:
	nop	; Automatically Added by addNopAfterLabels.pl
	lb	%GPR1,0(%GPR1)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR1,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L63	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L64	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L63:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L67	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L64:
	nop	; Automatically Added by addNopAfterLabels.pl
	lb	%GPR1,0(%GPR2)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
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
	sne	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L65	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L66	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L65:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$65535	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$-1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L67	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L66:
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
	j	L67	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L67:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	jr	%GPR31	
	nop
	nop
	nop
