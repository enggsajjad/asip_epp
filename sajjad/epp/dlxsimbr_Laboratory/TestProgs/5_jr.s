
_main:	addi	r21, r0, 5
	addi	r22, r0, 9
	addi	r23, r0, 2	; 0 <= r3 <= 5

	addi	r24, r0,  (_label1 / 0x10000)
	lsoi	r24, r24, (_label1 % 0x10000)

	llsi	r23, r23, 3
	add	r24, r24, r23
	jpr	r24
	nop


_label1:jp	_mark0
	nop
	jp	_mark1
	nop
	jp	_mark2
	nop
	jp	_mark3
	nop
	jp	_mark4
	nop
	jp	_mark5
	nop

_mark0:	and	r25, r21, r22
	jp	_label2
	nop
	
_mark1:	or	r25, r21, r22
	jp	_label2
	nop
	
_mark2:	xor	r25, r21, r22
	jp	_label2
	nop
	
_mark3:	add	r25, r21, r22
	jp	_label2
	nop
	
_mark4:	sub	r25, r21, r22
	jp	_label2
	nop
	
_mark5:	elt	r25, r21, r22
	jp	_label2
	nop

_label2:trap	#0
