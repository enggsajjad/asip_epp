	.section	.data
	.section	.text
	.addressing	Word
	nop
	nop
	nop
	nop
loadByteUnsigned:
L1:
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	nop
	; Automatically 5 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	andi	%GPR1,%GPR2,$3	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR3,%GPR1,$1	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	subu	%GPR3,%GPR0,%GPR3	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$65535	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$-4	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	and	%GPR1,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
	slli	%GPR2,%GPR3,$3	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sra	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	andi	%GPR28,%GPR1,$255	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L2	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L2:
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	nop
	jr	%GPR31	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
loadByteSigned:
L3:
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	nop
	; Automatically 5 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	andi	%GPR1,%GPR2,$3	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR3,%GPR1,$1	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	subu	%GPR3,%GPR0,%GPR3	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$65535	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$-4	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	and	%GPR1,%GPR2,%GPR1	
	nop
	nop
	nop
	nop
	slli	%GPR2,%GPR3,$3	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	lw	%GPR1,0(%GPR1)	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sra	%GPR1,%GPR1,%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	andi	%GPR1,%GPR1,$255	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	slli	%GPR1,%GPR1,$24	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	srai	%GPR28,%GPR1,$24	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	j	L4	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L4:
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	nop
	jr	%GPR31	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
storeByte:
L5:
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	nop
	; Automatically 5 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	add	%GPR3,%GPR1,%GPR0	
	nop
	nop
	nop
	nop
	; Automatically 25 NOPs removed by reduceNOPs.sh
	andi	%GPR1,%GPR3,$3	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	andi	%GPR4,%GPR3,$3	
	nop
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$3	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	addi	%GPR4,%GPR4,$1	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	subu	%GPR4,%GPR0,%GPR4	
	nop
	nop
	nop
	nop
	sub	%GPR5,%GPR5,%GPR1	
	nop
	nop
	nop
	nop
	lhi	%GPR1,$65535	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$-4	
	nop
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$255	
	nop
	nop
	nop
	nop
	; Automatically 15 NOPs removed by reduceNOPs.sh
	and	%GPR1,%GPR3,%GPR1	
	nop
	nop
	nop
	nop
	slli	%GPR3,%GPR4,$3	
	nop
	nop
	nop
	nop
	slli	%GPR4,%GPR5,$3	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	lw	%GPR28,0(%GPR1)	
	nop
	nop
	nop
	nop
	sll	%GPR2,%GPR2,%GPR3	
	nop
	nop
	nop
	nop
	sll	%GPR3,%GPR6,%GPR4	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	addi	%GPR3,%GPR3,$1	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	subu	%GPR3,%GPR0,%GPR3	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	and	%GPR28,%GPR28,%GPR3	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	or	%GPR28,%GPR28,%GPR2	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR28	
	nop
	nop
	nop
	nop
	j	L6	
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
L6:
	nop
	nop
	nop
	nop
	; Automatically 20 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop
	; Automatically 10 NOPs removed by reduceNOPs.sh
	nop
	jr	%GPR31	
	nop
	nop
	nop
	nop
