	.section	.data
	;.global	_input1
	.align	4
_input1:
	.data.32	321
	.data.32	51
	.data.32	890345
	.data.32	75
	.data.32	78
	.data.32	7
	.data.32	34478651
	.data.32	2342
	.data.32	568
	.data.32	7894578
	.data.32	7
	.data.32	3461
	.data.32	1235
	.data.32	3467753
	.data.32	75
	.data.32	685
	.data.32	79
	.data.32	45568564
	.data.32	35
	.data.32	7625
	;.global	_input2
	.align	4
_input2:
	.data.32	45
	.data.32	765
	.data.32	12
	.data.32	78
	.data.32	74
	.data.32	42
	.data.32	1253
	.data.32	236377
	.data.32	5683
	.data.32	79
	.data.32	86
	.data.32	643
	.data.32	52314576
	.data.32	3461
	.data.32	57
	.data.32	785
	.data.32	79
	.data.32	47
	.data.32	3461
	.data.32	2513
	;.global	_resultAvg
	.align	4
_resultAvg:
	.space	80
	;.global	_resultSwap
	.align	4
_resultSwap:
	.space	80
	;.global	_resultMax
	.align	4
_resultMax:
	.space	80
	;.global	_resultMin
	.align	4
_resultMin:
	.space	80
	;.global	_resultRor
	.align	4
_resultRor:
	.space	80
L1:
	.data.8	105
	.data.8	49
	.data.8	58
	.data.8	9
	.space	1
L2:
	.data.8	9
	.data.8	105
	.data.8	50
	.data.8	58
	.data.8	9
	.space	1
L3:
	.data.8	9
	.data.8	97
	.data.8	118
	.data.8	103
	.data.8	58
	.data.8	9
	.space	1
L4:
	.data.8	9
	.data.8	115
	.data.8	119
	.data.8	97
	.data.8	112
	.data.8	58
	.data.8	9
	.space	1
L5:
	.data.8	9
	.data.8	109
	.data.8	97
	.data.8	120
	.data.8	58
	.data.8	9
	.space	1
L6:
	.data.8	9
	.data.8	109
	.data.8	105
	.data.8	110
	.data.8	58
	.data.8	9
	.space	1
L7:
	.data.8	9
	.data.8	114
	.data.8	111
	.data.8	114
	.data.8	58
	.data.8	9
	.space	1
L8:
	.data.8	13
	.data.8	10
	.space	1
	.section	.text
main:
L9:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$72	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;1,3
	NOP		;;1,3
	LI	%GPR2, *_input1	
	LI	%GPR4, *_input2	
	LI	%GPR3, *_resultAvg	
	LI	%GPR5, *_resultMin	
	LI	%GPR6, *_resultMax	
	LI	%GPR7, *_resultSwap	
	LI	%GPR8, *_resultRor	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;10,13
	NOP		;;10,13
	NOP		;;10,13
	NOP		
	NOP		
	NOP		
L10:
	slli	%GPR10,%GPR1,$2	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	add	%GPR9,%GPR4,%GPR10	
	add	%GPR11,%GPR2,%GPR10	
	lhi	%GPR12,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR12,%GPR12,$0	
	NOP		;;6,8
	NOP		;;6,8
	lw	%GPR13,0(%GPR9)	
	lw	%GPR9,0(%GPR11)	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	add	%GPR11,%GPR9,%GPR13	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	slt	%GPR27,%GPR11,%GPR12	
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
	addi	%GPR11,%GPR11,$1	
	NOP		
	NOP		
	NOP		
