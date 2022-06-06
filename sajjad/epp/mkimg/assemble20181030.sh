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

  cd ${COMPILER_TEMP_DIR}
  ${RM} ${APPLICATION_NAME}.* 2>/dev/null
  for i in *.asm
  do
      if [ ! -r ../${i%.asm}.c ] && [ ! -r ../${i%.asm}.s ]
      then
	  echo "Deleting DEPRECATED FILES: '${COMPILER_TEMP_DIR}/${i%.asm}.*'."
	  ${RM} ${i%.asm}.* 2>/dev/null
      fi
  done
  cd ..



  ######################################################################
  #
  # Combine all Assembly files to one file.
  #

  for i in ${COMPILER_TEMP_DIR}/*.asm
  do
    ${CAT} ${i} >> ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.s  2>/dev/null
  done

  echo "STACK_START:			${STACK_START}"

  ######################################################################
  #
  #
  #
  cd ${COMPILER_TEMP_DIR}

  ${SED} '/.glob/s/^/;/; /.align/s/^/;/; /.type/s/^/;/; /.size/s/^/;/; /.ident/s/^/;/; /.zero/s/^/;/; s/.long/.data.32/; /%hi(/ s/)/\/0x10000)/; /%lo(/ s/)/\%0x10000)/; /%hi(/ s/%hi(/(/;/%lo(/ s/%lo(/(/; /^.data/ s/.data/\t.section\t.data\n\t.addressing\t.Word/; s/.rodata/.data/; /^.text/ s/.text/\t.section\t.text\n\t.addressing\t.Word/' ${APPLICATION_NAME}.s  > ${APPLICATION_NAME}.s1 || {
      echo
      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE \"sed\" RETURNED AN ERROR !!"
      echo
      exit 1
  }

#  ${ECHO} -e "$(${CAT}  ${APPLICATION_NAME}.s1) \n\n_exit: \n\ttrap #0 \n"  >  ${APPLICATION_NAME}.s2 || {
#      echo
#      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE \"exit code\" RETURNED AN ERROR !!"
#      echo
#      exit 1
#  }

  ${MKIMG_DIR}/createDLXsim.pl ${APPLICATION_NAME}.s1 > ${APPLICATION_NAME}.s2 || {
      echo
      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE \"createDLXsim.pl\" RETURNED AN ERROR !!"
      echo
      exit 1
  }

  ${MKIMG_DIR}/createString.pl ${APPLICATION_NAME}.s2 > ${APPLICATION_NAME}.s3 || {
      echo
      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE \"createString.pl\" RETURNED AN ERROR !!"
      echo
      exit 1
  }

#  ${MKIMG_DIR}/renameLabels.pl ${APPLICATION_NAME}.s1 '${APPLICATION_NAME}' > ${APPLICATION_NAME}.s2 || {
#      echo
#      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE \"renameLabels.pl\" RETURNED AN ERROR !!"
#      echo
#      exit 1
#  }
#  ${MKIMG_DIR}/renameLC.pl     ${APPLICATION_NAME}.s2 '${APPLICATION_NAME}' > ${APPLICATION_NAME}.s3 || {
#      echo
#      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE \"renameLC.pl\" RETURNED AN ERROR !!"
#      echo
#      exit 1
#  }
#

##  ${ECHO} -e "$(${CAT}  ${APPLICATION_NAME}.s3) \n\n_exit: \n\ttrap #0 \n"  >  ${APPLICATION_NAME}.s4 || {
#  ${ECHO} -e "$(${CAT}  ${APPLICATION_NAME}.s1) \n\n_exit: \n\ttrap #0 \n"  >  ${APPLICATION_NAME}.s4 || {
#      echo
#      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE \"exit code\" RETURNED AN ERROR !!"
#      echo
#      exit 1
#  }

#  ${AWK} -v RS='.data.*.text' -v ORS= '1;NR==1{printf ".text"}' ${APPLICATION_NAME}.s4 > ${APPLICATION_NAME}.s5 || {
#      echo
#      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE \"awk2\" RETURNED AN ERROR !!"
#      echo
#      exit 1
#  }

#  ${AWK} '/.data/{flag=1} /.text/{flag=0} flag' ${APPLICATION_NAME}.s4 >> ${APPLICATION_NAME}.s5 || {
#      echo
#      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE \"awk3\" RETURNED AN ERROR !!"
#      echo
#      exit 1
#  }

#  ${SED} '/^.data/ s/.data/\t.section\t.data\n\t.addressing\t.Word/; /^.text/ s/.text/\t.section\t.text\n\t.addressing\t.Word/' ${APPLICATION_NAME}.s5 > ${APPLICATION_NAME}.s6 || {
#      echo
#      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE \"sed2\" RETURNED AN ERROR !!"
#      echo
#      exit 1
#  }

  ${SED} s/REPLACE/${STACK_START}/ $MKIMG_DIR/startup_dlx2.s > startup_dlx2.s || {
      echo
      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE \"sed3\" RETURNED AN ERROR !!"
      echo
      exit 1
  }

#  ${SED} "/.section\t.text/ r startup_dlx2.s" ${APPLICATION_NAME}.s4 > ${APPLICATION_NAME}.dlxsim || {
#      echo
#      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE \"sed4\" RETURNED AN ERROR !!"
#      echo
#      exit 1
#  }

  cd ..

  #${ECHO} 'FULL_ASSEMBLE inside Assemble' ${FULL_ASSEMBLE}
  #${ECHO} 'FULL_COMPILE inside Assemble' ${FULL_COMPILE}
  ######################################################################
  #
  # If only the dlxsim file is required, we do not need to perform the following steps
  #
  if [ ${FULL_ASSEMBLE} -ne 1 ]; then
	exit 0
  fi

  ######################################################################
  #
  # If only the dlxsim file is required, we do not need to perform the following steps
  #
  if [ ${FULL_COMPILE} -ne 0 ]; then
	exit 0
  fi

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


  test "_${MEISTER_DIR}" = "_" && {
      echo
      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE THE MEISTER_DIR SETTING IS EMPTY!"
      echo "       MAYBE THE \"env_settings\" WAS NOT INCLUDED OR CONTAINS TYPING ERRORS."
      echo
      exit 1
  }

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
  test -r ${MEISTER_DIR}/${CPU_NAME}".des" || {
      echo
      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE THE DESCRIPTION FILE \"${MEISTER_DIR}/${CPU_NAME}.des\" IS NOT READABLE!"
      echo "       MAYBE IN THE \"env_settings\" SOMETHING IS WRONG. OR THE ASIPMEISTER-FILES IN THE MEISTER DIRECTORY DO NOT EXIST."
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

  ${CP} ${MKIMG_DIR}/startup.s .
  ${CP} ${MKIMG_DIR}/handler.s .
  ${CP} ${MKIMG_DIR}/browtb.x .

  ${COMPILER_DIR}/${ASSEMBLER_NAME} ${APPLICATION_NAME}.s -o ${APPLICATION_NAME}.o || {
      echo
      echo "ERROR: ABORTING \"compile.sh\", BECAUSE THE ASSEMBLER RETURNED AN ERROR !!"
      echo
      exit 1
  }


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

