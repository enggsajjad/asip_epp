dnl Process this file with autoconf to produce a configure script.
AC_PREREQ(2.59)dnl
AC_INIT(Makefile.in)
AC_CONFIG_HEADER(config.h:config.in)

sinclude(../common/aclocal.m4)

# Bugs in autoconf 2.59 break the call to SIM_AC_COMMON, hack around
# it by inlining the macro's contents.
sinclude(../common/common.m4)

dnl Options available in this module
SIM_AC_OPTION_INLINE()
SIM_AC_OPTION_ALIGNMENT(NONSTRICT_ALIGNMENT)
SIM_AC_OPTION_HOSTENDIAN
SIM_AC_OPTION_WARNINGS
SIM_AC_OPTION_RESERVED_BITS(1)

# DEPRECATED
#
# Instead of defining a `subtarget' macro, code should be checking
# the value of {STATE,CPU}_ARCHITECTURE to identify the architecture
# in question.
#
case "${target}" in
  brownie3264vr*-*-*)	SIM_SUBTARGET="-DTARGET_ENABLE_FR=1" ;;
  brownie32*tx39*)           SIM_SUBTARGET="-DSUBTARGET_R3900=1";;
  brownie32isa32*-*-*)       SIM_SUBTARGET="-DTARGET_ENABLE_FR=1";;
  brownie32isa64*-*-*)       SIM_SUBTARGET="-DTARGET_ENABLE_FR=1";;
  *)                    SIM_SUBTARGET="";;
esac
AC_SUBST(SIM_SUBTARGET)



#
# Select the byte order of the target
#
brownie32_endian=
default_endian=
case "${target}" in
  brownie3264el*-*-*)	brownie32_endian=LITTLE_ENDIAN ;;
  brownie3264vr*el-*-*)      default_endian=LITTLE_ENDIAN ;;
  brownie3264*-*-*)          default_endian=BIG_ENDIAN ;;
  brownie3216*-*-*)          default_endian=BIG_ENDIAN ;;
  brownie32isa32*-*-*)       default_endian=BIG_ENDIAN ;;
  brownie32isa64*-*-*)       default_endian=BIG_ENDIAN ;;
  brownie32*-*-*)            default_endian=BIG_ENDIAN ;;
  *)                    default_endian=BIG_ENDIAN ;;
esac
SIM_AC_OPTION_ENDIAN($brownie32_endian,$default_endian)



#
# Select the bitsize of the target
#
brownie32_addr_bitsize=
case "${target}" in
  brownie3264*-*-*)          brownie32_bitsize=64 ; brownie32_msb=63 ;;
  brownie3216*-*-*)          brownie32_bitsize=64 ; brownie32_msb=63 ;;
  brownie32isa32*-*-*)       brownie32_bitsize=32 ; brownie32_msb=31 ;;
  brownie32isa64*-*-*)       brownie32_bitsize=64 ; brownie32_msb=63 ;;
  brownie32*-*-*)            brownie32_bitsize=32 ; brownie32_msb=31 ;;
  *)                    brownie32_bitsize=64 ; brownie32_msb=63 ;;
esac
SIM_AC_OPTION_BITSIZE($brownie32_bitsize,$brownie32_msb,$brownie32_addr_bitsize)



#
# Select the floating hardware support of the target
#
brownie32_fpu=HARDWARE_FLOATING_POINT
brownie32_fpu_bitsize=
case "${target}" in
  brownie32*tx39*)		brownie32_fpu=HARD_FLOATING_POINT
			brownie32_fpu_bitsize=32
			;;
  brownie3264*-*-*)          brownie32_fpu=HARD_FLOATING_POINT ;;
  brownie3216*-*-*)          brownie32_fpu=HARD_FLOATING_POINT ;;
  brownie32isa32*-*-*)       brownie32_fpu=HARD_FLOATING_POINT ; brownie32_fpu_bitsize=64 ;;
  brownie32isa64*-*-*)       brownie32_fpu=HARD_FLOATING_POINT ; brownie32_fpu_bitsize=64 ;;
  brownie32*-*-*)            brownie32_fpu=HARD_FLOATING_POINT ; brownie32_fpu_bitsize=32 ;;
  *)                    brownie32_fpu=HARD_FLOATING_POINT ;;
esac
SIM_AC_OPTION_FLOAT($brownie32_fpu,$brownie32_fpu_bitsize)



#
# Select the level of SMP support
#
case "${target}" in
  *)                    brownie32_smp=0 ;;
esac
SIM_AC_OPTION_SMP($brownie32_smp)



