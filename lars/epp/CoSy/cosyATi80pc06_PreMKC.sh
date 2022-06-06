#!/bin/bash


source ~/cosyATi80pc06_Environment.sh


# Test, whether the needed environments have a value.
if [ -z ${COSY_DATA_DIR} ] || [ -z ${COSY_SCRIPTS_DIR} ]; then
  echo
  echo "ERROR: ABORTING COMPILER GENERATION, BECAUSE SOME ENVIRONMENT SETTINGS FOR REMOTE PC ARE UNDEFINED!"
  echo "       MAYBE THE \"cosyATi80pc06_Environment.sh\" WAS NOT INCLUDED OR CONTAINS TYPING ERRORS."
  echo
  exit 1
fi


# Test, whether the CoSy Data is available.
if [ ! -r ~/CoSyDataATi80pc06.tgz ]; then
  echo
  echo "ERROR: ABORTING COMPILER GENERATION, BECAUSE \"~/CoSyDataATi80pc06.tgz\" IS NOT READABLE"
  echo
  exit 1
fi


# Delete the remote cosy dir
rm -rf ${COSY_DATA_DIR}


# Create the remote-directory on i80pc06 ## mkdir -p allows a long path 
mkdir -p ${COSY_DATA_DIR} || {
  echo
  echo "ERROR: ABORTING COMPILER GENERATION, BECAUSE ${COSY_DATA_DIR} AT THE REMOTE PC COULD NOT BE CREATED !"
  echo
  exit 1
}


# Extract the CoSy Data to the ${COSY_DATA_DIR}
mv ~/CoSyDataATi80pc06.tgz ${COSY_DATA_DIR}
cd ${COSY_DATA_DIR}
tar -xzf CoSyDataATi80pc06.tgz 2> /dev/null
cd -


# Copy the second part of the script to ~ (cosy.sh expects it there) and clean up the home.
cp ${COSY_DATA_DIR}/cosyATi80pc06_MKC.sh ~
rm ${COSY_DATA_DIR}/CoSyDataATi80pc06.tgz ~/cosyATi80pc06_PreMKC.sh


# Start the first part of the real script.
${COSY_SCRIPTS_DIR}/cosy_remote_premkc.sh || {
  echo
  echo "ERROR: ABORTING COMPILER GENERATION, BECAUSE THE SCRIPT \"${COSY_SCRIPTS_DIR}/cosy_remote_premkc.sh\" RETURNED AN ERROR !"
  echo
  exit 1
}


