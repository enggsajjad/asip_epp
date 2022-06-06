# !/bin/bash

echo "sed skript worked on generated meistercg files"

#ccmir.cgd
sed '/scheduler.cgd/a\
\$include \"sinas.cgd\"' ccmir.cgd > ccmir_tmp1.cgd 

echo "CCMIR1...done"

#IpGcgEmit_h - add #define Block
sed '/header.h/a\
\#define STATE engineStateGet\
\#define OUTFILE state->outfile\
\#define REGNAME\(x\) gcg_RegNameTable\[x\]' ccmir_tmp1.cgd > ccmir_tmp2.cgd 

echo "CCMIR2...done"

#rename modified ccmir.cgd
mv ccmir_tmp2.cgd ccmir.cgd
 

#operation.h - add SCHED_OP_SINAS / SCHED_TYPE_SINAS 
sed '/enum SCHED_Operation {/a\
/* ASIP SINAS */\
SCHED_OP_SINAS,' operation.h > operation_tmp1.h
echo "operation1...done"

sed '/enum SCHED_OperandType{/a\
/* ASIP SINAS */\
SCHED_TYPE_SINAS,' operation_tmp1.h > operation_tmp2.h
echo "operation2...done"

#rename modified file to operation.h 
mv operation_tmp2.h operation.h

#addInsnInfo.c - add function addInsnInfo_SINAS ()
sed '198a\
/* ASIP SINAS */\
int\
addInsnInfo_SINAS\( state_p state, char\* sinasString, int currentCycle \)\
{\
  struct SCHEDULED_Operand   operand;\
  struct SCHEDULED_ListOperands      *operands_p = NULL; \
  struct SCHEDULED_Insn              insn;\
  struct SCHEDULED_BasicBlock        *bb_p = &state->bb;\
\
  SCHEDULED_initOperand( &operand );\
  SCHEDULED_setSINASString( &operand, sinasString );\
  if ( SCHEDULED_appendOperand( &operands_p, &operand ) )\
    {\
      /*---------------------------------------------\
       *  error case\
       *---------------------------------------------*/\
      printf("Fatal error\\n");\
      exit(1);\
    }\
\
  /*-------------------------------------------------\
   *  Make the instruction.\
   *-------------------------------------------------*/\
\
  makeInsn( &insn, SCHED_OP_SINAS, &operands_p, 1 );\
\
  putInsnToscheduledList( bb_p, &insn, currentCycle );\
\
  return 0;\
}' addInsnInfo.c > addInsnInfo_tmp1.c
echo "addInsnInfo...done"

#rename modified version of addInsnInfo.c
mv addInsnInfo_tmp1.c addInsnInfo.c

#asmgen.c - add SINAS types to enumerations
sed '/case SCHED_TYPE_REG :/i\
       /* ASIP SINAS */\
       case SCHED_TYPE_SINAS :\
       SCHEDULED_getRegister( &operand, &reg );\
       fprintf( asmFile, "%s", operand.sinasString);\
       \break;\
       \' asmgen.c > asmgen_tmp1.c

echo "amgen1...done"

sed '/case SCHED_OP_MOD:/i\
       /* ASIP SINAS */\
       case SCHED_OP_SINAS :\
       asm_p="";\
       \break;\
       \' asmgen_tmp1.c > asmgen_tmp2.c

echo "asmgen2...done"

#rename modified version of asmgen.c
mv asmgen_tmp2.c asmgen.c

#reduce latency values in scheduler.cgd - it is possible because HW is stalled
#true and output dependency
sed '/35 35 35/c\
MOD_out 4 4 4,'	 scheduler.cgd > scheduler_tmp1.cgd
sed '/36 36 36/c\
mult_out 4 4 4;' scheduler_tmp1.cgd > scheduler_tmp2.cgd 
#anti
sed '/32 32 32/c\
MOD_in 4 4 4,' scheduler_tmp2.cgd > scheduler_tmp3.cgd
sed '/33 33 33/c\
mult_in 4 4 4;' scheduler_tmp3.cgd > scheduler_tmp4.cgd

echo "scheduler.cgd...done"

#rename modified scheduler_tmp*.cgd
mv scheduler_tmp4.cgd scheduler.cgd
