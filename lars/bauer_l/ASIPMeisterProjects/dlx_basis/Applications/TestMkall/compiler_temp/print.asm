	.section	.data
	.section	.text
	.addressing	Word
print:
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
	; Automatically 9 NOPs removed by reduceNOPs.sh
L2:
	nop	; Automatically Added by addNopAfterLabels.pl
	lb	%GPR2,0(%GPR1)	
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
	sne	%GPR27,%GPR2,%GPR3	
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
	lb	%GPR2,0(%GPR1)	
	nop	;;0,5
	nop	;;0,5
	nop	;;0,5
	; Automatically 2 NOPs removed by reduceNOPs.sh


	;; asm void putChar(int ch) {...}
	nop
	nop
	nop
	;    putc %GPR2
	; Automatically 3 NOPs removed by reduceNOPs.sh

	nop	;;5,10
	nop	;;5,10
	nop	;;5,10
	; Automatically 2 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	nop	;;10,14
	nop	;;10,14
	nop	;;10,14
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	j	L2	
	nop
	nop
	nop
L4:
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
putInt:
L6:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
	subi	%GPR29,%GPR29,$40	
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
L7:
	nop	; Automatically Added by addNopAfterLabels.pl
	subi	%GPR3,%GPR30,$32	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$10	
	add	%GPR3,%GPR3,%GPR2	
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$10	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$32	
	MOD	%GPR4,%GPR1,%GPR4	
	addi	%GPR2,%GPR2,$1	
	nop	;;9,12
	nop	;;9,12
	nop	;;9,12
	addi	%GPR4,%GPR4,$48	
	div	%GPR1,%GPR1,%GPR5	
	nop	;;13,16
	nop	;;13,16
	nop	;;13,16
	sb	0(%GPR3),%GPR4	
	slt	%GPR27,%GPR2,%GPR6	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L7	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L8:
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
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$31	
	nop
	nop
	nop
L9:
	nop	; Automatically Added by addNopAfterLabels.pl
	subi	%GPR3,%GPR30,$32	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR3,%GPR2	
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$48	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	lb	%GPR3,0(%GPR3)	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
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
	subi	%GPR1,%GPR30,$32	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR1,%GPR2	
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$1	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	lb	%GPR3,0(%GPR3)	
	nop	;;8,13
	nop	;;8,13
	nop	;;8,13
	; Automatically 2 NOPs removed by reduceNOPs.sh


	;; asm void putChar(int ch) {...}
	nop
	nop
	nop
	;    putc %GPR3
	; Automatically 3 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
L11:
	nop	; Automatically Added by addNopAfterLabels.pl
	subi	%GPR2,%GPR2,$1	
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
	sge	%GPR27,%GPR2,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L15	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L12	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L12:
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
	seq	%GPR27,%GPR1,%GPR2	
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
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$48	


	;; asm void putChar(int ch) {...}
	nop
	nop
	nop
	;    putc %GPR1
	; Automatically 3 NOPs removed by reduceNOPs.sh

	nop
	nop
	nop
L14:
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
	j	L17	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L15:
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
	seq	%GPR27,%GPR1,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L16	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L9	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L16:
	nop	; Automatically Added by addNopAfterLabels.pl
	subi	%GPR3,%GPR30,$32	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR3,%GPR2	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lb	%GPR3,0(%GPR3)	
	nop	;;8,13
	nop	;;8,13
	nop	;;8,13
	; Automatically 2 NOPs removed by reduceNOPs.sh


	;; asm void putChar(int ch) {...}
	nop
	nop
	nop
	;    putc %GPR3
	; Automatically 3 NOPs removed by reduceNOPs.sh

	j	L11	
	nop
	nop
	nop
L17:
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