L12:
		
  
    nop
    nop
    nop
    swap      %GPR13, %GPR9
    nop
    nop
    nop
	
	NOP		;;0,3
	NOP		;;0,3
	NOP		;;0,3
	add	%GPR9,%GPR7,%GPR0	
	add	%GPR12,%GPR3,%GPR10	
	srai	%GPR11,%GPR11,$1	
	NOP		;;5,7
	NOP		;;5,7
	add	%GPR10,%GPR9,%GPR10	
	slli	%GPR9,%GPR1,$2	
	sw	0(%GPR12),%GPR11	
	slli	%GPR12,%GPR1,$2	
	NOP		;;10,12
	NOP		;;10,12
	add	%GPR14,%GPR2,%GPR9	
	sw	0(%GPR10),%GPR13	
	add	%GPR9,%GPR4,%GPR9	
	add	%GPR11,%GPR5,%GPR12	
	add	%GPR13,%GPR6,%GPR12	
	lw	%GPR10,0(%GPR14)	
	lw	%GPR9,0(%GPR9)	
	sw	0(%GPR11),%GPR1	
		
  
    nop
    nop
    nop
    minMax      %GPR9, %GPR10, %GPR10, %GPR9
    nop
    nop
    nop
	
	add	%GPR15,%GPR8,%GPR0	
	add	%GPR14,%GPR2,%GPR12	
	sw	0(%GPR11),%GPR9	
	NOP		;;23,25
	NOP		;;23,25
	addi	%GPR1,%GPR1,$1	
	add	%GPR12,%GPR15,%GPR12	
	sw	0(%GPR13),%GPR10	
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$20	
	lhi	%GPR11,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR11,%GPR11,$4	
	sw	-4(%GPR30),%GPR7	
	lw	%GPR10,0(%GPR14)	
		
  
    nop
    nop
    nop
    rot      %GPR10, %GPR10, $4
    nop
    nop
    nop
	
	sw	-8(%GPR30),%GPR8	
	sw	0(%GPR12),%GPR10	
	slt	%GPR27,%GPR1,%GPR9	
	bnez	%GPR27,L10	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L13	
	NOP		
	NOP		
	NOP		
	NOP		
