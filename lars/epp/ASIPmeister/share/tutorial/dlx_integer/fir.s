	.addr_space	32	; address space is 2^32
	.addressing	Byte	; byte addressing           (default)
	.bits_per_byte	8	; 1 byte consistes of 8 bit (default)
	.endian		Big	; Big endian (default)
	.section	.data
	.align		4
_xi:	
	.data.32	1982	; x[0]
	.data.32	136	; x[1]
	.data.32	979	; x[2]
	.data.32	1862	; x[3]
	.data.32	720	; x[4]
	.data.32	1909	; x[5]
	.data.32	1340	; x[6]
	.data.32	43	; x[7]
	.data.32	213	; x[8]
	.data.32	634	; x[9]
	.align		4
_yi:
	.data.32	0	; y[0] = 23659 ( 0x5C6B )
	.data.32	0	; y[1] = 5964  ( 0x174C )
	.data.32	0	; y[2] = 4078  ( 0x0FEE )
	.data.32	0	; y[3] = 22801 ( 0x5911 )
	.data.32	0	; y[4] = 1092  ( 0x0444 )
	.data.32	0	; y[5] = 7873  ( 0x1EC1 )
	.data.32	0	; y[6] = 12795 ( 0x31FB )
	.section	.text
main:
	addi	%r1, %r0, $7		  ; r1  -- 7 - i
	lhi	%r2, $( _xi/0x10000) 	  ; 
	lhi	%r3, $( _yi/0x10000) 	  ; 
	addi	%r4, %r0, $6		  ; r4  -- 6
	addi	%r5, %r0, $5		  ; r5  -- 5
	ori	%r2, %r2, $( _xi%0x10000) ; r2  -- _xi
	ori	%r3, %r3, $( _yi%0x10000) ; r3  -- _yi
	sll	%r0, %r0, %r0	          ;NOP
	sll	%r0, %r0, %r0	          ;NOP
L1:
	lw	%r6, 0(%r2)		  ; r6 = x[i]
	lw	%r7, 4(%r2)		  ; r7 = x[i+1]
	lw	%r8, 8(%r2)		  ; r8 = x[i+2]
	lw	%r9, 12(%r2)		  ; r9 = x[i+3]
	slli	%r6, %r6, $3		  ; r6 = x[i]   * 8
	mult	%r7, %r7, %r4		  ; r7 = x[i+1] * 6
	mult	%r8, %r8, %r5		  ; r8 = x[i+2] * 5
	slli	%r9, %r9, $1		  ; r9 = x[i+3] * 2
	subi	%r1,%r1,$1	          ;   (7 - i)-- 
	sub	%r6, %r6, %r7		  ; r6 = x[i]   * 8 - x[i+1] * 6
	addi	%r2,%r2,$4	          ; xi++
	add	%r8, %r8, %r9		  ; r8 = x[i+2] * 5 - x[i+1] * 2
	sll	%r0, %r0, %r0	          ;NOP
	sll	%r0, %r0, %r0	          ;NOP
	sll	%r0, %r0, %r0	          ;NOP
	add	%r6, %r6, %r8		  ; r6 = result
	sll	%r0, %r0, %r0	          ;NOP
	sll	%r0, %r0, %r0	          ;NOP
	sll	%r0, %r0, %r0	          ;NOP
	sw	%r6, 0(%r3)		  ; store
	bnez	%r1,$((L1 - L2)/4)
L2:	addi	%r3,%r3,$4	          ; yi++
	;; end
