	.section	.data
	;.global	_mad_timer_zero
	.align	4
_mad_timer_zero:
	.space	8
	.section	.text
	.addressing	Word
mad_timer_compare:
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
				; Automatically 4 NOPs removed by reduceNOPs.sh
	lw	%GPR1,20(%GPR30)	
	lw	%GPR2,12(%GPR30)	
	nop	;;3,7
	nop	;;3,7
	nop	;;3,7
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sub	%GPR1,%GPR2,%GPR1	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR1,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L2	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L3	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L2:
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
	j	L10	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L3:
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
	sgt	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L4	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L5	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
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
	ori	%GPR28,%GPR28,$1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L10	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L5:
	nop	;;0,2
	nop	;;0,2
	subi	%GPR1,%GPR30,$-12	
	subi	%GPR2,%GPR30,$-20	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$4	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR1,%GPR1,%GPR3	
	add	%GPR2,%GPR2,%GPR4	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop	;;10,12
	nop	;;10,12
	lw	%GPR1,0(%GPR1)	
	lw	%GPR2,0(%GPR2)	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subu	%GPR1,%GPR1,%GPR2	
	nop	;;17,21
	nop	;;17,21
	nop	;;17,21
				; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR1,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L6	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L7	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L6:
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
	j	L10	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L7:
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
	sgt	%GPR27,%GPR1,%GPR2	
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
	j	L10	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L9:
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
	j	L10	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L10:
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
mad_timer_negate:
L11:
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
	lw	%GPR2,0(%GPR1)	
	nop	;;3,7
	nop	;;3,7
	nop	;;3,7
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sub	%GPR2,%GPR0,%GPR2	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$4	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop	;;9,11
	nop	;;9,11
	sw	0(%GPR1),%GPR2	
	add	%GPR2,%GPR1,%GPR3	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR2)	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR2,%GPR4	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L12	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L13	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L12:
	lw	%GPR2,0(%GPR1)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR2,%GPR2,$1	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$4	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	lhi	%GPR5,$5383	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$352800000	
	sw	0(%GPR1),%GPR2	
	add	%GPR3,%GPR1,%GPR3	
	add	%GPR1,%GPR1,%GPR4	
	nop	;;10,13
	nop	;;10,13
	nop	;;10,13
	lw	%GPR2,0(%GPR3)	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subu	%GPR2,%GPR5,%GPR2	
	nop	;;17,21
	nop	;;17,21
	nop	;;17,21
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	j	L13	
	nop
	nop
	nop
L13:
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
mad_timer_set:
L14:
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
	add	%GPR5,%GPR4,%GPR0	
	sw	-4(%GPR30),%GPR1	
	add	%GPR4,%GPR3,%GPR0	
	nop
	nop
	nop
	sw	0(%GPR1),%GPR2	
	sgeu	%GPR27,%GPR4,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L15	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L25	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L15:
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
	sgtu	%GPR27,%GPR5,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L16	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L25	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L16:
	lw	%GPR2,-4(%GPR30)	
	divu	%GPR1,%GPR4,%GPR5	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lw	%GPR2,0(%GPR2)	
	modu	%GPR4,%GPR4,%GPR5	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	addu	%GPR2,%GPR2,%GPR1	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$1	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-4(%GPR30)	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	nop
	nop
	nop
L17:
	add	%GPR1,%GPR5,%GPR0	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$22050	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sltu	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L18	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L29	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L18:
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
	sleu	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L26	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L19	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L19:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1000	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
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
	j	L20	
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
	ori	%GPR2,%GPR2,$8000	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L37	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L21	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L21:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$11025	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
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
	j	L22	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L22:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$12000	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L39	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L23	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L23:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$16000	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L24	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L45	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L24:
	nop	;;0,2
	nop	;;0,2
	lw	%GPR3,-4(%GPR30)	
	nop	;;2,4
	nop	;;2,4
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
	ori	%GPR2,%GPR2,$22050	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR1,%GPR3,%GPR1	
	multu	%GPR2,%GPR4,%GPR2	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	j	L27	
	nop
	nop
	nop
L25:
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
	j	L17	
	nop
	nop
	nop
