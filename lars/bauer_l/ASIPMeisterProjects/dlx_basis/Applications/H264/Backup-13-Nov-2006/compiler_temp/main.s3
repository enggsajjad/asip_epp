	.section	.data
L1:
	.data.8	13
	.data.8	10
	.space	1
L2:
	.data.8	13
	.data.8	10
	.space	1
L3:
	.data.8	13
	.data.8	10
	.space	1
	.section	.text
Hadamard_2x2_Chroma:
L4:
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
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	andi	%GPR5,%GPR2,$65535	
	andi	%GPR6,%GPR1,$65535	
	lhi	%GPR8,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR8,%GPR8,$-65536	
	lhi	%GPR7,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$-65536	
	slli	%GPR5,%GPR5,$16	
	slli	%GPR9,%GPR6,$16	
	and	%GPR1,%GPR1,%GPR8	
	and	%GPR2,%GPR2,%GPR7	
	srai	%GPR6,%GPR5,$16	
	srai	%GPR5,%GPR9,$16	
	srli	%GPR1,%GPR1,$16	
	srli	%GPR2,%GPR2,$16	
	NOP		;;16,19
	NOP		;;16,19
	NOP		;;16,19
	add	%GPR8,%GPR1,%GPR5	
	add	%GPR7,%GPR2,%GPR6	
	sub	%GPR11,%GPR1,%GPR5	
	sub	%GPR9,%GPR2,%GPR6	
	sub	%GPR12,%GPR1,%GPR5	
	add	%GPR7,%GPR8,%GPR7	
	add	%GPR5,%GPR1,%GPR5	
	add	%GPR1,%GPR11,%GPR9	
	sub	%GPR10,%GPR2,%GPR6	
	andi	%GPR7,%GPR7,$65535	
	add	%GPR2,%GPR2,%GPR6	
	NOP		;;29,32
	NOP		;;29,32
	NOP		;;29,32
	slli	%GPR6,%GPR7,$16	
	andi	%GPR7,%GPR1,$65535	
	sub	%GPR1,%GPR10,%GPR12	
	NOP		;;34,38
	NOP		;;34,38
	NOP		;;34,38
	NOP		;;34,38
	andi	%GPR8,%GPR1,$65535	
	sub	%GPR1,%GPR2,%GPR5	
	slli	%GPR2,%GPR7,$16	
	NOP		;;40,42
	NOP		;;40,42
	or	%GPR5,%GPR6,%GPR8	
	andi	%GPR1,%GPR1,$65535	
	NOP		;;43,46
	NOP		;;43,46
	NOP		;;43,46
	sw	0(%GPR3),%GPR5	
	or	%GPR1,%GPR2,%GPR1	
	NOP		;;47,51
	NOP		;;47,51
	NOP		;;47,51
	NOP		;;47,51
	sw	0(%GPR4),%GPR1	
	j	L5	
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
Hadamard_4x4_IntraLuma:
L6:
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
	add	%GPR18,%GPR1,%GPR0	
	NOP		
	NOP		
	NOP		
	NOP		;;2,5
	NOP		;;2,5
	NOP		;;2,5
	lw	%GPR5,0(%GPR18)	
	NOP		;;5,7
	NOP		;;5,7
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$32	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$32	
	NOP		;;8,10
	NOP		;;8,10
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$32	
	add	%GPR18,%GPR18,%GPR1	
	sw	-4(%GPR30),%GPR5	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$32	
	NOP		;;13,15
	NOP		;;13,15
	lw	%GPR1,0(%GPR18)	
	add	%GPR18,%GPR18,%GPR3	
	NOP		;;16,18
	NOP		;;16,18
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$32	
	sw	-8(%GPR30),%GPR1	
	lw	%GPR3,0(%GPR18)	
	add	%GPR18,%GPR18,%GPR4	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$32	
	NOP		;;22,24
	NOP		;;22,24
	sw	-12(%GPR30),%GPR3	
	lw	%GPR4,0(%GPR18)	
	add	%GPR18,%GPR18,%GPR5	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$32	
	NOP		;;27,29
	NOP		;;27,29
	sw	-16(%GPR30),%GPR4	
	lw	%GPR5,0(%GPR18)	
	add	%GPR18,%GPR18,%GPR6	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$32	
	NOP		;;32,34
	NOP		;;32,34
	sw	-20(%GPR30),%GPR5	
	lw	%GPR6,0(%GPR18)	
	add	%GPR18,%GPR18,%GPR1	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$32	
	NOP		;;37,40
	NOP		;;37,40
	NOP		;;37,40
	lw	%GPR12,0(%GPR18)	
	add	%GPR18,%GPR18,%GPR3	
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$32	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$32	
	NOP		;;43,45
	NOP		;;43,45
	lw	%GPR3,0(%GPR18)	
	add	%GPR18,%GPR18,%GPR4	
	sw	-24(%GPR30),%GPR6	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$32	
	NOP		;;48,50
	NOP		;;48,50
	lw	%GPR23,0(%GPR18)	
	add	%GPR18,%GPR18,%GPR5	
	NOP		;;51,54
	NOP		;;51,54
	NOP		;;51,54
	lhi	%GPR24,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR24,%GPR24,$-65536	
	lw	%GPR19,0(%GPR18)	
	add	%GPR18,%GPR18,%GPR9	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$32	
	NOP		;;57,60
	NOP		;;57,60
	NOP		;;57,60
	lw	%GPR11,0(%GPR18)	
	add	%GPR18,%GPR18,%GPR1	
	lhi	%GPR5,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$-65536	
	NOP		;;62,64
	NOP		;;62,64
	and	%GPR23,%GPR23,%GPR24	
	lw	%GPR4,0(%GPR18)	
	add	%GPR18,%GPR18,%GPR6	
	NOP		;;66,68
	NOP		;;66,68
	lhi	%GPR27,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR27,%GPR27,$-65536	
	lhi	%GPR8,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR8,%GPR8,$32	
	lw	%GPR20,0(%GPR18)	
	add	%GPR18,%GPR18,%GPR7	
	lw	%GPR24,-20(%GPR30)	
	NOP		;;72,74
	NOP		;;72,74
	and	%GPR5,%GPR20,%GPR5	
	lhi	%GPR14,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR14,%GPR14,$-65536	
	lw	%GPR20,-24(%GPR30)	
	NOP		;;76,78
	NOP		;;76,78
	lw	%GPR22,0(%GPR18)	
	lhi	%GPR16,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR16,%GPR16,$-65536	
	NOP		;;79,82
	NOP		;;79,82
	NOP		;;79,82
	add	%GPR18,%GPR18,%GPR8	
	and	%GPR24,%GPR24,%GPR27	
	NOP		;;83,88
	NOP		;;83,88
	NOP		;;83,88
	NOP		;;83,88
	NOP		;;83,88
	lhi	%GPR1,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$-65536	
	lw	%GPR27,-4(%GPR30)	
	and	%GPR20,%GPR20,%GPR14	
	lhi	%GPR21,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR21,%GPR21,$-65536	
	and	%GPR16,%GPR3,%GPR16	
	lhi	%GPR15,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR15,%GPR15,$-65536	
	lhi	%GPR13,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR13,%GPR13,$-65536	
	lw	%GPR14,-8(%GPR30)	
	lw	%GPR8,0(%GPR18)	
	lhi	%GPR17,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR17,%GPR17,$-65536	
	lhi	%GPR10,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR10,%GPR10,$-65536	
	lhi	%GPR6,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$-65536	
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$32	
	lw	%GPR3,-16(%GPR30)	
	NOP		;;101,103
	NOP		;;101,103
	and	%GPR1,%GPR27,%GPR1	
	and	%GPR19,%GPR19,%GPR21	
	NOP		;;104,106
	NOP		;;104,106
	and	%GPR21,%GPR14,%GPR15	
	and	%GPR22,%GPR22,%GPR13	
	NOP		;;107,109
	NOP		;;107,109
	and	%GPR15,%GPR4,%GPR10	
	and	%GPR14,%GPR8,%GPR6	
	add	%GPR18,%GPR18,%GPR28	
	and	%GPR17,%GPR3,%GPR17	
	lhi	%GPR7,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$-65536	
	lw	%GPR13,-12(%GPR30)	
	NOP		;;114,116
	NOP		;;114,116
	srli	%GPR4,%GPR23,$16	
	srli	%GPR6,%GPR5,$16	
	srli	%GPR3,%GPR24,$16	
	srli	%GPR1,%GPR1,$16	
	lhi	%GPR25,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR25,%GPR25,$-65536	
	lhi	%GPR26,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR26,%GPR26,$-65536	
	lw	%GPR18,0(%GPR18)	
	and	%GPR13,%GPR13,%GPR7	
	lhi	%GPR9,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$-65536	
	add	%GPR8,%GPR3,%GPR4	
	add	%GPR7,%GPR1,%GPR6	
	srli	%GPR5,%GPR19,$16	
	srli	%GPR19,%GPR21,$16	
	srli	%GPR20,%GPR20,$16	
	and	%GPR11,%GPR11,%GPR25	
	srli	%GPR22,%GPR22,$16	
	and	%GPR12,%GPR12,%GPR26	
	and	%GPR18,%GPR18,%GPR9	
	sub	%GPR10,%GPR7,%GPR8	
	add	%GPR9,%GPR7,%GPR8	
	add	%GPR8,%GPR20,%GPR5	
	add	%GPR7,%GPR19,%GPR22	
	srli	%GPR21,%GPR11,$16	
	srli	%GPR11,%GPR13,$16	
	srli	%GPR12,%GPR12,$16	
	srli	%GPR25,%GPR14,$16	
	add	%GPR23,%GPR7,%GPR8	
	sub	%GPR24,%GPR7,%GPR8	
	srli	%GPR14,%GPR16,$16	
	add	%GPR8,%GPR12,%GPR21	
	add	%GPR7,%GPR11,%GPR25	
	sub	%GPR3,%GPR3,%GPR4	
	sub	%GPR1,%GPR1,%GPR6	
	srli	%GPR13,%GPR17,$16	
	srli	%GPR16,%GPR18,$16	
	srli	%GPR15,%GPR15,$16	
	add	%GPR26,%GPR7,%GPR8	
	sub	%GPR27,%GPR7,%GPR8	
	add	%GPR4,%GPR1,%GPR3	
	sub	%GPR6,%GPR1,%GPR3	
	add	%GPR8,%GPR14,%GPR15	
	add	%GPR7,%GPR13,%GPR16	
	sub	%GPR3,%GPR20,%GPR5	
	sub	%GPR1,%GPR19,%GPR22	
	NOP		;;159,161
	NOP		;;159,161
	add	%GPR17,%GPR7,%GPR8	
	sub	%GPR18,%GPR7,%GPR8	
	add	%GPR5,%GPR1,%GPR3	
	sub	%GPR19,%GPR1,%GPR3	
	sub	%GPR3,%GPR12,%GPR21	
	sub	%GPR1,%GPR11,%GPR25	
	add	%GPR7,%GPR9,%GPR17	
	add	%GPR8,%GPR23,%GPR26	
	NOP		;;168,170
	NOP		;;168,170
	add	%GPR12,%GPR1,%GPR3	
	sub	%GPR11,%GPR1,%GPR3	
	sub	%GPR1,%GPR13,%GPR16	
	sub	%GPR3,%GPR14,%GPR15	
	add	%GPR28,%GPR7,%GPR8	
	sub	%GPR16,%GPR7,%GPR8	
	NOP		;;175,177
	NOP		;;175,177
	add	%GPR13,%GPR1,%GPR3	
	sub	%GPR14,%GPR1,%GPR3	
	srai	%GPR1,%GPR28,$1	
	sub	%GPR3,%GPR23,%GPR26	
	add	%GPR8,%GPR5,%GPR12	
	NOP		;;181,183
	NOP		;;181,183
	andi	%GPR15,%GPR1,$65535	
	sub	%GPR1,%GPR9,%GPR17	
	NOP		;;184,188
	NOP		;;184,188
	NOP		;;184,188
	NOP		;;184,188
	sub	%GPR17,%GPR1,%GPR3	
	add	%GPR9,%GPR1,%GPR3	
	slli	%GPR1,%GPR15,$16	
	NOP		;;190,192
	NOP		;;190,192
	srai	%GPR7,%GPR17,$1	
	srai	%GPR3,%GPR9,$1	
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$4	
	NOP		;;194,196
	NOP		;;194,196
	andi	%GPR17,%GPR7,$65535	
	andi	%GPR3,%GPR3,$65535	
	add	%GPR7,%GPR4,%GPR13	
	NOP		;;198,200
	NOP		;;198,200
	or	%GPR17,%GPR1,%GPR17	
	slli	%GPR15,%GPR3,$16	
	sub	%GPR1,%GPR4,%GPR13	
	sub	%GPR3,%GPR5,%GPR12	
	add	%GPR20,%GPR7,%GPR8	
	sw	0(%GPR2),%GPR17	
	add	%GPR9,%GPR2,%GPR9	
	add	%GPR5,%GPR1,%GPR3	
	sub	%GPR1,%GPR1,%GPR3	
	srai	%GPR3,%GPR16,$1	
	sub	%GPR4,%GPR7,%GPR8	
	add	%GPR7,%GPR10,%GPR18	
	srai	%GPR1,%GPR1,$1	
	andi	%GPR12,%GPR3,$65535	
	srai	%GPR3,%GPR20,$1	
	add	%GPR8,%GPR24,%GPR27	
	andi	%GPR1,%GPR1,$65535	
	or	%GPR12,%GPR15,%GPR12	
	andi	%GPR13,%GPR3,$65535	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$8	
	srai	%GPR5,%GPR5,$1	
	sw	0(%GPR9),%GPR12	
	slli	%GPR13,%GPR13,$16	
	add	%GPR12,%GPR2,%GPR3	
	sub	%GPR3,%GPR24,%GPR27	
	add	%GPR15,%GPR7,%GPR8	
	or	%GPR13,%GPR13,%GPR1	
	sub	%GPR1,%GPR10,%GPR18	
	andi	%GPR5,%GPR5,$65535	
	NOP		;;228,231
	NOP		;;228,231
	NOP		;;228,231
	add	%GPR10,%GPR1,%GPR3	
	sub	%GPR1,%GPR1,%GPR3	
	srai	%GPR3,%GPR4,$1	
	slli	%GPR5,%GPR5,$16	
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$12	
	srai	%GPR1,%GPR1,$1	
	andi	%GPR16,%GPR3,$65535	
	srai	%GPR3,%GPR15,$1	
	sw	0(%GPR12),%GPR13	
	add	%GPR9,%GPR2,%GPR9	
	or	%GPR12,%GPR5,%GPR16	
	andi	%GPR15,%GPR3,$65535	
	andi	%GPR1,%GPR1,$65535	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$16	
	sub	%GPR4,%GPR7,%GPR8	
	slli	%GPR5,%GPR15,$16	
	sw	0(%GPR9),%GPR12	
	srai	%GPR7,%GPR10,$1	
	add	%GPR12,%GPR2,%GPR3	
	or	%GPR5,%GPR5,%GPR1	
	sub	%GPR1,%GPR6,%GPR14	
	sub	%GPR3,%GPR19,%GPR11	
	andi	%GPR13,%GPR7,$65535	
	add	%GPR7,%GPR6,%GPR14	
	add	%GPR8,%GPR19,%GPR11	
	add	%GPR6,%GPR1,%GPR3	
	sub	%GPR3,%GPR1,%GPR3	
	srai	%GPR1,%GPR4,$1	
	add	%GPR10,%GPR7,%GPR8	
	NOP		;;259,261
	NOP		;;259,261
	sw	0(%GPR12),%GPR5	
	andi	%GPR4,%GPR1,$65535	
	srai	%GPR1,%GPR10,$1	
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$20	
	sub	%GPR5,%GPR7,%GPR8	
	slli	%GPR13,%GPR13,$16	
	andi	%GPR1,%GPR1,$65535	
	add	%GPR8,%GPR2,%GPR9	
	NOP		;;268,270
	NOP		;;268,270
	or	%GPR4,%GPR13,%GPR4	
	slli	%GPR9,%GPR1,$16	
	srai	%GPR1,%GPR6,$1	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$24	
	sw	0(%GPR8),%GPR4	
	NOP		;;274,276
	NOP		;;274,276
	andi	%GPR6,%GPR1,$65535	
	srai	%GPR1,%GPR3,$1	
	add	%GPR4,%GPR2,%GPR7	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$28	
	slli	%GPR6,%GPR6,$16	
	andi	%GPR1,%GPR1,$65535	
	NOP		;;281,283
	NOP		;;281,283
	add	%GPR2,%GPR2,%GPR3	
	NOP		;;283,285
	NOP		;;283,285
	or	%GPR7,%GPR9,%GPR1	
	srai	%GPR1,%GPR5,$1	
	NOP		;;286,289
	NOP		;;286,289
	NOP		;;286,289
	sw	0(%GPR4),%GPR7	
	andi	%GPR1,%GPR1,$65535	
	NOP		;;290,294
	NOP		;;290,294
	NOP		;;290,294
	NOP		;;290,294
	or	%GPR1,%GPR6,%GPR1	
	NOP		;;294,298
	NOP		;;294,298
	NOP		;;294,298
	NOP		;;294,298
	sw	0(%GPR2),%GPR1	
	j	L7	
	NOP		
	NOP		
	NOP		
