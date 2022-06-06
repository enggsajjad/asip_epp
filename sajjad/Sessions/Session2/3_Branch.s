.text
	.align 2
	.globl	_main
	.type	_main, @function
_main:
	ADDI	R21, R0, #15
	ADDI	R22, R0, #9

	ELT	R23, R21, R22
	BRZ	R23, _label1
	NOP				;branch delay slot for -pf0
	ADD	R24, R0, R22
	JP	_label2
	NOP				;branch delay slot for -pf0

_label1:
	ADD	R24, R0, R21

_label2:
	NOP	; ... compute anything with the result in r4 ...

	jpr	r3		; return
	.size	_main, .-_main
	.ident	"GCC: (GNU) 4.2.2"


