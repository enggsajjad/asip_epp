#!/bin/bash
#Einbinden Global Env_Data
source ~/.bash_profile

# SINAS Support ?
SINAS=yes

if [ "$SINAS" = "yes" ]; then 
COMPONENT=components_sinas
echo "SINAS Support enabled"
else
COMPONENT=components
echo "SINAS Support disabled"
fi

#Lokales Repos - muss exportiert werden wegen Einbindung in extractcc/cpcgd
echo "Environment von i80pc06"
echo "DEVREP ist $DEVREP"

# ASIP MEISTER SW Tools Files
MEISTERCG_DIR=${COSY_DATA_DIR}/${CPU_NAME}.sw
echo "MEISTERCG_DIR ist $MEISTERCG_DIR"

#Originalnamen in devrep
MEISTERCG=testcg
MEISTERCC=testcc

#Zielnamen in devrep
NEWCG=${DEVREP}/engines/${COMPILER_PREFIX}cg  
NEWCC=${DEVREP}/compilers/${COMPILER_PREFIX}cc
echo "NEW IN DEVREP:"
echo "CG: $NEWCG"
echo "CC: $NEWCC"

#muss wegen Nutzung in script buildcompiler exportiert werden
echo "COMPILERNAME: $COMPNAME"

#BuildTree fuer Compiler
echo
echo "BUILDTREE: $BUILD_TREE"

#Basisdir mit Scripts und Basisfiles
echo
echo "COSY_SCRIPTS_DIR: $COSY_SCRIPTS_DIR"
echo "EDL_FILES: ${COSY_SCRIPTS_DIR}/edl"


#DEBUG STOP
#exit 1


#siehe S.34 sh
#usage(){
#cat <<EOF >&2
#	usage: cosy name_cg name_cc
#	EOF
#}

#create devrep repository for extractcc and cpcgd script work - only when directory not exists yet
if [ ! -d "${DEVREP}/compilers/${MEISTERCC}" ] && [ ! -d "${DEVREP}/engines/${MEISTERCG}" ] ; then
	echo "DEVREP directory not exists. Now creating..."
	mkdir -p ${DEVREP}/compilers
	mkdir -p ${DEVREP}/engines
	cp ${DEVREP_TEMPLATE_LOCATION}/testcc.tar.gz ${DEVREP}/compilers
	cp ${DEVREP_TEMPLATE_LOCATION}/testcg.tar.gz ${DEVREP}/engines
	cd ${DEVREP}/compilers
	echo "uncompressing testcc.tar.gz..."
	tar -xzf ./testcc.tar.gz
	rm -f ./testcc.tar.gz
	cd ${DEVREP}/engines
	echo "uncompressing testcg.tar.gz..."
	tar -xzf ./testcg.tar.gz
	rm -f ./testcg.tar.gz
fi

#overwrite with newest version of devrep template
        echo "DEVREP directory is updated..."
        rm -rf ${DEVREP}/compilers/${MEISTERCC}
	rm -rf ${DEVREP}/engines/${MEISTERCG}
	rm -rf ${DEVREP}/compilers/testcc.tar.gz
	rm -rf ${DEVREP}/engines/testcg.tar.gz
	mkdir -p ${DEVREP}/compilers
        mkdir -p ${DEVREP}/engines
        cp ${DEVREP_TEMPLATE_LOCATION}/testcc.tar.gz ${DEVREP}/compilers
        cp ${DEVREP_TEMPLATE_LOCATION}/testcg.tar.gz ${DEVREP}/engines
        cd ${DEVREP}/compilers
        echo "uncompressing testcc.tar.gz..."
        tar -xzf ./testcc.tar.gz
        cd ${DEVREP}/engines
        echo "uncompressing testcg.tar.gz..."
        tar -xzf ./testcg.tar.gz


#DEBUG STOP
#exit 1

#make copies of the templates in DEVREP - if there are same dirnames -> remove them
if [ -d "$NEWCG" ] && [ ! -z "$COMPILER_PREFIX" ] ; then
	echo "$NEWCG already exists. Now removed."
	rm -rf ${NEWCG}
fi
if [ -d "$NEWCC" ] && [ ! -z "$COMPILER_PREFIX" ] ; then
	echo "$NEWCC already exists. Now removed."
	rm -rf ${NEWCC}
fi

#extractcc with or without sinas support
if [ "$SINAS" = "yes" ]; then
${COSY_SCRIPTS_DIR}/extractcc_i80pc06_sinas ${COMPILER_PREFIX}cg ${COMPILER_PREFIX}cc
echo "EXTRACTCC - SINAS support enabled..."
else
${COSY_SCRIPTS_DIR}/extractcc_i80pc06 ${COMPILER_PREFIX}cg ${COMPILER_PREFIX}cc
echo "EXTRACTCC - SINAS support disabled"
fi

#delete existing buildtree
if [ -d "$BUILD_TREE" ] && [ ! -z "$BUILD_TREE" ]; then
	rm -rf $BUILD_TREE
	echo "BUILDTREE removed..."
fi

#if [ -d "$BUILDTREE"]; then
#	echo "Buildtree wurde nicht geloescht. Exit Skript..."
#	exit 1
#fi

#create buildtree
mkdir -p $BUILD_TREE

#change user names in components file
sed s/${MEISTERCG}/${COMPILER_PREFIX}cg/ /usr/local/cosy/meistercg/components/${COMPONENT} > ${BUILD_TREE}/tmp1_comp
sed s/${MEISTERCC}/${COMPILER_PREFIX}cc/ ${BUILD_TREE}/tmp1_comp > ${BUILD_TREE}/tmp2_comp
#change the pathnames to devrep components and buildcompiler script - components file can not use Shell-variables
sed s/USER/$(whoami)/ ${BUILD_TREE}/tmp2_comp > ${BUILD_TREE}/components
rm -f ${BUILD_TREE}/tmp*_comp

#switch to buildtree directory and create the buildtree
cd ${BUILD_TREE}
product extract

#use meistercg on SW-Tools files
#mkdir -p $MEISTERCG_DIR # new script works on existent directory
cp ${COSY_SCRIPTS_DIR}/edl/* ${MEISTERCG_DIR}
#check ob 9 Dateien da sind - wc -l Schönheitsoperation
if [ `ls -la ${MEISTERCG_DIR} | wc -l` -lt 9 ]; then  { 
  	echo
  	echo "ERROR: ABORTING COMPILER GENERATION, BECAUSE NECESSARY FILES FOR MEISTERCG ARE MISSING !"
  	echo
  	exit 1
}; else {
	echo
	echo "MEISTERCG Files ready..."
};
fi
 
#change to the directory with *.sw files and *.edl files - base files for meistercg invokation 
cd ${MEISTERCG_DIR}
#test -r ${MEISTERCG_LOCATION}/meistercg || echo 
${MEISTERCG_LOCATION}/meistercg -d . || {
        echo
        echo "ERROR: ABORTING COMPILER GENERATION, BECAUSE MEISTERCG FAILED !"
        echo "CHECK EXPORTED ASIPMEISTER SW-FILES IN YOUR ASIPMEISTER DIRECTORY !"
        exit 1
}

#sed on generated files
${COSY_SCRIPTS_DIR}/i80pc06_after_meistercg.sh

#use cpcgd to copy files in buildtree - components have to be linked to $DEVREP
${COSY_SCRIPTS_DIR}/cpcgd_i80pc06 ${COMPILER_PREFIX}cg ${COMPILER_PREFIX}cc
