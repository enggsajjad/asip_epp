	.section	.text
	.addressing	Word
	
	xor	%GPR30, %GPR30, %GPR30
	xor	%GPR29, %GPR29, %GPR29
	xor	%GPR28, %GPR28, %GPR28
	nop
	lhi	%GPR30, $(0xEFFC/0x10000)
	lhi	%GPR29, $(0xEFFC/0x10000)
	nop
	nop
	ori	%GPR30, %GPR30, $(0xEFFC%0x10000)
	ori	%GPR29, %GPR29, $(0xEFFC%0x10000)
	nop
	nop
	nop
	sw	-4(%GPR29), %GPR30
	sw	-8(%GPR29), %GPR31
	addi	%GPR29, %GPR30, $-8
	nop
	nop
	nop
	jal	main	
	nop
	nop
	nop
	nop
	nop
	sw	0(%GPR29), %GPR1
	jal	exit
	nop
	nop

