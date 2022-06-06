	.addressing	Word

	.section	.text
main:	addi	%r1, %r0, $5		; r1 := A;
	addi	%r2, %r0, $7		; r2 := B;
	add	%r3, %r0, %r0		; r3 := 0;     sp�ter gilt dann r3 := A*B;
	sll	%r0, %r0, %r0		; NOP

	andi	%r4, %r1, $1		; r4 merkt sich, ob A gerade oder ungerade ist.
	sll	%r0, %r0, %r0		; NOP

loop:	srli	%r1, %r1, $1		; A /= 2;
	slli	%r2, %r2, $1		; B *= 2;
	beqz	%r4, skipAdd
	nop
	nop
	add	%r3, %r3, %r2		; C := C + B'OLD;  // B'OLD deutet darauf hin, dass das letzte "B*=2" noch nicht aktiv ist.

skipAdd:bnez	%r1, loop		; repeat until A==0
	andi	%r4, %r1, $1		; r4 merkt sich, ob A gerade oder ungerade ist.
	nop
	nop

	sw	0(%r0), %r3
	sll	%r0, %r0, %r0		; NOP
	sll	%r0, %r0, %r0		; NOP
	sll	%r0, %r0, %r0		; NOP

