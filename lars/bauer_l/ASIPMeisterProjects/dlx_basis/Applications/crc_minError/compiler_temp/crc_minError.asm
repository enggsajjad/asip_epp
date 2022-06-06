	.section	.data
	;.global	_lin
_lin:
	.data.8	97
	.data.8	115
	.data.8	100
	.data.8	102
	.data.8	102
	.data.8	101
	.data.8	97
	.data.8	103
	.data.8	101
	.data.8	119
	.data.8	97
	.data.8	72
	.data.8	65
	.data.8	70
	.data.8	69
	.data.8	70
	.data.8	97
	.data.8	101
	.data.8	68
	.data.8	115
	.data.8	70
	.data.8	69
	.data.8	97
	.data.8	119
	.data.8	70
	.data.8	100
	.data.8	115
	.data.8	70
	.data.8	97
	.data.8	101
	.data.8	102
	.data.8	97
	.data.8	101
	.data.8	101
	.data.8	114
	.data.8	100
	.data.8	106
	.data.8	103
	.data.8	112
	.space	1
	.space	1
	.space	1
	;.global	_icrctb
	.align	2
_icrctb:
	.space	512
	.align	4
L1:
	.space	4
L2:
	.space	256
L3:
	.space	1
	.data.8	8
	.data.8	4
	.data.8	12
	.data.8	2
	.data.8	10
	.data.8	6
	.data.8	14
	.data.8	1
	.data.8	9
	.data.8	5
	.data.8	13
	.data.8	3
	.data.8	11
	.data.8	7
	.data.8	15
	;.global	_i1
	.align	2
_i1:
	.space	2
	;.global	_i2
	.align	2
_i2:
	.space	2
	.section	.text
	.addressing	Word
_start:
	xor	%GPR30, %GPR30, %GPR30
	xor	%GPR29, %GPR29, %GPR29
	xor	%GPR28, %GPR28, %GPR28
	nop
	addui	%GPR30, %GPR30, $3
	addui	%GPR29, %GPR29, $3
	nop
	nop
	slli	%GPR30, %GPR30, $12
	slli	%GPR29, %GPR29, $12
	nop
	nop
	nop
	sw	-4(%GPR29), %GPR30
	sw	-8(%GPR29), %GPR31
	addi	%GPR29, %GPR30, $-8
	jal	main	
	nop
	sw	0(%GPR29), %GPR1
	jal	exit	
	nop
icrc1:
L4:
	nop
	nop
	nop
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	slli	%GPR3,%GPR2,$8	
	lhi	%GPR2,$0	
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$8	
	nop
	nop
	nop
	xor	%GPR28,%GPR3,%GPR1	
	nop
	nop
	nop
L5:
	andi	%GPR1,%GPR28,$32768	
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
	sne	%GPR27,%GPR1,%GPR3	
	nop
	nop
	nop
	bnez	%GPR27,L6	
	nop
	nop
	nop
	j	L14	
	nop
	nop
	nop
L6:
	nop
	nop
	nop
	slli	%GPR1,%GPR28,$1	
	nop
	nop
	nop
	xori	%GPR1,%GPR1,$4129	
	nop
	nop
	nop
L7:
	andi	%GPR3,%GPR1,$32768	
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
	sne	%GPR27,%GPR3,%GPR4	
	nop
	nop
	nop
	bnez	%GPR27,L8	
	nop
	nop
	nop
	j	L15	
	nop
	nop
	nop
L8:
	nop
	nop
	nop
	slli	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	xori	%GPR1,%GPR1,$4129	
	nop
	nop
	nop
L9:
	andi	%GPR3,%GPR1,$32768	
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
	sne	%GPR27,%GPR3,%GPR4	
	nop
	nop
	nop
	bnez	%GPR27,L10	
	nop
	nop
	nop
	j	L16	
	nop
	nop
	nop
L10:
	nop
	nop
	nop
	slli	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	xori	%GPR1,%GPR1,$4129	
	nop
	nop
	nop
L11:
	andi	%GPR3,%GPR1,$32768	
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
	sne	%GPR27,%GPR3,%GPR4	
	nop
	nop
	nop
	bnez	%GPR27,L12	
	nop
	nop
	nop
	j	L17	
	nop
	nop
	nop
