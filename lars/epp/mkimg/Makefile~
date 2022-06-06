
# Shell commands
SHELL := /bin/bash 
RM := /bin/rm
MKDIR := /bin/mkdir
MV := /bin/mv


# Xilinx Environment
ARCH := $(shell /usr/bin/getconf LONG_BIT)
ifeq ($(ARCH),64)
	XILINX_SETUP=/home/adm/xilinx_14.2_64bit.setup
else
	XILINX_SETUP=/home/adm/xilinx_14.2_32bit.setup
endif


# Application Settings, Directories
STACK_START_FPGA := "0xEFFC" # BRAM Hardware
#STACK_START_FPGA := "0xFFFFC" # SRAM Hardware
STACK_START_SIM := "0xFFFFC" # dlxsim

FPGA_DIR := BUILD_FPGA
SIM_DIR := BUILD_SIM


# Application name for dlxsim and bitstream
PWD := $(shell pwd)
APPLICATION_NAME := $(lastword $(subst /, ,$(PWD)) )
MEM_FILE := $(FPGA_DIR)/$(APPLICATION_NAME).mem
BLOCKRAM_FILE := ${ISE_DIR}/blockram_bd.bmm
BITSTREAM_IN := ${ISE_DIR}/dlx_toplevel.bit
BITSTREAM_OUT := $(FPGA_DIR)/$(APPLICATION_NAME).bit


# All of the sources participating in the build are defined here
SIM_C_OBJS := $(patsubst %,$(SIM_DIR)/%,$(patsubst %.c,%.asm,$(wildcard *.c)))
SIM_S_OBJS := $(patsubst %,$(SIM_DIR)/%,$(patsubst %.s,%.asm,$(wildcard *.s)))
FPGA_C_OBJS := $(patsubst %,$(FPGA_DIR)/%,$(patsubst %.c,%.asm,$(wildcard *.c)))
FPGA_S_OBJS := $(patsubst %,$(FPGA_DIR)/%,$(patsubst %.s,%.asm,$(wildcard *.s)))


# Parameters that are passed to the tools/scripts that are called by this Makefile
DLXSIM_PARAM=-da0 -pd4
COSY_PARAM=
NUMBER_OF_HW_NOPS=5


#################################################
# Main compile function for SIM and FPGA
#################################################
# $(1) = Filename
# parameters for compile.sh
# ADD_NOPS < 1 means: don't call the corresponding script at all
# MAX_ALLOWED_SUCCESSIVE_NOPS < 0 means: don't call the corresponding script at all
# MAX_ALLOWED_SUCCESSIVE_NOPS = 0 means: only allow 1 nop after branches (delay slot)
compile = \
		echo -----------------------------------------------; \
		echo Compiling file \"$(1)\" for target $(TARGET):; \
		echo -----------------------------------------------; \
		if ! test -r ${PROJECT_DIR}/${COMPILER_NAME}; then \
			echo; \
			echo ERROR: File "${PROJECT_DIR}/${COMPILER_NAME}" not found!; \
			echo        You need to create the CoSy compiler before compiling something. Or something is wrong in the env_settings; \
			echo; \
			exit 1; \
		fi; \
		$(RM) -f $(3)/$(patsubst %.c,%,$<).*; \
		echo TARGET = $(TARGET); \
		if [ "$(TARGET)" = "SIMULATION" ]; then \
			COMPILER_TEMP_DIR=$(BUILD_DIR) \
			ADD_NOPS=0 \
			MAX_ALLOWED_SUCCESSIVE_NOPS=3 \
			ENABLE_FIX_STALL_INSTRUCTIONS=0 \
			ENABLE_ADD_NOPS_AFTER_LABLES=0 \
			ENABLE_FIND_BYTE_ACCESS=1 \
			ENABLE_FIX_LOAD_STORE_INSTRUCTIONS=0 \
			ENABLE_FIND_DATA_DEPENDENCY=1 \
			ENABLE_FIND_COMPARE_BRANCH_PROBLEM=1 \
			COSY_PARAM=$(COSY_PARAM) \
			${MKIMG_DIR}/compile.sh "$<"; \
		else \
			COMPILER_TEMP_DIR=$(BUILD_DIR) \
			ADD_NOPS=$(NUMBER_OF_HW_NOPS) \
			MAX_ALLOWED_SUCCESSIVE_NOPS=$(NUMBER_OF_HW_NOPS) \
			ENABLE_FIX_STALL_INSTRUCTIONS=0 \
			ENABLE_ADD_NOPS_AFTER_LABLES=0 \
			ENABLE_FIND_BYTE_ACCESS=1 \
			ENABLE_FIX_LOAD_STORE_INSTRUCTIONS=0 \
			ENABLE_FIND_DATA_DEPENDENCY=1 \
			ENABLE_FIND_COMPARE_BRANCH_PROBLEM=1 \
			COSY_PARAM=$(COSY_PARAM) \
			${MKIMG_DIR}/compile.sh "$<"; \
		fi; \
		echo -----------------------------------------------; \
		echo FINISHED COMPILING file \"$<\" for target $(TARGET).; \
		echo -----------------------------------------------; \
		echo;



