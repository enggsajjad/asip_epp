	.section	.data
	;.global	_temp
	.align	4
_temp:
	.space	4
	.section	.text
	.addressing	Word
loadByteUnsigned:
L1:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	andi	%GPR1,%GPR2,$3	
	nop	;;3,7
	nop	;;3,7
	nop	;;3,7
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR3,%GPR1,$1	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subu	%GPR3,%GPR0,%GPR3	
	lhi	%GPR1,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$-4	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	and	%GPR1,%GPR2,%GPR1	
	slli	%GPR2,%GPR3,$3	
	nop	;;13,16
	nop	;;13,16
	nop	;;13,16
	lw	%GPR1,0(%GPR1)	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sra	%GPR1,%GPR1,%GPR2	
	nop	;;20,24
	nop	;;20,24
	nop	;;20,24
				; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR28,%GPR1,$255	
	nop	;;24,28
	nop	;;24,28
	nop	;;24,28
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L2	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L2:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
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
				; Automatically 1 NOPs removed by reduceNOPs.sh
loadByteSigned:
L3:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	andi	%GPR1,%GPR2,$3	
	nop	;;3,7
	nop	;;3,7
	nop	;;3,7
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR3,%GPR1,$1	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subu	%GPR3,%GPR0,%GPR3	
	lhi	%GPR1,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$-4	
	nop	;;8,12
	nop	;;8,12
	nop	;;8,12
				; Automatically 1 NOPs removed by reduceNOPs.sh
	and	%GPR1,%GPR2,%GPR1	
	slli	%GPR2,%GPR3,$3	
	nop	;;13,16
	nop	;;13,16
	nop	;;13,16
	lw	%GPR1,0(%GPR1)	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sra	%GPR1,%GPR1,%GPR2	
	nop	;;20,24
	nop	;;20,24
	nop	;;20,24
				; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR1,%GPR1,$255	
	nop	;;24,28
	nop	;;24,28
	nop	;;24,28
				; Automatically 1 NOPs removed by reduceNOPs.sh
	slli	%GPR1,%GPR1,$24	
	nop	;;28,32
	nop	;;28,32
	nop	;;28,32
				; Automatically 1 NOPs removed by reduceNOPs.sh
	srai	%GPR28,%GPR1,$24	
	nop	;;32,36
	nop	;;32,36
	nop	;;32,36
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L4	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L4:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
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
				; Automatically 1 NOPs removed by reduceNOPs.sh
storeByte:
L5:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR1,%GPR0	
	nop
	nop
	nop
				; Automatically 2 NOPs removed by reduceNOPs.sh
	andi	%GPR1,%GPR3,$3	
	nop	;;4,6
	nop	;;4,6
	andi	%GPR4,%GPR3,$3	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$3	
	nop	;;7,10
	nop	;;7,10
	nop	;;7,10
	addi	%GPR4,%GPR4,$1	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subu	%GPR4,%GPR0,%GPR4	
	sub	%GPR5,%GPR5,%GPR1	
	lhi	%GPR1,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$-4	
	lhi	%GPR6,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$255	
	nop	;;13,16
	nop	;;13,16
	nop	;;13,16
	and	%GPR1,%GPR3,%GPR1	
	slli	%GPR3,%GPR4,$3	
	slli	%GPR4,%GPR5,$3	
	nop	;;18,20
	nop	;;18,20
	lw	%GPR28,0(%GPR1)	
	sll	%GPR2,%GPR2,%GPR3	
	sll	%GPR3,%GPR6,%GPR4	
	nop	;;22,26
	nop	;;22,26
	nop	;;22,26
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR3,%GPR3,$1	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subu	%GPR3,%GPR0,%GPR3	
	nop	;;26,30
	nop	;;26,30
	nop	;;26,30
				; Automatically 1 NOPs removed by reduceNOPs.sh
	and	%GPR28,%GPR28,%GPR3	
	nop	;;30,34
	nop	;;30,34
	nop	;;30,34
				; Automatically 1 NOPs removed by reduceNOPs.sh
	or	%GPR28,%GPR28,%GPR2	
	nop	;;34,38
	nop	;;34,38
	nop	;;34,38
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR28	
	j	L6	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L6:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
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
				; Automatically 1 NOPs removed by reduceNOPs.sh
