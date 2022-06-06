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
				; Automatically 6 NOPs removed by reduceNOPs.sh
	andi	%GPR2,%GPR1,$-4	
	andi	%GPR1,%GPR1,$3	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subu	%GPR1,%GPR0,%GPR1	
	nop	;;8,11
	nop	;;8,11
	nop	;;8,11
	lw	%GPR2,0(%GPR2)	
	slli	%GPR1,%GPR1,$3	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sra	%GPR1,%GPR2,%GPR1	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR28,%GPR1,$255	
	nop	;;20,24
	nop	;;20,24
	nop	;;20,24
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
				; Automatically 6 NOPs removed by reduceNOPs.sh
	andi	%GPR2,%GPR1,$-4	
	andi	%GPR1,%GPR1,$3	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subu	%GPR1,%GPR0,%GPR1	
	nop	;;8,11
	nop	;;8,11
	nop	;;8,11
	lw	%GPR2,0(%GPR2)	
	slli	%GPR1,%GPR1,$3	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sra	%GPR1,%GPR2,%GPR1	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR1,%GPR1,$255	
	nop	;;20,24
	nop	;;20,24
	nop	;;20,24
				; Automatically 1 NOPs removed by reduceNOPs.sh
	slli	%GPR1,%GPR1,$24	
	nop	;;24,28
	nop	;;24,28
	nop	;;24,28
				; Automatically 1 NOPs removed by reduceNOPs.sh
	srai	%GPR28,%GPR1,$24	
	nop	;;28,32
	nop	;;28,32
	nop	;;28,32
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
				; Automatically 8 NOPs removed by reduceNOPs.sh
	andi	%GPR3,%GPR1,$3	
	nop	;;4,6
	nop	;;4,6
	andi	%GPR4,%GPR1,$3	
	lhi	%GPR5,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$3	
	andi	%GPR1,%GPR1,$-4	
	lhi	%GPR6,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$255	
	addi	%GPR4,%GPR4,$1	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subu	%GPR4,%GPR0,%GPR4	
	sub	%GPR3,%GPR5,%GPR3	
	lw	%GPR5,0(%GPR1)	
	nop	;;12,14
	nop	;;12,14
	slli	%GPR4,%GPR4,$3	
	slli	%GPR3,%GPR3,$3	
	nop	;;15,18
	nop	;;15,18
	nop	;;15,18
	sll	%GPR2,%GPR2,%GPR4	
	sll	%GPR3,%GPR6,%GPR3	
	nop	;;19,23
	nop	;;19,23
	nop	;;19,23
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR3,%GPR3,$1	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subu	%GPR3,%GPR0,%GPR3	
	nop	;;23,27
	nop	;;23,27
	nop	;;23,27
				; Automatically 1 NOPs removed by reduceNOPs.sh
	and	%GPR3,%GPR5,%GPR3	
	nop	;;27,31
	nop	;;27,31
	nop	;;27,31
				; Automatically 1 NOPs removed by reduceNOPs.sh
	or	%GPR28,%GPR3,%GPR2	
	nop	;;31,35
	nop	;;31,35
	nop	;;31,35
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
				; Automatically 6 NOPs removed by reduceNOPs.sh
	andi	%GPR2,%GPR1,$-4	
	lhi	%GPR3,$( _temp	/0x10000)
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$( _temp	%0x10000)
	andi	%GPR4,%GPR1,$2	
	lhi	%GPR5,$( _temp	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _temp	%0x10000)
	nop	;;6,11
	nop	;;6,11
	nop	;;6,11
				; Automatically 2 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR2)	
	sw	0(%GPR3),%GPR4	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR5)	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	srai	%GPR2,%GPR2,$1	
	nop	;;20,24
	nop	;;20,24
	nop	;;20,24
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR2,%GPR2,$1	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subu	%GPR2,%GPR0,%GPR2	
	nop	;;24,28
	nop	;;24,28
	nop	;;24,28
				; Automatically 1 NOPs removed by reduceNOPs.sh
	slli	%GPR2,%GPR2,$4	
	nop	;;28,32
	nop	;;28,32
	nop	;;28,32
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sra	%GPR1,%GPR1,%GPR2	
	nop	;;32,36
	nop	;;32,36
	nop	;;32,36
				; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR28,%GPR1,$65535	
	nop	;;36,40
	nop	;;36,40
	nop	;;36,40
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
				; Automatically 6 NOPs removed by reduceNOPs.sh
	andi	%GPR2,%GPR1,$-4	
	lhi	%GPR3,$( _temp	/0x10000)
	nop
	nop
	nop
	ori	%GPR3,%GPR3,$( _temp	%0x10000)
	andi	%GPR4,%GPR1,$2	
	lhi	%GPR5,$( _temp	/0x10000)
	nop
	nop
	nop
	ori	%GPR5,%GPR5,$( _temp	%0x10000)
	nop	;;6,11
	nop	;;6,11
	nop	;;6,11
				; Automatically 2 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR2)	
	sw	0(%GPR3),%GPR4	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR5)	
	nop	;;16,20
	nop	;;16,20
	nop	;;16,20
				; Automatically 1 NOPs removed by reduceNOPs.sh
	srai	%GPR2,%GPR2,$1	
	nop	;;20,24
	nop	;;20,24
	nop	;;20,24
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR2,%GPR2,$1	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subu	%GPR2,%GPR0,%GPR2	
	nop	;;24,28
	nop	;;24,28
	nop	;;24,28
				; Automatically 1 NOPs removed by reduceNOPs.sh
	slli	%GPR2,%GPR2,$4	
	nop	;;28,32
	nop	;;28,32
	nop	;;28,32
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sra	%GPR1,%GPR1,%GPR2	
	nop	;;32,36
	nop	;;32,36
	nop	;;32,36
				; Automatically 1 NOPs removed by reduceNOPs.sh
	andi	%GPR1,%GPR1,$65535	
	nop	;;36,40
	nop	;;36,40
	nop	;;36,40
				; Automatically 1 NOPs removed by reduceNOPs.sh
	slli	%GPR1,%GPR1,$16	
	nop	;;40,44
	nop	;;40,44
	nop	;;40,44
				; Automatically 1 NOPs removed by reduceNOPs.sh
	srai	%GPR28,%GPR1,$16	
	nop	;;44,48
	nop	;;44,48
	nop	;;44,48
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
				; Automatically 6 NOPs removed by reduceNOPs.sh
	andi	%GPR3,%GPR1,$-4	
	lhi	%GPR4,$( _temp	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( _temp	%0x10000)
	andi	%GPR5,%GPR1,$2	
	nop	;;5,7
	nop	;;5,7
	lw	%GPR28,0(%GPR3)	
	andi	%GPR1,%GPR1,$1	
	sw	0(%GPR4),%GPR5	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$1	
	lhi	%GPR6,$( _temp	/0x10000)
	nop
	nop
	nop
	ori	%GPR6,%GPR6,$( _temp	%0x10000)
	nop	;;11,14
	nop	;;11,14
	nop	;;11,14
	sub	%GPR1,%GPR4,%GPR1	
	lw	%GPR5,0(%GPR6)	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$65535	
	nop	;;16,18
	nop	;;16,18
	slli	%GPR1,%GPR1,$4	
	srai	%GPR5,%GPR5,$1	
	nop	;;19,22
	nop	;;19,22
	nop	;;19,22
	sll	%GPR1,%GPR4,%GPR1	
	addi	%GPR5,%GPR5,$1	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subu	%GPR5,%GPR0,%GPR5	
	nop	;;23,26
	nop	;;23,26
	nop	;;23,26
	addi	%GPR1,%GPR1,$1	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subu	%GPR1,%GPR0,%GPR1	
	slli	%GPR4,%GPR5,$4	
	nop	;;27,30
	nop	;;27,30
	nop	;;27,30
	and	%GPR1,%GPR28,%GPR1	
	sra	%GPR2,%GPR2,%GPR4	
	nop	;;31,35
	nop	;;31,35
	nop	;;31,35
				; Automatically 1 NOPs removed by reduceNOPs.sh
	or	%GPR28,%GPR1,%GPR2	
	nop	;;35,39
	nop	;;35,39
	nop	;;35,39
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR3),%GPR28	
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
