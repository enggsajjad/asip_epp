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

	; Hier gehts LOS!

        subi    %r29, %r29, $(8 + 10*4) ; Adjust Stack Pointer; 8 for oldFP+RET and x*4 for saved Registers
		add     %r30, %r0, %r29  	; Establish new frame pointer,  r29 old
		; ReadCycle 3
		nop 
		nop
        sw      4(%r29), %r31           ; Save the return address
        sw      0(%r29), %r30           ; Save the frame pointer




	; Save Registers
        sw       8(%r29), %r1           ; r1 is used for comparing-results and for temporary stuff.
        sw      12(%r29), %r2           ; r2 is the parameter value "startIndex".
        sw      16(%r29), %r3           ; r3 is the parameter value "endIndex".
        sw      20(%r29), %r4           ; r4 is the loop-variable "i".
	sw      24(%r29), %r5           ; r5 is the loop-variable "j".
        sw      28(%r29), %r6           ; r6 is the loop-end "innerLoopEnd".
        sw      32(%r29), %r7           ; r7 is "next_j".
        sw      36(%r29), %r8           ; r8 is "value_j".
        sw      44(%r29), %r10          ; r10 is the start address of 'array'.
        sw      40(%r29), %r9           ; r9 is "value_next_j".


        ; Initialize start address of 'array'
        lhi     %r10, $(_array/65536)&0xffff
		; Load Parameters
        lw      %r3, 4(%r30)
        lw      %r2, 0(%r30)
		nop
        addui   %r10, %r10, $(_array&0xffff)




	addu %r7, %r3, %r0				; endIndex -> r7
	nop
	nop
	lw %r8, 0(%r10)					; value_j = *j; r5 enthaelt array + startIndex, startIndex ist aber 0 -> r10 nehmen statt r5
	lw %r9, 4(%r10)					; value_next_j = *next_j; ACHTUNG OFFSET 4 entspricht nach n. Anw. 
							; Vorverarbeitung und Duplizierung, r5 war eigentlich r7, siehe *
							; r5 enthaelt array + startIndex, startIndex ist aber 0 -> r10 nehmen statt r5
	addu %r5, %r10, %r2				;  j = array+startIndex
	
	beqz %r7, _retlabel
_outerLoop:
		addu %r1, %r7, %r0
		subui %r7, %r7, $1			; endIndex--, fuer aeussere Schleife
		addu %r6, %r0, %r0			; initialisiere "Vertauschungszaehler" mit 0
		;nop ; r1
_innerLoop:
		bgeu %r9, %r8, _afterif		; if (value_next_j < value_j) {
			subui %r1, %r1, $1
			sw 0(%r5), %r9			; *j = value_next_j; 
			sw 4(%r5), %r8			; *next_j = value_j; r5 war vorher r7 -> r5+4
			addui %r6, %r6, $1		; Tausch durchgefuehrt -> Zaehler erhoehen	
			lw %r9, 8(%r5)			; value_next_j = *next_j; ACHTUNG OFFSET 4 entspricht nach n. Anw. (*);
			bnez %r1, _innerLoop
			addui %r5, %r5, $4		; j = next_j;
_afterif:               
		addu %r8, %r9, %r0			; value_j = value_next_j
							; %r9 old beim letzten Durchlauf der inneren Schleife mit Vertauschung -> schadet nicht
		lw %r9, 8(%r5)				; value_next_j = *next_j; ACHTUNG OFFSET 4 entspricht nach n. Anw. (*);
							; %r5 old bei jedem letzten Durchlauf der inneren Schleife mit Vertauschung -> schadet nicht
	
		bnez %r1, _innerLoop
		addui %r5, %r5, $4			; j = next_j;

_innerloopend:
	
	lw %r8, 0(%r10)					; value_j = *j; r5 enthaelt array + startIndex, startIndex ist aber 0 -> r10 nehmen statt r5
	beqz %r6, _retlabel				; wenn in der letzten inneren Schleife keine Vertauschungen stattfanden
							; -> Liste sortiert -> rausspringen
	lw %r9, 4(%r10)					; value_next_j = *next_j; ACHTUNG OFFSET 4 entspricht nach n. Anw. 
							; Vorverarbeitung und Duplizierung, r5 war eigentlich r7, siehe *
							; r5 enthaelt array + startIndex, startIndex ist aber 0 -> r10 nehmen statt r5
							; -> Liste sortiert -> rausspringen
	bnez %r7, _outerLoop
	addu %r5, %r10, %r2				;  j = array+startIndex



_retlabel:


; ADD YOUR CODE HERE


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
	;trap #0


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
