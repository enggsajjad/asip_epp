; options passed:  -iprefix -auxbase-strip -O0
; options enabled:  -falign-loops -fargument-alias -fbranch-count-reg
; -fcommon -fearly-inlining -feliminate-unused-debug-types -ffunction-cse
; -fgcse-lm -fident -finline-functions-called-once -fivopts
; -fkeep-static-consts -fleading-underscore -fmath-errno
; -fmove-loop-invariants -fpeephole -freg-struct-return -fsched-interblock
; -fsched-spec -fsched-stalled-insns-dep -fshow-column
; -fsplit-ivs-in-unroller -ftoplevel-reorder -ftrapping-math -ftree-loop-im
; -ftree-loop-ivcanon -ftree-loop-optimize -ftree-vect-loop-version
; -fzero-initialized-in-bss -mquickcall

	.section	.text
	.addressing	Word
	xor	r4, r4, r4
	xor	r5, r5, r5
	xor	r6, r6, r6
	addi	r4, r0, $(0XEFFC / 0x10000)
	addi	r5, r0, $(0XEFFC / 0x10000)

	lsoi	r4, r4, $(0XEFFC % 0x10000)
	lsoi	r5, r5, $(0XEFFC % 0x10000)

	sw	-4(r5), r4
	sw	-8(r5), r3
	addi	r5, r4, $(-8)

	jpl	_main	
	sw	0(r5), r21
	jpl	_exit
;	.align 2
;	.globl	_main
;	.type	_main, @function
_main:
;  Function 'main'; 4 bytes of locals, 0 regs to save, 0 byte of out. args. size.
	sw	-4(r5),r3	; push LinkRegister(r3)
	sw	-8(r5),r4	; push FrameRegister(r4)
	addi	r4, r5,#-8	; FramePtr = StackPtr-8
	addi	r5,r5,#-12	; alloc local storage
	addi	r6,r0,#0
	sw	-4(r4),r6
	jp	_L2
_L3:
	lw	r9,-4(r4)
	nop
	lw	r6,-4(r4)
	nop
	addi	r7,r0,(_A/0x10000)
	lsoi	r7,r7,(_A%0x10000)
	llsi	r6,r6,#2
	add	r6,r6,r7
	lw	r7,(r6)
	nop
	addi	r6,r0,(_C/0x10000)
	lsoi	r6,r6,(_C%0x10000)
	lw	r6,(r6)
	nop
	add	r6,r7,r6
	addi	r8,r6,#5
	addi	r7,r0,(_B/0x10000)
	lsoi	r7,r7,(_B%0x10000)
	llsi	r6,r9,#2
	add	r6,r6,r7
	sw	(r6),r8
	lw	r6,-4(r4)
	nop
	addi	r6,r6,#1
	sw	-4(r4),r6
_L2:
	lw	r6,-4(r4)
	nop
	addi	r7,r0,#9
	elt	r6,r7,r6
	brz	r6,_L3
	addi	r6,r0,#0
	lw	r3,4(r4)	; pop LinkRegister(r3)
	addi	r5,r4,#8	; StackPointer = FramePointer+8
	lw	r4,(r4)		; restore FramePointer

	jpr	r3		; return
;	.size	_main, .-_main
;	.ident	"GCC: (GNU) 4.2.2"

_exit:
	trap #0

;	.globl	_A
	.section	.data
	.addressing	Word
;	.align 2
;	.type	_A, @object
;	.size	_A, 40
_A:
	.data.32	1
	.data.32	2
	.data.32	3
	.data.32	4
	.data.32	5
	.data.32	6
	.data.32	7
	.data.32	8
	.data.32	9
	.data.32	10
;	.globl	_B
;	.align 2
;	.type	_B, @object
;	.size	_B, 40
_B:
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
	.data.32	0
;	.globl	_C
	.section	.data
	.addressing	Word
;	.align 2
;	.type	_C, @object
;	.size	_C, 4
_C:
	.data.32	42