L7:
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
SATD_4x4:
L8:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$120	
	NOP		
	NOP		
	NOP		
	NOP		
	add	%GPR19,%GPR1,%GPR0	
	add	%GPR6,%GPR2,%GPR0	
	add	%GPR5,%GPR3,%GPR0	
	NOP		
	NOP		
	NOP		
	NOP		;;4,9
	NOP		;;4,9
	NOP		;;4,9
	NOP		;;4,9
	NOP		;;4,9
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$4	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$4	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	NOP		;;11,13
	NOP		;;11,13
	mult	%GPR15,%GPR6,%GPR7	
	mult	%GPR10,%GPR6,%GPR3	
	mult	%GPR2,%GPR6,%GPR2	
	NOP		;;15,19
	NOP		;;15,19
	NOP		;;15,19
	NOP		;;15,19
	lw	%GPR6,0(%GPR5)	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$16	
	NOP		;;20,23
	NOP		;;20,23
	NOP		;;20,23
	sw	-4(%GPR30),%GPR6	
	lw	%GPR6,0(%GPR19)	
	NOP		;;24,28
	NOP		;;24,28
	NOP		;;24,28
	NOP		;;24,28
	sw	-8(%GPR30),%GPR6	
	lw	%GPR6,0(%GPR5)	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$16	
	NOP		;;30,33
	NOP		;;30,33
	NOP		;;30,33
	sw	-12(%GPR30),%GPR6	
	lw	%GPR6,0(%GPR19)	
	NOP		;;34,38
	NOP		;;34,38
	NOP		;;34,38
	NOP		;;34,38
	sw	-16(%GPR30),%GPR6	
	lw	%GPR6,0(%GPR5)	
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	sw	-20(%GPR30),%GPR6	
	lw	%GPR6,0(%GPR19)	
	NOP		;;44,48
	NOP		;;44,48
	NOP		;;44,48
	NOP		;;44,48
	sw	-24(%GPR30),%GPR6	
	lw	%GPR6,0(%GPR5)	
	add	%GPR5,%GPR5,%GPR1	
	NOP		;;50,53
	NOP		;;50,53
	NOP		;;50,53
	sw	-28(%GPR30),%GPR6	
	lw	%GPR1,0(%GPR5)	
	lw	%GPR6,0(%GPR19)	
	add	%GPR19,%GPR19,%GPR2	
	lw	%GPR7,0(%GPR5)	
	sw	-32(%GPR30),%GPR1	
	lw	%GPR1,0(%GPR5)	
	sw	-36(%GPR30),%GPR6	
	lw	%GPR6,0(%GPR5)	
	add	%GPR5,%GPR5,%GPR4	
	sw	-40(%GPR30),%GPR1	
	lw	%GPR1,0(%GPR19)	
	lw	%GPR9,0(%GPR19)	
	lw	%GPR11,0(%GPR19)	
	NOP		;;66,68
	NOP		;;66,68
	sw	-44(%GPR30),%GPR1	
	lw	%GPR1,0(%GPR19)	
	add	%GPR19,%GPR19,%GPR10	
	NOP		;;70,73
	NOP		;;70,73
	NOP		;;70,73
	sw	-48(%GPR30),%GPR1	
	lw	%GPR1,0(%GPR5)	
	lhi	%GPR10,$255	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR10,%GPR10,$16711680	
	NOP		;;75,77
	NOP		;;75,77
	lhi	%GPR13,$65280	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR13,%GPR13,$-16777216	
	sw	-52(%GPR30),%GPR1	
	lw	%GPR1,0(%GPR5)	
	NOP		;;79,83
	NOP		;;79,83
	NOP		;;79,83
	NOP		;;79,83
	sw	-56(%GPR30),%GPR1	
	lw	%GPR1,0(%GPR19)	
	and	%GPR10,%GPR7,%GPR10	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$16	
	and	%GPR7,%GPR6,%GPR13	
	sw	-60(%GPR30),%GPR1	
	lw	%GPR1,0(%GPR19)	
	lhi	%GPR12,$255	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR12,%GPR12,$16711680	
	lhi	%GPR16,$255	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR16,%GPR16,$16711680	
	lw	%GPR6,-20(%GPR30)	
	sw	-64(%GPR30),%GPR1	
	lhi	%GPR1,$255	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$16711680	
	lw	%GPR2,0(%GPR5)	
	lw	%GPR8,0(%GPR5)	
	add	%GPR5,%GPR5,%GPR3	
	sw	-68(%GPR30),%GPR1	
	lhi	%GPR1,$255	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$16711680	
	NOP		;;99,104
	NOP		;;99,104
	NOP		;;99,104
	NOP		;;99,104
	NOP		;;99,104
	and	%GPR11,%GPR11,%GPR12	
	and	%GPR12,%GPR6,%GPR16	
	lhi	%GPR17,$255	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR17,%GPR17,$16711680	
	lhi	%GPR14,$65280	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR14,%GPR14,$-16777216	
	lw	%GPR6,-24(%GPR30)	
	sw	-72(%GPR30),%GPR1	
	lw	%GPR3,0(%GPR5)	
	lhi	%GPR4,$65280	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$-16777216	
	lhi	%GPR1,$65280	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$-16777216	
	NOP		;;112,114
	NOP		;;112,114
	and	%GPR13,%GPR6,%GPR17	
	and	%GPR9,%GPR9,%GPR14	
	and	%GPR17,%GPR3,%GPR1	
	lhi	%GPR21,$65280	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR21,%GPR21,$-16777216	
	lw	%GPR14,-36(%GPR30)	
	sw	-76(%GPR30),%GPR4	
	lw	%GPR22,0(%GPR19)	
	lw	%GPR23,0(%GPR19)	
	lw	%GPR4,0(%GPR5)	
	lw	%GPR1,-68(%GPR30)	
	add	%GPR19,%GPR19,%GPR15	
	NOP		;;124,126
	NOP		;;124,126
	and	%GPR16,%GPR14,%GPR21	
	and	%GPR14,%GPR4,%GPR1	
	lw	%GPR6,-28(%GPR30)	
	lhi	%GPR18,$65280	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR18,%GPR18,$-16777216	
	lw	%GPR15,0(%GPR19)	
	lw	%GPR1,-76(%GPR30)	
	lw	%GPR20,0(%GPR19)	
	and	%GPR6,%GPR6,%GPR18	
	NOP		;;133,135
	NOP		;;133,135
	and	%GPR18,%GPR15,%GPR1	
	lw	%GPR1,-72(%GPR30)	
	NOP		;;136,138
	NOP		;;136,138
	lhi	%GPR24,$255	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR24,%GPR24,$16711680	
	NOP		;;138,140
	NOP		;;138,140
	and	%GPR15,%GPR20,%GPR1	
	lw	%GPR1,-12(%GPR30)	
	and	%GPR8,%GPR8,%GPR24	
	lhi	%GPR25,$255	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR25,%GPR25,$16711680	
	lhi	%GPR26,$65280	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR26,%GPR26,$-16777216	
	andi	%GPR24,%GPR1,$65280	
	lw	%GPR1,-16(%GPR30)	
	sw	-80(%GPR30),%GPR8	
	and	%GPR8,%GPR23,%GPR25	
	and	%GPR2,%GPR2,%GPR26	
	andi	%GPR23,%GPR1,$65280	
	lw	%GPR1,-32(%GPR30)	
	lw	%GPR28,0(%GPR5)	
	NOP		;;152,155
	NOP		;;152,155
	NOP		;;152,155
	andi	%GPR25,%GPR1,$65280	
	lw	%GPR1,-44(%GPR30)	
	sw	-84(%GPR30),%GPR28	
	lhi	%GPR27,$65280	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR27,%GPR27,$-16777216	
	NOP		;;158,160
	NOP		;;158,160
	andi	%GPR26,%GPR1,$65280	
	lw	%GPR1,-52(%GPR30)	
	sw	-88(%GPR30),%GPR8	
	and	%GPR8,%GPR22,%GPR27	
	lw	%GPR28,0(%GPR19)	
	andi	%GPR3,%GPR1,$65280	
	lw	%GPR1,-60(%GPR30)	
	lw	%GPR22,0(%GPR19)	
	lhi	%GPR19,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR19,%GPR19,$24	
	NOP		;;168,170
	NOP		;;168,170
	andi	%GPR4,%GPR1,$65280	
	lw	%GPR1,0(%GPR5)	
	lw	%GPR5,-84(%GPR30)	
	srl	%GPR16,%GPR16,%GPR19	
	srl	%GPR9,%GPR9,%GPR19	
	andi	%GPR21,%GPR1,$255	
	andi	%GPR5,%GPR5,$65280	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$8	
	sw	-92(%GPR30),%GPR16	
	srl	%GPR8,%GPR8,%GPR19	
	add	%GPR27,%GPR5,%GPR0	
	add	%GPR5,%GPR28,%GPR0	
	sra	%GPR23,%GPR23,%GPR1	
	sra	%GPR24,%GPR24,%GPR1	
	sra	%GPR26,%GPR26,%GPR1	
	andi	%GPR5,%GPR5,$65280	
	sra	%GPR25,%GPR25,%GPR1	
	sra	%GPR4,%GPR4,%GPR1	
	sra	%GPR3,%GPR3,%GPR1	
	sra	%GPR5,%GPR5,%GPR1	
	sra	%GPR1,%GPR27,%GPR1	
	srl	%GPR6,%GPR6,%GPR19	
	lw	%GPR27,-92(%GPR30)	
	sw	-96(%GPR30),%GPR9	
	sw	-100(%GPR30),%GPR8	
	srl	%GPR8,%GPR2,%GPR19	
	srl	%GPR2,%GPR18,%GPR19	
	subu	%GPR6,%GPR27,%GPR6	
	NOP		;;197,199
	NOP		;;197,199
	srl	%GPR7,%GPR7,%GPR19	
	lw	%GPR27,-96(%GPR30)	
	sw	-104(%GPR30),%GPR2	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$16	
	srl	%GPR9,%GPR17,%GPR19	
	subu	%GPR7,%GPR27,%GPR7	
	lw	%GPR27,-100(%GPR30)	
	sra	%GPR13,%GPR13,%GPR2	
	sra	%GPR12,%GPR12,%GPR2	
	sra	%GPR11,%GPR11,%GPR2	
	subu	%GPR8,%GPR27,%GPR8	
	lw	%GPR27,-104(%GPR30)	
	sw	-108(%GPR30),%GPR13	
	add	%GPR28,%GPR12,%GPR0	
	sw	-112(%GPR30),%GPR11	
	subu	%GPR9,%GPR27,%GPR9	
	lw	%GPR12,-80(%GPR30)	
	lw	%GPR11,-88(%GPR30)	
	lw	%GPR27,-108(%GPR30)	
	sra	%GPR13,%GPR15,%GPR2	
	lw	%GPR16,-8(%GPR30)	
	lw	%GPR18,-48(%GPR30)	
	lw	%GPR17,-40(%GPR30)	
	lw	%GPR15,-4(%GPR30)	
	lw	%GPR20,-64(%GPR30)	
	lw	%GPR19,-56(%GPR30)	
	sra	%GPR12,%GPR12,%GPR2	
	sra	%GPR11,%GPR11,%GPR2	
	sub	%GPR27,%GPR27,%GPR28	
	sra	%GPR10,%GPR10,%GPR2	
	sra	%GPR14,%GPR14,%GPR2	
	lw	%GPR28,-112(%GPR30)	
	andi	%GPR16,%GPR16,$255	
	andi	%GPR18,%GPR18,$255	
	andi	%GPR17,%GPR17,$255	
	andi	%GPR15,%GPR15,$255	
	andi	%GPR22,%GPR22,$255	
	andi	%GPR20,%GPR20,$255	
	andi	%GPR19,%GPR19,$255	
	sub	%GPR11,%GPR11,%GPR12	
	sub	%GPR12,%GPR13,%GPR14	
	sub	%GPR10,%GPR28,%GPR10	
	sub	%GPR14,%GPR18,%GPR17	
	sub	%GPR13,%GPR16,%GPR15	
	sub	%GPR18,%GPR26,%GPR25	
	sub	%GPR15,%GPR20,%GPR19	
	sub	%GPR16,%GPR22,%GPR21	
	sub	%GPR3,%GPR4,%GPR3	
	sub	%GPR1,%GPR5,%GPR1	
	sub	%GPR17,%GPR23,%GPR24	
	sll	%GPR4,%GPR6,%GPR2	
	sll	%GPR5,%GPR7,%GPR2	
	sll	%GPR6,%GPR8,%GPR2	
	sll	%GPR7,%GPR9,%GPR2	
	andi	%GPR19,%GPR10,$65535	
	andi	%GPR20,%GPR11,$65535	
	andi	%GPR21,%GPR27,$65535	
	andi	%GPR8,%GPR12,$65535	
	andi	%GPR9,%GPR13,$65535	
	andi	%GPR10,%GPR14,$65535	
	sll	%GPR13,%GPR18,%GPR2	
	sll	%GPR14,%GPR3,%GPR2	
	andi	%GPR11,%GPR15,$65535	
	andi	%GPR12,%GPR16,$65535	
	sll	%GPR15,%GPR1,%GPR2	
	sll	%GPR16,%GPR17,%GPR2	
	NOP		;;264,267
	NOP		;;264,267
	NOP		;;264,267
	or	%GPR3,%GPR5,%GPR19	
	NOP		;;267,270
	NOP		;;267,270
	NOP		;;267,270
	or	%GPR1,%GPR4,%GPR21	
	or	%GPR5,%GPR6,%GPR20	
	or	%GPR4,%GPR13,%GPR10	
	or	%GPR6,%GPR14,%GPR11	
	or	%GPR7,%GPR7,%GPR8	
	or	%GPR2,%GPR16,%GPR9	
	or	%GPR8,%GPR15,%GPR12	
	lhi	%GPR13,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR13,%GPR13,$-65536	
	lhi	%GPR14,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR14,%GPR14,$-65536	
	lhi	%GPR16,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR16,%GPR16,$-65536	
	lhi	%GPR15,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR15,%GPR15,$-65536	
	andi	%GPR19,%GPR5,$65535	
	andi	%GPR20,%GPR7,$65535	
	fex	%GPR5,%GPR5,%GPR14,$16	
	fex	%GPR7,%GPR7,%GPR13,$16	
	fex	%GPR14,%GPR1,%GPR16,$16	
	fex	%GPR13,%GPR3,%GPR15,$16	
	andi	%GPR18,%GPR3,$65535	
	andi	%GPR17,%GPR1,$65535	
	add	%GPR1,%GPR14,%GPR7	
	add	%GPR3,%GPR13,%GPR5	
	sub	%GPR7,%GPR14,%GPR7	
	sub	%GPR5,%GPR13,%GPR5	
	slli	%GPR19,%GPR19,$16	
	slli	%GPR18,%GPR18,$16	
	slli	%GPR20,%GPR20,$16	
	slli	%GPR17,%GPR17,$16	
	add	%GPR13,%GPR1,%GPR3	
	add	%GPR15,%GPR7,%GPR5	
	sub	%GPR26,%GPR7,%GPR5	
	sub	%GPR25,%GPR1,%GPR3	
	srai	%GPR5,%GPR19,$16	
	srai	%GPR1,%GPR18,$16	
	srai	%GPR16,%GPR20,$16	
	srai	%GPR7,%GPR17,$16	
	NOP		;;304,306
	NOP		;;304,306
	add	%GPR3,%GPR1,%GPR5	
	NOP		;;306,308
	NOP		;;306,308
	sub	%GPR5,%GPR1,%GPR5	
	add	%GPR1,%GPR7,%GPR16	
	NOP		;;309,312
	NOP		;;309,312
	NOP		;;309,312
	sub	%GPR7,%GPR7,%GPR16	
	lhi	%GPR23,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR23,%GPR23,$-65536	
	lhi	%GPR22,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR22,%GPR22,$-65536	
	lhi	%GPR24,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR24,%GPR24,$-65536	
	lhi	%GPR21,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR21,%GPR21,$-65536	
	add	%GPR14,%GPR1,%GPR3	
	sub	%GPR18,%GPR7,%GPR5	
	add	%GPR16,%GPR7,%GPR5	
	sub	%GPR17,%GPR1,%GPR3	
	fex	%GPR5,%GPR6,%GPR22,$16	
	fex	%GPR1,%GPR4,%GPR23,$16	
	andi	%GPR10,%GPR4,$65535	
	fex	%GPR7,%GPR8,%GPR21,$16	
	fex	%GPR4,%GPR2,%GPR24,$16	
	add	%GPR3,%GPR1,%GPR5	
	andi	%GPR11,%GPR6,$65535	
	sub	%GPR5,%GPR1,%GPR5	
	andi	%GPR9,%GPR2,$65535	
	add	%GPR1,%GPR4,%GPR7	
	andi	%GPR12,%GPR8,$65535	
	sub	%GPR7,%GPR4,%GPR7	
	slli	%GPR10,%GPR10,$16	
	slli	%GPR11,%GPR11,$16	
	slli	%GPR9,%GPR9,$16	
	slli	%GPR12,%GPR12,$16	
	add	%GPR2,%GPR1,%GPR3	
	sub	%GPR19,%GPR7,%GPR5	
	add	%GPR4,%GPR7,%GPR5	
	sub	%GPR6,%GPR1,%GPR3	
	srai	%GPR5,%GPR11,$16	
	srai	%GPR1,%GPR10,$16	
	srai	%GPR7,%GPR9,$16	
	srai	%GPR9,%GPR12,$16	
	NOP		;;344,346
	NOP		;;344,346
	add	%GPR3,%GPR1,%GPR5	
	sub	%GPR5,%GPR1,%GPR5	
	add	%GPR1,%GPR7,%GPR9	
	sub	%GPR7,%GPR7,%GPR9	
	NOP		;;349,352
	NOP		;;349,352
	NOP		;;349,352
	add	%GPR10,%GPR1,%GPR3	
	sub	%GPR8,%GPR1,%GPR3	
	add	%GPR3,%GPR14,%GPR2	
	add	%GPR11,%GPR7,%GPR5	
	add	%GPR1,%GPR13,%GPR10	
	sub	%GPR9,%GPR7,%GPR5	
	sub	%GPR5,%GPR14,%GPR2	
	sub	%GPR7,%GPR13,%GPR10	
	add	%GPR20,%GPR1,%GPR3	
	sub	%GPR1,%GPR1,%GPR3	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	add	%GPR3,%GPR7,%GPR5	
	sub	%GPR7,%GPR7,%GPR5	
	lhi	%GPR12,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR12,%GPR12,$0	
	srai	%GPR5,%GPR20,$1	
	srai	%GPR10,%GPR3,$1	
	srai	%GPR1,%GPR1,$1	
	srai	%GPR3,%GPR7,$1	
	add	%GPR2,%GPR2,%GPR5	
	slt	%GPR27,%GPR10,%GPR12	
	bnez	%GPR27,L9	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L10	
	NOP		
	NOP		
	NOP		
	NOP		
