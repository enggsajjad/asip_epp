
_main:	addi	r11, r10, 5
	addi	r12, r10, 9
	brnz	r11, _test1
	addi	r12, r12, 9
	trp	_test2
	jp	_test3
_test1:
	lrs	r16, r11, r2
	lls	r17, r11, r2
_test2:
	addi	r11, r11, 2
	addi	r12, r12, 2
	reti
_test3:
	nop
	trap #0