	.section	.data
	.align	4
L1:
	.data.32	1
L2:
	.data.8	48
	.data.8	120
	.space	1
	.section	.text
t_printInt:
L3:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$28	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;0,2
	NOP		;;0,2
	NOP		
	NOP		
	NOP		
	subi	%GPR2,%GPR30,$20	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	intToStr	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR1,%GPR30,$20	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_print	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;6,11
	NOP		;;6,11
	NOP		;;6,11
	NOP		;;6,11
	NOP		;;6,11
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		;;11,15
	NOP		;;11,15
	NOP		;;11,15
	NOP		;;11,15
	j	L4	
	NOP		
	NOP		
	NOP		
	NOP		
L4:
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
t_printHex:
L5:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$20	
	NOP		
	NOP		
	NOP		
	NOP		
	add	%GPR3,%GPR2,%GPR0	
	NOP		
	NOP		
	NOP		
	subi	%GPR2,%GPR30,$12	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	intToHexStr	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *L2	
	NOP		;;5,10
	NOP		;;5,10
	NOP		;;5,10
	NOP		;;5,10
	NOP		;;5,10
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_print	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
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
	jal	t_print	
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
	j	L6	
	NOP		
	NOP		
	NOP		
	NOP		
L6:
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
checkbuffer:
L7:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$12	
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
		

	lhi %GPR2, $0x200
	nop
	nop
	nop
	
	sw	-4(%GPR30),%GPR2	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	lw	%GPR4,-4(%GPR30)	
	lw	%GPR2,-4(%GPR30)	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$4	
		

	nop
	nop
	nop
	sw  0(%GPR4), %GPR3
	
	lw	%GPR2,-4(%GPR30)	
		

	nop
	nop
	nop
	sw  0(%GPR2), %GPR1
	
	NOP		;;18,20
	NOP		;;18,20
	lw	%GPR2,-4(%GPR30)	
	NOP		;;20,23
	NOP		;;20,23
	NOP		;;20,23
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$18	
		

	nop
	nop
	nop
	sw  0(%GPR2), %GPR3
	
	NOP		;;24,27
	NOP		;;24,27
	NOP		;;24,27
	lw	%GPR2,-4(%GPR30)	
	NOP		;;27,29
	NOP		;;27,29
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
	sw  0(%GPR2), %GPR3
	
	NOP		;;31,33
	NOP		;;31,33
	add	%GPR4,%GPR4,%GPR3	
	lw	%GPR2,-4(%GPR30)	
	NOP		;;34,36
	NOP		;;34,36
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$73	
		

	nop
	nop
	nop
	sw  0(%GPR2), %GPR3
	
	add	%GPR4,%GPR4,%GPR3	
	lw	%GPR2,-4(%GPR30)	
		

	nop
	nop
	nop
	sw  0(%GPR2), %GPR4
	
	NOP		;;40,45
	NOP		;;40,45
	NOP		;;40,45
	NOP		;;40,45
	NOP		;;40,45
	lhi	%GPR4,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$-1	
	NOP		
	NOP		
	NOP		
