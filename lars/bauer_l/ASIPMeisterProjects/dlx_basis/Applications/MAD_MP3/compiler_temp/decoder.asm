	.section	.data
	.section	.text
	.addressing	Word
mad_decoder_init:
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
	lhi	%GPR10,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$-1	
	lhi	%GPR9,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$4	
	nop	;;8,10
	nop	;;8,10
	lhi	%GPR11,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR11,%GPR11,$8	
	sw	0(%GPR1),%GPR10	
	add	%GPR9,%GPR1,%GPR9	
	lhi	%GPR10,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$0	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR9),%GPR10	
	add	%GPR10,%GPR1,%GPR11	
	lhi	%GPR9,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$0	
	lhi	%GPR12,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR12,%GPR12,$12	
	lhi	%GPR11,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR11,%GPR11,$16	
	nop	;;21,23
	nop	;;21,23
	sw	0(%GPR10),%GPR9	
	add	%GPR10,%GPR1,%GPR12	
	lhi	%GPR9,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$-1	
	nop	;;25,27
	nop	;;25,27
	lhi	%GPR13,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR13,%GPR13,$-1	
	nop	;;27,29
	nop	;;27,29
	sw	0(%GPR10),%GPR9	
	add	%GPR9,%GPR1,%GPR11	
	lhi	%GPR12,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR12,%GPR12,$20	
	nop	;;31,33
	nop	;;31,33
	lhi	%GPR10,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$24	
	sw	0(%GPR9),%GPR13	
	add	%GPR9,%GPR1,%GPR12	
	lhi	%GPR11,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR11,%GPR11,$0	
	nop	;;36,39
	nop	;;36,39
	nop	;;36,39
	add	%GPR10,%GPR1,%GPR10	
	sw	0(%GPR9),%GPR11	
	lhi	%GPR12,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR12,%GPR12,$28	
	lhi	%GPR9,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$32	
	nop	;;42,44
	nop	;;42,44
	sw	0(%GPR10),%GPR2	
	add	%GPR11,%GPR1,%GPR12	
	nop	;;45,47
	nop	;;45,47
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$36	
	add	%GPR9,%GPR1,%GPR9	
	sw	0(%GPR11),%GPR3	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$40	
	add	%GPR2,%GPR1,%GPR2	
	nop	;;51,53
	nop	;;51,53
	sw	0(%GPR9),%GPR4	
	nop	;;53,55
	nop	;;53,55
	add	%GPR3,%GPR1,%GPR3	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$44	
	sw	0(%GPR2),%GPR5	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$48	
	nop	;;58,60
	nop	;;58,60
	add	%GPR4,%GPR1,%GPR4	
	sw	0(%GPR3),%GPR6	
	add	%GPR1,%GPR1,%GPR2	
	nop	;;62,65
	nop	;;62,65
	nop	;;62,65
	sw	0(%GPR4),%GPR7	
	nop	;;65,69
	nop	;;65,69
	nop	;;65,69
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR8	
	j	L2	
	nop
	nop
	nop
