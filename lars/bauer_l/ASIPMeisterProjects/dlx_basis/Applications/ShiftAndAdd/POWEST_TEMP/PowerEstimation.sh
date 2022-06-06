#!/bin/bash

REMOTE_PC="i80pc04"
REMOTE_POWER_DIR="~/POWEST_${PROJECT_NAME}"
LOCAL_TEMP_DIR=`pwd`"/POWEST_TEMP"
ARCHIVE_NAME='PowEst'`date +%F_%k-%M-%S`


# Test, whether the needed environments have a value.
if [ -z ${PROJECT_DIR} ] || [ -z ${MEISTER_DIR} ] || [ -z ${PROJECT_DIR} ] || [ -z ${CPU_NAME} ]; then
  echo
  echo "ERROR: ABORTING POWER ESTIMATION, BECAUSE SOME ENVIRONMENT SETTINGS ARE UNDEFINED!"
  echo "       MAYBE THE \"env_settings.sh\" WAS NOT INCLUDED OR CONTAINS TYPING ERRORS."
  echo
  exit 1
fi


# Test, whether the needed environments have a realistic (!) value.
if [ ! -d ${POWER_DIR} ] || [ ! -d ${MEISTER_DIR} ] || [ ! -d ${MEISTER_DIR}/${CPU_NAME}.syn ] || [ ! -r ${MEISTER_DIR}/${CPU_NAME}.syn/CPU.vhd ]; then
  echo
  echo "ERROR: ABORTING POWER ESTIMATION, BECAUSE SOME ENVIRONMENT SETTINGS ARE WRONG!"
  echo "       SOME OF THE EXPECTED DIRECTORIES/FILES ARE NOT EXISTING."
  echo "       MAYBE IN THE \"env_settings.sh\" SOMETHING IS WRONG. OR THE ASIPMEISTER-FILES IN THE MEISTER DIRECTORY DO NOT EXIST."
  echo
  exit 1
fi


# Test, whether ${REMOTE_PC} is allready locked with the MutEx.
ssh ${REMOTE_PC} test -r POWEST.mutex && {
  echo
  echo "ERROR: ABORTING POWER ESTIMATION, BECAUSE THE FILE \"POWEST.mutex\" IS ALLREADY EXISTING AT ${REMOTE_PC}"
  echo "       THIS USUALLY MEANS, THAT YOU ARE ALLREADY RUNNING ONE POWER ESTIMATION."
  echo "       A SECOND POWER ESTIMATION MIGHT CONFLICT WITH THE PREVIOUS ONE!"
  echo "       IF YOU ARE SURE, THAT NO SECOND POWER ESTIMATION IS RUNNING FOR YOUR ACCOUNT, THEN DELETE THE"
  echo "       \"POWEST.mutex\" AT ${REMOTE_PC} MANUALLY!"
  echo
  exit 1
}


# Lock ${REMOTE_PC} with the MutEx.
ssh ${REMOTE_PC} "echo >> POWEST.mutex"


# Check, whether we are the only one who tried to lock the MutEx.
test 1 -eq `ssh ${REMOTE_PC} cat POWEST.mutex | wc -l` || {
  echo
  echo "ERROR: ABORTING POWER ESTIMATION, BECAUSE SOMEONE WAS TRYING TO LOCK THE \"POWEST.mutex\" WHILE WE"
  echo "       TRIED TO LOCK IT OURSELF!"
  echo "       THE OTHER ONE MIGHT NOT HAVE NOTICED THIS DOUBLE-LOCK SITUATION, SO I'LL GIVE UP."
  echo "       IF YOU ARE SURE, THAT NO SECOND POWER ESTIMATION IS RUNNING FOR YOUR ACCOUNT, THEN DELETE THE"
  echo "       \"POWEST.mutex\" AT ${REMOTE_PC} MANUALLY!"
  echo
  exit 1
}