L13:
	LI	%GPR1, *L1	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	sw	-12(%GPR30),%GPR1	
	LI	%GPR1, *_input1	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	sw	-16(%GPR30),%GPR1	
	LI	%GPR1, *L2	
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	sw	-20(%GPR30),%GPR1	
	LI	%GPR1, *_input2	
	NOP		;;15,19
	NOP		;;15,19
	NOP		;;15,19
	NOP		;;15,19
	sw	-24(%GPR30),%GPR1	
	LI	%GPR1, *L3	
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	sw	-28(%GPR30),%GPR1	
	LI	%GPR1, *_resultAvg	
	NOP		;;25,29
	NOP		;;25,29
	NOP		;;25,29
	NOP		;;25,29
	sw	-32(%GPR30),%GPR1	
	LI	%GPR1, *L4	
	NOP		;;30,34
	NOP		;;30,34
	NOP		;;30,34
	NOP		;;30,34
	sw	-36(%GPR30),%GPR1	
	LI	%GPR1, *L5	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	sw	-40(%GPR30),%GPR1	
	LI	%GPR1, *_resultMax	
	NOP		;;40,44
	NOP		;;40,44
	NOP		;;40,44
	NOP		;;40,44
	sw	-44(%GPR30),%GPR1	
	LI	%GPR1, *L6	
	NOP		;;45,49
	NOP		;;45,49
	NOP		;;45,49
	NOP		;;45,49
	sw	-48(%GPR30),%GPR1	
	LI	%GPR1, *_resultMin	
	NOP		;;50,54
	NOP		;;50,54
	NOP		;;50,54
	NOP		;;50,54
	sw	-52(%GPR30),%GPR1	
	LI	%GPR1, *L7	
	NOP		;;55,59
	NOP		;;55,59
	NOP		;;55,59
	NOP		;;55,59
	sw	-56(%GPR30),%GPR1	
	LI	%GPR1, *L8	
	NOP		;;60,64
	NOP		;;60,64
	NOP		;;60,64
	NOP		;;60,64
	sw	-60(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;65,69
	NOP		;;65,69
	NOP		;;65,69
	NOP		;;65,69
	sw	-64(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
L14:
	lw	%GPR1,-12(%GPR30)	
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
	lw	%GPR1,-64(%GPR30)	
	lw	%GPR2,-16(%GPR30)	
	NOP		;;7,10
	NOP		;;7,10
	NOP		;;7,10
	slli	%GPR1,%GPR1,$2	
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	add	%GPR1,%GPR2,%GPR1	
	NOP		;;14,18
	NOP		;;14,18
	NOP		;;14,18
	NOP		;;14,18
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
	jal	t_printInt	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR1,-20(%GPR30)	
	NOP		;;20,25
	NOP		;;20,25
	NOP		;;20,25
	NOP		;;20,25
	NOP		;;20,25
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
	lw	%GPR1,-64(%GPR30)	
	lw	%GPR2,-24(%GPR30)	
	NOP		;;27,30
	NOP		;;27,30
	NOP		;;27,30
	slli	%GPR1,%GPR1,$2	
	NOP		;;30,34
	NOP		;;30,34
	NOP		;;30,34
	NOP		;;30,34
	add	%GPR1,%GPR2,%GPR1	
	NOP		;;34,38
	NOP		;;34,38
	NOP		;;34,38
	NOP		;;34,38
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
	jal	t_printInt	
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
	NOP		;;40,45
	NOP		;;40,45
	NOP		;;40,45
	NOP		;;40,45
	NOP		;;40,45
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
	lw	%GPR1,-64(%GPR30)	
	lw	%GPR2,-32(%GPR30)	
	NOP		;;47,50
	NOP		;;47,50
	NOP		;;47,50
	slli	%GPR1,%GPR1,$2	
	NOP		;;50,54
	NOP		;;50,54
	NOP		;;50,54
	NOP		;;50,54
	add	%GPR1,%GPR2,%GPR1	
	NOP		;;54,58
	NOP		;;54,58
	NOP		;;54,58
	NOP		;;54,58
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
	jal	t_printInt	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR1,-36(%GPR30)	
	NOP		;;60,65
	NOP		;;60,65
	NOP		;;60,65
	NOP		;;60,65
	NOP		;;60,65
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
	lw	%GPR1,-64(%GPR30)	
	lw	%GPR2,-4(%GPR30)	
	NOP		;;67,70
	NOP		;;67,70
	NOP		;;67,70
	slli	%GPR1,%GPR1,$2	
	NOP		;;70,74
	NOP		;;70,74
	NOP		;;70,74
	NOP		;;70,74
	add	%GPR1,%GPR2,%GPR1	
	NOP		;;74,78
	NOP		;;74,78
	NOP		;;74,78
	NOP		;;74,78
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
	jal	t_printInt	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR1,-40(%GPR30)	
	NOP		;;80,85
	NOP		;;80,85
	NOP		;;80,85
	NOP		;;80,85
	NOP		;;80,85
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
	lw	%GPR1,-64(%GPR30)	
	lw	%GPR2,-44(%GPR30)	
	NOP		;;87,90
	NOP		;;87,90
	NOP		;;87,90
	slli	%GPR1,%GPR1,$2	
	NOP		;;90,94
	NOP		;;90,94
	NOP		;;90,94
	NOP		;;90,94
	add	%GPR1,%GPR2,%GPR1	
	NOP		;;94,98
	NOP		;;94,98
	NOP		;;94,98
	NOP		;;94,98
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
	jal	t_printInt	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR1,-48(%GPR30)	
	NOP		;;100,105
	NOP		;;100,105
	NOP		;;100,105
	NOP		;;100,105
	NOP		;;100,105
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
	lw	%GPR1,-64(%GPR30)	
	lw	%GPR2,-52(%GPR30)	
	NOP		;;107,110
	NOP		;;107,110
	NOP		;;107,110
	slli	%GPR1,%GPR1,$2	
	NOP		;;110,114
	NOP		;;110,114
	NOP		;;110,114
	NOP		;;110,114
	add	%GPR1,%GPR2,%GPR1	
	NOP		;;114,118
	NOP		;;114,118
	NOP		;;114,118
	NOP		;;114,118
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
	jal	t_printInt	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR1,-56(%GPR30)	
	NOP		;;120,125
	NOP		;;120,125
	NOP		;;120,125
	NOP		;;120,125
	NOP		;;120,125
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
	lw	%GPR1,-64(%GPR30)	
	lw	%GPR2,-8(%GPR30)	
	NOP		;;127,130
	NOP		;;127,130
	NOP		;;127,130
	slli	%GPR1,%GPR1,$2	
	NOP		;;130,134
	NOP		;;130,134
	NOP		;;130,134
	NOP		;;130,134
	add	%GPR1,%GPR2,%GPR1	
	NOP		;;134,138
	NOP		;;134,138
	NOP		;;134,138
	NOP		;;134,138
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
	jal	t_printInt	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR1,-60(%GPR30)	
	NOP		;;140,145
	NOP		;;140,145
	NOP		;;140,145
	NOP		;;140,145
	NOP		;;140,145
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
	lw	%GPR1,-64(%GPR30)	
	NOP		;;146,150
	NOP		;;146,150
	NOP		;;146,150
	NOP		;;146,150
	addi	%GPR1,%GPR1,$1	
	NOP		;;150,154
	NOP		;;150,154
	NOP		;;150,154
	NOP		;;150,154
	add	%GPR2,%GPR1,%GPR0	
	sw	-64(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$20	
	NOP		;;156,160
	NOP		;;156,160
	NOP		;;156,160
	NOP		;;156,160
	slt	%GPR27,%GPR2,%GPR1	
	bnez	%GPR27,L14	
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