L2:
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
mad_decoder_finish:
L3:
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
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L4	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L4:
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
mad_decoder_run:
L5:
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
	sw	0(%GPR1),%GPR2	
	nop	;;3,6
	nop	;;3,6
	nop	;;3,6
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	lw	%GPR1,0(%GPR1)	
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
	seq	%GPR27,%GPR1,%GPR3	
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
	lhi	%GPR2,$( run_sync	/0x10000)
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$( run_sync	%0x10000)
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 4 NOPs removed by reduceNOPs.sh
L7:
	nop	;;0,3
	nop	;;0,3
	nop	;;0,3
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	;;3,7
	nop	;;3,7
	nop	;;3,7
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR2,%GPR1	
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
	j	L12	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L9:
	lw	%GPR4,-4(%GPR30)	
	nop	;;1,3
	nop	;;1,3
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
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
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR3,0(%GPR3)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR3,%GPR1	
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
	j	L12	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L11:
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
	jalr	%GPR2	
	nop	; Automatically added by cosy2meta_asm.sh
	nop
	nop
				; Automatically 2 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 3 NOPs removed by reduceNOPs.sh
	lw	%GPR3,-4(%GPR30)	
	nop	;;3,5
	nop	;;3,5
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
	ori	%GPR2,%GPR2,$20	
	nop	;;6,10
	nop	;;6,10
	nop	;;6,10
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR3,%GPR2	
	nop	;;10,14
	nop	;;10,14
	nop	;;10,14
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2),%GPR1	
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
mad_decoder_message:
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
	lhi	%GPR28,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$-1	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L14	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L14:
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
error_default:
L15:
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
	ori	%GPR4,%GPR4,$60	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$513	
	nop	;;8,11
	nop	;;8,11
	nop	;;8,11
	add	%GPR2,%GPR2,%GPR4	
	nop	;;11,15
	nop	;;11,15
	nop	;;11,15
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR2)	
	nop	;;15,19
	nop	;;15,19
	nop	;;15,19
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR2,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L16	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L20	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L16:
	lw	%GPR2,0(%GPR1)	
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
	sne	%GPR27,%GPR2,%GPR4	
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
	add	%GPR1,%GPR3,%GPR0	
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
	j	L19	
	nop
	nop
	nop
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
	sw	0(%GPR1),%GPR2	
	nop
	nop
	nop