# Copy the ASIP Meister CPU, the Application and the PowEst Scripts to the temp directory
rm -rf ${LOCAL_TEMP_DIR}
cp -r ${POWER_DIR} ${LOCAL_TEMP_DIR}
mkdir ${LOCAL_TEMP_DIR}/CPU
cp ${MEISTER_DIR}/${CPU_NAME}.syn/*.vhd ${LOCAL_TEMP_DIR}/CPU/
cp TestData.IM TestData.DM ${LOCAL_TEMP_DIR}


# Insert the requested clock frequency into the ModelSim TestBench.
CLOCK_HALF_PERIOD=10
test $# -ge 1 && CLOCK_HALF_PERIOD=$1
CLOCK_PERIOD=$((2*${CLOCK_HALF_PERIOD}))
CLOCK_FREQUENCY=$((1000/${CLOCK_PERIOD}))
sed s/REPLACE_CLOCK_HALF_PERIOD/${CLOCK_HALF_PERIOD}/ ${LOCAL_TEMP_DIR}/ModelSim_Project/tb_ASIPmeister.vhd.template > ${LOCAL_TEMP_DIR}/ModelSim_Project/tb_ASIPmeister.vhd
echo
echo "Performing the PowerEstimation:"
echo "  Clock Half Period: "${CLOCK_HALF_PERIOD}" ns"
echo "  Clock Period:      "${CLOCK_PERIOD}" ns"
echo "  Clock Frequenzy:   "${CLOCK_FREQUENCY}" MHz"
echo


# Create the environment settings for ${REMOTE_PC}
#   The '?' sign is used instead of the usual '/', because the '/' is part of the remote power dir.
sed s?REPLACE_POWER_DIR?${REMOTE_POWER_DIR}? ${LOCAL_TEMP_DIR}/PowerEstimationATi80pc04_Environment.sh.template > ${LOCAL_TEMP_DIR}/PowerEstimationATi80pc04_Environment.sh
echo "export CLOCK_HALF_PERIOD="${CLOCK_HALF_PERIOD} >> ${LOCAL_TEMP_DIR}/PowerEstimationATi80pc04_Environment.sh
echo  >> ${LOCAL_TEMP_DIR}/PowerEstimationATi80pc04_Environment.sh
echo "export CLOCK_PERIOD="${CLOCK_PERIOD} >> ${LOCAL_TEMP_DIR}/PowerEstimationATi80pc04_Environment.sh
echo  >> ${LOCAL_TEMP_DIR}/PowerEstimationATi80pc04_Environment.sh
echo "export CLOCK_FREQUENCY="${CLOCK_FREQUENCY} >> ${LOCAL_TEMP_DIR}/PowerEstimationATi80pc04_Environment.sh


# Create the remote directory
ssh ${REMOTE_PC} rm -rf ${REMOTE_POWER_DIR}
ssh ${REMOTE_PC} mkdir ${REMOTE_POWER_DIR} || {
  echo
  echo "ERROR: ABORTING POWER ESTIMATION, BECAUSE THE REMOTE DIRECTORY AT ${REMOTE_PC} COULD NOT BE CREATED !"
  echo
  ssh ${REMOTE_PC} rm -f POWEST.mutex
  exit 1
}


# Pack everything together, send it to ${REMOTE_PC} and clean up our directory
cd ${LOCAL_TEMP_DIR}
tar -czf PowerDataATi80pc04.tgz *
cd -
scp ${LOCAL_TEMP_DIR}/PowerDataATi80pc04.tgz ${LOCAL_TEMP_DIR}/PowerEstimationATi80pc04_PrePP.sh ${REMOTE_PC}:${REMOTE_POWER_DIR}
scp ${LOCAL_TEMP_DIR}/PowerEstimationATi80pc04_Environment.sh ${REMOTE_PC}:~
rm -rf ${LOCAL_TEMP_DIR}


# Create the Archive-Directory and copy the used files into it
mkdir -p ${ARCHIVE_NAME}/${CPU_NAME}.syn
cp TestData.DM TestData.IM *.s *.c ${PROJECT_DIR}/${CPU_NAME}.pdb ${ARCHIVE_NAME} &> /dev/null
cp -r ${MEISTER_DIR}/${CPU_NAME}.syn/*.vhd ${ARCHIVE_NAME}/${CPU_NAME}.syn


# Now start the scripts AT ${REMOTE_PC}:
ssh ${REMOTE_PC} ${REMOTE_POWER_DIR}/PowerEstimationATi80pc04_PrePP.sh || {
  echo
  echo "ERROR: ABORTING POWER ESTIMATION, BECAUSE \"PowerEstimationATi80pc04_PrePP.sh\" RETURNED AN ERROR !"
  echo
  ssh ${REMOTE_PC} rm -f POWEST.mutex PowerEstimationATi80pc04_Environment.sh
  rm -rf ${ARCHIVE_NAME}
  exit 1
}


ssh ${REMOTE_PC} ${REMOTE_POWER_DIR}/PowerEstimationATi80pc04_PP.sh


ssh ${REMOTE_PC} ${REMOTE_POWER_DIR}/PowerEstimationATi80pc04_PostPP.sh || {
  echo
  echo "ERROR: ABORTING POWER ESTIMATION, BECAUSE \"PowerEstimationATi80pc04_PostPP\" RETURNED AN ERROR !"
  echo
  ssh ${REMOTE_PC} rm -f POWEST.mutex PowerEstimationATi80pc04_Environment.sh
  rm -rf ${ARCHIVE_NAME}
  exit 1
}


# Now copy back the result from ${REMOTE_PC}
scp ${REMOTE_PC}:${REMOTE_POWER_DIR}/PowerResult.tgz .
tar -xzf PowerResult.tgz
rm PowerResult.tgz


# Now remove the lock from ${REMOTE_PC}
ssh ${REMOTE_PC} rm -f POWEST.mutex PowerEstimationATi80pc04_Environment.sh


# Now copy the results to the Archive-Directory and create a tgz out of it
cp power_wave.fsdb PowerResult.rpt PowerSummary.txt ${ARCHIVE_NAME}
tar -czf ${ARCHIVE_NAME}.tgz ${ARCHIVE_NAME}
rm -rf ${ARCHIVE_NAME}


echo
echo "********************************************"
echo "*** FINISHED \"POWER ESTIMATION\"."
echo "********************************************"
echo

