	;.addressing	Word
	.section	.text
	.addressing	Word
	.section	.text
	.addressing	Word
	;.addressing	Word

	xor	%r30, %r30, %r30
	xor	%r29, %r29, %r29
	xor	%r28, %r28, %r28
	nop
	lhi	%r30, $(0xEFFC/0x10000)
	lhi	%r29, $(0xEFFC/0x10000)
	nop
	nop
	ori	%r30, %r30, $(0xEFFC%0x10000)
	ori	%r29, %r29, $(0xEFFC%0x10000)
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

	nop
	nop
	nop
	nop
main:
	; Call BubbleSort
	nop
	nop
	nop
	nop
	subi	%r29, %r29, $8			; create place for the parameters
	nop
	nop
	nop
	nop
	sw	0(%r29), %r0			; "const unsigned int startIndex"
	nop
	nop
	nop
	nop
	addi	%r1, %r0, $19
	nop
	nop
	nop
	nop
	sw	4(%r29), %r1			; "const unsigned int endIndex"
	nop
	nop
	nop
	nop
	jal	_bubbleSort
	nop
	nop
	nop
	nop
	; Automatically 5 NOPs removed by reduceNOPs.sh
	addi	%r29, %r29, $8			; clean up place for parameters

	nop
	nop
	nop
	nop
	lw	%r30, 0(%r29)			; Restore frame pointer
	nop
	nop
	nop
	nop
	lw	%r31, 4(%r29)			; Restore return address
	nop
	nop
	nop
	nop
	lw	%r1,  8(%r29)			; Restore r1
	nop
	nop
	nop
	nop
	add	%r29, %r0, %r30			; Restore stack pointer

	nop
	nop
	nop
	nop
	jal	_exit
	nop
	nop
	nop
	nop


	; Automatically 5 NOPs removed by reduceNOPs.sh
_bubbleSort:
	nop
	nop
	nop
	nop
	add	%r30, %r0, %r29			; Establish new frame pointer 
	nop
	nop
	nop
	nop
	subi	%r29, %r29, $(8 + 10*4)		; Adjust Stack Pointer; 8 for oldFP+RET and x*4 for saved Registers
	nop
	nop
	nop
	nop
	sw	0(%r29), %r30			; Save the frame pointer 
	nop
	nop
	nop
	nop
	sw	4(%r29), %r31			; Save the return address 

	; Save Registers 
	nop
	nop
	nop
	nop
	sw	8(%r29), %r1			; r1 is used for comparing-results and for temporary stuff.
	nop
	nop
	nop
	nop
	sw	12(%r29), %r2			; r2 is the parameter value "startIndex".
	nop
	nop
	nop
	nop
	sw	16(%r29), %r3			; r3 is the parameter value "endIndex".
	nop
	nop
	nop
	nop
	sw	20(%r29), %r4			; r4 is the loop-variable "i".
	nop
	nop
	nop
	nop
	sw	24(%r29), %r5			; r5 is the loop-variable "j".
	nop
	nop
	nop
	nop
	sw	28(%r29), %r6			; r6 is the loop-end "innerLoopEnd".
	nop
	nop
	nop
	nop
	sw	32(%r29), %r7			; r7 is "next_j".
	nop
	nop
	nop
	nop
	sw	36(%r29), %r8			; r8 is "value_j".
	nop
	nop
	nop
	nop
	sw	40(%r29), %r9			; r9 is "value_next_j".
	nop
	nop
	nop
	nop
	sw	44(%r29), %r10			; r10 is the start address of 'array'.
	nop
	nop
	nop
	nop

	; Load Parameters
	; Automatically 5 NOPs removed by reduceNOPs.sh
	lw	%r2, 0(%r30)
	nop
	nop
	nop
	nop
	lw	%r3, 4(%r30)

	; Initialize start address of 'array'
	nop
	nop
	nop
	nop
	lhi	%r10, $(_array/65536)&0xffff
	nop
	nop
	nop
	nop
	addui	%r10, %r10, $(_array&0xffff)


	;;;;;;;;;;;;;;;;;;;;;;;;
	;; Add your code here ;;
	;;;;;;;;;;;;;;;;;;;;;;;;
	; innerLoopEnd = array+endIndex
	nop
	nop
	nop
	nop
	slli	%r6, %r3, $2
	nop
	nop
	nop
	nop
	add	%r6, %r6, %r10

	; i = startIndex;
	nop
	nop
	nop
	nop
	add	%r4, %r2, %r0

	nop
	nop
	nop
	nop
