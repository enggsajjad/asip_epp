#!/bin/bash


LOCAL_TEMP_DIR=`pwd`"/COSY"
REMOTE_PC="i80pc06"
REMOTE_HOME_DIR="/home/"`whoami`


# Test, whether the needed environments have a value.
if [ -z ${PROJECT_DIR} ] || [ -z ${MEISTER_DIR} ] || [ -z ${COSY_DIR} ] || [ -z ${CPU_NAME} ] || [ -z ${COMPILER_NAME} ]; then
  echo
  echo "ERROR: ABORTING COMPILER GENERATION, BECAUSE SOME ENVIRONMENT SETTINGS ARE UNDEFINED!"
  echo "       MAYBE THE \"env_settings\" WAS NOT INCLUDED OR CONTAINS TYPING ERRORS."
  echo
  exit 1
fi


# Test, whether the needed environments have a realistic (!) value.
if [ ! -d ${PROJECT_DIR} ] || [ ! -d ${MEISTER_DIR} ] || [ ! -d ${COSY_DIR} ] || [ ! -d ${MEISTER_DIR}/${CPU_NAME}.sw ]; then
  echo
  echo "ERROR: ABORTING COMPILER GENERATION, BECAUSE SOME ENVIRONMENT SETTINGS ARE WRONG!"
  echo "       SOME OF THE EXPECTED DIRECTORIES/FILES ARE NOT EXISTING."
  echo "       MAYBE IN THE \"env_settings\" SOMETHING IS WRONG. OR THE ASIPMEISTER-FILES IN THE MEISTER DIRECTORY DO NOT EXIST."
  echo
  exit 1
fi


# Inform user that compiler generation is being continued
echo
echo "After you have manually corrected the printed errors you can continue to build the compiler."
echo "The needed steps are:"
echo "  * ssh ${REMOTE_PC}" 
echo "  * cd ~/buildtrees/${COMPILER_NAME}"
echo '  * product enter     (afterwards you are in a special CoSy-Shell)'
echo "  * cd compilers/${COMPILER_NAME}"
echo '  * mkc    (the compiler generation gets started)'
echo


# Tastatureingabe fuer Fortsetzung
until [ "$input_char" = "C" ]
do
  echo 'Press "C" (upper case) to scp the created compiler to your machine. Or press STR-C to abort if mkc ended with an error.'
  read input_char
  if [ ! "$input_char" = "C" ]
    then echo "This was not a C character!" 
  fi
done


# Copy back the generated compiler.
scp ${REMOTE_PC}:${REMOTE_HOME_DIR}/devrep/compilers/${COMPILER_NAME}/${COMPILER_NAME} ${PROJECT_DIR} || {
  echo
  echo "ERROR: ABORTING COMPILER GENERATION, BECAUSE THE GENERATED COMPILER \"${COMPILER_NAME}\""
  echo "       WAS NOT FOUND AT \"${REMOTE_PC}:${REMOTE_HOME_DIR}/devrep/compilers/${COMPILER_NAME}/\" !"
  echo
  exit 1
}


echo
echo "Compiler Generation finished!"
echo

