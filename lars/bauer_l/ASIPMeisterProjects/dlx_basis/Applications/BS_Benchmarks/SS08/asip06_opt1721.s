	.addressing	Word
	.section	.text
_main:
	; Initialize Stack Pointer
	lhi	%r29, $(((2048-4)*65536)&0xffff)	; MemSize is 2048
	nop
	nop
	nop
	addui	%r29, %r29, $((2048-4)&0xffff)
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
	lhi	%r10, $(_array/65536)&0xffff
	nop
	nop
	nop
	addui	%r10, %r10, $(_array&0xffff)
	nop
	nop
	nop

	; load data
	lw	%r8, 0(%r10)
	lw	%r9, 4(%r10)	
	lw	%r1, 8(%r10)	
	lw	%r11, 12(%r10)
	lw	%r12, 16(%r10)
	lw	%r13, 20(%r10)
	lw	%r14, 24(%r10)
	lw	%r15, 28(%r10)
	lw	%r16, 32(%r10)
	lw	%r17, 36(%r10)
	lw	%r18, 40(%r10)
	lw	%r19, 44(%r10)
	lw	%r20, 48(%r10)
	lw	%r21, 52(%r10)
	lw	%r22, 56(%r10)
	lw	%r23, 60(%r10)
	lw	%r24, 64(%r10)
	lw	%r25, 68(%r10)
	lw	%r26, 72(%r10)
	lw	%r27, 76(%r10)
	addu	%r28, %r10, %r0
	addu	%r10, %r1, %r0

_Loop1:
	bgeu	%r4, %r3, _End1
	nop

	bgeu	%r9, %r8, _Ziel1
	nop
	addu	%r9, %r0, %r8
	addu 	%r8, %r0, %r9	; OLD r9
	nop
	nop
_Ziel1:
	bgeu	%r10, %r9, _Ziel2
	nop
	addu 	%r10, %r0, %r9
	addu 	%r9, %r0, %r10
	nop
	nop
_Ziel2:
	bgeu	%r11, %r10, _Ziel3
	nop
	addu 	%r11, %r0, %r10
	addu 	%r10, %r0, %r11
	nop
	nop
_Ziel3:
	bgeu	%r12, %r11, _Ziel4
	nop
	addu 	%r12, %r0, %r11
	addu 	%r11, %r0, %r12	
	nop
	nop
_Ziel4:
	bgeu	%r13, %r12, _Ziel5
	nop
	addu 	%r13, %r0, %r12
	addu 	%r12, %r0, %r13	
	nop
	nop
_Ziel5:
	bgeu	%r14, %r13, _Ziel6
	nop
	addu 	%r14, %r0, %r13
	addu 	%r13, %r0, %r14	
	nop
	nop
_Ziel6:
	bgeu	%r15, %r14, _Ziel7
	nop
	addu 	%r15, %r0, %r14
	addu 	%r14, %r0, %r15	
	nop
	nop
_Ziel7:
	bgeu	%r16, %r15, _Ziel8
	nop
	addu 	%r16, %r0, %r15
	addu 	%r15, %r0, %r16
	nop
	nop
_Ziel8:
	bgeu	%r17, %r16, _Ziel9
	nop
	addu 	%r17, %r0, %r16
	addu 	%r16, %r0, %r17
	nop
	nop
_Ziel9:
	bgeu	%r18, %r17, _Ziel10
	nop
	addu 	%r18, %r0, %r17
	addu 	%r17, %r0, %r18	
	nop
	nop
_Ziel10:
	bgeu	%r19, %r18, _Ziel11
	nop
	addu 	%r19, %r0, %r18
	addu 	%r18, %r0, %r19	
	nop
	nop
_Ziel11:
	bgeu	%r20, %r19, _Ziel12
	nop
	addu 	%r20, %r0, %r19
	addu 	%r19, %r0, %r20
	nop
	nop
_Ziel12:
	bgeu	%r21, %r20, _Ziel13
	nop
	addu 	%r21, %r0, %r20
	addu 	%r20, %r0, %r21
	nop
	nop
_Ziel13:
	bgeu	%r22, %r21, _Ziel14
	nop
	addu 	%r22, %r0, %r21
	addu 	%r21, %r0, %r22	
	nop
	nop
_Ziel14:
	bgeu	%r23, %r22, _Ziel15
	nop
	addu 	%r23, %r0, %r22
	addu 	%r22, %r0, %r23	
	nop
	nop
_Ziel15:
	bgeu	%r24, %r23, _Ziel16
	nop
	addu 	%r24, %r0, %r23
	addu 	%r23, %r0, %r24	
	nop
	nop
_Ziel16:
	bgeu	%r25, %r24, _Ziel17
	nop
	addu 	%r25, %r0, %r24
	addu 	%r24, %r0, %r25	
	nop
	nop
_Ziel17:
	bgeu	%r26, %r25, _Ziel18
	nop
	addu 	%r26, %r0, %r25
	addu 	%r25, %r0, %r26	
	nop
	nop
_Ziel18:
	bgeu	%r27, %r26, _Ziel19
	nop
	addu 	%r27, %r0, %r26
	addu 	%r26, %r0, %r27	
_Ziel19:

	j  _Loop1
	;   i++;
	addui	%r4, %r4, $1

_End1:
	; save data
	addu	%r1, %r10, %r0
	addu	%r10, %r28, %r0
	nop
	nop
	nop
	sw	0(%r10), %r8
	sw	4(%r10), %r9
	sw	8(%r10), %r1
	sw	12(%r10), %r11
	sw	16(%r10), %r12
	sw	20(%r10), %r13
	sw	24(%r10), %r14
	sw	28(%r10), %r15
	sw	32(%r10), %r16
	sw	36(%r10), %r17
	sw	40(%r10), %r18
	sw	44(%r10), %r19
	sw	48(%r10), %r20
	sw	52(%r10), %r21
	sw	56(%r10), %r22
	sw	60(%r10), %r23
	sw	64(%r10), %r24
	sw	68(%r10), %r25
	sw	72(%r10), %r26
	sw	76(%r10), %r27
	nop

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
;	trap #0


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

