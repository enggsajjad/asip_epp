#!/bin/bash

RM='/bin/rm'
LS='/bin/ls'
MKDIR='/bin/mkdir'
MV='/bin/mv'
CAT='/bin/cat'
ECHO='/bin/echo'
CP='/bin/cp'
SCP='/usr/bin/scp'
DOS2UNIX='/usr/bin/dos2unix'
SED='/bin/sed'
AWK='/bin/awk'
GAWK='/bin/gawk'
PWD='/bin/pwd'

  #$ECHO Starting Compile.sh

  ######################################################################
  #
  # Syntax:  compile.sh Application.c {Compiler-Parameters}
  #
  ######################################################################



  ######################################################################
  #
  # Test, whether an input parameter is given.
  #
  test $# -lt 1 && {
      echo
      echo "ERROR1: ABORTING \"compile.sh\", BECAUSE NO INPUT PARAMETER IS GIVEN."
      echo "USAGE: \"compile.sh Application.c {Compiler Parameters}\"."
      echo
      exit 1
  }


  ######################################################################
  #
  # Test, whether the input parameter ends with ".c".
  #
  test $1 = ${1%.c}.c || {
      echo
      echo "ERROR2: ABORTING \"compile.sh\", BECAUSE THE INPUT PARAMETER DOES NOT END WITH \".c\"."
      echo "USAGE: \"compile.sh Application.c {Compiler Parameters}\"."
      echo
      exit 1
  }


  ######################################################################
  #
  # Test, whether the given input parameter is a readable file.
  #
  test -r $1 || {
      echo
      echo "ERROR3: ABORTING \"compile.sh\", BECAUSE \""$1"\" IS NOT A READABLE FILE."
      echo "USAGE: \"compile.sh Application.c {Compiler Parameters}\"."
      echo
      exit 1
  }


  ######################################################################
  #
  # Test, whether the needed environments have a value.
  #
  test "_${PROJECT_DIR}" = "_" && {
      echo
      echo "ERROR4: ABORTING \"compile.sh\", BECAUSE THE PROJECT_DIR SETTING IS EMPTY!"
      echo "       MAYBE THE \"env_settings\" WAS NOT INCLUDED OR CONTAINS TYPING ERRORS."
      echo
      exit 1
  }
  test "_${MKIMG_DIR}" = "_" && {
      echo
      echo "ERROR5: ABORTING \"compile.sh\", BECAUSE THE MKIMG_DIR SETTING IS EMPTY!"
      echo "       MAYBE THE \"env_settings\" WAS NOT INCLUDED OR CONTAINS TYPING ERRORS."
      echo
      exit 1
  }
  test "_${COMPILER_NAME}" = "_" && {
      echo
      echo "ERROR6: ABORTING \"compile.sh\", BECAUSE THE COMPILER_NAME SETTING IS EMPTY!"
      echo "       MAYBE THE \"env_settings\" WAS NOT INCLUDED OR CONTAINS TYPING ERRORS."
      echo
      exit 1
  }
  test "_${COMPILER_TEMP_DIR}" = "_" && {
      echo
      echo "ERROR7: ABORTING \"compile.sh\", BECAUSE THE COMPILER_TEMP_DIR SETTING IS EMPTY!"
      echo "       SOMETHING IS WRONG IN THE MAKEFILE."
      echo
      exit 1
  }


  ######################################################################
  #
  # Test, whether the needed environments have a realistic (!) value.
  #
  test -d ${PROJECT_DIR} || {
      echo
      echo "ERROR8: ABORTING \"compile.sh\", BECAUSE THE PROJECT_DIR \"${PROJECT_DIR}\" DOES NOT EXIST!"
      echo "       MAYBE IN THE \"env_settings\" SOMETHING IS WRONG."
      echo "       MAKE SURE YOU DON'T USE THE \"~\" SYMBOL FOR \"ASIPMEISTER_PROJECTS_DIR\". REPLACE IT BY \"\${HOME}\"."
      echo
      exit 1
  }
  test -d ${MKIMG_DIR} || {
      echo
      echo "ERROR9: ABORTING \"compile.sh\", BECAUSE THE MKIMG_DIR \"${MKIMG_DIR}\" DOES NOT EXIST!"
      echo "       MAYBE IN THE \"env_settings\" SOMETHING IS WRONG."
      echo
      exit 1
  }
  test -d ${COMPILER_TEMP_DIR} || {
      echo
      echo "ERROR10: ABORTING \"compile.sh\", BECAUSE THE COMPILER_TEMP_DIR \"${COMPILER_TEMP_DIR}\" DOES NOT EXIST!"
      echo "       SOMETHING IS WRONG IN THE MAKEFILE."
      echo
      exit 1
  }
  test -r ${COMPILER_DIR}/${COMPILER_NAME} || {
      echo
      echo "ERROR11: ABORTING \"compile.sh\", BECAUSE THE COMPILER BINARY \"${PROJECT_DIR}/${COMPILER_NAME}\" IS NOT READABLE!"
      echo "       MAYBE IN THE \"env_settings\" SOMETHING IS WRONG."
      echo
      exit 1
  }



  ######################################################################
  #
  # Create a special version with a "#define COSY" at the beginning".
  #
  ${ECHO} "#define BROWNIE" > ${1%.c}_cc.c
  ${CAT} $1 >> ${1%.c}_cc.c
  ${DOS2UNIX} -q ${1%.c}_cc.c


  ######################################################################
  #
  # Compile.
  #
  echo "Compiling:          '${COMPILER_NAME} $GCC_PARAM ${1%.c}_cc.c'"
  cd ${COMPILER_TEMP_DIR}
  # NOTE: The "../" in the next line assumes that the COMPILER_TEMP_DIR is a direct subdirectory of the application dir. Otherwise it wouldn't work.
  ${COMPILER_DIR}/${COMPILER_NAME} ${GCC_PARAM} -S ../${1%.c}_cc.c -o ${1%.c}.s || {
      echo
      echo "ERROR: ABORTING \"compile.sh\", BECAUSE THE COMPILER RETURNED AN ERROR !!"
      echo
      exit 1
  }

  echo "Assembling:         '${ASSEMBLER_NAME} ${1%.c}.s'"
  ${COMPILER_DIR}/${ASSEMBLER_NAME} ${1%.c}.s -o ${1%.c}.o || {
      echo
      echo "ERROR: ABORTING \"compile.sh\", BECAUSE THE ASSEMBLER RETURNED AN ERROR !!"
      echo
      exit 1
  }
  ${MV} ../${1%.c}_cc.c ./.

  ${MKIMG_DIR}/renameLabels.pl ${1%.c}.s  ${1%.c} > ${1%.c}.asm

