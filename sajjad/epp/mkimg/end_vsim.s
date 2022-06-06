finish:
	; finish
	LSOI	%GPR10,	%GPR10,	$(end / 0x10000)
	LSOI	%GPR10,	%GPR10,	$(end % 0x10000)
	JPR	%GPR10


	;.org	0x3000
	.org	0xF000
reset:	; reset interrupt handler
	; GPR6 is all 1 register
	LSOI	%GPR4,	%GPR4,	$(0xAAAA)
	LSOI	%GPR4,	%GPR4,	$(0xAAAA)

	; goto main (interrupt will be permitted)
	LSOI	%GPR2,	%GPR2,	$(_main / 0x10000)
	LSOI	%GPR2,	%GPR2,	$(_main % 0x10000)
	RETI

	;.org	0x3F00
	.org	0xFF00
end:
	NOP
	NOP
	NOP


        .section        .data
        .align  4
