#!/bin/bash

LOCAL_TEMP_DIR=`pwd`"/COSY"
rm -rf ${LOCAL_TEMP_DIR}
mkdir -p ${LOCAL_TEMP_DIR}
echo "LOCAL_TEMP_DIR="$LOCAL_TEMP_DIR

REMOTE_PC="i80pc06"
REMOTE_HOME_DIR="/home/"`whoami`

echo "REMOTE_PC=" ${REMOTE_PC}
echo "REMOTE_HOME_DIR=" ${REMOTE_HOME_DIR}

# Test, whether the needed environments have a value.
if [ -z ${PROJECT_DIR} ] || [ -z ${MEISTER_DIR} ] || [ -z ${COSY_DIR} ] || [ -z ${CPU_NAME} ] || [ -z ${COMPILER_NAME} ]; then
  echo
  echo "ERROR: ABORTING COMPILER GENERATION, BECAUSE SOME ENVIRONMENT SETTINGS ARE UNDEFINED!"
  echo "       MAYBE THE \"env_settings\" WAS NOT INCLUDED OR CONTAINS TYPING ERRORS."
  echo
  exit 1
fi

echo "PROJECT_DIR=" ${PROJECT_DIR}
echo "MEISTER_DIR=" ${MEISTER_DIR}
echo "COSY_DIR=" ${COSY_DIR}

# Test, whether the needed environments have a realistic (!) value.
if [ ! -d ${PROJECT_DIR} ] || [ ! -d ${MEISTER_DIR} ] || [ ! -d ${COSY_DIR} ] || [ ! -d ${MEISTER_DIR}/${CPU_NAME}.sw ]; then
  echo
  echo "ERROR: ABORTING COMPILER GENERATION, BECAUSE SOME ENVIRONMENT SETTINGS ARE WRONG!"
  echo "       SOME OF THE EXPECTED DIRECTORIES/FILES ARE NOT EXISTING."
  echo "       MAYBE IN THE \"env_settings\" SOMETHING IS WRONG. OR THE ASIPMEISTER-FILES IN THE MEISTER DIRECTORY DO NOT EXIST."
  echo
  exit 1
fi
echo "CPU_NAME=" ${CPU_NAME}
echo "####################"

# Prepare all needed files in the ${LOCAL_TEMP_DIR}.
rm -rf ${LOCAL_TEMP_DIR}
mkdir -p ${LOCAL_TEMP_DIR}
cp -r ${MEISTER_DIR}/${CPU_NAME}.sw ${LOCAL_TEMP_DIR}
cp -r ${COSY_DIR}/* ${LOCAL_TEMP_DIR}

ls -l

# Prepare the environment settings for ${REMOTE_PC}.
echo "#!/bin/bash" > ${LOCAL_TEMP_DIR}/cosyATi80pc06_Environment.sh
echo "export PROJECT_NAME=${PROJECT_NAME}" >> ${LOCAL_TEMP_DIR}/cosyATi80pc06_Environment.sh
echo "export COMPILER_PREFIX=${COMPILER_PREFIX}" >> ${LOCAL_TEMP_DIR}/cosyATi80pc06_Environment.sh
echo "export CPU_NAME=${CPU_NAME}" >> ${LOCAL_TEMP_DIR}/cosyATi80pc06_Environment.sh
echo "export COMPILER_NAME=${COMPILER_NAME}" >> ${LOCAL_TEMP_DIR}/cosyATi80pc06_Environment.sh

cat ${LOCAL_TEMP_DIR}/cosyATi80pc06_Environment.sh.template >> ${LOCAL_TEMP_DIR}/cosyATi80pc06_Environment.sh
chmod +x ${LOCAL_TEMP_DIR}/cosyATi80pc06_Environment.sh

# Pack everything together, send it to ${REMOTE_PC} and clean up the ${LOCAL_TEMP_DIR}.
cd ${LOCAL_TEMP_DIR}
tar -czf ${LOCAL_TEMP_DIR}/CoSyDataATi80pc06.tgz *
cd -
#scp ${LOCAL_TEMP_DIR}/CoSyDataATi80pc06.tgz ${LOCAL_TEMP_DIR}/cosyATi80pc06_Environment.sh ${COSY_DIR}/cosyATi80pc06_PreMKC.sh ${REMOTE_PC}: || {
scp ${LOCAL_TEMP_DIR}/CoSyDataATi80pc06.tgz ${REMOTE_PC}: || {
  echo
  echo "ERROR: ABORTING COMPILER GENERATION, BECAUSE THE FILES COULD NOT BE COPIED TO ${REMOTE_PC} !"
  echo
  rm -rf ${LOCAL_TEMP_DIR}
  exit 1
}

#. ${LOCAL_TEMP_DIR}/cosyATi80pc06_Environment.sh

# Start the remote script that starts mkc.
#ssh ${REMOTE_PC} ${REMOTE_HOME_DIR}/cosyATi80pc06_MKC.sh
ssh ${REMOTE_PC} tar -xvzf CoSyDataATi80pc06.tgz

# Start the remote script that does everything before starting mkc.
echo "!!!Start the remote script that does everything before starting mkc.!!!"

ssh ${REMOTE_PC} ${REMOTE_HOME_DIR}/cosyATi80pc06_PreMKC.sh || {
  echo
  echo "ERROR: ABORTING COMPILER GENERATION, BECAUSE THE SCRIPT \"cosyATi80pc06_PreMKC.sh\" RETURNED AN ERROR !"
  echo
  exit 1
}

echo "!!Ende des TEST-Skrept!!" 
echo "!!!!Start the remote script that starts mkc.!!!!"
echo "REMOTE_HOME_DIR" = ${REMOTE_HOME_DIR}

# Start the remote script that starts mkc.
ssh ${REMOTE_PC} ${REMOTE_HOME_DIR}/cosyATi80pc06_MKC.sh

scp ${REMOTE_PC}:${REMOTE_HOME_DIR}/devrep/compilers/${COMPILER_NAME}/${COMPILER_NAME} ${PROJECT_DIR} || {
  echo
  echo "ERROR: ABORTING COMPILER GENERATION, BECAUSE THE GENERATED COMPILER \"${COMPILER_NAME}\""
  echo "       WAS NOT FOUND AT \"${REMOTE_PC}:${REMOTE_HOME_DIR}/devrep/compilers/${COMPILER_NAME}/\" !"
  echo
  exit 1
}


echo ""
echo "Compiler Generation finished!"
echo ""

