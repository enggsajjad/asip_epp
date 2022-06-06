	.section	.data
	.align	4
L1:
	.space	4
	.align	4
L2:
	.data.32	1
	.section	.text
create_switch:
L3:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$32	
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR30),%GPR2	
	sw	-8(%GPR30),%GPR1	
	sw	-12(%GPR30),%GPR3	
	sw	-16(%GPR30),%GPR4	
	sw	-20(%GPR30),%GPR5	
	sw	-24(%GPR30),%GPR6	
	add	%GPR2,%GPR6,%GPR0	
	NOP		
	NOP		
	NOP		
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	NOP		;;8,13
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	NOP		;;13,17
	slt	%GPR27,%GPR2,%GPR1	
	bnez	%GPR27,L5	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L4	
	NOP		
	NOP		
	NOP		
	NOP		
L4:
	lw	%GPR2,-24(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$256	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sgt	%GPR27,%GPR2,%GPR1	
	bnez	%GPR27,L5	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L6	
	NOP		
	NOP		
	NOP		
	NOP		
L5:
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$1	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$1	
	NOP		;;5,8
	NOP		;;5,8
	NOP		;;5,8
	j	L9	
	NOP		
	NOP		
	NOP		
	NOP		
L6:
	LI	%GPR1, *L1	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	lw	%GPR2,0(%GPR1)	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	NOP		;;5,9
	lw	%GPR1,-24(%GPR30)	
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	NOP		;;9,13
	sne	%GPR27,%GPR2,%GPR1	
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
L7:
	lw	%GPR1,-24(%GPR30)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	g_makeradiogroup	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *L1	
	lw	%GPR2,-24(%GPR30)	
	NOP		;;3,7
	NOP		;;3,7
	NOP		;;3,7
	NOP		;;3,7
	sw	0(%GPR1),%GPR2	
	NOP		
	NOP		
	NOP		
L8:
	LI	%GPR1, *_activeswitches	
	LI	%GPR2, *_activeswitches	
	lw	%GPR5,-20(%GPR30)	
	lw	%GPR4,-16(%GPR30)	
	lw	%GPR1,0(%GPR1)	
	lw	%GPR2,0(%GPR2)	
	lw	%GPR3,-12(%GPR30)	
	NOP		;;6,8
	NOP		;;6,8
	addi	%GPR7,%GPR1,$1	
	addi	%GPR6,%GPR2,$1	
	lw	%GPR1,-8(%GPR30)	
	lw	%GPR2,-4(%GPR30)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	g_makeswitch	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *_activeswitches	
	NOP		;;13,15
	NOP		;;13,15
	LI	%GPR2, *_switches	
	NOP		;;15,17
	NOP		;;15,17
	lw	%GPR1,0(%GPR1)	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$16	
	LI	%GPR5, *_activeswitches	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	NOP		;;20,22
	NOP		;;20,22
	mult	%GPR1,%GPR1,%GPR3	
	LI	%GPR6, *_switches	
	NOP		;;23,26
	NOP		;;23,26
	NOP		;;23,26
	add	%GPR1,%GPR2,%GPR1	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$16	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	NOP		;;28,30
	NOP		;;28,30
	sw	0(%GPR1),%GPR4	
	lw	%GPR9,-24(%GPR30)	
	LI	%GPR1, *_activeswitches	
	NOP		;;32,34
	NOP		;;32,34
	lw	%GPR5,0(%GPR5)	
	NOP		;;34,36
	NOP		;;34,36
	LI	%GPR7, *_switches	
	NOP		;;36,38
	NOP		;;36,38
	mult	%GPR3,%GPR5,%GPR3	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$16	
	NOP		;;39,42
	NOP		;;39,42
	NOP		;;39,42
	add	%GPR3,%GPR6,%GPR3	
	NOP		;;42,44
	NOP		;;42,44
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$8	
	NOP		;;44,46
	NOP		;;44,46
	add	%GPR2,%GPR3,%GPR2	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$1	
	NOP		;;47,50
	NOP		;;47,50
	NOP		;;47,50
	sw	0(%GPR2),%GPR9	
	LI	%GPR3, *_activeswitches	
	lhi	%GPR8,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR8,%GPR8,$16	
	NOP		;;52,54
	NOP		;;52,54
	lw	%GPR1,0(%GPR1)	
	NOP		;;54,56
	NOP		;;54,56
	LI	%GPR2, *_switches	
	NOP		;;56,58
	NOP		;;56,58
	mult	%GPR1,%GPR1,%GPR4	
	NOP		;;58,60
	NOP		;;58,60
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$12	
	NOP		;;60,62
	NOP		;;60,62
	add	%GPR1,%GPR7,%GPR1	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	LI	%GPR10, *_activeswitches	
	NOP		;;64,66
	NOP		;;64,66
	add	%GPR1,%GPR1,%GPR5	
	LI	%GPR7, *_activeswitches	
	NOP		;;67,70
	NOP		;;67,70
	NOP		;;67,70
	sw	0(%GPR1),%GPR6	
	LI	%GPR5, *_activeswitches	
	NOP		;;71,74
	NOP		;;71,74
	NOP		;;71,74
	lw	%GPR1,0(%GPR3)	
	NOP		;;74,78
	NOP		;;74,78
	NOP		;;74,78
	NOP		;;74,78
	mult	%GPR1,%GPR1,%GPR8	
	NOP		;;78,82
	NOP		;;78,82
	NOP		;;78,82
	NOP		;;78,82
	add	%GPR1,%GPR2,%GPR1	
	NOP		;;82,86
	NOP		;;82,86
	NOP		;;82,86
	NOP		;;82,86
	add	%GPR1,%GPR1,%GPR9	
	NOP		;;86,90
	NOP		;;86,90
	NOP		;;86,90
	NOP		;;86,90
	sw	0(%GPR1),%GPR4	
	NOP		;;90,94
	NOP		;;90,94
	NOP		;;90,94
	NOP		;;90,94
	lw	%GPR1,0(%GPR10)	
	NOP		;;94,98
	NOP		;;94,98
	NOP		;;94,98
	NOP		;;94,98
	addi	%GPR1,%GPR1,$1	
	NOP		;;98,102
	NOP		;;98,102
	NOP		;;98,102
	NOP		;;98,102
	sw	0(%GPR7),%GPR1	
	NOP		;;102,106
	NOP		;;102,106
	NOP		;;102,106
	NOP		;;102,106
	lw	%GPR1,0(%GPR5)	
	NOP		;;106,110
	NOP		;;106,110
	NOP		;;106,110
	NOP		;;106,110
	subi	%GPR28,%GPR1,$1	
	NOP		;;110,114
	NOP		;;110,114
	NOP		;;110,114
	NOP		;;110,114
	j	L9	
	NOP		
	NOP		
	NOP		
	NOP		
L9:
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
create_menu_switch:
L10:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$20	
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *_activeswitches	
	NOP		;;3,7
	NOP		;;3,7
	NOP		;;3,7
	NOP		;;3,7
	lw	%GPR1,0(%GPR1)	
	NOP		;;7,10
	NOP		;;7,10
	NOP		;;7,10
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$10	
	addi	%GPR8,%GPR1,$1	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$0	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$0	
	NOP		;;14,16
	NOP		;;14,16
	sw	-8(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	sw	-12(%GPR30),%GPR1	
	lw	%GPR1,-4(%GPR30)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	g_makemenubutton	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
L11:
	lw	%GPR1,-12(%GPR30)	
	lw	%GPR2,-4(%GPR30)	
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	add	%GPR1,%GPR2,%GPR1	
	lw	%GPR2,-12(%GPR30)	
	NOP		;;6,10
	NOP		;;6,10
	NOP		;;6,10
	NOP		;;6,10
	addi	%GPR2,%GPR2,$1	
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	sw	-12(%GPR30),%GPR2	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	loadByteUnsigned	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;15,20
	NOP		;;15,20
	NOP		;;15,20
	NOP		;;15,20
	NOP		;;15,20
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$124	
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	NOP		;;20,24
	seq	%GPR27,%GPR28,%GPR1	
	bnez	%GPR27,L12	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L13	
	NOP		
	NOP		
	NOP		
	NOP		
L12:
	lw	%GPR1,-8(%GPR30)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	addi	%GPR1,%GPR1,$1	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sw	-8(%GPR30),%GPR1	
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
	ori	%GPR1,%GPR1,$0	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sne	%GPR27,%GPR28,%GPR1	
	bnez	%GPR27,L11	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L14	
	NOP		
	NOP		
	NOP		
	NOP		
L14:
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
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	sw	-12(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
L15:
	lw	%GPR1,-12(%GPR30)	
	lw	%GPR2,-8(%GPR30)	
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	NOP		;;1,5
	slt	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L16	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L17	
	NOP		
	NOP		
	NOP		
	NOP		
L16:
	LI	%GPR1, *_activeswitches	
	NOP		;;0,2
	NOP		;;0,2
	LI	%GPR2, *_switches	
	NOP		;;2,4
	NOP		;;2,4
	lw	%GPR1,0(%GPR1)	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$16	
	LI	%GPR4, *_activeswitches	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$0	
	NOP		;;7,9
	NOP		;;7,9
	mult	%GPR1,%GPR1,%GPR3	
	NOP		;;9,12
	NOP		;;9,12
	NOP		;;9,12
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$16	
	add	%GPR1,%GPR2,%GPR1	
	LI	%GPR3, *_switches	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	NOP		;;15,17
	NOP		;;15,17
	sw	0(%GPR1),%GPR5	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$0	
	LI	%GPR5, *_activeswitches	
	NOP		;;19,21
	NOP		;;19,21
	lw	%GPR4,0(%GPR4)	
	NOP		;;21,23
	NOP		;;21,23
	LI	%GPR7, *_switches	
	NOP		;;23,25
	NOP		;;23,25
	mult	%GPR4,%GPR4,%GPR6	
	NOP		;;25,29
	NOP		;;25,29
	NOP		;;25,29
	NOP		;;25,29
	add	%GPR3,%GPR3,%GPR4	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$16	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$8	
	NOP		;;31,33
	NOP		;;31,33
	add	%GPR2,%GPR3,%GPR2	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$0	
	LI	%GPR8, *_activeswitches	
	NOP		;;35,37
	NOP		;;35,37
	sw	0(%GPR2),%GPR1	
	NOP		;;37,39
	NOP		;;37,39
	LI	%GPR1, *_switches	
	NOP		;;39,41
	NOP		;;39,41
	lw	%GPR2,0(%GPR5)	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$16	
	NOP		;;42,45
	NOP		;;42,45
	NOP		;;42,45
	mult	%GPR2,%GPR2,%GPR6	
	LI	%GPR10, *_activeswitches	
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$12	
	NOP		;;47,49
	NOP		;;47,49
	add	%GPR2,%GPR7,%GPR2	
	LI	%GPR6, *L2	
	LI	%GPR7, *_activeswitches	
	NOP		;;51,53
	NOP		;;51,53
	add	%GPR2,%GPR2,%GPR4	
	lw	%GPR4,-12(%GPR30)	
	NOP		;;54,57
	NOP		;;54,57
	NOP		;;54,57
	sw	0(%GPR2),%GPR3	
	addi	%GPR4,%GPR4,$1	
	NOP		;;58,61
	NOP		;;58,61
	NOP		;;58,61
	lw	%GPR2,0(%GPR8)	
	lw	%GPR3,0(%GPR6)	
	sw	-12(%GPR30),%GPR4	
	NOP		;;63,65
	NOP		;;63,65
	mult	%GPR2,%GPR2,%GPR5	
	NOP		;;65,69
	NOP		;;65,69
	NOP		;;65,69
	NOP		;;65,69
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;69,73
	NOP		;;69,73
	NOP		;;69,73
	NOP		;;69,73
	add	%GPR1,%GPR1,%GPR9	
	NOP		;;73,77
	NOP		;;73,77
	NOP		;;73,77
	NOP		;;73,77
	sw	0(%GPR1),%GPR3	
	NOP		;;77,81
	NOP		;;77,81
	NOP		;;77,81
	NOP		;;77,81
	lw	%GPR1,0(%GPR7)	
	NOP		;;81,85
	NOP		;;81,85
	NOP		;;81,85
	NOP		;;81,85
	addi	%GPR1,%GPR1,$1	
	NOP		;;85,89
	NOP		;;85,89
	NOP		;;85,89
	NOP		;;85,89
	sw	0(%GPR10),%GPR1	
	j	L15	
	NOP		
	NOP		
	NOP		
L17:
	LI	%GPR1, *L2	
	LI	%GPR2, *L2	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lw	%GPR1,0(%GPR1)	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	addi	%GPR1,%GPR1,$1	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	sw	0(%GPR2),%GPR1	
	NOP		
	NOP		
	NOP		
L18:
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
create_bar:
L19:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$12	
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR30),%GPR7	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	g_makebar	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *_activebars	
	NOP		;;4,6
	NOP		;;4,6
	LI	%GPR2, *_bars	
	lw	%GPR8,-4(%GPR30)	
	lw	%GPR1,0(%GPR1)	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$8	
	LI	%GPR4, *_activebars	
	NOP		;;10,13
	NOP		;;10,13
	NOP		;;10,13
	mult	%GPR1,%GPR1,%GPR3	
	NOP		;;13,15
	NOP		;;13,15
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$8	
	NOP		;;15,17
	NOP		;;15,17
	add	%GPR1,%GPR2,%GPR1	
	LI	%GPR3, *_bars	
	NOP		;;18,20
	NOP		;;18,20
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$4	
	sw	0(%GPR1),%GPR8	
	LI	%GPR2, *_activebars	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$1	
	NOP		;;23,25
	NOP		;;23,25
	lw	%GPR4,0(%GPR4)	
	LI	%GPR1, *_activebars	
	LI	%GPR8, *_activebars	
	NOP		;;27,29
	NOP		;;27,29
	mult	%GPR4,%GPR4,%GPR5	
	NOP		;;29,33
	NOP		;;29,33
	NOP		;;29,33
	NOP		;;29,33
	add	%GPR3,%GPR3,%GPR4	
	NOP		;;33,37
	NOP		;;33,37
	NOP		;;33,37
	NOP		;;33,37
	add	%GPR3,%GPR3,%GPR6	
	NOP		;;37,41
	NOP		;;37,41
	NOP		;;37,41
	NOP		;;37,41
	sw	0(%GPR3),%GPR7	
	NOP		;;41,45
	NOP		;;41,45
	NOP		;;41,45
	NOP		;;41,45
	lw	%GPR2,0(%GPR2)	
	NOP		;;45,49
	NOP		;;45,49
	NOP		;;45,49
	NOP		;;45,49
	addi	%GPR2,%GPR2,$1	
	NOP		;;49,53
	NOP		;;49,53
	NOP		;;49,53
	NOP		;;49,53
	sw	0(%GPR1),%GPR2	
	NOP		;;53,57
	NOP		;;53,57
	NOP		;;53,57
	NOP		;;53,57
	lw	%GPR1,0(%GPR8)	
	NOP		;;57,61
	NOP		;;57,61
	NOP		;;57,61
	NOP		;;57,61
	subi	%GPR28,%GPR1,$1	
	NOP		;;61,65
	NOP		;;61,65
	NOP		;;61,65
	NOP		;;61,65
	j	L20	
	NOP		
	NOP		
	NOP		
	NOP		
L20:
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
