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
		

	lhi %GPR1, $0x200
	nop
	nop
	nop
	
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
	ori	%GPR2,%GPR2,$4	
		

	nop
	nop
	nop
	sw  0(%GPR1), %GPR2
	
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$222	
		

	nop
	nop
	nop
	sw  0(%GPR1), %GPR2
	
	NOP		;;14,19
	NOP		;;14,19
	NOP		;;14,19
	NOP		;;14,19
	NOP		;;14,19
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$18	
		

	nop
	nop
	nop
	sw  0(%GPR1), %GPR2
	
	NOP		;;20,25
	NOP		;;20,25
	NOP		;;20,25
	NOP		;;20,25
	NOP		;;20,25
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1	
		

	nop
	nop
	nop
	sw  0(%GPR1), %GPR2
	
	NOP		;;26,31
	NOP		;;26,31
	NOP		;;26,31
	NOP		;;26,31
	NOP		;;26,31
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$73	
		

	nop
	nop
	nop
	sw  0(%GPR1), %GPR2
	
	NOP		;;32,37
	NOP		;;32,37
	NOP		;;32,37
	NOP		;;32,37
	NOP		;;32,37
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$92	
		

	nop
	nop
	nop
	sw  0(%GPR1), %GPR2
	
	j	L4	
	NOP		
	NOP		
	NOP		
L3:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR4,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$-1	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR3,%GPR4	
	bnez	%GPR27,L4	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L6	
	NOP		
	NOP		
	NOP		
	NOP		
L4:
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
	sw  0(%GPR1), %GPR2
	
	NOP		;;5,10
	NOP		;;5,10
	NOP		;;5,10
	NOP		;;5,10
	NOP		;;5,10
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$223	
		

	nop
	nop
	nop
	sw  0(%GPR1), %GPR2
	
	NOP		;;11,16
	NOP		;;11,16
	NOP		;;11,16
	NOP		;;11,16
	NOP		;;11,16
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$6	
		

	nop
	nop
	nop
	sw  0(%GPR1), %GPR2
	
		

	nop
	nop
	nop
	lw  %GPR2,0(%GPR1)
	nop
	nop
	nop
	
		

	nop
	nop
	nop
	lw  %GPR6,0(%GPR1)
	nop
	nop
	nop
	
		

	nop
	nop
	nop
	lw  %GPR3,0(%GPR1)
	nop
	nop
	nop
	
		

	nop
	nop
	nop
	lw  %GPR2,0(%GPR1)
	nop
	nop
	nop
	
		

	nop
	nop
	nop
	lw  %GPR4,0(%GPR1)
	nop
	nop
	nop
	
		

	nop
	nop
	nop
	lw  %GPR5,0(%GPR1)
	nop
	nop
	nop
	
	add	%GPR3,%GPR6,%GPR3	
	NOP		;;24,28
	NOP		;;24,28
	NOP		;;24,28
	NOP		;;24,28
	add	%GPR3,%GPR3,%GPR2	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$256	
	NOP		;;29,32
	NOP		;;29,32
	NOP		;;29,32
	add	%GPR3,%GPR3,%GPR4	
	NOP		;;32,36
	NOP		;;32,36
	NOP		;;32,36
	NOP		;;32,36
	MOD	%GPR3,%GPR3,%GPR6	
	NOP		;;36,40
	NOP		;;36,40
	NOP		;;36,40
	NOP		;;36,40
	sne	%GPR27,%GPR3,%GPR5	
	bnez	%GPR27,L5	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L3	
	NOP		
	NOP		
	NOP		
	NOP		