#
# Select the IGEN architecture
#
sim_gen=IGEN
sim_igen_machine="-M brownie32_std"
sim_igen_filter="32,f"
sim_mach_default="brownie32_std"

case "${target}" in
  brownie32*std*)		sim_gen=IGEN
			sim_igen_filter="32,f"
			sim_igen_machine="-M brownie32_std"
			;;
esac

# The MULTI generator can combine several simulation engines into one.
# executable.  A configuration which uses the MULTI should set two
# variables: ${sim_multi_configs} and ${sim_multi_default}.
#
# ${sim_multi_configs} is the list of engines to build.  Each
# space-separated entry has the form NAME:MACHINE:FILTER:BFDMACHS,
# where:
#
# - NAME is a C-compatible prefix for the engine,
# - MACHINE is a -M argument,
# - FILTER is a -F argument, and
# - BFDMACHS is a comma-separated list of bfd machines that the
#     simulator can run.
#
# Each entry will have a separate simulation engine whose prefix is
# m32<NAME>.  If the machine list includes "brownie3216", there will also
# be a brownie3216 engine, prefix m16<NAME>.  The brownie3216 engine will be
# generated using the same machine list as the 32-bit version,
# but the filter will be "16" instead of FILTER.
#
# The simulator compares the bfd mach against BFDMACHS to decide
# which engine to use.  Entries in BFDMACHS should be bfd_mach
# values with "bfd_mach_" removed.  ${sim_multi_default} says
# which entry should be the default.
if test ${sim_gen} = MULTI; then

  # Simple sanity check.
  if test -z "${sim_multi_configs}" || test -z "${sim_multi_default}"; then
    AC_MSG_ERROR(Error in configure.in: MULTI simulator not set up correctly)
  fi

  # Start in a known state.
  rm -f multi-include.h multi-run.c
  sim_multi_flags=
  sim_multi_src=
  sim_multi_obj=multi-run.o
  sim_multi_igen_configs=
  sim_seen_default=no

  cat << __EOF__ > multi-run.c
/* Main entry point for MULTI simulators.
   Copyright (C) 2003 Free Software Foundation, Inc.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.

   --

   This file was generated by sim/brownie32/configure.  */

#include "sim-main.h"
#include "multi-include.h"

#define SD sd
#define CPU cpu

void
sim_engine_run (SIM_DESC sd,
		int next_cpu_nr,
		int nr_cpus,
		int signal) /* ignore */
{
  int mach;

  if (STATE_ARCHITECTURE (sd) == NULL)
    mach = bfd_mach_${sim_multi_default};
  else
    mach = STATE_ARCHITECTURE (SD)->mach;

  switch (mach)
    {
__EOF__

  for fc in ${sim_multi_configs}; do

    # Split up the entry.  ${c} contains the first three elements.
    # Note: outer sqaure brackets are m4 quotes.
    c=`echo ${fc} | sed ['s/:[^:]*$//']`
    bfdmachs=`echo ${fc} | sed 's/.*://'`
    name=`echo ${c} | sed 's/:.*//'`
    machine=`echo ${c} | sed 's/.*:\(.*\):.*/\1/'`
    filter=`echo ${c} | sed 's/.*://'`

    # Build the following lists:
    #
    #   sim_multi_flags: all -M and -F flags used by the simulator
    #   sim_multi_src: all makefile-generated source files
    #   sim_multi_obj: the objects for ${sim_multi_src}
    #   sim_multi_igen_configs: igen configuration strings.
    #
    # Each entry in ${sim_multi_igen_configs} is a prefix (m32
    # or m16) followed by the NAME, MACHINE and FILTER part of
    # the ${sim_multi_configs} entry.
    sim_multi_flags="${sim_multi_flags} -F ${filter} -M ${machine}"

    # Check whether brownie3216 handling is needed.
    case ${c} in
      *:*brownie3216*:*)
	# Run igen twice, once for normal mode and once for brownie3216.
	ws="m32 m16"

	# The top-level function for the brownie3216 simulator is
	# in a file m16${name}_run.c, generated by the
	# tmp-run-multi Makefile rule.
	sim_multi_src="${sim_multi_src} m16${name}_run.c"
	sim_multi_obj="${sim_multi_obj} m16${name}_run.o"
	sim_multi_flags="${sim_multi_flags} -F 16"
	;;
      *)
	ws=m32
	;;
    esac

    # Now add the list of igen-generated files to ${sim_multi_src}
    # and ${sim_multi_obj}.
    for w in ${ws}; do
      for base in engine icache idecode model semantics support; do
	sim_multi_src="${sim_multi_src} ${w}${name}_${base}.c"
	sim_multi_src="${sim_multi_src} ${w}${name}_${base}.h"
	sim_multi_obj="${sim_multi_obj} ${w}${name}_${base}.o"
      done
      sim_multi_igen_configs="${sim_multi_igen_configs} ${w}${c}"
    done

    # Add an include for the engine.h file.  This file declares the
    # top-level foo_engine_run() function.
    echo "#include \"${w}${name}_engine.h\"" >> multi-include.h

    # Add case statements for this engine to sim_engine_run().
    for mach in `echo ${bfdmachs} | sed 's/,/ /g'`; do
      echo "    case bfd_mach_${mach}:" >> multi-run.c
      if test ${mach} = ${sim_multi_default}; then
	echo "    default:" >> multi-run.c
	sim_seen_default=yes
      fi
    done
    echo "      ${w}${name}_engine_run (sd, next_cpu_nr, nr_cpus, signal);" \
      >> multi-run.c
    echo "      break;" >> multi-run.c
  done

  # Check whether we added a 'default:' label.
  if test ${sim_seen_default} = no; then
    AC_MSG_ERROR(Error in configure.in: \${sim_multi_configs} doesn't have an entry for \${sim_multi_default})
  fi

  cat << __EOF__ >> multi-run.c
    }
}