#  ${CP} ${MKIMG_DIR}/startup.s .
#  ${CP} ${MKIMG_DIR}/handler.s .
#  ${CP} ${MKIMG_DIR}/browtb.x .


#  ${COMPILER_DIR}/${ASSEMBLER_NAME} handler.s -o handler.o || {
#      echo
#      echo "ERROR: ABORTING \"compile.sh\", BECAUSE THE ASSEMBLER RETURNED AN ERROR !!"
#      echo
#      exit 1
#  }

#  ${COMPILER_DIR}/${ASSEMBLER_NAME} startup.s -o startup.o || {
#      echo
#      echo "ERROR: ABORTING \"compile.sh\", BECAUSE THE ASSEMBLER RETURNED AN ERROR !!"
#      echo
#      exit 1
#  }


#  ${COMPILER_DIR}/${LINKER_NAME} -o ${APPLICATION_NAME} -T browtb.x *.o ||{
#      echo
#      echo "ERROR: ABORTING \"compile.sh\", BECAUSE THE LINKER RETURNED AN ERROR !!"
#      echo
#      exit 1
#  }

#  echo "Generating TestData files..."

#  ${MKIMG_DIR}/gccout2img ${APPLICATION_NAME} ||{
#      echo
#      echo "ERROR: ABORTING \"compile.sh\", BECAUSE THE GCCOUT2IMG RETURNED AN ERROR !!"
#      echo
#      exit 1
#  }

#  ${CP} TestData.IM TestData.DM ${MODELSIM_DIR}


  cd ..
  

