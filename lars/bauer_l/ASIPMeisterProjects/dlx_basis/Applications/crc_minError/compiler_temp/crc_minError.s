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
icrc1:
L4:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;0,2
	NOP		;;0,2
	NOP		
	NOP		
	NOP		
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	NOP		;;2,38
	slli	%GPR3,%GPR2,$8	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$8	
	NOP		;;39,42
	NOP		;;39,42
	NOP		;;39,42
	xor	%GPR28,%GPR3,%GPR1	
	NOP		
	NOP		
	NOP		
L5:
	andi	%GPR1,%GPR28,$32768	
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	sne	%GPR27,%GPR1,%GPR3	
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	bnez	%GPR27,L6	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L14	
	NOP		
	NOP		
	NOP		
	NOP		
L6:
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	slli	%GPR1,%GPR28,$1	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	xori	%GPR1,%GPR1,$4129	
	NOP		
	NOP		
	NOP		
L7:
	andi	%GPR3,%GPR1,$32768	
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	sne	%GPR27,%GPR3,%GPR4	
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	bnez	%GPR27,L8	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L15	
	NOP		
	NOP		
	NOP		
	NOP		
L8:
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	slli	%GPR1,%GPR1,$1	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	xori	%GPR1,%GPR1,$4129	
	NOP		
	NOP		
	NOP		
L9:
	andi	%GPR3,%GPR1,$32768	
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	sne	%GPR27,%GPR3,%GPR4	
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	bnez	%GPR27,L10	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L16	
	NOP		
	NOP		
	NOP		
	NOP		
L10:
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	slli	%GPR1,%GPR1,$1	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	xori	%GPR1,%GPR1,$4129	
	NOP		
	NOP		
	NOP		
L11:
	andi	%GPR3,%GPR1,$32768	
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	sne	%GPR27,%GPR3,%GPR4	
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	bnez	%GPR27,L12	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L17	
	NOP		
	NOP		
	NOP		
	NOP		
L12:
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	slli	%GPR1,%GPR1,$1	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	xori	%GPR28,%GPR1,$4129	
	NOP		
	NOP		
	NOP		
L13:
	addi	%GPR2,%GPR2,$-4	
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	sgt	%GPR27,%GPR2,%GPR1	
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	bnez	%GPR27,L5	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L18	
	NOP		
	NOP		
	NOP		
	NOP		
L14:
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	slli	%GPR1,%GPR28,$1	
	j	L7	
	NOP		
	NOP		
	NOP		
L15:
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	slli	%GPR1,%GPR1,$1	
	j	L9	
	NOP		
	NOP		
	NOP		
L16:
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	slli	%GPR1,%GPR1,$1	
	j	L11	
	NOP		
	NOP		
	NOP		
L17:
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	slli	%GPR28,%GPR1,$1	
	j	L13	
	NOP		
	NOP		
	NOP		
L18:
	j	L19	
	NOP		
	NOP		
	NOP		
	NOP		
L19:
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	lw	%GPR30,0(%GPR30)	
	NOP		
	NOP		
	jr	%GPR31	
	NOP		
	NOP		
	NOP		
	NOP		
icrc:
L20:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;0,2
	NOP		;;0,2
	NOP		
	NOP		
	NOP		
	LI	%GPR2, *L1	
	NOP		;;3,38
	NOP		;;3,38
	NOP		;;3,38
	NOP		;;3,38
	NOP		;;3,38
	NOP		;;3,38
	NOP		;;3,38
	NOP		;;3,38
	NOP		;;3,38
	NOP		;;3,38
	NOP		;;3,38
	NOP		;;3,38
	NOP		;;3,38
	NOP		;;3,38
	NOP		;;3,38
	NOP		;;3,38
	NOP		;;3,38
	NOP		;;3,38
	NOP		;;3,38
	NOP		;;3,38
	NOP		;;3,38
	NOP		;;3,38
	NOP		;;3,38
	NOP		;;3,38
	NOP		;;3,38
	NOP		;;3,38
	NOP		;;3,38
	NOP		;;3,38
	NOP		;;3,38
	NOP		;;3,38
	NOP		;;3,38
	NOP		;;3,38
	NOP		;;3,38
	NOP		;;3,38
	NOP		;;3,38
	lw	%GPR1,0(%GPR2)	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	seq	%GPR27,%GPR1,%GPR3	
	NOP		;;43,47
	NOP		;;43,47
	NOP		;;43,47
	NOP		;;43,47
	bnez	%GPR27,L21	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L24	
	NOP		
	NOP		
	NOP		
	NOP		
