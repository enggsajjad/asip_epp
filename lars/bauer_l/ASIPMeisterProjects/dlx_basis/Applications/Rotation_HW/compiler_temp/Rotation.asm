	.section	.data
	;.global	_sinusLUT
	.align	4
_sinusLUT:
	.space	4
	.data.32	1144
	.data.32	2287
	.data.32	3430
	.data.32	4572
	.data.32	5712
	.data.32	6850
	.data.32	7987
	.data.32	9121
	.data.32	10252
	.data.32	11380
	.data.32	12505
	.data.32	13626
	.data.32	14742
	.data.32	15855
	.data.32	16962
	.data.32	18064
	.data.32	19161
	.data.32	20252
	.data.32	21336
	;.global	_cosinusLUT
	.align	4
_cosinusLUT:
	.data.32	65536
	.data.32	65526
	.data.32	65496
	.data.32	65446
	.data.32	65376
	.data.32	65287
	.data.32	65177
	.data.32	65048
	.data.32	64898
	.data.32	64729
	.data.32	64540
	.data.32	64332
	.data.32	64104
	.data.32	63856
	.data.32	63589
	.data.32	63303
	.data.32	62997
	.data.32	62672
	.data.32	62328
	.data.32	61966
	.align	4
L1:
	.space	12
L2:
	.data.8	40
	.space	1
L3:
	.data.8	44
	.space	1
L4:
	.data.8	41
	.space	1
	;.global	_bargraphValue
	.align	4
_bargraphValue:
	.space	4
L5:
	.data.8	65
	.space	1
L6:
	.data.8	78
	.space	1
L7:
	.data.8	66
	.space	1
	.section	.text
	.addressing	Word