L9:
	sub	%GPR10,%GPR0,%GPR10	
	j	L11	
	NOP		
	NOP		
	NOP		
L10:
	NOP		
	NOP		
	NOP		
L11:
	add	%GPR2,%GPR2,%GPR10	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$0	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	slt	%GPR27,%GPR1,%GPR5	
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
	sub	%GPR10,%GPR0,%GPR1	
	j	L14	
	NOP		
	NOP		
	NOP		
L13:
	add	%GPR10,%GPR1,%GPR0	
	NOP		
	NOP		
	NOP		
L14:
	add	%GPR2,%GPR2,%GPR10	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
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
	slt	%GPR27,%GPR3,%GPR1	
	bnez	%GPR27,L15	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L16	
	NOP		
	NOP		
	NOP		
	NOP		
L15:
	sub	%GPR10,%GPR0,%GPR3	
	j	L17	
	NOP		
	NOP		
	NOP		
L16:
	add	%GPR10,%GPR3,%GPR0	
	NOP		
	NOP		
	NOP		
L17:
	add	%GPR1,%GPR15,%GPR11	
	add	%GPR3,%GPR16,%GPR4	
	sub	%GPR5,%GPR16,%GPR4	
	sub	%GPR7,%GPR15,%GPR11	
	NOP		;;3,5
	NOP		;;3,5
	add	%GPR12,%GPR1,%GPR3	
	sub	%GPR1,%GPR1,%GPR3	
	add	%GPR3,%GPR7,%GPR5	
	add	%GPR2,%GPR2,%GPR10	
	lhi	%GPR11,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR11,%GPR11,$0	
	sub	%GPR5,%GPR7,%GPR5	
	srai	%GPR10,%GPR12,$1	
	srai	%GPR4,%GPR1,$1	
	srai	%GPR3,%GPR3,$1	
	srai	%GPR1,%GPR5,$1	
	slt	%GPR27,%GPR10,%GPR11	
	bnez	%GPR27,L18	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L19	
	NOP		
	NOP		
	NOP		
	NOP		
