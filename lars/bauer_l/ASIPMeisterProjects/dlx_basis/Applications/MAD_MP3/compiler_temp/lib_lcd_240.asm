	.section	.data
	.align	4
L1:
	.data.32	1
	.section	.text
	.addressing	Word
checkbuffer:
L2:
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
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$222	


	lhi	%GPR5, $0x200
	nop
	nop
	nop

	nop	;;8,13
	nop	;;8,13
	nop	;;8,13
				; Automatically 2 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$4	


	nop
	nop
	nop
	sw	0(%GPR5), %GPR3



	nop
	nop
	nop
	sw	0(%GPR5), %GPR1

	nop	;;15,20
	nop	;;15,20
	nop	;;15,20
				; Automatically 2 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$18	


	nop
	nop
	nop
	sw	0(%GPR5), %GPR3

	nop	;;21,26
	nop	;;21,26
	nop	;;21,26
				; Automatically 2 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$18	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$1	


	nop
	nop
	nop
	sw	0(%GPR5), %GPR3

	nop	;;28,30
	nop	;;28,30
	add	%GPR4,%GPR4,%GPR3	
	nop	;;30,33
	nop	;;30,33
	nop	;;30,33
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$73	


	nop
	nop
	nop
	sw	0(%GPR5), %GPR3

	add	%GPR4,%GPR4,%GPR3	


	nop
	nop
	nop
	sw	0(%GPR5), %GPR4

	nop	;;36,41
	nop	;;36,41
	nop	;;36,41
				; Automatically 2 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$-1	
	nop
	nop
	nop
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


	nop
	nop
	nop
	sw	0(%GPR5), %GPR2

	addi	%GPR3,%GPR1,$1	


	nop
	nop
	nop
	sw	0(%GPR5), %GPR3

	nop	;;7,12
	nop	;;7,12
	nop	;;7,12
				; Automatically 2 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$6	


	nop
	nop
	nop
	sw	0(%GPR5), %GPR2



	nop
	nop
	nop
	lw	%GPR3,0(%GPR5)
	nop
	nop
	nop



	nop
	nop
	nop
	lw	%GPR3,0(%GPR5)
	nop
	nop
	nop



	nop
	nop
	nop
	lw	%GPR2,0(%GPR5)
	nop
	nop
	nop

	add	%GPR4,%GPR3,%GPR2	


	nop
	nop
	nop
	lw	%GPR2,0(%GPR5)
	nop
	nop
	nop

	add	%GPR4,%GPR4,%GPR2	


	nop
	nop
	nop
	lw	%GPR3,0(%GPR5)
	nop
	nop
	nop

	add	%GPR4,%GPR4,%GPR3	


	nop
	nop
	nop
	lw	%GPR3,0(%GPR5)
	nop
	nop
	nop

	nop	;;22,27
	nop	;;22,27
	nop	;;22,27
				; Automatically 2 NOPs removed by reduceNOPs.sh
	lhi	%GPR6,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$256	
	nop	;;27,31
	nop	;;27,31
	nop	;;27,31
				; Automatically 1 NOPs removed by reduceNOPs.sh
	MOD	%GPR4,%GPR4,%GPR6	
	nop	;;31,35
	nop	;;31,35
	nop	;;31,35
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR4,%GPR3	
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
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$4	


	nop
	nop
	nop
	sw	0(%GPR5), %GPR3



	nop
	nop
	nop
	sw	0(%GPR5), %GPR1

	nop	;;6,11
	nop	;;6,11
	nop	;;6,11
				; Automatically 2 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$18	


	nop
	nop
	nop
	sw	0(%GPR5), %GPR3

	nop	;;12,17
	nop	;;12,17
	nop	;;12,17
				; Automatically 2 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$18	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$1	


	nop
	nop
	nop
	sw	0(%GPR5), %GPR3

	nop	;;19,21
	nop	;;19,21
	add	%GPR4,%GPR4,%GPR3	
	nop	;;21,24
	nop	;;21,24
	nop	;;21,24
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$82	


	nop
	nop
	nop
	sw	0(%GPR5), %GPR3

	add	%GPR4,%GPR4,%GPR3	


	nop
	nop
	nop
	sw	0(%GPR5), %GPR4

	nop
	nop
	nop