sin:
L8:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	nop
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 70 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L10	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L9	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L9:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$80	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sgt	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L10	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L11	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L10:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	j	L12	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L11:
	nop
	nop
	nop
	nop
	lhi	%GPR3,$( _sinusLUT	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$( _sinusLUT	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	mult	%GPR1,%GPR1,%GPR4	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR3,%GPR1	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR28,0(%GPR1)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L12	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L12:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	jr	%GPR31	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
cos:
L13:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	nop
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 70 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L15	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L14	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L14:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$80	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sgt	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L15	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L16	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L15:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	j	L17	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L16:
	nop
	nop
	nop
	nop
	lhi	%GPR3,$( _cosinusLUT	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$( _cosinusLUT	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	mult	%GPR1,%GPR1,%GPR4	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR3,%GPR1	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR28,0(%GPR1)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L17	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L17:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	jr	%GPR31	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
rotate:
L18:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	nop
	subi	%GPR29,%GPR29,$28	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	sw	-8(%GPR30),%GPR3	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	nop
	lw	%GPR3,0(%GPR2)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sub	%GPR1,%GPR3,%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	sw	-12(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lw	%GPR1,-4(%GPR30)	
	nop
	nop
	nop
	nop
	add	%GPR2,%GPR2,%GPR5	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR4	
	nop
	nop
	nop
	nop
	lw	%GPR2,0(%GPR2)	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sub	%GPR1,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lw	%GPR1,-8(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	sin	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-8(%GPR30)	
	nop
	nop
	nop
	nop
	sw	-20(%GPR30),%GPR28	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	cos	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR1,-20(%GPR30)	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$( L1	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$( L1	%0x10000)
	nop
	nop
	nop
	nop
	lhi	%GPR4,$( L1	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$( L1	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	mult	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$( L1	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$( L1	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR2,-12(%GPR30)	
	nop
	nop
	nop
	nop
	lhi	%GPR6,$( L1	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$( L1	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	mult	%GPR2,%GPR28,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sub	%GPR1,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$( L1	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$( L1	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$( L1	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L1	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR3,0(%GPR4)	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	srai	%GPR3,%GPR3,$16	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	0(%GPR5),%GPR3	
	nop
	nop
	nop
	nop
	lw	%GPR3,-4(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR2)	
	nop
	nop
	nop
	nop
	lw	%GPR3,0(%GPR3)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR2,%GPR3	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	0(%GPR6),%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR1,%GPR4	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L19	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L20	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L19:
	nop
	nop
	nop
	nop
	lhi	%GPR1,$( L1	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L1	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
L20:
	nop
	nop
	nop
	nop
	lhi	%GPR1,$( L1	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L1	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$320	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sgt	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L21	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L22	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L21:
	nop
	nop
	nop
	nop
	lhi	%GPR1,$( L1	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L1	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$320	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
L22:
	nop
	nop
	nop
	nop
	lw	%GPR1,-20(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR2,-12(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$( L1	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$( L1	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	mult	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$( L1	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$( L1	%0x10000)
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$4	
	nop
	nop
	nop
	nop
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop
	add	%GPR3,%GPR3,%GPR5	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	mult	%GPR2,%GPR28,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	add	%GPR2,%GPR4,%GPR6	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$( L1	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$( L1	%0x10000)
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$4	
	nop
	nop
	nop
	nop
	sw	0(%GPR3),%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$( L1	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$( L1	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR2)	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR4,%GPR1	
	nop
	nop
	nop
	nop
	lw	%GPR4,-4(%GPR30)	
	nop
	nop
	nop
	nop
	add	%GPR3,%GPR3,%GPR5	
	nop
	nop
	nop
	nop
	srai	%GPR2,%GPR2,$16	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$( L1	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$( L1	%0x10000)
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR4,%GPR6	
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$4	
	nop
	nop
	nop
	nop
	sw	0(%GPR1),%GPR2	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$( L1	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L1	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lw	%GPR3,0(%GPR3)	
	nop
	nop
	nop
	nop
	lw	%GPR4,0(%GPR4)	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR3,%GPR4	
	nop
	nop
	nop
	nop
	add	%GPR3,%GPR5,%GPR6	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR3)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L23	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L24	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L23:
	nop
	nop
	nop
	nop
	lhi	%GPR1,$( L1	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L1	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR3	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
L24:
	nop
	nop
	nop
	nop
	lhi	%GPR1,$( L1	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L1	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$240	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sgt	%GPR27,%GPR1,%GPR3	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L25	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L26	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L25:
	nop
	nop
	nop
	nop
	lhi	%GPR1,$( L1	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L1	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$240	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR3	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
L26:
	nop
	nop
	nop
	nop
	lhi	%GPR1,$( L1	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L1	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$( L1	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$( L1	%0x10000)
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$8	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$1	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR3	
	nop
	nop
	nop
	nop
	j	L27	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L27:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	jr	%GPR31	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
printCoordinates:
L28:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	nop
	subi	%GPR29,%GPR29,$32	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-24(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L2	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L2	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 45 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-24(%GPR30)	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$20	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	intToStr	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR1,%GPR30,$20	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L3	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L3	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 45 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 30 NOPs removed by reduceNOPs.sh
	lw	%GPR3,-24(%GPR30)	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$20	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR3,%GPR1	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	intToStr	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR1,%GPR30,$20	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L4	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L4	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 45 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 45 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L29	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L29:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	jr	%GPR31	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
drawRectangle:
L30:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	nop
	subi	%GPR29,%GPR29,$24	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	sw	-8(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	sw	-12(%GPR30),%GPR3	
	nop
	nop
	nop
	nop
	sw	-16(%GPR30),%GPR4	
	nop
	nop
	nop
	nop
				; Automatically 25 NOPs removed by reduceNOPs.sh
	lw	%GPR3,0(%GPR2)	
	nop
	nop
	nop
	nop
	add	%GPR5,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	nop
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop
	nop
	nop
	nop
	add	%GPR2,%GPR5,%GPR2	
	nop
	nop
	nop
	nop
	lw	%GPR5,-8(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR2)	
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR5,%GPR4	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR4,0(%GPR4)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	g_drawline	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR2,-12(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR1,-8(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR3,0(%GPR2)	
	nop
	nop
	nop
	nop
	add	%GPR5,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop
	nop
	nop
	nop
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR5,%GPR2	
	nop
	nop
	nop
	nop
	lw	%GPR5,-12(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR2)	
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR5,%GPR4	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR4,0(%GPR4)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	g_drawline	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR1,-12(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR3,0(%GPR2)	
	nop
	nop
	nop
	nop
	add	%GPR5,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop
	nop
	nop
	nop
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR5,%GPR2	
	nop
	nop
	nop
	nop
	lw	%GPR5,-16(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR2)	
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR5,%GPR4	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR4,0(%GPR4)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	g_drawline	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR2,-4(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR1,-16(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR3,0(%GPR2)	
	nop
	nop
	nop
	nop
	add	%GPR5,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop
	nop
	nop
	nop
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR5,%GPR2	
	nop
	nop
	nop
	nop
	lw	%GPR5,-4(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR2)	
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR5,%GPR4	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR4,0(%GPR4)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	g_drawline	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 45 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L31	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L31:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	jr	%GPR31	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
copyPoint:
L32:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	nop
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 55 NOPs removed by reduceNOPs.sh
	lw	%GPR3,0(%GPR1)	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop
	nop
	nop
	nop
	sw	0(%GPR2),%GPR3	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$4	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR4,%GPR1,%GPR4	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$8	
	nop
	nop
	nop
	nop
	add	%GPR3,%GPR2,%GPR3	
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$8	
	nop
	nop
	nop
	nop
	lw	%GPR4,0(%GPR4)	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR1,%GPR5	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR2,%GPR6	
	nop
	nop
	nop
	nop
	sw	0(%GPR3),%GPR4	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	0(%GPR2),%GPR1	
	nop
	nop
	nop
	nop
	j	L33	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L33:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	jr	%GPR31	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
overwriteRectangle:
L34:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	nop
	subi	%GPR29,%GPR29,$28	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-8(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	sw	-12(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	sw	-16(%GPR30),%GPR3	
	nop
	nop
	nop
	nop
	sw	-20(%GPR30),%GPR4	
	nop
	nop
	nop
	nop
				; Automatically 50 NOPs removed by reduceNOPs.sh
	lhi	%GPR8,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$2	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$4	
	nop
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$86	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$71	
	nop
	nop
	nop
	nop
	sw	-4(%GPR30),%GPR8	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-8(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR2,-12(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR3,-16(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR4,-20(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	drawRectangle	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 55 NOPs removed by reduceNOPs.sh
	lhi	%GPR8,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$1	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$4	
	nop
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$86	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$71	
	nop
	nop
	nop
	nop
	sw	-4(%GPR30),%GPR8	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 45 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L35	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L35:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	jr	%GPR31	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
delete:
L36:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	nop
	subi	%GPR29,%GPR29,$40	
	nop
	nop
	nop
	nop
				; Automatically 50 NOPs removed by reduceNOPs.sh
	subi	%GPR1,%GPR30,$32	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$30	
	nop
	nop
	nop
	nop
	sw	-32(%GPR30),%GPR3	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	subi	%GPR4,%GPR30,$32	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$8	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR5	
	nop
	nop
	nop
	nop
	add	%GPR3,%GPR4,%GPR3	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$32	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$12	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR5	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$30	
	nop
	nop
	nop
	nop
	subi	%GPR4,%GPR30,$32	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$16	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR5	
	nop
	nop
	nop
	nop
	add	%GPR3,%GPR4,%GPR3	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$32	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$20	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR5	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
	subi	%GPR4,%GPR30,$32	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$120	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$24	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR5	
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR4,%GPR3	
	nop
	nop
	nop
	nop
	subi	%GPR8,%GPR30,$32	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR10,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$0	
	nop
	nop
	nop
	nop
	lhi	%GPR9,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$28	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4),%GPR10	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR11,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR11,%GPR11,$120	
	nop
	nop
	nop
	nop
	add	%GPR8,%GPR8,%GPR9	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$32	
	nop
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$111	
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$8	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$76	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$82	
	nop
	nop
	nop
	nop
	sw	0(%GPR8),%GPR11	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	sendcommand	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 35 NOPs removed by reduceNOPs.sh
L37:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	jr	%GPR31	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
pollDisplay:
L38:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	nop
	subi	%GPR29,%GPR29,$32	
	nop
	nop
	nop
	nop
				; Automatically 60 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	checkbuffer	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 30 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR28,%GPR0	
	nop
	nop
	nop
	nop
	sw	-20(%GPR30),%GPR28	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$3	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sgt	%GPR27,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L39	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L61	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L39:
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$12	
	nop
	nop
	nop
	nop
	lw	%GPR2,-20(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	getbytes	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR2,-20(%GPR30)	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR28,%GPR0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L40	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L41	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L40:
	nop
	nop
	nop
	nop
	add	%GPR28,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L62	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L41:
	nop
	nop
	nop
	nop
	lw	%GPR1,-16(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR2,-20(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L42	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L61	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L42:
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$12	
	nop
	nop
	nop
	nop
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 45 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	loadByteUnsigned	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR28,%GPR0	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	addi	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$27	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L43	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L55	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L43:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$1	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L62	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L44:
	nop
	nop
	nop
	nop
	lhi	%GPR1,$( L5	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L5	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 25 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$120	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	g_print	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR1,%GPR30,$12	
	nop
	nop
	nop
	nop
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 45 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	loadByteUnsigned	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR28,%GPR0	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	addi	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L45	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L46	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L45:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$3	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L62	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L46:
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$12	
	nop
	nop
	nop
	nop
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 45 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	loadByteUnsigned	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR28,%GPR0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-16(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
L47:
	nop
	nop
	nop
	nop
	lw	%GPR1,-20(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sgt	%GPR27,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L48	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L41	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L48:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$5	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L62	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L49:
	nop
	nop
	nop
	nop
	lhi	%GPR1,$( L6	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L6	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 25 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$120	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	g_print	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR1,%GPR30,$12	
	nop
	nop
	nop
	nop
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 45 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	loadByteUnsigned	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR28,%GPR0	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	addi	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L50	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L51	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L50:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$3	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L62	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L51:
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$12	
	nop
	nop
	nop
	nop
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 45 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	loadByteUnsigned	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR28,%GPR0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-16(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	j	L47	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
L52:
	nop
	nop
	nop
	nop
	lhi	%GPR1,$( L7	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$( L7	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 25 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$120	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	g_print	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR1,%GPR30,$12	
	nop
	nop
	nop
	nop
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 45 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	loadByteUnsigned	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR28,%GPR0	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	addi	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$2	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L53	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L54	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L53:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$3	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L62	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L54:
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$12	
	nop
	nop
	nop
	nop
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 45 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	loadByteUnsigned	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR28,%GPR0	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	addi	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$12	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$( _bargraphValue	/0x10000)
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$( _bargraphValue	%0x10000)
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-24(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 45 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	loadByteUnsigned	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR1,-16(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lw	%GPR1,-24(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR28	
	nop
	nop
	nop
	nop
	j	L47	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
L55:
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$12	
	nop
	nop
	nop
	nop
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 45 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	loadByteUnsigned	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR2,-16(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR28,%GPR0	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	addi	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$65	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L44	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L56	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L56:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$66	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L52	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L57	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L57:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$72	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L47	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L58	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L58:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$78	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L49	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L59	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L59:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$84	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	seq	%GPR27,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	bnez	%GPR27,L47	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L60	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L60:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$2	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L62	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L61:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L62	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
L62:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	jr	%GPR31	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
main:
L63:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	nop
	subi	%GPR29,%GPR29,$132	
	nop
	nop
	nop
	nop
				; Automatically 50 NOPs removed by reduceNOPs.sh
	subi	%GPR1,%GPR30,$12	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$80	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR4,%GPR30,$12	
	nop
	nop
	nop
	nop
	sw	-12(%GPR30),%GPR3	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$80	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$8	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR3	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR4,%GPR5	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$24	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$130	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR4,%GPR30,$24	
	nop
	nop
	nop
	nop
	sw	-24(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR3,%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$80	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$8	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR4,%GPR5	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$1	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR2,%GPR30,$36	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR3	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$130	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR4,%GPR30,$36	
	nop
	nop
	nop
	nop
	sw	-36(%GPR30),%GPR3	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$130	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$8	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR3	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR4,%GPR5	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$48	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR2	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$80	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$4	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR4,%GPR30,$48	
	nop
	nop
	nop
	nop
	sw	-48(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR3,%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$8	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$130	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	add	%GPR4,%GPR4,%GPR5	
	nop
	nop
	nop
	nop
	sw	0(%GPR1),%GPR2	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$1	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4),%GPR3	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$24	
	nop
	nop
	nop
	nop
	subi	%GPR6,%GPR30,$12	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lw	%GPR2,-12(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR3,-24(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR4,-36(%GPR30)	
	nop
	nop
	nop
	nop
	lw	%GPR5,-48(%GPR30)	
	nop
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$4	
	nop
	nop
	nop
	nop
	add	%GPR2,%GPR2,%GPR3	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$4	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR2,%GPR4	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR1,%GPR3	
	nop
	nop
	nop
	nop
	add	%GPR3,%GPR6,%GPR7	
	nop
	nop
	nop
	nop
	subi	%GPR4,%GPR30,$36	
	nop
	nop
	nop
	nop
	add	%GPR2,%GPR2,%GPR5	
	nop
	nop
	nop
	nop
	lhi	%GPR8,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$4	
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$4	
	nop
	nop
	nop
	nop
	subi	%GPR5,%GPR30,$48	
	nop
	nop
	nop
	nop
	srai	%GPR2,%GPR2,$2	
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR4,%GPR8	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR5,%GPR5,%GPR6	
	nop
	nop
	nop
	nop
	sw	-60(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$60	
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$4	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lw	%GPR3,0(%GPR3)	
	nop
	nop
	nop
	nop
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	nop
	lw	%GPR4,0(%GPR4)	
	nop
	nop
	nop
	nop
	lw	%GPR5,0(%GPR5)	
	nop
	nop
	nop
	nop
	add	%GPR2,%GPR2,%GPR6	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR3,%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$8	
	nop
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$60	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR4	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR3,%GPR7	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$1	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR1,%GPR5	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	subi	%GPR5,%GPR30,$72	
	nop
	nop
	nop
	nop
	srai	%GPR1,%GPR1,$2	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR7,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$160	
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$4	
	nop
	nop
	nop
	nop
	sw	0(%GPR2),%GPR1	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$72	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$8	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR4	
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR5,%GPR6	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$120	
	nop
	nop
	nop
	nop
	sw	-72(%GPR30),%GPR7	
	nop
	nop
	nop
	nop
	add	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$15	
	nop
	nop
	nop
	nop
	sw	0(%GPR4),%GPR3	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	-124(%GPR30),%GPR2	
	nop
	nop
	nop
	nop
	sw	0(%GPR1),%GPR5	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	d_clear	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 75 NOPs removed by reduceNOPs.sh
	lhi	%GPR10,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR10,%GPR10,$1	
	nop
	nop
	nop
	nop
	lhi	%GPR9,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR9,%GPR9,$1	
	nop
	nop
	nop
	nop
	lhi	%GPR8,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$1	
	nop
	nop
	nop
	nop
	lhi	%GPR7,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$15	
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$19	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$0	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$20	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$100	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$10	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$10	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	g_makebar	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR4,%GPR30,$48	
	nop
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$36	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$24	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$12	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	drawRectangle	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR2,%GPR30,$84	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$12	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	copyPoint	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR2,%GPR30,$96	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$24	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	copyPoint	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR2,%GPR30,$108	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$36	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	copyPoint	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR2,%GPR30,$120	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$48	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	copyPoint	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 35 NOPs removed by reduceNOPs.sh
L64:
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$60	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$72	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$5	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	rotate	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 30 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR28)	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR4,%GPR30,$60	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	nop
	sw	-60(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR6,%GPR28,%GPR2	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$72	
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR4,%GPR5	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$5	
	nop
	nop
	nop
	nop
	lw	%GPR6,0(%GPR6)	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$12	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4),%GPR6	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	rotate	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 30 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR28)	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR4,%GPR30,$12	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	nop
	sw	-12(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR6,%GPR28,%GPR2	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$72	
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR4,%GPR5	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$5	
	nop
	nop
	nop
	nop
	lw	%GPR6,0(%GPR6)	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$24	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4),%GPR6	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	rotate	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 30 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR28)	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR4,%GPR30,$24	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	nop
	sw	-24(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR6,%GPR28,%GPR2	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$72	
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR4,%GPR5	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$5	
	nop
	nop
	nop
	nop
	lw	%GPR6,0(%GPR6)	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$36	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4),%GPR6	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	rotate	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 30 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR28)	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR4,%GPR30,$36	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	nop
	sw	-36(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$4	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR6,%GPR28,%GPR2	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$72	
	nop
	nop
	nop
	nop
	add	%GPR4,%GPR4,%GPR5	
	nop
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$5	
	nop
	nop
	nop
	nop
	lw	%GPR6,0(%GPR6)	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$48	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	sw	0(%GPR4),%GPR6	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	rotate	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 35 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR28)	
	nop
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$48	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop
	nop
	nop
	nop
	sw	-48(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$60	
	nop
	nop
	nop
	nop
	add	%GPR5,%GPR28,%GPR2	
	nop
	nop
	nop
	nop
	add	%GPR3,%GPR3,%GPR4	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$12	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lw	%GPR4,0(%GPR5)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR4	
	nop
	nop
	nop
	nop
	lw	%GPR3,-124(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	rotate	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 35 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR28)	
	nop
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$12	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop
	nop
	nop
	nop
	sw	-12(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$60	
	nop
	nop
	nop
	nop
	add	%GPR5,%GPR28,%GPR2	
	nop
	nop
	nop
	nop
	add	%GPR3,%GPR3,%GPR4	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$24	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lw	%GPR4,0(%GPR5)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR4	
	nop
	nop
	nop
	nop
	lw	%GPR3,-124(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	rotate	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 35 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR28)	
	nop
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$24	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop
	nop
	nop
	nop
	sw	-24(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$60	
	nop
	nop
	nop
	nop
	add	%GPR5,%GPR28,%GPR2	
	nop
	nop
	nop
	nop
	add	%GPR3,%GPR3,%GPR4	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$36	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lw	%GPR4,0(%GPR5)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR4	
	nop
	nop
	nop
	nop
	lw	%GPR3,-124(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	rotate	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 35 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR28)	
	nop
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$36	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop
	nop
	nop
	nop
	sw	-36(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$60	
	nop
	nop
	nop
	nop
	add	%GPR5,%GPR28,%GPR2	
	nop
	nop
	nop
	nop
	add	%GPR3,%GPR3,%GPR4	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$48	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	lw	%GPR4,0(%GPR5)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR4	
	nop
	nop
	nop
	nop
	lw	%GPR3,-124(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	rotate	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 30 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR28)	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	subi	%GPR3,%GPR30,$48	
	nop
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	nop
	sw	-48(%GPR30),%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$4	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR28,%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 10 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR3,%GPR4	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$1	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$100000	
	nop
	nop
	nop
	nop
	lw	%GPR2,0(%GPR2)	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR2	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	wait	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR4,%GPR30,$120	
	nop
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$108	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$96	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$84	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	overwriteRectangle	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR2,%GPR30,$84	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$12	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	copyPoint	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR2,%GPR30,$96	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$24	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	copyPoint	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR2,%GPR30,$108	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$36	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	copyPoint	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR2,%GPR30,$120	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$48	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	copyPoint	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR4,%GPR30,$48	
	nop
	nop
	nop
	nop
	subi	%GPR3,%GPR30,$36	
	nop
	nop
	nop
	nop
	subi	%GPR2,%GPR30,$24	
	nop
	nop
	nop
	nop
	subi	%GPR1,%GPR30,$12	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	jal	drawRectangle	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L64	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
L65:
	nop
	nop
	nop
	nop
				; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop
				; Automatically 15 NOPs removed by reduceNOPs.sh
	jr	%GPR31	
	nop
	nop
	nop
	nop
