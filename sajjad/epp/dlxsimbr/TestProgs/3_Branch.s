
_main:	addi	r21, r0, 5
	addi	r22, r0, 9

	elt	r23, r21, r22
	brz	r23, _label1
	nop
	add	r24, r0, r22
	jp	_label2
	nop

_label1:add	r24, r0, r21

_label2:nop	; ... compute anything with the result in r4 ...
	trap #0

