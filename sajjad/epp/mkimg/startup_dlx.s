.text
	.align 2
	.globl	_start
	.type	_start, @function
_start:
	; load stack pointer
	addi	r5, r0,  %hi(REPLACE)
	lsoi	r5, r5, %lo(REPLACE)

	addi	r16, r0,  %hi(_main)
	lsoi	r16, r16, %lo(_main)

	subi	r5, r5, #4			; push link reg
	sw	(r5), r3

	ori	r1, r1, #0x00000300		; enable interrupt

	jprl	r16

	lw	r3, (r5)			; pop link reg
	addi	r5, r5, #4

	trap #0

