	.section	.data
L1:
	.data.8	72
	.data.8	101
	.data.8	108
	.data.8	108
	.data.8	111
	.data.8	32
	.data.8	87
	.data.8	111
	.data.8	114
	.data.8	108
	.data.8	100
	.data.8	33
	.space	1
	.space	1
	.section	.text
	.addressing	Word
	.section	.text
	.addressing	Word
	;.addressing	Word

	xor	%GPR30, %GPR30, %GPR30
	xor	%GPR29, %GPR29, %GPR29
	xor	%GPR28, %GPR28, %GPR28
	nop
	lhi	%GPR30, $15
	lhi	%GPR29, $15
	nop
	nop
	ori	%GPR30, %GPR30, $65532
	ori	%GPR29, %GPR29, $65532
	nop
	nop
	nop
	sw	-4(%GPR29), %GPR30
	sw	-8(%GPR29), %GPR31
	addi	%GPR29, %GPR30, $-8
	nop ; auto-generated by /usr/epp/mkimg/fix-stall-insns.pl
	nop ; auto-generated by /usr/epp/mkimg/fix-stall-insns.pl
	nop ; auto-generated by /usr/epp/mkimg/fix-stall-insns.pl
	jal	main	
	nop
	nop ; auto-generated by /usr/epp/mkimg/fix-stall-insns.pl
	nop ; auto-generated by /usr/epp/mkimg/fix-stall-insns.pl
	sw	0(%GPR29), %GPR1
	jal	exit	
	nop
println:
L2:
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
	; Automatically 11 NOPs removed by reduceNOPs.sh
	lhi	%GPR5,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR5,%GPR5,$2	
	lhi	%GPR4,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$17	
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop	;;9,11
	nop	;;9,11
	mult	%GPR2,%GPR2,%GPR5	
	nop	;;11,15
	nop	;;11,15
	nop	;;11,15
	; Automatically 4 NOPs removed by reduceNOPs.sh
L3:
	add	%GPR5,%GPR1,%GPR3	
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lbu	%GPR5,0(%GPR5)	
	lhi	%GPR6,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR6,%GPR6,$0	
	nop	;;5,9
	nop	;;5,9
	nop	;;5,9
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR5,%GPR6	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L4	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L5	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L4:
	addi	%GPR3,%GPR3,$1	
	j	L3	
	nop
	nop
	nop
L5:
	addi	%GPR5,%GPR3,$5	
	nop	;;0,9
	nop	;;0,9
	nop	;;0,9
	; Automatically 6 NOPs removed by reduceNOPs.sh



	nop
	nop
	nop
	putc	%GPR5
	nop
	nop
	nop

	add	%GPR5,%GPR2,%GPR0	
	nop	;;10,19
	nop	;;10,19
	nop	;;10,19
	; Automatically 6 NOPs removed by reduceNOPs.sh



	nop
	nop
	nop
	putc	%GPR5
	nop
	nop
	nop

	add	%GPR2,%GPR4,%GPR0	
	nop	;;20,29
	nop	;;20,29
	nop	;;20,29
	; Automatically 6 NOPs removed by reduceNOPs.sh



	nop
	nop
	nop
	putc	%GPR2
	nop
	nop
	nop

	addui	%GPR5,%GPR3,$2	
	nop	;;30,34
	nop	;;30,34
	nop	;;30,34
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR2,%GPR5,%GPR0	
	nop	;;34,43
	nop	;;34,43
	nop	;;34,43
	; Automatically 6 NOPs removed by reduceNOPs.sh



	nop
	nop
	nop
	putc	%GPR2
	nop
	nop
	nop

	addi	%GPR2,%GPR3,$2	
	nop	;;44,48
	nop	;;44,48
	nop	;;44,48
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR4,%GPR4,%GPR2	
	nop
	nop
	nop
L6:
	lbu	%GPR2,0(%GPR1)	
	nop	;;1,4
	nop	;;1,4
	nop	;;1,4
	lhi	%GPR3,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	nop	;;4,8
	nop	;;4,8
	nop	;;4,8
	; Automatically 1 NOPs removed by reduceNOPs.sh
	sne	%GPR27,%GPR2,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L7	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L7:
	lbu	%GPR2,0(%GPR1)	
	nop	;;0,9
	nop	;;0,9
	nop	;;0,9
	; Automatically 6 NOPs removed by reduceNOPs.sh



	nop
	nop
	nop
	putc	%GPR2
	nop
	nop
	nop

	nop	;;9,11
	nop	;;9,11
	add	%GPR4,%GPR4,%GPR5	
	nop	;;11,14
	nop	;;11,14
	nop	;;11,14
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$1	
	nop	;;14,18
	nop	;;14,18
	nop	;;14,18
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR1,%GPR1,%GPR2	
	j	L6	
	nop
	nop
	nop
L8:
	nop	;;0,4
	nop	;;0,4
	nop	;;0,4
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$13	



	nop
	nop
	nop
	putc	%GPR1
	nop
	nop
	nop

	nop	;;5,7
	nop	;;5,7
	addi	%GPR4,%GPR4,$10	
	nop	;;7,10
	nop	;;7,10
	nop	;;7,10
	lhi	%GPR1,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$10	



	nop
	nop
	nop
	putc	%GPR1
	nop
	nop
	nop

	addi	%GPR4,%GPR4,$13	
	nop	;;12,16
	nop	;;12,16
	nop	;;12,16
	; Automatically 1 NOPs removed by reduceNOPs.sh
	add	%GPR5,%GPR4,%GPR0	
	nop	;;16,25
	nop	;;16,25
	nop	;;16,25
	; Automatically 6 NOPs removed by reduceNOPs.sh



	nop
	nop
	nop
	putc	%GPR5
	nop
	nop
	nop

	nop	;;25,30
	nop	;;25,30
	nop	;;25,30
	; Automatically 2 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$42	
	nop	;;30,34
	nop	;;30,34
	nop	;;30,34
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L9	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L9:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	nop ; auto-generated by /usr/epp/mkimg/fix-stall-insns.pl
	nop ; auto-generated by /usr/epp/mkimg/fix-stall-insns.pl
	nop ; auto-generated by /usr/epp/mkimg/fix-stall-insns.pl
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop ; auto-generated by /usr/epp/mkimg/fix-stall-insns.pl
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
main:
L10:
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
	; Automatically 4 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L1	%0x10000)
	nop	;;2,7
	nop	;;2,7
	nop	;;2,7
	; Automatically 2 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$111	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	println	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L11	
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
L11:
	nop
	nop
	nop
	; Automatically 1 NOPs removed by reduceNOPs.sh
	lw	%GPR31,4(%GPR30)	
	addui	%GPR29,%GPR30,$4	
	nop ; auto-generated by /usr/epp/mkimg/fix-stall-insns.pl
	nop ; auto-generated by /usr/epp/mkimg/fix-stall-insns.pl
	nop ; auto-generated by /usr/epp/mkimg/fix-stall-insns.pl
	lw	%GPR30,0(%GPR30)	
	nop
	nop
	nop
	nop ; auto-generated by /usr/epp/mkimg/fix-stall-insns.pl
	jr	%GPR31	
	nop
	nop
	nop
	; Automatically 2 NOPs removed by reduceNOPs.sh
exit:
	nop
	nop