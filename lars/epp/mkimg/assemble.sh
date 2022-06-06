#!/bin/bash


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
  rm ${APPLICATION_NAME}.* 2>/dev/null
  for i in *.asm
  do
      if [ ! -r ../${i%.asm}.c ] && [ ! -r ../${i%.asm}.s ]
      then
	  echo "Deleting DEPRECATED FILES: '${COMPILER_TEMP_DIR}/${i%.asm}.*'."
	  rm ${i%.asm}.* 2>/dev/null
      fi
  done
  cd - > /dev/null



  ######################################################################
  #
  # Combine all Assembly files to one file.
  #
  echo Creating combined files.
  for i in ${COMPILER_TEMP_DIR}/*.asm
  do
    cat ${i} >> ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.s 2>/dev/null
  done



  echo "STACK_START:			${STACK_START}"


  ######################################################################
  #
  # Add startup code and exit code to assembly code.
  #
  sed s/REPLACE/${STACK_START}/ ${MKIMG_DIR}/startup_dlx.s > ${COMPILER_TEMP_DIR}/startup_dlx.s
  export COMPILER_TEMP_DIR # this is needed in "add_start_end.awk" to use the modified "startup_dlx.s" in compiler temp.
  awk -f ${MKIMG_DIR}/add_start_end.awk < ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.s > ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.s2 || {
      echo
      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE \"awk\" RETURNED AN ERROR !!"
      echo
      exit 1
  }


  ######################################################################
  #
  # Replace "GPR" by "r".
  #
  sed 's/GPR/r/g' ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.s2 > ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.s3


  ######################################################################
  #
  # Create simulation file for dlxsim.
  #
  ${MKIMG_DIR}/createDLXsim.pl ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.s3 > ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.dlxsim || {
	echo
	echo ERROR: ABORTING \"assemble.sh\", BECAUSE \"createDLXsim.sh\" RETURNED AN ERROR !!
	echo
	exit 1
  }





  ######################################################################
  #
  # If only the dlxsim file is required, we do not need to perform the following steps
  #
  if [ ${FULL_ASSEMBLE} -ne 1 ]; then
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
  test -r ${PROJECT_DIR}/AssemblerTypes.inc || {
      echo
      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE THE DESCRIPTION FILE \"${PROJECT_DIR}/AssemblerTypes.inc\" IS NOT READABLE!"
      echo "       MAYBE IN THE \"env_settings\" SOMETHING IS WRONG."
      echo
      exit 1
  }
  test -r ${PROJECT_DIR}/AssemblerInstructions.inc || {
      echo
      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE THE DESCRIPTION FILE \"${PROJECT_DIR}/AssemblerInstructions.inc\" IS NOT READABLE!"
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


  ######################################################################
  #
  # Convert pseudo instruction, etc.
  #
  ${MKIMG_DIR}/cosy2meta_asm.py ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.s2 ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.s4 || {
	echo
	echo ERROR: ABORTING \"assemble.sh\", BECAUSE \"cosy2meta_asm\" RETURNED AN ERROR !!
	echo
	exit 1
  }


  ######################################################################
  #
  # Replace "GPR" by "r".
  #
  sed 's/GPR/r/g' ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.s4 > ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.asm


  ######################################################################
  #
  # Create a version from .des file with unnecessary comma removed.
  #
  sed s/^,// ${MEISTER_DIR}/${CPU_NAME}".des" > ${MEISTER_DIR}/${CPU_NAME}"_noComma.des"


  ######################################################################
  #
  # Create a version from .des file with the user-instructions and types included.
  #
  ${MKIMG_DIR}/extendAssemblerDescriptionFile.pl ${MEISTER_DIR}/${CPU_NAME}"_noComma.des" ${PROJECT_DIR}/AssemblerTypes.inc ${PROJECT_DIR}/AssemblerInstructions.inc > ${MEISTER_DIR}/${CPU_NAME}"_extended.des" || {
      echo
      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE \"extendAssemblerDescriptionFile.pl\" RETURNED AN ERROR !!"
      echo
      exit 1
  }


  ######################################################################
  #
  # Create a version from .des file with "GPR" replaced by "r".
  #
  sed 's/GPR/r/g' ${MEISTER_DIR}/${CPU_NAME}"_extended.des" > ${MEISTER_DIR}/${CPU_NAME}"_extended_noGPR.des"


  ######################################################################
  #
  # Assemble.
  #
  PAS_ERROR=pasError.txt
  RED_HAT_PC=i80pc06
  REMOTE_TEMP_DIR=`ssh ${RED_HAT_PC} "mktemp -d mkimgTemp.XXXXXX"`
  echo "Copying files to '${RED_HAT_PC}' to execute the assembler:"
  scp ${MKIMG_DIR}/pas ${MEISTER_DIR}/${CPU_NAME}"_extended_noGPR.des" ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.asm ${RED_HAT_PC}:${REMOTE_TEMP_DIR} || {
	echo
	echo "ERROR: ABORTING \"assemble.sh\", BECAUSE THE ASSEMBLER COULDN'T BE COPIED TO ${RED_HAT_PC} !!"
	echo
	exit 1
  }
  ssh ${RED_HAT_PC} "${REMOTE_TEMP_DIR}/pas -des ${REMOTE_TEMP_DIR}/${CPU_NAME}'_extended_noGPR.des' -src ${REMOTE_TEMP_DIR}/${APPLICATION_NAME}.asm > ${REMOTE_TEMP_DIR}/${APPLICATION_NAME}.out 2> ${REMOTE_TEMP_DIR}/${PAS_ERROR}" || {
        ssh ${RED_HAT_PC} "grep -v base_integer ${REMOTE_TEMP_DIR}/${PAS_ERROR}"
	echo
	echo "ERROR: ABORTING \"assemble.sh\", BECAUSE THE REMOTE ASSEMBLER RETURNED AN ERROR !!"
	echo
	exit 1
  }
  ssh ${RED_HAT_PC} "grep -v base_integer ${REMOTE_TEMP_DIR}/${PAS_ERROR}"
  scp ${RED_HAT_PC}:${REMOTE_TEMP_DIR}/${APPLICATION_NAME}.out ${RED_HAT_PC}:${REMOTE_TEMP_DIR}/${PAS_ERROR} ${COMPILER_TEMP_DIR} || {
	echo
	echo "ERROR: ABORTING \"assemble.sh\", BECAUSE THE ASSEMBLER OUTPUT COULDN'T BE COPIED BACK FORM ${RED_HAT_PC} !!"
	echo
	exit 1
  }
  ssh ${RED_HAT_PC} "rm -rf ${REMOTE_TEMP_DIR}"


  ######################################################################
  #
  # Scan the ".out"-file for undefined or multiple-defined symbols
  #
  ${MKIMG_DIR}/scanForSymbols.pl ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.out || {
	echo
	echo ERROR: ABORTING "assemble.sh", BECAUSE "scanForSymbols.sh" RETURNED AN ERROR !!
	echo
	exit 1
  }


  ######################################################################
  #
  # make memory image
  #
  ${MKIMG_DIR}/out2im.pl ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.out > ${COMPILER_TEMP_DIR}/TestData.IM
  ${MKIMG_DIR}/out2dm.pl ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.out > ${COMPILER_TEMP_DIR}/TestData.DM_temp
  ${MKIMG_DIR}/extendDMfile.pl ${COMPILER_TEMP_DIR}/TestData.DM_temp > ${COMPILER_TEMP_DIR}/TestData.DM
  cp ${COMPILER_TEMP_DIR}/TestData.IM ${MODELSIM_DIR}
  cp ${COMPILER_TEMP_DIR}/TestData.DM ${MODELSIM_DIR}
  ${MKIMG_DIR}/convertToUART ${COMPILER_TEMP_DIR}/TestData.IM
  ${MKIMG_DIR}/convertToUART ${COMPILER_TEMP_DIR}/TestData.DM

  exit 0

