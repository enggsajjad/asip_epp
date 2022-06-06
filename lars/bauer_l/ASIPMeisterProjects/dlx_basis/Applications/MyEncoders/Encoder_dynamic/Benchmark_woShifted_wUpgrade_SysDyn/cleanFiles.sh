#!/bin/bash

for i in *.log; do echo $i; grep -v "Letzte 100000 Zyklen" $i > foo; mv foo $i; done;

