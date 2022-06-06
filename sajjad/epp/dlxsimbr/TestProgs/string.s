	.section .text
_main:	
	lhi	r1, (_A >> 16)
	ori	r1, r1, (_A & 0xFFFF)

	brz	r1,_L4

	lw	r2, 0(r1)
	lw	r3, 4(r1)
	nop
	add	r4, r2, r3

	trp	_load_R	

_L4:
	sw	0(r5), r4


	.org 		0x50	
_new:
	addi	r4, r4, $(10)
	sw	4(r5), r4
	jp	_exit

_load_R:
	lhi	r5, (_R >> 16)
	ori	r5, r5, (_R & 0xFFFF)
	reti
_exit:
	trap #0

	.globl	_uartAddress
	.section	.rodata
	.align 2
	.type	_uartAddress, @object
	.size	_uartAddress, 4


	.section .data
_A:	
	.data.32	42
	.data.32	23
_B:	
	.string		"Testing"	
	.long	40000004
	.short	4
	.byte	59
	.byte	58
	.data.8		11
	.data.8		22
	.data.16	33
_R:
	.data.32	0
	.data.32	0

