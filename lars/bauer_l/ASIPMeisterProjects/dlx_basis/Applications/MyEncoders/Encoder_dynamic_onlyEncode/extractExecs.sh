#!/bin/bash

for i in *.log; do
  echo
  echo "-------------------------"
  echo "$i"
  echo "-------------------------"
  echo
  grep "Execs=" $i | grep -v "Execs=0"
done;
