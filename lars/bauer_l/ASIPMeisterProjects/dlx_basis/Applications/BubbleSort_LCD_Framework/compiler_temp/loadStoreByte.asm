	.section	.data
	.section	.text
	.addressing	Word
	nop
	nop
	nop
loadByteUnsigned:
L1:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
	andi	%GPR2,%GPR1,$-4	
	nop
	nop
	nop
	andi	%GPR1,%GPR1,$3	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subu	%GPR1,%GPR0,%GPR1	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR2)	
	nop
	nop
	nop
	slli	%GPR1,%GPR1,$3	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sra	%GPR1,%GPR2,%GPR1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	andi	%GPR28,%GPR1,$255	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L2:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	nop
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
loadByteSigned:
L3:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 36 NOPs removed by reduceNOPs.sh
	andi	%GPR2,%GPR1,$-4	
	nop
	nop
	nop
	andi	%GPR1,%GPR1,$3	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR1,%GPR1,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subu	%GPR1,%GPR0,%GPR1	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	lw	%GPR2,0(%GPR2)	
	nop
	nop
	nop
	slli	%GPR1,%GPR1,$3	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sra	%GPR1,%GPR2,%GPR1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	andi	%GPR1,%GPR1,$255	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	slli	%GPR1,%GPR1,$24	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	srai	%GPR28,%GPR1,$24	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	j	L4	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L4:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	nop
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
storeByte:
L5:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	nop
	nop
	nop
	nop	; Automatically added by fix-stall-insns.pl
	sw	0(%GPR29),%GPR31	
	nop
	nop
	nop
	subui	%GPR30,%GPR29,$4	
	nop
	nop
	nop
	; Automatically 4 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 44 NOPs removed by reduceNOPs.sh
	andi	%GPR3,%GPR1,$3	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	andi	%GPR4,%GPR1,$3	
	nop
	nop
	nop
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$3	
	nop
	nop
	nop
	andi	%GPR1,%GPR1,$-4	
	nop
	nop
	nop
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$255	
	nop
	nop
	nop
	addi	%GPR4,%GPR4,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subu	%GPR4,%GPR0,%GPR4	
	nop
	nop
	nop
	sub	%GPR3,%GPR5,%GPR3	
	nop
	nop
	nop
	lw	%GPR5,0(%GPR1)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	slli	%GPR4,%GPR4,$3	
	nop
	nop
	nop
	slli	%GPR3,%GPR3,$3	
	nop
	nop
	nop
	; Automatically 12 NOPs removed by reduceNOPs.sh
	sll	%GPR2,%GPR2,%GPR4	
	nop
	nop
	nop
	sll	%GPR3,%GPR6,%GPR3	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	addi	%GPR3,%GPR3,$1	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	subu	%GPR3,%GPR0,%GPR3	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	and	%GPR3,%GPR5,%GPR3	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	or	%GPR28,%GPR3,%GPR2	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	sw	0(%GPR1),%GPR28	
	nop
	nop
	nop
	j	L6	
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
L6:
	nop
	nop
	nop
	; Automatically 16 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	nop
	nop
	nop
	addui	%GPR29,%GPR30,$4	
	nop
	nop
	nop
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	; Automatically 8 NOPs removed by reduceNOPs.sh
	nop
	jr	%GPR31	
	nop
	nop
	nop