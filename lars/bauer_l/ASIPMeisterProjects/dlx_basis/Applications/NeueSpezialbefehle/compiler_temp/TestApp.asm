	.section	.data
	.section	.text
	.addressing	Word
main:
L1:
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	subi	%GPR29,%GPR29,$24	
	nop
	nop
	nop
				; Automatically 9 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$0	
	lhi	%GPR4,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR4,%GPR4,$0	
	nop	;;8,10
	nop	;;8,10
	sw	-4(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop	;;11,13
	nop	;;11,13
	lhi	%GPR2,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR2,%GPR2,$0	
	sw	-8(%GPR30),%GPR3	
	nop	;;14,18
	nop	;;14,18
	nop	;;14,18
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-12(%GPR30),%GPR4	
	nop	;;18,22
	nop	;;18,22
	nop	;;18,22
				; Automatically 1 NOPs removed by reduceNOPs.sh
	sw	-16(%GPR30),%GPR1	
	forecast	$0, $100 	
	forecast	$7, $100 	
	forecast	$4, $100 	
	forecast	$5, $100 	
	forecast	$3, $100 	
	forecast	$8, $100 	
	forecast	$2, $100 	
	forecast	$1, $100 	
	forecast	$6, $100 	
	nop	;;31,36
	nop	;;31,36
	nop	;;31,36
				; Automatically 2 NOPs removed by reduceNOPs.sh
	lhi	%GPR1,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR1,%GPR1,$0	
	nop
	nop
	nop
L2:
	subi	%GPR3,%GPR30,$4	
	subi	%GPR4,%GPR30,$8	
	lw	%GPR5,-12(%GPR30)	
	subi	%GPR6,%GPR30,$16	


	;; SINAS: SAD_16()
	nop
	nop
	nop
	SAD16	%GPR6, %GPR3, %GPR4, %GPR5
	nop
	nop
	nop

	subi	%GPR5,%GPR30,$4	
	lw	%GPR4,-8(%GPR30)	
	subi	%GPR3,%GPR30,$12	


	;; SINAS: SATD_4x4()
	nop
	nop
	nop
	satd4x4	%GPR3, %GPR5, %GPR4, %GPR3
	nop
	nop
	nop

	add	%GPR2,%GPR2,%GPR3	
	subi	%GPR7,%GPR30,$4	
	lw	%GPR6,-8(%GPR30)	
	subi	%GPR5,%GPR30,$12	
	subi	%GPR4,%GPR30,$16	


	;; SINAS: DCT_4x4()
	nop
	nop
	nop
	dct4x4	%GPR4, %GPR7, %GPR6, %GPR5
	nop
	nop
	nop

	subi	%GPR4,%GPR30,$4	
	subi	%GPR3,%GPR30,$8	


	;; SINAS: HT_4x4_IntraLuma()
	nop
	nop
	nop
	ht4x4il	%GPR4, %GPR3
	nop
	nop
	nop

	lw	%GPR4,-4(%GPR30)	
	lw	%GPR3,-8(%GPR30)	


	;; SINAS: HT_2x2_Chroma()
	nop
	nop
	nop
	ht2x2cr	%GPR3, %GPR4, %GPR4, %GPR3
	nop
	nop
	nop

	subi	%GPR7,%GPR30,$4	
	lw	%GPR6,-8(%GPR30)	
	subi	%GPR5,%GPR30,$12	
	mac	%GPR2,%GPR3,%GPR4	


	;; SINAS: LoopFilter()
	nop
	nop
	nop
	LoopFilter	%GPR5, %GPR7, %GPR6
	nop
	nop
	nop

	subi	%GPR6,%GPR30,$4	
	lw	%GPR5,-8(%GPR30)	
	subi	%GPR4,%GPR30,$12	
	subi	%GPR3,%GPR30,$16	


	;; SINAS: IPred_HDC_16x16()
	nop
	nop
	nop
	IPred_HDC16x16	%GPR3, %GPR4, %GPR6, %GPR5
	nop
	nop
	nop

	subi	%GPR5,%GPR30,$4	
	lw	%GPR4,-8(%GPR30)	
	subi	%GPR3,%GPR30,$12	


	;; SINAS: IPred_VDC_16x16()
	nop
	nop
	nop
	IPred_VDC16x16	%GPR3, %GPR5, %GPR4
	nop
	nop
	nop

	subi	%GPR5,%GPR30,$4	
	lw	%GPR4,-8(%GPR30)	
	subi	%GPR3,%GPR30,$12	


	;; SINAS: MC_Hz_4()
	nop
	nop
	nop
	MC_Hz4	%GPR3, %GPR5, %GPR4
	nop
	nop
	nop

	nop	;;38,40
	nop	;;38,40
	addi	%GPR1,%GPR1,$1	
	nop	;;40,43
	nop	;;40,43
	nop	;;40,43
	lhi	%GPR3,$0	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	ori	%GPR3,%GPR3,$100	
	nop	;;43,47
	nop	;;43,47
	nop	;;43,47
				; Automatically 1 NOPs removed by reduceNOPs.sh
	slt	%GPR27,%GPR1,%GPR3	
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	nop	; Automatically added by findDataDependency.sh
	bnez	%GPR27,L2	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
	j	L3	
	nop
	nop
	nop
				; Automatically 1 NOPs removed by reduceNOPs.sh
L3:
	forecast	$0, $0 	
	forecast	$7, $0 	
	forecast	$4, $0 	
	forecast	$5, $0 	
	forecast	$3, $0 	
	forecast	$8, $0 	
	forecast	$2, $0 	
	forecast	$1, $0 	
	forecast	$6, $0 	
	lw	%GPR1,-8(%GPR30)	
	lw	%GPR3,-4(%GPR30)	
	lw	%GPR4,-12(%GPR30)	
	add	%GPR28,%GPR2,%GPR0	
	lw	%GPR5,-16(%GPR30)	
	mult	%GPR1,%GPR3,%GPR1	
	nop	;;14,18
	nop	;;14,18
	nop	;;14,18
				; Automatically 1 NOPs removed by reduceNOPs.sh
	mult	%GPR1,%GPR1,%GPR4	
	nop	;;18,22
	nop	;;18,22
	nop	;;18,22
				; Automatically 1 NOPs removed by reduceNOPs.sh
	mac	%GPR28,%GPR1,%GPR5	
	nop	;;22,26
	nop	;;22,26
	nop	;;22,26
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
