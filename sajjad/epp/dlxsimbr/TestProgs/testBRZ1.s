
_main:	addi	r11, r10, 5
	addi	r12, r10, 9
	brz	r10, _test1
	addi	r12, r12, 9
	addi	r11, r11, 5

_test1:
	or	r13, r11, r12
	jp	_test2
	llsi	r15, r11, 2
	and	r14, r11, r12
	lrs	r16, r11, r12
	lls	r17, r11, r12
_test2:
	nop
	trap #0