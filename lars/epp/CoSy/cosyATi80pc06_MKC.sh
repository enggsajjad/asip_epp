#!/bin/bash


source ~/cosyATi80pc06_Environment.sh


# Test, whether the needed environments have a value.
if [ -z ${COSY_SCRIPTS_DIR} ]; then
  echo
  echo "ERROR: ABORTING COMPILER GENERATION, BECAUSE THE \"COSY_SCRIPTS_DIR\" ENVIRONMENT SETTING FOR REMOTE PC IS UNDEFINED!"
  echo "       MAYBE THE \"cosyATi80pc06_Environment.sh\" WAS NOT INCLUDED OR CONTAINS TYPING ERRORS."
  echo
  exit 1
fi


# Clean up the home directory.
rm ~/cosyATi80pc06_MKC.sh


# Start the main script
${COSY_SCRIPTS_DIR}/cosy_remote_mkc.sh

