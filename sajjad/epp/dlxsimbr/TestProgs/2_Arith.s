
_main:	addi	r1, r0, 5
	addi	r2, r0, 9
	brz	r1, _test1
	addi	r2, r2, 9
	jp	_test2
_test1:
	or	r3, r1, r2
	and	r4, r1, r2
	llsi	r5, r1, 2
	lrs	r6, r1, r2
	lls	r7, r1, r2
_test2:
	nop
	trap #0