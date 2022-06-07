#define FP r4
#define SP r5

.text
	.align 2
	.globl	___trap
	.type	___trap, @function
___trap:
;  Function 'trap'; 0 bytes of locals, 0 regs to save.
	sw	-4(SP),r3	; push LinkRegister(r3)
	sw	-8(SP),FP	; push FrameRegister(FP)
	addi	FP,SP,#-8	; FramePtr = StackPtr-8
	addi	SP,SP,#-8	; alloc local storage

	trap 34
	nop
	addi	SP,FP,#8	; StackPointer = FramePointer+8
	lw	FP,(FP)		; restore FramePointer
	jpr	r3		; return
	.size	___trap, .-___trap