L8:
	lw	%GPR2,-4(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
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
	
	addi	%GPR3,%GPR1,$1	
	lw	%GPR2,-4(%GPR30)	
		

	nop
	nop
	nop
	sw  0(%GPR2), %GPR3
	
	NOP		;;8,10
	NOP		;;8,10
	lw	%GPR2,-4(%GPR30)	
	NOP		;;10,13
	NOP		;;10,13
	NOP		;;10,13
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$6	
		

	nop
	nop
	nop
	sw  0(%GPR2), %GPR3
	
	lw	%GPR2,-4(%GPR30)	
		

	nop
	nop
	nop
	lw  %GPR3,0(%GPR2)
	nop
	nop
	nop
	
	lw	%GPR2,-4(%GPR30)	
		

	nop
	nop
	nop
	lw  %GPR3,0(%GPR2)
	nop
	nop
	nop
	
	lw	%GPR2,-4(%GPR30)	
		

	nop
	nop
	nop
	lw  %GPR2,0(%GPR2)
	nop
	nop
	nop
	
	add	%GPR4,%GPR3,%GPR2	
	lw	%GPR5,-4(%GPR30)	
		

	nop
	nop
	nop
	lw  %GPR2,0(%GPR5)
	nop
	nop
	nop
	
	add	%GPR4,%GPR4,%GPR2	
	lw	%GPR3,-4(%GPR30)	
		

	nop
	nop
	nop
	lw  %GPR3,0(%GPR3)
	nop
	nop
	nop
	
	add	%GPR4,%GPR4,%GPR3	
	lw	%GPR5,-4(%GPR30)	
		

	nop
	nop
	nop
	lw  %GPR3,0(%GPR5)
	nop
	nop
	nop
	
	NOP		;;29,34
	NOP		;;29,34
	NOP		;;29,34
	NOP		;;29,34
	NOP		;;29,34
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$256	
	NOP		;;34,38
	NOP		;;34,38
	NOP		;;34,38
	NOP		;;34,38
	MOD	%GPR4,%GPR4,%GPR5	
	NOP		;;38,42
	NOP		;;38,42
	NOP		;;38,42
	NOP		;;38,42
	sne	%GPR27,%GPR4,%GPR3	
	bnez	%GPR27,L9	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L10	
	NOP		
	NOP		
	NOP		
	NOP		
L9:
	lw	%GPR4,-4(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$4	
		

	nop
	nop
	nop
	sw  0(%GPR4), %GPR3
	
	lw	%GPR3,-4(%GPR30)	
		

	nop
	nop
	nop
	sw  0(%GPR3), %GPR1
	
	NOP		;;7,9
	NOP		;;7,9
	lw	%GPR4,-4(%GPR30)	
	NOP		;;9,12
	NOP		;;9,12
	NOP		;;9,12
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$18	
		

	nop
	nop
	nop
	sw  0(%GPR4), %GPR3
	
	NOP		;;13,16
	NOP		;;13,16
	NOP		;;13,16
	lw	%GPR5,-4(%GPR30)	
	NOP		;;16,18
	NOP		;;16,18
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
	
	NOP		;;20,22
	NOP		;;20,22
	add	%GPR4,%GPR4,%GPR3	
	lw	%GPR5,-4(%GPR30)	
	NOP		;;23,25
	NOP		;;23,25
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
	lw	%GPR5,-4(%GPR30)	
		

	nop
	nop
	nop
	sw  0(%GPR5), %GPR4
	
	NOP		
	NOP		
	NOP		
L10:
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
	bnez	%GPR27,L8	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L11	
	NOP		
	NOP		
	NOP		
	NOP		
L11:
	add	%GPR28,%GPR2,%GPR0	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	j	L12	
	NOP		
	NOP		
	NOP		
	NOP		
L12:
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
L13:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$36	
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-8(%GPR30),%GPR1	
	sw	-12(%GPR30),%GPR2	
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
	sw	-16(%GPR30),%GPR1	
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
	sw	-20(%GPR30),%GPR1	
		

	lhi %GPR1, $0x200
	nop
	nop
	nop
	
	sw	-4(%GPR30),%GPR1	
	NOP		;;19,23
	NOP		;;19,23
	NOP		;;19,23
	NOP		;;19,23
	lw	%GPR1,-4(%GPR30)	
	lw	%GPR2,-4(%GPR30)	
	NOP		;;24,27
	NOP		;;24,27
	NOP		;;24,27
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
	
	lw	%GPR2,-16(%GPR30)	
	lw	%GPR1,-4(%GPR30)	
		

	nop
	nop
	nop
	sw  0(%GPR1), %GPR2
	
	NOP		;;31,33
	NOP		;;31,33
	lw	%GPR1,-4(%GPR30)	
	NOP		;;33,36
	NOP		;;33,36
	NOP		;;33,36
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
	
	NOP		;;37,40
	NOP		;;37,40
	NOP		;;37,40
	lw	%GPR1,-4(%GPR30)	
	NOP		;;40,42
	NOP		;;40,42
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1	
	NOP		;;42,46
	NOP		;;42,46
	NOP		;;42,46
	NOP		;;42,46
	sw	-24(%GPR30),%GPR2	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$18	
	NOP		;;47,51
	NOP		;;47,51
	NOP		;;47,51
	NOP		;;47,51
	sw	-28(%GPR30),%GPR2	
	lw	%GPR2,-24(%GPR30)	
		

	nop
	nop
	nop
	sw  0(%GPR1), %GPR2
	
	lw	%GPR1,-28(%GPR30)	
	NOP		;;54,58
	NOP		;;54,58
	NOP		;;54,58
	NOP		;;54,58
	add	%GPR1,%GPR1,%GPR2	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$83	
	NOP		;;59,62
	NOP		;;59,62
	NOP		;;59,62
	sw	-28(%GPR30),%GPR1	
	add	%GPR3,%GPR2,%GPR0	
	lw	%GPR1,-4(%GPR30)	
		

	nop
	nop
	nop
	sw  0(%GPR1), %GPR2
	
	lw	%GPR2,-28(%GPR30)	
	lw	%GPR1,-4(%GPR30)	
	NOP		;;67,70
	NOP		;;67,70
	NOP		;;67,70
	add	%GPR2,%GPR2,%GPR3	
		

	nop
	nop
	nop
	sw  0(%GPR1), %GPR2
	
	NOP		;;71,76
	NOP		;;71,76
	NOP		;;71,76
	NOP		;;71,76
	NOP		;;71,76
	lhi	%GPR1,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$-1	
	NOP		
	NOP		
	NOP		
L14:
	lw	%GPR1,-4(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
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
	
	lw	%GPR2,-16(%GPR30)	
	lw	%GPR1,-4(%GPR30)	
	NOP		;;7,10
	NOP		;;7,10
	NOP		;;7,10
	addi	%GPR2,%GPR2,$1	
		

	nop
	nop
	nop
	sw  0(%GPR1), %GPR2
	
	lw	%GPR2,-12(%GPR30)	
	lw	%GPR1,-4(%GPR30)	
	NOP		;;13,16
	NOP		;;13,16
	NOP		;;13,16
	addi	%GPR2,%GPR2,$4	
		

	nop
	nop
	nop
	sw  0(%GPR1), %GPR2
	
	lw	%GPR1,-4(%GPR30)	
		

	nop
	nop
	nop
	lw  %GPR1,0(%GPR1)
	nop
	nop
	nop
	
	lw	%GPR1,-4(%GPR30)	
		

	nop
	nop
	nop
	lw  %GPR1,0(%GPR1)
	nop
	nop
	nop
	
	add	%GPR2,%GPR1,%GPR0	
	lw	%GPR1,-4(%GPR30)	
		

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
L15:
	lw	%GPR1,-20(%GPR30)	
	lw	%GPR2,-12(%GPR30)	
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	sne	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L16	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L17	
	NOP		
	NOP		
	NOP		
	NOP		
L16:
	lw	%GPR1,-4(%GPR30)	
		

	nop
	nop
	nop
	lw  %GPR1,0(%GPR1)
	nop
	nop
	nop
	
	sw	-24(%GPR30),%GPR1	
	lw	%GPR2,-20(%GPR30)	
	lw	%GPR1,-8(%GPR30)	
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
	lw	%GPR1,-20(%GPR30)	
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	addi	%GPR1,%GPR1,$1	
	NOP		;;25,29
	NOP		;;25,29
	NOP		;;25,29
	NOP		;;25,29
	sw	-20(%GPR30),%GPR1	
	j	L15	
	NOP		
	NOP		
	NOP		
L17:
	lw	%GPR1,-4(%GPR30)	
		

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
	bnez	%GPR27,L18	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L19	
	NOP		
	NOP		
	NOP		
	NOP		
L18:
	lw	%GPR1,-4(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
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
	
	lw	%GPR2,-16(%GPR30)	
	lw	%GPR1,-4(%GPR30)	
		

	nop
	nop
	nop
	sw  0(%GPR1), %GPR2
	
	NOP		;;8,10
	NOP		;;8,10
	lw	%GPR1,-4(%GPR30)	
	NOP		;;10,13
	NOP		;;10,13
	NOP		;;10,13
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
	
	NOP		;;14,17
	NOP		;;14,17
	NOP		;;14,17
	lw	%GPR1,-4(%GPR30)	
	NOP		;;17,19
	NOP		;;17,19
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1	
	NOP		;;19,23
	NOP		;;19,23
	NOP		;;19,23
	NOP		;;19,23
	sw	-24(%GPR30),%GPR2	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$18	
	NOP		;;24,28
	NOP		;;24,28
	NOP		;;24,28
	NOP		;;24,28
	sw	-28(%GPR30),%GPR2	
	lw	%GPR2,-24(%GPR30)	
		

	nop
	nop
	nop
	sw  0(%GPR1), %GPR2
	
	lw	%GPR1,-28(%GPR30)	
	NOP		;;31,35
	NOP		;;31,35
	NOP		;;31,35
	NOP		;;31,35
	add	%GPR1,%GPR1,%GPR2	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$82	
	NOP		;;36,39
	NOP		;;36,39
	NOP		;;36,39
	sw	-28(%GPR30),%GPR1	
	add	%GPR3,%GPR2,%GPR0	
	lw	%GPR1,-4(%GPR30)	
		

	nop
	nop
	nop
	sw  0(%GPR1), %GPR2
	
	lw	%GPR2,-28(%GPR30)	
	lw	%GPR1,-4(%GPR30)	
	NOP		;;44,47
	NOP		;;44,47
	NOP		;;44,47
	add	%GPR2,%GPR2,%GPR3	
	NOP		;;47,51
	NOP		;;47,51
	NOP		;;47,51
	NOP		;;47,51
	sw	-28(%GPR30),%GPR2	
		

	nop
	nop
	nop
	sw  0(%GPR1), %GPR2
	
	NOP		
	NOP		
	NOP		
L19:
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
	bnez	%GPR27,L14	
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
	lw	%GPR28,-20(%GPR30)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	j	L21	
	NOP		
	NOP		
	NOP		
	NOP		
L21:
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
L22:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$44	
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-8(%GPR30),%GPR1	
	sw	-12(%GPR30),%GPR2	
	sw	-16(%GPR30),%GPR5	
	sw	-20(%GPR30),%GPR6	
	NOP		
	NOP		
	NOP		
	sw	-24(%GPR30),%GPR3	
	sw	-28(%GPR30),%GPR4	
		

	lhi %GPR1, $0x200
	nop
	nop
	nop
	
	sw	-4(%GPR30),%GPR1	
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
	lw	%GPR1,-4(%GPR30)	
	NOP		;;19,23
	NOP		;;19,23
	NOP		;;19,23
	NOP		;;19,23
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$3	
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	sw	-36(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
L23:
	lw	%GPR1,-16(%GPR30)	
	lw	%GPR2,-20(%GPR30)	
	lw	%GPR5,-4(%GPR30)	
	NOP		;;2,4
	NOP		;;2,4
	add	%GPR3,%GPR1,%GPR0	
	add	%GPR4,%GPR2,%GPR0	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	add	%GPR3,%GPR3,%GPR4	
	lw	%GPR4,-36(%GPR30)	
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	add	%GPR3,%GPR3,%GPR4	
	NOP		;;14,18
	NOP		;;14,18
	NOP		;;14,18
	NOP		;;14,18
	addi	%GPR4,%GPR3,$3	
		

	nop
	nop
	nop
	sw  0(%GPR5), %GPR4
	
	lw	%GPR3,-4(%GPR30)	
	lw	%GPR4,-32(%GPR30)	
		

	nop
	nop
	nop
	sw  0(%GPR3), %GPR4
	
	NOP		;;22,24
	NOP		;;22,24
	lw	%GPR3,-4(%GPR30)	
	NOP		;;24,27
	NOP		;;24,27
	NOP		;;24,27
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$17	
		

	nop
	nop
	nop
	sw  0(%GPR3), %GPR4
	
	lw	%GPR4,-20(%GPR30)	
	lw	%GPR3,-16(%GPR30)	
	NOP		;;30,32
	NOP		;;30,32
	lw	%GPR5,-4(%GPR30)	
	NOP		;;32,34
	NOP		;;32,34
	add	%GPR3,%GPR3,%GPR4	
	lw	%GPR4,-36(%GPR30)	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	add	%GPR4,%GPR3,%GPR4	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$17	
		

	nop
	nop
	nop
	sw  0(%GPR5), %GPR4
	
	NOP		;;41,43
	NOP		;;41,43
	add	%GPR3,%GPR3,%GPR4	
	lw	%GPR5,-4(%GPR30)	
	NOP		;;44,46
	NOP		;;44,46
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$27	
		

	nop
	nop
	nop
	sw  0(%GPR5), %GPR4
	
	add	%GPR3,%GPR3,%GPR4	
	lw	%GPR5,-4(%GPR30)	
	lw	%GPR4,-8(%GPR30)	
		

	nop
	nop
	nop
	sw  0(%GPR5), %GPR4
	
	add	%GPR3,%GPR3,%GPR4	
	lw	%GPR5,-4(%GPR30)	
	lw	%GPR4,-12(%GPR30)	
		

	nop
	nop
	nop
	sw  0(%GPR5), %GPR4
	
	add	%GPR3,%GPR3,%GPR4	
	NOP		
	NOP		
	NOP		
L24:
	add	%GPR4,%GPR1,%GPR0	
	subi	%GPR1,%GPR1,$1	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$0	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sne	%GPR27,%GPR4,%GPR5	
	bnez	%GPR27,L25	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L26	
	NOP		
	NOP		
	NOP		
	NOP		
L25:
	lw	%GPR4,-24(%GPR30)	
	NOP		;;0,2
	NOP		;;0,2
	lw	%GPR5,-4(%GPR30)	
	NOP		;;2,4
	NOP		;;2,4
	add	%GPR7,%GPR4,%GPR0	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$4	
	lw	%GPR4,0(%GPR4)	
	NOP		;;6,9
	NOP		;;6,9
	NOP		;;6,9
	add	%GPR6,%GPR7,%GPR6	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	sw	-24(%GPR30),%GPR6	
		

	nop
	nop
	nop
	sw  0(%GPR5), %GPR4
	
	add	%GPR3,%GPR3,%GPR4	
	j	L24	
	NOP		
	NOP		
	NOP		
L26:
	add	%GPR4,%GPR2,%GPR0	
	subi	%GPR2,%GPR2,$1	
	NOP		;;2,4
	NOP		;;2,4
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
	sne	%GPR27,%GPR4,%GPR1	
	bnez	%GPR27,L27	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L28	
	NOP		
	NOP		
	NOP		
	NOP		
L27:
	lw	%GPR1,-28(%GPR30)	
	NOP		;;0,2
	NOP		;;0,2
	lw	%GPR5,-4(%GPR30)	
	NOP		;;2,4
	NOP		;;2,4
	add	%GPR6,%GPR1,%GPR0	
	lb	%GPR4,0(%GPR1)	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$1	
	NOP		;;6,10
	NOP		;;6,10
	NOP		;;6,10
	NOP		;;6,10
	add	%GPR1,%GPR6,%GPR1	
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	sw	-28(%GPR30),%GPR1	
		

	nop
	nop
	nop
	sw  0(%GPR5), %GPR4
	
	add	%GPR3,%GPR3,%GPR4	
	j	L26	
	NOP		
	NOP		
	NOP		
L28:
	lw	%GPR1,-4(%GPR30)	
		

	nop
	nop
	nop
	sw  0(%GPR1), %GPR3
	
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
	sne	%GPR27,%GPR28,%GPR1	
	bnez	%GPR27,L23	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L29	
	NOP		
	NOP		
	NOP		
	NOP		
L29:
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
	j	L30	
	NOP		
	NOP		
	NOP		
	NOP		
L30:
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
L31:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
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
	jal	strlen	
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
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$10000	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	wait	
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
	j	L32	
	NOP		
	NOP		
	NOP		
	NOP		
L32:
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
L33:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
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
t_enable:
L35:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
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
	bnez	%GPR27,L36	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L37	
	NOP		
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
	j	L38	
	NOP		
	NOP		
	NOP		
L37:
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
L38:
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
	j	L39	
	NOP		
	NOP		
	NOP		
	NOP		
L39:
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
t_saveCursorPosition:
L40:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
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
	ori	%GPR2,%GPR2,$83	
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
	j	L41	
	NOP		
	NOP		
	NOP		
	NOP		
L41:
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
t_restoreLastSavedCursorPositio:
L42:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
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
	ori	%GPR2,%GPR2,$82	
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
	j	L43	
	NOP		
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
g_print:
L44:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$28	
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-20(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
	NOP		;;2,4
	NOP		;;2,4
	subi	%GPR1,%GPR30,$16	
	NOP		;;4,6
	NOP		;;4,6
	sw	-16(%GPR30),%GPR2	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	subi	%GPR5,%GPR30,$16	
	srai	%GPR2,%GPR2,$8	
	NOP		;;9,11
	NOP		;;9,11
	add	%GPR1,%GPR1,%GPR4	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$8	
	subi	%GPR4,%GPR30,$16	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$12	
	sw	0(%GPR1),%GPR2	
	add	%GPR5,%GPR5,%GPR6	
	srai	%GPR1,%GPR3,$8	
	add	%GPR2,%GPR4,%GPR7	
	NOP		;;18,20
	NOP		;;18,20
	sw	0(%GPR5),%GPR3	
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	sw	0(%GPR2),%GPR1	
	lw	%GPR1,-20(%GPR30)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	strlen	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;26,31
	NOP		;;26,31
	NOP		;;26,31
	NOP		;;26,31
	NOP		;;26,31
	lw	%GPR4,-20(%GPR30)	
	addi	%GPR6,%GPR28,$1	
	subi	%GPR3,%GPR30,$16	
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
	ori	%GPR5,%GPR5,$4	
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
	NOP		;;38,43
	NOP		;;38,43
	NOP		;;38,43
	NOP		;;38,43
	NOP		;;38,43
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		;;43,47
	NOP		;;43,47
	NOP		;;43,47
	NOP		;;43,47
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
g_drawrect:
L46:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$40	
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
	subi	%GPR5,%GPR30,$32	
	NOP		;;4,6
	NOP		;;4,6
	sw	-32(%GPR30),%GPR1	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$4	
	srai	%GPR1,%GPR1,$8	
	subi	%GPR7,%GPR30,$32	
	lhi	%GPR8,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR8,%GPR8,$8	
	add	%GPR5,%GPR5,%GPR6	
	NOP		;;11,13
	NOP		;;11,13
	subi	%GPR6,%GPR30,$32	
	NOP		;;13,15
	NOP		;;13,15
	sw	0(%GPR5),%GPR1	
	add	%GPR1,%GPR7,%GPR8	
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$12	
	srai	%GPR7,%GPR2,$8	
	subi	%GPR5,%GPR30,$32	
	sw	0(%GPR1),%GPR2	
	add	%GPR2,%GPR6,%GPR9	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$16	
	NOP		;;22,24
	NOP		;;22,24
	subi	%GPR6,%GPR30,$32	
	sw	0(%GPR2),%GPR7	
	add	%GPR1,%GPR5,%GPR1	
	lhi	%GPR8,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR8,%GPR8,$20	
	NOP		;;27,29
	NOP		;;27,29
	srai	%GPR5,%GPR3,$8	
	sw	0(%GPR1),%GPR3	
	add	%GPR3,%GPR6,%GPR8	
	subi	%GPR2,%GPR30,$32	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$24	
	NOP		;;33,35
	NOP		;;33,35
	sw	0(%GPR3),%GPR5	
	subi	%GPR8,%GPR30,$32	
	add	%GPR10,%GPR2,%GPR1	
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$28	
	srai	%GPR11,%GPR4,$8	
	NOP		;;39,41
	NOP		;;39,41
	sw	0(%GPR10),%GPR4	
	NOP		;;41,46
	NOP		;;41,46
	NOP		;;41,46
	NOP		;;41,46
	NOP		;;41,46
	add	%GPR8,%GPR8,%GPR9	
	NOP		;;46,48
	NOP		;;46,48
	subi	%GPR3,%GPR30,$32	
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
	ori	%GPR5,%GPR5,$8	
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
	sw	0(%GPR8),%GPR11	
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
	NOP		;;56,61
	NOP		;;56,61
	NOP		;;56,61
	NOP		;;56,61
	NOP		;;56,61
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		;;61,65
	NOP		;;61,65
	NOP		;;61,65
	NOP		;;61,65
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
g_drawline:
L48:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$40	
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
	subi	%GPR5,%GPR30,$32	
	NOP		;;4,6
	NOP		;;4,6
	sw	-32(%GPR30),%GPR1	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$4	
	srai	%GPR1,%GPR1,$8	
	subi	%GPR7,%GPR30,$32	
	lhi	%GPR8,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR8,%GPR8,$8	
	add	%GPR5,%GPR5,%GPR6	
	NOP		;;11,13
	NOP		;;11,13
	subi	%GPR6,%GPR30,$32	
	NOP		;;13,15
	NOP		;;13,15
	sw	0(%GPR5),%GPR1	
	add	%GPR1,%GPR7,%GPR8	
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$12	
	srai	%GPR7,%GPR2,$8	
	subi	%GPR5,%GPR30,$32	
	sw	0(%GPR1),%GPR2	
	add	%GPR2,%GPR6,%GPR9	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$16	
	NOP		;;22,24
	NOP		;;22,24
	subi	%GPR6,%GPR30,$32	
	sw	0(%GPR2),%GPR7	
	add	%GPR1,%GPR5,%GPR1	
	lhi	%GPR8,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR8,%GPR8,$20	
	NOP		;;27,29
	NOP		;;27,29
	srai	%GPR5,%GPR3,$8	
	sw	0(%GPR1),%GPR3	
	add	%GPR3,%GPR6,%GPR8	
	subi	%GPR2,%GPR30,$32	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$24	
	NOP		;;33,35
	NOP		;;33,35
	sw	0(%GPR3),%GPR5	
	subi	%GPR8,%GPR30,$32	
	add	%GPR10,%GPR2,%GPR1	
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$28	
	srai	%GPR11,%GPR4,$8	
	NOP		;;39,41
	NOP		;;39,41
	sw	0(%GPR10),%GPR4	
	NOP		;;41,46
	NOP		;;41,46
	NOP		;;41,46
	NOP		;;41,46
	NOP		;;41,46
	add	%GPR8,%GPR8,%GPR9	
	NOP		;;46,48
	NOP		;;46,48
	subi	%GPR3,%GPR30,$32	
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
	ori	%GPR5,%GPR5,$8	
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
	sw	0(%GPR8),%GPR11	
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
	NOP		;;56,61
	NOP		;;56,61
	NOP		;;56,61
	NOP		;;56,61
	NOP		;;56,61
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		;;61,65
	NOP		;;61,65
	NOP		;;61,65
	NOP		;;61,65
	j	L49	
	NOP		
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
g_makebar:
L50:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$68	
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-56(%GPR30),%GPR7	
	sw	-60(%GPR30),%GPR10	
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
	bnez	%GPR27,L51	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L54	
	NOP		
	NOP		
	NOP		
	NOP		
L51:
	LI	%GPR7, *L1	
	NOP		;;0,2
	NOP		;;0,2
	subi	%GPR10,%GPR30,$52	
	NOP		;;2,4
	NOP		;;2,4
	lw	%GPR7,0(%GPR7)	
	lhi	%GPR11,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR11,%GPR11,$4	
	subi	%GPR12,%GPR30,$52	
	NOP		;;6,8
	NOP		;;6,8
	sw	-52(%GPR30),%GPR7	
	add	%GPR10,%GPR10,%GPR11	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$8	
	srai	%GPR11,%GPR1,$8	
	subi	%GPR13,%GPR30,$52	
	sw	0(%GPR10),%GPR1	
	add	%GPR7,%GPR12,%GPR7	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$12	
	NOP		;;15,17
	NOP		;;15,17
	subi	%GPR10,%GPR30,$52	
	sw	0(%GPR7),%GPR11	
	add	%GPR1,%GPR13,%GPR1	
	lhi	%GPR12,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR12,%GPR12,$16	
	NOP		;;20,22
	NOP		;;20,22
	srai	%GPR7,%GPR2,$8	
	sw	0(%GPR1),%GPR2	
	add	%GPR2,%GPR10,%GPR12	
	subi	%GPR11,%GPR30,$52	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$20	
	NOP		;;26,28
	NOP		;;26,28
	sw	0(%GPR2),%GPR7	
	subi	%GPR10,%GPR30,$52	
	add	%GPR1,%GPR11,%GPR1	
	NOP		;;30,32
	NOP		;;30,32
	lhi	%GPR12,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR12,%GPR12,$24	
	srai	%GPR2,%GPR3,$8	
	sw	0(%GPR1),%GPR3	
	subi	%GPR7,%GPR30,$52	
	add	%GPR3,%GPR10,%GPR12	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$28	
	NOP		;;37,39
	NOP		;;37,39
	subi	%GPR10,%GPR30,$52	
	sw	0(%GPR3),%GPR2	
	add	%GPR1,%GPR7,%GPR1	
	lhi	%GPR11,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR11,%GPR11,$32	
	NOP		;;42,44
	NOP		;;42,44
	srai	%GPR2,%GPR4,$8	
	sw	0(%GPR1),%GPR4	
	add	%GPR4,%GPR10,%GPR11	
	subi	%GPR3,%GPR30,$52	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$36	
	NOP		;;48,50
	NOP		;;48,50
	sw	0(%GPR4),%GPR2	
	subi	%GPR7,%GPR30,$52	
	add	%GPR1,%GPR3,%GPR1	
	lhi	%GPR10,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR10,%GPR10,$40	
	NOP		;;53,55
	NOP		;;53,55
	subi	%GPR2,%GPR30,$52	
	sw	0(%GPR1),%GPR5	
	add	%GPR1,%GPR7,%GPR10	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$44	
	NOP		;;58,60
	NOP		;;58,60
	subi	%GPR4,%GPR30,$52	
	sw	0(%GPR1),%GPR6	
	add	%GPR11,%GPR2,%GPR3	
	lhi	%GPR10,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR10,%GPR10,$48	
	NOP		;;63,67
	NOP		;;63,67
	NOP		;;63,67
	NOP		;;63,67
	add	%GPR10,%GPR4,%GPR10	
	NOP		;;67,70
	NOP		;;67,70
	NOP		;;67,70
	sw	0(%GPR11),%GPR8	
	NOP		;;70,72
	NOP		;;70,72
	subi	%GPR3,%GPR30,$52	
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
	ori	%GPR5,%GPR5,$13	
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
	NOP		;;80,82
	NOP		;;80,82
	lw	%GPR2,-60(%GPR30)	
	NOP		;;82,85
	NOP		;;82,85
	NOP		;;82,85
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;85,89
	NOP		;;85,89
	NOP		;;85,89
	NOP		;;85,89
	sne	%GPR27,%GPR2,%GPR1	
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
	subi	%GPR3,%GPR30,$52	
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
	sw	-52(%GPR30),%GPR8	
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
L53:
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
	subi	%GPR8,%GPR30,$52	
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
	sw	-52(%GPR30),%GPR1	
	lw	%GPR9,-56(%GPR30)	
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
	subi	%GPR3,%GPR30,$52	
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
	j	L55	
	NOP		
	NOP		
	NOP		
	NOP		
L54:
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
g_setbar:
L56:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
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
	j	L57	
	NOP		
	NOP		
	NOP		
	NOP		
L57:
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
L58:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$52	
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-44(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
	NOP		;;2,4
	NOP		;;2,4
	subi	%GPR1,%GPR30,$40	
	sw	-40(%GPR30),%GPR2	
	NOP		;;5,7
	NOP		;;5,7
	lhi	%GPR8,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR8,%GPR8,$4	
	srai	%GPR2,%GPR2,$8	
	subi	%GPR9,%GPR30,$40	
	lhi	%GPR10,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR10,%GPR10,$8	
	add	%GPR1,%GPR1,%GPR8	
	NOP		;;11,13
	NOP		;;11,13
	subi	%GPR8,%GPR30,$40	
	NOP		;;13,15
	NOP		;;13,15
	sw	0(%GPR1),%GPR2	
	add	%GPR1,%GPR9,%GPR10	
	lhi	%GPR11,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR11,%GPR11,$12	
	srai	%GPR9,%GPR3,$8	
	subi	%GPR2,%GPR30,$40	
	sw	0(%GPR1),%GPR3	
	add	%GPR3,%GPR8,%GPR11	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$16	
	NOP		;;22,24
	NOP		;;22,24
	subi	%GPR8,%GPR30,$40	
	sw	0(%GPR3),%GPR9	
	add	%GPR1,%GPR2,%GPR1	
	NOP		;;26,28
	NOP		;;26,28
	lhi	%GPR10,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR10,%GPR10,$20	
	srai	%GPR3,%GPR4,$8	
	sw	0(%GPR1),%GPR4	
	subi	%GPR2,%GPR30,$40	
	add	%GPR4,%GPR8,%GPR10	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$24	
	NOP		;;33,35
	NOP		;;33,35
	subi	%GPR8,%GPR30,$40	
	sw	0(%GPR4),%GPR3	
	add	%GPR1,%GPR2,%GPR1	
	NOP		;;37,39
	NOP		;;37,39
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$28	
	subi	%GPR2,%GPR30,$40	
	sw	0(%GPR1),%GPR5	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$32	
	srai	%GPR3,%GPR5,$8	
	add	%GPR4,%GPR8,%GPR9	
	NOP		;;44,46
	NOP		;;44,46
	add	%GPR1,%GPR2,%GPR1	
	subi	%GPR5,%GPR30,$40	
	sw	0(%GPR4),%GPR3	
	lhi	%GPR8,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR8,%GPR8,$36	
	NOP		;;49,52
	NOP		;;49,52
	NOP		;;49,52
	sw	0(%GPR1),%GPR6	
	add	%GPR2,%GPR5,%GPR8	
	lw	%GPR1,-44(%GPR30)	
	NOP		;;54,57
	NOP		;;54,57
	NOP		;;54,57
	sw	0(%GPR2),%GPR7	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	strlen	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;58,63
	NOP		;;58,63
	NOP		;;58,63
	NOP		;;58,63
	NOP		;;58,63
	lw	%GPR4,-44(%GPR30)	
	addi	%GPR6,%GPR28,$1	
	subi	%GPR3,%GPR30,$40	
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
	ori	%GPR5,%GPR5,$10	
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
	NOP		;;70,75
	NOP		;;70,75
	NOP		;;70,75
	NOP		;;70,75
	NOP		;;70,75
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		;;75,79
	NOP		;;75,79
	NOP		;;75,79
	NOP		;;75,79
	j	L59	
	NOP		
	NOP		
	NOP		
	NOP		
L59:
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
L60:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$60	
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-52(%GPR30),%GPR1	
	sw	-4(%GPR30),%GPR9	
	NOP		
	NOP		
	NOP		
	NOP		;;3,5
	NOP		;;3,5
	subi	%GPR1,%GPR30,$48	
	sw	-48(%GPR30),%GPR2	
	NOP		;;6,8
	NOP		;;6,8
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$4	
	srai	%GPR2,%GPR2,$8	
	subi	%GPR10,%GPR30,$48	
	lhi	%GPR11,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR11,%GPR11,$8	
	add	%GPR1,%GPR1,%GPR9	
	NOP		;;12,14
	NOP		;;12,14
	subi	%GPR9,%GPR30,$48	
	NOP		;;14,16
	NOP		;;14,16
	sw	0(%GPR1),%GPR2	
	add	%GPR1,%GPR10,%GPR11	
	lhi	%GPR12,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR12,%GPR12,$12	
	srai	%GPR10,%GPR3,$8	
	subi	%GPR2,%GPR30,$48	
	sw	0(%GPR1),%GPR3	
	add	%GPR3,%GPR9,%GPR12	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$16	
	NOP		;;23,25
	NOP		;;23,25
	subi	%GPR9,%GPR30,$48	
	sw	0(%GPR3),%GPR10	
	add	%GPR1,%GPR2,%GPR1	
	NOP		;;27,29
	NOP		;;27,29
	lhi	%GPR11,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR11,%GPR11,$20	
	srai	%GPR3,%GPR4,$8	
	sw	0(%GPR1),%GPR4	
	subi	%GPR2,%GPR30,$48	
	add	%GPR4,%GPR9,%GPR11	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$24	
	NOP		;;34,36
	NOP		;;34,36
	subi	%GPR9,%GPR30,$48	
	sw	0(%GPR4),%GPR3	
	add	%GPR1,%GPR2,%GPR1	
	NOP		;;38,40
	NOP		;;38,40
	lhi	%GPR10,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR10,%GPR10,$28	
	srai	%GPR3,%GPR5,$8	
	sw	0(%GPR1),%GPR5	
	subi	%GPR2,%GPR30,$48	
	add	%GPR4,%GPR9,%GPR10	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$32	
	NOP		;;45,48
	NOP		;;45,48
	NOP		;;45,48
	sw	0(%GPR4),%GPR3	
	add	%GPR1,%GPR2,%GPR1	
	subi	%GPR5,%GPR30,$48	
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$36	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$40	
	sw	0(%GPR1),%GPR6	
	subi	%GPR2,%GPR30,$48	
	add	%GPR4,%GPR5,%GPR9	
	NOP		;;55,58
	NOP		;;55,58
	NOP		;;55,58
	add	%GPR1,%GPR2,%GPR3	
	sw	0(%GPR4),%GPR7	
	NOP		;;59,63
	NOP		;;59,63
	NOP		;;59,63
	NOP		;;59,63
	sw	0(%GPR1),%GPR8	
	lw	%GPR1,-52(%GPR30)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	strlen	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;65,70
	NOP		;;65,70
	NOP		;;65,70
	NOP		;;65,70
	NOP		;;65,70
	lw	%GPR4,-52(%GPR30)	
	addi	%GPR6,%GPR28,$1	
	subi	%GPR3,%GPR30,$48	
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
	ori	%GPR5,%GPR5,$11	
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
	NOP		;;77,79
	NOP		;;77,79
	lw	%GPR1,-4(%GPR30)	
	NOP		;;79,82
	NOP		;;79,82
	NOP		;;79,82
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		;;82,86
	NOP		;;82,86
	NOP		;;82,86
	NOP		;;82,86
	sgt	%GPR27,%GPR1,%GPR2	
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
L62:
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
g_makeradiogroup:
L64:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
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
	j	L65	
	NOP		
	NOP		
	NOP		
	NOP		
L65:
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
L66:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
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
wait:
L68:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
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
L69:
	add	%GPR3,%GPR2,%GPR0	
	addi	%GPR2,%GPR2,$1	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	sne	%GPR27,%GPR3,%GPR1	
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
L70:
	subi	%GPR28,%GPR2,$1	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
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
getack:
L72:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$12	
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
	
	sw	-4(%GPR30),%GPR2	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	lw	%GPR3,-4(%GPR30)	
	lw	%GPR2,-4(%GPR30)	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
		

	nop
	nop
	nop
	sw  0(%GPR3), %GPR4
	
	addi	%GPR1,%GPR1,$1	
	lw	%GPR2,-4(%GPR30)	
		

	nop
	nop
	nop
	sw  0(%GPR2), %GPR1
	
	NOP		;;15,17
	NOP		;;15,17
	lw	%GPR1,-4(%GPR30)	
	NOP		;;17,20
	NOP		;;17,20
	NOP		;;17,20
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
	
	lw	%GPR1,-4(%GPR30)	
		

	nop
	nop
	nop
	lw  %GPR1,0(%GPR1)
	nop
	nop
	nop
	
	NOP		;;23,28
	NOP		;;23,28
	NOP		;;23,28
	NOP		;;23,28
	NOP		;;23,28
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$15	
	NOP		;;28,32
	NOP		;;28,32
	NOP		;;28,32
	NOP		;;28,32
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L73	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L74	
	NOP		
	NOP		
	NOP		
	NOP		
L73:
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
	j	L75	
	NOP		
	NOP		
	NOP		
	NOP		
L74:
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
	j	L75	
	NOP		
	NOP		
	NOP		
	NOP		
L75:
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