L12:
	nop
	nop
	nop
	slli	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	xori	%GPR28,%GPR1,$4129	
	nop
	nop
	nop
L13:
	addi	%GPR2,%GPR2,$-4	
	nop
	nop
	nop
	lhi	%GPR1,$0	
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
	sgt	%GPR27,%GPR2,%GPR1	
	nop
	nop
	nop
	bnez	%GPR27,L5	
	nop
	nop
	nop
	j	L18	
	nop
	nop
	nop
L14:
	nop
	nop
	nop
	slli	%GPR1,%GPR28,$1	
	j	L7	
	nop
	nop
	nop
L15:
	nop
	nop
	nop
	slli	%GPR1,%GPR1,$1	
	j	L9	
	nop
	nop
	nop
L16:
	nop
	nop
	nop
	slli	%GPR1,%GPR1,$1	
	j	L11	
	nop
	nop
	nop
L17:
	nop
	nop
	nop
	slli	%GPR28,%GPR1,$1	
	j	L13	
	nop
	nop
	nop
L18:
	j	L19	
	nop
	nop
	nop
L19:
	nop
	nop
	nop
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	jr	%GPR31	
	nop
	nop
	nop
icrc:
L20:
	nop
	nop
	nop
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	lhi	%GPR2,$( L1	/0x10000)
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$( L1	%0x10000)
	nop
	nop
	nop
	lw	%GPR1,0(%GPR2)	
	lhi	%GPR3,$0	
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$0	
	nop
	nop
	nop
	seq	%GPR27,%GPR1,%GPR3	
	nop
	nop
	nop
	bnez	%GPR27,L21	
	nop
	nop
	nop
	j	L24	
	nop
	nop
	nop
L21:
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$1	
	lhi	%GPR1,$0	
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
	sw	0(%GPR2),%GPR3	
	j	L23	
	nop
	nop
	nop
L22:
	add	%GPR4,%GPR1,%GPR0	
	lhi	%GPR5,$( _icrctb	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _icrctb	%0x10000)
	lhi	%GPR3,$( L3	/0x10000)
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$( L3	%0x10000)
	nop
	nop
	nop
	andi	%GPR6,%GPR1,$15	
	add	%GPR7,%GPR1,%GPR0	
	lhi	%GPR8,$( L2	/0x10000)
	nop
	nop
	nop
	ori	%GPR8,%GPR8,$( L2	%0x10000)
	srli	%GPR9,%GPR1,$4	
	nop
	nop
	nop
	addi	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	add	%GPR6,%GPR3,%GPR6	
	nop
	nop
	slli	%GPR4,%GPR4,$1	
	add	%GPR3,%GPR3,%GPR9	
	nop
	nop
	nop
	add	%GPR4,%GPR5,%GPR4	
	nop
	nop
	nop
	sh	0(%GPR4),%GPR2	
	add	%GPR5,%GPR8,%GPR7	
	nop
	nop
	nop
	lb	%GPR2,0(%GPR6)	
	lb	%GPR3,0(%GPR3)	
	nop
	nop
	nop
	slli	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	or	%GPR2,%GPR2,%GPR3	
	nop
	nop
	nop
	sb	0(%GPR5),%GPR2	
	nop
	nop
	nop
L23:
	slei	%GPR27,%GPR1,$5	
	nop
	nop
	nop
	bnez	%GPR27,L25		; Fixed by findCompareBranchProblem.sh. Previous Register was %GPR1
	nop
	nop
	nop
	j	L24	
	nop
	nop
	nop
L24:
	nop
	nop
	nop
	lhi	%GPR28,$0	
	nop
	nop
	nop
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	j	L39	
	nop
	nop
	nop
L25:
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$8	
	nop
	nop
	nop
	slli	%GPR2,%GPR2,$8	
	nop
	nop
	nop
L26:
	andi	%GPR4,%GPR2,$32768	
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$0	
	nop
	nop
	nop
	sne	%GPR27,%GPR4,%GPR5	
	nop
	nop
	nop
	bnez	%GPR27,L27	
	nop
	nop
	nop
	j	L35	
	nop
	nop
	nop
L27:
	nop
	nop
	nop
	slli	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	xori	%GPR2,%GPR2,$4129	
	nop
	nop
	nop
