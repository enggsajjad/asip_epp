	.section	.data
	.align	4
L1:
	.data.32	1
	.section	.text
checkbuffer:
L2:
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
	NOP		;;1,6
	NOP		;;1,6
	NOP		;;1,6
	NOP		;;1,6
	NOP		;;1,6
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$222	
		

	lhi %GPR5, $0x200
	nop
	nop
	nop
	
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$4	
		

	nop
	nop
	nop
	sw  0(%GPR5), %GPR3
	
		

	nop
	nop
	nop
	sw  0(%GPR5), %GPR1
	
	NOP		;;15,20
	NOP		;;15,20
	NOP		;;15,20
	NOP		;;15,20
	NOP		;;15,20
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$18	
		

	nop
	nop
	nop
	sw  0(%GPR5), %GPR3
	
	NOP		;;21,26
	NOP		;;21,26
	NOP		;;21,26
	NOP		;;21,26
	NOP		;;21,26
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$18	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$1	
		

	nop
	nop
	nop
	sw  0(%GPR5), %GPR3
	
	NOP		;;28,30
	NOP		;;28,30
	add	%GPR4,%GPR4,%GPR3	
	NOP		;;30,33
	NOP		;;30,33
	NOP		;;30,33
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$73	
		

	nop
	nop
	nop
	sw  0(%GPR5), %GPR3
	
	add	%GPR4,%GPR4,%GPR3	
		

	nop
	nop
	nop
	sw  0(%GPR5), %GPR4
	
	NOP		;;36,41
	NOP		;;36,41
	NOP		;;36,41
	NOP		;;36,41
	NOP		;;36,41
	lhi	%GPR4,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$-1	
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
		

	nop
	nop
	nop
	sw  0(%GPR5), %GPR2
	
	addi	%GPR3,%GPR1,$1	
		

	nop
	nop
	nop
	sw  0(%GPR5), %GPR3
	
	NOP		;;7,12
	NOP		;;7,12
	NOP		;;7,12
	NOP		;;7,12
	NOP		;;7,12
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$6	
		

	nop
	nop
	nop
	sw  0(%GPR5), %GPR2
	
		

	nop
	nop
	nop
	lw  %GPR3,0(%GPR5)
	nop
	nop
	nop
	
		

	nop
	nop
	nop
	lw  %GPR3,0(%GPR5)
	nop
	nop
	nop
	
		

	nop
	nop
	nop
	lw  %GPR2,0(%GPR5)
	nop
	nop
	nop
	
	add	%GPR4,%GPR3,%GPR2	
		

	nop
	nop
	nop
	lw  %GPR2,0(%GPR5)
	nop
	nop
	nop
	
	add	%GPR4,%GPR4,%GPR2	
		

	nop
	nop
	nop
	lw  %GPR3,0(%GPR5)
	nop
	nop
	nop
	
	add	%GPR4,%GPR4,%GPR3	
		

	nop
	nop
	nop
	lw  %GPR3,0(%GPR5)
	nop
	nop
	nop
	
	NOP		;;22,27
	NOP		;;22,27
	NOP		;;22,27
	NOP		;;22,27
	NOP		;;22,27
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$256	
	NOP		;;27,31
	NOP		;;27,31
	NOP		;;27,31
	NOP		;;27,31
	MOD	%GPR4,%GPR4,%GPR6	
	NOP		;;31,35
	NOP		;;31,35
	NOP		;;31,35
	NOP		;;31,35
	sne	%GPR27,%GPR4,%GPR3	
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
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$4	
		

	nop
	nop
	nop
	sw  0(%GPR5), %GPR3
	
		

	nop
	nop
	nop
	sw  0(%GPR5), %GPR1
	
	NOP		;;6,11
	NOP		;;6,11
	NOP		;;6,11
	NOP		;;6,11
	NOP		;;6,11
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$18	
		

	nop
	nop
	nop
	sw  0(%GPR5), %GPR3
	
	NOP		;;12,17
	NOP		;;12,17
	NOP		;;12,17
	NOP		;;12,17
	NOP		;;12,17
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$18	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$1	
		

	nop
	nop
	nop
	sw  0(%GPR5), %GPR3
	
	NOP		;;19,21
	NOP		;;19,21
	add	%GPR4,%GPR4,%GPR3	
	NOP		;;21,24
	NOP		;;21,24
	NOP		;;21,24
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$82	
		

	nop
	nop
	nop
	sw  0(%GPR5), %GPR3
	
	add	%GPR4,%GPR4,%GPR3	
		

	nop
	nop
	nop
	sw  0(%GPR5), %GPR4
	
	NOP		
	NOP		
	NOP		
L5:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR3,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$-1	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR4,%GPR3	
	bnez	%GPR27,L3	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L6	
	NOP		
	NOP		
	NOP		
	NOP		
L6:
	add	%GPR28,%GPR2,%GPR0	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	j	L7	
	NOP		
	NOP		
	NOP		
	NOP		
