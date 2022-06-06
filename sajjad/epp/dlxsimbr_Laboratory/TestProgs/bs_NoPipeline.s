
	xor	r4, r4, r4
	xor	r5, r5, r5
	xor	r6, r6, r6
	addi	r4, r0, (0xFFFFC / 0x10000)
	addi	r5, r0, (0xFFFFC / 0x10000)

	lsoi	r4, r4, (0xFFFFC%0x10000)
	lsoi	r5, r5, (0xFFFFC%0x10000)

	sw	-4(r5), r4
	sw	-8(r5), r3
	addi	r5, r4, $-8

	jpl	_main	
	nop
	sw	0(r5), r21
	jpl	_exit
	nop

_main:
	; Call BubbleSort
	subi	r5, r5, 8		; create place for the parameters
	sw	0(r5), r0		; "const unsigned int startIndex"
	nop
	addi	r21, r0, 19
	sw	4(r5), r21		; "const unsigned int endIndex"
	jpl	_bubbleSort
	nop
	addi	r5, r5, 8		; clean up place for parameters

	lw	r4, 0(r5)		; Restore frame pointer
	lw	r3, 4(r5)		; Restore return address
	lw	r21,  8(r5)		; Restore r1
	add	r5, r0, r4		; Restore stack pointer

	jpl	_exit
	nop


_bubbleSort:
	add	r4, r0, r5		; Establish new frame pointer 
	subi	r5, r5, (8 + 10*4)	; Adjust Stack Pointer; 8 for oldFP+RET and x*4 for saved Registers
	sw	0(r5), r4		; Save the frame pointer 
	sw	4(r5), r3		; Save the return address 

	; Save Registers 
	sw	 8(r5), r21		; r1 is used for comparing-results and for temporary stuff.
	sw	12(r5), r22		; r2 is the parameter value "startIndex".
	sw	16(r5), r23		; r3 is the parameter value "endIndex".
	sw	20(r5), r24		; r4 is the loop-variable "i".
	sw	24(r5), r25		; r5 is the loop-variable "j".
	sw	28(r5), r26		; r6 is the loop-end "innerLoopEnd".
	sw	32(r5), r27		; r7 is "next_j".
	sw	36(r5), r28		; r8 is "value_j".
	sw	40(r5), r29		; r9 is "value_next_j".
	sw	44(r5), r20		; r10 is the start address of 'array'.
	nop

	; Load Parameters
	lw	r22, 0(r4)
	lw	r23, 4(r4)

	; Initialize start address of 'array'
	addi	r20, r0, (_array / 0x10000)
	lsoi	r20, r20, (_array % 0x10000)

	;;;;;;;;;;;;;;;;;;;;;;;;
	;; Add your code here ;;
	;;;;;;;;;;;;;;;;;;;;;;;;
	
	; innerLoopEnd = array+endIndex
	llsi r21, r23, 2
	add r26, r20, r21
	; i = startIndex;
	add r24, r0, r22
outer_loop_begin:
	; while (i < endIndex) {
	eltu r21, r24, r23
	brz r21, outer_loop_end
	nop
	;   j = array+startIndex;
	llsi r21, r22, 2
	add r25, r20, r21
	;   value_j = *j;
	lw r28, 0(r25)
	;   next_j = j;
	add r27, r0, r25
	;   while (j < innerLoopEnd) {
inner_loop_begin:
	eltu r21, r25, r26
	brz r21, inner_loop_end
	nop
	;     next_j++;
	addi r27, r27, 4
	;     value_next_j = *next_j;
	lw r29, 0(r27)
	;     if (value_next_j < value_j) {
	eltu r21, r29, r28
	brz r21, endif
	nop
	;       *j = value_next_j;
	sw 0(r25), r29
	;       *next_j = value_j;
	sw 0(r27), r28
	;       tmp = value_j;
	add r21, r0, r28
	;       value_j = value_next_j;
	add r28, r0, r29
	;       value_next_j = tmp;
	add r29, r0, r21
	;     }
endif:
	;     j = next_j;
	add r25, r0, r27
	;     value_j = value_next_j;  
	add r28, r0, r29
	;   }
	jp inner_loop_begin
	nop
inner_loop_end:
	;   innerLoopEnd--;
	subui r26, r26, 4
	;   i++;
	addi r24, r24, 1
	; }
	jp outer_loop_begin
	nop
outer_loop_end:


	lw	r4, 0(r5)		; Restore frame pointer
	lw	r3, 4(r5)		; Restore return address

	; Restore the saved registers
	lw	r21, 8(r5)
	lw	r22, 12(r5)
	lw	r23, 16(r5)
	lw	r24, 20(r5)
	lw	r25, 24(r5)
	lw	r26, 28(r5)
	lw	r27, 32(r5)
	lw	r28, 36(r5)
	lw	r29, 40(r5)
	lw	r20,48(r5)

	add	r5, r0, r4		; Restore stack pointer

	; Return
	jpr	r3
	nop


_exit:	
	trap #0	
	;nop
	;nop
	

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