L28:
	andi	%GPR4,%GPR2,$32768	
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$0	
	nop
	nop
	nop
	sne	%GPR27,%GPR4,%GPR5	
	nop
	nop
	nop
	bnez	%GPR27,L29	
	nop
	nop
	nop
	j	L36	
	nop
	nop
	nop
L29:
	nop
	nop
	nop
	slli	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	xori	%GPR2,%GPR2,$4129	
	nop
	nop
	nop
L30:
	andi	%GPR4,%GPR2,$32768	
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$0	
	nop
	nop
	nop
	sne	%GPR27,%GPR4,%GPR5	
	nop
	nop
	nop
	bnez	%GPR27,L31	
	nop
	nop
	nop
	j	L37	
	nop
	nop
	nop
L31:
	nop
	nop
	nop
	slli	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	xori	%GPR2,%GPR2,$4129	
	nop
	nop
	nop
L32:
	andi	%GPR4,%GPR2,$32768	
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$0	
	nop
	nop
	nop
	sne	%GPR27,%GPR4,%GPR5	
	nop
	nop
	nop
	bnez	%GPR27,L33	
	nop
	nop
	nop
	j	L38	
	nop
	nop
	nop
L33:
	nop
	nop
	nop
	slli	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	xori	%GPR2,%GPR2,$4129	
	nop
	nop
	nop
L34:
	addi	%GPR3,%GPR3,$-4	
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
	sgt	%GPR27,%GPR3,%GPR4	
	nop
	nop
	nop
	bnez	%GPR27,L26	
	nop
	nop
	nop
	j	L22	
	nop
	nop
	nop
L35:
	nop
	nop
	nop
	slli	%GPR2,%GPR2,$1	
	j	L28	
	nop
	nop
	nop
L36:
	nop
	nop
	nop
	slli	%GPR2,%GPR2,$1	
	j	L30	
	nop
	nop
	nop
L37:
	nop
	nop
	nop
	slli	%GPR2,%GPR2,$1	
	j	L32	
	nop
	nop
	nop
L38:
	nop
	nop
	nop
	slli	%GPR2,%GPR2,$1	
	j	L34	
	nop
	nop
	nop
L39:
	nop
	nop
	nop
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	jr	%GPR31	
	nop
	nop
	nop
main:
L40:
	nop
	nop
	nop
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	lhi	%GPR1,$( _lin	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _lin	%0x10000)
	nop
	nop
	lhi	%GPR2,$( L1	/0x10000)
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$( L1	%0x10000)
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$41	
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	add	%GPR1,%GPR1,%GPR3	
	lhi	%GPR5,$0	
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$0	
	nop
	nop
	nop
	sb	0(%GPR1),%GPR4	
	nop
	nop
	nop
	lw	%GPR1,0(%GPR2)	
	nop
	nop
	nop
	seq	%GPR27,%GPR1,%GPR5	
	nop
	nop
	nop
	bnez	%GPR27,L41	
	nop
	nop
	nop
	j	L44	
	nop
	nop
	nop
L41:
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$1	
	lhi	%GPR1,$0	
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
	sw	0(%GPR2),%GPR3	
	j	L43	
	nop
	nop
	nop
L42:
	add	%GPR4,%GPR1,%GPR0	
	lhi	%GPR5,$( _icrctb	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _icrctb	%0x10000)
	lhi	%GPR3,$( L3	/0x10000)
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$( L3	%0x10000)
	nop
	nop
	nop
	andi	%GPR6,%GPR1,$15	
	add	%GPR7,%GPR1,%GPR0	
	lhi	%GPR8,$( L2	/0x10000)
	nop
	nop
	nop
	ori	%GPR8,%GPR8,$( L2	%0x10000)
	srli	%GPR9,%GPR1,$4	
	nop
	nop
	nop
	addi	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	add	%GPR6,%GPR3,%GPR6	
	nop
	nop
	slli	%GPR4,%GPR4,$1	
	add	%GPR3,%GPR3,%GPR9	
	nop
	nop
	nop
	add	%GPR4,%GPR5,%GPR4	
	nop
	nop
	nop
	sh	0(%GPR4),%GPR2	
	add	%GPR5,%GPR8,%GPR7	
	nop
	nop
	nop
	lb	%GPR2,0(%GPR6)	
	lb	%GPR3,0(%GPR3)	
	nop
	nop
	nop
	slli	%GPR2,%GPR2,$4	
	nop
	nop
	nop
	or	%GPR2,%GPR2,%GPR3	
	nop
	nop
	nop
	sb	0(%GPR5),%GPR2	
	nop
	nop
	nop
