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

  $ECHO Starting Compile.sh

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
  test "_${STACK_START}" = "_" && {
      echo
      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE THE STACK_START SETTING IS EMPTY!"
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

  echo "STACK_START:			${STACK_START}"
  ${SED} s/REPLACE/${STACK_START}/ ${MKIMG_DIR}/startup_dlx2.s > ${COMPILER_TEMP_DIR}/startup_dlx2.s
  export COMPILER_TEMP_DIR # this is needed in "add_start_end.awk" to use the modified "startup_dlx.s" in compiler temp.

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
  echo "Compiling:          '${COMPILER_NAME} $GCC_PARAM ${1%.c}.c'"
  cd ${COMPILER_TEMP_DIR}
  # NOTE: The "../" in the next line assumes that the COMPILER_TEMP_DIR is a direct subdirectory of the application dir. Otherwise it wouldn't work.
  ${COMPILER_DIR}/${COMPILER_NAME} ${GCC_PARAM} -S ../${1%.c}_cc.c -o ${1%.c}.s || {
      echo
      echo "ERROR: ABORTING \"compile.sh\", BECAUSE THE COMPILER RETURNED AN ERROR !!"
      echo
      exit 1
  }


  cd ..
  ${MV} ${1%.c}_cc.c ${COMPILER_TEMP_DIR}

  ${CP} ${MKIMG_DIR}/startup.s ./${COMPILER_TEMP_DIR} 
  ${CP} ${MKIMG_DIR}/handler.s ./${COMPILER_TEMP_DIR} 
  ${CP} ${MKIMG_DIR}/browtb.x ./${COMPILER_TEMP_DIR} 

  ${SED} '/.glob/s/^/;/; /.align/s/^/;/; /.type/s/^/;/; /.size/s/^/;/; /.ident/s/^/;/; /.zero/s/^/;/; s/.long/.data.32/; /%hi(/ s/)/\/0x10000)/; /%lo(/ s/)/\%0x10000)/; /%hi(/ s/%hi(/(/;/%lo(/ s/%lo(/(/' ${COMPILER_TEMP_DIR}/${1%.c}.s  > ${COMPILER_TEMP_DIR}/${1%.c}.1s

  ${MKIMG_DIR}/renameLabels.pl ${COMPILER_TEMP_DIR}/${1%.c}.1s  ${1%.c} > ${COMPILER_TEMP_DIR}/${1%.c}.2s
  ${MKIMG_DIR}/renameLC.pl     ${COMPILER_TEMP_DIR}/${1%.c}.2s ${1%.c} > ${COMPILER_TEMP_DIR}/${1%.c}.3s

  #${ECHO} -e "\n_exit: \n\ttrap #0 \n" >> ${COMPILER_TEMP_DIR}/${1%.c}.3s
  ${ECHO} -e "\n_exit: \n\ttrap #0 \n"  | cat  ${COMPILER_TEMP_DIR}/${1%.c}.3s >  ${COMPILER_TEMP_DIR}/${1%.c}.4s

  ${AWK} -v RS='.data.*.text' -v ORS= '1;NR==1{printf ".text"}' ${COMPILER_TEMP_DIR}/${1%.c}.4s > ${COMPILER_TEMP_DIR}/${1%.c}.5s
  ${AWK} '/.data/{flag=1} /.text/{flag=0} flag' ${COMPILER_TEMP_DIR}/${1%.c}.4s >> ${COMPILER_TEMP_DIR}/${1%.c}.5s

  ${SED} '/^.data/ s/.data/\t.section\t.data\n\t.addressing\t.Word/; /^.text/ s/.text/\t.section\t.text\n\t.addressing\t.Word/' ${COMPILER_TEMP_DIR}/${1%.c}.4s > ${COMPILER_TEMP_DIR}/${1%.c}.6s

 # ${SED}  -e '/.section\t.text/{' -e 'r ${COMPILER_TEMP_DIR}/startup_dlx2.s' -e  'd' -e '}' ${COMPILER_TEMP_DIR}/${1%.c}.5s > ${COMPILER_TEMP_DIR}/${1%.c}.dlxsim
  ${SED} "/.section\t.text/ r ${COMPILER_TEMP_DIR}/startup_dlx2.s" ${COMPILER_TEMP_DIR}/${1%.c}.6s > ${COMPILER_TEMP_DIR}/${1%.c}.dlxsim


