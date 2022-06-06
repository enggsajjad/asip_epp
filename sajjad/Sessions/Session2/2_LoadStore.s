	.globl	_A
.data
	.align 2
	.type	_A, @object
	.size	_A, 8
_A:
	.long	42
	.long	23

	.globl	_B
	.align 2
	.type	_B, @object
	.size	_B, 4
_B:
	.long	0

.text
	.align 2
	.globl	_main
	.type	_main, @function
_main:
	ADDI	R21, R0,  %hi(_A)
	LSOI	R21, R21, %lo(_A)


	LW	R22, 0(R21)
	LW	R23, 4(R21)
	NOP				; load delay slot for pf1
	ADD	R24, R22, R23

	ADDI	R25, R0,  %hi(_B)
	LSOI	R25, R25, %lo(_B)

	SW	0(R25), R24


	jpr	r3		; return
	.size	_main, .-_main
	.ident	"GCC: (GNU) 4.2.2"



