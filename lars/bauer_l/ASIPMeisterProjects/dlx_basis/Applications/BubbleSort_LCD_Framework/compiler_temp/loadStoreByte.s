	.section	.data
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
	NOP		
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
	andi	%GPR2,%GPR1,$-4	
	andi	%GPR1,%GPR1,$3	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	addi	%GPR1,%GPR1,$1	
	NOP		
	NOP		
	NOP		
	NOP		
	subu	%GPR1,%GPR0,%GPR1	
	NOP		;;8,11
	NOP		;;8,11
	NOP		;;8,11
	lw	%GPR2,0(%GPR2)	
	slli	%GPR1,%GPR1,$3	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	sra	%GPR1,%GPR2,%GPR1	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	andi	%GPR28,%GPR1,$255	
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
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
	NOP		
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
	andi	%GPR2,%GPR1,$-4	
	andi	%GPR1,%GPR1,$3	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	addi	%GPR1,%GPR1,$1	
	NOP		
	NOP		
	NOP		
	NOP		
	subu	%GPR1,%GPR0,%GPR1	
	NOP		;;8,11
	NOP		;;8,11
	NOP		;;8,11
	lw	%GPR2,0(%GPR2)	
	slli	%GPR1,%GPR1,$3	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	sra	%GPR1,%GPR2,%GPR1	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	andi	%GPR1,%GPR1,$255	
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	slli	%GPR1,%GPR1,$24	
	NOP		;;24,28
	NOP		;;24,28
	NOP		;;24,28
	NOP		;;24,28
	srai	%GPR28,%GPR1,$24	
	NOP		;;28,32
	NOP		;;28,32
	NOP		;;28,32
	NOP		;;28,32
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
	NOP		
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
	NOP		;;2,4
	NOP		;;2,4
	andi	%GPR3,%GPR1,$3	
	NOP		;;4,6
	NOP		;;4,6
	andi	%GPR4,%GPR1,$3	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$3	
	andi	%GPR1,%GPR1,$-4	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$255	
	addi	%GPR4,%GPR4,$1	
	NOP		
	NOP		
	NOP		
	NOP		
	subu	%GPR4,%GPR0,%GPR4	
	sub	%GPR3,%GPR5,%GPR3	
	lw	%GPR5,0(%GPR1)	
	NOP		;;12,14
	NOP		;;12,14
	slli	%GPR4,%GPR4,$3	
	slli	%GPR3,%GPR3,$3	
	NOP		;;15,18
	NOP		;;15,18
	NOP		;;15,18
	sll	%GPR2,%GPR2,%GPR4	
	sll	%GPR3,%GPR6,%GPR3	
	NOP		;;19,23
	NOP		;;19,23
	NOP		;;19,23
	NOP		;;19,23
	addi	%GPR3,%GPR3,$1	
	NOP		
	NOP		
	NOP		
	NOP		
	subu	%GPR3,%GPR0,%GPR3	
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	and	%GPR3,%GPR5,%GPR3	
	NOP		;;27,31
	NOP		;;27,31
	NOP		;;27,31
	NOP		;;27,31
	or	%GPR28,%GPR3,%GPR2	
	NOP		;;31,35
	NOP		;;31,35
	NOP		;;31,35
	NOP		;;31,35
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
