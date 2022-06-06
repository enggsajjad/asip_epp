	.section	.data
L1:
	.data.8	48
	.data.8	120
	.space	1
	.section	.text
u_print:
L2:
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
		
 
	lhi	%GPR2, $0x100
	nop
	nop
	nop
	
	NOP		
	NOP		
	NOP		
L3:
	lb	%GPR3,0(%GPR1)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sne	%GPR27,%GPR3,%GPR4	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
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
	add	%GPR3,%GPR1,%GPR0	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lb	%GPR3,0(%GPR3)	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$1	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	sw	0(%GPR2),%GPR3	
	add	%GPR1,%GPR1,%GPR4	
	j	L3	
	NOP		
	NOP		
	NOP		
L5:
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
u_printInt:
L7:
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
	jal	u_print	
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
	j	L8	
	NOP		
	NOP		
	NOP		
	NOP		
L8:
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
u_printHex:
L9:
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
	LI	%GPR1, *L1	
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
	jal	u_print	
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
	jal	u_print	
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
u_getbytes:
L11:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$24	
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR30),%GPR1	
	sw	-8(%GPR30),%GPR2	
	NOP		
	NOP		
	NOP		
		
 
	lhi	%GPR1, $0x100
	nop
	nop
	nop
	
	NOP		;;4,6
	NOP		;;4,6
	sw	-12(%GPR30),%GPR1	
	NOP		;;6,9
	NOP		;;6,9
	NOP		;;6,9
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	sw	-16(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
L12:
	lw	%GPR1,-16(%GPR30)	
	lw	%GPR2,-8(%GPR30)	
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	slt	%GPR27,%GPR1,%GPR2	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
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
	lw	%GPR1,-4(%GPR30)	
	NOP		;;0,2
	NOP		;;0,2
	lw	%GPR2,-12(%GPR30)	
	NOP		;;2,4
	NOP		;;2,4
	add	%GPR4,%GPR1,%GPR0	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$1	
	lw	%GPR2,0(%GPR2)	
	NOP		;;6,9
	NOP		;;6,9
	NOP		;;6,9
	add	%GPR3,%GPR4,%GPR3	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	sw	-4(%GPR30),%GPR3	
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
	lw	%GPR1,-16(%GPR30)	
	NOP		;;15,19
	NOP		;;15,19
	NOP		;;15,19
	NOP		;;15,19
	addi	%GPR1,%GPR1,$1	
	NOP		;;19,23
	NOP		;;19,23
	NOP		;;19,23
	NOP		;;19,23
	sw	-16(%GPR30),%GPR1	
	j	L12	
	NOP		
	NOP		
	NOP		
L14:
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
	j	L15	
	NOP		
	NOP		
	NOP		
	NOP		
L15:
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