#################################################
# Main assemble function for SIM and FPGA
#################################################
assemble = \
		echo -----------------------------------------------; \
		echo Assembling/Linking for target $(TARGET):; \
		echo -----------------------------------------------; \
		if ! test -r ${MEISTER_DIR}/${CPU_NAME}.des; then \
			echo; \
			echo ERROR: File \"${MEISTER_DIR}/${CPU_NAME}.des\" not found!; \
			echo        Maybe you need to generate that file first with ASIP Meister or something is wrong in the env_settings; \
			echo; \
			exit 1; \
		fi; \
		if ! test -r ${PROJECT_DIR}/AssemblerTypes.inc; then \
			echo; \
			echo ERROR: File \"${PROJECT_DIR}/AssemblerTypes.inc\" not found!; \
			echo        That file should be part of the provided template directory structure. Or something is wrong in the env_settings; \
			echo; \
			exit 1; \
		fi; \
		if ! test -r ${PROJECT_DIR}/AssemblerInstructions.inc; then \
			echo; \
			echo ERROR: File \"${PROJECT_DIR}/AssemblerInstructions.inc\" not found!; \
			echo        That file should be part of the provided template directory structure. Or something is wrong in the env_settings; \
			echo; \
			exit 1; \
		fi; \
		COMPILER_TEMP_DIR=$(BUILD_DIR) \
			APPLICATION_NAME=$(APPLICATION_NAME) \
			STACK_START=$(STACK_START) \
			FULL_ASSEMBLE=1 \
			${MKIMG_DIR}/assemble.sh "$<" \
		echo -----------------------------------------------; \
		echo FINISHED ASSEMBLING/LINKING for target $(TARGET).; \
		echo -----------------------------------------------; \
		echo;



#################################################
.PHONY: help
help:
	@echo "/--------"
	@echo "| USAGE:"
	@echo "\--------"
	@echo "'make sim':    compile for dlxsim/Modelsim"
	@echo "'make dlxsim': compile for dlxsim and directly start simulation"
	@echo "'make fpga':   compile for FPGA and update bitstream"
	@echo "'make upload': upload the existing bitstream to the FPGA (note: this command does not generate a new bitstream)"
	@echo "'make all':    compile for dlxsim/Modelsim and for FPGA"
	@echo "'make clean':  delete the BUILD directories"
	@echo
	@echo "/---------------------"
	@echo "| PASSING PARAMETERS:"
	@echo "\---------------------"
	@echo "'DLXSIM_PARAM=...'"
	@echo "  Example: 'make dlxsim DLXSIM_PARAM=\"-da0 -pd4\"'"
	@echo "  Note:    These are the default parameters. Don't forget the double high-commas (i.e.: \") when passing multiple parameters."
	@echo "'COSY_PARAM=...'"
	@echo "  Example: 'make sim COSY_PARAM=-O3'"
	@echo "  Example: 'make dlxsim COSY_PARAM=-O3 DLXSIM_PARAM=\"-da0 -pd4\"'"
	@echo "  Note:    If you want to enfore re-compilation with different parameters then you have to 'make clean' to make sure that all files are re-compiled"


