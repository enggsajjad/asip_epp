#!/bin/bash
source ~/PowerEstimationATi80pc04_Environment.sh

cd ${WORK_DIR}

echo
echo "-----------------------------------------------------"
echo "Running PrimePower to estimate the power consumption:"
pp_shell -file ${POWER_DIR}/pp.txt | tee ${POWER_DIR}/pp.log

