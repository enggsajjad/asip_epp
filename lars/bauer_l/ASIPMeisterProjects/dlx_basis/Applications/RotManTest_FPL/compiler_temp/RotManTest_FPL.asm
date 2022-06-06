	.section	.data
	;.global	_SAD_Array
	.align	4
_SAD_Array:
	.space	1584
	.section	.text
	.addressing	Word
	.section	.text
	.addressing	Word
	;.addressing	Word

	xor	%r30, %r30, %r30
	xor	%r29, %r29, %r29
	xor	%r28, %r28, %r28
	lhi	%r30, $(0xFFFFC/0x10000)
	lhi	%r29, $(0xFFFFC/0x10000)
	ori	%r30, %r30, $(0xFFFFC%0x10000)
	ori	%r29, %r29, $(0xFFFFC%0x10000)
	sw	-4(%r29), %r30
	sw	-8(%r29), %r31
	addi	%r29, %r30, $-8
	jal	main	
	nop
	sw	0(%r29), %r1
	jal	exit
	nop

	;.addressing	Word
doMotionEstimation:
L_RotManTest_1:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	subi	%r29,%r29,$12	
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%r5,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$4	
	; Automatically 2 NOPs removed by reduceNOPs.sh
	lhi	%r11,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r11,%r11,$0	
	div	%r6,%r4,%r5	
	lhi	%r7,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r7,%r7,$0	
	lhi	%r12,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r12,%r12,$0	
	lhi	%r8,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r8,%r8,$0	
	lhi	%r9,$65535	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r9,%r9,$-1	
	lhi	%r10,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r10,%r10,$0	
	lhi	%r28,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	sw	-4(%r30),%r11	
L_RotManTest_2:
	slt	%r27,%r12,%r3	
	bnez	%r27,L_RotManTest_3	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_RotManTest_14	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_RotManTest_3:
	mult	%r5,%r8,%r4	
	lw	%r13,-4(%r30)	
	addu	%r5,%r5,%r2	
	addu	%r28,%r28,%r13	
	lhi	%r11,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r11,%r11,$0	
	addu	%r5,%r5,%r7	
L_RotManTest_4:
	subi	%r13,%r30,$4	


	;; SINAS: SAD_16()
	SAD16	%r13, %r1, %r5, %r6

	lw	%r13,-4(%r30)	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sltu	%r27,%r13,%r9	
	bnez	%r27,L_RotManTest_5	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_RotManTest_6	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_RotManTest_5:
	lw	%r9,-4(%r30)	
L_RotManTest_6:
	addi	%r11,%r11,$1	
	lhi	%r13,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r13,%r13,$67	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%r27,%r11,%r13	
	bnez	%r27,L_RotManTest_4	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_RotManTest_7	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_RotManTest_7:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r11,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r11,%r11,$0	
L_RotManTest_8:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r13,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r13,%r13,$0	
L_RotManTest_9:


	;; SINAS: SATD_4x4()
	satd4x4	%r14, %r1, %r6, %r5

	addu	%r10,%r10,%r14	
	addi	%r13,%r13,$1	
	lhi	%r14,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r14,%r14,$16	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%r27,%r13,%r14	
	bnez	%r27,L_RotManTest_9	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_RotManTest_10	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_RotManTest_10:
	sltu	%r27,%r10,%r9	
	bnez	%r27,L_RotManTest_11	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_RotManTest_12	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_RotManTest_11:
	add	%r9,%r10,%r0	
L_RotManTest_12:
	addi	%r11,%r11,$1	
	lhi	%r13,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r13,%r13,$16	
	lhi	%r10,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r10,%r10,$0	
	slt	%r27,%r11,%r13	
	bnez	%r27,L_RotManTest_8	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_RotManTest_13	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_RotManTest_13:
	lhi	%r5,$( _SAD_Array	/0x10000)
	ori	%r5,%r5,$( _SAD_Array	%0x10000)
	lhi	%r11,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r11,%r11,$4	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	mult	%r11,%r12,%r11	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r5,%r5,%r11	
	addi	%r12,%r12,$1	
	sw	0(%r5),%r9	
	j	L_RotManTest_2	
	nop
L_RotManTest_14:
	j	L_RotManTest_15	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_RotManTest_15:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	lw	%r30,0(%r30)	
	jr	%r31	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
main:
L_RotManTest_16:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	subi	%r29,%r29,$40	
	; Automatically 9 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$352	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r30),%r1	
	lhi	%r1,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-8(%r30),%r1	
	lhi	%r1,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$99	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-12(%r30),%r1	
	lhi	%r1,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-16(%r30),%r1	
	sw	-20(%r30),%r1	
	lhi	%r1,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$1	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-24(%r30),%r1	
	lhi	%r1,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-28(%r30),%r1	
	lhi	%r1,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-32(%r30),%r1	
L_RotManTest_17:
	lw	%r1,-16(%r30)	
	lw	%r2,-24(%r30)	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r2	
	lw	%r2,-20(%r30)	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%r27,%r2,%r1	
	bnez	%r27,L_RotManTest_18	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_RotManTest_19	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_RotManTest_18:
	forecast	$0, $1 	
	forecast	$7, $1 	
	lw	%r1,-32(%r30)	
	lw	%r2,-28(%r30)	
	lw	%r3,-12(%r30)	
	lw	%r4,-4(%r30)	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%r29,%r29,$8	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	doMotionEstimation	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r29,%r29,$8	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r1,-8(%r30)	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%r1,%r1,%r28	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-8(%r30),%r1	
	forecast	$0, $0 	
	forecast	$7, $0 	
	lw	%r1,-20(%r30)	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%r1,%r1,$1	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-20(%r30),%r1	
	j	L_RotManTest_17	
	nop
L_RotManTest_19:
	lw	%r28,-8(%r30)	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_RotManTest_20	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_RotManTest_20:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	lw	%r30,0(%r30)	
	jr	%r31	
	nop
exit: