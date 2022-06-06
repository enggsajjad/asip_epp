	.addressing	Word
	.section	.text
_main:
	; Initialize Stack Pointer
	lhi	%r29, $(((1024-4)*65536)&0xffff)	; MemSize is 1024
	addui	%r29, %r29, $((1024-4)&0xffff)

	subi	%r29, %r29, $12		; Adjust Stack Pointer
	sw	0(%r29), %r30		; Save the old frame pointer
	sw	4(%r29), %r31		; Save the return address
	sw	8(%r29), %r1		; Save r1, which will be overwritten in main
	add	%r30, %r0, %r29		; Establish new frame pointer

	; Call BubbleSort
	subi	%r29, %r29, $8		; create place for the parameters
	sw	0(%r29), %r0		; "const unsigned int startIndex"
	addi	%r1, %r0, $19
	sw	4(%r29), %r1		; "const unsigned int endIndex"
	jal	_bubbleSort
	nop
	addi	%r29, %r29, $8		; clean up place for parameters

	lw	%r30, 0(%r29)		; Restore frame pointer
	lw	%r31, 4(%r29)		; Restore return address
	lw	%r1,  8(%r29)		; Restore r1
	add	%r29, %r0, %r30		; Restore stack pointer

	jal	_exit
	nop


_bubbleSort:
	add	%r30, %r0, %r29		; Establish new frame pointer 
	subi	%r29, %r29, $(8 + 10*4)	; Adjust Stack Pointer; 8 for oldFP+RET and x*4 for saved Registers
	sw	0(%r29), %r30		; Save the frame pointer 
	sw	4(%r29), %r31		; Save the return address 

	; Save Registers 
	sw	 8(%r29), %r1		; r1 is used for comparing-results and for temporary stuff.
	sw	12(%r29), %r2		; r2 is the parameter value "startIndex".
	sw	16(%r29), %r3		; r3 is the parameter value "endIndex".
	sw	20(%r29), %r4		; r4 is the loop-variable "i".
	sw	24(%r29), %r5		; r5 is the loop-variable "j".
	sw	28(%r29), %r6		; r6 is the loop-end "innerLoopEnd".
	sw	32(%r29), %r7		; r7 is "next_j".
	sw	36(%r29), %r8		; r8 is "value_j".
	sw	40(%r29), %r9		; r9 is "value_next_j".
	sw	44(%r29), %r10		; r10 is the start address of 'array'.
	nop

	; Load Parameters
	lw	%r2, 0(%r30)
	lw	%r3, 4(%r30)

	; initialize start address of 'array'
	lhi	%r10, $(_array/65536)&0xffff
	addui	%r10, %r10, $(_array&0xffff)

	; innerLoopEnd = array+endIndex;
	slli	%r6, %r3, $2
	add	%r6, %r6, %r10

	; i = startIndex;
	add	%r4, %r2, %r0

OuterLoop_Start:
	; while (i < endIndex) {
	sltu	%r1, %r4, %r3
	beqz	%r1, OuterLoop_End
	nop

	; j = array+startIndex;
	slli	%r5, %r2, $2
	add	%r5, %r5, %r10

	; value_j = *j;
	lw	%r8, 0(%r5)

	; next_j = j;
	add	%r7, %r5, %r0

InnerLoop_Start:
	; while (j < innerLoopEnd) {
	sltu	%r1, %r5, %r6
	beqz	%r1, InnerLoop_End
	nop

	; next_j++;
	addi	%r7, %r7, $4

	; value_next_j = *next_j;
	lw	%r9, 0(%r7)

	; if (value_next_j < value_j) {
	sltu	%r1, %r9, %r8
	beqz	%r1, SkipExchange
	nop

	; tmp = value_j;
	add	%r1, %r0, %r8

	; *j = value_next_j;
	sw	0(%r5), %r9

	; value_j = value_next_j;
	add	%r8, %r0, %r9

	; *next_j = tmp;
	sw	0(%r7), %r1

	; value_next_j = tmp;
	add	%r9, %r0, %r1

SkipExchange:
	; j = next_j;
	add	%r5, %r0, %r7

	; value_j = value_next_j;
	add	%r8, %r0, %r9

	; }
	j	InnerLoop_Start
	nop

InnerLoop_End:
	; innerLoopEnd--;
	subi	%r6, %r6, $4

	; i++;
	addi	%r4, %r4, $1

	; }
	j	OuterLoop_Start
	nop

OuterLoop_End:
	lw	%r30, 0(%r29)		; Restore frame pointer
	lw	%r31, 4(%r29)		; Restore return address

	; Restore the saved registers
	lw	%r1, 8(%r29)
	lw	%r2, 12(%r29)
	lw	%r3, 16(%r29)
	lw	%r4, 20(%r29)
	lw	%r5, 24(%r29)
	lw	%r6, 28(%r29)
	lw	%r7, 32(%r29)
	lw	%r8, 36(%r29)
	lw	%r9, 40(%r29)
	lw	%r10,48(%r29)

	add	%r29, %r0, %r30		; Restore stack pointer

	; Return
	jr	%r31
	nop


_exit:	nop
	nop


	.section	.data
_array:
	.data.32	45
	.data.32	75
	.data.32	342
	.data.32	54
	.data.32	7
	.data.32	86
	.data.32	45
	.data.32	235
	.data.32	4
	.data.32	45
	.data.32	75
	.data.32	78
	.data.32	63
	.data.32	352
	.data.32	21
	.data.32	634
	.data.32	6
	.data.32	75
	.data.32	346
	.data.32	23

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
bubbleSort:
L_BubbleSort_Index_1:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 6 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR1,%GPR0	
	nop
	nop
	nop
L_BubbleSort_Index_2:
	sltu	%GPR27,%GPR3,%GPR2	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_BubbleSort_Index_3	
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
	add	%GPR4,%GPR1,%GPR0	
	nop
	nop
	nop
L_BubbleSort_Index_4:
	subu	%GPR5,%GPR2,%GPR3	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sltu	%GPR27,%GPR4,%GPR5	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_BubbleSort_Index_5	
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
	addui	%GPR5,%GPR4,$1	
	nop	;;1,3
	nop	;;1,3
	lhi	%GPR6,$( _array	/0x10000)
	nop
	nop
	nop
	ori	%GPR6,%GPR6,$( _array	%0x10000)
	lhi	%GPR7,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$4	
	lhi	%GPR9,$( _array	/0x10000)
	nop
	nop
	nop
	ori	%GPR9,%GPR9,$( _array	%0x10000)
	lhi	%GPR8,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR8,%GPR8,$4	
	nop	;;6,8
	nop	;;6,8
	multu	%GPR5,%GPR5,%GPR7	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	multu	%GPR7,%GPR4,%GPR8	
	add	%GPR5,%GPR6,%GPR5	
	nop	;;13,16
	nop	;;13,16
	nop	;;13,16
	add	%GPR6,%GPR9,%GPR7	
	lw	%GPR5,0(%GPR5)	
	nop	;;17,20
	nop	;;17,20
	nop	;;17,20
	lw	%GPR6,0(%GPR6)	
	nop	;;20,24
	nop	;;20,24
	nop	;;20,24
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sltu	%GPR27,%GPR5,%GPR6	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L_BubbleSort_Index_6	
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
	addui	%GPR5,%GPR4,$1	
	nop	;;2,4
	nop	;;2,4
	lhi	%GPR6,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$4	
	lhi	%GPR7,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$4	
	nop	;;5,7
	nop	;;5,7
	lhi	%GPR9,$( _array	/0x10000)
	nop
	nop
	nop
	ori	%GPR9,%GPR9,$( _array	%0x10000)
	multu	%GPR5,%GPR5,%GPR6	
	multu	%GPR7,%GPR4,%GPR7	
	lhi	%GPR8,$( _array	/0x10000)
	nop
	nop
	nop
	ori	%GPR8,%GPR8,$( _array	%0x10000)
	addui	%GPR11,%GPR4,$1	
	lhi	%GPR6,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$4	
	lhi	%GPR12,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR12,%GPR12,$4	
	add	%GPR7,%GPR9,%GPR7	
	add	%GPR5,%GPR8,%GPR5	
	multu	%GPR6,%GPR4,%GPR6	
	multu	%GPR9,%GPR11,%GPR12	
	lhi	%GPR10,$( _array	/0x10000)
	nop
	nop
	nop
	ori	%GPR10,%GPR10,$( _array	%0x10000)
	lhi	%GPR8,$( _array	/0x10000)
	nop
	nop
	nop
	ori	%GPR8,%GPR8,$( _array	%0x10000)
	nop	;;19,21
	nop	;;19,21
	lw	%GPR11,0(%GPR5)	
	add	%GPR6,%GPR10,%GPR6	
	lw	%GPR5,0(%GPR7)	
	add	%GPR7,%GPR8,%GPR9	
	nop	;;24,26
	nop	;;24,26
	sw	0(%GPR6),%GPR11	
	nop	;;26,30
	nop	;;26,30
	nop	;;26,30
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR7),%GPR5	
	nop
	nop
	nop
L_BubbleSort_Index_7:
	addui	%GPR4,%GPR4,$1	
	j	L_BubbleSort_Index_4	
	nop
	nop
	nop
L_BubbleSort_Index_8:
	addui	%GPR3,%GPR3,$1	
	j	L_BubbleSort_Index_2	
	nop
	nop
	nop
L_BubbleSort_Index_9:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	jr	%GPR31	
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
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 9 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$19	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	bubbleSort	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 8 NOPs removed by reduceNOPs.sh
L_BubbleSort_Index_11:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	jr	%GPR31	
	nop
	nop
	nop
