	.section	.text
	.addressing	Word

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
	sw	0(r5), r21
	jpl	_exit

_main:
	; Call BubbleSort
	SUBI	R5, R5, $8		; create place for the parameters
	SW	0(R5), R0		; "const unsigned int startIndex"
	ADDI	R21, R0, $19
	SW	4(R5), R21		; "const unsigned int endIndex"
	JPL	_bubbleSort
	ADDI	R5, R5, $8		; clean up place for parameters

	LW	R4, 0(R5)		; Restore frame pointer
	LW	R3, 4(R5)		; Restore return address
	LW	R21,  8(R5)		; Restore r1
	ADD	R5, R0, R4		; Restore stack pointer

	JPL	_exit
	NOP


_bubbleSort:
	ADD	R4, R0, R5		; Establish new frame pointer 
	SUBI	R5, R5, $(8 + 10*4)	; Adjust Stack Pointer; 8 for oldFP+RET and x*4 for saved Registers
	SW	0(R5), R4		; Save the frame pointer 
	SW	4(R5), R3		; Save the return address 

	; Save Registers 
	SW	 8(R5), R21		; r1 is used for comparing-results and for temporary stuff.
	SW	12(R5), R22		; r2 is the parameter value "startIndex".
	SW	16(R5), R23		; r3 is the parameter value "endIndex".
	SW	20(R5), R24		; r4 is the loop-variable "i".
	SW	24(R5), R25		; r5 is the loop-variable "j".
	SW	28(R5), R26		; r6 is the loop-end "innerLoopEnd".
	SW	32(R5), R27		; r7 is "next_j".
	SW	36(R5), R28		; r8 is "value_j".
	SW	40(R5), R29		; r9 is "value_next_j".
	SW	44(R5), R20		; r10 is the start address of 'array'.


	; Load Parameters
	LW	R22, 0(R4)
	LW	R23, 4(R4)

	; Initialize start address of 'array'
	ADDI	R20, R0, $(_array / 0x10000)
	LSOI	R20, R20, $(_array % 0x10000)

	;;;;;;;;;;;;;;;;;;;;;;;;
	;; Add your code here ;;
	;;;;;;;;;;;;;;;;;;;;;;;;
	; innerLoopEnd = array+endIndex
	LLSI R21, R23, $2
	ADD R26, R20, R21
	; i = startIndex;
	ADD R24, R0, R22
outer_loop_begin:
	; while (i < endIndex) {
	BGEU R24, R23, outer_loop_end
	;   j = array+startIndex;
	LLSI R21, R22, $2
	ADD R25, R20, R21
	;   value_j = *j;
	LW R28, 0(R25)
	;   next_j = j;
	ADD R27, R0, R25
	;   while (j < innerLoopEnd) {
inner_loop_begin:
	BGEU R25, R26, inner_loop_end
	;     next_j++;
	ADDI R27, R27, $4
	;     value_next_j = *next_j;
	LW R29, 0(R27)
	NOP
	;     if (value_next_j < value_j) {
	BGEU R29, R28, endif
	NOP
	;       *j = value_next_j;
	SW 0(R25), R29
	;       *next_j = value_j;
	SW 0(R27), R28
	;       tmp = value_j;
	ADD R21, R0, R28
	;       value_j = value_next_j;
	ADD R28, R0, R29
	;       value_next_j = tmp;
	ADD R29, R0, R21
	;     }
endif:
	;     j = next_j;
	ADD R25, R0, R27
	;     value_j = value_next_j;  
	ADD R28, R0, R29
	;   }
	JP inner_loop_begin
inner_loop_end:
	;   innerLoopEnd--;
	SUBI R26, R26, $4
	;   i++;
	ADDI R24, R24, $1
	; }
	JP outer_loop_begin
outer_loop_end:
	

	;;;;;;;;;;;;;;;;;;;;;;;;
	;; Add your code here ;;
	;;;;;;;;;;;;;;;;;;;;;;;;
	


	LW	R4, 0(R5)		; Restore frame pointer
	LW	R3, 4(R5)		; Restore return address

	; Restore the saved registers
	LW	R21, 8(R5)
	LW	R22, 12(R5)
	LW	R23, 16(R5)
	LW	R24, 20(R5)
	LW	R25, 24(R5)
	LW	R26, 28(R5)
	LW	R27, 32(R5)
	LW	R28, 36(R5)
	LW	R29, 40(R5)
	LW	R20,48(R5)

	ADD	R5, R0, R4		; Restore stack pointer

	; Return
	JPR	R3
_exit:
	trap #0

	.section	.data
	.addressing	Word

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

