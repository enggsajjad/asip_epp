	.section	.data
	.section	.text
print:
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
	NOP		
	NOP		
	NOP		
L2:
	lb	%GPR2,0(%GPR1)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sne	%GPR27,%GPR2,%GPR3	
	bnez	%GPR27,L3	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L4	
	NOP		
	NOP		
	NOP		
	NOP		
L3:
	lb	%GPR2,0(%GPR1)	
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
	NOP		;;0,5
		
  
    ;; asm void putChar(int ch) {...}
    nop
    nop
    nop
;    putc %GPR2
    nop
    nop
    nop
	
	NOP		;;5,10
	NOP		;;5,10
	NOP		;;5,10
	NOP		;;5,10
	NOP		;;5,10
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$1	
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	add	%GPR1,%GPR1,%GPR2	
	j	L2	
	NOP		
	NOP		
	NOP		
L4:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	j	L5	
	NOP		
	NOP		
	NOP		
	NOP		
L5:
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
putInt:
L6:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$40	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;0,2
	NOP		;;0,2
	NOP		
	NOP		
	NOP		
	NOP		;;2,7
	NOP		;;2,7
	NOP		;;2,7
	NOP		;;2,7
	NOP		;;2,7
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		
	NOP		
	NOP		
L7:
	subi	%GPR3,%GPR30,$32	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$10	
	add	%GPR3,%GPR3,%GPR2	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$10	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$32	
	MOD	%GPR4,%GPR1,%GPR4	
	addi	%GPR2,%GPR2,$1	
	NOP		;;9,12
	NOP		;;9,12
	NOP		;;9,12
	addi	%GPR4,%GPR4,$48	
	div	%GPR1,%GPR1,%GPR5	
	NOP		;;13,16
	NOP		;;13,16
	NOP		;;13,16
	sb	0(%GPR3),%GPR4	
	slt	%GPR27,%GPR2,%GPR6	
	bnez	%GPR27,L7	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L8	
	NOP		
	NOP		
	NOP		
	NOP		
L8:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$31	
	NOP		
	NOP		
	NOP		
L9:
	subi	%GPR3,%GPR30,$32	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	add	%GPR3,%GPR3,%GPR2	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$48	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	lb	%GPR3,0(%GPR3)	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	sne	%GPR27,%GPR3,%GPR4	
	bnez	%GPR27,L10	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L11	
	NOP		
	NOP		
	NOP		
	NOP		
L10:
	subi	%GPR1,%GPR30,$32	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	add	%GPR3,%GPR1,%GPR2	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$1	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	lb	%GPR3,0(%GPR3)	
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
		
  
    ;; asm void putChar(int ch) {...}
    nop
    nop
    nop
;    putc %GPR3
    nop
    nop
    nop
	
	NOP		
	NOP		
	NOP		
L11:
	subi	%GPR2,%GPR2,$1	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sge	%GPR27,%GPR2,%GPR3	
	bnez	%GPR27,L15	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L12	
	NOP		
	NOP		
	NOP		
	NOP		
L12:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L13	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L14	
	NOP		
	NOP		
	NOP		
	NOP		
L13:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$48	
		
  
    ;; asm void putChar(int ch) {...}
    nop
    nop
    nop
;    putc %GPR1
    nop
    nop
    nop
	
	NOP		
	NOP		
	NOP		
L14:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$0	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	j	L17	
	NOP		
	NOP		
	NOP		
	NOP		
L15:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$1	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	seq	%GPR27,%GPR1,%GPR3	
	bnez	%GPR27,L16	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L9	
	NOP		
	NOP		
	NOP		
	NOP		
L16:
	subi	%GPR3,%GPR30,$32	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	add	%GPR3,%GPR3,%GPR2	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	lb	%GPR3,0(%GPR3)	
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
		
  
    ;; asm void putChar(int ch) {...}
    nop
    nop
    nop
;    putc %GPR3
    nop
    nop
    nop
	
	j	L11	
	NOP		
	NOP		
	NOP		
L17:
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