L18:
	sub	%GPR10,%GPR0,%GPR10	
	j	L20	
	NOP		
	NOP		
	NOP		
L19:
	NOP		
	NOP		
	NOP		
L20:
	add	%GPR2,%GPR2,%GPR10	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$0	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	slt	%GPR27,%GPR3,%GPR5	
	bnez	%GPR27,L21	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L22	
	NOP		
	NOP		
	NOP		
	NOP		
L21:
	sub	%GPR10,%GPR0,%GPR3	
	j	L23	
	NOP		
	NOP		
	NOP		
L22:
	add	%GPR10,%GPR3,%GPR0	
	NOP		
	NOP		
	NOP		
L23:
	add	%GPR2,%GPR2,%GPR10	
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
	slt	%GPR27,%GPR4,%GPR3	
	bnez	%GPR27,L24	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L25	
	NOP		
	NOP		
	NOP		
	NOP		
L24:
	sub	%GPR10,%GPR0,%GPR4	
	j	L26	
	NOP		
	NOP		
	NOP		
L25:
	add	%GPR10,%GPR4,%GPR0	
	NOP		
	NOP		
	NOP		
L26:
	add	%GPR2,%GPR2,%GPR10	
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
	slt	%GPR27,%GPR1,%GPR3	
	bnez	%GPR27,L27	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L28	
	NOP		
	NOP		
	NOP		
	NOP		
L27:
	sub	%GPR10,%GPR0,%GPR1	
	j	L29	
	NOP		
	NOP		
	NOP		
L28:
	add	%GPR10,%GPR1,%GPR0	
	NOP		
	NOP		
	NOP		
L29:
	add	%GPR1,%GPR25,%GPR8	
	add	%GPR3,%GPR17,%GPR6	
	sub	%GPR5,%GPR17,%GPR6	
	sub	%GPR7,%GPR25,%GPR8	
	NOP		;;3,5
	NOP		;;3,5
	add	%GPR8,%GPR1,%GPR3	
	sub	%GPR1,%GPR1,%GPR3	
	add	%GPR6,%GPR7,%GPR5	
	add	%GPR2,%GPR2,%GPR10	
	sub	%GPR5,%GPR7,%GPR5	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	srai	%GPR10,%GPR8,$1	
	srai	%GPR3,%GPR1,$1	
	srai	%GPR5,%GPR5,$1	
	srai	%GPR1,%GPR6,$1	
	slt	%GPR27,%GPR10,%GPR4	
	bnez	%GPR27,L30	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L31	
	NOP		
	NOP		
	NOP		
	NOP		
L30:
	sub	%GPR10,%GPR0,%GPR10	
	j	L32	
	NOP		
	NOP		
	NOP		
L31:
	NOP		
	NOP		
	NOP		
L32:
	add	%GPR2,%GPR2,%GPR10	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	slt	%GPR27,%GPR1,%GPR4	
	bnez	%GPR27,L33	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L34	
	NOP		
	NOP		
	NOP		
	NOP		
L33:
	sub	%GPR10,%GPR0,%GPR1	
	j	L35	
	NOP		
	NOP		
	NOP		
L34:
	add	%GPR10,%GPR1,%GPR0	
	NOP		
	NOP		
	NOP		
L35:
	add	%GPR2,%GPR2,%GPR10	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
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
	slt	%GPR27,%GPR3,%GPR1	
	bnez	%GPR27,L36	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L37	
	NOP		
	NOP		
	NOP		
	NOP		
L36:
	sub	%GPR10,%GPR0,%GPR3	
	j	L38	
	NOP		
	NOP		
	NOP		
L37:
	add	%GPR10,%GPR3,%GPR0	
	NOP		
	NOP		
	NOP		
L38:
	add	%GPR2,%GPR2,%GPR10	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
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
	slt	%GPR27,%GPR5,%GPR1	
	bnez	%GPR27,L39	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L40	
	NOP		
	NOP		
	NOP		
	NOP		
L39:
	sub	%GPR10,%GPR0,%GPR5	
	j	L41	
	NOP		
	NOP		
	NOP		
L40:
	add	%GPR10,%GPR5,%GPR0	
	NOP		
	NOP		
	NOP		
L41:
	add	%GPR1,%GPR26,%GPR9	
	add	%GPR3,%GPR18,%GPR19	
	sub	%GPR5,%GPR18,%GPR19	
	sub	%GPR7,%GPR26,%GPR9	
	NOP		;;3,5
	NOP		;;3,5
	add	%GPR6,%GPR1,%GPR3	
	sub	%GPR1,%GPR1,%GPR3	
	add	%GPR8,%GPR7,%GPR5	
	add	%GPR2,%GPR2,%GPR10	
	sub	%GPR5,%GPR7,%GPR5	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	srai	%GPR10,%GPR6,$1	
	srai	%GPR3,%GPR1,$1	
	srai	%GPR5,%GPR5,$1	
	srai	%GPR1,%GPR8,$1	
	slt	%GPR27,%GPR10,%GPR4	
	bnez	%GPR27,L42	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L43	
	NOP		
	NOP		
	NOP		
	NOP		
L42:
	sub	%GPR10,%GPR0,%GPR10	
	j	L44	
	NOP		
	NOP		
	NOP		
L43:
	NOP		
	NOP		
	NOP		
L44:
	add	%GPR2,%GPR2,%GPR10	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	slt	%GPR27,%GPR1,%GPR4	
	bnez	%GPR27,L45	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L46	
	NOP		
	NOP		
	NOP		
	NOP		
L45:
	sub	%GPR10,%GPR0,%GPR1	
	j	L47	
	NOP		
	NOP		
	NOP		
L46:
	add	%GPR10,%GPR1,%GPR0	
	NOP		
	NOP		
	NOP		
L47:
	add	%GPR2,%GPR2,%GPR10	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
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
	slt	%GPR27,%GPR3,%GPR1	
	bnez	%GPR27,L48	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L49	
	NOP		
	NOP		
	NOP		
	NOP		
L48:
	sub	%GPR10,%GPR0,%GPR3	
	j	L50	
	NOP		
	NOP		
	NOP		
L49:
	add	%GPR10,%GPR3,%GPR0	
	NOP		
	NOP		
	NOP		
L50:
	add	%GPR2,%GPR2,%GPR10	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
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
	slt	%GPR27,%GPR5,%GPR1	
	bnez	%GPR27,L51	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L52	
	NOP		
	NOP		
	NOP		
	NOP		
L51:
	sub	%GPR10,%GPR0,%GPR5	
	j	L53	
	NOP		
	NOP		
	NOP		
L52:
	add	%GPR10,%GPR5,%GPR0	
	NOP		
	NOP		
	NOP		
L53:
	add	%GPR28,%GPR2,%GPR10	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	j	L54	
	NOP		
	NOP		
	NOP		
	NOP		
