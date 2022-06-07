# Target: BROWNIE32 running NetBSD
TDEPFILES= brownie32-tdep.o brownie32nbsd-tdep.o corelow.o solib.o solib-svr4.o \
	nbsd-tdep.o
DEPRECATED_TM_FILE= tm-nbsd.h

SIM_OBS = remote-sim.o
SIM = ../sim/brownie32/libsim.a
