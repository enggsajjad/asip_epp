	.section	.data
	;.global	_mad_timer_zero
	.align	4
_mad_timer_zero:
	.space	8
	.section	.text
mad_timer_compare:
L1:
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
	NOP		
	NOP		
	NOP		
	lw	%GPR1,20(%GPR30)	
	lw	%GPR2,12(%GPR30)	
	NOP		;;3,7
	NOP		;;3,7
	NOP		;;3,7
	NOP		;;3,7
	sub	%GPR1,%GPR2,%GPR1	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	slt	%GPR27,%GPR1,%GPR3	
	bnez	%GPR27,L2	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L3	
	NOP		
	NOP		
	NOP		
	NOP		
L2:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR28,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$-1	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	j	L10	
	NOP		
	NOP		
	NOP		
	NOP		
L3:
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
	sgt	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L4	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L5	
	NOP		
	NOP		
	NOP		
	NOP		
L4:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$1	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	j	L10	
	NOP		
	NOP		
	NOP		
	NOP		
L5:
	NOP		;;0,2
	NOP		;;0,2
	subi	%GPR1,%GPR30,$-12	
	subi	%GPR2,%GPR30,$-20	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$4	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	add	%GPR1,%GPR1,%GPR3	
	add	%GPR2,%GPR2,%GPR4	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		;;10,12
	NOP		;;10,12
	lw	%GPR1,0(%GPR1)	
	lw	%GPR2,0(%GPR2)	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	subu	%GPR1,%GPR1,%GPR2	
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	slt	%GPR27,%GPR1,%GPR3	
	bnez	%GPR27,L6	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L7	
	NOP		
	NOP		
	NOP		
	NOP		
L6:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR28,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$-1	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	j	L10	
	NOP		
	NOP		
	NOP		
	NOP		
L7:
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
	sgt	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L8	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L9	
	NOP		
	NOP		
	NOP		
	NOP		
L8:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$1	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	j	L10	
	NOP		
	NOP		
	NOP		
	NOP		
L9:
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
	j	L10	
	NOP		
	NOP		
	NOP		
	NOP		
L10:
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
mad_timer_negate:
L11:
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
	lw	%GPR2,0(%GPR1)	
	NOP		;;3,7
	NOP		;;3,7
	NOP		;;3,7
	NOP		;;3,7
	sub	%GPR2,%GPR0,%GPR2	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$4	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	NOP		;;9,11
	NOP		;;9,11
	sw	0(%GPR1),%GPR2	
	add	%GPR2,%GPR1,%GPR3	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	lw	%GPR2,0(%GPR2)	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sne	%GPR27,%GPR2,%GPR4	
	bnez	%GPR27,L12	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L13	
	NOP		
	NOP		
	NOP		
	NOP		
L12:
	lw	%GPR2,0(%GPR1)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	subi	%GPR2,%GPR2,$1	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$4	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	lhi	%GPR5,$5383	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$352800000	
	sw	0(%GPR1),%GPR2	
	add	%GPR3,%GPR1,%GPR3	
	add	%GPR1,%GPR1,%GPR4	
	NOP		;;10,13
	NOP		;;10,13
	NOP		;;10,13
	lw	%GPR2,0(%GPR3)	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	subu	%GPR2,%GPR5,%GPR2	
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	sw	0(%GPR1),%GPR2	
	j	L13	
	NOP		
	NOP		
	NOP		
L13:
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
mad_timer_set:
L14:
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
	add	%GPR5,%GPR4,%GPR0	
	sw	-4(%GPR30),%GPR1	
	add	%GPR4,%GPR3,%GPR0	
	NOP		
	NOP		
	NOP		
	sw	0(%GPR1),%GPR2	
	sgeu	%GPR27,%GPR4,%GPR5	
	bnez	%GPR27,L15	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L25	
	NOP		
	NOP		
	NOP		
	NOP		
