.text
	.align 2
	.globl	_main
	.type	_main, @function
_main:
	ADDI	R21, R0, #5
	ADDI	R22, R0, #9
	ADDI	R23, R0, #2	; 0 <= r3 <= 5

	ADDI	R24, R0,  %hi(_label1)
	LSOI	R24, R24, %lo(_label1)


	LLSI	R23, R23, #3
	ADD	R24, R24, R23
	JPR	R24
	NOP


_label1:
	JP	_mark0
	NOP
	JP	_mark1
	NOP
	JP	_mark2
	NOP
	JP	_mark3
	NOP
	JP	_mark4
	NOP
	JP	_mark5
	NOP

_mark0:	
	AND	R25, R21, R22
	JP	_label2
	NOP
	
_mark1:	
	OR	R25, R21, R22
	JP	_label2
	NOP
	
_mark2:	
	XOR	R25, R21, R22
	JP	_label2
	NOP
	
_mark3:	
	ADD	R25, R21, R22
	JP	_label2
	NOP
	
_mark4:	
	SUB	R25, R21, R22
	JP	_label2
	NOP
	
_mark5:	
	ELT	R25, R21, R22
	JP	_label2
	NOP

_label2:


	jpr	r3		; return
	.size	_main, .-_main
	.ident	"GCC: (GNU) 4.2.2"