L5:
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
	sw  0(%GPR1), %GPR3
	
	NOP		;;5,10
	NOP		;;5,10
	NOP		;;5,10
	NOP		;;5,10
	NOP		;;5,10
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$222	
		

	nop
	nop
	nop
	sw  0(%GPR1), %GPR3
	
	NOP		;;11,16
	NOP		;;11,16
	NOP		;;11,16
	NOP		;;11,16
	NOP		;;11,16
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$18	
		

	nop
	nop
	nop
	sw  0(%GPR1), %GPR3
	
	NOP		;;17,22
	NOP		;;17,22
	NOP		;;17,22
	NOP		;;17,22
	NOP		;;17,22
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$1	
		

	nop
	nop
	nop
	sw  0(%GPR1), %GPR3
	
	NOP		;;23,28
	NOP		;;23,28
	NOP		;;23,28
	NOP		;;23,28
	NOP		;;23,28
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$82	
		

	nop
	nop
	nop
	sw  0(%GPR1), %GPR3
	
	NOP		;;29,34
	NOP		;;29,34
	NOP		;;29,34
	NOP		;;29,34
	NOP		;;29,34
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$101	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$101	
		

	nop
	nop
	nop
	sw  0(%GPR1), %GPR4
	
	j	L3	
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
	subi	%GPR29,%GPR29,$32	
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
	ori	%GPR1,%GPR1,$0	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	sw	-12(%GPR30),%GPR1	
		

	lhi %GPR1, $0x200
	nop
	nop
	nop
	
	NOP		;;13,15
	NOP		;;13,15
	add	%GPR2,%GPR1,%GPR0	
	sw	-16(%GPR30),%GPR1	
	NOP		;;16,18
	NOP		;;16,18
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
	
	NOP		;;19,24
	NOP		;;19,24
	NOP		;;19,24
	NOP		;;19,24
	NOP		;;19,24
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$222	
		

	nop
	nop
	nop
	sw  0(%GPR2), %GPR1
	
	NOP		;;25,30
	NOP		;;25,30
	NOP		;;25,30
	NOP		;;25,30
	NOP		;;25,30
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
	
	NOP		;;31,36
	NOP		;;31,36
	NOP		;;31,36
	NOP		;;31,36
	NOP		;;31,36
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
	
	NOP		;;37,42
	NOP		;;37,42
	NOP		;;37,42
	NOP		;;37,42
	NOP		;;37,42
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
	
	NOP		;;43,48
	NOP		;;43,48
	NOP		;;43,48
	NOP		;;43,48
	NOP		;;43,48
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$102	
		

	nop
	nop
	nop
	sw  0(%GPR2), %GPR1
	
	j	L12	
	NOP		
	NOP		
	NOP		
L9:
	lw	%GPR1,-16(%GPR30)	
		

	nop
	nop
	nop
	lw  %GPR1,0(%GPR1)
	nop
	nop
	nop
	
	lw	%GPR2,-20(%GPR30)	
	NOP		;;2,6
	NOP		;;2,6
	NOP		;;2,6
	NOP		;;2,6
	andi	%GPR2,%GPR2,$255	
	NOP		;;6,10
	NOP		;;6,10
	NOP		;;6,10
	NOP		;;6,10
	sne	%GPR27,%GPR2,%GPR1	
	bnez	%GPR27,L10	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L11	
	NOP		
	NOP		
	NOP		
	NOP		
L10:
	lw	%GPR2,-16(%GPR30)	
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
	
	NOP		;;5,10
	NOP		;;5,10
	NOP		;;5,10
	NOP		;;5,10
	NOP		;;5,10
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$222	
		

	nop
	nop
	nop
	sw  0(%GPR2), %GPR1
	
	NOP		;;11,16
	NOP		;;11,16
	NOP		;;11,16
	NOP		;;11,16
	NOP		;;11,16
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
	
	NOP		;;17,22
	NOP		;;17,22
	NOP		;;17,22
	NOP		;;17,22
	NOP		;;17,22
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
	
	NOP		;;23,25
	NOP		;;23,25
	add	%GPR3,%GPR2,%GPR0	
	NOP		;;25,28
	NOP		;;25,28
	NOP		;;25,28
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
	
	NOP		;;29,34
	NOP		;;29,34
	NOP		;;29,34
	NOP		;;29,34
	NOP		;;29,34
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$101	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$101	
		

	nop
	nop
	nop
	sw  0(%GPR3), %GPR1
	
	NOP		
	NOP		
	NOP		
L11:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
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
	bnez	%GPR27,L12	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L15	
	NOP		
	NOP		
	NOP		
	NOP		
