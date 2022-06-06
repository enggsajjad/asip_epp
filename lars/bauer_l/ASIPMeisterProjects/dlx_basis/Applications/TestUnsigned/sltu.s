	.addressing	Word
	.section	.text

main:	addi	%r1, %r0, $-1
	addi	%r2, %r0, $1
	nop
	nop
	nop
	slt	%r3, %r1, %r2
	sltu	%r4, %r1, %r2
	nop
	nop
	nop
	nop
