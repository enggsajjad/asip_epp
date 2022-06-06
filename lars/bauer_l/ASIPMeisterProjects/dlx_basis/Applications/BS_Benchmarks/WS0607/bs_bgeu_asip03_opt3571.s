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
	sw	8(%r29), %r1		; Save r1, which will be overwritten in main
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
	addi	%r29, %r29, $8		; clean up place for parameters

	nop
	nop
	nop
	lw	%r30, 0(%r29)		; Restore frame pointer
	lw	%r31, 4(%r29)		; Restore return address
	lw	%r1,  8(%r29)		; Restore r1
	nop
	add	%r29, %r0, %r30		; Restore stack pointer
	jal	_exit
	nop

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
_bubbleSort:

	;;Optimierung beginnt hier
	;init part 1
	subi	%r29, %r29, $(8 + 10*4)	; Adjust Stack Pointer; 8 for oldFP+RET and x*4 for saved Registers
	add	%r30, %r0, %r29		;;r29'OLD; Establish new frame pointer
	; Initialize start address of 'array' part 1
	lhi	%r10, $(_array/65536)&0xffff
	; Save Registers 2
	addi	%r11,	%r0,	$4	;;	r11 = 4 (for endIndex)
	;nop				;RAW r29
	sw	44(%r29), %r10		;;r10'OLD; r10 is the start address of 'array'.
	;init part 2
	sw	4(%r29), %r31		; Save the return address 
	sw	0(%r29), %r30		; Save the frame pointer 

	; Save Registers 1
	sw	 8(%r29), %r1		; r1 is used for comparing-results and for temporary stuff.
	sw	12(%r29), %r2		; r2 is the parameter value "startIndex".
	sw	16(%r29), %r3		; r3 is the parameter value "endIndex".
	sw	20(%r29), %r4		; r4 is the loop-variable "i".
	sw	24(%r29), %r5		; r5 is the loop-variable "j".
	sw	28(%r29), %r6		; r6 is the loop-end "innerLoopEnd".
	sw	32(%r29), %r7		; r7 is "next_j".
	sw	36(%r29), %r8		; r8 is "value_j".
	




	; Load Parameters
	sw	40(%r29), %r9		; r9 is "value_next_j".
	lw	%r2, 0(%r30)
	lw	%r3, 4(%r30)
	

	;;;;;;;;;;;;;;;;;;;;;;;;
	;; Add your code here ;;
	;;;;;;;;;;;;;;;;;;;;;;;;
	
	;addi	%r11,	%r0,	$4	;;	r11 = 4 (for endIndex)
	addi 	%r12,	%r0,	$4	;;	r12 = 4 (for startIndex)
	add 	%r4, 	%r0,	%r2	;	r4 = startIndex;
        addui	%r10, %r10, $(_array&0xffff)
	mult	%r11,	%r11,	%r3	;;	r11 = bit length of this array
	; Initialize start address of 'array' part 2
        mult 	%r12,	%r12,	%r2	;;	r12 = bit position of startIndex in array
	nop
	add	%r6,	%r10,	%r11	;	innerLoopEnd = array+endIndex
_while1:
	add	%r5, 	%r10,	%r12	;	j = array+startIndex;
	bgeu	%r4, 	%r3,	_wend1	;	while (i < endIndex) {
	;add	%r5, 	%r10,	%r12	;	j = array+startIndex;
	addi 	%r4, 	%r4,	$1	;	i++;
	nop
	nop
	lw 	%r8, 	0(%r5)		;	value_j = *j;
	add	%r7,	%r0,	%r5	;	next_j = j;
	nop				;	RAW r5: near _wend2
_while2:
	bgeu	%r5,	%r6,	_wend2	;	while (j < innerLoopEnd) {
	nop				;	BGEU
	lw 	%r9,	4(%r7)		;;	r7'OLD	;value_next_j = *next_j;
	addi	%r7,	%r7,	$4	;	next_j++;
        add	%r1,	%r0,	%r8	;       tmp = value_j;moved from if loop
	nop				; 	nop for r9 RAW
_if1:
	bgeu 	%r9,	%r8,	_ifend1	;	if (value_next_j < value_j) {
	nop				;	BGEU
	sw	0(%r5),	%r9		;       *j = value_next_j;
	sw	0(%r7),	%r8		;	*next_j = value_j;
	add	%r9, 	%r0,	%r1	;       value_next_j = tmp;
	add	%r8,	%r0,	%r9	;;	r9'OLD;value_j = value_next_j;
_ifend1:				;	}

	add 	%r5,	%r0,	%r7	;	j = next_j;
	j 	_while2			;	jump before add command
	add 	%r8,	%r0, 	%r9	;	value_j = value_next_j;
					;	}
_wend2:
	j 	_while1			;	}
	subi	%r6,	%r6,	$4	;	innerLoopEnd--;!!!
_wend1:
	;;end of your code

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

