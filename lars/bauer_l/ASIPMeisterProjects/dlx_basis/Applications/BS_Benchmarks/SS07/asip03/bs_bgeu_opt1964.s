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
	sw	4(%r29), %r31		; Save the return address 
	sw	0(%r29), %r30		; Save the frame pointer 


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

	; Load Parameters and initialize start address of 'array'
	lhi	%r10, $(_array/65536)&0xffff ; array-address: upper 16 bits
	lw	%r3, 4(%r30)		; Parameter: endIndex
	lw	%r2, 0(%r30)		; Paramter: startIndex
	nop
	addui	%r10, %r10, $(_array&0xffff) ; array-address: lower 16 bits


	; ADD YOUR CODE HERE

	
	slli %r6, %r3, $2			; innerLoopEnd = 4*endIndex
	slli %r2, %r2, $2			; startIndex = startIndex*4
	add %r4, %r0, %r2			; i = startIndex.OLD;
	nop
	add %r6, %r6, %r10			; innerLoopEnd = array+4*endIndex
	add %r5, %r2, %r10			; j = array+4*startIndex;
	add %r7, %r2, %r10			; next_j = j = array+4*startIndex
	subi %r3, %r3, $1			; endIndex-1     => neccessary to use ">=" in branch-condition
	addi %r4, %r4, $1			; i = startIndex+1;


_outer_loop:					; do {
	lw  %r8, 0(%r5)				;   value_j = *j;
	lw  %r9, 4(%r7)				;   value_next_j = *(next_j+4);
	subi %r6, %r6, $4			;   innerLoopEnd = innerLoopEnd-4;
_inner_loop:					;   do {
	addi %r7, %r7, $4			;     next_j=next_j+4;
	addi %r5, %r7, $4			;     j = next_j.OLD+4;
	bgeu %r9, %r8, _end_if		;     if (value_next_j < value_j) {
	add %r8, %r0, %r9			;     value_j = value_next_j; (executed independently from if-statement)

	add %r8, %r0, %r8			;       value_j = value_j.OLD;  (overwrites statement above in case the if-body is executed)
	sw -4(%r5), %r9				;       *(j-4) = value_next_j;
	sw 0(%r7), %r8				;       *next_j = value_j.OLD;
_end_if:						;     }
	bgeu %r6, %r5, _inner_loop	;   } while (innerLoopEnd-4 >= j)
	lw   %r9, 4(%r7)			;     value_next_j = *(next_j+4); (executed in inner loop)
	; there is a dependecy between the last command (LW) and the "if-begeu" 8 lines above: this dependency is resolved
	; since the next command (ADD) will still be loaded into the pipeline (but not "executed") even if the branch 
	; 2 lines above is taken!
	add %r5, %r2, %r10			;   j = array+4*startIndex;
	add %r7, %r2, %r10			;   next_j = j = array+4*startIndex; 
	bgeu %r3, %r4, _outer_loop	; } while (endIndex-1 >= i)
	addi %r4, %r4, $1			;   i++; (executed in outer loop)




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
	trap #0


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

