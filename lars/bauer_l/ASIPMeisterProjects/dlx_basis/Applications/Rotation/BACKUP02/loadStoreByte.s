	.section	.data
	.section	.text
	.addressing	Word
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
loadByteUnsigned:
L1:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR29),%GPR31	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	subui	%GPR30,%GPR29,$4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 4 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	andi	%GPR1,%GPR2,$3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR3,%GPR1,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subu	%GPR3,%GPR0,%GPR3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1,$65535	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$-4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	and	%GPR1,%GPR2,%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	slli	%GPR2,%GPR3,$3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sra	%GPR1,%GPR1,%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	andi	%GPR28,%GPR1,$255	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L2:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	addui	%GPR29,%GPR30,$4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR30,0(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	nop
	jr	%GPR31	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
loadByteSigned:
L3:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR29),%GPR31	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	subui	%GPR30,%GPR29,$4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 4 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	andi	%GPR1,%GPR2,$3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR3,%GPR1,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subu	%GPR3,%GPR0,%GPR3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1,$65535	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$-4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	and	%GPR1,%GPR2,%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	slli	%GPR2,%GPR3,$3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sra	%GPR1,%GPR1,%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	andi	%GPR1,%GPR1,$255	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	slli	%GPR1,%GPR1,$24	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	srai	%GPR28,%GPR1,$24	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L4:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	addui	%GPR29,%GPR30,$4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR30,0(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	nop
	jr	%GPR31	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
storeByte:
L5:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR29),%GPR31	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	subui	%GPR30,%GPR29,$4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 4 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR1,%GPR0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 20 NOPs removed by reduceNOPs.sh
	andi	%GPR1,%GPR3,$3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	andi	%GPR4,%GPR3,$3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR5,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	addi	%GPR4,%GPR4,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subu	%GPR4,%GPR0,%GPR4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	sub	%GPR5,%GPR5,%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR1,$65535	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$-4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lhi	%GPR6,$0	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$255	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 12 NOPs removed by reduceNOPs.sh
	and	%GPR1,%GPR3,%GPR1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	slli	%GPR3,%GPR4,$3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	slli	%GPR4,%GPR5,$3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	lw	%GPR28,0(%GPR1)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	sll	%GPR2,%GPR2,%GPR3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	sll	%GPR3,%GPR6,%GPR4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR3,%GPR3,$1	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subu	%GPR3,%GPR0,%GPR3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	and	%GPR28,%GPR28,%GPR3	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	or	%GPR28,%GPR28,%GPR2	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR28	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	j	L6	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
L6:
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	addui	%GPR29,%GPR30,$4	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	lw	%GPR30,0(%GPR30)	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	; Automatically 8 NOPs removed by reduceNOPs.sh
	nop
	jr	%GPR31	
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
	nop	; Automatically Added by addNops.pl
