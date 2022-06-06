	.section	.data
	;.global	_temp
	.align	4
_temp:
	.space	4
	.section	.text
loadByteUnsigned:
L1:
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
	add	%GPR2,%GPR1,%GPR0	
	NOP		
	NOP		
	NOP		
	andi	%GPR1,%GPR2,$3	
	NOP		;;3,7
	NOP		;;3,7
	NOP		;;3,7
	NOP		;;3,7
	addi	%GPR3,%GPR1,$1	
	NOP		
	NOP		
	NOP		
	NOP		
	subu	%GPR3,%GPR0,%GPR3	
	lhi	%GPR1,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$-4	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	and	%GPR1,%GPR2,%GPR1	
	slli	%GPR2,%GPR3,$3	
	NOP		;;13,16
	NOP		;;13,16
	NOP		;;13,16
	lw	%GPR1,0(%GPR1)	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sra	%GPR1,%GPR1,%GPR2	
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	andi	%GPR28,%GPR1,$255	
	NOP		;;24,28
	NOP		;;24,28
	NOP		;;24,28
	NOP		;;24,28
	j	L2	
	NOP		
	NOP		
	NOP		
	NOP		
L2:
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
loadByteSigned:
L3:
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
	add	%GPR2,%GPR1,%GPR0	
	NOP		
	NOP		
	NOP		
	andi	%GPR1,%GPR2,$3	
	NOP		;;3,7
	NOP		;;3,7
	NOP		;;3,7
	NOP		;;3,7
	addi	%GPR3,%GPR1,$1	
	NOP		
	NOP		
	NOP		
	NOP		
	subu	%GPR3,%GPR0,%GPR3	
	lhi	%GPR1,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$-4	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	and	%GPR1,%GPR2,%GPR1	
	slli	%GPR2,%GPR3,$3	
	NOP		;;13,16
	NOP		;;13,16
	NOP		;;13,16
	lw	%GPR1,0(%GPR1)	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sra	%GPR1,%GPR1,%GPR2	
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	andi	%GPR1,%GPR1,$255	
	NOP		;;24,28
	NOP		;;24,28
	NOP		;;24,28
	NOP		;;24,28
	slli	%GPR1,%GPR1,$24	
	NOP		;;28,32
	NOP		;;28,32
	NOP		;;28,32
	NOP		;;28,32
	srai	%GPR28,%GPR1,$24	
	NOP		;;32,36
	NOP		;;32,36
	NOP		;;32,36
	NOP		;;32,36
	j	L4	
	NOP		
	NOP		
	NOP		
	NOP		
L4:
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
storeByte:
L5:
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
	add	%GPR3,%GPR1,%GPR0	
	NOP		
	NOP		
	NOP		
	NOP		;;2,4
	NOP		;;2,4
	andi	%GPR1,%GPR3,$3	
	NOP		;;4,6
	NOP		;;4,6
	andi	%GPR4,%GPR3,$3	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$3	
	NOP		;;7,10
	NOP		;;7,10
	NOP		;;7,10
	addi	%GPR4,%GPR4,$1	
	NOP		
	NOP		
	NOP		
	NOP		
	subu	%GPR4,%GPR0,%GPR4	
	sub	%GPR5,%GPR5,%GPR1	
	lhi	%GPR1,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$-4	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$255	
	NOP		;;13,16
	NOP		;;13,16
	NOP		;;13,16
	and	%GPR1,%GPR3,%GPR1	
	slli	%GPR3,%GPR4,$3	
	slli	%GPR4,%GPR5,$3	
	NOP		;;18,20
	NOP		;;18,20
	lw	%GPR28,0(%GPR1)	
	sll	%GPR2,%GPR2,%GPR3	
	sll	%GPR3,%GPR6,%GPR4	
	NOP		;;22,26
	NOP		;;22,26
	NOP		;;22,26
	NOP		;;22,26
	addi	%GPR3,%GPR3,$1	
	NOP		
	NOP		
	NOP		
	NOP		
	subu	%GPR3,%GPR0,%GPR3	
	NOP		;;26,30
	NOP		;;26,30
	NOP		;;26,30
	NOP		;;26,30
	and	%GPR28,%GPR28,%GPR3	
	NOP		;;30,34
	NOP		;;30,34
	NOP		;;30,34
	NOP		;;30,34
	or	%GPR28,%GPR28,%GPR2	
	NOP		;;34,38
	NOP		;;34,38
	NOP		;;34,38
	NOP		;;34,38
	sw	0(%GPR1),%GPR28	
	j	L6	
	NOP		
	NOP		
	NOP		
	NOP		