L15:
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
	sgtu	%GPR27,%GPR5,%GPR1	
	bnez	%GPR27,L16	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L25	
	NOP		
	NOP		
	NOP		
	NOP		
L16:
	lw	%GPR2,-4(%GPR30)	
	divu	%GPR1,%GPR4,%GPR5	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lw	%GPR2,0(%GPR2)	
	modu	%GPR4,%GPR4,%GPR5	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	addu	%GPR2,%GPR2,%GPR1	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$1	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	lw	%GPR1,-4(%GPR30)	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sw	0(%GPR1),%GPR2	
	NOP		
	NOP		
	NOP		
L17:
	add	%GPR1,%GPR5,%GPR0	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$22050	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sltu	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L18	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L29	
	NOP		
	NOP		
	NOP		
	NOP		
L18:
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
	sleu	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L26	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L19	
	NOP		
	NOP		
	NOP		
	NOP		
L19:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1000	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L36	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L20	
	NOP		
	NOP		
	NOP		
	NOP		
L20:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$8000	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L37	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L21	
	NOP		
	NOP		
	NOP		
	NOP		
L21:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$11025	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L38	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L22	
	NOP		
	NOP		
	NOP		
	NOP		
L22:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$12000	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L39	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L23	
	NOP		
	NOP		
	NOP		
	NOP		
L23:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$16000	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L24	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L45	
	NOP		
	NOP		
	NOP		
	NOP		
L24:
	NOP		;;0,2
	NOP		;;0,2
	lw	%GPR3,-4(%GPR30)	
	NOP		;;2,4
	NOP		;;2,4
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
	ori	%GPR2,%GPR2,$22050	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	add	%GPR1,%GPR3,%GPR1	
	multu	%GPR2,%GPR4,%GPR2	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	sw	0(%GPR1),%GPR2	
	j	L27	
	NOP		
	NOP		
	NOP		
L25:
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
	j	L17	
	NOP		
	NOP		
	NOP		
