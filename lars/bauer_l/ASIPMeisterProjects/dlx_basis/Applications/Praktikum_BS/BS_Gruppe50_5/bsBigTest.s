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
	addi	%r1, %r0, $49
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

	; Initialize start address of 'array'
	lhi	%r10, $(_array*65536)&0xffff
	nop
	nop
	nop
	addui	%r10, %r10, $(_array&0xffff)

	; ADD YOUR CODE HERE
	addi	%r1, %r0, $4
	nop
	nop
	nop
	mult	%r1, %r3, %r1
	nop
	nop
	nop
	add	%r6, %r10, %r1		; innerLoopEnd = array+endIndex
	add	%r4, %r2, %r0		; i = startIndex;
	nop
	addi	%r1, %r0, $4
	addi	%r6, %r6, $4
	addi	%r4, %r4, $1
	nop
	mult	%r2, %r2, %r1		; aus StartIndex wird StartIndex mit Faktor 4 
	nop
	nop
	nop
	add	%r5, %r10, %r2		;   j = array+startIndex;
_OuterLoop:
	subi	%r6, %r6, $4		;   innerLoopEnd--;
	addi	%r4, %r4, $1		;   i++;
	bgeu	%r4, %r3, _ExitOuterLoop	; while (i < endIndex) {
	add	%r7, %r0, %r5		;   next_j = j;
	lw	%r8, 0(%r5)		;   value_j = *j;
	nop
_InnerLoop:	
	;   while (j < innerLoopEnd) {
	lw	%r9, 4(%r7)		;     value_next_j = *next_j; (r7'OLD)
	bgeu	%r5, %r6, _ExitInnerLoop
	add	%r1, %r0, %r8		;       tmp = value_j;
	addi	%r7, %r7, $4		;     next_j++;
	;     if (value_next_j < value_j) {
	bgeu	%r9, %r8, _SkipExchange				
	add	%r8, %r0, %r9		;       value_j = value_next_j;
	add	%r9, %r0, %r1		;       value_next_j = tmp;
	sw	0(%r7), %r8		;       *next_j = value_j;(r8'OLD)
	sw	0(%r5), %r9		;       *j = value_next_j;(r9'OLD)
_SkipExchange:				;     }
	add	%r5, %r0, %r7		;     j = next_j;
	j	_InnerLoop
	add	%r8, %r0, %r9		;     value_j = value_next_j;
_ExitInnerLoop:					;   }
	j	_OuterLoop
	add	%r5, %r10, %r2		;   j = array+startIndex;
_ExitOuterLoop:				; }
	;; End own code



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
	.data.32	364
	.data.32	56
	.data.32	735
	.data.32	23
	.data.32	76
	.data.32	76
	.data.32	92
	.data.32	3475
	.data.32	43
	.data.32	77
	.data.32	78
	.data.32	78
	.data.32	2346
	.data.32	862
	.data.32	47
	.data.32	5687
	.data.32	34
	.data.32	47
	.data.32	775
	.data.32	457
	.data.32	347
	.data.32	234
	.data.32	55
	.data.32	45
	.data.32	685
	.data.32	75
	.data.32	796
	.data.32	567
	.data.32	764
	.data.32	568
	.data.32	95
	.data.32	56
	.data.32	76
	.data.32	768
	.data.32	65
	.data.32	78
	.data.32	7890
	.data.32	357
	.data.32	76
	.data.32	68
	.data.32	79
	.data.32	57
	.data.32	769
	.data.32	567
	.data.32	45
	.data.32	987
	.data.32	76
	.data.32	987
	.data.32	68
	.data.32	897