L7:
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
getbytes:
L8:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$36	
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR30),%GPR1	
	sw	-8(%GPR30),%GPR2	
	NOP		
	NOP		
	NOP		
	NOP		;;3,8
	NOP		;;3,8
	NOP		;;3,8
	NOP		;;3,8
	NOP		;;3,8
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$222	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	sw	-12(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sw	-16(%GPR30),%GPR1	
		

	lhi %GPR1, $0x200
	nop
	nop
	nop
	
	NOP		;;18,20
	NOP		;;18,20
	add	%GPR2,%GPR1,%GPR0	
	sw	-20(%GPR30),%GPR1	
	NOP		;;21,23
	NOP		;;21,23
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$4	
		

	nop
	nop
	nop
	sw  0(%GPR2), %GPR1
	
	lw	%GPR1,-12(%GPR30)	
		

	nop
	nop
	nop
	sw  0(%GPR2), %GPR1
	
	NOP		;;26,31
	NOP		;;26,31
	NOP		;;26,31
	NOP		;;26,31
	NOP		;;26,31
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$18	
		

	nop
	nop
	nop
	sw  0(%GPR2), %GPR1
	
	NOP		;;32,37
	NOP		;;32,37
	NOP		;;32,37
	NOP		;;32,37
	NOP		;;32,37
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$1	
	NOP		;;37,41
	NOP		;;37,41
	NOP		;;37,41
	NOP		;;37,41
	sw	-24(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$18	
	NOP		;;42,46
	NOP		;;42,46
	NOP		;;42,46
	NOP		;;42,46
	sw	-28(%GPR30),%GPR1	
	lw	%GPR1,-24(%GPR30)	
		

	nop
	nop
	nop
	sw  0(%GPR2), %GPR1
	
	add	%GPR2,%GPR1,%GPR0	
	lw	%GPR1,-28(%GPR30)	
	NOP		;;50,54
	NOP		;;50,54
	NOP		;;50,54
	NOP		;;50,54
	add	%GPR1,%GPR1,%GPR2	
	lw	%GPR2,-20(%GPR30)	
	NOP		;;55,58
	NOP		;;55,58
	NOP		;;55,58
	sw	-28(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$83	
		

	nop
	nop
	nop
	sw  0(%GPR2), %GPR1
	
	add	%GPR2,%GPR1,%GPR0	
	lw	%GPR1,-28(%GPR30)	
	NOP		;;62,66
	NOP		;;62,66
	NOP		;;62,66
	NOP		;;62,66
	add	%GPR1,%GPR1,%GPR2	
	lw	%GPR2,-20(%GPR30)	
		

	nop
	nop
	nop
	sw  0(%GPR2), %GPR1
	
	NOP		;;68,73
	NOP		;;68,73
	NOP		;;68,73
	NOP		;;68,73
	NOP		;;68,73
	lhi	%GPR1,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$-1	
	NOP		
	NOP		
	NOP		
L9:
	lw	%GPR2,-20(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
		

	nop
	nop
	nop
	sw  0(%GPR2), %GPR1
	
	lw	%GPR1,-12(%GPR30)	
	NOP		;;6,10
	NOP		;;6,10
	NOP		;;6,10
	NOP		;;6,10
	addi	%GPR1,%GPR1,$1	
		

	nop
	nop
	nop
	sw  0(%GPR2), %GPR1
	
	lw	%GPR1,-8(%GPR30)	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	addi	%GPR1,%GPR1,$4	
		

	nop
	nop
	nop
	sw  0(%GPR2), %GPR1
	
	add	%GPR1,%GPR2,%GPR0	
		

	nop
	nop
	nop
	lw  %GPR1,0(%GPR1)
	nop
	nop
	nop
	
	add	%GPR1,%GPR2,%GPR0	
		

	nop
	nop
	nop
	lw  %GPR1,0(%GPR1)
	nop
	nop
	nop
	
	add	%GPR2,%GPR1,%GPR0	
	lw	%GPR1,-20(%GPR30)	
		

	nop
	nop
	nop
	lw  %GPR1,0(%GPR1)
	nop
	nop
	nop
	
	add	%GPR1,%GPR2,%GPR1	
	NOP		;;25,29
	NOP		;;25,29
	NOP		;;25,29
	NOP		;;25,29
	sw	-28(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
L10:
	lw	%GPR1,-16(%GPR30)	
	lw	%GPR2,-8(%GPR30)	
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	sne	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L11	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L12	
	NOP		
	NOP		
	NOP		
	NOP		
L11:
	lw	%GPR1,-20(%GPR30)	
		

	nop
	nop
	nop
	lw  %GPR1,0(%GPR1)
	nop
	nop
	nop
	
	sw	-24(%GPR30),%GPR1	
	lw	%GPR2,-16(%GPR30)	
	lw	%GPR1,-4(%GPR30)	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	add	%GPR1,%GPR1,%GPR2	
	lw	%GPR2,-24(%GPR30)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	storeByte	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR1,-28(%GPR30)	
	lw	%GPR2,-24(%GPR30)	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sw	-28(%GPR30),%GPR1	
	lw	%GPR1,-16(%GPR30)	
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	addi	%GPR1,%GPR1,$1	
	NOP		;;25,29
	NOP		;;25,29
	NOP		;;25,29
	NOP		;;25,29
	sw	-16(%GPR30),%GPR1	
	j	L10	
	NOP		
	NOP		
	NOP		
L12:
	lw	%GPR1,-20(%GPR30)	
		

	nop
	nop
	nop
	lw  %GPR1,0(%GPR1)
	nop
	nop
	nop
	
	lw	%GPR2,-28(%GPR30)	
	NOP		;;2,6
	NOP		;;2,6
	NOP		;;2,6
	NOP		;;2,6
	andi	%GPR2,%GPR2,$255	
	NOP		;;6,10
	NOP		;;6,10
	NOP		;;6,10
	NOP		;;6,10
	sw	-28(%GPR30),%GPR2	
	sne	%GPR27,%GPR2,%GPR1	
	bnez	%GPR27,L13	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L14	
	NOP		
	NOP		
	NOP		
	NOP		
L13:
	lw	%GPR2,-20(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$4	
		

	nop
	nop
	nop
	sw  0(%GPR2), %GPR1
	
	lw	%GPR1,-12(%GPR30)	
		

	nop
	nop
	nop
	sw  0(%GPR2), %GPR1
	
	NOP		;;7,12
	NOP		;;7,12
	NOP		;;7,12
	NOP		;;7,12
	NOP		;;7,12
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$18	
		

	nop
	nop
	nop
	sw  0(%GPR2), %GPR1
	
	NOP		;;13,18
	NOP		;;13,18
	NOP		;;13,18
	NOP		;;13,18
	NOP		;;13,18
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$1	
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	sw	-24(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$18	
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	sw	-28(%GPR30),%GPR1	
	lw	%GPR1,-24(%GPR30)	
		

	nop
	nop
	nop
	sw  0(%GPR2), %GPR1
	
	add	%GPR2,%GPR1,%GPR0	
	lw	%GPR1,-28(%GPR30)	
	NOP		;;31,35
	NOP		;;31,35
	NOP		;;31,35
	NOP		;;31,35
	add	%GPR1,%GPR1,%GPR2	
	lw	%GPR2,-20(%GPR30)	
	NOP		;;36,39
	NOP		;;36,39
	NOP		;;36,39
	sw	-28(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$82	
		

	nop
	nop
	nop
	sw  0(%GPR2), %GPR1
	
	add	%GPR2,%GPR1,%GPR0	
	lw	%GPR1,-28(%GPR30)	
	NOP		;;43,47
	NOP		;;43,47
	NOP		;;43,47
	NOP		;;43,47
	add	%GPR1,%GPR1,%GPR2	
	lw	%GPR2,-20(%GPR30)	
	NOP		;;48,51
	NOP		;;48,51
	NOP		;;48,51
	sw	-28(%GPR30),%GPR1	
		

	nop
	nop
	nop
	sw  0(%GPR2), %GPR1
	
	NOP		
	NOP		
	NOP		
L14:
	lw	%GPR2,-28(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$-1	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR2,%GPR1	
	bnez	%GPR27,L9	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L15	
	NOP		
	NOP		
	NOP		
	NOP		
L15:
	lw	%GPR28,-16(%GPR30)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	j	L16	
	NOP		
	NOP		
	NOP		
	NOP		
L16:
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
sendcommand:
L17:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$52	
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR30),%GPR1	
	sw	-8(%GPR30),%GPR2	
	sw	-12(%GPR30),%GPR5	
	sw	-16(%GPR30),%GPR6	
	NOP		
	NOP		
	NOP		
	sw	-20(%GPR30),%GPR3	
	sw	-24(%GPR30),%GPR4	
		

	lhi %GPR1, $0x200
	nop
	nop
	nop
	
	sw	-28(%GPR30),%GPR1	
	add	%GPR1,%GPR7,%GPR0	
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	slli	%GPR1,%GPR1,$1	
	NOP		;;14,18
	NOP		;;14,18
	NOP		;;14,18
	NOP		;;14,18
	sw	-32(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$3	
	NOP		;;19,23
	NOP		;;19,23
	NOP		;;19,23
	NOP		;;19,23
	sw	-36(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
L18:
	lw	%GPR2,-16(%GPR30)	
	lw	%GPR1,-12(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	add	%GPR3,%GPR2,%GPR0	
	sw	-40(%GPR30),%GPR2	
	lw	%GPR2,-12(%GPR30)	
	NOP		;;6,10
	NOP		;;6,10
	NOP		;;6,10
	NOP		;;6,10
	add	%GPR2,%GPR2,%GPR3	
	lw	%GPR3,-36(%GPR30)	
	NOP		;;11,15
	NOP		;;11,15
	NOP		;;11,15
	NOP		;;11,15
	add	%GPR2,%GPR2,%GPR3	
	lw	%GPR3,-28(%GPR30)	
	NOP		;;16,19
	NOP		;;16,19
	NOP		;;16,19
	addi	%GPR2,%GPR2,$3	
	NOP		;;19,24
	NOP		;;19,24
	NOP		;;19,24
	NOP		;;19,24
	NOP		;;19,24
		

	nop
	nop
	nop
	sw  0(%GPR3), %GPR2
	
	lw	%GPR2,-32(%GPR30)	
	NOP		;;25,30
	NOP		;;25,30
	NOP		;;25,30
	NOP		;;25,30
	NOP		;;25,30
		

	nop
	nop
	nop
	sw  0(%GPR3), %GPR2
	
	NOP		;;30,35
	NOP		;;30,35
	NOP		;;30,35
	NOP		;;30,35
	NOP		;;30,35
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$17	
	NOP		;;35,40
	NOP		;;35,40
	NOP		;;35,40
	NOP		;;35,40
	NOP		;;35,40
		

	nop
	nop
	nop
	sw  0(%GPR3), %GPR2
	
	lw	%GPR3,-16(%GPR30)	
	lw	%GPR2,-12(%GPR30)	
	NOP		;;42,46
	NOP		;;42,46
	NOP		;;42,46
	NOP		;;42,46
	add	%GPR2,%GPR2,%GPR3	
	lw	%GPR3,-36(%GPR30)	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$17	
	NOP		;;48,51
	NOP		;;48,51
	NOP		;;48,51
	add	%GPR2,%GPR2,%GPR3	
	sw	-44(%GPR30),%GPR4	
	lw	%GPR4,-28(%GPR30)	
	NOP		;;53,55
	NOP		;;53,55
	add	%GPR3,%GPR2,%GPR0	
	NOP		;;55,60
	NOP		;;55,60
	NOP		;;55,60
	NOP		;;55,60
	NOP		;;55,60
		

	nop
	nop
	nop
	sw  0(%GPR4), %GPR3
	
	lw	%GPR3,-44(%GPR30)	
	NOP		;;61,65
	NOP		;;61,65
	NOP		;;61,65
	NOP		;;61,65
	add	%GPR2,%GPR3,%GPR2	
	NOP		;;65,69
	NOP		;;65,69
	NOP		;;65,69
	NOP		;;65,69
	sw	-44(%GPR30),%GPR2	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$27	
	NOP		;;70,74
	NOP		;;70,74
	NOP		;;70,74
	NOP		;;70,74
	add	%GPR3,%GPR2,%GPR0	
	NOP		;;74,79
	NOP		;;74,79
	NOP		;;74,79
	NOP		;;74,79
	NOP		;;74,79
		

	nop
	nop
	nop
	sw  0(%GPR4), %GPR3
	
	lw	%GPR3,-44(%GPR30)	
	NOP		;;80,84
	NOP		;;80,84
	NOP		;;80,84
	NOP		;;80,84
	add	%GPR2,%GPR3,%GPR2	
	NOP		;;84,88
	NOP		;;84,88
	NOP		;;84,88
	NOP		;;84,88
	sw	-44(%GPR30),%GPR2	
	lw	%GPR2,-4(%GPR30)	
	NOP		;;89,97
	NOP		;;89,97
	NOP		;;89,97
	NOP		;;89,97
	NOP		;;89,97
	NOP		;;89,97
	NOP		;;89,97
	NOP		;;89,97
	add	%GPR3,%GPR2,%GPR0	
	NOP		;;97,102
	NOP		;;97,102
	NOP		;;97,102
	NOP		;;97,102
	NOP		;;97,102
		

	nop
	nop
	nop
	sw  0(%GPR4), %GPR3
	
	lw	%GPR3,-44(%GPR30)	
	NOP		;;103,107
	NOP		;;103,107
	NOP		;;103,107
	NOP		;;103,107
	add	%GPR2,%GPR3,%GPR2	
	NOP		;;107,111
	NOP		;;107,111
	NOP		;;107,111
	NOP		;;107,111
	sw	-44(%GPR30),%GPR2	
	lw	%GPR2,-8(%GPR30)	
	NOP		;;112,120
	NOP		;;112,120
	NOP		;;112,120
	NOP		;;112,120
	NOP		;;112,120
	NOP		;;112,120
	NOP		;;112,120
	NOP		;;112,120
	add	%GPR3,%GPR2,%GPR0	
	NOP		;;120,125
	NOP		;;120,125
	NOP		;;120,125
	NOP		;;120,125
	NOP		;;120,125
		

	nop
	nop
	nop
	sw  0(%GPR4), %GPR3
	
	lw	%GPR3,-44(%GPR30)	
	NOP		;;126,130
	NOP		;;126,130
	NOP		;;126,130
	NOP		;;126,130
	add	%GPR2,%GPR3,%GPR2	
	NOP		;;130,134
	NOP		;;130,134
	NOP		;;130,134
	NOP		;;130,134
	sw	-44(%GPR30),%GPR2	
	NOP		
	NOP		
	NOP		
L19:
	add	%GPR2,%GPR1,%GPR0	
	subi	%GPR1,%GPR1,$1	
	NOP		;;2,4
	NOP		;;2,4
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
	bnez	%GPR27,L20	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L21	
	NOP		
	NOP		
	NOP		
	NOP		
L20:
	lw	%GPR2,-20(%GPR30)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	add	%GPR5,%GPR2,%GPR0	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	lw	%GPR2,0(%GPR2)	
	NOP		;;6,9
	NOP		;;6,9
	NOP		;;6,9
	add	%GPR4,%GPR5,%GPR4	
	add	%GPR3,%GPR2,%GPR0	
	NOP		;;10,13
	NOP		;;10,13
	NOP		;;10,13
	sw	-20(%GPR30),%GPR4	
	NOP		;;13,15
	NOP		;;13,15
	lw	%GPR4,-28(%GPR30)	
		

	nop
	nop
	nop
	sw  0(%GPR4), %GPR3
	
	lw	%GPR3,-44(%GPR30)	
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	add	%GPR2,%GPR3,%GPR2	
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	sw	-44(%GPR30),%GPR2	
	j	L19	
	NOP		
	NOP		
	NOP		
L21:
	lw	%GPR2,-40(%GPR30)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	add	%GPR1,%GPR2,%GPR0	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	subi	%GPR1,%GPR1,$1	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	sw	-40(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	sne	%GPR27,%GPR2,%GPR1	
	bnez	%GPR27,L22	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L23	
	NOP		
	NOP		
	NOP		
	NOP		
L22:
	lw	%GPR1,-24(%GPR30)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	add	%GPR3,%GPR1,%GPR0	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	add	%GPR2,%GPR3,%GPR2	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	sw	-24(%GPR30),%GPR2	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	loadByteUnsigned	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	add	%GPR2,%GPR28,%GPR0	
	lw	%GPR3,-28(%GPR30)	
	NOP		;;16,19
	NOP		;;16,19
	NOP		;;16,19
	add	%GPR1,%GPR2,%GPR0	
	NOP		;;19,24
	NOP		;;19,24
	NOP		;;19,24
	NOP		;;19,24
	NOP		;;19,24
		

	nop
	nop
	nop
	sw  0(%GPR3), %GPR1
	
	lw	%GPR1,-44(%GPR30)	
	NOP		;;25,29
	NOP		;;25,29
	NOP		;;25,29
	NOP		;;25,29
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;29,33
	NOP		;;29,33
	NOP		;;29,33
	NOP		;;29,33
	sw	-44(%GPR30),%GPR1	
	j	L21	
	NOP		
	NOP		
	NOP		
L23:
	lw	%GPR2,-44(%GPR30)	
	lw	%GPR1,-28(%GPR30)	
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
		

	nop
	nop
	nop
	sw  0(%GPR1), %GPR2
	
	lw	%GPR1,-32(%GPR30)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	getack	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;7,12
	NOP		;;7,12
	NOP		;;7,12
	NOP		;;7,12
	NOP		;;7,12
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	sne	%GPR27,%GPR28,%GPR1	
	bnez	%GPR27,L18	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L24	
	NOP		
	NOP		
	NOP		
	NOP		
L24:
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
	j	L25	
	NOP		
	NOP		
	NOP		
	NOP		
L25:
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
t_print:
L26:
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
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	strlength	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;3,9
	NOP		;;3,9
	NOP		;;3,9
	NOP		;;3,9
	NOP		;;3,9
	NOP		;;3,9
	lw	%GPR4,-4(%GPR30)	
	add	%GPR6,%GPR28,%GPR0	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$111	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$0	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$84	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$90	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	sendcommand	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;16,21
	NOP		;;16,21
	NOP		;;16,21
	NOP		;;16,21
	NOP		;;16,21
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	j	L27	
	NOP		
	NOP		
	NOP		
	NOP		
L27:
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
t_cursor:
L28:
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
	NOP		;;2,9
	NOP		;;2,9
	NOP		;;2,9
	NOP		;;2,9
	NOP		;;2,9
	NOP		;;2,9
	NOP		;;2,9
	subi	%GPR3,%GPR30,$4	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$111	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$0	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$1	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$67	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$84	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	sendcommand	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;16,21
	NOP		;;16,21
	NOP		;;16,21
	NOP		;;16,21
	NOP		;;16,21
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	j	L29	
	NOP		
	NOP		
	NOP		
	NOP		
L29:
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
t_enable:
L30:
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
	ori	%GPR2,%GPR2,$0	
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	sne	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L31	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L32	
	NOP		
	NOP		
	NOP		
	NOP		
L31:
	NOP		;;0,7
	NOP		;;0,7
	NOP		;;0,7
	NOP		;;0,7
	NOP		;;0,7
	NOP		;;0,7
	NOP		;;0,7
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$111	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$0	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$0	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$69	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$84	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	sendcommand	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L33	
	NOP		
	NOP		
	NOP		
L32:
	NOP		;;0,7
	NOP		;;0,7
	NOP		;;0,7
	NOP		;;0,7
	NOP		;;0,7
	NOP		;;0,7
	NOP		;;0,7
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$111	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$0	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$0	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$65	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$84	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	sendcommand	
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
L33:
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
	j	L34	
	NOP		
	NOP		
	NOP		
	NOP		
L34:
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
g_print:
L35:
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
	sw	-12(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
	NOP		;;2,4
	NOP		;;2,4
	sw	-8(%GPR30),%GPR2	
	subi	%GPR1,%GPR30,$8	
	NOP		;;5,7
	NOP		;;5,7
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;11,15
	NOP		;;11,15
	NOP		;;11,15
	NOP		;;11,15
	sw	0(%GPR1),%GPR3	
	lw	%GPR1,-12(%GPR30)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	strlength	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;17,22
	NOP		;;17,22
	NOP		;;17,22
	NOP		;;17,22
	NOP		;;17,22
	lw	%GPR4,-12(%GPR30)	
	addi	%GPR6,%GPR28,$1	
	subi	%GPR3,%GPR30,$8	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$111	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$2	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$76	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$90	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	sendcommand	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;29,34
	NOP		;;29,34
	NOP		;;29,34
	NOP		;;29,34
	NOP		;;29,34
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		;;34,38
	NOP		;;34,38
	NOP		;;34,38
	NOP		;;34,38
	j	L36	
	NOP		
	NOP		
	NOP		
	NOP		
L36:
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
g_drawrect:
L37:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$24	
	NOP		
	NOP		
	NOP		
	NOP		
	add	%GPR8,%GPR4,%GPR0	
	add	%GPR4,%GPR3,%GPR0	
	NOP		
	NOP		
	NOP		
	NOP		;;3,5
	NOP		;;3,5
	sw	-16(%GPR30),%GPR1	
	subi	%GPR3,%GPR30,$16	
	NOP		;;6,8
	NOP		;;6,8
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$4	
	subi	%GPR5,%GPR30,$16	
	NOP		;;9,11
	NOP		;;9,11
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$8	
	add	%GPR1,%GPR3,%GPR1	
	subi	%GPR9,%GPR30,$16	
	lhi	%GPR10,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR10,%GPR10,$12	
	add	%GPR11,%GPR5,%GPR6	
	sw	0(%GPR1),%GPR2	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sw	0(%GPR11),%GPR4	
	NOP		;;20,23
	NOP		;;20,23
	NOP		;;20,23
	add	%GPR9,%GPR9,%GPR10	
	NOP		;;23,25
	NOP		;;23,25
	subi	%GPR3,%GPR30,$16	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$111	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$0	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$4	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$82	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$71	
	sw	0(%GPR9),%GPR8	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	sendcommand	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;33,38
	NOP		;;33,38
	NOP		;;33,38
	NOP		;;33,38
	NOP		;;33,38
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		;;38,42
	NOP		;;38,42
	NOP		;;38,42
	NOP		;;38,42
	j	L38	
	NOP		
	NOP		
	NOP		
	NOP		
L38:
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
g_drawline:
L39:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$24	
	NOP		
	NOP		
	NOP		
	NOP		
	add	%GPR8,%GPR4,%GPR0	
	add	%GPR4,%GPR3,%GPR0	
	NOP		
	NOP		
	NOP		
	NOP		;;3,5
	NOP		;;3,5
	sw	-16(%GPR30),%GPR1	
	subi	%GPR3,%GPR30,$16	
	NOP		;;6,8
	NOP		;;6,8
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$4	
	subi	%GPR5,%GPR30,$16	
	NOP		;;9,11
	NOP		;;9,11
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$8	
	add	%GPR1,%GPR3,%GPR1	
	subi	%GPR9,%GPR30,$16	
	lhi	%GPR10,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR10,%GPR10,$12	
	add	%GPR11,%GPR5,%GPR6	
	sw	0(%GPR1),%GPR2	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sw	0(%GPR11),%GPR4	
	NOP		;;20,23
	NOP		;;20,23
	NOP		;;20,23
	add	%GPR9,%GPR9,%GPR10	
	NOP		;;23,25
	NOP		;;23,25
	subi	%GPR3,%GPR30,$16	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$111	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$0	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$4	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$68	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$71	
	sw	0(%GPR9),%GPR8	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	sendcommand	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;33,38
	NOP		;;33,38
	NOP		;;33,38
	NOP		;;33,38
	NOP		;;33,38
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		;;38,42
	NOP		;;38,42
	NOP		;;38,42
	NOP		;;38,42
	j	L40	
	NOP		
	NOP		
	NOP		
	NOP		
L40:
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
g_makebar:
L41:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$52	
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-40(%GPR30),%GPR7	
	sw	-44(%GPR30),%GPR10	
	NOP		
	NOP		
	NOP		
	LI	%GPR7, *L1	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	lw	%GPR7,0(%GPR7)	
	lhi	%GPR10,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR10,%GPR10,$32	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	slt	%GPR27,%GPR7,%GPR10	
	bnez	%GPR27,L42	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L45	
	NOP		
	NOP		
	NOP		
	NOP		
L42:
	LI	%GPR7, *L1	
	NOP		;;0,2
	NOP		;;0,2
	subi	%GPR10,%GPR30,$36	
	NOP		;;2,4
	NOP		;;2,4
	lw	%GPR7,0(%GPR7)	
	lhi	%GPR11,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR11,%GPR11,$4	
	subi	%GPR12,%GPR30,$36	
	NOP		;;6,8
	NOP		;;6,8
	sw	-36(%GPR30),%GPR7	
	add	%GPR10,%GPR10,%GPR11	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$8	
	subi	%GPR11,%GPR30,$36	
	lhi	%GPR13,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR13,%GPR13,$12	
	sw	0(%GPR10),%GPR1	
	add	%GPR1,%GPR12,%GPR7	
	NOP		;;14,16
	NOP		;;14,16
	subi	%GPR7,%GPR30,$36	
	NOP		;;16,18
	NOP		;;16,18
	sw	0(%GPR1),%GPR2	
	add	%GPR1,%GPR11,%GPR13	
	lhi	%GPR10,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR10,%GPR10,$16	
	subi	%GPR2,%GPR30,$36	
	lhi	%GPR11,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR11,%GPR11,$20	
	sw	0(%GPR1),%GPR3	
	add	%GPR1,%GPR7,%GPR10	
	NOP		;;24,26
	NOP		;;24,26
	subi	%GPR3,%GPR30,$36	
	NOP		;;26,28
	NOP		;;26,28
	sw	0(%GPR1),%GPR4	
	add	%GPR1,%GPR2,%GPR11	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$24	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$28	
	subi	%GPR2,%GPR30,$36	
	sw	0(%GPR1),%GPR5	
	add	%GPR1,%GPR3,%GPR7	
	NOP		;;34,36
	NOP		;;34,36
	add	%GPR4,%GPR2,%GPR4	
	subi	%GPR10,%GPR30,$36	
	sw	0(%GPR1),%GPR6	
	lhi	%GPR11,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR11,%GPR11,$32	
	NOP		;;39,42
	NOP		;;39,42
	NOP		;;39,42
	sw	0(%GPR4),%GPR8	
	NOP		;;42,46
	NOP		;;42,46
	NOP		;;42,46
	NOP		;;42,46
	add	%GPR10,%GPR10,%GPR11	
	NOP		;;46,48
	NOP		;;46,48
	subi	%GPR3,%GPR30,$36	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$111	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$0	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$9	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$82	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$66	
	sw	0(%GPR10),%GPR9	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	sendcommand	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;56,58
	NOP		;;56,58
	lw	%GPR2,-44(%GPR30)	
	NOP		;;58,61
	NOP		;;58,61
	NOP		;;58,61
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;61,65
	NOP		;;61,65
	NOP		;;61,65
	NOP		;;61,65
	sne	%GPR27,%GPR2,%GPR1	
	bnez	%GPR27,L43	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L44	
	NOP		
	NOP		
	NOP		
	NOP		
L43:
	LI	%GPR1, *L1	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lw	%GPR8,0(%GPR1)	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	subi	%GPR3,%GPR30,$36	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$111	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$0	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$1	
	sw	-36(%GPR30),%GPR8	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$66	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$65	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	sendcommand	
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
L44:
	NOP		;;0,3
	NOP		;;0,3
	NOP		;;0,3
	LI	%GPR1, *L1	
	LI	%GPR2, *L1	
	NOP		;;4,6
	NOP		;;4,6
	LI	%GPR3, *L1	
	lw	%GPR4,0(%GPR1)	
	lw	%GPR1,0(%GPR2)	
	subi	%GPR8,%GPR30,$36	
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$4	
	addi	%GPR2,%GPR4,$1	
	NOP		;;11,14
	NOP		;;11,14
	NOP		;;11,14
	add	%GPR8,%GPR8,%GPR9	
	sw	0(%GPR3),%GPR2	
	NOP		;;15,19
	NOP		;;15,19
	NOP		;;15,19
	NOP		;;15,19
	sw	-36(%GPR30),%GPR1	
	lw	%GPR9,-40(%GPR30)	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$111	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$0	
	subi	%GPR3,%GPR30,$36	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$2	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$65	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$66	
	sw	0(%GPR8),%GPR9	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	sendcommand	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *L1	
	NOP		;;30,34
	NOP		;;30,34
	NOP		;;30,34
	NOP		;;30,34
	lw	%GPR1,0(%GPR1)	
	NOP		;;34,38
	NOP		;;34,38
	NOP		;;34,38
	NOP		;;34,38
	subi	%GPR28,%GPR1,$1	
	NOP		;;38,42
	NOP		;;38,42
	NOP		;;38,42
	NOP		;;38,42
	j	L46	
	NOP		
	NOP		
	NOP		
	NOP		
L45:
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
	j	L46	
	NOP		
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
g_setbar:
L47:
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
	add	%GPR8,%GPR2,%GPR0	
	NOP		
	NOP		
	NOP		
	NOP		;;2,4
	NOP		;;2,4
	subi	%GPR4,%GPR30,$8	
	sw	-8(%GPR30),%GPR1	
	NOP		;;5,7
	NOP		;;5,7
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$4	
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	add	%GPR9,%GPR4,%GPR9	
	NOP		;;11,14
	NOP		;;11,14
	NOP		;;11,14
	subi	%GPR3,%GPR30,$8	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$111	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$0	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$2	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$65	
	sw	0(%GPR9),%GPR8	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$66	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	sendcommand	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;22,27
	NOP		;;22,27
	NOP		;;22,27
	NOP		;;22,27
	NOP		;;22,27
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		;;27,31
	NOP		;;27,31
	NOP		;;27,31
	NOP		;;27,31
	j	L48	
	NOP		
	NOP		
	NOP		
	NOP		
L48:
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
g_makeswitch:
L49:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$36	
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-28(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
	NOP		;;2,4
	NOP		;;2,4
	sw	-24(%GPR30),%GPR2	
	subi	%GPR1,%GPR30,$24	
	NOP		;;5,7
	NOP		;;5,7
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	subi	%GPR8,%GPR30,$24	
	NOP		;;8,10
	NOP		;;8,10
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$8	
	add	%GPR1,%GPR1,%GPR2	
	subi	%GPR2,%GPR30,$24	
	NOP		;;12,14
	NOP		;;12,14
	lhi	%GPR10,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR10,%GPR10,$12	
	sw	0(%GPR1),%GPR3	
	add	%GPR1,%GPR8,%GPR9	
	subi	%GPR3,%GPR30,$24	
	NOP		;;17,19
	NOP		;;17,19
	lhi	%GPR8,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR8,%GPR8,$16	
	sw	0(%GPR1),%GPR4	
	add	%GPR1,%GPR2,%GPR10	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$20	
	add	%GPR3,%GPR3,%GPR8	
	subi	%GPR2,%GPR30,$24	
	sw	0(%GPR1),%GPR5	
	NOP		;;25,28
	NOP		;;25,28
	NOP		;;25,28
	add	%GPR1,%GPR2,%GPR4	
	sw	0(%GPR3),%GPR6	
	NOP		;;29,33
	NOP		;;29,33
	NOP		;;29,33
	NOP		;;29,33
	sw	0(%GPR1),%GPR7	
	lw	%GPR1,-28(%GPR30)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	strlength	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;35,40
	NOP		;;35,40
	NOP		;;35,40
	NOP		;;35,40
	NOP		;;35,40
	lw	%GPR4,-28(%GPR30)	
	addi	%GPR6,%GPR28,$1	
	subi	%GPR3,%GPR30,$24	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$111	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$6	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$75	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$65	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	sendcommand	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;47,52
	NOP		;;47,52
	NOP		;;47,52
	NOP		;;47,52
	NOP		;;47,52
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		;;52,56
	NOP		;;52,56
	NOP		;;52,56
	NOP		;;52,56
	j	L50	
	NOP		
	NOP		
	NOP		
	NOP		
L50:
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
g_makemenubutton:
L51:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$44	
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-36(%GPR30),%GPR1	
	sw	-4(%GPR30),%GPR9	
	NOP		
	NOP		
	NOP		
	NOP		;;3,5
	NOP		;;3,5
	sw	-32(%GPR30),%GPR2	
	subi	%GPR1,%GPR30,$32	
	NOP		;;6,8
	NOP		;;6,8
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	subi	%GPR9,%GPR30,$32	
	NOP		;;9,11
	NOP		;;9,11
	lhi	%GPR10,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR10,%GPR10,$8	
	add	%GPR1,%GPR1,%GPR2	
	subi	%GPR2,%GPR30,$32	
	lhi	%GPR11,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR11,%GPR11,$12	
	NOP		;;14,16
	NOP		;;14,16
	sw	0(%GPR1),%GPR3	
	add	%GPR1,%GPR9,%GPR10	
	subi	%GPR3,%GPR30,$32	
	NOP		;;18,20
	NOP		;;18,20
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$16	
	sw	0(%GPR1),%GPR4	
	add	%GPR1,%GPR2,%GPR11	
	subi	%GPR2,%GPR30,$32	
	NOP		;;23,25
	NOP		;;23,25
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$20	
	sw	0(%GPR1),%GPR5	
	add	%GPR1,%GPR3,%GPR9	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$24	
	add	%GPR2,%GPR2,%GPR4	
	subi	%GPR3,%GPR30,$32	
	sw	0(%GPR1),%GPR6	
	NOP		;;31,34
	NOP		;;31,34
	NOP		;;31,34
	add	%GPR1,%GPR3,%GPR5	
	sw	0(%GPR2),%GPR7	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	sw	0(%GPR1),%GPR8	
	lw	%GPR1,-36(%GPR30)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	strlength	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;41,46
	NOP		;;41,46
	NOP		;;41,46
	NOP		;;41,46
	NOP		;;41,46
	lw	%GPR4,-36(%GPR30)	
	addi	%GPR6,%GPR28,$1	
	subi	%GPR3,%GPR30,$32	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$111	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$7	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$77	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$65	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	sendcommand	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;53,55
	NOP		;;53,55
	lw	%GPR1,-4(%GPR30)	
	NOP		;;55,58
	NOP		;;55,58
	NOP		;;55,58
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		;;58,62
	NOP		;;58,62
	NOP		;;58,62
	NOP		;;58,62
	sgt	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L52	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L53	
	NOP		
	NOP		
	NOP		
	NOP		
L52:
	NOP		;;0,6
	NOP		;;0,6
	NOP		;;0,6
	NOP		;;0,6
	NOP		;;0,6
	NOP		;;0,6
	subi	%GPR3,%GPR30,$4	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$111	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$0	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$1	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$89	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$78	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	sendcommand	
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
L53:
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
	j	L54	
	NOP		
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
g_makeradiogroup:
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
	NOP		;;2,9
	NOP		;;2,9
	NOP		;;2,9
	NOP		;;2,9
	NOP		;;2,9
	NOP		;;2,9
	NOP		;;2,9
	subi	%GPR3,%GPR30,$4	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$111	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$0	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$1	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$82	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$65	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	sendcommand	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;16,21
	NOP		;;16,21
	NOP		;;16,21
	NOP		;;16,21
	NOP		;;16,21
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	j	L56	
	NOP		
	NOP		
	NOP		
	NOP		
L56:
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
d_clear:
L57:
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
	NOP		;;1,9
	NOP		;;1,9
	NOP		;;1,9
	NOP		;;1,9
	NOP		;;1,9
	NOP		;;1,9
	NOP		;;1,9
	NOP		;;1,9
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$111	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$0	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$0	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$76	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$68	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	sendcommand	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;16,21
	NOP		;;16,21
	NOP		;;16,21
	NOP		;;16,21
	NOP		;;16,21
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	j	L58	
	NOP		
	NOP		
	NOP		
	NOP		
L58:
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
strlength:
L59:
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
	NOP		;;0,2
	NOP		;;0,2
	NOP		
	NOP		
	NOP		
	NOP		;;2,4
	NOP		;;2,4
	sw	-4(%GPR30),%GPR1	
	NOP		;;4,7
	NOP		;;4,7
	NOP		;;4,7
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	sw	-8(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
L60:
	lw	%GPR1,-4(%GPR30)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	add	%GPR3,%GPR1,%GPR0	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	add	%GPR2,%GPR3,%GPR2	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	sw	-4(%GPR30),%GPR2	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	loadByteUnsigned	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;14,19
	NOP		;;14,19
	NOP		;;14,19
	NOP		;;14,19
	NOP		;;14,19
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;19,23
	NOP		;;19,23
	NOP		;;19,23
	NOP		;;19,23
	sne	%GPR27,%GPR28,%GPR1	
	bnez	%GPR27,L61	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L62	
	NOP		
	NOP		
	NOP		
	NOP		
L61:
	lw	%GPR1,-8(%GPR30)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	addi	%GPR1,%GPR1,$1	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sw	-8(%GPR30),%GPR1	
	j	L60	
	NOP		
	NOP		
	NOP		
L62:
	lw	%GPR28,-8(%GPR30)	
	NOP		;;0,8
	NOP		;;0,8
	NOP		;;0,8
	NOP		;;0,8
	NOP		;;0,8
	NOP		;;0,8
	NOP		;;0,8
	NOP		;;0,8
	j	L63	
	NOP		
	NOP		
	NOP		
	NOP		
L63:
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
wait:
L64:
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
	ori	%GPR2,%GPR2,$0	
	NOP		
	NOP		
	NOP		
L65:
	add	%GPR3,%GPR2,%GPR0	
	addi	%GPR2,%GPR2,$1	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	sne	%GPR27,%GPR3,%GPR1	
	bnez	%GPR27,L65	
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
	subi	%GPR28,%GPR2,$1	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	j	L67	
	NOP		
	NOP		
	NOP		
	NOP		
L67:
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
getack:
L68:
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
		

	lhi %GPR2, $0x200
	nop
	nop
	nop
	
	NOP		;;4,9
	NOP		;;4,9
	NOP		;;4,9
	NOP		;;4,9
	NOP		;;4,9
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
		

	nop
	nop
	nop
	sw  0(%GPR2), %GPR3
	
	addi	%GPR1,%GPR1,$1	
		

	nop
	nop
	nop
	sw  0(%GPR2), %GPR1
	
	NOP		;;12,17
	NOP		;;12,17
	NOP		;;12,17
	NOP		;;12,17
	NOP		;;12,17
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$1	
		

	nop
	nop
	nop
	sw  0(%GPR2), %GPR1
	
		

	nop
	nop
	nop
	lw  %GPR1,0(%GPR2)
	nop
	nop
	nop
	
	NOP		;;19,24
	NOP		;;19,24
	NOP		;;19,24
	NOP		;;19,24
	NOP		;;19,24
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$15	
	NOP		;;24,28
	NOP		;;24,28
	NOP		;;24,28
	NOP		;;24,28
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L69	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L70	
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
	ori	%GPR28,%GPR28,$1	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	j	L71	
	NOP		
	NOP		
	NOP		
	NOP		
L70:
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
	j	L71	
	NOP		
	NOP		
	NOP		
	NOP		
L71:
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