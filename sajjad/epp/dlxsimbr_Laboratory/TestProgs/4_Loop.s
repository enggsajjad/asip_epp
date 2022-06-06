
_main:	addi	r21, r0, 5
	addi	r22, r0, 9
	add	r23, r0, r0

_loop:	andi	r24, r1, 1
	brz	r24, _skipAdd
	nop
	add	r23, r23, r22

_skipAdd:arsi	r21, r21, 1
	llsi	r22, r22, 1
	brnz	r21, _loop
	nop
	
	trap #0