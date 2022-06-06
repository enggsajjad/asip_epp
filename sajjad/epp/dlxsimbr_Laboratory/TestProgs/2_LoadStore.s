
_main:	addi	r21, r0,  (_data / 0x10000)
	lsoi	r21, r21, (_data % 0x10000)


	lw	r22, 0(r21)
	lw	r23, 4(r21)

	add	r24, r22, r23

	addi	r25, r0,  (_result / 0x10000)
	lsoi	r25, r25, (_result % 0x10000)

	sw	0(r25), r24
	
	trap #0


_data:	.data.32	42
	.data.32	23
_result:.data.32	0
