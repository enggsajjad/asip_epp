	.addressing	Word

	.section	.text

_main:	addi	%r1, %r0, $5		; r1 := A;
	addi	%r2, %r0, $7		; r2 := B;
	add	%r3, %r0, %r0		; r3 := 0;     später gilt dann r3 := A*B;
	nop

_loop:	andi	%r4, %r1, $1		; r4 merkt sich, ob A gerade oder ungerade ist.
	srli	%r1, %r1, $1		; A /= 2;
	nop
	nop
	beqz	%r4, _skipAdd
	nop
	add	%r3, %r3, %r2		; C := C + B
_skipAdd:
	slli	%r2, %r2, $1		; B *= 2;
	bnez	%r1, _loop
	nop
	nop
	nop
	sw	0(%r0), %r3
	nop
	nop
	nop


