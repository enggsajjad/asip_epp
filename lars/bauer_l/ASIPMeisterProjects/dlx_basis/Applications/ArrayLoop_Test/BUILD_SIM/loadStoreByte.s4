	.section	.data
	;.global	_temp
	.align	4
_temp:
	.space	4
	.section	.text
storeByte:
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
	NOP		;;0,2
	NOP		;;0,2
	NOP		
	NOP		
	NOP		
	NOP		;;2,4
	NOP		;;2,4
	andi	%GPR3,%GPR1,$3	
	NOP		;;4,7
	NOP		;;4,7
	NOP		;;4,7
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$3	
	andi	%GPR5,%GPR1,$3	
	lhi	%GPR7,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$-4	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$255	
	sub	%GPR3,%GPR4,%GPR3	
	addi	%GPR4,%GPR5,$1	
	NOP		
	NOP		
	NOP		
	NOP		
	subu	%GPR4,%GPR0,%GPR4	
	and	%GPR1,%GPR1,%GPR7	
	NOP		;;13,15
	NOP		;;13,15
	slli	%GPR3,%GPR3,$3	
	slli	%GPR4,%GPR4,$3	
	lw	%GPR5,0(%GPR1)	
	NOP		;;17,19
	NOP		;;17,19
	sll	%GPR3,%GPR6,%GPR3	
	sll	%GPR2,%GPR2,%GPR4	
	NOP		;;20,23
	NOP		;;20,23
	NOP		;;20,23
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
storeShort:
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
	NOP		;;0,2
	NOP		;;0,2
	NOP		
	NOP		
	NOP		
	NOP		;;2,4
	NOP		;;2,4
	andi	%GPR5,%GPR1,$2	
	andi	%GPR6,%GPR1,$1	
	LI	%GPR4, *_temp	
	lhi	%GPR3,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$-4	
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	and	%GPR1,%GPR1,%GPR3	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$1	
	NOP		;;12,15
	NOP		;;12,15
	NOP		;;12,15
	lw	%GPR3,0(%GPR1)	
	sw	0(%GPR4),%GPR5	
	sub	%GPR5,%GPR7,%GPR6	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$65535	
	NOP		;;18,20
	NOP		;;18,20
	lw	%GPR4,0(%GPR4)	
	slli	%GPR5,%GPR5,$4	
	NOP		;;21,24
	NOP		;;21,24
	NOP		;;21,24
	srai	%GPR4,%GPR4,$1	
	sll	%GPR5,%GPR6,%GPR5	
	NOP		;;25,28
	NOP		;;25,28
	NOP		;;25,28
	addi	%GPR4,%GPR4,$1	
	NOP		
	NOP		
	NOP		
	NOP		
	subu	%GPR4,%GPR0,%GPR4	
	addi	%GPR5,%GPR5,$1	
	NOP		
	NOP		
	NOP		
	NOP		
	subu	%GPR5,%GPR0,%GPR5	
	NOP		;;29,32
	NOP		;;29,32
	NOP		;;29,32
	slli	%GPR4,%GPR4,$4	
	and	%GPR3,%GPR3,%GPR5	
	NOP		;;33,36
	NOP		;;33,36
	NOP		;;33,36
	sra	%GPR2,%GPR2,%GPR4	
	NOP		;;36,40
	NOP		;;36,40
	NOP		;;36,40
	NOP		;;36,40
	or	%GPR28,%GPR3,%GPR2	
	NOP		;;40,44
	NOP		;;40,44
	NOP		;;40,44
	NOP		;;40,44
	sw	0(%GPR1),%GPR28	
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
