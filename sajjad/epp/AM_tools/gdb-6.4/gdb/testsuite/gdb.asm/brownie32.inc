#define FP r4
#define SP r5
	comment "subroutine declare"
	.purgem gdbasm_declare
	.macro gdbasm_declare name
	.align	2
	.globl	\name
	.type	\name,@function
\name:
	.endm

	comment "subroutine prologue"
	.macro gdbasm_enter
	sw	-4(SP),r3
	sw	-8(SP),r5
	addi	FP, SP, #-8
	addi	SP, SP, #-16
	.endm

	comment "subroutine epilogue"
	.macro gdbasm_leave
	lw	r3, 4(FP)
	addi	SP, FP, #8
	lw	FP, (FP)
	jpr	r3
	.endm

	comment "subroutine end"
	.purgem gdbasm_end
	.macro gdbasm_end name
	.size	\name,.-\name
	.endm

	.macro gdbasm_call subr
	jpl	\subr
	.endm

	.macro gdbasm_several_nops
	nop
	nop
	nop
	nop
	.endm

	comment "exit (0)"
	.macro gdbasm_exit0
	comment "Don't know how to exit, but this will certainly halt..."
	trap 0
	.endm

	comment "crt0 startup"
	.macro gdbasm_startup
	addi	SP,r0,#0x2000
	lsoi	SP,SP,#0x2000
	addi	SP,SP,#-4
	sw	(SP),r3
	.endm
