	.section	.text
	.addressing	Word
	
main:	addi	%r1, %r0, $5
	addi	%r2, %r0, $7
	nop
	nop
	nop

	j	label
	nop
	lw	%r3, 0(%r0)

	nop
	nop

LabEl:	nop
	nop
	nop
	nop
	nop
	nop
	nop