L5:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$-1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR4,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L3	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L6	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L6:
	add	%GPR28,%GPR2,%GPR0	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L7	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L7:
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
getbytes:
L8:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
	subi	%GPR29,%GPR29,$36	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR1	
	sw	-8(%GPR30),%GPR2	
	nop
	nop
	nop
				; Automatically 5 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$222	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-12(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR1	


	lhi	%GPR1, $0x200
	nop
	nop
	nop

	nop	;;18,20
	nop	;;18,20
	add	%GPR2,%GPR1,%GPR0	
	sw	-20(%GPR30),%GPR1	
	nop	;;21,23
	nop	;;21,23
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	


	nop
	nop
	nop
	sw	0(%GPR2), %GPR1

	lw	%GPR1,-12(%GPR30)	


	nop
	nop
	nop
	sw	0(%GPR2), %GPR1

	nop	;;26,31
	nop	;;26,31
	nop	;;26,31
				; Automatically 2 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$18	


	nop
	nop
	nop
	sw	0(%GPR2), %GPR1

	nop	;;32,37
	nop	;;32,37
	nop	;;32,37
				; Automatically 2 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$1	
	nop	;;37,41
	nop	;;37,41
	nop	;;37,41
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-24(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$18	
	nop	;;42,46
	nop	;;42,46
	nop	;;42,46
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-28(%GPR30),%GPR1	
	lw	%GPR1,-24(%GPR30)	


	nop
	nop
	nop
	sw	0(%GPR2), %GPR1

	add	%GPR2,%GPR1,%GPR0	
	lw	%GPR1,-28(%GPR30)	
	nop	;;50,54
	nop	;;50,54
	nop	;;50,54
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	lw	%GPR2,-20(%GPR30)	
	nop	;;55,58
	nop	;;55,58
	nop	;;55,58
	sw	-28(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$83	


	nop
	nop
	nop
	sw	0(%GPR2), %GPR1

	add	%GPR2,%GPR1,%GPR0	
	lw	%GPR1,-28(%GPR30)	
	nop	;;62,66
	nop	;;62,66
	nop	;;62,66
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	lw	%GPR2,-20(%GPR30)	


	nop
	nop
	nop
	sw	0(%GPR2), %GPR1

	nop	;;68,73
	nop	;;68,73
	nop	;;68,73
				; Automatically 2 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$-1	
	nop
	nop
	nop
L9:
	lw	%GPR2,-20(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	


	nop
	nop
	nop
	sw	0(%GPR2), %GPR1

	lw	%GPR1,-12(%GPR30)	
	nop	;;6,10
	nop	;;6,10
	nop	;;6,10
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	


	nop
	nop
	nop
	sw	0(%GPR2), %GPR1

	lw	%GPR1,-8(%GPR30)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$4	


	nop
	nop
	nop
	sw	0(%GPR2), %GPR1

	add	%GPR1,%GPR2,%GPR0	


	nop
	nop
	nop
	lw	%GPR1,0(%GPR1)
	nop
	nop
	nop

	add	%GPR1,%GPR2,%GPR0	


	nop
	nop
	nop
	lw	%GPR1,0(%GPR1)
	nop
	nop
	nop

	add	%GPR2,%GPR1,%GPR0	
	lw	%GPR1,-20(%GPR30)	


	nop
	nop
	nop
	lw	%GPR1,0(%GPR1)
	nop
	nop
	nop

	add	%GPR1,%GPR2,%GPR1	
	nop	;;25,29
	nop	;;25,29
	nop	;;25,29
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-28(%GPR30),%GPR1	
	nop
	nop
	nop
L10:
	lw	%GPR1,-16(%GPR30)	
	lw	%GPR2,-8(%GPR30)	
	nop	;;1,5
	nop	;;1,5
	nop	;;1,5
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR1,%GPR2	
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
	lw	%GPR1,-20(%GPR30)	


	nop
	nop
	nop
	lw	%GPR1,0(%GPR1)
	nop
	nop
	nop

	sw	-24(%GPR30),%GPR1	
	lw	%GPR2,-16(%GPR30)	
	lw	%GPR1,-4(%GPR30)	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	lw	%GPR2,-24(%GPR30)	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	storeByte	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-28(%GPR30)	
	lw	%GPR2,-24(%GPR30)	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-28(%GPR30),%GPR1	
	lw	%GPR1,-16(%GPR30)	
	nop	;;21,25
	nop	;;21,25
	nop	;;21,25
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop	;;25,29
	nop	;;25,29
	nop	;;25,29
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR1	
	j	L10	
	nop
	nop
	nop
L12:
	lw	%GPR1,-20(%GPR30)	


	nop
	nop
	nop
	lw	%GPR1,0(%GPR1)
	nop
	nop
	nop

	lw	%GPR2,-28(%GPR30)	
	nop	;;2,6
	nop	;;2,6
	nop	;;2,6
				; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR2,%GPR2,$255	
	nop	;;6,10
	nop	;;6,10
	nop	;;6,10
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-28(%GPR30),%GPR2	
	sne	%GPR27,%GPR2,%GPR1	
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
	lw	%GPR2,-20(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	


	nop
	nop
	nop
	sw	0(%GPR2), %GPR1

	lw	%GPR1,-12(%GPR30)	


	nop
	nop
	nop
	sw	0(%GPR2), %GPR1

	nop	;;7,12
	nop	;;7,12
	nop	;;7,12
				; Automatically 2 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$18	


	nop
	nop
	nop
	sw	0(%GPR2), %GPR1

	nop	;;13,18
	nop	;;13,18
	nop	;;13,18
				; Automatically 2 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$1	
	nop	;;18,22
	nop	;;18,22
	nop	;;18,22
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-24(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$18	
	nop	;;23,27
	nop	;;23,27
	nop	;;23,27
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-28(%GPR30),%GPR1	
	lw	%GPR1,-24(%GPR30)	


	nop
	nop
	nop
	sw	0(%GPR2), %GPR1

	add	%GPR2,%GPR1,%GPR0	
	lw	%GPR1,-28(%GPR30)	
	nop	;;31,35
	nop	;;31,35
	nop	;;31,35
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	lw	%GPR2,-20(%GPR30)	
	nop	;;36,39
	nop	;;36,39
	nop	;;36,39
	sw	-28(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$82	


	nop
	nop
	nop
	sw	0(%GPR2), %GPR1

	add	%GPR2,%GPR1,%GPR0	
	lw	%GPR1,-28(%GPR30)	
	nop	;;43,47
	nop	;;43,47
	nop	;;43,47
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	lw	%GPR2,-20(%GPR30)	
	nop	;;48,51
	nop	;;48,51
	nop	;;48,51
	sw	-28(%GPR30),%GPR1	


	nop
	nop
	nop
	sw	0(%GPR2), %GPR1

	nop
	nop
	nop
L14:
	lw	%GPR2,-28(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
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
	seq	%GPR27,%GPR2,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L9	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L15	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L15:
	lw	%GPR28,-16(%GPR30)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L16	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L16:
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
sendcommand:
L17:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
	subi	%GPR29,%GPR29,$52	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR1	
	sw	-8(%GPR30),%GPR2	
	sw	-12(%GPR30),%GPR5	
	sw	-16(%GPR30),%GPR6	
	nop
	nop
	nop
	sw	-20(%GPR30),%GPR3	
	sw	-24(%GPR30),%GPR4	


	lhi	%GPR1, $0x200
	nop
	nop
	nop

	sw	-28(%GPR30),%GPR1	
	add	%GPR1,%GPR7,%GPR0	
	nop	;;10,14
	nop	;;10,14
	nop	;;10,14
				; Automatically 1 NOPs removed by reduceNOPs.sh
	slli	%GPR1,%GPR1,$1	
	nop	;;14,18
	nop	;;14,18
	nop	;;14,18
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-32(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$3	
	nop	;;19,23
	nop	;;19,23
	nop	;;19,23
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-36(%GPR30),%GPR1	
	nop
	nop
	nop
L18:
	lw	%GPR2,-16(%GPR30)	
	lw	%GPR1,-12(%GPR30)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	add	%GPR3,%GPR2,%GPR0	
	sw	-40(%GPR30),%GPR2	
	lw	%GPR2,-12(%GPR30)	
	nop	;;6,10
	nop	;;6,10
	nop	;;6,10
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR2,%GPR3	
	lw	%GPR3,-36(%GPR30)	
	nop	;;11,15
	nop	;;11,15
	nop	;;11,15
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR2,%GPR3	
	lw	%GPR3,-28(%GPR30)	
	nop	;;16,19
	nop	;;16,19
	nop	;;16,19
	addi	%GPR2,%GPR2,$3	
	nop	;;19,24
	nop	;;19,24
	nop	;;19,24
				; Automatically 2 NOPs removed by reduceNOPs.sh


	nop
	nop
	nop
	sw	0(%GPR3), %GPR2

	lw	%GPR2,-32(%GPR30)	
	nop	;;25,30
	nop	;;25,30
	nop	;;25,30
				; Automatically 2 NOPs removed by reduceNOPs.sh


	nop
	nop
	nop
	sw	0(%GPR3), %GPR2

	nop	;;30,35
	nop	;;30,35
	nop	;;30,35
				; Automatically 2 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$17	
	nop	;;35,40
	nop	;;35,40
	nop	;;35,40
				; Automatically 2 NOPs removed by reduceNOPs.sh


	nop
	nop
	nop
	sw	0(%GPR3), %GPR2

	lw	%GPR3,-16(%GPR30)	
	lw	%GPR2,-12(%GPR30)	
	nop	;;42,46
	nop	;;42,46
	nop	;;42,46
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR2,%GPR3	
	lw	%GPR3,-36(%GPR30)	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$17	
	nop	;;48,51
	nop	;;48,51
	nop	;;48,51
	add	%GPR2,%GPR2,%GPR3	
	sw	-44(%GPR30),%GPR4	
	lw	%GPR4,-28(%GPR30)	
	nop	;;53,55
	nop	;;53,55
	add	%GPR3,%GPR2,%GPR0	
	nop	;;55,60
	nop	;;55,60
	nop	;;55,60
				; Automatically 2 NOPs removed by reduceNOPs.sh


	nop
	nop
	nop
	sw	0(%GPR4), %GPR3

	lw	%GPR3,-44(%GPR30)	
	nop	;;61,65
	nop	;;61,65
	nop	;;61,65
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR3,%GPR2	
	nop	;;65,69
	nop	;;65,69
	nop	;;65,69
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-44(%GPR30),%GPR2	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$27	
	nop	;;70,74
	nop	;;70,74
	nop	;;70,74
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR2,%GPR0	
	nop	;;74,79
	nop	;;74,79
	nop	;;74,79
				; Automatically 2 NOPs removed by reduceNOPs.sh


	nop
	nop
	nop
	sw	0(%GPR4), %GPR3

	lw	%GPR3,-44(%GPR30)	
	nop	;;80,84
	nop	;;80,84
	nop	;;80,84
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR3,%GPR2	
	nop	;;84,88
	nop	;;84,88
	nop	;;84,88
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-44(%GPR30),%GPR2	
	lw	%GPR2,-4(%GPR30)	
	nop	;;89,97
	nop	;;89,97
	nop	;;89,97
				; Automatically 5 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR2,%GPR0	
	nop	;;97,102
	nop	;;97,102
	nop	;;97,102
				; Automatically 2 NOPs removed by reduceNOPs.sh


	nop
	nop
	nop
	sw	0(%GPR4), %GPR3

	lw	%GPR3,-44(%GPR30)	
	nop	;;103,107
	nop	;;103,107
	nop	;;103,107
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR3,%GPR2	
	nop	;;107,111
	nop	;;107,111
	nop	;;107,111
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-44(%GPR30),%GPR2	
	lw	%GPR2,-8(%GPR30)	
	nop	;;112,120
	nop	;;112,120
	nop	;;112,120
				; Automatically 5 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR2,%GPR0	
	nop	;;120,125
	nop	;;120,125
	nop	;;120,125
				; Automatically 2 NOPs removed by reduceNOPs.sh


	nop
	nop
	nop
	sw	0(%GPR4), %GPR3

	lw	%GPR3,-44(%GPR30)	
	nop	;;126,130
	nop	;;126,130
	nop	;;126,130
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR3,%GPR2	
	nop	;;130,134
	nop	;;130,134
	nop	;;130,134
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-44(%GPR30),%GPR2	
	nop
	nop
	nop
L19:
	add	%GPR2,%GPR1,%GPR0	
	subi	%GPR1,%GPR1,$1	
	nop	;;2,4
	nop	;;2,4
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
	lw	%GPR2,-20(%GPR30)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR5,%GPR2,%GPR0	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	lw	%GPR2,0(%GPR2)	
	nop	;;6,9
	nop	;;6,9
	nop	;;6,9
	add	%GPR4,%GPR5,%GPR4	
	add	%GPR3,%GPR2,%GPR0	
	nop	;;10,13
	nop	;;10,13
	nop	;;10,13
	sw	-20(%GPR30),%GPR4	
	nop	;;13,15
	nop	;;13,15
	lw	%GPR4,-28(%GPR30)	


	nop
	nop
	nop
	sw	0(%GPR4), %GPR3

	lw	%GPR3,-44(%GPR30)	
	nop	;;17,21
	nop	;;17,21
	nop	;;17,21
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR3,%GPR2	
	nop	;;21,25
	nop	;;21,25
	nop	;;21,25
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-44(%GPR30),%GPR2	
	j	L19	
	nop
	nop
	nop
L21:
	lw	%GPR2,-40(%GPR30)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR2,%GPR0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR1,%GPR1,$1	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-40(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR2,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L22	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L23	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L22:
	lw	%GPR1,-24(%GPR30)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR1,%GPR0	
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
	add	%GPR2,%GPR3,%GPR2	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-24(%GPR30),%GPR2	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	loadByteUnsigned	
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
	lw	%GPR3,-28(%GPR30)	
	nop	;;16,19
	nop	;;16,19
	nop	;;16,19
	add	%GPR1,%GPR2,%GPR0	
	nop	;;19,24
	nop	;;19,24
	nop	;;19,24
				; Automatically 2 NOPs removed by reduceNOPs.sh


	nop
	nop
	nop
	sw	0(%GPR3), %GPR1

	lw	%GPR1,-44(%GPR30)	
	nop	;;25,29
	nop	;;25,29
	nop	;;25,29
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop	;;29,33
	nop	;;29,33
	nop	;;29,33
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-44(%GPR30),%GPR1	
	j	L21	
	nop
	nop
	nop
L23:
	lw	%GPR2,-44(%GPR30)	
	lw	%GPR1,-28(%GPR30)	
	nop	;;1,5
	nop	;;1,5
	nop	;;1,5
				; Automatically 1 NOPs removed by reduceNOPs.sh


	nop
	nop
	nop
	sw	0(%GPR1), %GPR2

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
	jal	getack	
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
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR28,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L18	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L24	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L24:
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
	j	L25	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L25:
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
t_print:
L26:
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
				; Automatically 4 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	strlength	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 7 NOPs removed by reduceNOPs.sh
	lw	%GPR4,-4(%GPR30)	
	add	%GPR6,%GPR28,%GPR0	
	lhi	%GPR7,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$84	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$90	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop	;;21,25
	nop	;;21,25
	nop	;;21,25
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
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	jr	%GPR31	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
printInt:
L28:
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
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR2,%GPR30,$20	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	intToStr	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR1,%GPR30,$20	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop	;;11,15
	nop	;;11,15
	nop	;;11,15
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L29	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L29:
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
t_cursor:
L30:
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
				; Automatically 7 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$4	
	lhi	%GPR7,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	lhi	%GPR6,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$67	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$84	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop	;;21,25
	nop	;;21,25
	nop	;;21,25
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L31	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L31:
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
t_enable:
L32:
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
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR1,%GPR2	
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
	nop	;;0,7
	nop	;;0,7
	nop	;;0,7
				; Automatically 4 NOPs removed by reduceNOPs.sh
	lhi	%GPR7,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	lhi	%GPR6,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$69	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$84	
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
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L35	
	nop
	nop
	nop
L34:
	nop	;;0,7
	nop	;;0,7
	nop	;;0,7
				; Automatically 4 NOPs removed by reduceNOPs.sh
	lhi	%GPR7,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	lhi	%GPR6,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$65	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$84	
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
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 4 NOPs removed by reduceNOPs.sh
L35:
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
	j	L36	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L36:
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
g_print:
L37:
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
	sw	-12(%GPR30),%GPR1	
	nop
	nop
	nop
				; Automatically 2 NOPs removed by reduceNOPs.sh
	sw	-8(%GPR30),%GPR2	
	subi	%GPR1,%GPR30,$8	
	nop	;;5,7
	nop	;;5,7
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop	;;11,15
	nop	;;11,15
	nop	;;11,15
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR3	
	lw	%GPR1,-12(%GPR30)	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	strlength	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 6 NOPs removed by reduceNOPs.sh
	lw	%GPR4,-12(%GPR30)	
	addi	%GPR6,%GPR28,$1	
	subi	%GPR3,%GPR30,$8	
	lhi	%GPR7,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$2	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$76	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$90	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop	;;34,38
	nop	;;34,38
	nop	;;34,38
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L38	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L38:
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
g_drawrect:
L39:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
	subi	%GPR29,%GPR29,$24	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR8,%GPR4,%GPR0	
	add	%GPR4,%GPR3,%GPR0	
	nop
	nop
	nop
				; Automatically 2 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR1	
	subi	%GPR3,%GPR30,$16	
	nop	;;6,8
	nop	;;6,8
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	
	subi	%GPR5,%GPR30,$16	
	nop	;;9,11
	nop	;;9,11
	lhi	%GPR6,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$8	
	add	%GPR1,%GPR3,%GPR1	
	subi	%GPR9,%GPR30,$16	
	lhi	%GPR10,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$12	
	add	%GPR11,%GPR5,%GPR6	
	sw	0(%GPR1),%GPR2	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR11),%GPR4	
	nop	;;20,23
	nop	;;20,23
	nop	;;20,23
	add	%GPR9,%GPR9,%GPR10	
	nop	;;23,25
	nop	;;23,25
	subi	%GPR3,%GPR30,$16	
	lhi	%GPR7,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	lhi	%GPR6,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$82	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$71	
	sw	0(%GPR9),%GPR8	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop	;;38,42
	nop	;;38,42
	nop	;;38,42
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L40	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L40:
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
g_drawline:
L41:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
	subi	%GPR29,%GPR29,$24	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR8,%GPR4,%GPR0	
	add	%GPR4,%GPR3,%GPR0	
	nop
	nop
	nop
				; Automatically 2 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR1	
	subi	%GPR3,%GPR30,$16	
	nop	;;6,8
	nop	;;6,8
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	
	subi	%GPR5,%GPR30,$16	
	nop	;;9,11
	nop	;;9,11
	lhi	%GPR6,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$8	
	add	%GPR1,%GPR3,%GPR1	
	subi	%GPR9,%GPR30,$16	
	lhi	%GPR10,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$12	
	add	%GPR11,%GPR5,%GPR6	
	sw	0(%GPR1),%GPR2	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR11),%GPR4	
	nop	;;20,23
	nop	;;20,23
	nop	;;20,23
	add	%GPR9,%GPR9,%GPR10	
	nop	;;23,25
	nop	;;23,25
	subi	%GPR3,%GPR30,$16	
	lhi	%GPR7,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	lhi	%GPR6,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$68	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$71	
	sw	0(%GPR9),%GPR8	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop	;;38,42
	nop	;;38,42
	nop	;;38,42
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L42	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L42:
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
g_makebar:
L43:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
	subi	%GPR29,%GPR29,$52	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-40(%GPR30),%GPR7	
	sw	-44(%GPR30),%GPR10	
	nop
	nop
	nop
	lhi	%GPR7,$( L1	/0x10000)
	nop
	nop
	nop
	ori	%GPR7,%GPR7,$( L1	%0x10000)
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR7,0(%GPR7)	
	lhi	%GPR10,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$32	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
				; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR7,%GPR10	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L44	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L47	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L44:
	lhi	%GPR7,$( L1	/0x10000)
	nop
	nop
	nop
	ori	%GPR7,%GPR7,$( L1	%0x10000)
	nop	;;0,2
	nop	;;0,2
	subi	%GPR10,%GPR30,$36	
	nop	;;2,4
	nop	;;2,4
	lw	%GPR7,0(%GPR7)	
	lhi	%GPR11,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR11,%GPR11,$4	
	subi	%GPR12,%GPR30,$36	
	nop	;;6,8
	nop	;;6,8
	sw	-36(%GPR30),%GPR7	
	add	%GPR10,%GPR10,%GPR11	
	lhi	%GPR7,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$8	
	subi	%GPR11,%GPR30,$36	
	lhi	%GPR13,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR13,%GPR13,$12	
	sw	0(%GPR10),%GPR1	
	add	%GPR1,%GPR12,%GPR7	
	nop	;;14,16
	nop	;;14,16
	subi	%GPR7,%GPR30,$36	
	nop	;;16,18
	nop	;;16,18
	sw	0(%GPR1),%GPR2	
	add	%GPR1,%GPR11,%GPR13	
	lhi	%GPR10,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$16	
	subi	%GPR2,%GPR30,$36	
	lhi	%GPR11,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR11,%GPR11,$20	
	sw	0(%GPR1),%GPR3	
	add	%GPR1,%GPR7,%GPR10	
	nop	;;24,26
	nop	;;24,26
	subi	%GPR3,%GPR30,$36	
	nop	;;26,28
	nop	;;26,28
	sw	0(%GPR1),%GPR4	
	add	%GPR1,%GPR2,%GPR11	
	lhi	%GPR7,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$24	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$28	
	subi	%GPR2,%GPR30,$36	
	sw	0(%GPR1),%GPR5	
	add	%GPR1,%GPR3,%GPR7	
	nop	;;34,36
	nop	;;34,36
	add	%GPR4,%GPR2,%GPR4	
	subi	%GPR10,%GPR30,$36	
	sw	0(%GPR1),%GPR6	
	lhi	%GPR11,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR11,%GPR11,$32	
	nop	;;39,42
	nop	;;39,42
	nop	;;39,42
	sw	0(%GPR4),%GPR8	
	nop	;;42,46
	nop	;;42,46
	nop	;;42,46
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR10,%GPR10,%GPR11	
	nop	;;46,48
	nop	;;46,48
	subi	%GPR3,%GPR30,$36	
	lhi	%GPR7,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	lhi	%GPR6,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$9	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$82	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$66	
	sw	0(%GPR10),%GPR9	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 3 NOPs removed by reduceNOPs.sh
	lw	%GPR2,-44(%GPR30)	
	nop	;;58,61
	nop	;;58,61
	nop	;;58,61
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	;;61,65
	nop	;;61,65
	nop	;;61,65
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR2,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L45	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L46	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L45:
	lhi	%GPR1,$( L1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L1	%0x10000)
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR8,0(%GPR1)	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$36	
	lhi	%GPR7,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	lhi	%GPR6,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	sw	-36(%GPR30),%GPR8	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$66	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$65	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 4 NOPs removed by reduceNOPs.sh
L46:
	nop	;;0,3
	nop	;;0,3
	nop	;;0,3
	lhi	%GPR1,$( L1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L1	%0x10000)
	lhi	%GPR2,$( L1	/0x10000)
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$( L1	%0x10000)
	nop	;;4,6
	nop	;;4,6
	lhi	%GPR3,$( L1	/0x10000)
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$( L1	%0x10000)
	lw	%GPR4,0(%GPR1)	
	lw	%GPR1,0(%GPR2)	
	subi	%GPR8,%GPR30,$36	
	lhi	%GPR9,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$4	
	addi	%GPR2,%GPR4,$1	
	nop	;;11,14
	nop	;;11,14
	nop	;;11,14
	add	%GPR8,%GPR8,%GPR9	
	sw	0(%GPR3),%GPR2	
	nop	;;15,19
	nop	;;15,19
	nop	;;15,19
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-36(%GPR30),%GPR1	
	lw	%GPR9,-40(%GPR30)	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	lhi	%GPR7,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	lhi	%GPR6,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	subi	%GPR3,%GPR30,$36	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$2	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$65	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$66	
	sw	0(%GPR8),%GPR9	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L1	%0x10000)
	nop	;;30,34
	nop	;;30,34
	nop	;;30,34
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop	;;34,38
	nop	;;34,38
	nop	;;34,38
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR28,%GPR1,$1	
	nop	;;38,42
	nop	;;38,42
	nop	;;38,42
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
	j	L48	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L48:
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
g_setbar:
L49:
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
	add	%GPR8,%GPR2,%GPR0	
	nop
	nop
	nop
				; Automatically 2 NOPs removed by reduceNOPs.sh
	subi	%GPR4,%GPR30,$8	
	sw	-8(%GPR30),%GPR1	
	nop	;;5,7
	nop	;;5,7
	lhi	%GPR9,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$4	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR9,%GPR4,%GPR9	
	nop	;;11,14
	nop	;;11,14
	nop	;;11,14
	subi	%GPR3,%GPR30,$8	
	lhi	%GPR7,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	lhi	%GPR6,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$2	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$65	
	sw	0(%GPR9),%GPR8	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$66	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop	;;27,31
	nop	;;27,31
	nop	;;27,31
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L50	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L50:
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
g_makeswitch:
L51:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
	subi	%GPR29,%GPR29,$36	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-28(%GPR30),%GPR1	
	nop
	nop
	nop
				; Automatically 2 NOPs removed by reduceNOPs.sh
	sw	-24(%GPR30),%GPR2	
	subi	%GPR1,%GPR30,$24	
	nop	;;5,7
	nop	;;5,7
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	subi	%GPR8,%GPR30,$24	
	nop	;;8,10
	nop	;;8,10
	lhi	%GPR9,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$8	
	add	%GPR1,%GPR1,%GPR2	
	subi	%GPR2,%GPR30,$24	
	nop	;;12,14
	nop	;;12,14
	lhi	%GPR10,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$12	
	sw	0(%GPR1),%GPR3	
	add	%GPR1,%GPR8,%GPR9	
	subi	%GPR3,%GPR30,$24	
	nop	;;17,19
	nop	;;17,19
	lhi	%GPR8,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$16	
	sw	0(%GPR1),%GPR4	
	add	%GPR1,%GPR2,%GPR10	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$20	
	add	%GPR3,%GPR3,%GPR8	
	subi	%GPR2,%GPR30,$24	
	sw	0(%GPR1),%GPR5	
	nop	;;25,28
	nop	;;25,28
	nop	;;25,28
	add	%GPR1,%GPR2,%GPR4	
	sw	0(%GPR3),%GPR6	
	nop	;;29,33
	nop	;;29,33
	nop	;;29,33
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR7	
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
	jal	strlength	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 6 NOPs removed by reduceNOPs.sh
	lw	%GPR4,-28(%GPR30)	
	addi	%GPR6,%GPR28,$1	
	subi	%GPR3,%GPR30,$24	
	lhi	%GPR7,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$6	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$75	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$65	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop	;;52,56
	nop	;;52,56
	nop	;;52,56
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L52	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L52:
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
g_makemenubutton:
L53:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
	subi	%GPR29,%GPR29,$44	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-36(%GPR30),%GPR1	
	sw	-4(%GPR30),%GPR9	
	nop
	nop
	nop
				; Automatically 2 NOPs removed by reduceNOPs.sh
	sw	-32(%GPR30),%GPR2	
	subi	%GPR1,%GPR30,$32	
	nop	;;6,8
	nop	;;6,8
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	subi	%GPR9,%GPR30,$32	
	nop	;;9,11
	nop	;;9,11
	lhi	%GPR10,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$8	
	add	%GPR1,%GPR1,%GPR2	
	subi	%GPR2,%GPR30,$32	
	lhi	%GPR11,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR11,%GPR11,$12	
	nop	;;14,16
	nop	;;14,16
	sw	0(%GPR1),%GPR3	
	add	%GPR1,%GPR9,%GPR10	
	subi	%GPR3,%GPR30,$32	
	nop	;;18,20
	nop	;;18,20
	lhi	%GPR9,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$16	
	sw	0(%GPR1),%GPR4	
	add	%GPR1,%GPR2,%GPR11	
	subi	%GPR2,%GPR30,$32	
	nop	;;23,25
	nop	;;23,25
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$20	
	sw	0(%GPR1),%GPR5	
	add	%GPR1,%GPR3,%GPR9	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$24	
	add	%GPR2,%GPR2,%GPR4	
	subi	%GPR3,%GPR30,$32	
	sw	0(%GPR1),%GPR6	
	nop	;;31,34
	nop	;;31,34
	nop	;;31,34
	add	%GPR1,%GPR3,%GPR5	
	sw	0(%GPR2),%GPR7	
	nop	;;35,39
	nop	;;35,39
	nop	;;35,39
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR8	
	lw	%GPR1,-36(%GPR30)	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	strlength	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 6 NOPs removed by reduceNOPs.sh
	lw	%GPR4,-36(%GPR30)	
	addi	%GPR6,%GPR28,$1	
	subi	%GPR3,%GPR30,$32	
	lhi	%GPR7,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$7	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$77	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$65	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 3 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-4(%GPR30)	
	nop	;;55,58
	nop	;;55,58
	nop	;;55,58
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop	;;58,62
	nop	;;58,62
	nop	;;58,62
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sgt	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L54	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L55	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L54:
	nop	;;0,6
	nop	;;0,6
	nop	;;0,6
				; Automatically 3 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$4	
	lhi	%GPR7,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	lhi	%GPR6,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$89	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$78	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 4 NOPs removed by reduceNOPs.sh
L55:
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
	j	L56	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L56:
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
g_makeradiogroup:
L57:
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
				; Automatically 7 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$4	
	lhi	%GPR7,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	lhi	%GPR6,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$82	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$65	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop	;;21,25
	nop	;;21,25
	nop	;;21,25
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L58	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L58:
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
d_clear:
L59:
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
				; Automatically 12 NOPs removed by reduceNOPs.sh
	lhi	%GPR7,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	lhi	%GPR6,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$76	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$68	
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
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop	;;21,25
	nop	;;21,25
	nop	;;21,25
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L60	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L60:
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
strlength:
L61:
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
				; Automatically 8 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR1	
	nop	;;4,7
	nop	;;4,7
	nop	;;4,7
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
	sw	-8(%GPR30),%GPR1	
	nop
	nop
	nop
L62:
	lw	%GPR1,-4(%GPR30)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR1,%GPR0	
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
	add	%GPR2,%GPR3,%GPR2	
	nop	;;9,13
	nop	;;9,13
	nop	;;9,13
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR2	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	loadByteUnsigned	
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
	nop	;;19,23
	nop	;;19,23
	nop	;;19,23
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR28,%GPR1	
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
	lw	%GPR1,-8(%GPR30)	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-8(%GPR30),%GPR1	
	j	L62	
	nop
	nop
	nop
L64:
	lw	%GPR28,-8(%GPR30)	
	nop	;;0,8
	nop	;;0,8
	nop	;;0,8
				; Automatically 5 NOPs removed by reduceNOPs.sh
	j	L65	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L65:
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
wait:
L66:
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
L67:
	add	%GPR3,%GPR2,%GPR0	
	addi	%GPR2,%GPR2,$1	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	sne	%GPR27,%GPR3,%GPR1	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L67	
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
	subi	%GPR28,%GPR2,$1	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L69	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
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
getack:
L70:
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


	lhi	%GPR2, $0x200
	nop
	nop
	nop

	nop	;;4,9
	nop	;;4,9
	nop	;;4,9
				; Automatically 2 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	


	nop
	nop
	nop
	sw	0(%GPR2), %GPR3

	addi	%GPR1,%GPR1,$1	


	nop
	nop
	nop
	sw	0(%GPR2), %GPR1

	nop	;;12,17
	nop	;;12,17
	nop	;;12,17
				; Automatically 2 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$1	


	nop
	nop
	nop
	sw	0(%GPR2), %GPR1



	nop
	nop
	nop
	lw	%GPR1,0(%GPR2)
	nop
	nop
	nop

	nop	;;19,24
	nop	;;19,24
	nop	;;19,24
				; Automatically 2 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$15	
	nop	;;24,28
	nop	;;24,28
	nop	;;24,28
				; Automatically 1 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L71	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L72	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L71:
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
	j	L73	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L72:
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
	j	L73	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L73:
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