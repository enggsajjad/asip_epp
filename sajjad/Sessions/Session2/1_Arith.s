.text
	.align 2
	.globl	_main
	.type	_main, @function
_main:

	ADDI	R21, R0, #5
	ADDI	R22, R0, #9

	OR	R23, R21, R22
	AND	R24, R21, R22
	SUB	R25, R21, R22
	MUL	R26, R21, R22
	LLS	R27, R21, R22

	jpr	r3		; return
	.size	_main, .-_main
	.ident	"GCC: (GNU) 4.2.2"



