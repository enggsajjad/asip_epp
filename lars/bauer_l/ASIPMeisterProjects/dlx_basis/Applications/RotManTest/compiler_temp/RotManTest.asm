	.section	.data
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
main:
L_RotManTest_1:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	subi	%r29,%r29,$8	
	; Automatically 9 NOPs removed by reduceNOPs.sh
	lhi	%r3,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$0	
	lhi	%r2,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$5	
	lhi	%r28,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	add	%r1,%r3,%r0	
L_RotManTest_2:
	add	%r4,%r3,%r2	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%r27,%r1,%r4	
	bnez	%r27,L_RotManTest_3	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_RotManTest_6	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_RotManTest_3:
	forecast	$0, $1 	
	forecast	$7, $1 	
	; Automatically 2 NOPs removed by reduceNOPs.sh
	lhi	%r4,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$0	
L_RotManTest_4:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r5,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$0	
	lhi	%r6,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r6,%r6,$0	
	lhi	%r7,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r7,%r7,$0	
	lhi	%r8,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r8,%r8,$0	


	;; SINAS: SAD_16()
	SAD16	%r7, %r5, %r6, %r8

	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%r7,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r7,%r7,$0	
	lhi	%r6,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r6,%r6,$0	
	lhi	%r5,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$0	


	;; SINAS: SATD_4x4()
	satd4x4	%r5, %r7, %r6, %r5

	addi	%r4,%r4,$1	
	lhi	%r5,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r5,%r5,$100	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%r27,%r4,%r5	
	bnez	%r27,L_RotManTest_4	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_RotManTest_5	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_RotManTest_5:
	forecast	$0, $0 	
	forecast	$7, $0 	
	addi	%r1,%r1,$1	
	j	L_RotManTest_2	
	nop
L_RotManTest_6:
	j	L_RotManTest_7	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_RotManTest_7:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	lw	%r30,0(%r30)	
	jr	%r31	
	nop
exit: