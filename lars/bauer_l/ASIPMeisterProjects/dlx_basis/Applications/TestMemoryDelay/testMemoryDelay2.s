	.addressing	Word
	.section	.text

	addi	%r1, %r0, $42
	nop
	nop
	nop
	sw	8(%r0), %r1
	nop
	nop
	nop
