	.addressing	Word
	.section	.text
_main:
	; Initialize Stack Pointer
	lhi	%r29, $(((1024-4)*65536)&0xffff)	; MemSize is 1024
	nop
	nop
	nop
	addui	%r29, %r29, $((1024-4)&0xffff)
	nop
	nop
	nop
	subi	%r29, %r29, $12		; Adjust Stack Pointer
	nop
	nop
	nop
	sw	0(%r29), %r30		; Save the old frame pointer
	sw	4(%r29), %r31		; Save the return address
	sw	8(%r29), %r1		; Save r1, which is used in main.
	add	%r30, %r0, %r29		; Establish new frame pointer

	; Call BubbleSort
	subi	%r29, %r29, $8		; create place for the parameters
	nop
	nop
	nop
	sw	0(%r29), %r0		; "const unsigned int startIndex"
	addi	%r1, %r0, $19
	nop
	nop
	nop
	sw	4(%r29), %r1		; "const unsigned int endIndex"
	jal	_bubbleSort
	nop
	addi	%r29, %r29, $8

	nop
	nop
	nop
	lw	%r30, 0(%r29)		; Restore frame pointer
	lw	%r31, 4(%r29)		; Restore return address
	lw	%r1,  8(%r29)		; Restore r1
	add	%r29, %r0, %r30		; Restore stack pointer

	; HALT
	jal	_exit
	nop


_bubbleSort:
	
	add	%r30, %r0, %r29		; Establish new frame pointer
	subi	%r29, %r29, $(8 + 10*4)	; Adjust Stack Pointer; 8 for oldFP+RET and x*4 for saved Registers
	nop
	nop
	nop
	sw	0(%r29), %r30		; Save the frame pointer
	sw	4(%r29), %r31		; Save the return address

	; Save Registers
	sw	44(%r29), %r10		; r10 is the start address of 'array'.
	sw	 8(%r29), %r1		; r1 is used for comparing-results and for temporary stuff.
	sw	12(%r29), %r2		; r2 is the parameter value "startIndex".
	sw	16(%r29), %r3		; r3 is the parameter value "endIndex".
	
	lhi	%r10, $(_array/65536)&0xffff ; Initialize start addr1ess of 'array'
	sw	20(%r29), %r4		; r4 is the loop-variable "i".
	
	lw	%r2, 0(%r30)		; Load Parameters
	lw	%r3, 4(%r30)		; Load Parameters
	addui	%r10, %r10, $(_array&0xffff) ; Initialize start addr1ess of 'array'
	sw	24(%r29), %r5		; r5 is the loop-variable "j".
	add	%r4, %r2, %r0 		; i = startIndex;
	slli	%r3, %r3, $2		;endIndex*4
	sw	28(%r29), %r6		; r6 is the loop-end "innerLoopEnd".

	; ADD YOUR CODE HERE
	
	
	
	sw	36(%r29), %r8		; r8 is "value_j".
	sw	40(%r29), %r9		; r9 is "value_next_j".
	add	%r5, %r10, %r2		; j = array+startIndex;
	add	%r6, %r10, %r3		; innerLoopEnd = array+endIndex
	
	
	
	

	bgeu	%r4, %r3, _End_Outer	; while (i < endIndex) {
	nop

_outerloop:
	
	addi	%r4, %r4,$4		;   i++;
	lw	%r8, 0(%r5)		;   value_j = *j;
	lw	%r9, 4(%r5)		;   value_next_j = *(j+4)

	bgeu	%r5, %r6, _End_Inner	;   while (j < innerLoopEnd) {
	nop
_innerloop:
	addi	%r5, %r5, $4		;   j++	
	bgeu	%r9, %r8, _next		;     if (value_next_j < value_j) {
	nop
	sw	0(%r5), %r9		;       *j_OLD = value_next_j;
	sw	0(%r5), %r8		;       *j_NEW = value_j;				;     }
_next:
	bgeu	%r5, %r6, _End_Inner
	nop 
	lw	%r8, 0(%r5)		;   value_j = *j;
	lw	%r9, 4(%r5)		;   value_next_j = *j+4
	j	_innerloop
	nop				;   }

_End_Inner:
	bgeu	%r4, %r3, _End_Outer
	nop	
	add	%r5, %r10, %r2		;   j = array+startIndex;
	subi	%r6, %r6,$4		;   innerLoopEnd--;
	j	_outerloop
	nop				; }

_End_Outer:


	lw	%r30, 0(%r29)		; Restore frame pointer
	lw	%r31, 4(%r29)		; Restore return address

	; Restore the saved registers
	lw	%r1, 8(%r29)
	lw	%r2, 12(%r29)
	lw	%r3, 16(%r29)
	lw	%r4, 20(%r29)
	lw	%r5, 24(%r29)
	lw	%r6, 28(%r29)
	lw	%r8, 36(%r29)
	lw	%r9, 40(%r29)
	lw	%r10,48(%r29)

	add	%r29, %r0, %r30		; Restore stack pointer

	; Return
	jr	%r31
	nop


_exit:	

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

