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
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	jal	main	
	nop
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%r29), %r1
	jal	exit
	nop

	;.addressing	Word
main:
L_main_1:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	sw	-4(%r29),%r30	
	sw	0(%r29),%r31	
	subui	%r30,%r29,$4	
	subi	%r29,%r29,$8	
	; Automatically 4 NOPs removed by reduceNOPs.sh
	forecast	$30, $255 	
	; Automatically 2 NOPs removed by reduceNOPs.sh
	lhi	%r1,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r1,%r1,$0	
L_main_2:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	lhi	%r2,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$0	
	lhi	%r3,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r3,%r3,$0	
	lhi	%r4,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r4,%r4,$1	


	;; SINAS: HD_SI()
	HD	%r3, %r2, %r4

	addi	%r1,%r1,$1	
	lhi	%r2,$15	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r2,%r2,$1000000	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%r27,%r1,%r2	
	bnez	%r27,L_main_2	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_main_3	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_main_3:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	lhi	%r28,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%r28,%r28,$0	
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_main_4	
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L_main_4:
	; Automatically 1 NOPs removed by reduceNOPs.sh
	nop	; Automatically Added by addNopAfterLabels.pl
	lw	%r31,4(%r30)	
	addui	%r29,%r30,$4	
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r30,0(%r30)	
	jr	%r31	
	nop
exit:
