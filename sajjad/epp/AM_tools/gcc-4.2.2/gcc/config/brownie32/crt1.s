	/* see brownie32.h:	 register usage for consisitency.  */

#define SP r5

        .text
        .global _start
_start:
;	addi r5,r0,#0x2000	; Initialize frame pointer register(r5)
;	lsoi r5,r5,#0x4000	; r5 = (r5<<16 | #0x00004000)
	addi SP,r0,#0x2000	; Initialize stack pointer register(SP)
	lsoi SP,SP,#0x2000	; SP = (SP<<16 | #0x00000000)

	addi  SP,SP,#-4
        sw    (SP),r3
        jpl    _main
        lw    r3,(SP)
        nop
        addi  SP,SP,#4

	trap 0

