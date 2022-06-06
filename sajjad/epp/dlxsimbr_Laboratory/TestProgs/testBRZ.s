
	.addressing Word

	.section .text
_main:
	lsoi	r6,	r6,	(_start / 0x10000)
	lsoi	r6,	r6,	(_start % 0x10000)
	lsoi	r7,	r7,	(_finish / 0x10000)
	lsoi	r7,	r7,	(_finish % 0x10000)	
	; relative branch testing
br_t:
br_pa:	
	;jp		(br0 - br_pa)		; enter br maze
	jp		(br0)		; enter br maze
br_abt:	
	jpr	r7
br0:
	lsoi	r10,	r10,	(0x0000)
	lsoi	r10,	r10,	(0x1111)
	ori	r11,	r11, (0x0001)
br1:
	ori	r11,	r11, (0x0002)
	;brz	r0,	(br2 - br1 - 8)
	brz	r0,	(br2)
	ori	r11,	r11, (0x0040); next instruction is not executed (fetched) when a branch occurs (taken)
br2:
	ori	r11,	r11, (0x0004)
	;brz	r10,	(br_abt - br2)
	brz	r10,	(br_abt)
	ori	r11,	r11, (0x0080); next instruction is executed (fetched) when a branch does not occur (taken)
br3:
	ori	r11,	r11, (0x0008)
	;brnz	r0,	(br_abt - br3)
	brnz	r0,	(br_abt)
	ori	r11,	r11, (0x0200); next instruction is executed (fetched) when a branch does not occur (taken)
br4:
	ori	r11,	r11, (0x0010)
	;brnz	r10,	(br5 - br4 - 8)
	brnz	r10,	(br5)
	ori	r11,	r11, (0x0100); next instruction is not executed (fetched) when a branch occurs (taken)
br5:
	nop						; clear
	ori	r11,	r11, (0x0020)
	sw	0x0014(r6),	r11	; should be  0x2bf

_finish:
	; finish
	;LSOI	r10,	r10,	(end / 0x10000)
	;LSOI	r10,	r10,	(end % 0x10000)
	;JPR	r10
	trap #0


	.section .data
_data:	
	.data.32	0x12345678
	.data.32	0x98765432
	.data.8		0xAA
	.data.8		0xFF
	.data.16	0x0000
_start:
	.data.32	0
