;
; startup routine for brownie testbench
; written by Hirofumi IWATO 
; All Rights Reserved 2008. ASIP Solutions, Inc.
;

;#define SP r5

	.section	.rodata
_startup_consts:
	;.data.32	_sp_data
	;.section	.data
	;.addressing word
	.section	.text
	.align 2
;	.globl	_start
;	.type	_start, @function
_start:
	;addi	r16, r0,  %hi(_startup_consts)
	;lsoi	r16, r16, %lo(_startup_consts)
	addi	r5, r0,  (0xFFFFC / 0x10000)
	lsoi	r5, r5, (0xFFFFC % 0x10000)
	;lw	r5,  0(r16)			; load stack pointer
	;addi	r16, r0,  %hi(_main)
	;lsoi	r16, r16, %lo(_main)
	addi	r16, r0,  (_main / 0x10000)
	lsoi	r16, r16, (_main % 0x10000)

	subi	r5, r5, $4			; push link reg
	sw	(r5), r3

	ori	r1, r1, $0x00000300		; enable interrupt

	jprl	r16

	lw	r3, (r5)			; pop link reg
	addi	r5, r5, $4

	trap	#0





; options passed:  -auxbase-strip
; options enabled:  -falign-loops -fargument-alias -fbranch-count-reg
; -fcommon -fearly-inlining -feliminate-unused-debug-types -ffunction-cse
; -fgcse-lm -fident -finline-functions-called-once -fivopts
; -fkeep-static-consts -fleading-underscore -fmath-errno
; -fmove-loop-invariants -fpeephole -freg-struct-return -fsched-interblock
; -fsched-spec -fsched-stalled-insns-dep -fshow-column
; -fsplit-ivs-in-unroller -ftoplevel-reorder -ftrapping-math -ftree-loop-im
; -ftree-loop-ivcanon -ftree-loop-optimize -ftree-vect-loop-version
; -fzero-initialized-in-bss -mquickcall

	;.section	.text
	;.align 2
	;.globl	_main
	;.type	_main, @function
_main:
;  Function 'main'; 4 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-12	; alloc local storage
	;addi	r6,r0,%hi(_array)
	;lsoi	r6,r6,%lo(_array)
	addi	r6,r0,(_array / 0x10000)
	lsoi	r6,r6,(_array % 0x10000)
	sw	-4(r4),r6
	lw	r6,-4(r4)
	nop
	addi	r7,r6,#4
	lw	r6,-4(r4)
	nop
	lw	r6,(r6)
	nop
	addi	r6,r6,#1
	sw	(r7),r6
	addi	r6,r0,#0
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer
	jpr	r3		; return
	;.size	_main, .-_main
	;.ident	"GCC: (GNU) 4.2.2"

	;.globl	_array
	.section	.data
	.align 2
	;.type	_array, @object
	;.size	_array, 8
_array:
	.data.32	45
	.data.32	75