L54:
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
DCT_4x4:
L55:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$116	
	NOP		
	NOP		
	NOP		
	NOP		
	add	%GPR13,%GPR1,%GPR0	
	add	%GPR6,%GPR2,%GPR0	
	add	%GPR17,%GPR3,%GPR0	
	NOP		
	NOP		
	NOP		
	NOP		;;4,9
	NOP		;;4,9
	NOP		;;4,9
	NOP		;;4,9
	NOP		;;4,9
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$4	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$4	
	lw	%GPR10,0(%GPR17)	
	NOP		;;11,13
	NOP		;;11,13
	mult	%GPR2,%GPR6,%GPR1	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$4	
	sw	-4(%GPR30),%GPR10	
	NOP		;;15,17
	NOP		;;15,17
	lw	%GPR1,0(%GPR17)	
	mult	%GPR7,%GPR6,%GPR3	
	lw	%GPR10,0(%GPR13)	
	NOP		;;19,21
	NOP		;;19,21
	sw	-8(%GPR30),%GPR1	
	lw	%GPR1,0(%GPR13)	
	lw	%GPR3,0(%GPR13)	
	NOP		;;23,26
	NOP		;;23,26
	NOP		;;23,26
	sw	-12(%GPR30),%GPR1	
	lw	%GPR1,0(%GPR17)	
	lhi	%GPR8,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR8,%GPR8,$4	
	NOP		;;28,31
	NOP		;;28,31
	NOP		;;28,31
	sw	-16(%GPR30),%GPR1	
	lw	%GPR1,0(%GPR13)	
	add	%GPR13,%GPR13,%GPR2	
	NOP		;;33,36
	NOP		;;33,36
	NOP		;;33,36
	sw	-20(%GPR30),%GPR1	
	lw	%GPR1,0(%GPR17)	
	add	%GPR17,%GPR17,%GPR5	
	lw	%GPR21,0(%GPR13)	
	lw	%GPR2,0(%GPR13)	
	NOP		;;40,42
	NOP		;;40,42
	lw	%GPR5,0(%GPR17)	
	lw	%GPR18,0(%GPR17)	
	lw	%GPR19,0(%GPR17)	
	NOP		;;44,46
	NOP		;;44,46
	sw	-24(%GPR30),%GPR5	
	lw	%GPR5,0(%GPR17)	
	add	%GPR17,%GPR17,%GPR8	
	NOP		;;48,51
	NOP		;;48,51
	NOP		;;48,51
	sw	-28(%GPR30),%GPR5	
	lw	%GPR5,0(%GPR13)	
	NOP		;;52,56
	NOP		;;52,56
	NOP		;;52,56
	NOP		;;52,56
	sw	-32(%GPR30),%GPR5	
	lw	%GPR5,0(%GPR13)	
	add	%GPR13,%GPR13,%GPR7	
	NOP		;;58,61
	NOP		;;58,61
	NOP		;;58,61
	sw	-36(%GPR30),%GPR5	
	lw	%GPR5,0(%GPR17)	
	NOP		;;62,66
	NOP		;;62,66
	NOP		;;62,66
	NOP		;;62,66
	sw	-40(%GPR30),%GPR5	
	lw	%GPR5,0(%GPR17)	
	lhi	%GPR26,$255	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR26,%GPR26,$16711680	
	NOP		;;68,71
	NOP		;;68,71
	NOP		;;68,71
	sw	-44(%GPR30),%GPR5	
	lw	%GPR5,0(%GPR13)	
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$4	
	and	%GPR19,%GPR19,%GPR26	
	NOP		;;74,76
	NOP		;;74,76
	sw	-48(%GPR30),%GPR5	
	lw	%GPR5,0(%GPR13)	
	NOP		;;77,79
	NOP		;;77,79
	lhi	%GPR27,$255	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR27,%GPR27,$16711680	
	NOP		;;79,81
	NOP		;;79,81
	sw	-52(%GPR30),%GPR5	
	lhi	%GPR5,$255	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$16711680	
	NOP		;;82,84
	NOP		;;82,84
	mult	%GPR11,%GPR6,%GPR9	
	NOP		;;84,86
	NOP		;;84,86
	sw	-56(%GPR30),%GPR5	
	lhi	%GPR5,$255	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$16711680	
	NOP		;;87,90
	NOP		;;87,90
	NOP		;;87,90
	sw	-60(%GPR30),%GPR19	
	sw	-64(%GPR30),%GPR5	
	lhi	%GPR5,$65280	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$-16777216	
	and	%GPR19,%GPR21,%GPR27	
	NOP		;;93,95
	NOP		;;93,95
	lhi	%GPR15,$65280	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR15,%GPR15,$-16777216	
	sw	-68(%GPR30),%GPR5	
	lhi	%GPR5,$65280	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$-16777216	
	lw	%GPR22,0(%GPR17)	
	lhi	%GPR6,$255	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$16711680	
	sw	-72(%GPR30),%GPR10	
	sw	-76(%GPR30),%GPR5	
	lhi	%GPR5,$255	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$16711680	
	lw	%GPR24,0(%GPR13)	
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$4	
	lhi	%GPR10,$255	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR10,%GPR10,$16711680	
	and	%GPR5,%GPR3,%GPR5	
	lhi	%GPR7,$65280	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$-16777216	
	lw	%GPR3,-4(%GPR30)	
	NOP		;;108,110
	NOP		;;108,110
	sw	-80(%GPR30),%GPR19	
	and	%GPR19,%GPR2,%GPR15	
	NOP		;;111,113
	NOP		;;111,113
	lw	%GPR20,0(%GPR17)	
	and	%GPR2,%GPR22,%GPR6	
	add	%GPR17,%GPR17,%GPR9	
	and	%GPR6,%GPR24,%GPR10	
	and	%GPR10,%GPR3,%GPR7	
	lhi	%GPR12,$65280	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR12,%GPR12,$-16777216	
	lhi	%GPR8,$65280	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR8,%GPR8,$-16777216	
	lw	%GPR3,-72(%GPR30)	
	NOP		;;120,122
	NOP		;;120,122
	lw	%GPR16,0(%GPR17)	
	and	%GPR21,%GPR20,%GPR12	
	lw	%GPR23,0(%GPR13)	
	and	%GPR12,%GPR3,%GPR8	
	lhi	%GPR14,$65280	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR14,%GPR14,$-16777216	
	lw	%GPR9,0(%GPR17)	
	lw	%GPR3,-68(%GPR30)	
	sw	-84(%GPR30),%GPR16	
	and	%GPR20,%GPR23,%GPR14	
	lw	%GPR7,-56(%GPR30)	
	and	%GPR14,%GPR9,%GPR3	
	lw	%GPR3,-84(%GPR30)	
	add	%GPR13,%GPR13,%GPR11	
	NOP		;;134,137
	NOP		;;134,137
	NOP		;;134,137
	and	%GPR8,%GPR3,%GPR7	
	lw	%GPR11,0(%GPR13)	
	lw	%GPR3,-76(%GPR30)	
	lw	%GPR16,0(%GPR13)	
	lhi	%GPR28,$65280	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$-16777216	
	NOP		;;141,143
	NOP		;;141,143
	and	%GPR15,%GPR11,%GPR3	
	lw	%GPR3,-64(%GPR30)	
	and	%GPR18,%GPR18,%GPR28	
	NOP		;;145,148
	NOP		;;145,148
	NOP		;;145,148
	and	%GPR9,%GPR16,%GPR3	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$24	
	lw	%GPR16,-80(%GPR30)	
	lhi	%GPR25,$255	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR25,%GPR25,$16711680	
	NOP		;;151,153
	NOP		;;151,153
	srl	%GPR11,%GPR18,%GPR3	
	lhi	%GPR18,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR18,%GPR18,$16	
	and	%GPR1,%GPR1,%GPR25	
	srl	%GPR7,%GPR19,%GPR3	
	srl	%GPR24,%GPR12,%GPR3	
	sra	%GPR26,%GPR16,%GPR18	
	lw	%GPR16,-60(%GPR30)	
	sra	%GPR19,%GPR2,%GPR18	
	srl	%GPR25,%GPR10,%GPR3	
	srl	%GPR2,%GPR15,%GPR3	
	sra	%GPR27,%GPR16,%GPR18	
	sra	%GPR16,%GPR6,%GPR18	
	sra	%GPR6,%GPR1,%GPR18	
	lw	%GPR1,-24(%GPR30)	
	srl	%GPR20,%GPR20,%GPR3	
	srl	%GPR21,%GPR21,%GPR3	
	srl	%GPR3,%GPR14,%GPR3	
	lw	%GPR12,-48(%GPR30)	
	andi	%GPR14,%GPR1,$65280	
	lw	%GPR1,-32(%GPR30)	
	sra	%GPR10,%GPR8,%GPR18	
	andi	%GPR15,%GPR12,$65280	
	subu	%GPR12,%GPR7,%GPR11	
	subu	%GPR7,%GPR20,%GPR21	
	andi	%GPR8,%GPR1,$65280	
	lw	%GPR23,0(%GPR13)	
	lw	%GPR20,0(%GPR13)	
	lw	%GPR1,-40(%GPR30)	
	NOP		;;180,182
	NOP		;;180,182
	lw	%GPR13,-16(%GPR30)	
	sub	%GPR16,%GPR16,%GPR19	
	andi	%GPR1,%GPR1,$65280	
	lhi	%GPR19,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR19,%GPR19,$8	
	andi	%GPR13,%GPR13,$65280	
	sub	%GPR11,%GPR26,%GPR27	
	sra	%GPR5,%GPR5,%GPR18	
	sra	%GPR26,%GPR1,%GPR19	
	lw	%GPR1,-8(%GPR30)	
	sw	-88(%GPR30),%GPR13	
	sra	%GPR9,%GPR9,%GPR18	
	subu	%GPR2,%GPR2,%GPR3	
	lw	%GPR13,-20(%GPR30)	
	lw	%GPR22,0(%GPR17)	
	sub	%GPR3,%GPR5,%GPR6	
	subu	%GPR24,%GPR24,%GPR25	
	sra	%GPR25,%GPR15,%GPR19	
	lw	%GPR5,-28(%GPR30)	
	andi	%GPR15,%GPR1,$255	
	sub	%GPR9,%GPR9,%GPR10	
	andi	%GPR21,%GPR13,$65280	
	lw	%GPR1,-12(%GPR30)	
	sll	%GPR10,%GPR12,%GPR18	
	andi	%GPR13,%GPR22,$65280	
	andi	%GPR12,%GPR11,$65535	
	andi	%GPR22,%GPR5,$255	
	andi	%GPR11,%GPR16,$65535	
	lw	%GPR5,-36(%GPR30)	
	andi	%GPR16,%GPR1,$255	
	sll	%GPR1,%GPR24,%GPR18	
	add	%GPR27,%GPR13,%GPR0	
	andi	%GPR13,%GPR23,$65280	
	lw	%GPR24,-88(%GPR30)	
	andi	%GPR23,%GPR5,$255	
	lw	%GPR6,-52(%GPR30)	
	lw	%GPR5,-44(%GPR30)	
	NOP		;;217,219
	NOP		;;217,219
	sra	%GPR8,%GPR8,%GPR19	
	sra	%GPR14,%GPR14,%GPR19	
	sra	%GPR21,%GPR21,%GPR19	
	sra	%GPR13,%GPR13,%GPR19	
	sra	%GPR24,%GPR24,%GPR19	
	sra	%GPR19,%GPR27,%GPR19	
	andi	%GPR6,%GPR6,$255	
	andi	%GPR5,%GPR5,$255	
	lhi	%GPR27,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR27,%GPR27,$2	
	NOP		;;227,229
	NOP		;;227,229
	sub	%GPR22,%GPR23,%GPR22	
	sub	%GPR23,%GPR6,%GPR5	
	sw	-92(%GPR30),%GPR27	
	or	%GPR5,%GPR10,%GPR12	
	lhi	%GPR27,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR27,%GPR27,$-65536	
	sll	%GPR2,%GPR2,%GPR18	
	andi	%GPR9,%GPR9,$65535	
	NOP		;;235,237
	NOP		;;235,237
	sub	%GPR6,%GPR8,%GPR14	
	andi	%GPR10,%GPR5,$65535	
	sw	-96(%GPR30),%GPR27	
	or	%GPR9,%GPR2,%GPR9	
	lhi	%GPR27,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR27,%GPR27,$-65536	
	andi	%GPR2,%GPR23,$65535	
	sll	%GPR23,%GPR6,%GPR18	
	sll	%GPR7,%GPR7,%GPR18	
	slli	%GPR6,%GPR10,$16	
	add	%GPR10,%GPR27,%GPR0	
	NOP		;;246,248
	NOP		;;246,248
	lw	%GPR17,0(%GPR17)	
	or	%GPR7,%GPR7,%GPR11	
	fex	%GPR5,%GPR5,%GPR10,$16	
	andi	%GPR3,%GPR3,$65535	
	lhi	%GPR11,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR11,%GPR11,$2	
	andi	%GPR20,%GPR20,$255	
	andi	%GPR17,%GPR17,$255	
	lw	%GPR10,-96(%GPR30)	
	NOP		;;255,258
	NOP		;;255,258
	NOP		;;255,258
	sub	%GPR8,%GPR25,%GPR26	
	or	%GPR3,%GPR1,%GPR3	
	sub	%GPR15,%GPR16,%GPR15	
	andi	%GPR14,%GPR7,$65535	
	sw	-100(%GPR30),%GPR11	
	fex	%GPR7,%GPR7,%GPR10,$16	
	sub	%GPR16,%GPR20,%GPR17	
	lhi	%GPR12,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR12,%GPR12,$-65536	
	lhi	%GPR11,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR11,%GPR11,$-65536	
	sub	%GPR17,%GPR21,%GPR24	
	sll	%GPR24,%GPR8,%GPR18	
	andi	%GPR20,%GPR9,$65535	
	andi	%GPR21,%GPR3,$65535	
	slli	%GPR8,%GPR14,$16	
	sub	%GPR10,%GPR5,%GPR7	
	fex	%GPR9,%GPR9,%GPR11,$16	
	fex	%GPR3,%GPR3,%GPR12,$16	
	lw	%GPR14,-92(%GPR30)	
	lw	%GPR12,-100(%GPR30)	
	NOP		;;276,278
	NOP		;;276,278
	sub	%GPR11,%GPR3,%GPR9	
	mult	%GPR26,%GPR10,%GPR14	
	srai	%GPR6,%GPR6,$16	
	srai	%GPR8,%GPR8,$16	
	NOP		;;281,283
	NOP		;;281,283
	mac	%GPR10,%GPR11,%GPR12	
	sub	%GPR19,%GPR13,%GPR19	
	sll	%GPR17,%GPR17,%GPR18	
	lhi	%GPR13,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR13,%GPR13,$2	
	add	%GPR12,%GPR10,%GPR0	
	lhi	%GPR10,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR10,%GPR10,$2	
	sll	%GPR18,%GPR19,%GPR18	
	NOP		;;289,291
	NOP		;;289,291
	slli	%GPR19,%GPR21,$16	
	sw	-104(%GPR30),%GPR10	
	sub	%GPR10,%GPR6,%GPR8	
	slli	%GPR20,%GPR20,$16	
	srai	%GPR19,%GPR19,$16	
	andi	%GPR1,%GPR22,$65535	
	mult	%GPR25,%GPR10,%GPR13	
	srai	%GPR20,%GPR20,$16	
	NOP		;;298,301
	NOP		;;298,301
	NOP		;;298,301
	sub	%GPR13,%GPR11,%GPR26	
	lhi	%GPR11,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR11,%GPR11,$2	
	NOP		;;302,304
	NOP		;;302,304
	or	%GPR2,%GPR24,%GPR2	
	or	%GPR1,%GPR23,%GPR1	
	sw	-108(%GPR30),%GPR11	
	sub	%GPR11,%GPR19,%GPR20	
	andi	%GPR15,%GPR15,$65535	
	andi	%GPR16,%GPR16,$65535	
	lhi	%GPR14,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR14,%GPR14,$2	
	lhi	%GPR22,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR22,%GPR22,$-65536	
	lhi	%GPR21,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR21,%GPR21,$-65536	
	NOP		;;312,315
	NOP		;;312,315
	NOP		;;312,315
	or	%GPR15,%GPR17,%GPR15	
	or	%GPR16,%GPR18,%GPR16	
	mac	%GPR10,%GPR11,%GPR14	
	andi	%GPR24,%GPR2,$65535	
	andi	%GPR23,%GPR1,$65535	
	fex	%GPR2,%GPR2,%GPR21,$16	
	fex	%GPR1,%GPR1,%GPR22,$16	
	lhi	%GPR27,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR27,%GPR27,$-65536	
	lhi	%GPR26,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR26,%GPR26,$-65536	
	add	%GPR5,%GPR5,%GPR7	
	add	%GPR3,%GPR3,%GPR9	
	add	%GPR14,%GPR10,%GPR0	
	andi	%GPR17,%GPR15,$65535	
	andi	%GPR18,%GPR16,$65535	
	sub	%GPR10,%GPR1,%GPR2	
	fex	%GPR15,%GPR15,%GPR27,$16	
	fex	%GPR16,%GPR16,%GPR26,$16	
	lw	%GPR21,-104(%GPR30)	
	add	%GPR7,%GPR3,%GPR5	
	sub	%GPR9,%GPR3,%GPR5	
	sub	%GPR22,%GPR11,%GPR25	
	mult	%GPR21,%GPR10,%GPR21	
	sub	%GPR11,%GPR15,%GPR16	
	add	%GPR5,%GPR6,%GPR8	
	add	%GPR3,%GPR19,%GPR20	
	lw	%GPR26,-108(%GPR30)	
	slli	%GPR24,%GPR24,$16	
	slli	%GPR23,%GPR23,$16	
	slli	%GPR17,%GPR17,$16	
	slli	%GPR18,%GPR18,$16	
	add	%GPR6,%GPR3,%GPR5	
	sub	%GPR8,%GPR3,%GPR5	
	mac	%GPR10,%GPR11,%GPR26	
	sub	%GPR19,%GPR11,%GPR21	
	add	%GPR5,%GPR1,%GPR2	
	add	%GPR3,%GPR15,%GPR16	
	srai	%GPR11,%GPR17,$16	
	srai	%GPR23,%GPR23,$16	
	srai	%GPR24,%GPR24,$16	
	NOP		;;353,355
	NOP		;;353,355
	srai	%GPR17,%GPR18,$16	
	add	%GPR26,%GPR10,%GPR0	
	sub	%GPR10,%GPR23,%GPR24	
	sub	%GPR1,%GPR3,%GPR5	
	add	%GPR15,%GPR3,%GPR5	
	lhi	%GPR28,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR28,%GPR28,$2	
	NOP		;;360,362
	NOP		;;360,362
	add	%GPR3,%GPR11,%GPR17	
	add	%GPR5,%GPR23,%GPR24	
	mult	%GPR28,%GPR10,%GPR28	
	sub	%GPR11,%GPR11,%GPR17	
	lhi	%GPR25,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR25,%GPR25,$2	
	add	%GPR16,%GPR3,%GPR5	
	sub	%GPR2,%GPR3,%GPR5	
	add	%GPR5,%GPR6,%GPR15	
	mac	%GPR10,%GPR11,%GPR25	
	add	%GPR3,%GPR7,%GPR16	
	NOP		;;371,374
	NOP		;;371,374
	NOP		;;371,374
	add	%GPR17,%GPR10,%GPR0	
	add	%GPR10,%GPR3,%GPR5	
	lhi	%GPR27,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR27,%GPR27,$2	
	lhi	%GPR18,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR18,%GPR18,$2	
	NOP		;;377,379
	NOP		;;377,379
	andi	%GPR20,%GPR10,$65535	
	sub	%GPR10,%GPR6,%GPR15	
	sub	%GPR6,%GPR11,%GPR28	
	sub	%GPR11,%GPR7,%GPR16	
	slli	%GPR20,%GPR20,$16	
	mult	%GPR21,%GPR10,%GPR27	
	sub	%GPR3,%GPR3,%GPR5	
	NOP		;;385,388
	NOP		;;385,388
	NOP		;;385,388
	mac	%GPR10,%GPR11,%GPR18	
	sub	%GPR7,%GPR11,%GPR21	
	lhi	%GPR11,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR11,%GPR11,$4	
	lhi	%GPR15,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR15,%GPR15,$2	
	andi	%GPR10,%GPR10,$65535	
	andi	%GPR18,%GPR7,$65535	
	add	%GPR5,%GPR14,%GPR26	
	add	%GPR21,%GPR4,%GPR11	
	slli	%GPR16,%GPR10,$16	
	or	%GPR18,%GPR20,%GPR18	
	sub	%GPR10,%GPR14,%GPR26	
	andi	%GPR20,%GPR3,$65535	
	add	%GPR3,%GPR12,%GPR17	
	sub	%GPR11,%GPR12,%GPR17	
	mult	%GPR15,%GPR10,%GPR15	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$2	
	add	%GPR14,%GPR3,%GPR5	
	NOP		;;404,406
	NOP		;;404,406
	sw	0(%GPR4),%GPR18	
	mac	%GPR10,%GPR11,%GPR7	
	sub	%GPR7,%GPR11,%GPR15	
	andi	%GPR23,%GPR14,$65535	
	or	%GPR16,%GPR16,%GPR20	
	lhi	%GPR18,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR18,%GPR18,$8	
	andi	%GPR17,%GPR7,$65535	
	slli	%GPR20,%GPR23,$16	
	andi	%GPR10,%GPR10,$65535	
	NOP		;;414,416
	NOP		;;414,416
	sub	%GPR3,%GPR3,%GPR5	
	sw	0(%GPR21),%GPR16	
	NOP		;;417,419
	NOP		;;417,419
	add	%GPR12,%GPR4,%GPR18	
	or	%GPR16,%GPR20,%GPR17	
	slli	%GPR15,%GPR10,$16	
	lhi	%GPR11,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR11,%GPR11,$12	
	sub	%GPR10,%GPR8,%GPR1	
	lhi	%GPR14,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR14,%GPR14,$2	
	NOP		;;424,426
	NOP		;;424,426
	andi	%GPR17,%GPR3,$65535	
	add	%GPR3,%GPR9,%GPR2	
	add	%GPR5,%GPR8,%GPR1	
	sw	0(%GPR12),%GPR16	
	add	%GPR12,%GPR4,%GPR11	
	mult	%GPR14,%GPR10,%GPR14	
	sub	%GPR11,%GPR9,%GPR2	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$2	
	add	%GPR1,%GPR3,%GPR5	
	NOP		;;434,436
	NOP		;;434,436
	sub	%GPR2,%GPR11,%GPR14	
	mac	%GPR10,%GPR11,%GPR7	
	andi	%GPR18,%GPR1,$65535	
	or	%GPR15,%GPR15,%GPR17	
	sub	%GPR3,%GPR3,%GPR5	
	andi	%GPR9,%GPR10,$65535	
	andi	%GPR10,%GPR2,$65535	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$16	
	slli	%GPR16,%GPR18,$16	
	NOP		;;444,446
	NOP		;;444,446
	sw	0(%GPR12),%GPR15	
	andi	%GPR12,%GPR3,$65535	
	or	%GPR11,%GPR16,%GPR10	
	add	%GPR1,%GPR4,%GPR1	
	NOP		;;449,451
	NOP		;;449,451
	add	%GPR3,%GPR13,%GPR6	
	sub	%GPR10,%GPR22,%GPR19	
	add	%GPR5,%GPR22,%GPR19	
	lhi	%GPR8,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR8,%GPR8,$2	
	NOP		;;454,456
	NOP		;;454,456
	sw	0(%GPR1),%GPR11	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$20	
	NOP		;;457,459
	NOP		;;457,459
	mult	%GPR8,%GPR10,%GPR8	
	add	%GPR14,%GPR3,%GPR5	
	sub	%GPR11,%GPR13,%GPR6	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$2	
	slli	%GPR9,%GPR9,$16	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$24	
	add	%GPR15,%GPR4,%GPR2	
	sub	%GPR2,%GPR11,%GPR8	
	mac	%GPR10,%GPR11,%GPR7	
	andi	%GPR14,%GPR14,$65535	
	or	%GPR9,%GPR9,%GPR12	
	add	%GPR8,%GPR4,%GPR1	
	sub	%GPR1,%GPR3,%GPR5	
	andi	%GPR2,%GPR2,$65535	
	andi	%GPR6,%GPR10,$65535	
	NOP		;;473,475
	NOP		;;473,475
	slli	%GPR12,%GPR14,$16	
	sw	0(%GPR15),%GPR9	
	andi	%GPR1,%GPR1,$65535	
	slli	%GPR6,%GPR6,$16	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$28	
	or	%GPR2,%GPR12,%GPR2	
	NOP		;;480,482
	NOP		;;480,482
	or	%GPR1,%GPR6,%GPR1	
	add	%GPR3,%GPR4,%GPR7	
	sw	0(%GPR8),%GPR2	
	NOP		;;484,488
	NOP		;;484,488
	NOP		;;484,488
	NOP		;;484,488
	sw	0(%GPR3),%GPR1	
	NOP		
	NOP		
	NOP		
