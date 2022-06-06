# Skript zum LOKALEN Entpacken des TGZ Archivs auf der i80pc06 

# Get environment data
echo "loading ... ~/env_settings" 
source ~/env_settings

# unpack tar.gz file
echo "unpacking tgz file"
cd ${MEISTER_DIR}
echo "tar -xzpf ${COMPILER_NAME}_i80pc06.tgz"
tar -xzpf ${COMPILER_NAME}_i80pc06.tgz 2> /dev/null
echo "deleting ... ${COMPILER_NAME}_i80pc06.tgz"
rm ${COMPILER_NAME}_i80pc06.tgz

# make components file dependent to logged user



 