L21:
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$1	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;36,39
	NOP		;;36,39
	NOP		;;36,39
	sw	0(%GPR2),%GPR3	
	j	L23	
	NOP		
	NOP		
	NOP		
L22:
	add	%GPR4,%GPR1,%GPR0	
	LI	%GPR5, *_icrctb	
	LI	%GPR3, *L3	
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	andi	%GPR6,%GPR1,$15	
	add	%GPR7,%GPR1,%GPR0	
	LI	%GPR8, *L2	
	srli	%GPR9,%GPR1,$4	
	NOP		;;8,11
	NOP		;;8,11
	NOP		;;8,11
	addi	%GPR1,%GPR1,$1	
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	add	%GPR6,%GPR3,%GPR6	
	NOP		;;37,39
	NOP		;;37,39
	slli	%GPR4,%GPR4,$1	
	add	%GPR3,%GPR3,%GPR9	
	NOP		;;40,43
	NOP		;;40,43
	NOP		;;40,43
	add	%GPR4,%GPR5,%GPR4	
	NOP		;;43,47
	NOP		;;43,47
	NOP		;;43,47
	NOP		;;43,47
	sh	0(%GPR4),%GPR2	
	add	%GPR5,%GPR8,%GPR7	
	NOP		;;48,51
	NOP		;;48,51
	NOP		;;48,51
	lb	%GPR2,0(%GPR6)	
	lb	%GPR3,0(%GPR3)	
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	slli	%GPR2,%GPR2,$4	
	NOP		;;90,94
	NOP		;;90,94
	NOP		;;90,94
	NOP		;;90,94
	or	%GPR2,%GPR2,%GPR3	
	NOP		;;94,98
	NOP		;;94,98
	NOP		;;94,98
	NOP		;;94,98
	sb	0(%GPR5),%GPR2	
	NOP		
	NOP		
	NOP		
L23:
	slei	%GPR27,%GPR1,$5	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	bnez	%GPR1,L25	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L24	
	NOP		
	NOP		
	NOP		
	NOP		
L24:
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	j	L39	
	NOP		
	NOP		
	NOP		
	NOP		
L25:
	add	%GPR2,%GPR1,%GPR0	
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$8	
	NOP		;;36,39
	NOP		;;36,39
	NOP		;;36,39
	slli	%GPR2,%GPR2,$8	
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		
	NOP		
	NOP		
L26:
	andi	%GPR4,%GPR2,$32768	
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$0	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	sne	%GPR27,%GPR4,%GPR5	
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	bnez	%GPR27,L27	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L35	
	NOP		
	NOP		
	NOP		
	NOP		
L27:
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	slli	%GPR2,%GPR2,$1	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	xori	%GPR2,%GPR2,$4129	
	NOP		
	NOP		
	NOP		
L28:
	andi	%GPR4,%GPR2,$32768	
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$0	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	sne	%GPR27,%GPR4,%GPR5	
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	bnez	%GPR27,L29	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L36	
	NOP		
	NOP		
	NOP		
	NOP		
L29:
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	slli	%GPR2,%GPR2,$1	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	xori	%GPR2,%GPR2,$4129	
	NOP		
	NOP		
	NOP		
L30:
	andi	%GPR4,%GPR2,$32768	
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$0	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	sne	%GPR27,%GPR4,%GPR5	
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	bnez	%GPR27,L31	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L37	
	NOP		
	NOP		
	NOP		
	NOP		
L31:
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	slli	%GPR2,%GPR2,$1	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	xori	%GPR2,%GPR2,$4129	
	NOP		
	NOP		
	NOP		
L32:
	andi	%GPR4,%GPR2,$32768	
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$0	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	sne	%GPR27,%GPR4,%GPR5	
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	bnez	%GPR27,L33	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L38	
	NOP		
	NOP		
	NOP		
	NOP		
