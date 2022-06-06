#!/bin/bash
source ~/PowerEstimationATi80pc04_Environment.sh


# Create the directory structure and unpack the PowerData
cd ${POWER_DIR}
tar -xzf PowerDataATi80pc04.tgz 2> /dev/null
rm PowerDataATi80pc04.tgz
cd -


# copy the needed files for DesignVision into the work directory
mkdir ${WORK_DIR}
cp ${CPU_DIR}/* ${WORK_DIR}


# The next command replace the word REPLACE in dv_template.txt with
# all the *.vhd files in the WORK directory
cd ${WORK_DIR}
sed s/REPLACE/"`ls -C -w 10000 *.vhd`"/ ${POWER_DIR}/dv_template.txt > ${POWER_DIR}/dv.txt


echo
echo "-------------------------------------------------------------------------"
echo "Running Design Vision to synthesise the project (this will take a while):"
dc_shell -f ${POWER_DIR}/dv.txt > ${POWER_DIR}/dv.log || {
	echo
	echo "ERROR: ABORTING \"PowerEstimation\", BECAUSE \"DesignVision\" RETURNED AN ERROR !!"
	echo
	exit 1
	}
if [ `grep -i error ${POWER_DIR}/dv.log | wc -l` -gt 0 ]; then
	echo
	echo "ERROR: ABORTING \"PowerEstimation\", BECAUSE AN ERROR WAS FOUND IN THE \"dv.log\" FROM \"designVision\" !!"
	echo
	echo "THE ERROR MESSAGES ARE:"
	echo "-------------------------------------------------------------------------"
	grep -i -n -C 2 error ${POWER_DIR}/dv.log
	echo "-------------------------------------------------------------------------"
	echo
	exit 1
fi


# copy the needed files for ModelSim to the work directory
cp -r ${MODELSIM_PROJECT_DIR}/* ${WORK_DIR}
cp ${POWER_DIR}/TestData.* ${WORK_DIR}


echo
echo "---------------------------------------------"
echo "Running ModelSim to simulate the application:"
vsim -c -do ${POWER_DIR}/vsim.txt 2>&1 | tee ${POWER_DIR}/vsim.log
if [ `grep -i -e error -e fatal ${POWER_DIR}/vsim.log | wc -l`  -gt  `grep "no errors" ${POWER_DIR}/vsim.log | wc -l` ]; then
	echo
	echo "ERROR: ABORTING \"PowerEstimation\", BECAUSE AN ERROR WAS FOUND IN THE \"vsim.log\" FROM \"ModelSim\" !!"
	echo
	echo "THE ERROR MESSAGES ARE:"
	echo "-------------------------------------------------------------------------"
	grep -i -n -C 2 -e error -e fatal ${POWER_DIR}/vsim.log
	echo "-------------------------------------------------------------------------"
	echo
	exit 1
fi
