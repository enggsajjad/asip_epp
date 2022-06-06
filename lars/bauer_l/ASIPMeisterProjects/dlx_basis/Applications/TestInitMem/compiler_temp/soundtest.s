	.section	.data
L1:
	.data.8	67
	.data.8	83
	.data.8	111
	.data.8	117
	.data.8	110
	.data.8	100
	.space	1
	.space	1
L2:
	.data.8	58
	.space	1
	.section	.text
soundtest:
L3:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$40	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;1,12
	NOP		;;1,12
	NOP		;;1,12
	NOP		;;1,12
	NOP		;;1,12
	NOP		;;1,12
	NOP		;;1,12
	NOP		;;1,12
	NOP		;;1,12
	NOP		;;1,12
	NOP		;;1,12
	lhi	%GPR10,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR10,%GPR10,$1	
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$1	
	lhi	%GPR8,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR8,%GPR8,$1	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$20	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$42	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$8	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$90	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$100	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$80	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$10	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	create_bar	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;22,33
	NOP		;;22,33
	NOP		;;22,33
	NOP		;;22,33
	NOP		;;22,33
	NOP		;;22,33
	NOP		;;22,33
	NOP		;;22,33
	NOP		;;22,33
	NOP		;;22,33
	NOP		;;22,33
	sw	-16(%GPR30),%GPR28	
	lhi	%GPR10,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR10,%GPR10,$1	
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$1	
	lhi	%GPR8,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR8,%GPR8,$1	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$20	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$42	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$8	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$90	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$210	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$80	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$120	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	create_bar	
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
	NOP		;;45,51
	NOP		;;45,51
	NOP		;;45,51
	NOP		;;45,51
	NOP		;;45,51
	NOP		;;45,51
	sw	-20(%GPR30),%GPR28	
	NOP		;;51,53
	NOP		;;51,53
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
	ori	%GPR5,%GPR5,$40	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$70	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$20	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$20	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	create_switch	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;58,69
	NOP		;;58,69
	NOP		;;58,69
	NOP		;;58,69
	NOP		;;58,69
	NOP		;;58,69
	NOP		;;58,69
	NOP		;;58,69
	NOP		;;58,69
	NOP		;;58,69
	NOP		;;58,69
	sw	-24(%GPR30),%GPR28	
	lhi	%GPR10,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR10,%GPR10,$0	
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$1	
	lhi	%GPR8,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR8,%GPR8,$1	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$0	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$100	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$0	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$110	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$111	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$100	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$10	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	create_bar	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-28(%GPR30),%GPR28	
	NOP		
	NOP		
	NOP		
L4:
		

  ; GET_COUNTER()
  lhi %GPR1, $(0x280DE80/0x10000)
  nop
  nop
  nop
  nop
  ori %GPR1, %GPR1, $(0x280DE80%0x10000)
  nop
  nop
  nop
  nop
  lw %GPR2, 0(%GPR1)
  nop
  nop
  nop
  nop
  	
	NOP		;;0,2
	NOP		;;0,2
	lw	%GPR5,-24(%GPR30)	
	LI	%GPR1, *_switches	
	NOP		;;3,5
	NOP		;;3,5
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$16	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$1	
	mult	%GPR3,%GPR5,%GPR3	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	add	%GPR1,%GPR1,%GPR3	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	lw	%GPR1,0(%GPR1)	
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	seq	%GPR27,%GPR1,%GPR4	
	bnez	%GPR27,L5	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L13	
	NOP		
	NOP		
	NOP		
	NOP		
L5:
	lw	%GPR6,-16(%GPR30)	
	NOP		;;1,3
	NOP		;;1,3
	LI	%GPR1, *_bars	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$8	
	LI	%GPR3, *_bars	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$8	
	NOP		;;6,8
	NOP		;;6,8
	mult	%GPR4,%GPR6,%GPR4	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	lw	%GPR6,-20(%GPR30)	
	add	%GPR1,%GPR1,%GPR4	
	NOP		;;13,16
	NOP		;;13,16
	NOP		;;13,16
	mult	%GPR5,%GPR6,%GPR5	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	add	%GPR4,%GPR3,%GPR5	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$0	
	lw	%GPR3,0(%GPR1)	
	NOP		;;22,24
	NOP		;;22,24
	lw	%GPR4,0(%GPR4)	
	NOP		;;24,28
	NOP		;;24,28
	NOP		;;24,28
	NOP		;;24,28
	seq	%GPR27,%GPR4,%GPR6	
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
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$1	
	NOP		
	NOP		
	NOP		
