	.addressing word

	.section .text  

_main:

	; load some values
	lsoi	r10,	r10,	$(rten / 0x10000)
	lsoi	r10,	r10,	$(rten % 0x10000)

	lw	r11, 0(r10)	;2
	lw	r12, 4(r10)	;0x80808089
	nop						; required for load delay slot
	;call ri commands
	addi r13, r12, $(2)	;shoule be 11
	subi r14, r12, $(2)	; 7
	andi r15, r12, $(2)	;0
	ori r16, r12, $(2)	;11
	xori r17, r12, $(2)	;11
	llsi r18, r12, $(2)	;36
	lrsi r19, r12, $(2)	;2
	arsi r20, r12, $(2)	;2
	lsoi r21, r12, $(2)	;0x00090002

	exbw r22, r12	;0x0009
	exhw r23, r12	;0x0009

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
	.data.32	0x80808089
