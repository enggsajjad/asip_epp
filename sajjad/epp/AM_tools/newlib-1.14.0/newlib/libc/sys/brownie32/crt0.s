#define FP r4
#define SP r5
        .text
        .global _start
_start:
	addi FP,r0,#0x2000	; Initialize frame pointer register(r5)
	lsoi FP,FP,#0x4000	; FP = (FP<<16 | #0x00004000)
        jp _main