L33:
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	slli	%GPR2,%GPR2,$1	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	xori	%GPR2,%GPR2,$4129	
	NOP		
	NOP		
	NOP		
L34:
	addi	%GPR3,%GPR3,$-4	
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	sgt	%GPR27,%GPR3,%GPR4	
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	bnez	%GPR27,L26	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L22	
	NOP		
	NOP		
	NOP		
	NOP		
L35:
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	slli	%GPR2,%GPR2,$1	
	j	L28	
	NOP		
	NOP		
	NOP		
L36:
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	slli	%GPR2,%GPR2,$1	
	j	L30	
	NOP		
	NOP		
	NOP		
L37:
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	slli	%GPR2,%GPR2,$1	
	j	L32	
	NOP		
	NOP		
	NOP		
L38:
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	slli	%GPR2,%GPR2,$1	
	j	L34	
	NOP		
	NOP		
	NOP		
L39:
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	lw	%GPR30,0(%GPR30)	
	NOP		
	NOP		
	jr	%GPR31	
	NOP		
	NOP		
	NOP		
	NOP		
main:
L40:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;1,3
	NOP		;;1,3
	LI	%GPR1, *_lin	
	NOP		;;3,5
	NOP		;;3,5
	LI	%GPR2, *L1	
	NOP		;;5,37
	NOP		;;5,37
	NOP		;;5,37
	NOP		;;5,37
	NOP		;;5,37
	NOP		;;5,37
	NOP		;;5,37
	NOP		;;5,37
	NOP		;;5,37
	NOP		;;5,37
	NOP		;;5,37
	NOP		;;5,37
	NOP		;;5,37
	NOP		;;5,37
	NOP		;;5,37
	NOP		;;5,37
	NOP		;;5,37
	NOP		;;5,37
	NOP		;;5,37
	NOP		;;5,37
	NOP		;;5,37
	NOP		;;5,37
	NOP		;;5,37
	NOP		;;5,37
	NOP		;;5,37
	NOP		;;5,37
	NOP		;;5,37
	NOP		;;5,37
	NOP		;;5,37
	NOP		;;5,37
	NOP		;;5,37
	NOP		;;5,37
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$41	
	NOP		;;37,39
	NOP		;;37,39
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	NOP		;;39,41
	NOP		;;39,41
	add	%GPR1,%GPR1,%GPR3	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$0	
	NOP		;;42,45
	NOP		;;42,45
	NOP		;;42,45
	sb	0(%GPR1),%GPR4	
	NOP		;;45,49
	NOP		;;45,49
	NOP		;;45,49
	NOP		;;45,49
	lw	%GPR1,0(%GPR2)	
	NOP		;;49,53
	NOP		;;49,53
	NOP		;;49,53
	NOP		;;49,53
	seq	%GPR27,%GPR1,%GPR5	
	NOP		;;53,57
	NOP		;;53,57
	NOP		;;53,57
	NOP		;;53,57
	bnez	%GPR27,L41	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L44	
	NOP		
	NOP		
	NOP		
	NOP		
L41:
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$1	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;36,39
	NOP		;;36,39
	NOP		;;36,39
	sw	0(%GPR2),%GPR3	
	j	L43	
	NOP		
	NOP		
	NOP		
L42:
	add	%GPR4,%GPR1,%GPR0	
	LI	%GPR5, *_icrctb	
	LI	%GPR3, *L3	
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	andi	%GPR6,%GPR1,$15	
	add	%GPR7,%GPR1,%GPR0	
	LI	%GPR8, *L2	
	srli	%GPR9,%GPR1,$4	
	NOP		;;8,11
	NOP		;;8,11
	NOP		;;8,11
	addi	%GPR1,%GPR1,$1	
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	NOP		;;11,37
	add	%GPR6,%GPR3,%GPR6	
	NOP		;;37,39
	NOP		;;37,39
	slli	%GPR4,%GPR4,$1	
	add	%GPR3,%GPR3,%GPR9	
	NOP		;;40,43
	NOP		;;40,43
	NOP		;;40,43
	add	%GPR4,%GPR5,%GPR4	
	NOP		;;43,47
	NOP		;;43,47
	NOP		;;43,47
	NOP		;;43,47
	sh	0(%GPR4),%GPR2	
	add	%GPR5,%GPR8,%GPR7	
	NOP		;;48,51
	NOP		;;48,51
	NOP		;;48,51
	lb	%GPR2,0(%GPR6)	
	lb	%GPR3,0(%GPR3)	
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	NOP		;;52,90
	slli	%GPR2,%GPR2,$4	
	NOP		;;90,94
	NOP		;;90,94
	NOP		;;90,94
	NOP		;;90,94
	or	%GPR2,%GPR2,%GPR3	
	NOP		;;94,98
	NOP		;;94,98
	NOP		;;94,98
	NOP		;;94,98
	sb	0(%GPR5),%GPR2	
	NOP		
	NOP		
	NOP		