L43:
	slei	%GPR27,%GPR1,$5	
	nop
	nop
	nop
	bnez	%GPR27,L45		; Fixed by findCompareBranchProblem.sh. Previous Register was %GPR1
	nop
	nop
	nop
	j	L44	
	nop
	nop
	nop
L44:
	nop
	nop
	lhi	%GPR1,$( _i1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( _i1	%0x10000)
	nop
	nop
	nop
	lhi	%GPR2,$0	
	nop
	nop
	nop
	ori	%GPR2,%GPR2,$0	
	lhi	%GPR28,$0	
	nop
	nop
	nop
	ori	%GPR28,%GPR28,$0	
	nop
	nop
	nop
	sh	0(%GPR1),%GPR2	
	j	L59	
	nop
	nop
	nop
L45:
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	lhi	%GPR3,$0	
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$8	
	nop
	nop
	nop
	slli	%GPR2,%GPR2,$8	
	nop
	nop
	nop
L46:
	andi	%GPR4,%GPR2,$32768	
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$0	
	nop
	nop
	nop
	sne	%GPR27,%GPR4,%GPR5	
	nop
	nop
	nop
	bnez	%GPR27,L47	
	nop
	nop
	nop
	j	L55	
	nop
	nop
	nop
L47:
	nop
	nop
	nop
	slli	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	xori	%GPR2,%GPR2,$4129	
	nop
	nop
	nop
L48:
	andi	%GPR4,%GPR2,$32768	
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$0	
	nop
	nop
	nop
	sne	%GPR27,%GPR4,%GPR5	
	nop
	nop
	nop
	bnez	%GPR27,L49	
	nop
	nop
	nop
	j	L56	
	nop
	nop
	nop
L49:
	nop
	nop
	nop
	slli	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	xori	%GPR2,%GPR2,$4129	
	nop
	nop
	nop
L50:
	andi	%GPR4,%GPR2,$32768	
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$0	
	nop
	nop
	nop
	sne	%GPR27,%GPR4,%GPR5	
	nop
	nop
	nop
	bnez	%GPR27,L51	
	nop
	nop
	nop
	j	L57	
	nop
	nop
	nop
L51:
	nop
	nop
	nop
	slli	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	xori	%GPR2,%GPR2,$4129	
	nop
	nop
	nop
L52:
	andi	%GPR4,%GPR2,$32768	
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$0	
	nop
	nop
	nop
	sne	%GPR27,%GPR4,%GPR5	
	nop
	nop
	nop
	bnez	%GPR27,L53	
	nop
	nop
	nop
	j	L58	
	nop
	nop
	nop
L53:
	nop
	nop
	nop
	slli	%GPR2,%GPR2,$1	
	nop
	nop
	nop
	xori	%GPR2,%GPR2,$4129	
	nop
	nop
	nop
L54:
	addi	%GPR3,%GPR3,$-4	
	nop
	nop
	nop
	lhi	%GPR4,$0	
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$0	
	nop
	nop
	nop
	sgt	%GPR27,%GPR3,%GPR4	
	nop
	nop
	nop
	bnez	%GPR27,L46	
	nop
	nop
	nop
	j	L42	
	nop
	nop
	nop
L55:
	nop
	nop
	nop
	slli	%GPR2,%GPR2,$1	
	j	L48	
	nop
	nop
	nop
L56:
	nop
	nop
	nop
	slli	%GPR2,%GPR2,$1	
	j	L50	
	nop
	nop
	nop
L57:
	nop
	nop
	nop
	slli	%GPR2,%GPR2,$1	
	j	L52	
	nop
	nop
	nop
L58:
	nop
	nop
	nop
	slli	%GPR2,%GPR2,$1	
	j	L54	
	nop
	nop
	nop
L59:
	nop
	nop
	nop
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	jr	%GPR31	
	nop
	nop
	nop
exit:
	nop
	nop
