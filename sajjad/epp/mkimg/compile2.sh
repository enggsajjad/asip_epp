#!/bin/bash

  echo "Assembling:         '${ASSEMBLER_NAME} ${1%.c}.s'"
  ${COMPILER_DIR}/${ASSEMBLER_NAME} ${1%.c}.s -o ${1%.c}.o || {
      echo
      echo "ERROR: ABORTING \"compile.sh\", BECAUSE THE ASSEMBLER RETURNED AN ERROR !!"
      echo
      exit 1
  }