loadShortUnsigned:
L7:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
				; Automatically 2 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$( _temp	/0x10000)
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$( _temp	%0x10000)
	andi	%GPR4,%GPR2,$2	
	lhi	%GPR5,$( _temp	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _temp	%0x10000)
	lhi	%GPR1,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$-4	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
				; Automatically 1 NOPs removed by reduceNOPs.sh
	and	%GPR1,%GPR2,%GPR1	
	nop	;;11,15
	nop	;;11,15
	nop	;;11,15
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	sw	0(%GPR3),%GPR4	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR5)	
	nop	;;20,24
	nop	;;20,24
	nop	;;20,24
				; Automatically 1 NOPs removed by reduceNOPs.sh
	srai	%GPR2,%GPR2,$1	
	nop	;;24,28
	nop	;;24,28
	nop	;;24,28
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR2,%GPR2,$1	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subu	%GPR2,%GPR0,%GPR2	
	nop	;;28,32
	nop	;;28,32
	nop	;;28,32
				; Automatically 1 NOPs removed by reduceNOPs.sh
	slli	%GPR2,%GPR2,$4	
	nop	;;32,36
	nop	;;32,36
	nop	;;32,36
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sra	%GPR1,%GPR1,%GPR2	
	nop	;;36,40
	nop	;;36,40
	nop	;;36,40
				; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR28,%GPR1,$65535	
	nop	;;40,44
	nop	;;40,44
	nop	;;40,44
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L8:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
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
				; Automatically 1 NOPs removed by reduceNOPs.sh
loadShortSigned:
L9:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
				; Automatically 2 NOPs removed by reduceNOPs.sh
	lhi	%GPR3,$( _temp	/0x10000)
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$( _temp	%0x10000)
	andi	%GPR4,%GPR2,$2	
	lhi	%GPR5,$( _temp	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _temp	%0x10000)
	lhi	%GPR1,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$-4	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
				; Automatically 1 NOPs removed by reduceNOPs.sh
	and	%GPR1,%GPR2,%GPR1	
	nop	;;11,15
	nop	;;11,15
	nop	;;11,15
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	sw	0(%GPR3),%GPR4	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR5)	
	nop	;;20,24
	nop	;;20,24
	nop	;;20,24
				; Automatically 1 NOPs removed by reduceNOPs.sh
	srai	%GPR2,%GPR2,$1	
	nop	;;24,28
	nop	;;24,28
	nop	;;24,28
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR2,%GPR2,$1	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subu	%GPR2,%GPR0,%GPR2	
	nop	;;28,32
	nop	;;28,32
	nop	;;28,32
				; Automatically 1 NOPs removed by reduceNOPs.sh
	slli	%GPR2,%GPR2,$4	
	nop	;;32,36
	nop	;;32,36
	nop	;;32,36
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sra	%GPR1,%GPR1,%GPR2	
	nop	;;36,40
	nop	;;36,40
	nop	;;36,40
				; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR1,%GPR1,$65535	
	nop	;;40,44
	nop	;;40,44
	nop	;;40,44
				; Automatically 1 NOPs removed by reduceNOPs.sh
	slli	%GPR1,%GPR1,$16	
	nop	;;44,48
	nop	;;44,48
	nop	;;44,48
				; Automatically 1 NOPs removed by reduceNOPs.sh
	srai	%GPR28,%GPR1,$16	
	nop	;;48,52
	nop	;;48,52
	nop	;;48,52
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L10	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L10:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
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
				; Automatically 1 NOPs removed by reduceNOPs.sh
storeShort:
L11:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	nop
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR1,%GPR0	
	nop
	nop
	nop
				; Automatically 2 NOPs removed by reduceNOPs.sh
	lhi	%GPR4,$( _temp	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( _temp	%0x10000)
	andi	%GPR5,%GPR3,$2	
	nop	;;5,7
	nop	;;5,7
	lhi	%GPR1,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$-4	
	lhi	%GPR6,$( _temp	/0x10000)
	nop
	nop
	nop
	ori	%GPR6,%GPR6,$( _temp	%0x10000)
	nop	;;8,11
	nop	;;8,11
	nop	;;8,11
	and	%GPR1,%GPR3,%GPR1	
	andi	%GPR3,%GPR3,$1	
	nop	;;12,15
	nop	;;12,15
	nop	;;12,15
	lw	%GPR28,0(%GPR1)	
	sw	0(%GPR4),%GPR5	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$1	
	nop	;;17,20
	nop	;;17,20
	nop	;;17,20
	lw	%GPR4,0(%GPR6)	
	sub	%GPR3,%GPR5,%GPR3	
	lhi	%GPR6,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$65535	
	nop	;;22,24
	nop	;;22,24
	srai	%GPR4,%GPR4,$1	
	slli	%GPR3,%GPR3,$4	
	nop	;;25,28
	nop	;;25,28
	nop	;;25,28
	addi	%GPR4,%GPR4,$1	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subu	%GPR4,%GPR0,%GPR4	
	sll	%GPR3,%GPR6,%GPR3	
	nop	;;29,32
	nop	;;29,32
	nop	;;29,32
	slli	%GPR4,%GPR4,$4	
	addi	%GPR3,%GPR3,$1	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subu	%GPR3,%GPR0,%GPR3	
	nop	;;33,36
	nop	;;33,36
	nop	;;33,36
	sra	%GPR2,%GPR2,%GPR4	
	and	%GPR28,%GPR28,%GPR3	
	nop	;;37,41
	nop	;;37,41
	nop	;;37,41
				; Automatically 1 NOPs removed by reduceNOPs.sh
	or	%GPR28,%GPR28,%GPR2	
	nop	;;41,45
	nop	;;41,45
	nop	;;41,45
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR28	
	j	L12	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L12:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
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