L26:
	lw	%GPR3,-4(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$4	
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
	sw	0(%GPR1),%GPR2	
	NOP		
	NOP		
	NOP		
L27:
	lw	%GPR3,-4(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$4	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR2,$5383	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$352800000	
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
	sgeu	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L28	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L46	
	NOP		
	NOP		
	NOP		
	NOP		
L28:
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
	jal	reduce_timer	
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
	j	L46	
	NOP		
	NOP		
	NOP		
L29:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$22050	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L40	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L30	
	NOP		
	NOP		
	NOP		
	NOP		
L30:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$24000	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L41	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L31	
	NOP		
	NOP		
	NOP		
	NOP		
L31:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$32000	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L42	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L32	
	NOP		
	NOP		
	NOP		
	NOP		
L32:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$44100	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L43	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L33	
	NOP		
	NOP		
	NOP		
	NOP		
L33:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$48000	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L44	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L34	
	NOP		
	NOP		
	NOP		
	NOP		
L34:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$5383	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$352800000	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L35	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L45	
	NOP		
	NOP		
	NOP		
	NOP		
L35:
	lw	%GPR2,-4(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$4	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	add	%GPR1,%GPR2,%GPR1	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	sw	0(%GPR1),%GPR4	
	j	L27	
	NOP		
	NOP		
	NOP		
L36:
	NOP		;;0,2
	NOP		;;0,2
	lw	%GPR3,-4(%GPR30)	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$4	
	lhi	%GPR2,$5	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$352800	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	add	%GPR1,%GPR3,%GPR1	
	multu	%GPR2,%GPR4,%GPR2	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	sw	0(%GPR1),%GPR2	
	j	L27	
	NOP		
	NOP		
	NOP		
L37:
	NOP		;;0,2
	NOP		;;0,2
	lw	%GPR3,-4(%GPR30)	
	NOP		;;2,4
	NOP		;;2,4
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
	ori	%GPR2,%GPR2,$44100	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	add	%GPR1,%GPR3,%GPR1	
	multu	%GPR2,%GPR4,%GPR2	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	sw	0(%GPR1),%GPR2	
	j	L27	
	NOP		
	NOP		
	NOP		
L38:
	NOP		;;0,2
	NOP		;;0,2
	lw	%GPR3,-4(%GPR30)	
	NOP		;;2,4
	NOP		;;2,4
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
	ori	%GPR2,%GPR2,$32000	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	add	%GPR1,%GPR3,%GPR1	
	multu	%GPR2,%GPR4,%GPR2	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	sw	0(%GPR1),%GPR2	
	j	L27	
	NOP		
	NOP		
	NOP		
L39:
	NOP		;;0,2
	NOP		;;0,2
	lw	%GPR3,-4(%GPR30)	
	NOP		;;2,4
	NOP		;;2,4
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
	ori	%GPR2,%GPR2,$29400	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	add	%GPR1,%GPR3,%GPR1	
	multu	%GPR2,%GPR4,%GPR2	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	sw	0(%GPR1),%GPR2	
	j	L27	
	NOP		
	NOP		
	NOP		
L40:
	NOP		;;0,2
	NOP		;;0,2
	lw	%GPR3,-4(%GPR30)	
	NOP		;;2,4
	NOP		;;2,4
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
	ori	%GPR2,%GPR2,$16000	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	add	%GPR1,%GPR3,%GPR1	
	multu	%GPR2,%GPR4,%GPR2	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	sw	0(%GPR1),%GPR2	
	j	L27	
	NOP		
	NOP		
	NOP		
L41:
	NOP		;;0,2
	NOP		;;0,2
	lw	%GPR3,-4(%GPR30)	
	NOP		;;2,4
	NOP		;;2,4
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
	ori	%GPR2,%GPR2,$14700	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	add	%GPR1,%GPR3,%GPR1	
	multu	%GPR2,%GPR4,%GPR2	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	sw	0(%GPR1),%GPR2	
	j	L27	
	NOP		
	NOP		
	NOP		
L42:
	NOP		;;0,2
	NOP		;;0,2
	lw	%GPR3,-4(%GPR30)	
	NOP		;;2,4
	NOP		;;2,4
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
	ori	%GPR2,%GPR2,$11025	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	add	%GPR1,%GPR3,%GPR1	
	multu	%GPR2,%GPR4,%GPR2	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	sw	0(%GPR1),%GPR2	
	j	L27	
	NOP		
	NOP		
	NOP		
L43:
	NOP		;;0,2
	NOP		;;0,2
	lw	%GPR3,-4(%GPR30)	
	NOP		;;2,4
	NOP		;;2,4
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
	ori	%GPR2,%GPR2,$8000	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	add	%GPR1,%GPR3,%GPR1	
	multu	%GPR2,%GPR4,%GPR2	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	sw	0(%GPR1),%GPR2	
	j	L27	
	NOP		
	NOP		
	NOP		
L44:
	NOP		;;0,2
	NOP		;;0,2
	lw	%GPR3,-4(%GPR30)	
	NOP		;;2,4
	NOP		;;2,4
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
	ori	%GPR2,%GPR2,$7350	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	add	%GPR1,%GPR3,%GPR1	
	multu	%GPR2,%GPR4,%GPR2	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	sw	0(%GPR1),%GPR2	
	j	L27	
	NOP		
	NOP		
	NOP		
L45:
	lw	%GPR2,-4(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$4	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR3,$5383	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$352800000	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR1,%GPR2,%GPR1	
	add	%GPR2,%GPR5,%GPR0	
	NOP		;;9,12
	NOP		;;9,12
	NOP		;;9,12
	sw	-8(%GPR30),%GPR1	
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
	jal	scale_rational	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR1,-8(%GPR30)	
	NOP		;;15,19
	NOP		;;15,19
	NOP		;;15,19
	NOP		;;15,19
	sw	0(%GPR1),%GPR28	
	j	L27	
	NOP		
	NOP		
	NOP		
L46:
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
mad_timer_add:
L47:
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
	lw	%GPR3,0(%GPR1)	
	lw	%GPR2,12(%GPR30)	
	NOP		;;4,7
	NOP		;;4,7
	NOP		;;4,7
	subi	%GPR4,%GPR30,$-12	
	add	%GPR2,%GPR3,%GPR2	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$4	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$4	
	NOP		;;10,12
	NOP		;;10,12
	sw	0(%GPR1),%GPR2	
	add	%GPR2,%GPR4,%GPR3	
	add	%GPR3,%GPR1,%GPR5	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	NOP		;;15,17
	NOP		;;15,17
	lw	%GPR2,0(%GPR2)	
	lw	%GPR3,0(%GPR3)	
	add	%GPR4,%GPR1,%GPR4	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$4	
	NOP		;;20,22
	NOP		;;20,22
	addu	%GPR2,%GPR3,%GPR2	
	NOP		;;22,24
	NOP		;;22,24
	add	%GPR3,%GPR1,%GPR5	
	lhi	%GPR5,$5383	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$352800000	
	sw	0(%GPR4),%GPR2	
	NOP		;;26,30
	NOP		;;26,30
	NOP		;;26,30
	NOP		;;26,30
	lw	%GPR2,0(%GPR3)	
	NOP		;;30,34
	NOP		;;30,34
	NOP		;;30,34
	NOP		;;30,34
	sgeu	%GPR27,%GPR2,%GPR5	
	bnez	%GPR27,L48	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L49	
	NOP		
	NOP		
	NOP		
	NOP		
L48:
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	reduce_timer	
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
	j	L49	
	NOP		
	NOP		
	NOP		
L49:
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
mad_timer_multiply:
L50:
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
	add	%GPR28,%GPR2,%GPR0	
	NOP		;;4,7
	NOP		;;4,7
	NOP		;;4,7
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	slt	%GPR27,%GPR2,%GPR3	
	bnez	%GPR27,L51	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L52	
	NOP		
	NOP		
	NOP		
	NOP		
L51:
	sub	%GPR28,%GPR0,%GPR2	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	mad_timer_negate	
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
	NOP		
	NOP		
	NOP		
L52:
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
	sne	%GPR27,%GPR28,%GPR1	
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
	srli	%GPR28,%GPR28,$1	
	j	L52	
	NOP		
	NOP		
	NOP		
L54:
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
mad_timer_count:
L55:
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
	sw	-4(%GPR30),%GPR1	
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
	ori	%GPR2,%GPR2,$100	
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	slt	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L56	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L70	
	NOP		
	NOP		
	NOP		
	NOP		
L56:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$30	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	slt	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L57	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L64	
	NOP		
	NOP		
	NOP		
	NOP		
L57:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$-2	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L82	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L58	
	NOP		
	NOP		
	NOP		
	NOP		
L58:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$-1	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L83	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L59	
	NOP		
	NOP		
	NOP		
	NOP		
L59:
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
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L84	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L60	
	NOP		
	NOP		
	NOP		
	NOP		
L60:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$10	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L63	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L61	
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
	ori	%GPR2,%GPR2,$24	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sge	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L62	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L69	
	NOP		
	NOP		
	NOP		
	NOP		
L62:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$25	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sle	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L63	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L69	
	NOP		
	NOP		
	NOP		
	NOP		
L63:
	subi	%GPR1,%GPR30,$-12	
	lw	%GPR3,-4(%GPR30)	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	NOP		;;4,7
	NOP		;;4,7
	NOP		;;4,7
	lhi	%GPR2,$5383	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$352800000	
	add	%GPR1,%GPR1,%GPR4	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
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
	jal	scale_rational	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR2,-4(%GPR30)	
	lw	%GPR1,12(%GPR30)	
	NOP		;;15,19
	NOP		;;15,19
	NOP		;;15,19
	NOP		;;15,19
	mac	%GPR28,%GPR1,%GPR2	
	NOP		;;19,23
	NOP		;;19,23
	NOP		;;19,23
	NOP		;;19,23
	j	L85	
	NOP		
	NOP		
	NOP		
	NOP		
L64:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$30	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L63	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L65	
	NOP		
	NOP		
	NOP		
	NOP		
L65:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$48	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L63	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L66	
	NOP		
	NOP		
	NOP		
	NOP		
L66:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$50	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L63	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L67	
	NOP		
	NOP		
	NOP		
	NOP		
L67:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$60	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L63	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L68	
	NOP		
	NOP		
	NOP		
	NOP		
L68:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$75	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L63	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L69	
	NOP		
	NOP		
	NOP		
	NOP		
L69:
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
	j	L85	
	NOP		
	NOP		
	NOP		
	NOP		
L70:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$16000	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	slt	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L71	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L76	
	NOP		
	NOP		
	NOP		
	NOP		
L71:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$100	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L63	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L72	
	NOP		
	NOP		
	NOP		
	NOP		
L72:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1000	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L63	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L73	
	NOP		
	NOP		
	NOP		
	NOP		
L73:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$8000	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L63	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L74	
	NOP		
	NOP		
	NOP		
	NOP		
L74:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$11025	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L63	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L75	
	NOP		
	NOP		
	NOP		
	NOP		
L75:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$12000	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L63	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L69	
	NOP		
	NOP		
	NOP		
	NOP		
L76:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$16000	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L63	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L77	
	NOP		
	NOP		
	NOP		
	NOP		
L77:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$22050	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L63	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L78	
	NOP		
	NOP		
	NOP		
	NOP		
L78:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$24000	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L63	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L79	
	NOP		
	NOP		
	NOP		
	NOP		
L79:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$32000	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L63	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L80	
	NOP		
	NOP		
	NOP		
	NOP		
L80:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$44100	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L63	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L81	
	NOP		
	NOP		
	NOP		
	NOP		
L81:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$48000	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L63	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L69	
	NOP		
	NOP		
	NOP		
	NOP		
L82:
	lw	%GPR1,12(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$3600	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	div	%GPR28,%GPR1,%GPR2	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	j	L85	
	NOP		
	NOP		
	NOP		
	NOP		
L83:
	lw	%GPR1,12(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$60	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	div	%GPR28,%GPR1,%GPR2	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	j	L85	
	NOP		
	NOP		
	NOP		
	NOP		
L84:
	lw	%GPR28,12(%GPR30)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	j	L85	
	NOP		
	NOP		
	NOP		
	NOP		
L85:
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
mad_timer_fraction:
L86:
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
	add	%GPR3,%GPR1,%GPR0	
	NOP		
	NOP		
	NOP		
	NOP		;;2,4
	NOP		;;2,4
	add	%GPR1,%GPR3,%GPR0	
	NOP		;;4,7
	NOP		;;4,7
	NOP		;;4,7
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L89	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L87	
	NOP		
	NOP		
	NOP		
	NOP		
L87:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$5383	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$352800000	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L88	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L93	
	NOP		
	NOP		
	NOP		
	NOP		
L88:
	subi	%GPR1,%GPR30,$-12	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	lw	%GPR28,0(%GPR1)	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	j	L94	
	NOP		
	NOP		
	NOP		
	NOP		
L89:
	subi	%GPR1,%GPR30,$-12	
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
	ori	%GPR3,%GPR3,$0	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR1,%GPR1,%GPR2	
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
	bnez	%GPR27,L90	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L91	
	NOP		
	NOP		
	NOP		
	NOP		
L90:
	subi	%GPR1,%GPR30,$-12	
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
	lhi	%GPR3,$5383	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$352800000	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	lw	%GPR1,0(%GPR1)	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	divu	%GPR28,%GPR3,%GPR1	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	j	L92	
	NOP		
	NOP		
	NOP		
L91:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR28,$5383	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$352800001	
	NOP		
	NOP		
	NOP		
L92:
	j	L94	
	NOP		
	NOP		
	NOP		
	NOP		
L93:
	subi	%GPR1,%GPR30,$-12	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR2,$5383	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$352800000	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR1,%GPR1,%GPR4	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
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
	jal	scale_rational	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L94	
	NOP		
	NOP		
	NOP		
	NOP		
L94:
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
mad_timer_string:
L95:
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
	sw	-4(%GPR30),%GPR3	
	NOP		
	NOP		
	NOP		
	NOP		;;2,4
	NOP		;;2,4
	add	%GPR1,%GPR4,%GPR0	
	NOP		;;4,7
	NOP		;;4,7
	NOP		;;4,7
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$75	
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	slt	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L96	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L117	
	NOP		
	NOP		
	NOP		
	NOP		
L96:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$10	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	slt	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L97	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L110	
	NOP		
	NOP		
	NOP		
	NOP		
L97:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$-60	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L103	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L98	
	NOP		
	NOP		
	NOP		
	NOP		
L98:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$-50	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L103	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L99	
	NOP		
	NOP		
	NOP		
	NOP		
L99:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$-48	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L103	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L100	
	NOP		
	NOP		
	NOP		
	NOP		
L100:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$-30	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L103	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L101	
	NOP		
	NOP		
	NOP		
	NOP		
L101:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$-25	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sge	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L102	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L104	
	NOP		
	NOP		
	NOP		
	NOP		
L102:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$-24	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sle	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L103	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L104	
	NOP		
	NOP		
	NOP		
	NOP		
L103:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$-60	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$10	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	mult	%GPR2,%GPR4,%GPR2	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	mult	%GPR2,%GPR2,%GPR3	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	subi	%GPR2,%GPR2,$18	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	modu	%GPR1,%GPR1,%GPR2	
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	NOP		
	NOP		
	NOP		
L104:
	lw	%GPR1,-4(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR2,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$-60	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L131	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L105	
	NOP		
	NOP		
	NOP		
	NOP		
L105:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$-50	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L131	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L106	
	NOP		
	NOP		
	NOP		
	NOP		
L106:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$-48	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L131	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L107	
	NOP		
	NOP		
	NOP		
	NOP		
L107:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$-30	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L131	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L108	
	NOP		
	NOP		
	NOP		
	NOP		
L108:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$-25	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sge	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L109	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L131	
	NOP		
	NOP		
	NOP		
	NOP		
L109:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$-24	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sle	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L131	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L131	
	NOP		
	NOP		
	NOP		
	NOP		
L110:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$10	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L130	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L111	
	NOP		
	NOP		
	NOP		
	NOP		
L111:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
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
	sge	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L112	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L104	
	NOP		
	NOP		
	NOP		
	NOP		
L112:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$25	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sle	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L130	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L113	
	NOP		
	NOP		
	NOP		
	NOP		
L113:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$30	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L130	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L114	
	NOP		
	NOP		
	NOP		
	NOP		
L114:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$48	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L130	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L115	
	NOP		
	NOP		
	NOP		
	NOP		
L115:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$50	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L130	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L116	
	NOP		
	NOP		
	NOP		
	NOP		
L116:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$60	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L130	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L104	
	NOP		
	NOP		
	NOP		
	NOP		
L117:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$16000	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	slt	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L118	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L124	
	NOP		
	NOP		
	NOP		
	NOP		
L118:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$75	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L130	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L119	
	NOP		
	NOP		
	NOP		
	NOP		
L119:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$100	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L130	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L120	
	NOP		
	NOP		
	NOP		
	NOP		
L120:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1000	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L130	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L121	
	NOP		
	NOP		
	NOP		
	NOP		
L121:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$8000	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L130	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L122	
	NOP		
	NOP		
	NOP		
	NOP		
L122:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$11025	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L130	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L123	
	NOP		
	NOP		
	NOP		
	NOP		
L123:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$12000	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L130	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L104	
	NOP		
	NOP		
	NOP		
	NOP		
L124:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$16000	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L130	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L125	
	NOP		
	NOP		
	NOP		
	NOP		
L125:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$22050	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L130	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L126	
	NOP		
	NOP		
	NOP		
	NOP		
L126:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$24000	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L130	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L127	
	NOP		
	NOP		
	NOP		
	NOP		
L127:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$32000	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L130	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L128	
	NOP		
	NOP		
	NOP		
	NOP		
L128:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$44100	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L130	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L129	
	NOP		
	NOP		
	NOP		
	NOP		
L129:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$48000	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L130	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L104	
	NOP		
	NOP		
	NOP		
	NOP		
L130:
	subi	%GPR1,%GPR30,$-12	
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
	lhi	%GPR3,$5383	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$352800000	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;8,10
	NOP		;;8,10
	divu	%GPR2,%GPR3,%GPR4	
	NOP		;;10,12
	NOP		;;10,12
	lw	%GPR1,0(%GPR1)	
	NOP		;;12,14
	NOP		;;12,14
	add	%GPR3,%GPR5,%GPR0	
	NOP		;;14,16
	NOP		;;14,16
	modu	%GPR1,%GPR1,%GPR2	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	scale_rational	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L104	
	NOP		
	NOP		
	NOP		
L131:
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
reduce_timer:
L132:
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
	lw	%GPR2,0(%GPR1)	
	NOP		;;5,7
	NOP		;;5,7
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$4	
	lhi	%GPR4,$5383	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$352800000	
	NOP		;;8,10
	NOP		;;8,10
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$4	
	add	%GPR3,%GPR1,%GPR3	
	NOP		;;11,13
	NOP		;;11,13
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$4	
	add	%GPR5,%GPR1,%GPR5	
	lw	%GPR3,0(%GPR3)	
	lhi	%GPR6,$5383	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$352800000	
	NOP		;;16,19
	NOP		;;16,19
	NOP		;;16,19
	divu	%GPR3,%GPR3,%GPR4	
	NOP		;;19,23
	NOP		;;19,23
	NOP		;;19,23
	NOP		;;19,23
	addu	%GPR2,%GPR2,%GPR3	
	add	%GPR4,%GPR1,%GPR7	
	NOP		;;24,27
	NOP		;;24,27
	NOP		;;24,27
	sw	0(%GPR1),%GPR2	
	NOP		;;27,31
	NOP		;;27,31
	NOP		;;27,31
	NOP		;;27,31
	lw	%GPR1,0(%GPR5)	
	NOP		;;31,35
	NOP		;;31,35
	NOP		;;31,35
	NOP		;;31,35
	modu	%GPR1,%GPR1,%GPR6	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	sw	0(%GPR4),%GPR1	
	j	L133	
	NOP		
	NOP		
	NOP		
L133:
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
gcd:
L134:
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
	NOP		
	NOP		
	NOP		
L135:
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
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sne	%GPR27,%GPR2,%GPR3	
	bnez	%GPR27,L136	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L137	
	NOP		
	NOP		
	NOP		
	NOP		
L136:
	add	%GPR3,%GPR2,%GPR0	
	modu	%GPR2,%GPR1,%GPR2	
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	add	%GPR1,%GPR3,%GPR0	
	j	L135	
	NOP		
	NOP		
	NOP		
L137:
	add	%GPR28,%GPR1,%GPR0	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	j	L138	
	NOP		
	NOP		
	NOP		
	NOP		
L138:
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
reduce_rational:
L139:
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
	NOP		
	NOP		
	NOP		
	lw	%GPR2,0(%GPR2)	
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
	jal	gcd	
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
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	add	%GPR2,%GPR1,%GPR0	
	lw	%GPR1,0(%GPR1)	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	divu	%GPR1,%GPR1,%GPR28	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sw	0(%GPR2),%GPR1	
	lw	%GPR1,-8(%GPR30)	
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
	divu	%GPR1,%GPR1,%GPR28	
	NOP		;;30,34
	NOP		;;30,34
	NOP		;;30,34
	NOP		;;30,34
	sw	0(%GPR2),%GPR1	
	j	L140	
	NOP		
	NOP		
	NOP		
L140:
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
scale_rational:
L141:
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
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	sw	-8(%GPR30),%GPR2	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	sw	-12(%GPR30),%GPR3	
	NOP		
	NOP		
	NOP		
	subi	%GPR2,%GPR30,$8	
	subi	%GPR1,%GPR30,$4	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	reduce_rational	
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
	subi	%GPR2,%GPR30,$8	
	subi	%GPR1,%GPR30,$12	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	reduce_rational	
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
	lw	%GPR2,-8(%GPR30)	
	lw	%GPR1,-12(%GPR30)	
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	sltu	%GPR27,%GPR2,%GPR1	
	bnez	%GPR27,L142	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L143	
	NOP		
	NOP		
	NOP		
	NOP		
L142:
	lw	%GPR1,-12(%GPR30)	
	lw	%GPR2,-8(%GPR30)	
	lw	%GPR3,-4(%GPR30)	
	lw	%GPR4,-12(%GPR30)	
	lw	%GPR5,-8(%GPR30)	
	modu	%GPR1,%GPR1,%GPR2	
	lw	%GPR6,-4(%GPR30)	
	NOP		;;6,8
	NOP		;;6,8
	divu	%GPR4,%GPR4,%GPR5	
	multu	%GPR1,%GPR1,%GPR3	
	lw	%GPR2,-8(%GPR30)	
	NOP		;;10,13
	NOP		;;10,13
	NOP		;;10,13
	multu	%GPR3,%GPR4,%GPR6	
	divu	%GPR1,%GPR1,%GPR2	
	NOP		;;14,18
	NOP		;;14,18
	NOP		;;14,18
	NOP		;;14,18
	addu	%GPR28,%GPR1,%GPR3	
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	j	L146	
	NOP		
	NOP		
	NOP		
	NOP		
L143:
	lw	%GPR1,-8(%GPR30)	
	lw	%GPR2,-4(%GPR30)	
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	sltu	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L144	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L145	
	NOP		
	NOP		
	NOP		
	NOP		
L144:
	lw	%GPR1,-4(%GPR30)	
	lw	%GPR2,-8(%GPR30)	
	lw	%GPR3,-12(%GPR30)	
	lw	%GPR4,-4(%GPR30)	
	lw	%GPR5,-8(%GPR30)	
	modu	%GPR1,%GPR1,%GPR2	
	lw	%GPR6,-12(%GPR30)	
	NOP		;;6,8
	NOP		;;6,8
	divu	%GPR4,%GPR4,%GPR5	
	multu	%GPR1,%GPR1,%GPR3	
	lw	%GPR2,-8(%GPR30)	
	NOP		;;10,13
	NOP		;;10,13
	NOP		;;10,13
	multu	%GPR3,%GPR4,%GPR6	
	divu	%GPR1,%GPR1,%GPR2	
	NOP		;;14,18
	NOP		;;14,18
	NOP		;;14,18
	NOP		;;14,18
	addu	%GPR28,%GPR1,%GPR3	
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	j	L146	
	NOP		
	NOP		
	NOP		
	NOP		
L145:
	lw	%GPR1,-4(%GPR30)	
	lw	%GPR2,-12(%GPR30)	
	lw	%GPR3,-8(%GPR30)	
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	multu	%GPR1,%GPR1,%GPR2	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	divu	%GPR28,%GPR1,%GPR3	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	j	L146	
	NOP		
	NOP		
	NOP		
	NOP		
L146:
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