OuterLoop_Start:
	; while (i < endIndex) {
	nop
	nop
	nop
	nop
	sltu	%r1, %r4, %r3
	nop
	nop
	nop
	nop
	beqz	%r1, OuterLoop_End
	nop
	nop
	nop
	nop

	;   j = array+startIndex;
	; Automatically 5 NOPs removed by reduceNOPs.sh
	slli	%r5, %r2, $2
	nop
	nop
	nop
	nop
	add	%r5, %r5, %r10

	;   value_j = *j;
	nop
	nop
	nop
	nop
	lw	%r8, 0(%r5)

	;   next_j = j;
	nop
	nop
	nop
	nop
	add	%r7, %r5, %r0

	nop
	nop
	nop
	nop
InnerLoop_Start:
	;   while (j < innerLoopEnd) {
	nop
	nop
	nop
	nop
	sltu	%r1, %r5, %r6
	nop
	nop
	nop
	nop
	beqz	%r1, InnerLoop_End
	nop
	nop
	nop
	nop

	;     next_j++;
	; Automatically 5 NOPs removed by reduceNOPs.sh
	addi	%r7, %r7, $4

	;     value_next_j = *next_j;
	nop
	nop
	nop
	nop
	lw	%r9, 0(%r7)

	;     if (value_next_j < value_j) {
	nop
	nop
	nop
	nop
	sltu	%r1, %r9, %r8
	nop
	nop
	nop
	nop
	beqz	%r1, SkipExchange
	nop
	nop
	nop
	nop

	;       *j = value_next_j;
	; Automatically 5 NOPs removed by reduceNOPs.sh
	sw	0(%r5), %r9

	;       *next_j = value_j;
	nop
	nop
	nop
	nop
	sw	0(%r7), %r8

	;       tmp = value_j;
	nop
	nop
	nop
	nop
	add	%r1, %r8, %r0

	;       value_j = value_next_j;
	nop
	nop
	nop
	nop
	add	%r8, %r9, %r0

	;       value_next_j = tmp;
	nop
	nop
	nop
	nop
	add	%r9, %r1, %r0
	;     }

	nop
	nop
	nop
	nop
SkipExchange:
	;     j = next_j;
	nop
	nop
	nop
	nop
	add	%r5, %r7, %r0

	;     value_j = value_next_j;
	nop
	nop
	nop
	nop
	add	%r8, %r9, %r0

	nop
	nop
	nop
	nop
	j	InnerLoop_Start	;   }
	nop
	nop
	nop
	nop

	; Automatically 5 NOPs removed by reduceNOPs.sh
InnerLoop_End:
	;   innerLoopEnd--;
	nop
	nop
	nop
	nop
	subi	%r6, %r6, $4

	;   i++;
	nop
	nop
	nop
	nop
	addi	%r4, %r4, $1


	nop
	nop
	nop
	nop
	j	OuterLoop_Start	; }
	nop
	nop
	nop
	nop

	; Automatically 5 NOPs removed by reduceNOPs.sh
OuterLoop_End:

	nop
	nop
	nop
	nop
	lw	%r30, 0(%r29)			; Restore frame pointer
	nop
	nop
	nop
	nop
	lw	%r31, 4(%r29)			; Restore return address

	; Restore the saved registers
	nop
	nop
	nop
	nop
	lw	%r1, 8(%r29)
	nop
	nop
	nop
	nop
	lw	%r2, 12(%r29)
	nop
	nop
	nop
	nop
	lw	%r3, 16(%r29)
	nop
	nop
	nop
	nop
	lw	%r4, 20(%r29)
	nop
	nop
	nop
	nop
	lw	%r5, 24(%r29)
	nop
	nop
	nop
	nop
	lw	%r6, 28(%r29)
	nop
	nop
	nop
	nop
	lw	%r7, 32(%r29)
	nop
	nop
	nop
	nop
	lw	%r8, 36(%r29)
	nop
	nop
	nop
	nop
	lw	%r9, 40(%r29)
	nop
	nop
	nop
	nop
	lw	%r10,48(%r29)

	nop
	nop
	nop
	nop
	add	%r29, %r0, %r30			; Restore stack pointer

	; Return
	nop
	nop
	nop
	nop
	nop
	jr	%r31
	nop
	nop
	nop
	nop


	; Automatically 5 NOPs removed by reduceNOPs.sh
_exit:	nop
	nop
	nop
	nop
	nop


	; Automatically 1 NOPs removed by reduceNOPs.sh
	.section	.data
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
	;.addressing	Word
	nop
exit:
	nop
	nop
