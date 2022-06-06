
_main:	addi	r11, r0, 5
	addi	r12, r0, 9
	trp	_test2
	addi	r11, r11, 3
	addi	r12, r12, 3
	jp	_test3

_test2:
	addi	r11, r11, 2
	addi	r12, r12, 2
	reti
_test3:
	nop
	trap #0