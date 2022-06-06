	.addressing 	Word
	.section	.text

main:
	; load some values
	lsoi	r10,	r10,	(rten / 0x10000)
	lsoi	r10,	r10,	(rten % 0x10000)

	lw	r12, 4(r10)		; 4 from 0x10
	lw	r13, 8(r10)		; 8 from 0x14
	nop 				;required, otherwise newxt ADD is not doing anything
					; perform some operations; causing dependencies
	add 	r11, r12, r13		;should be 12

	lw	r14, rten(r11)		;should be 4 from 0x10
	nop				;required, otherwise newxt SW is not writing anything
	sw	8(r11),    r14		; should be 4 at 0x14
	sw	40(r10),   r11		; should be 0XC at 0x34


finish_up_main:
	; finish
	;LSOI	r10,	r10,	$(end / 0x10000)
	;LSOI	r10,	r10,	$(end % 0x10000)
	;JPR	r10
	trap #0
	

	.section .data
_data:

	.data.32	0x98765432
	.data.8		0xAA
	.data.8		0xFF
	.data.16	0x0000
data_dump_start:
rten:
	.data.32	0x00000000
	.data.32	0x00000004
	.data.32	0x00000008
	.data.32	0x0000000E
	.data.32	0x0000000F
	.data.32	0x00000010
	.data.32	0x00000011
	.data.32	0x00000012
	.data.32	0x00000013
	.data.32	0x00000014
	.data.32	0x00000015