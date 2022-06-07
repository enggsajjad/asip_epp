# Target: Linux/BROWNIE32
TDEPFILES= brownie32-tdep.o brownie32-linux-tdep.o corelow.o \
	solib.o solib-svr4.o symfile-mem.o
DEPRECATED_TM_FILE= tm-linux.h

SIM_OBS = remote-sim.o
SIM = ../sim/brownie32/libsim.a
