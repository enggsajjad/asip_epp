	.section	.data
	;.global	_temp
	.align	4
_temp:
	.space	4
	.section	.text
	.addressing	Word
storeByte:
L_loadStoreByte_1:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 8 NOPs removed by reduceNOPs.sh
	andi	%GPR3,%GPR1,$3	
	nop	;;4,7
	nop	;;4,7
	nop	;;4,7
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$3	
	andi	%GPR5,%GPR1,$3	
	lhi	%GPR7,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$-4	
	lhi	%GPR6,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$255	
	sub	%GPR3,%GPR4,%GPR3	
	addi	%GPR4,%GPR5,$1	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subu	%GPR4,%GPR0,%GPR4	
	and	%GPR1,%GPR1,%GPR7	
	nop	;;13,15
	nop	;;13,15
	slli	%GPR3,%GPR3,$3	
	slli	%GPR4,%GPR4,$3	
	lw	%GPR5,0(%GPR1)	
	nop	;;17,19
	nop	;;17,19
	sll	%GPR3,%GPR6,%GPR3	
	sll	%GPR2,%GPR2,%GPR4	
	nop	;;20,23
	nop	;;20,23
	nop	;;20,23
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
	j	L_loadStoreByte_2	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_loadStoreByte_2:
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
L_loadStoreByte_3:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 8 NOPs removed by reduceNOPs.sh
	andi	%GPR5,%GPR1,$2	
	andi	%GPR6,%GPR1,$1	
	lhi	%GPR4,$( _temp	/0x10000)
	nop
	nop
	nop
	ori	%GPR4,%GPR4,$( _temp	%0x10000)
	lhi	%GPR3,$65535	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$-4	
	nop	;;7,11
	nop	;;7,11
	nop	;;7,11
				; Automatically 1 NOPs removed by reduceNOPs.sh
	and	%GPR1,%GPR1,%GPR3	
	lhi	%GPR7,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR7,%GPR7,$1	
	nop	;;12,15
	nop	;;12,15
	nop	;;12,15
	lw	%GPR3,0(%GPR1)	
	sw	0(%GPR4),%GPR5	
	sub	%GPR5,%GPR7,%GPR6	
	lhi	%GPR6,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$65535	
	nop	;;18,20
	nop	;;18,20
	lw	%GPR4,0(%GPR4)	
	slli	%GPR5,%GPR5,$4	
	nop	;;21,24
	nop	;;21,24
	nop	;;21,24
	srai	%GPR4,%GPR4,$1	
	sll	%GPR5,%GPR6,%GPR5	
	nop	;;25,28
	nop	;;25,28
	nop	;;25,28
	addi	%GPR4,%GPR4,$1	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subu	%GPR4,%GPR0,%GPR4	
	addi	%GPR5,%GPR5,$1	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subu	%GPR5,%GPR0,%GPR5	
	nop	;;29,32
	nop	;;29,32
	nop	;;29,32
	slli	%GPR4,%GPR4,$4	
	and	%GPR3,%GPR3,%GPR5	
	nop	;;33,36
	nop	;;33,36
	nop	;;33,36
	sra	%GPR2,%GPR2,%GPR4	
	nop	;;36,40
	nop	;;36,40
	nop	;;36,40
				; Automatically 1 NOPs removed by reduceNOPs.sh
	or	%GPR28,%GPR3,%GPR2	
	nop	;;40,44
	nop	;;40,44
	nop	;;40,44
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR28	
	j	L_loadStoreByte_4	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_loadStoreByte_4:
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
