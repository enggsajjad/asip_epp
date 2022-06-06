
_main:	lhi	r11, (_data >> 16)
	ori	r11, r11, (_data & 0xFFFF)

	lw	r12, 0(r11)
	;nop
	addi	r12, r12, 1
	addi	r12, r12, 3
	sw	4(r11), r12
	addi	r12, r12, 1
	addi	r12, r12, 3

	sw	8(r11), r12
	
	trap #0


_data:	.data.32	42
	.data.32	23
_result:.data.32	0
