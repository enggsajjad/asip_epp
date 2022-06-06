#!/bin/bash

for i in *.log; do

  thisRun=`grep "this run" $i`

  # This line will split the string 'thisRun' according the separator IFS.
  # The default IFS is " ". The results can be found in $1, $2, $3, ...
  set $thisRun

  echo "$i	$3"
done;