#################################################
.PHONY: sim
sim:  $(SIM_DIR)/TestData.IM  $(SIM_DIR)/TestData.DM  $(SIM_DIR)/$(APPLICATION_NAME).dlxsim


#################################################
.PHONY: fpga
fpga:  $(FPGA_DIR)/$(APPLICATION_NAME).bit


#################################################
.PHONY: dlxsim
dlxsim:  $(SIM_DIR)/$(APPLICATION_NAME).dlxsim
	@echo '-----------------------------------------------'
	@echo 'Starting dlxsim:'
	@echo '-----------------------------------------------'
	$(DLXSIM_DIR)/dlxsim -f$(SIM_DIR)/$(APPLICATION_NAME).dlxsim $(DLXSIM_PARAM)


#################################################
.PHONY: upload
upload:	 |  $(FPGA_DIR)
	@echo '-----------------------------------------------'
	@echo 'Uploading Bitstream "$(FPGA_DIR)/$(APPLICATION_NAME).bit" to FPGA:'
	@echo '-----------------------------------------------'
	@if ! test -r $(FPGA_DIR)/$(APPLICATION_NAME).bit; then \
		echo; \
		echo ERROR: File \"$(FPGA_DIR)/$(APPLICATION_NAME).bit\" not readable!; \
		echo        You need to run \"make fpga\" first to get a bitstream; \
		echo; \
		exit 1; \
	fi;
	@echo 'setMode -bs' > $(FPGA_DIR)/impact.cmd
	@echo 'setCable -port auto' >> $(FPGA_DIR)/impact.cmd
	@echo 'Identify -inferir' >> $(FPGA_DIR)/impact.cmd
	@echo 'identifyMPM' >> $(FPGA_DIR)/impact.cmd
	@echo 'assignFile -p 5 -file "$(APPLICATION_NAME).bit"' >> $(FPGA_DIR)/impact.cmd
	@echo 'Program -p 5' >> $(FPGA_DIR)/impact.cmd
	@echo 'quit' >> $(FPGA_DIR)/impact.cmd
	@. $(XILINX_SETUP) && cd $(FPGA_DIR) && impact -batch impact.cmd


#################################################
.PHONY: all
all:	sim fpga


#################################################
.PHONY: clean
clean:
	$(RM) -rf $(SIM_DIR) $(FPGA_DIR)





#################################################
$(FPGA_DIR)/$(APPLICATION_NAME).bit:  $(MEM_FILE)  $(BLOCKRAM_FILE)  $(BITSTREAM_IN)
	@$(RM) -f $(BITSTREAM_OUT)
	@echo -----------------------------------------------
	@echo Updating BIT file \"$(BITSTREAM_OUT)\" for target FPGA:
	@echo -----------------------------------------------
	@if ! test -r $(BLOCKRAM_FILE); then \
		echo; \
		echo ERROR: File \"$(BLOCKRAM_FILE)\" not readable!; \
		echo        You need to synthesize/implement the ISE project before updating the bit file. Or something is wrong in the env_settings; \
		echo; \
		exit 1; \
	fi;
	@if ! test -r $(BITSTREAM_IN); then \
		echo; \
		echo ERROR: File \"$(BITSTREAM_IN)\" not readable!; \
		echo        You need to synthesize/implement the ISE project before updating the bit file. Or something is wrong in the env_settings; \
		echo; \
		exit 1; \
	fi;
	@. $(XILINX_SETUP) && data2mem -bm ${BLOCKRAM_FILE} -bd ${MEM_FILE} -bt ${BITSTREAM_IN} -o b ${BITSTREAM_OUT}
	@if ! test -r $(BITSTREAM_OUT); then \
		echo; \
		echo ERROR: 'data2mem' returned an error!; \
		echo; \
		exit 1; \
	fi;
	@echo DONE
	@echo



