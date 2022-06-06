	.addressing	Word
	.section	.text

main:	addi	%r1, %r0, $-5
	addi	%r2, %r0, $-7
	nop
	nop
	nop
	bgeu	%r1, %r2, _geu
	nop
	nop
	addi	%r3, %r0, $-1
	nop
	nop
	nop
	j	exit
	nop
	nop

_geu:	addi	%r3, %r0, $1
	nop
	nop
	nop
	
exit:	nop
	nop
	nop
	