L43:
	slei	%GPR27,%GPR1,$5	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	bnez	%GPR1,L45	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L44	
	NOP		
	NOP		
	NOP		
	NOP		
L44:
	NOP		;;0,2
	NOP		;;0,2
	LI	%GPR1, *_i1	
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	NOP		;;2,35
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		;;36,39
	NOP		;;36,39
	NOP		;;36,39
	sh	0(%GPR1),%GPR2	
	j	L59	
	NOP		
	NOP		
	NOP		
	NOP		
L45:
	add	%GPR2,%GPR1,%GPR0	
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	NOP		;;0,36
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$8	
	NOP		;;36,39
	NOP		;;36,39
	NOP		;;36,39
	slli	%GPR2,%GPR2,$8	
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		;;39,75
	NOP		
	NOP		
	NOP		
L46:
	andi	%GPR4,%GPR2,$32768	
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$0	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	sne	%GPR27,%GPR4,%GPR5	
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	bnez	%GPR27,L47	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L55	
	NOP		
	NOP		
	NOP		
	NOP		
L47:
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	slli	%GPR2,%GPR2,$1	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	xori	%GPR2,%GPR2,$4129	
	NOP		
	NOP		
	NOP		
L48:
	andi	%GPR4,%GPR2,$32768	
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$0	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	sne	%GPR27,%GPR4,%GPR5	
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	bnez	%GPR27,L49	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L56	
	NOP		
	NOP		
	NOP		
	NOP		
L49:
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	slli	%GPR2,%GPR2,$1	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	xori	%GPR2,%GPR2,$4129	
	NOP		
	NOP		
	NOP		
L50:
	andi	%GPR4,%GPR2,$32768	
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$0	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	sne	%GPR27,%GPR4,%GPR5	
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	bnez	%GPR27,L51	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L57	
	NOP		
	NOP		
	NOP		
	NOP		
L51:
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	slli	%GPR2,%GPR2,$1	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	xori	%GPR2,%GPR2,$4129	
	NOP		
	NOP		
	NOP		
L52:
	andi	%GPR4,%GPR2,$32768	
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$0	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	sne	%GPR27,%GPR4,%GPR5	
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	bnez	%GPR27,L53	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L58	
	NOP		
	NOP		
	NOP		
	NOP		
L53:
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	slli	%GPR2,%GPR2,$1	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	xori	%GPR2,%GPR2,$4129	
	NOP		
	NOP		
	NOP		
L54:
	addi	%GPR3,%GPR3,$-4	
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	NOP		;;1,35
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	sgt	%GPR27,%GPR3,%GPR4	
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	bnez	%GPR27,L46	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L42	
	NOP		
	NOP		
	NOP		
	NOP		
L55:
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	slli	%GPR2,%GPR2,$1	
	j	L48	
	NOP		
	NOP		
	NOP		
L56:
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	slli	%GPR2,%GPR2,$1	
	j	L50	
	NOP		
	NOP		
	NOP		
L57:
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	slli	%GPR2,%GPR2,$1	
	j	L52	
	NOP		
	NOP		
	NOP		
L58:
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	NOP		;;0,35
	slli	%GPR2,%GPR2,$1	
	j	L54	
	NOP		
	NOP		
	NOP		
L59:
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	lw	%GPR30,0(%GPR30)	
	NOP		
	NOP		
	jr	%GPR31	
	NOP		
	NOP		
	NOP		
	NOP		