	.section	.data
	;.global	_array
	.align	4
_array:
	.data.32	45
	.data.32	75
	.data.32	342
	.data.32	54
	.data.32	7
	.data.32	86
	.data.32	92
	.data.32	235
	.data.32	4
	.data.32	42
	.data.32	99
	.data.32	78
	.data.32	63
	.data.32	352
	.data.32	21
	.data.32	634
	.data.32	6
	.data.32	77
	.data.32	346
	.data.32	23
	.section	.text
	.addressing	Word
	.section	.text
	.addressing	Word
	;.addressing	Word

	xor	%r30, %r30, %r30
	xor	%r29, %r29, %r29
	xor	%r28, %r28, %r28
	nop
	lhi	%r30, $(0xFFFFC/0x10000)
	lhi	%r29, $(0xFFFFC/0x10000)
	nop
	nop
	ori	%r30, %r30, $(0xFFFFC%0x10000)
	ori	%r29, %r29, $(0xFFFFC%0x10000)
	nop
	nop
	nop
	sw	-4(%r29), %r30
	sw	-8(%r29), %r31
	addi	%r29, %r30, $-8
	nop
	nop
	nop
	jal	main	
	nop
	nop
	nop
	nop
	nop
	sw	0(%r29), %r1
	jal	exit
	nop
	nop

	;.addressing	Word
bubbleSort:
L_BubbleSort_Index_1:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%r3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$0	
	nop
	nop
	nop
L_BubbleSort_Index_2:
	subu	%r4,%r2,%r1	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sltu	%r27,%r3,%r4	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_BubbleSort_Index_3	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_BubbleSort_Index_9	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_BubbleSort_Index_3:
	add	%r4,%r1,%r0	
	nop
	nop
	nop
L_BubbleSort_Index_4:
	subu	%r5,%r2,%r3	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sltu	%r27,%r4,%r5	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_BubbleSort_Index_5	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_BubbleSort_Index_8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_BubbleSort_Index_5:
	addui	%r5,%r4,$1	
	nop	;;1,3
	nop	;;1,3
	lhi	%r6,$( _array	/0x10000)
	nop
	nop
	nop
	ori	%r6,%r6,$( _array	%0x10000)
	lhi	%r7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r7,%r7,$4	
	lhi	%r9,$( _array	/0x10000)
	nop
	nop
	nop
	ori	%r9,%r9,$( _array	%0x10000)
	lhi	%r8,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r8,%r8,$4	
	nop	;;6,8
	nop	;;6,8
	multu	%r5,%r5,%r7	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
	; Automatically 1 NOPs removed by reduceNOPs.sh
	multu	%r7,%r4,%r8	
	add	%r5,%r6,%r5	
	nop	;;13,16
	nop	;;13,16
	nop	;;13,16
	add	%r6,%r9,%r7	
	lw	%r5,0(%r5)	
	nop	;;17,20
	nop	;;17,20
	nop	;;17,20
	lw	%r6,0(%r6)	
	nop	;;20,24
	nop	;;20,24
	nop	;;20,24
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sltu	%r27,%r5,%r6	
	nop	;;24,28
	nop	;;24,28
	nop	;;24,28
	; Automatically 1 NOPs removed by reduceNOPs.sh
	bnez	%r27,L_BubbleSort_Index_6	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_BubbleSort_Index_7	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_BubbleSort_Index_6:
	nop	;;0,2
	nop	;;0,2
	addui	%r5,%r4,$1	
	nop	;;2,4
	nop	;;2,4
	lhi	%r6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r6,%r6,$4	
	lhi	%r7,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r7,%r7,$4	
	nop	;;5,7
	nop	;;5,7
	lhi	%r9,$( _array	/0x10000)
	nop
	nop
	nop
	ori	%r9,%r9,$( _array	%0x10000)
	multu	%r5,%r5,%r6	
	multu	%r7,%r4,%r7	
	lhi	%r8,$( _array	/0x10000)
	nop
	nop
	nop
	ori	%r8,%r8,$( _array	%0x10000)
	addui	%r11,%r4,$1	
	lhi	%r6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r6,%r6,$4	
	lhi	%r12,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r12,%r12,$4	
	add	%r7,%r9,%r7	
	add	%r5,%r8,%r5	
	multu	%r6,%r4,%r6	
	multu	%r9,%r11,%r12	
	lhi	%r10,$( _array	/0x10000)
	nop
	nop
	nop
	ori	%r10,%r10,$( _array	%0x10000)
	lhi	%r8,$( _array	/0x10000)
	nop
	nop
	nop
	ori	%r8,%r8,$( _array	%0x10000)
	nop	;;19,21
	nop	;;19,21
	lw	%r11,0(%r5)	
	add	%r6,%r10,%r6	
	lw	%r5,0(%r7)	
	add	%r7,%r8,%r9	
	nop	;;24,26
	nop	;;24,26
	sw	0(%r6),%r11	
	nop	;;26,30
	nop	;;26,30
	nop	;;26,30
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%r7),%r5	
	nop
	nop
	nop
L_BubbleSort_Index_7:
	addui	%r4,%r4,$1	
	j	L_BubbleSort_Index_4	
	nop
	nop
	nop
L_BubbleSort_Index_8:
	addui	%r3,%r3,$1	
	j	L_BubbleSort_Index_2	
	nop
	nop
	nop
L_BubbleSort_Index_9:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	jr	%r31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
main:
L_BubbleSort_Index_10:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 9 NOPs removed by reduceNOPs.sh
	lhi	%r2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$19	
	lhi	%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	bubbleSort	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lhi	%r28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	nop	;;13,17
	nop	;;13,17
	nop	;;13,17
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_BubbleSort_Index_11	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_BubbleSort_Index_11:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	lw	%r30,0(%r30)	
	nop
	nop
	nop
	nop
	jr	%r31	
	nop
	nop
	nop
	.section	.text
	.addressing	Word
	;.addressing	Word
	nop
exit:
	nop
	nop
