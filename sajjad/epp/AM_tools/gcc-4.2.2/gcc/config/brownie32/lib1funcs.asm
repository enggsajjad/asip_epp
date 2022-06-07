;; libgcc routines for the Renesas H8/300 CPU.
;; Contributed by Steve Chamberlain <sac@cygnus.com>
;; Optimizations by Toshiyasu Morita <toshiyasu.morita@renesas.com>

/* Copyright (C) 1994, 2000, 2001, 2002, 2003, 2004
   Free Software Foundation, Inc.

This file is free software; you can redistribute it and/or modify it
under the terms of the GNU General Public License as published by the
Free Software Foundation; either version 2, or (at your option) any
later version.

In addition to the permissions in the GNU General Public License, the
Free Software Foundation gives you unlimited permission to link the
compiled version of this file into combinations with other programs,
and to distribute those combinations without any restriction coming
from the use of this file.  (The General Public License restrictions
do apply in other respects; for example, they cover modification of
the file, and distribution when not linked into a combine
executable.)

This file is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; see the file COPYING.  If not, write to
the Free Software Foundation, 59 Temple Place - Suite 330,
Boston, MA 02111-1307, USA.  */

/* Assembler register definitions.  */

#ifdef L_b32cmpsi2
	.section .text
	.align 2
	.global ___b32_cmpsi2
___b32_cmpsi2:
	sub	r10,r0,r01
	.end
#endif /* L_b32cmpsi2 */

#ifdef L_b32ucmpsi2
	.section .text
	.align 2
	.global ___b32_ucmpsi2
___b32_ucmpsi2:
	sub	r10,r0,r01
	.end

#endif /* L_b32ucmpsi2 */

#ifdef L_b32addsf3
	.section .text
	.align 2
	.global ___b32_addsf3
___b32_addsf3:
;	addi	r6,r6,#-4
;	sw	(r6),r3

	lw	r28, 4(r6)
	nop
	lw	r29, 8(r6)
	nop
AddFloat:
	lrsi	r10,r28,#23
	andi	r10,r10,0xff		; Expornent --> r10, r11
	lrsi	r11,r29,#23
	andi	r11,r11,0xff
;
	addi	r7,r0,%hi0x807fffff
	llsi	r7,r7,#16
	ori	r7,r7,%lo0x807fffff	; 0x807ffff --> r7
;
	and	r12,r28,r1		; Mantissa --> r12, r13
	and	r13,r29,r1
;
L_AddFloat00:
	sub	r7,r10,r11		; Compare expornent
	brz	r7,AddFloat20
	andi	r1,r1,0x80		; Check carry flag
	brnz	r1,AddFloat10
;
; r10 > r11
	arsi	r13,r13,#1	; Right shift mantissa
	addi	r11,r11,#1	; Expornent+1
	jp	L_AddFloat00
;
; r10 < r11
AddFloat10:
	arsi	r12,r12,#1
	addi	r10,r10,#1
	jp	L_AddFloat00
;
; Add mantissa
AddFloat20:
	add	r12,r12,r13
;
; Regularization, Expornent r10, Mantissa r12
AddFloat30:
	llsi	r10,r10,#23
	or	r28,r10,r12	; Result r28

;	lw	r3,(r5)
;	addi	r5,r5,#4
	jpr	r3
	.end
#endif /* L_b32addsf3 */

#ifdef L_b32subsf3
	.section .text
	.align 2
	.global ___b32_subsf3
___b32_subsf3:
	nop
	nop
	nop
	.end
#endif /* L_b32subsf3 */

#ifdef L_b32mulsf3
	.section .text
	.align 2
	.global ___b32_mulsf3
___b32_mulsf3:
	nop
	nop
	nop
	.end
#endif /* L_b32mulsf3 */

#ifdef L_b32divsf3
	.section .text
	.align 2
	.global ___b32_divsf3
___b32_divsf3:
	nop
	nop
	nop
	.end
#endif /* L_b32divsf3 */