#################################################
$(MEM_FILE):  $(FPGA_DIR)/TestData.IM  $(FPGA_DIR)/TestData.DM
	@$(RM) -f $(MEM_FILE)
	@echo
	@echo -----------------------------------------------
	@echo Creating MEM file \"${MEM_FILE}\" for target FPGA:
	@echo -----------------------------------------------
	@${MKIMG_DIR}/image2mem.pl $(FPGA_DIR)/TestData.IM $(FPGA_DIR)/TestData.DM > ${MEM_FILE} || { \
		echo; \
		echo ERROR: Aborting  because 'image2mem.pl' returned an error!; \
		echo; \
		exit 1; \
	}
	@echo DONE
	@echo



#################################################
$(SIM_DIR)/TestData.IM $(SIM_DIR)/TestData.DM:  TARGET=SIMULATION
$(SIM_DIR)/TestData.IM $(SIM_DIR)/TestData.DM:  BUILD_DIR=$(SIM_DIR)
$(SIM_DIR)/TestData.IM $(SIM_DIR)/TestData.DM:  STACK_START=$(STACK_START_SIM)
$(SIM_DIR)/TestData.IM $(SIM_DIR)/TestData.DM:  $(SIM_C_OBJS)  $(SIM_S_OBJS)  ${MEISTER_DIR}/${CPU_NAME}.des  ${PROJECT_DIR}/AssemblerTypes.inc  ${PROJECT_DIR}/AssemblerInstructions.inc
	@$(call assemble)



#################################################
$(FPGA_DIR)/TestData.IM $(FPGA_DIR)/TestData.DM:  TARGET=FPGA
$(FPGA_DIR)/TestData.IM $(FPGA_DIR)/TestData.DM:  BUILD_DIR=$(FPGA_DIR)
$(FPGA_DIR)/TestData.IM $(FPGA_DIR)/TestData.DM:  STACK_START=$(STACK_START_FPGA)
$(FPGA_DIR)/TestData.IM $(FPGA_DIR)/TestData.DM:  $(FPGA_C_OBJS)  $(FPGA_S_OBJS)  ${MEISTER_DIR}/${CPU_NAME}.des  ${PROJECT_DIR}/AssemblerTypes.inc  ${PROJECT_DIR}/AssemblerInstructions.inc
	@$(call assemble)



#################################################
$(SIM_DIR)/$(APPLICATION_NAME).dlxsim:  TARGET=SIMULATION
$(SIM_DIR)/$(APPLICATION_NAME).dlxsim:  BUILD_DIR=$(SIM_DIR)
$(SIM_DIR)/$(APPLICATION_NAME).dlxsim:  STACK_START=$(STACK_START_SIM)
$(SIM_DIR)/$(APPLICATION_NAME).dlxsim:  $(SIM_C_OBJS)  $(SIM_S_OBJS)
	@echo '-----------------------------------------------'
	@echo 'Assembling/Linking for target $(TARGET):'
	@echo '-----------------------------------------------'
	@COMPILER_TEMP_DIR=$(BUILD_DIR) \
		APPLICATION_NAME=$(APPLICATION_NAME) \
		STACK_START=$(STACK_START) \
		FULL_ASSEMBLE=0 \
		${MKIMG_DIR}/assemble.sh "$<"
	@echo '-----------------------------------------------'
	@echo 'FINISHED ASSEMBLING/LINKING for target $(TARGET).'
	@echo '-----------------------------------------------'
	@echo ' '
	@echo ' '



#################################################
# Creating all .asm files from C-source files for target: SIM
$(SIM_C_OBJS): $(SIM_DIR)/%.asm:  %.c  $(wildcard *.h)  ../../env_settings  ${PROJECT_DIR}/${COMPILER_NAME}  |  $(SIM_DIR)
	@$(call compile,$<)



#################################################
# Creating all .asm files for target: FPGA
$(FPGA_C_OBJS): $(FPGA_DIR)/%.asm:  %.c  $(wildcard *.h)  ../../env_settings  ${PROJECT_DIR}/${COMPILER_NAME}  |  $(FPGA_DIR)
	@$(call compile,$<)



