	.section	.data
	;.global	_input1
	.align	4
_input1:
	.data.32	321
	.data.32	51
	.data.32	890
	.data.32	75
	.data.32	78
	.data.32	7
	.data.32	341
	.data.32	2342
	.data.32	568
	.data.32	789
	.data.32	7
	.data.32	3461
	.data.32	1235
	.data.32	346
	.data.32	75
	.data.32	685
	.data.32	79
	.data.32	45
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
	.data.32	236
	.data.32	5683
	.data.32	79
	.data.32	86
	.data.32	643
	.data.32	5231
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
	;.global	_resultFex
	.align	4
_resultFex:
	.space	80
	;.global	_resultMax
	.align	4
_resultMax:
	.space	80
	;.global	_resultMin
	.align	4
_resultMin:
	.space	80
	.section	.text
main:
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
	ori	%GPR2,%GPR2,$65280	
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
	NOP		;;0,2
	NOP		;;0,2
	LI	%GPR3, *_input1	
	LI	%GPR6, *_input2	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$4	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	mult	%GPR4,%GPR1,%GPR4	
	mult	%GPR5,%GPR1,%GPR5	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$4	
	LI	%GPR8, *_resultAvg	
	add	%GPR3,%GPR3,%GPR4	
	add	%GPR4,%GPR6,%GPR5	
	mult	%GPR6,%GPR1,%GPR7	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$4	
	lw	%GPR3,0(%GPR3)	
	lw	%GPR4,0(%GPR4)	
	add	%GPR6,%GPR8,%GPR6	
	LI	%GPR7, *_input1	
	mult	%GPR5,%GPR1,%GPR5	
	avg	%GPR3,%GPR3,%GPR4	
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	sw	0(%GPR6),%GPR3	
	add	%GPR3,%GPR7,%GPR5	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$4	
	LI	%GPR5, *_resultFex	
	lw	%GPR3,0(%GPR3)	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$4	
	mult	%GPR4,%GPR1,%GPR4	
	mult	%GPR6,%GPR1,%GPR6	
	LI	%GPR8, *_input1	
	fex	%GPR3,%GPR3,%GPR2,$8	
	add	%GPR4,%GPR5,%GPR4	
	LI	%GPR9, *_input2	
	mult	%GPR7,%GPR1,%GPR7	
	add	%GPR5,%GPR8,%GPR6	
	sw	0(%GPR4),%GPR3	
	NOP		;;40,42
	NOP		;;40,42
	add	%GPR6,%GPR9,%GPR7	
	NOP		;;42,44
	NOP		;;42,44
	lw	%GPR3,0(%GPR5)	
	NOP		;;44,46
	NOP		;;44,46
	lw	%GPR4,0(%GPR6)	
	NOP		;;46,50
	NOP		;;46,50
	NOP		;;46,50
	NOP		;;46,50
	sgt	%GPR27,%GPR3,%GPR4	
	bnez	%GPR27,L3	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L4	
	NOP		
	NOP		
	NOP		
	NOP		
L3:
	NOP		;;0,2
	NOP		;;0,2
	LI	%GPR3, *_input1	
	LI	%GPR4, *_resultMax	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$4	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$4	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	mult	%GPR5,%GPR1,%GPR5	
	mult	%GPR6,%GPR1,%GPR6	
	NOP		;;9,12
	NOP		;;9,12
	NOP		;;9,12
	add	%GPR3,%GPR3,%GPR5	
	add	%GPR4,%GPR4,%GPR6	
	NOP		;;13,16
	NOP		;;13,16
	NOP		;;13,16
	lw	%GPR3,0(%GPR3)	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sw	0(%GPR4),%GPR3	
	j	L5	
	NOP		
	NOP		
	NOP		
L4:
	NOP		;;0,2
	NOP		;;0,2
	LI	%GPR3, *_input2	
	LI	%GPR4, *_resultMax	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$4	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$4	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	mult	%GPR5,%GPR1,%GPR5	
	mult	%GPR6,%GPR1,%GPR6	
	NOP		;;9,12
	NOP		;;9,12
	NOP		;;9,12
	add	%GPR3,%GPR3,%GPR5	
	add	%GPR4,%GPR4,%GPR6	
	NOP		;;13,16
	NOP		;;13,16
	NOP		;;13,16
	lw	%GPR3,0(%GPR3)	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sw	0(%GPR4),%GPR3	
	NOP		
	NOP		
	NOP		
L5:
	NOP		;;0,2
	NOP		;;0,2
	LI	%GPR3, *_input1	
	LI	%GPR4, *_input2	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$4	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$4	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	mult	%GPR5,%GPR1,%GPR5	
	mult	%GPR6,%GPR1,%GPR6	
	NOP		;;9,12
	NOP		;;9,12
	NOP		;;9,12
	add	%GPR3,%GPR3,%GPR5	
	add	%GPR4,%GPR4,%GPR6	
	NOP		;;13,16
	NOP		;;13,16
	NOP		;;13,16
	lw	%GPR3,0(%GPR3)	
	lw	%GPR4,0(%GPR4)	
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	slt	%GPR27,%GPR3,%GPR4	
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
	NOP		;;0,2
	NOP		;;0,2
	LI	%GPR3, *_input1	
	LI	%GPR4, *_resultMin	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$4	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$4	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	mult	%GPR5,%GPR1,%GPR5	
	mult	%GPR6,%GPR1,%GPR6	
	NOP		;;9,12
	NOP		;;9,12
	NOP		;;9,12
	add	%GPR3,%GPR3,%GPR5	
	add	%GPR4,%GPR4,%GPR6	
	NOP		;;13,16
	NOP		;;13,16
	NOP		;;13,16
	lw	%GPR3,0(%GPR3)	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sw	0(%GPR4),%GPR3	
	j	L8	
	NOP		
	NOP		
	NOP		
L7:
	NOP		;;0,2
	NOP		;;0,2
	LI	%GPR3, *_input2	
	LI	%GPR4, *_resultMin	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$4	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$4	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	mult	%GPR5,%GPR1,%GPR5	
	mult	%GPR6,%GPR1,%GPR6	
	NOP		;;9,12
	NOP		;;9,12
	NOP		;;9,12
	add	%GPR3,%GPR3,%GPR5	
	add	%GPR4,%GPR4,%GPR6	
	NOP		;;13,16
	NOP		;;13,16
	NOP		;;13,16
	lw	%GPR3,0(%GPR3)	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sw	0(%GPR4),%GPR3	
	NOP		
	NOP		
	NOP		
L8:
	addi	%GPR1,%GPR1,$1	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$20	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	slt	%GPR27,%GPR1,%GPR3	
	bnez	%GPR27,L2	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L9	
	NOP		
	NOP		
	NOP		
	NOP		
L9:
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