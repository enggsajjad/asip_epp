	.section	.text
	.addressing	Word
	
main:	addi	%r1, %r0, $5
	nop	; Automatically Added by addNopAfterLabels.pl
	addi	%r2, %r0, $7
	nop
	nop
	nop

	j	label
	nop
	lw	%r3, 0(%r0)
	lw	%r3, 0(%r0)
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	nop	; Automatically added by fix-stall-insns.pl
	lw	%r3, 0(%r0)
	lw	%r3, 0(%r0)

	nop
	nop

label:	nop
	nop
	nop
	nop
				; Automatically 3 NOPs removed by reduceNOPs.sh

