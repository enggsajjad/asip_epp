#!/bin/bash
source ~/PowerEstimationATi80pc04_Environment.sh


if [ `grep -i error ${POWER_DIR}/pp.log | wc -l` -gt 0 ]; then
	echo
	echo "ERROR: ABORTING \"PowerEstimation\", BECAUSE AN ERROR WAS FOUND IN THE \"pp.log\" FROM \"PrimePower\" !!"
	echo
	echo "THE ERROR MESSAGES ARE:"
	echo "-------------------------------------------------------------------------"
	grep -i -n -C 2 error ${POWER_DIR}/pp.log
	echo "-------------------------------------------------------------------------"
	echo
	exit 1
fi

echo
echo "-----------------------------------------------------------------------------------"
echo "Everything is done. Collecting the results and copying them back to your directory:"

cp ${WORK_DIR}/PowerResult.rpt ${WORK_DIR}/power_wave.fsdb ${POWER_DIR}

# Now extract the final results (cycleCount & avg. Power consumption) to a file.
echo > ${POWER_DIR}/PowerSummary.txt
echo "PowerEstimation was performed with:" >> ${POWER_DIR}/PowerSummary.txt
echo "  Clock Half Period: "${CLOCK_HALF_PERIOD}" ns" >> ${POWER_DIR}/PowerSummary.txt
echo "  Clock Period:      "${CLOCK_PERIOD}" ns" >> ${POWER_DIR}/PowerSummary.txt
echo "  Clock Frequenzy:   "${CLOCK_FREQUENCY}" MHz" >> ${POWER_DIR}/PowerSummary.txt
echo >> ${POWER_DIR}/PowerSummary.txt
grep altogether ${POWER_DIR}/vsim.log >> ${POWER_DIR}/PowerSummary.txt
echo >> ${POWER_DIR}/PowerSummary.txt
grep pp_root -A 4 -B 15 ${POWER_DIR}/pp.log >> ${POWER_DIR}/PowerSummary.txt

cd ${POWER_DIR}
tar -czf PowerResult.tgz PowerResult.rpt power_wave.fsdb PowerSummary.txt
cd -

rm ~/PowerEstimationATi80pc04_Environment.sh