L12:
	lw	%GPR2,-16(%GPR30)	
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
	
	NOP		;;5,10
	NOP		;;5,10
	NOP		;;5,10
	NOP		;;5,10
	NOP		;;5,10
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$223	
		

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
	lw  %GPR2,0(%GPR1)
	nop
	nop
	nop
	
		

	nop
	nop
	nop
	lw  %GPR1,0(%GPR1)
	nop
	nop
	nop
	
	add	%GPR1,%GPR2,%GPR1	
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	sw	-20(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
L13:
	lw	%GPR1,-12(%GPR30)	
	lw	%GPR2,-8(%GPR30)	
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	sne	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L14	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L9	
	NOP		
	NOP		
	NOP		
	NOP		
L14:
	lw	%GPR1,-16(%GPR30)	
		

	nop
	nop
	nop
	lw  %GPR1,0(%GPR1)
	nop
	nop
	nop
	
	sw	-24(%GPR30),%GPR1	
	lw	%GPR2,-12(%GPR30)	
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
	lw	%GPR1,-12(%GPR30)	
	lw	%GPR2,-24(%GPR30)	
	NOP		;;12,15
	NOP		;;12,15
	NOP		;;12,15
	addi	%GPR1,%GPR1,$1	
	NOP		;;15,19
	NOP		;;15,19
	NOP		;;15,19
	NOP		;;15,19
	sw	-12(%GPR30),%GPR1	
	lw	%GPR1,-20(%GPR30)	
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;24,28
	NOP		;;24,28
	NOP		;;24,28
	NOP		;;24,28
	sw	-20(%GPR30),%GPR1	
	j	L13	
	NOP		
	NOP		
	NOP		
L15:
	lw	%GPR28,-12(%GPR30)	
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
	subi	%GPR29,%GPR29,$48	
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
	slli	%GPR1,%GPR7,$1	
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	sw	-32(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
L18:
	lw	%GPR1,-12(%GPR30)	
	lw	%GPR2,-16(%GPR30)	
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	add	%GPR1,%GPR1,%GPR2	
	lw	%GPR2,-28(%GPR30)	
	NOP		;;6,9
	NOP		;;6,9
	NOP		;;6,9
	addi	%GPR1,%GPR1,$6	
	NOP		;;9,18
	NOP		;;9,18
	NOP		;;9,18
	NOP		;;9,18
	NOP		;;9,18
	NOP		;;9,18
	NOP		;;9,18
	NOP		;;9,18
	NOP		;;9,18
		

	nop
	nop
	nop
	sw  0(%GPR2), %GPR1
	
	lw	%GPR1,-32(%GPR30)	
	NOP		;;19,28
	NOP		;;19,28
	NOP		;;19,28
	NOP		;;19,28
	NOP		;;19,28
	NOP		;;19,28
	NOP		;;19,28
	NOP		;;19,28
	NOP		;;19,28
		

	nop
	nop
	nop
	sw  0(%GPR2), %GPR1
	
	NOP		;;28,30
	NOP		;;28,30
	add	%GPR3,%GPR2,%GPR0	
	NOP		;;30,33
	NOP		;;30,33
	NOP		;;30,33
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$17	
		

	nop
	nop
	nop
	sw  0(%GPR2), %GPR1
	
	lw	%GPR2,-16(%GPR30)	
	lw	%GPR1,-12(%GPR30)	
	NOP		;;36,40
	NOP		;;36,40
	NOP		;;36,40
	NOP		;;36,40
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;40,44
	NOP		;;40,44
	NOP		;;40,44
	NOP		;;40,44
	addi	%GPR2,%GPR1,$3	
	NOP		;;44,48
	NOP		;;44,48
	NOP		;;44,48
	NOP		;;44,48
	add	%GPR1,%GPR2,%GPR0	
	NOP		;;48,53
	NOP		;;48,53
	NOP		;;48,53
	NOP		;;48,53
	NOP		;;48,53
		

	nop
	nop
	nop
	sw  0(%GPR3), %GPR1
	
	NOP		;;53,55
	NOP		;;53,55
	add	%GPR4,%GPR3,%GPR0	
	NOP		;;55,58
	NOP		;;55,58
	NOP		;;55,58
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$27	
		

	nop
	nop
	nop
	sw  0(%GPR3), %GPR1
	
	lw	%GPR3,-4(%GPR30)	
	NOP		;;60,68
	NOP		;;60,68
	NOP		;;60,68
	NOP		;;60,68
	NOP		;;60,68
	NOP		;;60,68
	NOP		;;60,68
	NOP		;;60,68
	add	%GPR1,%GPR3,%GPR0	
	NOP		;;68,73
	NOP		;;68,73
	NOP		;;68,73
	NOP		;;68,73
	NOP		;;68,73
		

	nop
	nop
	nop
	sw  0(%GPR4), %GPR1
	
	addi	%GPR4,%GPR2,$44	
	lw	%GPR2,-8(%GPR30)	
	lw	%GPR1,-12(%GPR30)	
	NOP		;;76,78
	NOP		;;76,78
	add	%GPR3,%GPR4,%GPR3	
	NOP		;;78,82
	NOP		;;78,82
	NOP		;;78,82
	NOP		;;78,82
	sw	-36(%GPR30),%GPR3	
	j	L20	
	NOP		
	NOP		
	NOP		
L19:
	lw	%GPR2,-20(%GPR30)	
	NOP		;;0,2
	NOP		;;0,2
	addi	%GPR1,%GPR1,$-1	
	NOP		;;2,4
	NOP		;;2,4
	add	%GPR4,%GPR2,%GPR0	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$4	
	lw	%GPR2,0(%GPR2)	
	NOP		;;6,9
	NOP		;;6,9
	NOP		;;6,9
	add	%GPR3,%GPR4,%GPR3	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	sw	-20(%GPR30),%GPR3	
	NOP		
	NOP		
	NOP		
L20:
	add	%GPR3,%GPR2,%GPR0	
	lw	%GPR4,-28(%GPR30)	
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
		

	nop
	nop
	nop
	sw  0(%GPR4), %GPR3
	
	lw	%GPR3,-36(%GPR30)	
	NOP		;;6,10
	NOP		;;6,10
	NOP		;;6,10
	NOP		;;6,10
	add	%GPR2,%GPR3,%GPR2	
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	sw	-36(%GPR30),%GPR2	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		;;15,19
	NOP		;;15,19
	NOP		;;15,19
	NOP		;;15,19
	sne	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L19	
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
	lw	%GPR1,-16(%GPR30)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	sw	-40(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
L22:
	lw	%GPR2,-40(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
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
	sne	%GPR27,%GPR2,%GPR1	
	bnez	%GPR27,L23	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L24	
	NOP		
	NOP		
	NOP		
	NOP		
L23:
	lw	%GPR1,-24(%GPR30)	
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
	NOP		;;1,3
	NOP		;;1,3
	lw	%GPR4,-24(%GPR30)	
	add	%GPR1,%GPR28,%GPR0	
	NOP		;;4,6
	NOP		;;4,6
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$1	
	NOP		;;6,8
	NOP		;;6,8
	add	%GPR2,%GPR1,%GPR0	
	NOP		;;8,10
	NOP		;;8,10
	add	%GPR3,%GPR4,%GPR3	
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	sw	-24(%GPR30),%GPR3	
	lw	%GPR3,-28(%GPR30)	
		

	nop
	nop
	nop
	sw  0(%GPR3), %GPR2
	
	lw	%GPR2,-40(%GPR30)	
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	addi	%GPR2,%GPR2,$-1	
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	sw	-40(%GPR30),%GPR2	
	lw	%GPR2,-36(%GPR30)	
	NOP		;;26,30
	NOP		;;26,30
	NOP		;;26,30
	NOP		;;26,30
	add	%GPR1,%GPR2,%GPR1	
	NOP		;;30,34
	NOP		;;30,34
	NOP		;;30,34
	NOP		;;30,34
	sw	-36(%GPR30),%GPR1	
	j	L22	
	NOP		
	NOP		
	NOP		
L24:
	lw	%GPR1,-36(%GPR30)	
	lw	%GPR2,-28(%GPR30)	
	NOP		;;1,9
	NOP		;;1,9
	NOP		;;1,9
	NOP		;;1,9
	NOP		;;1,9
	NOP		;;1,9
	NOP		;;1,9
	NOP		;;1,9
		

	nop
	nop
	nop
	sw  0(%GPR2), %GPR1
	
		

	lhi %GPR1, $0x200
	nop
	nop
	nop
	
	NOP		;;10,15
	NOP		;;10,15
	NOP		;;10,15
	NOP		;;10,15
	NOP		;;10,15
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
		

	nop
	nop
	nop
	sw  0(%GPR1), %GPR2
	
	lw	%GPR2,-32(%GPR30)	
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	addi	%GPR2,%GPR2,$1	
		

	nop
	nop
	nop
	sw  0(%GPR1), %GPR2
	
	NOP		;;22,27
	NOP		;;22,27
	NOP		;;22,27
	NOP		;;22,27
	NOP		;;22,27
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1	
		

	nop
	nop
	nop
	sw  0(%GPR1), %GPR2
	
		

	nop
	nop
	nop
	lw  %GPR1,0(%GPR1)
	nop
	nop
	nop
	
	NOP		;;29,34
	NOP		;;29,34
	NOP		;;29,34
	NOP		;;29,34
	NOP		;;29,34
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$15	
	NOP		;;34,38
	NOP		;;34,38
	NOP		;;34,38
	NOP		;;34,38
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L18	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L25	
	NOP		
	NOP		
	NOP		
	NOP		
L25:
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
	j	L26	
	NOP		
	NOP		
	NOP		
	NOP		
L26:
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
L27:
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
	NOP		
	NOP		
	NOP		
	NOP		;;2,4
	NOP		;;2,4
	sw	-8(%GPR30),%GPR1	
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
	sw	-12(%GPR30),%GPR1	
	j	L29	
	NOP		
	NOP		
	NOP		
L28:
	lw	%GPR6,-12(%GPR30)	
	NOP		;;0,6
	NOP		;;0,6
	NOP		;;0,6
	NOP		;;0,6
	NOP		;;0,6
	NOP		;;0,6
	lw	%GPR4,-4(%GPR30)	
	NOP		;;6,8
	NOP		;;6,8
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
	NOP		;;13,18
	NOP		;;13,18
	NOP		;;13,18
	NOP		;;13,18
	NOP		;;13,18
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	NOP		;;18,22
	j	L31	
	NOP		
	NOP		
	NOP		
	NOP		
L29:
	lw	%GPR1,-8(%GPR30)	
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
	NOP		;;1,3
	NOP		;;1,3
	lw	%GPR3,-8(%GPR30)	
	NOP		;;3,6
	NOP		;;3,6
	NOP		;;3,6
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1	
	NOP		;;6,8
	NOP		;;6,8
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;8,10
	NOP		;;8,10
	add	%GPR2,%GPR3,%GPR2	
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	sw	-8(%GPR30),%GPR2	
	sne	%GPR27,%GPR28,%GPR1	
	bnez	%GPR27,L30	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L28	
	NOP		
	NOP		
	NOP		
	NOP		
L30:
	lw	%GPR1,-12(%GPR30)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	addi	%GPR1,%GPR1,$1	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sw	-12(%GPR30),%GPR1	
	j	L29	
	NOP		
	NOP		
	NOP		
L31:
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
L32:
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
	j	L33	
	NOP		
	NOP		
	NOP		
	NOP		
L33:
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
L34:
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
	bnez	%GPR27,L35	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L36	
	NOP		
	NOP		
	NOP		
	NOP		
L35:
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
	j	L37	
	NOP		
	NOP		
	NOP		
L36:
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
L37:
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
g_print:
L39:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$28	
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
	sw	-16(%GPR30),%GPR1	
	subi	%GPR1,%GPR30,$8	
	NOP		;;6,8
	NOP		;;6,8
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	NOP		;;8,11
	NOP		;;8,11
	NOP		;;8,11
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;12,15
	NOP		;;12,15
	NOP		;;12,15
	sw	-20(%GPR30),%GPR4	
	sw	0(%GPR1),%GPR3	
	j	L41	
	NOP		
	NOP		
	NOP		
L40:
	lw	%GPR1,-20(%GPR30)	
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	addi	%GPR6,%GPR1,$1	
	subi	%GPR3,%GPR30,$8	
	lw	%GPR4,-12(%GPR30)	
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
	NOP		;;12,17
	NOP		;;12,17
	NOP		;;12,17
	NOP		;;12,17
	NOP		;;12,17
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	j	L43	
	NOP		
	NOP		
	NOP		
	NOP		
L41:
	lw	%GPR1,-16(%GPR30)	
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
	NOP		;;1,3
	NOP		;;1,3
	lw	%GPR3,-16(%GPR30)	
	NOP		;;3,6
	NOP		;;3,6
	NOP		;;3,6
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1	
	NOP		;;6,8
	NOP		;;6,8
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;8,10
	NOP		;;8,10
	add	%GPR2,%GPR3,%GPR2	
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	sw	-16(%GPR30),%GPR2	
	sne	%GPR27,%GPR28,%GPR1	
	bnez	%GPR27,L42	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L40	
	NOP		
	NOP		
	NOP		
	NOP		
L42:
	lw	%GPR1,-20(%GPR30)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	addi	%GPR1,%GPR1,$1	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sw	-20(%GPR30),%GPR1	
	j	L41	
	NOP		
	NOP		
	NOP		
L43:
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
L44:
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
	j	L45	
	NOP		
	NOP		
	NOP		
	NOP		
L45:
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
L46:
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
	j	L47	
	NOP		
	NOP		
	NOP		
	NOP		
L47:
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
L48:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$60	
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
	sw	-48(%GPR30),%GPR7	
	lhi	%GPR10,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR10,%GPR10,$32	
	lw	%GPR7,0(%GPR7)	
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	slt	%GPR27,%GPR7,%GPR10	
	bnez	%GPR27,L49	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L52	
	NOP		
	NOP		
	NOP		
	NOP		
L49:
	sw	-36(%GPR30),%GPR7	
	subi	%GPR10,%GPR30,$36	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$4	
	subi	%GPR11,%GPR30,$36	
	NOP		;;5,7
	NOP		;;5,7
	lhi	%GPR12,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR12,%GPR12,$8	
	add	%GPR7,%GPR10,%GPR7	
	subi	%GPR10,%GPR30,$36	
	lhi	%GPR13,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR13,%GPR13,$12	
	NOP		;;10,12
	NOP		;;10,12
	sw	0(%GPR7),%GPR1	
	add	%GPR1,%GPR11,%GPR12	
	subi	%GPR7,%GPR30,$36	
	lhi	%GPR11,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR11,%GPR11,$16	
	NOP		;;15,17
	NOP		;;15,17
	sw	0(%GPR1),%GPR2	
	add	%GPR1,%GPR10,%GPR13	
	subi	%GPR2,%GPR30,$36	
	lhi	%GPR10,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR10,%GPR10,$20	
	NOP		;;20,22
	NOP		;;20,22
	sw	0(%GPR1),%GPR3	
	add	%GPR1,%GPR7,%GPR11	
	subi	%GPR3,%GPR30,$36	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$24	
	NOP		;;25,27
	NOP		;;25,27
	sw	0(%GPR1),%GPR4	
	add	%GPR1,%GPR2,%GPR10	
	subi	%GPR2,%GPR30,$36	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$28	
	NOP		;;30,32
	NOP		;;30,32
	sw	0(%GPR1),%GPR5	
	add	%GPR1,%GPR3,%GPR7	
	add	%GPR4,%GPR2,%GPR4	
	subi	%GPR10,%GPR30,$36	
	lhi	%GPR11,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR11,%GPR11,$32	
	sw	0(%GPR1),%GPR6	
	NOP		;;37,41
	NOP		;;37,41
	NOP		;;37,41
	NOP		;;37,41
	sw	0(%GPR4),%GPR8	
	NOP		;;41,44
	NOP		;;41,44
	NOP		;;41,44
	add	%GPR10,%GPR10,%GPR11	
	NOP		;;44,46
	NOP		;;44,46
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
	NOP		;;54,56
	NOP		;;54,56
	lw	%GPR2,-44(%GPR30)	
	NOP		;;56,59
	NOP		;;56,59
	NOP		;;56,59
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;59,63
	NOP		;;59,63
	NOP		;;59,63
	NOP		;;59,63
	sne	%GPR27,%GPR2,%GPR1	
	bnez	%GPR27,L50	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L51	
	NOP		
	NOP		
	NOP		
	NOP		
L50:
	lw	%GPR1,-48(%GPR30)	
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
L51:
	NOP		;;0,3
	NOP		;;0,3
	NOP		;;0,3
	LI	%GPR1, *L1	
	NOP		;;3,5
	NOP		;;3,5
	subi	%GPR8,%GPR30,$36	
	NOP		;;5,7
	NOP		;;5,7
	add	%GPR3,%GPR1,%GPR0	
	sw	-52(%GPR30),%GPR1	
	lw	%GPR1,0(%GPR1)	
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$4	
	NOP		;;10,13
	NOP		;;10,13
	NOP		;;10,13
	addi	%GPR2,%GPR1,$1	
	add	%GPR8,%GPR8,%GPR9	
	NOP		;;14,17
	NOP		;;14,17
	NOP		;;14,17
	sw	0(%GPR3),%GPR2	
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
	sw	-36(%GPR30),%GPR1	
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
	subi	%GPR3,%GPR30,$36	
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
	lw	%GPR1,-52(%GPR30)	
	NOP		;;29,33
	NOP		;;29,33
	NOP		;;29,33
	NOP		;;29,33
	lw	%GPR1,0(%GPR1)	
	NOP		;;33,37
	NOP		;;33,37
	NOP		;;33,37
	NOP		;;33,37
	addi	%GPR28,%GPR1,$-1	
	NOP		;;37,41
	NOP		;;37,41
	NOP		;;37,41
	NOP		;;37,41
	j	L53	
	NOP		
	NOP		
	NOP		
	NOP		
L52:
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
	j	L53	
	NOP		
	NOP		
	NOP		
	NOP		
L53:
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
L54:
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
	j	L55	
	NOP		
	NOP		
	NOP		
	NOP		
L55:
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
L56:
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
	sw	-28(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
	NOP		;;2,4
	NOP		;;2,4
	sw	-24(%GPR30),%GPR2	
	sw	-32(%GPR30),%GPR1	
	subi	%GPR1,%GPR30,$24	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	NOP		;;7,9
	NOP		;;7,9
	subi	%GPR8,%GPR30,$24	
	NOP		;;9,11
	NOP		;;9,11
	add	%GPR1,%GPR1,%GPR2	
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$8	
	subi	%GPR2,%GPR30,$24	
	NOP		;;13,15
	NOP		;;13,15
	sw	0(%GPR1),%GPR3	
	add	%GPR1,%GPR8,%GPR9	
	lhi	%GPR10,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR10,%GPR10,$12	
	NOP		;;17,19
	NOP		;;17,19
	subi	%GPR3,%GPR30,$24	
	sw	0(%GPR1),%GPR4	
	add	%GPR1,%GPR2,%GPR10	
	lhi	%GPR8,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR8,%GPR8,$16	
	subi	%GPR2,%GPR30,$24	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$20	
	sw	0(%GPR1),%GPR5	
	NOP		;;25,27
	NOP		;;25,27
	add	%GPR3,%GPR3,%GPR8	
	add	%GPR1,%GPR2,%GPR4	
	NOP		;;28,30
	NOP		;;28,30
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	sw	0(%GPR3),%GPR6	
	NOP		;;31,34
	NOP		;;31,34
	NOP		;;31,34
	sw	-36(%GPR30),%GPR2	
	sw	0(%GPR1),%GPR7	
	j	L58	
	NOP		
	NOP		
	NOP		
L57:
	lw	%GPR1,-36(%GPR30)	
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	addi	%GPR6,%GPR1,$1	
	subi	%GPR3,%GPR30,$24	
	lw	%GPR4,-28(%GPR30)	
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
	NOP		;;12,17
	NOP		;;12,17
	NOP		;;12,17
	NOP		;;12,17
	NOP		;;12,17
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	j	L60	
	NOP		
	NOP		
	NOP		
	NOP		
L58:
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
	NOP		;;1,3
	NOP		;;1,3
	lw	%GPR3,-32(%GPR30)	
	NOP		;;3,6
	NOP		;;3,6
	NOP		;;3,6
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1	
	NOP		;;6,8
	NOP		;;6,8
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;8,10
	NOP		;;8,10
	add	%GPR2,%GPR3,%GPR2	
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	sw	-32(%GPR30),%GPR2	
	sne	%GPR27,%GPR28,%GPR1	
	bnez	%GPR27,L59	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L57	
	NOP		
	NOP		
	NOP		
	NOP		
L59:
	lw	%GPR1,-36(%GPR30)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	addi	%GPR1,%GPR1,$1	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sw	-36(%GPR30),%GPR1	
	j	L58	
	NOP		
	NOP		
	NOP		
L60:
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
L61:
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
	sw	-36(%GPR30),%GPR1	
	sw	-4(%GPR30),%GPR9	
	NOP		
	NOP		
	NOP		
	NOP		;;3,5
	NOP		;;3,5
	sw	-32(%GPR30),%GPR2	
	sw	-40(%GPR30),%GPR1	
	subi	%GPR1,%GPR30,$32	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	NOP		;;8,10
	NOP		;;8,10
	subi	%GPR9,%GPR30,$32	
	NOP		;;10,12
	NOP		;;10,12
	add	%GPR1,%GPR1,%GPR2	
	lhi	%GPR10,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR10,%GPR10,$8	
	subi	%GPR2,%GPR30,$32	
	lhi	%GPR11,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR11,%GPR11,$12	
	sw	0(%GPR1),%GPR3	
	add	%GPR1,%GPR9,%GPR10	
	NOP		;;17,19
	NOP		;;17,19
	subi	%GPR3,%GPR30,$32	
	NOP		;;19,21
	NOP		;;19,21
	sw	0(%GPR1),%GPR4	
	add	%GPR1,%GPR2,%GPR11	
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$16	
	subi	%GPR2,%GPR30,$32	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$20	
	sw	0(%GPR1),%GPR5	
	add	%GPR1,%GPR3,%GPR9	
	NOP		;;27,29
	NOP		;;27,29
	add	%GPR2,%GPR2,%GPR4	
	NOP		;;29,31
	NOP		;;29,31
	sw	0(%GPR1),%GPR6	
	subi	%GPR3,%GPR30,$32	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$24	
	NOP		;;33,35
	NOP		;;33,35
	sw	0(%GPR2),%GPR7	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	add	%GPR1,%GPR3,%GPR5	
	NOP		;;37,40
	NOP		;;37,40
	NOP		;;37,40
	sw	-44(%GPR30),%GPR2	
	sw	0(%GPR1),%GPR8	
	j	L65	
	NOP		
	NOP		
	NOP		
L62:
	lw	%GPR1,-44(%GPR30)	
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	addi	%GPR6,%GPR1,$1	
	subi	%GPR3,%GPR30,$32	
	lw	%GPR4,-36(%GPR30)	
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
	NOP		;;12,14
	NOP		;;12,14
	lw	%GPR1,-4(%GPR30)	
	NOP		;;14,17
	NOP		;;14,17
	NOP		;;14,17
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	sgt	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L63	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L64	
	NOP		
	NOP		
	NOP		
	NOP		
L63:
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
L64:
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
	j	L67	
	NOP		
	NOP		
	NOP		
	NOP		
L65:
	lw	%GPR1,-40(%GPR30)	
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
	NOP		;;1,3
	NOP		;;1,3
	lw	%GPR3,-40(%GPR30)	
	NOP		;;3,6
	NOP		;;3,6
	NOP		;;3,6
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1	
	NOP		;;6,8
	NOP		;;6,8
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;8,10
	NOP		;;8,10
	add	%GPR2,%GPR3,%GPR2	
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	sw	-40(%GPR30),%GPR2	
	sne	%GPR27,%GPR28,%GPR1	
	bnez	%GPR27,L66	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L62	
	NOP		
	NOP		
	NOP		
	NOP		
L66:
	lw	%GPR1,-44(%GPR30)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	addi	%GPR1,%GPR1,$1	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sw	-44(%GPR30),%GPR1	
	j	L65	
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
g_makeradiogroup:
L68:
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
	j	L69	
	NOP		
	NOP		
	NOP		
	NOP		
L69:
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
L70:
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
strlength:
L72:
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
L73:
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
	NOP		;;1,3
	NOP		;;1,3
	lw	%GPR3,-4(%GPR30)	
	NOP		;;3,6
	NOP		;;3,6
	NOP		;;3,6
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1	
	NOP		;;6,8
	NOP		;;6,8
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;8,10
	NOP		;;8,10
	add	%GPR2,%GPR3,%GPR2	
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	sw	-4(%GPR30),%GPR2	
	sne	%GPR27,%GPR28,%GPR1	
	bnez	%GPR27,L74	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L75	
	NOP		
	NOP		
	NOP		
	NOP		
L74:
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
	j	L73	
	NOP		
	NOP		
	NOP		
L75:
	lw	%GPR28,-8(%GPR30)	
	NOP		;;0,8
	NOP		;;0,8
	NOP		;;0,8
	NOP		;;0,8
	NOP		;;0,8
	NOP		;;0,8
	NOP		;;0,8
	NOP		;;0,8
	j	L76	
	NOP		
	NOP		
	NOP		
	NOP		
L76:
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
L77:
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
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		
	NOP		
	NOP		
L78:
	sne	%GPR27,%GPR28,%GPR1	
	bnez	%GPR27,L79	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L80	
	NOP		
	NOP		
	NOP		
	NOP		
L79:
	addi	%GPR28,%GPR28,$1	
	j	L78	
	NOP		
	NOP		
	NOP		
L80:
	j	L81	
	NOP		
	NOP		
	NOP		
	NOP		
L81:
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
L82:
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
		

	lhi %GPR2, $0x200
	nop
	nop
	nop
	
	NOP		;;3,8
	NOP		;;3,8
	NOP		;;3,8
	NOP		;;3,8
	NOP		;;3,8
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
	
	NOP		;;11,16
	NOP		;;11,16
	NOP		;;11,16
	NOP		;;11,16
	NOP		;;11,16
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
	
	NOP		;;18,23
	NOP		;;18,23
	NOP		;;18,23
	NOP		;;18,23
	NOP		;;18,23
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$15	
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L83	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L84	
	NOP		
	NOP		
	NOP		
	NOP		
L83:
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
	j	L85	
	NOP		
	NOP		
	NOP		
	NOP		
L84:
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
