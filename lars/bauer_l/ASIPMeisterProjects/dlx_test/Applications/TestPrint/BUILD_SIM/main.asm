	.section	.data
L_main_1:
	.data.8	72
	.data.8	97
	.data.8	108
	.data.8	108
	.data.8	111
	.data.8	32
	.data.8	87
	.data.8	101
	.data.8	108
	.data.8	116
	.data.8	33
	.data.8	13
	.data.8	10
	.space	1
L_main_2:
	.data.8	69
	.data.8	105
	.data.8	110
	.data.8	101
	.data.8	32
	.data.8	90
	.data.8	97
	.data.8	104
	.data.8	108
	.data.8	58
	.data.8	32
	.space	1
L_main_3:
	.data.8	32
	.data.8	61
	.data.8	32
	.space	1
L_main_4:
	.data.8	13
	.data.8	10
	.space	1
	.section	.text
	.addressing	Word
main:
L_main_5:
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
	lhi	%GPR1,$( L_main_1	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_main_1	%0x10000)
	nop	;;2,7
	nop	;;2,7
	nop	;;2,7
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L_main_2	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_main_2	%0x10000)
	nop	;;8,13
	nop	;;8,13
	nop	;;8,13
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$42	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_printInt	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L_main_3	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_main_3	%0x10000)
	nop	;;20,25
	nop	;;20,25
	nop	;;20,25
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$42	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_printHex	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$( L_main_4	/0x10000)
	nop
	nop
	nop
	ori	%GPR1,%GPR1,$( L_main_4	%0x10000)
	nop	;;33,38
	nop	;;33,38
	nop	;;33,38
				; Automatically 6 NOPs removed by reduceNOPs.sh
	subi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	jal	t_print	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	addi	%GPR29,%GPR29,$8	
	nop
	nop
	nop
				; Automatically 6 NOPs removed by reduceNOPs.sh
	lhi	%GPR28,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR28,%GPR28,$0	
	nop	;;43,47
	nop	;;43,47
	nop	;;43,47
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L_main_6	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L_main_6:
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