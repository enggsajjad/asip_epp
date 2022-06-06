#!/bin/bash

ASIPPROJ=dlx_basis

ASIPDIR=~/ASIP_CPUs/ckf_dlx
ASIPPROJDIR=${ASIPDIR}/meister

#Ablegen des Compilers
COMPDIR=~/compdir

#Lokales Repos - muss exportiert werden wegen Einbindung in extractcc/cpcgd
export DEVREP=~/devrep
echo "DEVREP ist " $DEVREP

#Originalnamen in devrep
MEISTERCG=testcg
MEISTERCC=testcc

#Zielnamen in devrep
NEWCG=${DEVREP}/$1
NEWCC=${DEVREP}/$2

#muss wegen Nutzung in script buildcompiler exportiert werden
export COMPNAME=$2

#BuildTree
BUILDTREE=~/cosybuild
COMPFILE=${BUILDTREE}/components

#Basisdir mit Scripts und Basisfiles
BASEDIR=~/scripts
EDLDIR=${BASEDIR}/edl

#Tempdir
TEMP=~/tmp

#siehe S.34 sh
#usage(){
#cat <<EOF >&2
#	usage: cosy name_cg name_cc
#	EOF
#}

##############################
# check number of argument
##############################
if [ -z "$1" ] || [ -z "$2" ] ; then
  echo "USAGE : extractcc engname compname"
  exit
fi

#make copies of the templates - if there are same dirnames -> remove them
if [ -d "$NEWCG" ] && [ ! -z "$1" ] ; then
	echo "$NEWCG already exists. Now removed."
	rm -rf ${NEWCG}
fi

if [ -d "$NEWCC" ] && [ ! -z "$2" ] ; then
	echo "$NEWCC already exists. Now removed."
	rm -rf ${NEWCC}
fi
extractcc $1 $2

#copy components file to buildtree
#cp -r ${BASEDIR}/components/components ${BUILDTREE}

#change names in components file
sed s/${MEISTERCG}/$1/ ${BASEDIR}/components/components > ${BUILDTREE}/tmp_comp
sed s/${MEISTERCC}/$2/ ${BUILDTREE}/tmp_comp > ${BUILDTREE}/components
#rm ${BUILDTREE}/tmp_comp


#switch to build dir and execute create build tree
cd ${BUILDTREE}
product extract

#use meistercg on SW-Tools files
cp ${ASIPPROJDIR}/${ASIPPROJ}.sw/* $TEMP
#check ob 6 Dateien da sind
cp ${EDLDIR}/* $TEMP
cd $TEMP
meistercg -d .

#use cpcgd to copy files in buildtree - components have to be linked to $DEVREP
cpcgd $1 $2

#rm -rf *.cgd
#rm -rf *.log
#rm -rf *.c

#switch back to Buildtree
cd ${BUILDTREE}
product enter 
