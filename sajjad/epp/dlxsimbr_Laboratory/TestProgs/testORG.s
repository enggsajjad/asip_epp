	.section .data
_data:	
	.data.32	42
	.data.32	23
	.data.8		1
	.data.8		2
	.data.16	3
_result:.data.32	0
	.data.32	0

	.section .text
_main:	lhi	r1, (_data >> 16)
	ori	r1, r1, (_data & 0xFFFF)

	lw	r2, 0(r1)
	lw	r3, 4(r1)
	nop
	add	r4, r2, r3

	lhi	r5, (_result >> 16)
	ori	r5, r5, (_result & 0xFFFF)

	sw	0(r5), r4

	.org 		0x50	
_test:
	addi	r4, r4, $(10)
	sw	4(r5), r4

	trap #0