L56:
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
main:
L57:
	NOP		
	NOP		
	NOP		
	NOP		
	sw	-4(%GPR29),%GPR30	
	sw	0(%GPR29),%GPR31	
	subui	%GPR30,%GPR29,$4	
	NOP		
	subi	%GPR29,%GPR29,$1512	
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		
	NOP		;;1,6
	NOP		;;1,6
	NOP		;;1,6
	NOP		;;1,6
	NOP		;;1,6
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$16	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	NOP		;;7,11
	div	%GPR2,%GPR1,%GPR2	
	NOP		;;11,15
	NOP		;;11,15
	NOP		;;11,15
	NOP		;;11,15
	sw	-1464(%GPR30),%GPR2	
	subi	%GPR2,%GPR30,$1460	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sw	-1468(%GPR30),%GPR2	
	subi	%GPR2,%GPR30,$1428	
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	NOP		;;21,25
	sw	-1472(%GPR30),%GPR2	
	subi	%GPR2,%GPR30,$1428	
	NOP		;;26,30
	NOP		;;26,30
	NOP		;;26,30
	NOP		;;26,30
	sw	-1476(%GPR30),%GPR2	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		;;31,35
	NOP		;;31,35
	NOP		;;31,35
	NOP		;;31,35
	sw	-1480(%GPR30),%GPR2	
	lhi	%GPR2,$65535	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$-1	
	NOP		;;36,40
	NOP		;;36,40
	NOP		;;36,40
	NOP		;;36,40
	sw	-1484(%GPR30),%GPR2	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		;;41,45
	NOP		;;41,45
	NOP		;;41,45
	NOP		;;41,45
	sw	-1488(%GPR30),%GPR2	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		;;46,50
	NOP		;;46,50
	NOP		;;46,50
	NOP		;;46,50
	sw	-1492(%GPR30),%GPR2	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		;;51,55
	NOP		;;51,55
	NOP		;;51,55
	NOP		;;51,55
	sw	-1496(%GPR30),%GPR2	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$0	
	NOP		;;56,60
	NOP		;;56,60
	NOP		;;56,60
	NOP		;;56,60
	sw	-1500(%GPR30),%GPR2	
	NOP		
	NOP		
	NOP		
L58:
	lw	%GPR6,-1480(%GPR30)	
	subi	%GPR2,%GPR30,$1428	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$4	
	NOP		;;4,7
	NOP		;;4,7
	NOP		;;4,7
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	mult	%GPR3,%GPR6,%GPR3	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$128	
	NOP		;;9,12
	NOP		;;9,12
	NOP		;;9,12
	add	%GPR2,%GPR2,%GPR3	
	add	%GPR3,%GPR6,%GPR0	
	NOP		;;13,16
	NOP		;;13,16
	NOP		;;13,16
	sw	0(%GPR2),%GPR4	
	addi	%GPR3,%GPR3,$1	
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	add	%GPR2,%GPR3,%GPR0	
	sw	-1480(%GPR30),%GPR3	
	NOP		;;22,25
	NOP		;;22,25
	NOP		;;22,25
	slt	%GPR27,%GPR2,%GPR5	
	bnez	%GPR27,L58	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L59	
	NOP		
	NOP		
	NOP		
	NOP		
L59:
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
	sw	-1480(%GPR30),%GPR2	
	NOP		
	NOP		
	NOP		
L60:
	lw	%GPR6,-1480(%GPR30)	
	subi	%GPR2,%GPR30,$1460	
	NOP		;;2,4
	NOP		;;2,4
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$4	
	NOP		;;4,7
	NOP		;;4,7
	NOP		;;4,7
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$0	
	mult	%GPR3,%GPR6,%GPR3	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$8	
	NOP		;;9,12
	NOP		;;9,12
	NOP		;;9,12
	add	%GPR2,%GPR2,%GPR3	
	add	%GPR3,%GPR6,%GPR0	
	NOP		;;13,16
	NOP		;;13,16
	NOP		;;13,16
	sw	0(%GPR2),%GPR4	
	addi	%GPR3,%GPR3,$1	
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	NOP		;;17,21
	add	%GPR2,%GPR3,%GPR0	
	sw	-1480(%GPR30),%GPR3	
	NOP		;;22,25
	NOP		;;22,25
	NOP		;;22,25
	slt	%GPR27,%GPR2,%GPR5	
	bnez	%GPR27,L60	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L61	
	NOP		
	NOP		
	NOP		
	NOP		
L61:
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
	sw	-1480(%GPR30),%GPR2	
	NOP		
	NOP		
	NOP		