L26:
	lw	%GPR3,-4(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	
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
	sw	0(%GPR1),%GPR2	
	nop
	nop
	nop
L27:
	lw	%GPR3,-4(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$5383	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$352800000	
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
	sgeu	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L28	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L46	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L28:
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
	jal	reduce_timer	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 5 NOPs removed by reduceNOPs.sh
	j	L46	
	nop
	nop
	nop
L29:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$22050	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L40	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L30	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L30:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$24000	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L41	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L31	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L31:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$32000	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L42	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L32	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L32:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$44100	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L43	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L33	
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
	ori	%GPR2,%GPR2,$48000	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L44	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L34	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L34:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$5383	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$352800000	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L35	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L45	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L35:
	lw	%GPR2,-4(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR2,%GPR1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR4	
	j	L27	
	nop
	nop
	nop
L36:
	nop	;;0,2
	nop	;;0,2
	lw	%GPR3,-4(%GPR30)	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	
	lhi	%GPR2,$5	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$352800	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR1,%GPR3,%GPR1	
	multu	%GPR2,%GPR4,%GPR2	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	j	L27	
	nop
	nop
	nop
L37:
	nop	;;0,2
	nop	;;0,2
	lw	%GPR3,-4(%GPR30)	
	nop	;;2,4
	nop	;;2,4
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
	ori	%GPR2,%GPR2,$44100	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR1,%GPR3,%GPR1	
	multu	%GPR2,%GPR4,%GPR2	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	j	L27	
	nop
	nop
	nop
L38:
	nop	;;0,2
	nop	;;0,2
	lw	%GPR3,-4(%GPR30)	
	nop	;;2,4
	nop	;;2,4
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
	ori	%GPR2,%GPR2,$32000	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR1,%GPR3,%GPR1	
	multu	%GPR2,%GPR4,%GPR2	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	j	L27	
	nop
	nop
	nop
L39:
	nop	;;0,2
	nop	;;0,2
	lw	%GPR3,-4(%GPR30)	
	nop	;;2,4
	nop	;;2,4
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
	ori	%GPR2,%GPR2,$29400	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR1,%GPR3,%GPR1	
	multu	%GPR2,%GPR4,%GPR2	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	j	L27	
	nop
	nop
	nop
L40:
	nop	;;0,2
	nop	;;0,2
	lw	%GPR3,-4(%GPR30)	
	nop	;;2,4
	nop	;;2,4
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
	ori	%GPR2,%GPR2,$16000	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR1,%GPR3,%GPR1	
	multu	%GPR2,%GPR4,%GPR2	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	j	L27	
	nop
	nop
	nop
L41:
	nop	;;0,2
	nop	;;0,2
	lw	%GPR3,-4(%GPR30)	
	nop	;;2,4
	nop	;;2,4
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
	ori	%GPR2,%GPR2,$14700	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR1,%GPR3,%GPR1	
	multu	%GPR2,%GPR4,%GPR2	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	j	L27	
	nop
	nop
	nop
L42:
	nop	;;0,2
	nop	;;0,2
	lw	%GPR3,-4(%GPR30)	
	nop	;;2,4
	nop	;;2,4
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
	ori	%GPR2,%GPR2,$11025	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR1,%GPR3,%GPR1	
	multu	%GPR2,%GPR4,%GPR2	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	j	L27	
	nop
	nop
	nop
L43:
	nop	;;0,2
	nop	;;0,2
	lw	%GPR3,-4(%GPR30)	
	nop	;;2,4
	nop	;;2,4
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
	ori	%GPR2,%GPR2,$8000	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR1,%GPR3,%GPR1	
	multu	%GPR2,%GPR4,%GPR2	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	j	L27	
	nop
	nop
	nop
L44:
	nop	;;0,2
	nop	;;0,2
	lw	%GPR3,-4(%GPR30)	
	nop	;;2,4
	nop	;;2,4
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
	ori	%GPR2,%GPR2,$7350	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR1,%GPR3,%GPR1	
	multu	%GPR2,%GPR4,%GPR2	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	j	L27	
	nop
	nop
	nop
L45:
	lw	%GPR2,-4(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR3,$5383	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$352800000	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR2,%GPR1	
	add	%GPR2,%GPR5,%GPR0	
	nop	;;9,12
	nop	;;9,12
	nop	;;9,12
	sw	-8(%GPR30),%GPR1	
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
	jal	scale_rational	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-8(%GPR30)	
	nop	;;15,19
	nop	;;15,19
	nop	;;15,19
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR28	
	j	L27	
	nop
	nop
	nop
L46:
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
mad_timer_add:
L47:
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
	lw	%GPR3,0(%GPR1)	
	lw	%GPR2,12(%GPR30)	
	nop	;;4,7
	nop	;;4,7
	nop	;;4,7
	subi	%GPR4,%GPR30,$-12	
	add	%GPR2,%GPR3,%GPR2	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$4	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	nop	;;10,12
	nop	;;10,12
	sw	0(%GPR1),%GPR2	
	add	%GPR2,%GPR4,%GPR3	
	add	%GPR3,%GPR1,%GPR5	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop	;;15,17
	nop	;;15,17
	lw	%GPR2,0(%GPR2)	
	lw	%GPR3,0(%GPR3)	
	add	%GPR4,%GPR1,%GPR4	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	nop	;;20,22
	nop	;;20,22
	addu	%GPR2,%GPR3,%GPR2	
	nop	;;22,24
	nop	;;22,24
	add	%GPR3,%GPR1,%GPR5	
	lhi	%GPR5,$5383	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$352800000	
	sw	0(%GPR4),%GPR2	
	nop	;;26,30
	nop	;;26,30
	nop	;;26,30
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR3)	
	nop	;;30,34
	nop	;;30,34
	nop	;;30,34
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sgeu	%GPR27,%GPR2,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L48	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L49	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L48:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	reduce_timer	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 5 NOPs removed by reduceNOPs.sh
	j	L49	
	nop
	nop
	nop
L49:
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
mad_timer_multiply:
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
				; Automatically 8 NOPs removed by reduceNOPs.sh
	add	%GPR28,%GPR2,%GPR0	
	nop	;;4,7
	nop	;;4,7
	nop	;;4,7
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
				; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR2,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L51	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L52	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L51:
	sub	%GPR28,%GPR0,%GPR2	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	mad_timer_negate	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 8 NOPs removed by reduceNOPs.sh
L52:
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
	sne	%GPR27,%GPR28,%GPR1	
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
	srli	%GPR28,%GPR28,$1	
	j	L52	
	nop
	nop
	nop
L54:
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
mad_timer_count:
L55:
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
	sw	-4(%GPR30),%GPR1	
	nop
	nop
	nop
				; Automatically 5 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$100	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
				; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L56	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L70	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L56:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$30	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L57	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L64	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L57:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$-2	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L82	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L58	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L58:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$-1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L83	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L59	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L59:
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
	bnez	%GPR27,L84	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L60	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L60:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$10	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L63	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L61	
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
	ori	%GPR2,%GPR2,$24	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sge	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L62	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L69	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L62:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$25	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sle	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L63	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L69	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L63:
	subi	%GPR1,%GPR30,$-12	
	lw	%GPR3,-4(%GPR30)	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop	;;4,7
	nop	;;4,7
	nop	;;4,7
	lhi	%GPR2,$5383	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$352800000	
	add	%GPR1,%GPR1,%GPR4	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
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
	jal	scale_rational	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR2,-4(%GPR30)	
	lw	%GPR1,12(%GPR30)	
	nop	;;15,19
	nop	;;15,19
	nop	;;15,19
				; Automatically 1 NOPs removed by reduceNOPs.sh
	mac	%GPR28,%GPR1,%GPR2	
	nop	;;19,23
	nop	;;19,23
	nop	;;19,23
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L85	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L64:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$30	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L63	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L65	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L65:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$48	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L63	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L66	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L66:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$50	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L63	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L67	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L67:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$60	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L63	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L68	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L68:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$75	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L63	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L69	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L69:
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
	j	L85	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L70:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$16000	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L71	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L76	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L71:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$100	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L63	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L72	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L72:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1000	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L63	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L73	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L73:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$8000	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L63	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L74	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L74:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$11025	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L63	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L75	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L75:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$12000	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L63	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L69	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L76:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$16000	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L63	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L77	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L77:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$22050	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L63	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L78	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L78:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$24000	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L63	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L79	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L79:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$32000	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L63	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L80	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L80:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$44100	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L63	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L81	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L81:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$48000	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L63	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L69	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L82:
	lw	%GPR1,12(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$3600	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	div	%GPR28,%GPR1,%GPR2	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L85	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L83:
	lw	%GPR1,12(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$60	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	div	%GPR28,%GPR1,%GPR2	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L85	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L84:
	lw	%GPR28,12(%GPR30)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L85	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L85:
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
mad_timer_fraction:
L86:
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
	add	%GPR3,%GPR1,%GPR0	
	nop
	nop
	nop
				; Automatically 2 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR3,%GPR0	
	nop	;;4,7
	nop	;;4,7
	nop	;;4,7
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L89	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L87	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L87:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$5383	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$352800000	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L88	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L93	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L88:
	subi	%GPR1,%GPR30,$-12	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR28,0(%GPR1)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L94	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L89:
	subi	%GPR1,%GPR30,$-12	
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
	ori	%GPR3,%GPR3,$0	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR1,%GPR2	
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
	bnez	%GPR27,L90	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L91	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L90:
	subi	%GPR1,%GPR30,$-12	
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
	lhi	%GPR3,$5383	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$352800000	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR1,%GPR2	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	divu	%GPR28,%GPR3,%GPR1	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L92	
	nop
	nop
	nop
L91:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$5383	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$352800001	
	nop
	nop
	nop
L92:
	j	L94	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L93:
	subi	%GPR1,%GPR30,$-12	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR2,$5383	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$352800000	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR1,%GPR4	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
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
	jal	scale_rational	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L94	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L94:
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
mad_timer_string:
L95:
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
	sw	-4(%GPR30),%GPR3	
	nop
	nop
	nop
				; Automatically 2 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR4,%GPR0	
	nop	;;4,7
	nop	;;4,7
	nop	;;4,7
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$75	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
				; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L96	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L117	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L96:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$10	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L97	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L110	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L97:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$-60	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L103	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L98	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L98:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$-50	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L103	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L99	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L99:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$-48	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L103	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L100	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L100:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$-30	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L103	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L101	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L101:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$-25	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sge	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L102	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L104	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L102:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$-24	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sle	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L103	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L104	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L103:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$-60	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$10	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	mult	%GPR2,%GPR4,%GPR2	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	mult	%GPR2,%GPR2,%GPR3	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR2,%GPR2,$18	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	modu	%GPR1,%GPR1,%GPR2	
	nop	;;20,24
	nop	;;20,24
	nop	;;20,24
				; Automatically 4 NOPs removed by reduceNOPs.sh
L104:
	lw	%GPR1,-4(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR2,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$-60	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L131	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L105	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L105:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$-50	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L131	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L106	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L106:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$-48	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L131	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L107	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L107:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$-30	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L131	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L108	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L108:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$-25	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sge	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L109	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L131	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L109:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$-24	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sle	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L131	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L131	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L110:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$10	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L130	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L111	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L111:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
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
	sge	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L112	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L104	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L112:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$25	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sle	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L130	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L113	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L113:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$30	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L130	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L114	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L114:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$48	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L130	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L115	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L115:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$50	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L130	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L116	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L116:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$60	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L130	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L104	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L117:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$16000	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L118	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L124	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L118:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$75	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L130	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L119	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L119:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$100	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L130	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L120	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L120:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1000	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L130	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L121	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L121:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$8000	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L130	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L122	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L122:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$11025	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L130	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L123	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L123:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$12000	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L130	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L104	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L124:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$16000	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L130	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L125	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L125:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$22050	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L130	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L126	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L126:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$24000	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L130	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L127	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L127:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$32000	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L130	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L128	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L128:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$44100	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L130	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L129	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L129:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$48000	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L130	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L104	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L130:
	subi	%GPR1,%GPR30,$-12	
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
	lhi	%GPR3,$5383	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$352800000	
	nop	;;6,8
	nop	;;6,8
	add	%GPR1,%GPR1,%GPR2	
	nop	;;8,10
	nop	;;8,10
	divu	%GPR2,%GPR3,%GPR4	
	nop	;;10,12
	nop	;;10,12
	lw	%GPR1,0(%GPR1)	
	nop	;;12,14
	nop	;;12,14
	add	%GPR3,%GPR5,%GPR0	
	nop	;;14,16
	nop	;;14,16
	modu	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	scale_rational	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L104	
	nop
	nop
	nop
L131:
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
reduce_timer:
L132:
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
	lw	%GPR2,0(%GPR1)	
	nop	;;5,7
	nop	;;5,7
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$4	
	lhi	%GPR4,$5383	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$352800000	
	nop	;;8,10
	nop	;;8,10
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	add	%GPR3,%GPR1,%GPR3	
	nop	;;11,13
	nop	;;11,13
	lhi	%GPR7,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$4	
	add	%GPR5,%GPR1,%GPR5	
	lw	%GPR3,0(%GPR3)	
	lhi	%GPR6,$5383	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$352800000	
	nop	;;16,19
	nop	;;16,19
	nop	;;16,19
	divu	%GPR3,%GPR3,%GPR4	
	nop	;;19,23
	nop	;;19,23
	nop	;;19,23
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addu	%GPR2,%GPR2,%GPR3	
	add	%GPR4,%GPR1,%GPR7	
	nop	;;24,27
	nop	;;24,27
	nop	;;24,27
	sw	0(%GPR1),%GPR2	
	nop	;;27,31
	nop	;;27,31
	nop	;;27,31
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR5)	
	nop	;;31,35
	nop	;;31,35
	nop	;;31,35
				; Automatically 1 NOPs removed by reduceNOPs.sh
	modu	%GPR1,%GPR1,%GPR6	
	nop	;;35,39
	nop	;;35,39
	nop	;;35,39
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4),%GPR1	
	j	L133	
	nop
	nop
	nop
L133:
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
gcd:
L134:
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
L135:
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
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR2,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L136	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L137	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L136:
	add	%GPR3,%GPR2,%GPR0	
	modu	%GPR2,%GPR1,%GPR2	
	nop	;;1,5
	nop	;;1,5
	nop	;;1,5
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR3,%GPR0	
	j	L135	
	nop
	nop
	nop
L137:
	add	%GPR28,%GPR1,%GPR0	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L138	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L138:
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
reduce_rational:
L139:
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
	nop
	nop
	nop
	lw	%GPR2,0(%GPR2)	
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
	jal	gcd	
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
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	
	lw	%GPR1,0(%GPR1)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	divu	%GPR1,%GPR1,%GPR28	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2),%GPR1	
	lw	%GPR1,-8(%GPR30)	
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
	divu	%GPR1,%GPR1,%GPR28	
	nop	;;30,34
	nop	;;30,34
	nop	;;30,34
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2),%GPR1	
	j	L140	
	nop
	nop
	nop
L140:
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
scale_rational:
L141:
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
	nop	;;1,5
	nop	;;1,5
	nop	;;1,5
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-8(%GPR30),%GPR2	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-12(%GPR30),%GPR3	
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$8	
	subi	%GPR1,%GPR30,$4	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	reduce_rational	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 5 NOPs removed by reduceNOPs.sh
	subi	%GPR2,%GPR30,$8	
	subi	%GPR1,%GPR30,$12	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	reduce_rational	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 5 NOPs removed by reduceNOPs.sh
	lw	%GPR2,-8(%GPR30)	
	lw	%GPR1,-12(%GPR30)	
	nop	;;18,22
	nop	;;18,22
	nop	;;18,22
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sltu	%GPR27,%GPR2,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L142	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L143	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L142:
	lw	%GPR1,-12(%GPR30)	
	lw	%GPR2,-8(%GPR30)	
	lw	%GPR3,-4(%GPR30)	
	lw	%GPR4,-12(%GPR30)	
	lw	%GPR5,-8(%GPR30)	
	modu	%GPR1,%GPR1,%GPR2	
	lw	%GPR6,-4(%GPR30)	
	nop	;;6,8
	nop	;;6,8
	divu	%GPR4,%GPR4,%GPR5	
	multu	%GPR1,%GPR1,%GPR3	
	lw	%GPR2,-8(%GPR30)	
	nop	;;10,13
	nop	;;10,13
	nop	;;10,13
	multu	%GPR3,%GPR4,%GPR6	
	divu	%GPR1,%GPR1,%GPR2	
	nop	;;14,18
	nop	;;14,18
	nop	;;14,18
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addu	%GPR28,%GPR1,%GPR3	
	nop	;;18,22
	nop	;;18,22
	nop	;;18,22
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L146	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L143:
	lw	%GPR1,-8(%GPR30)	
	lw	%GPR2,-4(%GPR30)	
	nop	;;1,5
	nop	;;1,5
	nop	;;1,5
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sltu	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L144	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L145	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L144:
	lw	%GPR1,-4(%GPR30)	
	lw	%GPR2,-8(%GPR30)	
	lw	%GPR3,-12(%GPR30)	
	lw	%GPR4,-4(%GPR30)	
	lw	%GPR5,-8(%GPR30)	
	modu	%GPR1,%GPR1,%GPR2	
	lw	%GPR6,-12(%GPR30)	
	nop	;;6,8
	nop	;;6,8
	divu	%GPR4,%GPR4,%GPR5	
	multu	%GPR1,%GPR1,%GPR3	
	lw	%GPR2,-8(%GPR30)	
	nop	;;10,13
	nop	;;10,13
	nop	;;10,13
	multu	%GPR3,%GPR4,%GPR6	
	divu	%GPR1,%GPR1,%GPR2	
	nop	;;14,18
	nop	;;14,18
	nop	;;14,18
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addu	%GPR28,%GPR1,%GPR3	
	nop	;;18,22
	nop	;;18,22
	nop	;;18,22
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L146	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L145:
	lw	%GPR1,-4(%GPR30)	
	lw	%GPR2,-12(%GPR30)	
	lw	%GPR3,-8(%GPR30)	
	nop	;;2,5
	nop	;;2,5
	nop	;;2,5
	multu	%GPR1,%GPR1,%GPR2	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
				; Automatically 1 NOPs removed by reduceNOPs.sh
	divu	%GPR28,%GPR1,%GPR3	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L146	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L146:
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
