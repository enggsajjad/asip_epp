.text
	.align 2
	.globl	___trap
	.type	___trap, @function
___trap:
;  Function 'trap'; 0 bytes of locals, 0 regs to save.
	sw	-4(r6),r3	; push LinkRegister(r3)
	sw	-8(r6),r5	; push FrameRegister(r5)
	addi	r5,r6,#-8	; FramePtr = StackPtr-8
	addi	r6,r6,#-8	; alloc local storage

	lw	r11,8(r5) 	; .... 1st
	lw	r12,12(r5) 	; .... 2nd
	lw	r13,16(r5) 	; .... 3rd
	lw	r14,20(r5) 	; .... 4th
	nop
	trap 34
	nop
        addi    r4,r0,#0        ; ret value
	lw	r3,4(r5)	; pop LinkRegister(r3)
	addi	r6,r5,#8	; StackPointer = FramePointer+8
	lw	r5,(r5)		; restore FramePointer
	jpr	r3		; return
	.size	___trap, .-___trap