#################################################
# Creating all .asm files from S-source files for target: SIM
$(SIM_S_OBJS): $(SIM_DIR)/%.asm:  %.s  ../../env_settings  |  $(SIM_DIR)
	@echo -----------------------------------------------
	@echo Transforming file \"$<\" for target $(TARGET).
	@echo -----------------------------------------------
	@$(RM) -f $(SIM_DIR)/$(patsubst %.s,%,$<).*
	@ # Rename the local labels (e.g. L1, L2, ...), which appear in the assembly-file to something unique
	@${MKIMG_DIR}/renameLabels.pl $< $(patsubst %.s,%,$<) > $@ || { \
		echo; \
		echo "ERROR: ABORTING BECAUSE \"renameLabels.pl\" RETURNED AN ERROR !!"; \
		echo; \
		exit 1; \
	}
	@dos2unix -q $@



#################################################
# Creating all .asm files from S-source files for target: FPGA
$(FPGA_S_OBJS): $(FPGA_DIR)/%.asm:  %.s  ../../env_settings  |  $(FPGA_DIR)
	@echo -----------------------------------------------
	@echo Transforming file \"$<\" for target $(TARGET).
	@echo -----------------------------------------------
	@$(RM) -f $(FPGA_DIR)/$(patsubst %.s,%,$<).*
	@ # Add a NOP after each label in the text-section (in HW a jump sometimes skipps the first instruction after the label)
	@${MKIMG_DIR}/addNopAfterLabels.pl $< > $(FPGA_DIR)/$(patsubst %.s,%.s2,$<) || { \
		echo; \
		echo "ERROR: ABORTING BECAUSE \"addNopAfterLabels.pl\" RETURNED AN ERROR !!"; \
		echo; \
		exit 1; \
	}
	@ # Add NOP instructions (only needed for Hardware).
	@${MKIMG_DIR}/addNops.pl $(FPGA_DIR)/$(patsubst %.s,%.s2,$<) $(NUMBER_OF_HW_NOPS) > $(FPGA_DIR)/$(patsubst %.s,%.s3,$<) || { \
		echo; \
		echo "ERROR: ABORTING BECAUSE \"addNops.pl\" RETURNED AN ERROR !!"; \
		echo; \
		exit 1; \
	}
	@ # Remove superfluous NOP instructions.
	@${MKIMG_DIR}/reduceNOPs.pl $(FPGA_DIR)/$(patsubst %.s,%.s3,$<) $(NUMBER_OF_HW_NOPS) > $(FPGA_DIR)/$(patsubst %.s,%.s4,$<) || { \
		echo; \
		echo "ERROR: ABORTING \"compile.sh\", BECAUSE \"reduceNOPs.pl\" RETURNED AN ERROR !!"; \
		echo; \
		exit 1; \
	}
	@ # Rename the local labels (e.g. L1, L2, ...), which appear in the assembly-file to something unique
	@${MKIMG_DIR}/renameLabels.pl $(FPGA_DIR)/$(patsubst %.s,%.s4,$<) $(patsubst %.s,%,$<) > $@ || { \
		echo; \
		echo "ERROR: ABORTING BECAUSE \"renameLabels.pl\" RETURNED AN ERROR !!"; \
		mv $@ $(patsubst %.asm,%.asm.error,$@); \
		echo; \
		exit 1; \
	}
	@echo "Rename local labels:            done"
	@dos2unix -q $@



#################################################
# Creating BUILD directories for SIM and FPGA
$(SIM_DIR):
	@$(MKDIR) $(SIM_DIR)
$(FPGA_DIR):
	@$(MKDIR) $(FPGA_DIR)



#################################################
# These are dummy rules that allows us to depend on the actuality of these files
# (for assembling/linking) without actually specifying how to create them
${MEISTER_DIR}/${CPU_NAME}.des:
${PROJECT_DIR}/AssemblerTypes.inc:
${PROJECT_DIR}/AssemblerInstructions.inc:
${PROJECT_DIR}/${COMPILER_NAME}:
${BLOCKRAM_FILE}:
${BITSTREAM_IN}:


