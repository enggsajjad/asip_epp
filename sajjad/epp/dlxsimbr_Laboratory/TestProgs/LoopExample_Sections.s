	.section	.text
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
	.addressing	Word

_main:	
	lw	r27, _C(r0)
	addi	r21, r0, 10
	addi	r27, r27, 5

_loop:	
	lw	r26, _B(r24)
	subi	r21, r21, 1
	add	r26, r26, r27
	sw	_A(r24), r26
	addi	r24, r24, 4
	brnz	r21, _loop
	nop


	.section	.text
	.addressing	Word
	nop
_exit:
	nop
	nop
	trap	#0	; HALT


	.section	.data
	.addressing	Word

_A:	
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0

_B:	
	.data.32	1
	.data.32	2
	.data.32	3
	.data.32	4
	.data.32	5
	.data.32	6
	.data.32	7
	.data.32	8
	.data.32	9
	.data.32	10

_C:	
	.data.32	42