L6:
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
loadShortUnsigned:
L7:
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
	add	%GPR2,%GPR1,%GPR0	
	NOP		
	NOP		
	NOP		
	NOP		;;2,4
	NOP		;;2,4
	LI	%GPR3, *_temp	
	andi	%GPR4,%GPR2,$2	
	LI	%GPR5, *_temp	
	lhi	%GPR1,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$-4	
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	and	%GPR1,%GPR2,%GPR1	
	NOP		;;11,15
	NOP		;;11,15
	NOP		;;11,15
	NOP		;;11,15
	lw	%GPR1,0(%GPR1)	
	sw	0(%GPR3),%GPR4	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	lw	%GPR2,0(%GPR5)	
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	srai	%GPR2,%GPR2,$1	
	NOP		;;24,28
	NOP		;;24,28
	NOP		;;24,28
	NOP		;;24,28
	addi	%GPR2,%GPR2,$1	
	NOP		
	NOP		
	NOP		
	NOP		
	subu	%GPR2,%GPR0,%GPR2	
	NOP		;;28,32
	NOP		;;28,32
	NOP		;;28,32
	NOP		;;28,32
	slli	%GPR2,%GPR2,$4	
	NOP		;;32,36
	NOP		;;32,36
	NOP		;;32,36
	NOP		;;32,36
	sra	%GPR1,%GPR1,%GPR2	
	NOP		;;36,40
	NOP		;;36,40
	NOP		;;36,40
	NOP		;;36,40
	andi	%GPR28,%GPR1,$65535	
	NOP		;;40,44
	NOP		;;40,44
	NOP		;;40,44
	NOP		;;40,44
	j	L8	
	NOP		
	NOP		
	NOP		
	NOP		
L8:
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
loadShortSigned:
L9:
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
	add	%GPR2,%GPR1,%GPR0	
	NOP		
	NOP		
	NOP		
	NOP		;;2,4
	NOP		;;2,4
	LI	%GPR3, *_temp	
	andi	%GPR4,%GPR2,$2	
	LI	%GPR5, *_temp	
	lhi	%GPR1,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$-4	
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	and	%GPR1,%GPR2,%GPR1	
	NOP		;;11,15
	NOP		;;11,15
	NOP		;;11,15
	NOP		;;11,15
	lw	%GPR1,0(%GPR1)	
	sw	0(%GPR3),%GPR4	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	lw	%GPR2,0(%GPR5)	
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	srai	%GPR2,%GPR2,$1	
	NOP		;;24,28
	NOP		;;24,28
	NOP		;;24,28
	NOP		;;24,28
	addi	%GPR2,%GPR2,$1	
	NOP		
	NOP		
	NOP		
	NOP		
	subu	%GPR2,%GPR0,%GPR2	
	NOP		;;28,32
	NOP		;;28,32
	NOP		;;28,32
	NOP		;;28,32
	slli	%GPR2,%GPR2,$4	
	NOP		;;32,36
	NOP		;;32,36
	NOP		;;32,36
	NOP		;;32,36
	sra	%GPR1,%GPR1,%GPR2	
	NOP		;;36,40
	NOP		;;36,40
	NOP		;;36,40
	NOP		;;36,40
	andi	%GPR1,%GPR1,$65535	
	NOP		;;40,44
	NOP		;;40,44
	NOP		;;40,44
	NOP		;;40,44
	slli	%GPR1,%GPR1,$16	
	NOP		;;44,48
	NOP		;;44,48
	NOP		;;44,48
	NOP		;;44,48
	srai	%GPR28,%GPR1,$16	
	NOP		;;48,52
	NOP		;;48,52
	NOP		;;48,52
	NOP		;;48,52
	j	L10	
	NOP		
	NOP		
	NOP		
	NOP		
L10:
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
storeShort:
L11:
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
	add	%GPR3,%GPR1,%GPR0	
	NOP		
	NOP		
	NOP		
	NOP		;;2,4
	NOP		;;2,4
	LI	%GPR4, *_temp	
	andi	%GPR5,%GPR3,$2	
	NOP		;;5,7
	NOP		;;5,7
	lhi	%GPR1,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$-4	
	LI	%GPR6, *_temp	
	NOP		;;8,11
	NOP		;;8,11
	NOP		;;8,11
	and	%GPR1,%GPR3,%GPR1	
	andi	%GPR3,%GPR3,$1	
	NOP		;;12,15
	NOP		;;12,15
	NOP		;;12,15
	lw	%GPR28,0(%GPR1)	
	sw	0(%GPR4),%GPR5	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$1	
	NOP		;;17,20
	NOP		;;17,20
	NOP		;;17,20
	lw	%GPR4,0(%GPR6)	
	sub	%GPR3,%GPR5,%GPR3	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$65535	
	NOP		;;22,24
	NOP		;;22,24
	srai	%GPR4,%GPR4,$1	
	slli	%GPR3,%GPR3,$4	
	NOP		;;25,28
	NOP		;;25,28
	NOP		;;25,28
	addi	%GPR4,%GPR4,$1	
	NOP		
	NOP		
	NOP		
	NOP		
	subu	%GPR4,%GPR0,%GPR4	
	sll	%GPR3,%GPR6,%GPR3	
	NOP		;;29,32
	NOP		;;29,32
	NOP		;;29,32
	slli	%GPR4,%GPR4,$4	
	addi	%GPR3,%GPR3,$1	
	NOP		
	NOP		
	NOP		
	NOP		
	subu	%GPR3,%GPR0,%GPR3	
	NOP		;;33,36
	NOP		;;33,36
	NOP		;;33,36
	sra	%GPR2,%GPR2,%GPR4	
	and	%GPR28,%GPR28,%GPR3	
	NOP		;;37,41
	NOP		;;37,41
	NOP		;;37,41
	NOP		;;37,41
	or	%GPR28,%GPR28,%GPR2	
	NOP		;;41,45
	NOP		;;41,45
	NOP		;;41,45
	NOP		;;41,45
	sw	0(%GPR1),%GPR28	
	j	L12	
	NOP		
	NOP		
	NOP		
	NOP		
L12:
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
