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
GREP='/bin/grep -v'

  $ECHO Starting Assemble.sh
  ######################################################################
  #
  # Syntax:  assemble.sh
  #
  ######################################################################


  ######################################################################
  #
  # Test, whether the needed environments have a value.
  #
  test "_${MKIMG_DIR}" = "_" && {
      echo
      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE THE MKIMG_DIR SETTING IS EMPTY!"
      echo "       MAYBE THE \"env_settings\" WAS NOT INCLUDED OR CONTAINS TYPING ERRORS."
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
  test "_${COMPILER_TEMP_DIR}" = "_" && {
      echo
      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE THE COMPILER_TEMP_DIR SETTING IS EMPTY!"
      echo "       SOMETHING IS WRONG IN THE MAKEFILE."
      echo
      exit 1
  }


  ######################################################################
  #
  # Test, whether the needed environments have a realistic (!) value.
  #
  test -d ${MKIMG_DIR} || {
      echo
      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE THE MKIMG_DIR \"${MKIMG_DIR}\" DOES NOT EXIST!"
      echo "       MAYBE IN THE \"env_settings\" SOMETHING IS WRONG."
      echo
      exit 1
  }
  test -d ${COMPILER_TEMP_DIR} || {
      echo
      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE THE COMPILER_TEMP_DIR \"${COMPILER_TEMP_DIR}\" DOES NOT EXIST!"
      echo "       SOMETHING IS WRONG IN THE MAKEFILE."
      echo
      exit 1
  }


  ######################################################################
  #
  # Delete all OLD Assembly Files, i.e. those files that have no corresponding .c or .s file in the application directory
  #

  #cd ${COMPILER_TEMP_DIR}
  #${RM} ${APPLICATION_NAME}.* 2>/dev/null
  #for i in *.asm
  #do
  #    if [ ! -r ../${i%.asm}.c ] && [ ! -r ../${i%.asm}.s ]
  #    then
#	  echo "Deleting DEPRECATED FILES: '${COMPILER_TEMP_DIR}/${i%.asm}.*'."
#	  ${RM} ${i%.asm}.* 2>/dev/null
 #     fi
  #done
  #cd ..


  ######################################################################
  #
  # Combine all Assembly files to one file.
  #
  echo Creating combined files.
  for i in ./*.s
  do
    ${CAT} ${i} >> ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.s  2>/dev/null
  done

  echo "STACK_START:			${STACK_START}"


  ######################################################################
  #
  # Add startup code and exit code to assembly code.
  #
  #${SED} s/REPLACE/${STACK_START}/ ${MKIMG_DIR}/startup_dlx.s > ${COMPILER_TEMP_DIR}/startup_dlx.s
  export COMPILER_TEMP_DIR # this is needed in "add_start_end.awk" to use the modified "startup_dlx.s" in compiler temp.

  #${CAT} ${COMPILER_TEMP_DIR}/startup_dlx.s ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.s > ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.s2 || {
  #    echo
  #    echo "ERROR: ABORTING \"assemble.sh\", BECAUSE \"awk\" RETURNED AN ERROR !!"
  #    echo
  #    exit 1
  #}



  #${SED} '/.glob/s/^/;/; /.align/s/^/;/; /.type/s/^/;/; /.size/s/^/;/; /.ident/s/^/;/; /.zero/s/^/;/; /^.data/ s/.data/\t.section\t.data\n\t.addressing\t.Word/; /^.text/ s/.text/\t.section\t.text\n\t.addressing\t.Word/; /%hi(/ s/)/\/0x10000)/; /%lo(/ s/)/\%0x10000)/; /%hi(/ s/%hi(/(/;/%lo(/ s/%lo(/(/' ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.s2 > ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.s3

  ######################################################################
  #
  # Replace "GPR" by "r".
  #
  #${SED} 's/GPR/r/g' ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.s2 > ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.s3


  ######################################################################
  #
  # Create simulation file for dlxsim.
  #
  #${MKIMG_DIR}/createDLXsim.pl ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.s3 > ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.dlxsim || {
#	echo
#	echo ERROR: ABORTING \"assemble.sh\", BECAUSE \"createDLXsim.sh\" RETURNED AN ERROR !!
#	echo
#	exit 1
 # }



  #$ECHO   "Testing Variables"

  ######################################################################
  #
  # If only the dlxsim file is required, we do not need to perform the following steps
  #
  #if [ ${FULL_ASSEMBLE} -ne 1 ]; then
#	exit 0
  #fi

 # echo "Testing Assemble 1"${FULL_ASSEMBLE}
  ######################################################################
  #
  # Test, whether the needed environments have a value.
  #
  test "_${PROJECT_DIR}" = "_" && {
      echo
      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE THE PROJECT_DIR SETTING IS EMPTY!"
      echo "       MAYBE THE \"env_settings\" WAS NOT INCLUDED OR CONTAINS TYPING ERRORS."
      echo
      exit 1
  }

  if [ ${FULL_ASSEMBLE} -eq 1 ]; then
  test "_${MEISTER_DIR}" = "_" && {
      echo
      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE THE MEISTER_DIR SETTING IS EMPTY!"
      echo "       MAYBE THE \"env_settings\" WAS NOT INCLUDED OR CONTAINS TYPING ERRORS."
      echo
      exit 1
  }
  fi

  test "_${MODELSIM_DIR}" = "_" && {
      echo
      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE THE MODELSIM_DIR SETTING IS EMPTY!"
      echo "       MAYBE THE \"env_settings\" WAS NOT INCLUDED OR CONTAINS TYPING ERRORS."
      echo
      exit 1
  }
  test "_${CPU_NAME}" = "_" && {
      echo
      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE THE CPU_NAME SETTING IS EMPTY!"
      echo "       MAYBE THE \"env_settings\" WAS NOT INCLUDED OR CONTAINS TYPING ERRORS."
      echo
      exit 1
  }

 echo "Assembling:         '${APPLICATION_NAME}.s'"
  ${COMPILER_DIR}/${ASSEMBLER_NAME} ${APPLICATION_NAME}.s -o ${APPLICATION_NAME}.o || {
      echo
      echo "ERROR: ABORTING \"compile.sh\", BECAUSE THE ASSEMBLER RETURNED AN ERROR !!2"
      echo
      exit 1
  }

  cd ..

  ${CP} ${MKIMG_DIR}/startup.s ./${COMPILER_TEMP_DIR} 
  ${CP} ${MKIMG_DIR}/handler.s ./${COMPILER_TEMP_DIR} 
  ${CP} ${MKIMG_DIR}/browtb.x ./${COMPILER_TEMP_DIR} 

  cd ${COMPILER_TEMP_DIR}
  ${COMPILER_DIR}/${ASSEMBLER_NAME} handler.s -o handler.o || {
      echo
      echo "ERROR: ABORTING \"compile.sh\", BECAUSE THE ASSEMBLER RETURNED AN ERROR !!"
      echo
      exit 1
  }

  ${COMPILER_DIR}/${ASSEMBLER_NAME} startup.s -o startup.o || {
      echo
      echo "ERROR: ABORTING \"compile.sh\", BECAUSE THE ASSEMBLER RETURNED AN ERROR !!"
      echo
      exit 1
  }
  cd ..

  ######################################################################
  #
  # Test, whether the needed environments have a realistic (!) value.
  #
  test -d ${PROJECT_DIR} || {
      echo
      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE THE PROJECT_DIR \"${PROJECT_DIR}\" DOES NOT EXIST!"
      echo "       MAYBE IN THE \"env_settings\" SOMETHING IS WRONG."
      echo
      exit 1
  }
  test -d ${MEISTER_DIR} || {
      echo
      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE THE MEISTER_DIR \"${MEISTER_DIR}\" DOES NOT EXIST!"
      echo "       MAYBE IN THE \"env_settings\" SOMETHING IS WRONG."
      echo
      exit 1
  }
  test -d ${MODELSIM_DIR} || {
      echo
      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE THE MODELSIM_DIR \"${MODELSIM_DIR}\" DOES NOT EXIST!"
      echo "       MAYBE IN THE \"env_settings\" SOMETHING IS WRONG."
      echo
      exit 1
  }

  cd ./${COMPILER_TEMP_DIR} 

  #${COMPILER_DIR}/${LINKER_NAME} -o ${APPLICATION_NAME} -T browtb.x app.o lib_uart.o string.o loadStoreByte.o startup.o handler.o ||{
  ${COMPILER_DIR}/${LINKER_NAME} -o ${APPLICATION_NAME} -T browtb.x *.o ||{
      echo
      echo "ERROR: ABORTING \"compile.sh\", BECAUSE THE LINKER RETURNED AN ERROR !!"
      echo
      exit 1
  }

  echo "Generating TestData files..."

  ${MKIMG_DIR}/gccout2img ${APPLICATION_NAME} ||{
      echo
      echo "ERROR: ABORTING \"compile.sh\", BECAUSE THE GCCOUT2IMG RETURNED AN ERROR !!"
      echo
      exit 1
  }

  ${CP} TestData.IM TestData.DM ${MODELSIM_DIR}
  cd ..
  echo "TestData files copied to Modelsim folder."

  exit 0