int
brownie32_mach_multi (SIM_DESC sd)
{
  if (STATE_ARCHITECTURE (sd) == NULL)
    return bfd_mach_${sim_multi_default};

  switch (STATE_ARCHITECTURE (SD)->mach)
    {
__EOF__

  # Add case statements for this engine to brownie32_mach_multi().
  for fc in ${sim_multi_configs}; do

    # Split up the entry.  ${c} contains the first three elements.
    # Note: outer sqaure brackets are m4 quotes.
    c=`echo ${fc} | sed ['s/:[^:]*$//']`
    bfdmachs=`echo ${fc} | sed 's/.*://'`

    for mach in `echo ${bfdmachs} | sed 's/,/ /g'`; do
      echo "    case bfd_mach_${mach}:" >> multi-run.c
    done
  done

  cat << __EOF__ >> multi-run.c
      return (STATE_ARCHITECTURE (SD)->mach);
    default:
      return bfd_mach_${sim_multi_default};
    }
}
__EOF__

  SIM_SUBTARGET="$SIM_SUBTARGET -DBROWNIE32_MACH_MULTI"
else
  # For clean-extra
  sim_multi_src=doesnt-exist.c

  if test x"${sim_mach_default}" = x""; then
    AC_MSG_ERROR(Error in configure.in: \${sim_mach_default} not defined)
  fi
  SIM_SUBTARGET="$SIM_SUBTARGET -DBROWNIE32_MACH_DEFAULT=bfd_mach_${sim_mach_default}"
fi
sim_igen_flags="-F ${sim_igen_filter} ${sim_igen_machine} ${sim_igen_smp}"
sim_m16_flags=" -F ${sim_m16_filter}  ${sim_m16_machine}  ${sim_igen_smp}"
AC_SUBST(sim_igen_flags)
AC_SUBST(sim_m16_flags)
AC_SUBST(sim_gen)
AC_SUBST(sim_multi_flags)
AC_SUBST(sim_multi_igen_configs)
AC_SUBST(sim_multi_src)
AC_SUBST(sim_multi_obj)


#
# Add simulated hardware devices
#
hw_enabled=no
case "${target}" in
  brownie32*tx39*)
	hw_enabled=yes
	hw_extra_devices="tx3904cpu tx3904irc tx3904tmr tx3904sio" 
	brownie32_extra_objs="dv-sockser.o"
	SIM_SUBTARGET="$SIM_SUBTARGET -DTARGET_TX3904=1"
	;;
  *)
	brownie32_extra_objs="" 
	;;
esac
SIM_AC_OPTION_HARDWARE($hw_enabled,$hw_devices,$hw_extra_devices)
AC_SUBST(brownie32_extra_objs)


# Choose simulator engine
case "${target}" in
  *)    brownie32_igen_engine="engine.o"
	;;
esac
AC_SUBST(brownie32_igen_engine)


AC_PATH_X
brownie32_extra_libs=""
AC_SUBST(brownie32_extra_libs)

AC_CHECK_HEADERS(string.h strings.h stdlib.h stdlib.h)
AC_CHECK_LIB(m, fabs)
AC_CHECK_FUNCS(aint anint sqrt)

SIM_AC_OUTPUT
