
_main:	addi	r1, r0, 5
	brz 	r0, _test2
	addi	r1, r0, 9
	addi	r2, r0, 3

_test2:
	addi	r1, r1, 2
	brnz	r0, _test3
	addi	r1, r1, 2
	addi	r2, r2, 2
_test3:
	nop
	trap #0