L62:
	lw	%GPR3,-1480(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	NOP		;;4,6
	NOP		;;4,6
	add	%GPR7,%GPR3,%GPR0	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$1	
	mult	%GPR2,%GPR3,%GPR2	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$4	
	NOP		;;9,12
	NOP		;;9,12
	NOP		;;9,12
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$4	
	NOP		;;12,14
	NOP		;;12,14
	mac	%GPR4,%GPR7,%GPR5	
	add	%GPR9,%GPR7,%GPR0	
	lhi	%GPR8,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR8,%GPR8,$4	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$2	
	mult	%GPR2,%GPR2,%GPR3	
	subi	%GPR6,%GPR30,$404	
	NOP		;;19,21
	NOP		;;19,21
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$4	
	NOP		;;21,23
	NOP		;;21,23
	mac	%GPR7,%GPR9,%GPR8	
	add	%GPR2,%GPR6,%GPR2	
	lhi	%GPR8,$514	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR8,%GPR8,$33686276	
	mult	%GPR4,%GPR4,%GPR5	
	subi	%GPR3,%GPR30,$404	
	NOP		;;27,31
	NOP		;;27,31
	NOP		;;27,31
	NOP		;;27,31
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$4	
	sw	0(%GPR2),%GPR8	
	add	%GPR3,%GPR3,%GPR4	
	lhi	%GPR2,$1286	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$84281096	
	lw	%GPR6,-1480(%GPR30)	
	subi	%GPR5,%GPR30,$404	
	lhi	%GPR10,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR10,%GPR10,$3	
	mult	%GPR7,%GPR7,%GPR9	
	NOP		;;38,40
	NOP		;;38,40
	lhi	%GPR11,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR11,%GPR11,$4	
	NOP		;;40,42
	NOP		;;40,42
	sw	0(%GPR3),%GPR2	
	lhi	%GPR2,$2314	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$151653132	
	add	%GPR5,%GPR5,%GPR7	
	mac	%GPR10,%GPR6,%GPR11	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$4	
	NOP		;;46,48
	NOP		;;46,48
	sw	0(%GPR5),%GPR2	
	lw	%GPR2,-1480(%GPR30)	
	mult	%GPR3,%GPR10,%GPR6	
	NOP		;;50,52
	NOP		;;50,52
	subi	%GPR4,%GPR30,$404	
	addi	%GPR2,%GPR2,$1	
	lhi	%GPR6,$3342	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$219025152	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$16	
	add	%GPR3,%GPR4,%GPR3	
	sw	-1480(%GPR30),%GPR2	
	NOP		;;57,60
	NOP		;;57,60
	NOP		;;57,60
	sw	0(%GPR3),%GPR6	
	slt	%GPR27,%GPR2,%GPR7	
	bnez	%GPR27,L62	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L63	
	NOP		
	NOP		
	NOP		
	NOP		
L63:
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
	sw	-1480(%GPR30),%GPR2	
	NOP		
	NOP		
	NOP		
L64:
	lw	%GPR3,-1480(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	NOP		;;4,6
	NOP		;;4,6
	add	%GPR7,%GPR3,%GPR0	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$1	
	mult	%GPR2,%GPR3,%GPR2	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$4	
	NOP		;;9,12
	NOP		;;9,12
	NOP		;;9,12
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$4	
	NOP		;;12,14
	NOP		;;12,14
	mac	%GPR4,%GPR7,%GPR5	
	add	%GPR9,%GPR7,%GPR0	
	lhi	%GPR8,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR8,%GPR8,$4	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$2	
	mult	%GPR2,%GPR2,%GPR3	
	subi	%GPR6,%GPR30,$660	
	NOP		;;19,21
	NOP		;;19,21
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$4	
	NOP		;;21,23
	NOP		;;21,23
	mac	%GPR7,%GPR9,%GPR8	
	add	%GPR2,%GPR6,%GPR2	
	lhi	%GPR8,$2319	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR8,%GPR8,$151980553	
	mult	%GPR4,%GPR4,%GPR5	
	subi	%GPR3,%GPR30,$660	
	NOP		;;27,31
	NOP		;;27,31
	NOP		;;27,31
	NOP		;;27,31
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$4	
	sw	0(%GPR2),%GPR8	
	add	%GPR3,%GPR3,%GPR4	
	lhi	%GPR2,$1804	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$118227712	
	lw	%GPR6,-1480(%GPR30)	
	subi	%GPR5,%GPR30,$660	
	lhi	%GPR10,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR10,%GPR10,$3	
	mult	%GPR7,%GPR7,%GPR9	
	NOP		;;38,40
	NOP		;;38,40
	lhi	%GPR11,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR11,%GPR11,$4	
	NOP		;;40,42
	NOP		;;40,42
	sw	0(%GPR3),%GPR2	
	lhi	%GPR2,$1032	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$67636481	
	add	%GPR5,%GPR5,%GPR7	
	mac	%GPR10,%GPR6,%GPR11	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$4	
	NOP		;;46,48
	NOP		;;46,48
	sw	0(%GPR5),%GPR2	
	lw	%GPR2,-1480(%GPR30)	
	mult	%GPR3,%GPR10,%GPR6	
	NOP		;;50,52
	NOP		;;50,52
	subi	%GPR4,%GPR30,$660	
	addi	%GPR2,%GPR2,$1	
	lhi	%GPR6,$1550	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$101583621	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$16	
	add	%GPR3,%GPR4,%GPR3	
	sw	-1480(%GPR30),%GPR2	
	NOP		;;57,60
	NOP		;;57,60
	NOP		;;57,60
	sw	0(%GPR3),%GPR6	
	slt	%GPR27,%GPR2,%GPR7	
	bnez	%GPR27,L64	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L65	
	NOP		
	NOP		
	NOP		
	NOP		
L65:
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
	sw	-1480(%GPR30),%GPR2	
	NOP		
	NOP		
	NOP		
L66:
	lw	%GPR3,-1480(%GPR30)	
	NOP		;;1,4
	NOP		;;1,4
	NOP		;;1,4
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	NOP		;;4,6
	NOP		;;4,6
	add	%GPR7,%GPR3,%GPR0	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$1	
	mult	%GPR2,%GPR3,%GPR2	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$4	
	NOP		;;9,12
	NOP		;;9,12
	NOP		;;9,12
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$4	
	NOP		;;12,14
	NOP		;;12,14
	mac	%GPR4,%GPR7,%GPR5	
	add	%GPR9,%GPR7,%GPR0	
	lhi	%GPR8,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR8,%GPR8,$4	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$2	
	mult	%GPR2,%GPR2,%GPR3	
	subi	%GPR6,%GPR30,$916	
	NOP		;;19,21
	NOP		;;19,21
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$4	
	NOP		;;21,23
	NOP		;;21,23
	mac	%GPR7,%GPR9,%GPR8	
	add	%GPR2,%GPR6,%GPR2	
	lhi	%GPR8,$2319	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR8,%GPR8,$151980553	
	mult	%GPR4,%GPR4,%GPR5	
	subi	%GPR3,%GPR30,$916	
	NOP		;;27,31
	NOP		;;27,31
	NOP		;;27,31
	NOP		;;27,31
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$4	
	sw	0(%GPR2),%GPR8	
	add	%GPR3,%GPR3,%GPR4	
	lhi	%GPR2,$1804	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$118227712	
	lw	%GPR6,-1480(%GPR30)	
	subi	%GPR5,%GPR30,$916	
	lhi	%GPR10,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR10,%GPR10,$3	
	mult	%GPR7,%GPR7,%GPR9	
	NOP		;;38,40
	NOP		;;38,40
	lhi	%GPR11,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR11,%GPR11,$4	
	NOP		;;40,42
	NOP		;;40,42
	sw	0(%GPR3),%GPR2	
	lhi	%GPR2,$1032	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$67636481	
	add	%GPR5,%GPR5,%GPR7	
	mac	%GPR10,%GPR6,%GPR11	
	lhi	%GPR6,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$4	
	NOP		;;46,48
	NOP		;;46,48
	sw	0(%GPR5),%GPR2	
	lw	%GPR2,-1480(%GPR30)	
	mult	%GPR3,%GPR10,%GPR6	
	NOP		;;50,52
	NOP		;;50,52
	subi	%GPR4,%GPR30,$916	
	addi	%GPR2,%GPR2,$1	
	lhi	%GPR6,$1550	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR6,%GPR6,$101583621	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$16	
	add	%GPR3,%GPR4,%GPR3	
	sw	-1480(%GPR30),%GPR2	
	NOP		;;57,60
	NOP		;;57,60
	NOP		;;57,60
	sw	0(%GPR3),%GPR6	
	slt	%GPR27,%GPR2,%GPR7	
	bnez	%GPR27,L66	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L67	
	NOP		
	NOP		
	NOP		
	NOP		
L67:
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
	sw	-1480(%GPR30),%GPR2	
	NOP		
	NOP		
	NOP		
L68:
	lw	%GPR3,-1480(%GPR30)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	add	%GPR4,%GPR3,%GPR0	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	NOP		;;5,7
	NOP		;;5,7
	lhi	%GPR8,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR8,%GPR8,$4	
	add	%GPR9,%GPR4,%GPR0	
	mult	%GPR2,%GPR4,%GPR2	
	NOP		;;9,11
	NOP		;;9,11
	lhi	%GPR10,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR10,%GPR10,$4	
	NOP		;;11,13
	NOP		;;11,13
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$1	
	NOP		;;13,15
	NOP		;;13,15
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$1	
	mult	%GPR16,%GPR2,%GPR10	
	mac	%GPR4,%GPR9,%GPR8	
	add	%GPR8,%GPR9,%GPR0	
	lhi	%GPR14,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR14,%GPR14,$4	
	NOP		;;19,23
	NOP		;;19,23
	NOP		;;19,23
	NOP		;;19,23
	mult	%GPR3,%GPR3,%GPR1	
	lhi	%GPR11,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR11,%GPR11,$4	
	NOP		;;24,26
	NOP		;;24,26
	mac	%GPR5,%GPR8,%GPR1	
	lw	%GPR2,-1480(%GPR30)	
	mult	%GPR4,%GPR4,%GPR14	
	subi	%GPR6,%GPR30,$148	
	lhi	%GPR12,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR12,%GPR12,$4	
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$2	
	lhi	%GPR8,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR8,%GPR8,$2	
	mult	%GPR17,%GPR3,%GPR11	
	subi	%GPR7,%GPR30,$660	
	subi	%GPR10,%GPR30,$148	
	lhi	%GPR15,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR15,%GPR15,$4	
	NOP		;;36,42
	NOP		;;36,42
	NOP		;;36,42
	NOP		;;36,42
	NOP		;;36,42
	NOP		;;36,42
	add	%GPR14,%GPR6,%GPR16	
	mac	%GPR8,%GPR2,%GPR12	
	mac	%GPR9,%GPR2,%GPR1	
	lw	%GPR6,-1480(%GPR30)	
	mult	%GPR5,%GPR5,%GPR15	
	add	%GPR7,%GPR7,%GPR17	
	add	%GPR4,%GPR10,%GPR4	
	subi	%GPR11,%GPR30,$660	
	lhi	%GPR18,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR18,%GPR18,$4	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$3	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$3	
	lw	%GPR10,-1480(%GPR30)	
	lhi	%GPR13,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR13,%GPR13,$4	
	lhi	%GPR12,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR12,%GPR12,$4	
	NOP		;;55,57
	NOP		;;55,57
	sw	0(%GPR14),%GPR7	
	NOP		;;57,59
	NOP		;;57,59
	mac	%GPR2,%GPR6,%GPR18	
	add	%GPR5,%GPR11,%GPR5	
	mac	%GPR3,%GPR6,%GPR1	
	NOP		;;61,63
	NOP		;;61,63
	mult	%GPR9,%GPR9,%GPR13	
	mult	%GPR8,%GPR8,%GPR12	
	add	%GPR11,%GPR10,%GPR0	
	lhi	%GPR16,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR16,%GPR16,$4	
	subi	%GPR7,%GPR30,$660	
	subi	%GPR6,%GPR30,$148	
	NOP		;;68,71
	NOP		;;68,71
	NOP		;;68,71
	lhi	%GPR14,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR14,%GPR14,$4	
	sw	0(%GPR4),%GPR5	
	lhi	%GPR15,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR15,%GPR15,$4	
	NOP		;;73,75
	NOP		;;73,75
	mult	%GPR11,%GPR11,%GPR16	
	add	%GPR7,%GPR7,%GPR9	
	add	%GPR8,%GPR6,%GPR8	
	NOP		;;77,80
	NOP		;;77,80
	NOP		;;77,80
	lw	%GPR6,-1480(%GPR30)	
	lhi	%GPR18,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR18,%GPR18,$4	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$1	
	NOP		;;82,84
	NOP		;;82,84
	mult	%GPR2,%GPR2,%GPR14	
	subi	%GPR12,%GPR30,$148	
	mult	%GPR3,%GPR3,%GPR15	
	subi	%GPR13,%GPR30,$660	
	lhi	%GPR5,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR5,%GPR5,$1	
	sw	0(%GPR8),%GPR7	
	NOP		;;89,93
	NOP		;;89,93
	NOP		;;89,93
	NOP		;;89,93
	mult	%GPR10,%GPR10,%GPR1	
	lhi	%GPR16,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR16,%GPR16,$4	
	lhi	%GPR17,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR17,%GPR17,$4	
	NOP		;;95,97
	NOP		;;95,97
	mac	%GPR4,%GPR6,%GPR18	
	lhi	%GPR8,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR8,%GPR8,$4	
	add	%GPR12,%GPR12,%GPR2	
	lw	%GPR2,-1480(%GPR30)	
	add	%GPR3,%GPR13,%GPR3	
	mac	%GPR5,%GPR6,%GPR1	
	lhi	%GPR14,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR14,%GPR14,$2	
	lhi	%GPR15,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR15,%GPR15,$2	
	lhi	%GPR18,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR18,%GPR18,$4	
	mult	%GPR11,%GPR11,%GPR16	
	mult	%GPR10,%GPR10,%GPR17	
	subi	%GPR7,%GPR30,$404	
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$4	
	subi	%GPR6,%GPR30,$84	
	mult	%GPR4,%GPR4,%GPR8	
	NOP		;;111,114
	NOP		;;111,114
	NOP		;;111,114
	sw	0(%GPR12),%GPR3	
	mac	%GPR14,%GPR2,%GPR18	
	mac	%GPR15,%GPR2,%GPR1	
	mult	%GPR5,%GPR5,%GPR9	
	add	%GPR7,%GPR7,%GPR10	
	add	%GPR6,%GPR6,%GPR11	
	subi	%GPR3,%GPR30,$404	
	subi	%GPR2,%GPR30,$84	
	NOP		;;121,123
	NOP		;;121,123
	lw	%GPR8,-1480(%GPR30)	
	lhi	%GPR16,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR16,%GPR16,$3	
	NOP		;;124,128
	NOP		;;124,128
	NOP		;;124,128
	NOP		;;124,128
	lhi	%GPR18,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR18,%GPR18,$4	
	sw	0(%GPR6),%GPR7	
	add	%GPR3,%GPR3,%GPR5	
	add	%GPR2,%GPR2,%GPR4	
	lhi	%GPR17,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR17,%GPR17,$3	
	lhi	%GPR7,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR7,%GPR7,$4	
	mac	%GPR16,%GPR8,%GPR18	
	NOP		;;134,136
	NOP		;;134,136
	lhi	%GPR12,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR12,%GPR12,$4	
	lhi	%GPR13,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR13,%GPR13,$4	
	sw	0(%GPR2),%GPR3	
	mac	%GPR17,%GPR8,%GPR1	
	mult	%GPR2,%GPR16,%GPR7	
	subi	%GPR6,%GPR30,$404	
	subi	%GPR4,%GPR30,$84	
	subi	%GPR8,%GPR30,$84	
	lhi	%GPR9,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR9,%GPR9,$4	
	mult	%GPR10,%GPR14,%GPR12	
	mult	%GPR11,%GPR15,%GPR13	
	add	%GPR2,%GPR4,%GPR2	
	mult	%GPR3,%GPR17,%GPR9	
	add	%GPR7,%GPR8,%GPR10	
	subi	%GPR5,%GPR30,$404	
	add	%GPR6,%GPR6,%GPR11	
	lw	%GPR4,-1480(%GPR30)	
	NOP		;;152,154
	NOP		;;152,154
	add	%GPR3,%GPR5,%GPR3	
	sw	0(%GPR7),%GPR6	
	addi	%GPR4,%GPR4,$1	
	lhi	%GPR8,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR8,%GPR8,$4	
	NOP		;;157,159
	NOP		;;157,159
	sw	0(%GPR2),%GPR3	
	add	%GPR2,%GPR4,%GPR0	
	sw	-1480(%GPR30),%GPR4	
	NOP		;;161,164
	NOP		;;161,164
	NOP		;;161,164
	slt	%GPR27,%GPR2,%GPR8	
	bnez	%GPR27,L68	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L69	
	NOP		
	NOP		
	NOP		
	NOP		
L69:
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
	sw	-1480(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
L70:
	lw	%GPR1,-1480(%GPR30)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	addi	%GPR1,%GPR1,$1	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	add	%GPR2,%GPR1,%GPR0	
	sw	-1480(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$16	
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	slt	%GPR27,%GPR2,%GPR1	
	bnez	%GPR27,L70	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L71	
	NOP		
	NOP		
	NOP		
	NOP		
L71:
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
	sw	-1504(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
L72:
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
	sw	-1480(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
L73:
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
		
 
	lhi	%GPR2, $0x100
	nop
	nop
	nop
	sw	0(%GPR2), %GPR1
	
	NOP		;;5,7
	NOP		;;5,7
	lw	%GPR5,-1504(%GPR30)	
	NOP		;;7,9
	NOP		;;7,9
	subi	%GPR2,%GPR30,$148	
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$4	
	subi	%GPR1,%GPR30,$84	
	lhi	%GPR4,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR4,%GPR4,$4	
	NOP		;;12,14
	NOP		;;12,14
	mult	%GPR3,%GPR5,%GPR3	
	NOP		;;14,18
	NOP		;;14,18
	NOP		;;14,18
	NOP		;;14,18
	lw	%GPR5,-1480(%GPR30)	
	add	%GPR1,%GPR1,%GPR3	
	NOP		;;19,22
	NOP		;;19,22
	NOP		;;19,22
	mult	%GPR4,%GPR5,%GPR4	
	lw	%GPR1,0(%GPR1)	
	NOP		;;23,26
	NOP		;;23,26
	NOP		;;23,26
	add	%GPR2,%GPR2,%GPR4	
	NOP		;;26,30
	NOP		;;26,30
	NOP		;;26,30
	NOP		;;26,30
	lw	%GPR3,0(%GPR2)	
	lw	%GPR2,-1464(%GPR30)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	SATD_4x4	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	add	%GPR1,%GPR28,%GPR0	
		

	lhi	%GPR2,$0x100
	nop
	nop
	nop
	lw	%GPR2, 0(%GPR2)
	nop
	nop
	nop
	
	lw	%GPR3,-1496(%GPR30)	
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	NOP		;;35,39
	add	%GPR2,%GPR3,%GPR2	
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	NOP		;;39,43
	sw	-1496(%GPR30),%GPR2	
	lw	%GPR2,-1484(%GPR30)	
	NOP		;;44,48
	NOP		;;44,48
	NOP		;;44,48
	NOP		;;44,48
	sltu	%GPR27,%GPR1,%GPR2	
	bnez	%GPR27,L74	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L75	
	NOP		
	NOP		
	NOP		
	NOP		
L74:
	lw	%GPR3,-1480(%GPR30)	
	sw	-1484(%GPR30),%GPR1	
	subi	%GPR1,%GPR30,$148	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	mult	%GPR2,%GPR3,%GPR2	
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	NOP		;;8,12
	add	%GPR1,%GPR1,%GPR2	
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	NOP		;;12,16
	lw	%GPR1,0(%GPR1)	
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	NOP		;;16,20
	sw	-1500(%GPR30),%GPR1	
	NOP		
	NOP		
	NOP		
L75:
	lw	%GPR1,-1480(%GPR30)	
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	NOP		;;0,4
	addi	%GPR1,%GPR1,$1	
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	NOP		;;4,8
	add	%GPR2,%GPR1,%GPR0	
	sw	-1480(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$16	
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	slt	%GPR27,%GPR2,%GPR1	
	bnez	%GPR27,L73	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L76	
	NOP		
	NOP		
	NOP		
	NOP		
L76:
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
		
 
	lhi	%GPR2, $0x100
	nop
	nop
	nop
	sw	0(%GPR2), %GPR1
	
	NOP		;;5,7
	NOP		;;5,7
	lw	%GPR3,-1504(%GPR30)	
	subi	%GPR1,%GPR30,$84	
	lw	%GPR4,-1476(%GPR30)	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$4	
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	NOP		;;10,14
	mult	%GPR2,%GPR3,%GPR2	
	NOP		;;14,18
	NOP		;;14,18
	NOP		;;14,18
	NOP		;;14,18
	add	%GPR1,%GPR1,%GPR2	
	lw	%GPR3,-1500(%GPR30)	
	lw	%GPR2,-1464(%GPR30)	
	NOP		;;20,22
	NOP		;;20,22
	lw	%GPR1,0(%GPR1)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	DCT_4x4	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
		

	lhi	%GPR1,$0x100
	nop
	nop
	nop
	lw	%GPR1, 0(%GPR1)
	nop
	nop
	nop
	
	lw	%GPR2,-1504(%GPR30)	
	NOP		;;25,27
	NOP		;;25,27
	lw	%GPR3,-1476(%GPR30)	
	NOP		;;27,29
	NOP		;;27,29
	addi	%GPR2,%GPR2,$1	
	NOP		;;29,33
	NOP		;;29,33
	NOP		;;29,33
	NOP		;;29,33
	sw	-1504(%GPR30),%GPR2	
	lw	%GPR2,-1492(%GPR30)	
	NOP		;;34,38
	NOP		;;34,38
	NOP		;;34,38
	NOP		;;34,38
	add	%GPR1,%GPR2,%GPR1	
	lhi	%GPR2,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR2,%GPR2,$32	
	NOP		;;39,42
	NOP		;;39,42
	NOP		;;39,42
	sw	-1492(%GPR30),%GPR1	
	add	%GPR2,%GPR3,%GPR2	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$16	
	NOP		;;44,47
	NOP		;;44,47
	NOP		;;44,47
	sw	-1476(%GPR30),%GPR2	
	lw	%GPR2,-1504(%GPR30)	
	NOP		;;48,52
	NOP		;;48,52
	NOP		;;48,52
	NOP		;;48,52
	slt	%GPR27,%GPR2,%GPR1	
	bnez	%GPR27,L72	
	NOP		
	NOP		
	NOP		
	NOP		
	j	L77	
	NOP		
	NOP		
	NOP		
	NOP		
L77:
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
		
 
	lhi	%GPR2, $0x100
	nop
	nop
	nop
	sw	0(%GPR2), %GPR1
	
	lw	%GPR1,-1472(%GPR30)	
	lw	%GPR2,-1468(%GPR30)	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	Hadamard_4x4_IntraLuma	
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
	NOP		
		

	lhi	%GPR1,$0x100
	nop
	nop
	nop
	lw	%GPR1, 0(%GPR1)
	nop
	nop
	nop
	
	lw	%GPR3,-1488(%GPR30)	
	NOP		;;10,12
	NOP		;;10,12
	lw	%GPR4,-1492(%GPR30)	
	NOP		;;12,14
	NOP		;;12,14
	add	%GPR1,%GPR3,%GPR1	
	subi	%GPR2,%GPR30,$20	
	NOP		;;15,17
	NOP		;;15,17
	lhi	%GPR3,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR3,%GPR3,$256	
	sw	-1488(%GPR30),%GPR1	
	lhi	%GPR1,$0	
	NOP		
	NOP		
	NOP		
	NOP		
	ori	%GPR1,%GPR1,$16	
	NOP		;;19,23
	NOP		;;19,23
	NOP		;;19,23
	NOP		;;19,23
	div	%GPR1,%GPR4,%GPR1	
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	NOP		;;23,27
	sw	-1492(%GPR30),%GPR1	
	lw	%GPR1,-1496(%GPR30)	
	NOP		;;28,32
	NOP		;;28,32
	NOP		;;28,32
	NOP		;;28,32
	div	%GPR1,%GPR1,%GPR3	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	intToStr	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR1,%GPR30,$20	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_print	
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
	NOP		;;36,41
	NOP		;;36,41
	NOP		;;36,41
	NOP		;;36,41
	NOP		;;36,41
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_print	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR1,-1492(%GPR30)	
	subi	%GPR2,%GPR30,$20	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	intToStr	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR1,%GPR30,$20	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_print	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *L2	
	NOP		;;47,52
	NOP		;;47,52
	NOP		;;47,52
	NOP		;;47,52
	NOP		;;47,52
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_print	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR1,-1488(%GPR30)	
	subi	%GPR2,%GPR30,$20	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	intToStr	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR1,%GPR30,$20	
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_print	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	LI	%GPR1, *L3	
	NOP		;;58,63
	NOP		;;58,63
	NOP		;;58,63
	NOP		;;58,63
	NOP		;;58,63
	NOP		
	NOP		
	NOP		
	NOP		
	subi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	jal	t_print	
	NOP		
	NOP		
	NOP		
	NOP		
	addi	%GPR29,%GPR29,$8	
	NOP		
	NOP		
	NOP		
	NOP		
	lw	%GPR28,-1468(%GPR30)	
	NOP		;;64,72
	NOP		;;64,72
	NOP		;;64,72
	NOP		;;64,72
	NOP		;;64,72
	NOP		;;64,72
	NOP		;;64,72
	NOP		;;64,72
	j	L78	
	NOP		
	NOP		
	NOP		
	NOP		
L78:
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