L19:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$32	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
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
	j	L21	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L21:
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
run_sync:
L22:
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
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-8(%GPR30),%GPR1	
	nop
	nop
	nop
				; Automatically 5 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
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
	ori	%GPR1,%GPR1,$28	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	sw	-12(%GPR30),%GPR4	
	lw	%GPR4,-8(%GPR30)	
	sw	-4(%GPR30),%GPR2	
	nop	;;13,16
	nop	;;13,16
	nop	;;13,16
	add	%GPR1,%GPR4,%GPR1	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop	;;20,24
	nop	;;20,24
	nop	;;20,24
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L23	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L24	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L23:
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
	j	L55	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L24:
	lw	%GPR3,-8(%GPR30)	
	nop	;;1,3
	nop	;;1,3
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
	ori	%GPR2,%GPR2,$44	
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
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR2,%GPR1	
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
	lw	%GPR3,-8(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$44	
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
	sw	-16(%GPR30),%GPR1	
	lw	%GPR1,0(%GPR2)	
	nop	;;17,21
	nop	;;17,21
	nop	;;17,21
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-20(%GPR30),%GPR1	
	j	L27	
	nop
	nop
	nop
L26:
	lhi	%GPR1,$( error_default	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( error_default	%0x10000)
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR1	
	subi	%GPR1,%GPR30,$4	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-20(%GPR30),%GPR1	
	nop
	nop
	nop
L27:
	nop	;;0,2
	nop	;;0,2
	lw	%GPR4,-8(%GPR30)	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$20	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$20	
	nop	;;5,7
	nop	;;5,7
	add	%GPR6,%GPR4,%GPR0	
	add	%GPR1,%GPR4,%GPR1	
	add	%GPR2,%GPR4,%GPR2	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$64	
	nop	;;10,12
	nop	;;10,12
	lw	%GPR1,0(%GPR1)	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$20	
	lw	%GPR2,0(%GPR2)	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$9332	
	add	%GPR1,%GPR1,%GPR4	
	add	%GPR3,%GPR6,%GPR3	
	nop	;;17,20
	nop	;;17,20
	nop	;;17,20
	sw	-24(%GPR30),%GPR1	
	add	%GPR1,%GPR2,%GPR5	
	lw	%GPR3,0(%GPR3)	
	nop	;;22,25
	nop	;;22,25
	nop	;;22,25
	sw	-28(%GPR30),%GPR1	
	sw	-32(%GPR30),%GPR3	
	add	%GPR1,%GPR3,%GPR0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	mad_stream_init	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 5 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-24(%GPR30)	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	mad_frame_init	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 5 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-28(%GPR30)	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	mad_synth_init	
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
	nop	;;34,37
	nop	;;34,37
	nop	;;34,37
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	
	nop	;;37,39
	nop	;;37,39
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$56	
	nop	;;39,41
	nop	;;39,41
	add	%GPR1,%GPR3,%GPR1	
	lw	%GPR3,-32(%GPR30)	
	nop	;;42,45
	nop	;;42,45
	nop	;;42,45
	lw	%GPR1,0(%GPR1)	
	add	%GPR2,%GPR3,%GPR2	
	nop	;;46,50
	nop	;;46,50
	nop	;;46,50
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2),%GPR1	
	nop
	nop
	nop
L28:
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
	ori	%GPR1,%GPR1,$28	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$24	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR1,%GPR3,%GPR1	
	add	%GPR2,%GPR3,%GPR2	
	nop	;;9,12
	nop	;;9,12
	nop	;;9,12
	lw	%GPR3,0(%GPR1)	
	lw	%GPR1,0(%GPR2)	
	lw	%GPR2,-32(%GPR30)	
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
				; Automatically 3 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR28,%GPR0	
	nop	;;17,20
	nop	;;17,20
	nop	;;17,20
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$16	
	nop	;;20,24
	nop	;;20,24
	nop	;;20,24
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L54	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L29	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
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
	ori	%GPR2,%GPR2,$17	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L53	
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
	ori	%GPR2,%GPR2,$32	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L52	
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
	lw	%GPR3,-8(%GPR30)	
	nop	;;1,3
	nop	;;1,3
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
	ori	%GPR2,%GPR2,$32	
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
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR2,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L32	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L39	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L32:
	lw	%GPR1,-24(%GPR30)	
	lw	%GPR2,-32(%GPR30)	
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
	bnez	%GPR27,L33	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L36	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L33:
	lw	%GPR3,-32(%GPR30)	
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
	bnez	%GPR27,L52	
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
	lw	%GPR4,-16(%GPR30)	
	lw	%GPR3,-24(%GPR30)	
	lw	%GPR2,-32(%GPR30)	
	lw	%GPR1,-20(%GPR30)	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jalr	%GPR4	
	nop	; Automatically added by cosy2meta_asm.sh
	nop
	nop
				; Automatically 2 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 3 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR28,%GPR0	
	nop	;;6,9
	nop	;;6,9
	nop	;;6,9
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$16	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L54	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L35	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L35:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$17	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L53	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L31	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L36:
	nop	;;0,2
	nop	;;0,2
	lw	%GPR4,-8(%GPR30)	
	lw	%GPR2,-24(%GPR30)	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$32	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$24	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR1,%GPR4,%GPR1	
	add	%GPR3,%GPR4,%GPR3	
	nop	;;9,12
	nop	;;9,12
	nop	;;9,12
	lw	%GPR4,0(%GPR1)	
	lw	%GPR1,0(%GPR3)	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jalr	%GPR4	
	nop	; Automatically added by cosy2meta_asm.sh
	nop
	nop
				; Automatically 2 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 3 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR28,%GPR0	
	nop	;;16,19
	nop	;;16,19
	nop	;;16,19
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$16	
	nop	;;19,23
	nop	;;19,23
	nop	;;19,23
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L54	
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
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$17	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L53	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L38	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L38:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$32	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
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
	j	L39	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L39:
	lw	%GPR2,-32(%GPR30)	
	lw	%GPR1,-24(%GPR30)	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	mad_frame_decode	
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
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
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
	j	L44	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L40:
	lw	%GPR3,-32(%GPR30)	
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
	bnez	%GPR27,L52	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L41	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L41:
	lw	%GPR4,-16(%GPR30)	
	lw	%GPR3,-24(%GPR30)	
	lw	%GPR2,-32(%GPR30)	
	lw	%GPR1,-20(%GPR30)	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jalr	%GPR4	
	nop	; Automatically added by cosy2meta_asm.sh
	nop
	nop
				; Automatically 2 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 3 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR28,%GPR0	
	nop	;;6,9
	nop	;;6,9
	nop	;;6,9
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$16	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L54	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L42	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L42:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$17	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L53	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L43	
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
	ori	%GPR2,%GPR2,$32	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L45	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L31	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L44:
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
	sw	-4(%GPR30),%GPR1	
	nop
	nop
	nop
L45:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR3,-8(%GPR30)	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	;;5,7
	nop	;;5,7
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$36	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR3,%GPR2	
	nop	;;11,15
	nop	;;11,15
	nop	;;11,15
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR2)	
	nop	;;15,19
	nop	;;15,19
	nop	;;15,19
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR2,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L46	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L49	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L46:
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
	ori	%GPR1,%GPR1,$36	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$24	
	nop	;;5,8
	nop	;;5,8
	nop	;;5,8
	add	%GPR1,%GPR3,%GPR1	
	add	%GPR2,%GPR3,%GPR2	
	lw	%GPR3,-24(%GPR30)	
	nop	;;10,12
	nop	;;10,12
	lw	%GPR4,0(%GPR1)	
	lw	%GPR1,0(%GPR2)	
	lw	%GPR2,-32(%GPR30)	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jalr	%GPR4	
	nop	; Automatically added by cosy2meta_asm.sh
	nop
	nop
				; Automatically 2 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 3 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR28,%GPR0	
	nop	;;17,20
	nop	;;17,20
	nop	;;17,20
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$16	
	nop	;;20,24
	nop	;;20,24
	nop	;;20,24
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L54	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L47	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L47:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$17	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L53	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L48	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L48:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$32	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
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
	j	L49	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L49:
	lw	%GPR2,-24(%GPR30)	
	lw	%GPR1,-28(%GPR30)	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	mad_synth_frame	
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
	nop	;;4,6
	nop	;;4,6
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
	ori	%GPR2,%GPR2,$40	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR3,%GPR2	
	nop	;;11,15
	nop	;;11,15
	nop	;;11,15
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR2)	
	nop	;;15,19
	nop	;;15,19
	nop	;;15,19
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR2,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L50	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L31	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L50:
	lw	%GPR5,-8(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$40	
	lw	%GPR2,-24(%GPR30)	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$4100	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$24	
	add	%GPR1,%GPR5,%GPR1	
	lw	%GPR5,-28(%GPR30)	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR5,%GPR3	
	lw	%GPR5,-8(%GPR30)	
	nop	;;14,18
	nop	;;14,18
	nop	;;14,18
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR4,%GPR5,%GPR4	
	lw	%GPR5,0(%GPR1)	
	nop	;;19,22
	nop	;;19,22
	nop	;;19,22
	lw	%GPR1,0(%GPR4)	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jalr	%GPR5	
	nop	; Automatically added by cosy2meta_asm.sh
	nop
	nop
				; Automatically 2 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 3 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR28,%GPR0	
	nop	;;25,28
	nop	;;25,28
	nop	;;25,28
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$16	
	nop	;;28,32
	nop	;;28,32
	nop	;;28,32
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L54	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L51	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L51:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$17	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L53	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L31	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L52:
	lw	%GPR3,-32(%GPR30)	
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
	ori	%GPR2,%GPR2,$1	
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
	bnez	%GPR27,L28	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L53	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L53:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$-1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-12(%GPR30),%GPR1	
	nop
	nop
	nop
L54:
	lw	%GPR1,-24(%GPR30)	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	mad_frame_finish	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 5 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-32(%GPR30)	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	mad_stream_finish	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 5 NOPs removed by reduceNOPs.sh
	lw	%GPR28,-12(%GPR30)	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L55	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L55:
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
