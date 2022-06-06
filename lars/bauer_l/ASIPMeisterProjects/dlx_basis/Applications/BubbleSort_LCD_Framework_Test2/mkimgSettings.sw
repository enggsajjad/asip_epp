
#####################################################################
# Make sure, that there are no blanks before or after the '=' sign !
#####################################################################

USER_PROFILE=0

HARDWARE_PROFILE=0


if [ ${USER_PROFILE} == 1 ]; then
    STACK_START="0xFFFFC"

    ADD_NOPS=0  # smaller than 1 means: don't call the corresponding script at all

    MAX_ALLOWED_SUCCESSIVE_NOPS=3  # smaller than 0 means: don't call the corresponding script at all
    
    ENABLE_FIX_STALL_INSTRUCTIONS=0
    
    ENABLE_ADD_NOPS_AFTER_LABLES=0
else


#####################################################################
# Default Settings for Hardware/dlxsim execution
#   (for manual changes use the USER_PROFILE)
#####################################################################
  if [ ${HARDWARE_PROFILE} == 1 ]; then
    STACK_START="0x3BFC"	# Hardware
    ADD_NOPS=3  # smaller than 1 means: don't call the corresponding script at all
    MAX_ALLOWED_SUCCESSIVE_NOPS=3  # smaller than 0 means: don't call the corresponding script at all
    ENABLE_FIX_STALL_INSTRUCTIONS=1
    ENABLE_ADD_NOPS_AFTER_LABLES=1
    ENABLE_FIX_LOAD_STORE_INSTRUCTIONS=1
    ENABLE_FIND_DATA_DEPENDENCY=1
  else
    STACK_START="0xFFFFC"	# dlxsim
    ADD_NOPS=0  # smaller than 1 means: don't call the corresponding script at all
    MAX_ALLOWED_SUCCESSIVE_NOPS=3  # smaller than 0 means: don't call the corresponding script at all
    ENABLE_FIX_STALL_INSTRUCTIONS=0
    ENABLE_ADD_NOPS_AFTER_LABLES=0
    ENABLE_FIX_LOAD_STORE_INSTRUCTIONS=1
    ENABLE_FIND_DATA_DEPENDENCY=1
  fi;
fi;

