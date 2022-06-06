	.section	.data
	;.global	_input1
	.align	4
_input1:
	.space	4
	.data.32	42
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
	.data.32	436
	.data.32	623
	.data.32	346
	.data.32	784
	.data.32	875
	.data.32	2346
	.data.32	2341
	.data.32	7
	.data.32	857
	.data.32	2
	.data.32	3246
	.data.32	786
	.data.32	97
	.data.32	234
	.data.32	78
	.data.32	96
	.data.32	5
	.data.32	1235
	.data.32	523
	.data.32	7635
	.data.32	76
	.data.32	89
	.data.32	7635
	.data.32	1346
	.data.32	76
	.data.32	87
	.data.32	976
	.data.32	37
	.data.32	31246
	.data.32	865
	.space	4
	;.global	_input2
	.align	4
_input2:
	.data.32	-1
	.data.32	42
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
	.data.32	2345
	.data.32	7645
	.data.32	756
	.data.32	4236
	.data.32	1235
	.data.32	64
	.data.32	3745
	.data.32	847
	.data.32	246
	.data.32	13465
	.data.32	573
	.data.32	86
	.data.32	975
	.data.32	3147
	.data.32	6583
	.data.32	2346
	.data.32	6835
	.data.32	856
	.data.32	342
	.data.32	134
	.data.32	8653
	.data.32	3416
	.data.32	856
	.data.32	974
	.data.32	745
	.data.32	123
	.data.32	368
	.data.32	3146
	.data.32	5683
	.data.32	569
	;.global	_resultHamming
	.align	4
_resultHamming:
	.space	200
	.section	.text
hammingDistance:
L1:
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
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	xor	%GPR2,%GPR1,%GPR2	
	NOP		;;5,7
	NOP		;;5,7
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		
	NOP		
	NOP		
L2:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$32	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	slt	%GPR27,%GPR1,%GPR3	
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
L3:
	andi	%GPR3,%GPR2,$1	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$1	
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
	j	L5	
	NOP		
	NOP		
	NOP		
	NOP		
L4:
	addi	%GPR28,%GPR28,$1	
	NOP		
	NOP		
	NOP		
L5:
	srli	%GPR2,%GPR2,$1	
	addi	%GPR1,%GPR1,$1	
	j	L2	
	NOP		
	NOP		
	NOP		
L6:
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
main:
L8:
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
	NOP		
	NOP		
	NOP		
	NOP		;;1,6
	NOP		;;1,6
	NOP		;;1,6
	NOP		;;1,6
	NOP		;;1,6
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;6,10
	NOP		;;6,10
	NOP		;;6,10
	NOP		;;6,10
	sw	-4(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
L9:
	NOP		;;0,2
	NOP		;;0,2
	lw	%GPR6,-4(%GPR30)	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$4	
	add	%GPR7,%GPR6,%GPR0	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$4	
	mult	%GPR2,%GPR6,%GPR2	
	mult	%GPR3,%GPR6,%GPR3	
	LI	%GPR1, *_input2	
	mult	%GPR5,%GPR7,%GPR5	
	LI	%GPR4, *_input1	
	LI	%GPR6, *_resultHamming	
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;14,16
	NOP		;;14,16
	add	%GPR3,%GPR4,%GPR3	
	add	%GPR2,%GPR6,%GPR5	
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	sw	-8(%GPR30),%GPR2	
	lw	%GPR2,0(%GPR1)	
	lw	%GPR1,0(%GPR3)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	hammingDistance	
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
	add	%GPR2,%GPR28,%GPR0	
	NOP		;;26,29
	NOP		;;26,29
	NOP		;;26,29
	addi	%GPR1,%GPR1,$1	
	NOP		;;29,33
	NOP		;;29,33
	NOP		;;29,33
	NOP		;;29,33
	sw	-4(%GPR30),%GPR1	
	lw	%GPR1,-8(%GPR30)	
	NOP		;;34,38
	NOP		;;34,38
	NOP		;;34,38
	NOP		;;34,38
	sw	0(%GPR1),%GPR2	
	lw	%GPR2,-4(%GPR30)	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$50	
	NOP		;;40,44
	NOP		;;40,44
	NOP		;;40,44
	NOP		;;40,44
	slt	%GPR27,%GPR2,%GPR1	
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
L10:
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
	j	L11	
	NOP		
	NOP		
	NOP		
	NOP		
L11:
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