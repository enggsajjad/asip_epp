	.addressing word

	.section .text  

_main:

	; load some values
	lsoi	r10,	r10,	$(rten / 0x10000)
	lsoi	r10,	r10,	$(rten % 0x10000)

	lw	r11, 0(r10)	;2
	lw	r12, 4(r10)	;9
	nop						; required for load delay slot, otherwise gpr12 is not loaded
	;rr commands
	add r13, r12, r11	;shoule be 11
	sub r14, r12, r11	; 7
	mul r15, r12, r11	;18
	div r16, r12, r11	;4
	divu r17, r12, r11	;4
	mod r18, r12, r11	;1
	modu r19, r12, r11	;1
	and r20, r12, r11	;0
	nand r21, r12, r11
	or r22, r12, r11	;11
	nor r23, r12, r11
	xor r24, r12, r11	;11
	lls r25, r12, r11	;36
	lrs r26, r12, r11	;2
	ars r27, r12, r11	;0x0000002
	elt r28, r12, r11	;0
	eltu r29, r12, r11	;0
	eeq r30, r12, r11	;0
	eneq r31, r12, r11	;1

	;store values
	sw	8(r10),    r13
	sw	12(r10),    r14
	sw	16(r10),    r15
	sw	20(r10),    r16
	sw	24(r10),    r17
	sw	28(r10),    r18
	sw	32(r10),    r19
	sw	36(r10),    r20
	sw	40(r10),    r21
	sw	44(r10),    r22
	sw	48(r10),    r23
	sw	52(r10),    r24
	sw	56(r10),    r25
	sw	60(r10),    r26
	sw	64(r10),    r27
	sw	68(r10),    r28
	sw	72(r10),    r29
	sw	76(r10),    r30
	sw	80(r10),    r31
	nop


_finish:
	; finish
	;lsoi	r10,	r10,	(end / 0x10000)
	;lsoi	r10,	r10,	(end % 0x10000)
	;jpr	r10
	trap #0


	.section .data

_data:
	.data.32	0x12345678
	.data.32	0x98765432
	.data.8		0xaa
	.data.8		0xff
	.data.16	0x0000

_start:
rten:
	.data.32	0x00000002
	.data.32	0x00000009
