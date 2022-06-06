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


; *****************************************************************************************

_bubbleSort:
	add	%r30, %r0, %r29		; Establish new frame pointer 
	subi	%r29, %r29, $(8 + 10*4)	; Adjust Stack Pointer; 8 for oldFP+RET and x*4 for saved Registers

	nop
	nop
	nop

	sw	0(%r29), %r30		; Save the frame pointer 
	sw	4(%r29), %r31		; Save the return address 

	; Save Registers 
	lhi	%r1, $(_array*65536)&0xffff
	lw	%r2, 0(%r30)
	lw	%r3, 4(%r30)
	sw	 8(%r29), %r1		; r1 is used for comparing-results and for temporary stuff.
	sw	12(%r29), %r2		; r2 is the parameter value "startIndex". (later "innerLoopStart")
	sw	16(%r29), %r3		; r3 is the parameter value "endIndex".	(later "innerLoopEnd")
	slli	%r3,%r3,$2
	addui	%r1, %r1, $(_array&0xffff)
	slli	%r2,%r2,$2
	sw	36(%r29), %r8		; r8 is "value_j".
	addui	%r3,%r3,$4		; innerLoopEnd++;
	sw	24(%r29), %r5		; r5 is the loop-variable "j".
	addu	%r2,%r2,%r1
	sw	32(%r29), %r7		; r7 is "variable_xchanged".
	addu	%r3,%r3,%r1
	addi 	%r7,%r0,$1

	j	while1_start
	sw	40(%r29), %r9		; r9 is "value_next_j".
	;nop

while1_save_start:
	sw	0(%r5),%r1	;       *next_j = value_j;	

while1_start:
	addu	%r5,%r0,%r2	; j = innerLoopStart
	subui	%r3,%r3,$4	; innerLoopEnd--;
	beqz	%r7, while1_end
	add	%r7,%r0,%r0

	lw	%r8,0(%r5)	;   value_j = *j;

while2_mit_r7_start:
	lw	%r9,4(%r5)	;     value_next_j = *next_j;
	bgeu	%r5,%r3,while1_start	;   while (j < innerLoopEnd) {
	addui	%r5,%r5,$4	;     j++;
	addu	%r1,%r0,%r8	;       tmp = value_j;
	bgeu	%r9,%r8,while2_mit_r7_start	;     if (value_next_j < value_j) {
	addu	%r8,%r0,%r9	;       value_j = value_next_j;

;	addu	%r8,%r0,%r1	;       value_j = tmp;
;	sw	0(%r5),%r8	;       *next_j = value_j;
	lw	%r9,4(%r5)
	bgeu	%r5,%r3,while1_save_start	;   while (j < innerLoopEnd) {
	sw	-4(%r5),%r9	;       *j = value_next_j;

	j	while2_x_start	;   }
	addi	%r7,%r0,$1
;	nop

while2_save_start:
	sw	-4(%r5),%r1	;       *next_j = value_j;	

while2_start:
	lw	%r9,4(%r5)	;     value_next_j = *next_j;
	bgeu	%r5,%r3,while1_start	;   while (j < innerLoopEnd) {
	addui	%r5,%r5,$4	;     j++;
	addu	%r1,%r0,%r8	;       tmp = value_j;
	bgeu	%r9,%r8,while2_start	;     if (value_next_j < value_j) {
	addu	%r8,%r0,%r9	;       value_j = value_next_j;

	lw	%r9,4(%r5)	;     value_next_j = *next_j;
	bgeu	%r5,%r3,while1_save_start	;   while (j < innerLoopEnd) {
	sw	-4(%r5),%r9	;       *j = value_next_j;

while2_x_start:
	addui	%r5,%r5,$4	;     j++;
	bgeu	%r9,%r1,while2_save_start	;     if (value_next_j < value_j) {
	addu	%r8,%r0,%r9	;       value_j = value_next_j;

	lw	%r9,8(%r5)	;     value_next_j = *next_j;
	bgeu	%r5,%r3,while1_save_start	;   while (j < innerLoopEnd) {
	sw	-4(%r5),%r9	;       *j = value_next_j;


	addui	%r5,%r5,$4	;     j++;
	bgeu	%r9,%r1,while2_save_start	;     if (value_next_j < value_j) {
	addu	%r8,%r0,%r9	;       value_j = value_next_j;

	lw	%r9,8(%r5)	;     value_next_j = *next_j;
	bgeu	%r5,%r3,while1_save_start	;   while (j < innerLoopEnd) {
	sw	-4(%r5),%r9	;       *j = value_next_j;


	addui	%r5,%r5,$4	;     j++;
	bgeu	%r9,%r1,while2_save_start	;     if (value_next_j < value_j) {
	addu	%r8,%r0,%r9	;       value_j = value_next_j;

	lw	%r9,8(%r5)	;     value_next_j = *next_j;
	bgeu	%r5,%r3,while1_save_start	;   while (j < innerLoopEnd) {
	sw	-4(%r5),%r9	;       *j = value_next_j;


	addui	%r5,%r5,$4	;     j++;
	bgeu	%r9,%r1,while2_save_start	;     if (value_next_j < value_j) {
	addu	%r8,%r0,%r9	;       value_j = value_next_j;

	lw	%r9,8(%r5)	;     value_next_j = *next_j;
	bgeu	%r5,%r3,while1_save_start	;   while (j < innerLoopEnd) {
	sw	-4(%r5),%r9	;       *j = value_next_j;


	addui	%r5,%r5,$4	;     j++;
	bgeu	%r9,%r1,while2_save_start	;     if (value_next_j < value_j) {
	addu	%r8,%r0,%r9	;       value_j = value_next_j;

	lw	%r9,8(%r5)	;     value_next_j = *next_j;
	bgeu	%r5,%r3,while1_save_start	;   while (j < innerLoopEnd) {
	sw	-4(%r5),%r9	;       *j = value_next_j;


	j	while2_x_start	;   }
	nop
	

while1_end:


; *****************************************************************************************

	lw	%r30, 0(%r29)		; Restore frame pointer
	lw	%r31, 4(%r29)		; Restore return address

	; Restore the saved registers
	lw	%r1, 8(%r29)
	lw	%r2, 12(%r29)
	lw	%r3, 16(%r29)
;	lw	%r4, 20(%r29)
	lw	%r5, 24(%r29)
;	lw	%r6, 28(%r29)
	lw	%r7, 32(%r29)
	lw	%r8, 36(%r29)
	lw	%r9, 40(%r29)
;	lw	%r10,48(%r29)

	add	%r29, %r0, %r30		; Restore stack pointer

	; Return
	jr	%r31
	nop


_exit:	nop
	nop
	trap	#0


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