L7:
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
	NOP		
	NOP		
	NOP		
L8:
	slt	%GPR27,%GPR1,%GPR4	
	bnez	%GPR27,L9	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L13	
	NOP		
	NOP		
	NOP		
	NOP		
L9:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$0	
	NOP		
	NOP		
	NOP		
L10:
		

  ; SET_AUDIO(int value)
  lhi %GPR6, $(0x2625A04/0x10000)
  nop
  nop
  nop
  nop
  ori %GPR6, %GPR6, $(0x2625A04%0x10000)
  nop
  nop
  nop
  nop
  sw 0(%GPR6), %GPR5
  nop
  nop
  nop
  nop
  	
	NOP		;;0,2
	NOP		;;0,2
	add	%GPR5,%GPR5,%GPR3	
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$255	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	slt	%GPR27,%GPR5,%GPR6	
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
L11:
		

  ; SET_AUDIO(int value)
  lhi %GPR6, $(0x2625A04/0x10000)
  nop
  nop
  nop
  nop
  ori %GPR6, %GPR6, $(0x2625A04%0x10000)
  nop
  nop
  nop
  nop
  sw 0(%GPR6), %GPR5
  nop
  nop
  nop
  nop
  	
	NOP		;;0,2
	NOP		;;0,2
	sub	%GPR5,%GPR5,%GPR3	
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$0	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	sgt	%GPR27,%GPR5,%GPR6	
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
L12:
	addi	%GPR1,%GPR1,$1	
	j	L8	
	NOP		
	NOP		
	NOP		
L13:
		

  ; GET_COUNTER()
  lhi %GPR1, $(0x280DE80/0x10000)
  nop
  nop
  nop
  nop
  ori %GPR1, %GPR1, $(0x280DE80%0x10000)
  nop
  nop
  nop
  nop
  lw %GPR3, 0(%GPR1)
  nop
  nop
  nop
  nop
  	
	NOP		;;0,2
	NOP		;;0,2
	sub	%GPR2,%GPR3,%GPR2	
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
		

  ; SET_COUNTER()
  lhi %GPR4, $(0x280DE80/0x10000)
  nop
  nop
  nop
  nop
  ori %GPR4, %GPR4, $(0x280DE80%0x10000)
  nop
  nop
  nop
  nop
  sw 0(%GPR4), %GPR1
  nop
  nop
  nop
  nop
  	
	NOP		;;6,8
	NOP		;;6,8
	lw	%GPR1,-28(%GPR30)	
	NOP		;;8,11
	NOP		;;8,11
	NOP		;;8,11
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$100	
	addi	%GPR1,%GPR1,$1	
	NOP		;;12,15
	NOP		;;12,15
	NOP		;;12,15
	mult	%GPR2,%GPR2,%GPR4	
	NOP		;;15,19
	NOP		;;15,19
	NOP		;;15,19
	NOP		;;15,19
	div	%GPR2,%GPR2,%GPR3	
	NOP		;;19,23
	NOP		;;19,23
	NOP		;;19,23
	NOP		;;19,23
	sw	-32(%GPR30),%GPR2	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	g_setbar	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR1,-32(%GPR30)	
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
	NOP		;;27,30
	NOP		;;27,30
	NOP		;;27,30
	subi	%GPR1,%GPR30,$12	
	NOP		;;30,32
	NOP		;;30,32
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$120	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$70	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	g_print	
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
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	switchThread	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L4	
	NOP		
	NOP		
	NOP		
L14:
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
countertest:
L15:
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
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
L16:
	LI	%GPR1, *L2	
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
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
		

  ; GET_COUNTER()
  lhi %GPR1, $(0x280DE80/0x10000)
  nop
  nop
  nop
  nop
  ori %GPR1, %GPR1, $(0x280DE80%0x10000)
  nop
  nop
  nop
  nop
  lw %GPR1, 0(%GPR1)
  nop
  nop
  nop
  nop
  	
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
	NOP		;;8,11
	NOP		;;8,11
	NOP		;;8,11
	subi	%GPR1,%GPR30,$12	
	NOP		;;11,13
	NOP		;;11,13
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$50	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	g_print	
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
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	switchThread	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L16	
	NOP		
	NOP		
	NOP		
L17:
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
