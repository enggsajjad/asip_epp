
----------------------------------------------------------------
-- 
-- Created by the Synopsys Library Compiler 2002.05
-- FILENAME     :    VCOMPONENT.vhd
-- FILE CONTENTS:    VITAL Component Package
-- DATE CREATED :    Mon Oct 20 17:30:54 2003
-- 
-- LIBRARY      :    tcb015ghd
-- DATE ENTERED :    Wed Oct  1 15:54:49 CST 2003 
-- REVISION     :    221
-- TECHNOLOGY   :    cmos
-- TIME SCALE   :    1 ns
-- LOGIC SYSTEM :    IEEE-1164
-- NOTES        :    
--                   Copyright TSMC
-- HISTORY      :
-- 
----------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
-- synopsys translate_off

library IEEE;
use IEEE.VITAL_Timing.all;
-- synopsys translate_on

package VCOMPONENTS is

constant DefaultTimingChecksOn : Boolean := True;
constant DefaultXon : Boolean := False;
constant DefaultMsgOn : Boolean := True;



----- Component AN2D0 -----
component AN2D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.040 ns, 0.044 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.043 ns, 0.051 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component AN2D1 -----
component AN2D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.040 ns, 0.038 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.042 ns, 0.043 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component AN2D2 -----
component AN2D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.037 ns, 0.033 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.039 ns, 0.038 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component AN2D4 -----
component AN2D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.035 ns, 0.032 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.037 ns, 0.035 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component AN2D8 -----
component AN2D8
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.040 ns, 0.039 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.042 ns, 0.041 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component AN3D0 -----
component AN3D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.051 ns, 0.036 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.055 ns, 0.041 ns);
      tpd_A3_Z                       :	VitalDelayType01 := (0.055 ns, 0.044 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component AN3D1 -----
component AN3D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.054 ns, 0.042 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.058 ns, 0.047 ns);
      tpd_A3_Z                       :	VitalDelayType01 := (0.061 ns, 0.050 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component AN3D2 -----
component AN3D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.047 ns, 0.043 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.049 ns, 0.050 ns);
      tpd_A3_Z                       :	VitalDelayType01 := (0.057 ns, 0.054 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component AN3D4 -----
component AN3D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.049 ns, 0.039 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.054 ns, 0.038 ns);
      tpd_A3_Z                       :	VitalDelayType01 := (0.053 ns, 0.041 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component AN3D8 -----
component AN3D8
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.053 ns, 0.045 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.056 ns, 0.056 ns);
      tpd_A3_Z                       :	VitalDelayType01 := (0.058 ns, 0.054 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component AN4D0 -----
component AN4D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.061 ns, 0.038 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.069 ns, 0.043 ns);
      tpd_A3_Z                       :	VitalDelayType01 := (0.073 ns, 0.047 ns);
      tpd_A4_Z                       :	VitalDelayType01 := (0.076 ns, 0.051 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      A4                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component AN4D1 -----
component AN4D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.066 ns, 0.044 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.077 ns, 0.049 ns);
      tpd_A3_Z                       :	VitalDelayType01 := (0.076 ns, 0.052 ns);
      tpd_A4_Z                       :	VitalDelayType01 := (0.081 ns, 0.055 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      A4                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component AN4D2 -----
component AN4D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.066 ns, 0.039 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.066 ns, 0.042 ns);
      tpd_A3_Z                       :	VitalDelayType01 := (0.071 ns, 0.046 ns);
      tpd_A4_Z                       :	VitalDelayType01 := (0.072 ns, 0.049 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      A4                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component AN4D4 -----
component AN4D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.061 ns, 0.050 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.065 ns, 0.041 ns);
      tpd_A3_Z                       :	VitalDelayType01 := (0.071 ns, 0.044 ns);
      tpd_A4_Z                       :	VitalDelayType01 := (0.074 ns, 0.047 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      A4                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component AN4D8 -----
component AN4D8
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.070 ns, 0.041 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.072 ns, 0.046 ns);
      tpd_A3_Z                       :	VitalDelayType01 := (0.076 ns, 0.050 ns);
      tpd_A4_Z                       :	VitalDelayType01 := (0.083 ns, 0.052 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      A4                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component ANTENNA -----
component ANTENNA
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn);

-- synopsys translate_on
   port(
      I                              :	in    STD_ULOGIC);
end component;


----- Component AO21AD0 -----
component AO21AD0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.039 ns, 0.055 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.042 ns, 0.062 ns);
      tpd_B_Z                        :	VitalDelayType01 := (0.034 ns, 0.069 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component AO21AD1 -----
component AO21AD1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.034 ns, 0.048 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.036 ns, 0.053 ns);
      tpd_B_Z                        :	VitalDelayType01 := (0.032 ns, 0.056 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component AO21AD2 -----
component AO21AD2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.040 ns, 0.060 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.040 ns, 0.064 ns);
      tpd_B_Z                        :	VitalDelayType01 := (0.031 ns, 0.067 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component AO21AD4 -----
component AO21AD4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.039 ns, 0.059 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.039 ns, 0.065 ns);
      tpd_B_Z                        :	VitalDelayType01 := (0.032 ns, 0.066 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component AO22AD0 -----
component AO22AD0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.042 ns, 0.057 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.045 ns, 0.063 ns);
      tpd_B1_Z                       :	VitalDelayType01 := (0.052 ns, 0.072 ns);
      tpd_B2_Z                       :	VitalDelayType01 := (0.051 ns, 0.072 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component AO22AD1 -----
component AO22AD1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.036 ns, 0.048 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.038 ns, 0.054 ns);
      tpd_B1_Z                       :	VitalDelayType01 := (0.042 ns, 0.060 ns);
      tpd_B2_Z                       :	VitalDelayType01 := (0.049 ns, 0.066 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component AO22AD2 -----
component AO22AD2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.043 ns, 0.058 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.043 ns, 0.063 ns);
      tpd_B1_Z                       :	VitalDelayType01 := (0.047 ns, 0.072 ns);
      tpd_B2_Z                       :	VitalDelayType01 := (0.050 ns, 0.076 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component AO22AD4 -----
component AO22AD4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.039 ns, 0.055 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.040 ns, 0.062 ns);
      tpd_B1_Z                       :	VitalDelayType01 := (0.043 ns, 0.070 ns);
      tpd_B2_Z                       :	VitalDelayType01 := (0.047 ns, 0.078 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component AOI211D0 -----
component AOI211D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.052 ns, 0.019 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.060 ns, 0.022 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.079 ns, 0.015 ns);
      tpd_C_ZN                       :	VitalDelayType01 := (0.082 ns, 0.015 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component AOI211D1 -----
component AOI211D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.048 ns, 0.017 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.056 ns, 0.020 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.070 ns, 0.014 ns);
      tpd_C_ZN                       :	VitalDelayType01 := (0.073 ns, 0.014 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component AOI211D2 -----
component AOI211D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.046 ns, 0.018 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.056 ns, 0.019 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.072 ns, 0.012 ns);
      tpd_C_ZN                       :	VitalDelayType01 := (0.076 ns, 0.012 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component AOI211D4 -----
component AOI211D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.047 ns, 0.016 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.058 ns, 0.018 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.072 ns, 0.012 ns);
      tpd_C_ZN                       :	VitalDelayType01 := (0.075 ns, 0.012 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component AOI21AD0 -----
component AOI21AD0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.034 ns, 0.017 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.038 ns, 0.020 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.043 ns, 0.014 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component AOI21AD1 -----
component AOI21AD1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.032 ns, 0.015 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.036 ns, 0.018 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.041 ns, 0.013 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component AOI21AD2 -----
component AOI21AD2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.031 ns, 0.014 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.037 ns, 0.016 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.041 ns, 0.011 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component AOI21AD4 -----
component AOI21AD4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.032 ns, 0.015 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.038 ns, 0.017 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.039 ns, 0.012 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component AOI21D0 -----
component AOI21D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.034 ns, 0.017 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.038 ns, 0.020 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.043 ns, 0.014 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component AOI21D1 -----
component AOI21D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.032 ns, 0.015 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.036 ns, 0.018 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.041 ns, 0.013 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component AOI21D2 -----
component AOI21D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.031 ns, 0.014 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.037 ns, 0.016 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.041 ns, 0.011 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component AOI21D4 -----
component AOI21D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.032 ns, 0.015 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.038 ns, 0.017 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.039 ns, 0.012 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component AOI221D0 -----
component AOI221D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.054 ns, 0.020 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.064 ns, 0.023 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.090 ns, 0.026 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.097 ns, 0.029 ns);
      tpd_C_ZN                       :	VitalDelayType01 := (0.094 ns, 0.017 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component AOI221D1 -----
component AOI221D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.045 ns, 0.018 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.053 ns, 0.020 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.072 ns, 0.023 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.081 ns, 0.028 ns);
      tpd_C_ZN                       :	VitalDelayType01 := (0.079 ns, 0.015 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component AOI221D2 -----
component AOI221D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.050 ns, 0.019 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.058 ns, 0.020 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.079 ns, 0.023 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.084 ns, 0.025 ns);
      tpd_C_ZN                       :	VitalDelayType01 := (0.084 ns, 0.014 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component AOI221D4 -----
component AOI221D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.109 ns, 0.076 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.118 ns, 0.074 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.138 ns, 0.081 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.147 ns, 0.082 ns);
      tpd_C_ZN                       :	VitalDelayType01 := (0.143 ns, 0.067 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component AOI222D0 -----
component AOI222D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.058 ns, 0.021 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.066 ns, 0.023 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.089 ns, 0.028 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.095 ns, 0.028 ns);
      tpd_C1_ZN                      :	VitalDelayType01 := (0.101 ns, 0.030 ns);
      tpd_C2_ZN                      :	VitalDelayType01 := (0.106 ns, 0.031 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      C1                             :	in    STD_ULOGIC;
      C2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component AOI222D1 -----
component AOI222D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.047 ns, 0.019 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.056 ns, 0.020 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.073 ns, 0.024 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.080 ns, 0.027 ns);
      tpd_C1_ZN                      :	VitalDelayType01 := (0.084 ns, 0.026 ns);
      tpd_C2_ZN                      :	VitalDelayType01 := (0.090 ns, 0.028 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      C1                             :	in    STD_ULOGIC;
      C2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component AOI222D2 -----
component AOI222D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.052 ns, 0.018 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.059 ns, 0.020 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.075 ns, 0.023 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.081 ns, 0.025 ns);
      tpd_C1_ZN                      :	VitalDelayType01 := (0.086 ns, 0.025 ns);
      tpd_C2_ZN                      :	VitalDelayType01 := (0.093 ns, 0.027 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      C1                             :	in    STD_ULOGIC;
      C2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component AOI222D4 -----
component AOI222D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.111 ns, 0.077 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.122 ns, 0.076 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.136 ns, 0.084 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.145 ns, 0.086 ns);
      tpd_C1_ZN                      :	VitalDelayType01 := (0.149 ns, 0.087 ns);
      tpd_C2_ZN                      :	VitalDelayType01 := (0.156 ns, 0.090 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      C1                             :	in    STD_ULOGIC;
      C2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component AOI22AD0 -----
component AOI22AD0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.035 ns, 0.018 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.039 ns, 0.020 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.048 ns, 0.025 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.052 ns, 0.025 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component AOI22AD1 -----
component AOI22AD1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.034 ns, 0.017 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.038 ns, 0.019 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.045 ns, 0.023 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.053 ns, 0.023 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component AOI22AD2 -----
component AOI22AD2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.032 ns, 0.015 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.037 ns, 0.017 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.043 ns, 0.020 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.049 ns, 0.023 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component AOI22AD4 -----
component AOI22AD4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.032 ns, 0.015 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.038 ns, 0.017 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.043 ns, 0.020 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.051 ns, 0.024 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component AOI22D0 -----
component AOI22D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.035 ns, 0.018 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.039 ns, 0.020 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.048 ns, 0.025 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.052 ns, 0.025 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component AOI22D1 -----
component AOI22D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.034 ns, 0.017 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.038 ns, 0.019 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.045 ns, 0.023 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.053 ns, 0.023 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component AOI22D2 -----
component AOI22D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.032 ns, 0.015 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.037 ns, 0.017 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.043 ns, 0.020 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.049 ns, 0.023 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component AOI22D4 -----
component AOI22D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.032 ns, 0.015 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.038 ns, 0.017 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.043 ns, 0.020 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.051 ns, 0.024 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component AOI31D0 -----
component AOI31D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.041 ns, 0.026 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.047 ns, 0.031 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.052 ns, 0.033 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.054 ns, 0.016 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component AOI31D1 -----
component AOI31D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.036 ns, 0.023 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.041 ns, 0.028 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.047 ns, 0.032 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.049 ns, 0.015 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component AOI31D2 -----
component AOI31D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.036 ns, 0.023 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.042 ns, 0.029 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.049 ns, 0.032 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.049 ns, 0.015 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component AOI31D4 -----
component AOI31D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.034 ns, 0.022 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.042 ns, 0.029 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.050 ns, 0.029 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.049 ns, 0.013 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component AOI32D0 -----
component AOI32D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.039 ns, 0.029 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.043 ns, 0.034 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.047 ns, 0.036 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.055 ns, 0.030 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.059 ns, 0.033 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component AOI32D1 -----
component AOI32D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.037 ns, 0.024 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.042 ns, 0.029 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.045 ns, 0.032 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.052 ns, 0.026 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.059 ns, 0.030 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component AOI32D2 -----
component AOI32D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.035 ns, 0.024 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.040 ns, 0.029 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.046 ns, 0.031 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.053 ns, 0.026 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.057 ns, 0.027 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component AOI32D4 -----
component AOI32D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.084 ns, 0.085 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.090 ns, 0.089 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.097 ns, 0.088 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.101 ns, 0.079 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.108 ns, 0.083 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component AOI33D0 -----
component AOI33D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.044 ns, 0.028 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.049 ns, 0.032 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.053 ns, 0.035 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.062 ns, 0.040 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.067 ns, 0.046 ns);
      tpd_B3_ZN                      :	VitalDelayType01 := (0.071 ns, 0.047 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      B3                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component AOI33D1 -----
component AOI33D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.039 ns, 0.025 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.043 ns, 0.029 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.047 ns, 0.032 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.055 ns, 0.036 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.060 ns, 0.042 ns);
      tpd_B3_ZN                      :	VitalDelayType01 := (0.063 ns, 0.042 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      B3                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component AOI33D2 -----
component AOI33D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.037 ns, 0.024 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.043 ns, 0.029 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.049 ns, 0.031 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.055 ns, 0.037 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.061 ns, 0.043 ns);
      tpd_B3_ZN                      :	VitalDelayType01 := (0.068 ns, 0.043 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      B3                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component AOI33D4 -----
component AOI33D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.090 ns, 0.087 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.097 ns, 0.091 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.103 ns, 0.093 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.109 ns, 0.099 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.114 ns, 0.102 ns);
      tpd_B3_ZN                      :	VitalDelayType01 := (0.120 ns, 0.106 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      B3                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component BHD -----
component BHD
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tipd_Z                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      Z                              :	inout STD_ULOGIC := 'Z');
end component;


----- Component BUFFD0 -----
component BUFFD0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_Z                        :	VitalDelayType01 := (0.031 ns, 0.039 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I                              :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component BUFFD1 -----
component BUFFD1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_Z                        :	VitalDelayType01 := (0.030 ns, 0.038 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I                              :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component BUFFD12 -----
component BUFFD12
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_Z                        :	VitalDelayType01 := (0.034 ns, 0.043 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I                              :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component BUFFD16 -----
component BUFFD16
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_Z                        :	VitalDelayType01 := (0.032 ns, 0.043 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I                              :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component BUFFD2 -----
component BUFFD2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_Z                        :	VitalDelayType01 := (0.027 ns, 0.032 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I                              :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component BUFFD20 -----
component BUFFD20
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_Z                        :	VitalDelayType01 := (0.032 ns, 0.044 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I                              :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component BUFFD24 -----
component BUFFD24
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_Z                        :	VitalDelayType01 := (0.033 ns, 0.043 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I                              :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component BUFFD3 -----
component BUFFD3
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_Z                        :	VitalDelayType01 := (0.031 ns, 0.039 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I                              :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component BUFFD4 -----
component BUFFD4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_Z                        :	VitalDelayType01 := (0.025 ns, 0.030 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I                              :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component BUFFD6 -----
component BUFFD6
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_Z                        :	VitalDelayType01 := (0.029 ns, 0.037 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I                              :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component BUFFD8 -----
component BUFFD8
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_Z                        :	VitalDelayType01 := (0.032 ns, 0.043 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I                              :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component BUFTD0 -----
component BUFTD0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_Z                        :	VitalDelayType01 := (0.035 ns, 0.043 ns);
      tpd_OE_Z                       :	VitalDelayType01z := 
               (0.033 ns, 0.060 ns, 0.035 ns, 0.033 ns, 0.024 ns, 0.060 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_OE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I                              :	in    STD_ULOGIC;
      OE                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component BUFTD1 -----
component BUFTD1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_Z                        :	VitalDelayType01 := (0.032 ns, 0.033 ns);
      tpd_OE_Z                       :	VitalDelayType01z := 
               (0.031 ns, 0.052 ns, 0.048 ns, 0.031 ns, 0.032 ns, 0.052 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_OE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I                              :	in    STD_ULOGIC;
      OE                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component BUFTD12 -----
component BUFTD12
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_Z                        :	VitalDelayType01 := (0.055 ns, 0.071 ns);
      tpd_OE_Z                       :	VitalDelayType01z := 
               (0.054 ns, 0.082 ns, 0.064 ns, 0.054 ns, 0.040 ns, 0.082 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_OE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I                              :	in    STD_ULOGIC;
      OE                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component BUFTD16 -----
component BUFTD16
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_Z                        :	VitalDelayType01 := (0.063 ns, 0.078 ns);
      tpd_OE_Z                       :	VitalDelayType01z := 
               (0.062 ns, 0.089 ns, 0.053 ns, 0.062 ns, 0.048 ns, 0.089 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_OE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I                              :	in    STD_ULOGIC;
      OE                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component BUFTD2 -----
component BUFTD2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_Z                        :	VitalDelayType01 := (0.034 ns, 0.037 ns);
      tpd_OE_Z                       :	VitalDelayType01z := 
               (0.033 ns, 0.053 ns, 0.051 ns, 0.033 ns, 0.036 ns, 0.053 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_OE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I                              :	in    STD_ULOGIC;
      OE                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component BUFTD20 -----
component BUFTD20
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_Z                        :	VitalDelayType01 := (0.048 ns, 0.069 ns);
      tpd_OE_Z                       :	VitalDelayType01z := 
               (0.045 ns, 0.091 ns, 0.055 ns, 0.045 ns, 0.043 ns, 0.091 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_OE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I                              :	in    STD_ULOGIC;
      OE                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component BUFTD24 -----
component BUFTD24
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_Z                        :	VitalDelayType01 := (0.052 ns, 0.076 ns);
      tpd_OE_Z                       :	VitalDelayType01z := 
               (0.050 ns, 0.096 ns, 0.058 ns, 0.050 ns, 0.049 ns, 0.096 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_OE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I                              :	in    STD_ULOGIC;
      OE                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component BUFTD3 -----
component BUFTD3
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_Z                        :	VitalDelayType01 := (0.037 ns, 0.040 ns);
      tpd_OE_Z                       :	VitalDelayType01z := 
               (0.036 ns, 0.059 ns, 0.054 ns, 0.036 ns, 0.034 ns, 0.059 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_OE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I                              :	in    STD_ULOGIC;
      OE                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component BUFTD4 -----
component BUFTD4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_Z                        :	VitalDelayType01 := (0.038 ns, 0.043 ns);
      tpd_OE_Z                       :	VitalDelayType01z := 
               (0.038 ns, 0.059 ns, 0.056 ns, 0.038 ns, 0.037 ns, 0.059 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_OE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I                              :	in    STD_ULOGIC;
      OE                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component BUFTD6 -----
component BUFTD6
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_Z                        :	VitalDelayType01 := (0.039 ns, 0.050 ns);
      tpd_OE_Z                       :	VitalDelayType01z := 
               (0.039 ns, 0.065 ns, 0.065 ns, 0.039 ns, 0.034 ns, 0.065 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_OE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I                              :	in    STD_ULOGIC;
      OE                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component BUFTD8 -----
component BUFTD8
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_Z                        :	VitalDelayType01 := (0.045 ns, 0.060 ns);
      tpd_OE_Z                       :	VitalDelayType01z := 
               (0.043 ns, 0.072 ns, 0.058 ns, 0.043 ns, 0.035 ns, 0.072 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_OE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I                              :	in    STD_ULOGIC;
      OE                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component CKBD0 -----
component CKBD0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CLK_C                      :	VitalDelayType01 := (0.031 ns, 0.031 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      C                              :	out   STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC);
end component;


----- Component CKBD1 -----
component CKBD1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CLK_C                      :	VitalDelayType01 := (0.029 ns, 0.030 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      C                              :	out   STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC);
end component;


----- Component CKBD12 -----
component CKBD12
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CLK_C                      :	VitalDelayType01 := (0.032 ns, 0.032 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      C                              :	out   STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC);
end component;


----- Component CKBD16 -----
component CKBD16
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CLK_C                      :	VitalDelayType01 := (0.031 ns, 0.032 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      C                              :	out   STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC);
end component;


----- Component CKBD2 -----
component CKBD2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CLK_C                      :	VitalDelayType01 := (0.032 ns, 0.034 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      C                              :	out   STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC);
end component;


----- Component CKBD20 -----
component CKBD20
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CLK_C                      :	VitalDelayType01 := (0.029 ns, 0.031 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      C                              :	out   STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC);
end component;


----- Component CKBD24 -----
component CKBD24
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CLK_C                      :	VitalDelayType01 := (0.031 ns, 0.034 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      C                              :	out   STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC);
end component;


----- Component CKBD3 -----
component CKBD3
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CLK_C                      :	VitalDelayType01 := (0.028 ns, 0.029 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      C                              :	out   STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC);
end component;


----- Component CKBD4 -----
component CKBD4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CLK_C                      :	VitalDelayType01 := (0.031 ns, 0.038 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      C                              :	out   STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC);
end component;


----- Component CKBD6 -----
component CKBD6
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CLK_C                      :	VitalDelayType01 := (0.032 ns, 0.035 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      C                              :	out   STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC);
end component;


----- Component CKBD8 -----
component CKBD8
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CLK_C                      :	VitalDelayType01 := (0.033 ns, 0.035 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      C                              :	out   STD_ULOGIC;
      CLK                            :	in    STD_ULOGIC);
end component;


----- Component CKLNQD1 -----
component CKLNQD1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.039 ns, 0.036 ns);
      thold_E_CPcheckpin1            :	VitalDelayType := -0.032 ns;
      tsetup_E_CPcheckpin1           :	VitalDelayType := 0.056 ns;
      thold_TE_CPcheckpin1           :	VitalDelayType := -0.026 ns;
      tsetup_TE_CPcheckpin1          :	VitalDelayType := 0.050 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.074 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_TE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      TE                             :	in    STD_ULOGIC);
end component;


----- Component CKLNQD12 -----
component CKLNQD12
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.086 ns, 0.079 ns);
      thold_E_CPcheckpin1            :	VitalDelayType := -0.032 ns;
      tsetup_E_CPcheckpin1           :	VitalDelayType := 0.041 ns;
      thold_TE_CPcheckpin1           :	VitalDelayType := -0.026 ns;
      tsetup_TE_CPcheckpin1          :	VitalDelayType := 0.035 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.097 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_TE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      TE                             :	in    STD_ULOGIC);
end component;


----- Component CKLNQD16 -----
component CKLNQD16
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.081 ns, 0.075 ns);
      thold_E_CPcheckpin1            :	VitalDelayType := -0.035 ns;
      tsetup_E_CPcheckpin1           :	VitalDelayType := 0.041 ns;
      thold_TE_CPcheckpin1           :	VitalDelayType := -0.029 ns;
      tsetup_TE_CPcheckpin1          :	VitalDelayType := 0.038 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.100 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_TE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      TE                             :	in    STD_ULOGIC);
end component;


----- Component CKLNQD2 -----
component CKLNQD2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.047 ns, 0.043 ns);
      thold_E_CPcheckpin1            :	VitalDelayType := -0.032 ns;
      tsetup_E_CPcheckpin1           :	VitalDelayType := 0.047 ns;
      thold_TE_CPcheckpin1           :	VitalDelayType := -0.026 ns;
      tsetup_TE_CPcheckpin1          :	VitalDelayType := 0.044 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.078 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_TE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      TE                             :	in    STD_ULOGIC);
end component;


----- Component CKLNQD20 -----
component CKLNQD20
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.079 ns, 0.072 ns);
      thold_E_CPcheckpin1            :	VitalDelayType := -0.038 ns;
      tsetup_E_CPcheckpin1           :	VitalDelayType := 0.044 ns;
      thold_TE_CPcheckpin1           :	VitalDelayType := -0.029 ns;
      tsetup_TE_CPcheckpin1          :	VitalDelayType := 0.038 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.101 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_TE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      TE                             :	in    STD_ULOGIC);
end component;


----- Component CKLNQD24 -----
component CKLNQD24
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.088 ns, 0.080 ns);
      thold_E_CPcheckpin1            :	VitalDelayType := -0.038 ns;
      tsetup_E_CPcheckpin1           :	VitalDelayType := 0.044 ns;
      thold_TE_CPcheckpin1           :	VitalDelayType := -0.029 ns;
      tsetup_TE_CPcheckpin1          :	VitalDelayType := 0.041 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.106 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_TE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      TE                             :	in    STD_ULOGIC);
end component;


----- Component CKLNQD3 -----
component CKLNQD3
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.057 ns, 0.054 ns);
      thold_E_CPcheckpin1            :	VitalDelayType := -0.032 ns;
      tsetup_E_CPcheckpin1           :	VitalDelayType := 0.038 ns;
      thold_TE_CPcheckpin1           :	VitalDelayType := -0.026 ns;
      tsetup_TE_CPcheckpin1          :	VitalDelayType := 0.035 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.083 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_TE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      TE                             :	in    STD_ULOGIC);
end component;


----- Component CKLNQD4 -----
component CKLNQD4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.065 ns, 0.060 ns);
      thold_E_CPcheckpin1            :	VitalDelayType := -0.032 ns;
      tsetup_E_CPcheckpin1           :	VitalDelayType := 0.035 ns;
      thold_TE_CPcheckpin1           :	VitalDelayType := -0.026 ns;
      tsetup_TE_CPcheckpin1          :	VitalDelayType := 0.032 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.086 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_TE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      TE                             :	in    STD_ULOGIC);
end component;


----- Component CKLNQD6 -----
component CKLNQD6
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.061 ns, 0.055 ns);
      thold_E_CPcheckpin1            :	VitalDelayType := -0.032 ns;
      tsetup_E_CPcheckpin1           :	VitalDelayType := 0.041 ns;
      thold_TE_CPcheckpin1           :	VitalDelayType := -0.026 ns;
      tsetup_TE_CPcheckpin1          :	VitalDelayType := 0.035 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.085 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_TE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      TE                             :	in    STD_ULOGIC);
end component;


----- Component CKLNQD8 -----
component CKLNQD8
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.069 ns, 0.063 ns);
      thold_E_CPcheckpin1            :	VitalDelayType := -0.032 ns;
      tsetup_E_CPcheckpin1           :	VitalDelayType := 0.041 ns;
      thold_TE_CPcheckpin1           :	VitalDelayType := -0.026 ns;
      tsetup_TE_CPcheckpin1          :	VitalDelayType := 0.035 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.089 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_TE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      TE                             :	in    STD_ULOGIC);
end component;


----- Component CKMUX2D0 -----
component CKMUX2D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I0_Z                       :	VitalDelayType01 := (0.054 ns, 0.055 ns);
      tpd_I1_Z                       :	VitalDelayType01 := (0.058 ns, 0.057 ns);
      tpd_S_Z_I0_EQ_0_AN_I1_EQ_1     :	VitalDelayType01 := (0.043 ns, 0.041 ns);
      tpd_S_Z_I0_EQ_1_AN_I1_EQ_0     :	VitalDelayType01 := (0.050 ns, 0.055 ns);
      tpd_S_Z                        :	VitalDelayType01 := (0.050 ns, 0.055 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I0                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component CKMUX2D1 -----
component CKMUX2D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I0_Z                       :	VitalDelayType01 := (0.059 ns, 0.056 ns);
      tpd_I1_Z                       :	VitalDelayType01 := (0.051 ns, 0.054 ns);
      tpd_S_Z_I0_EQ_0_AN_I1_EQ_1     :	VitalDelayType01 := (0.045 ns, 0.046 ns);
      tpd_S_Z_I0_EQ_1_AN_I1_EQ_0     :	VitalDelayType01 := (0.051 ns, 0.058 ns);
      tpd_S_Z                        :	VitalDelayType01 := (0.051 ns, 0.058 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I0                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component CKMUX2D2 -----
component CKMUX2D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I0_Z                       :	VitalDelayType01 := (0.066 ns, 0.064 ns);
      tpd_I1_Z                       :	VitalDelayType01 := (0.057 ns, 0.061 ns);
      tpd_S_Z_I0_EQ_0_AN_I1_EQ_1     :	VitalDelayType01 := (0.052 ns, 0.056 ns);
      tpd_S_Z_I0_EQ_1_AN_I1_EQ_0     :	VitalDelayType01 := (0.060 ns, 0.064 ns);
      tpd_S_Z                        :	VitalDelayType01 := (0.060 ns, 0.064 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I0                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component CKMUX2D4 -----
component CKMUX2D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I0_Z                       :	VitalDelayType01 := (0.067 ns, 0.064 ns);
      tpd_I1_Z                       :	VitalDelayType01 := (0.068 ns, 0.074 ns);
      tpd_S_Z_I0_EQ_0_AN_I1_EQ_1     :	VitalDelayType01 := (0.064 ns, 0.056 ns);
      tpd_S_Z_I0_EQ_1_AN_I1_EQ_0     :	VitalDelayType01 := (0.063 ns, 0.074 ns);
      tpd_S_Z                        :	VitalDelayType01 := (0.064 ns, 0.074 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I0                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component CKND0 -----
component CKND0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CLK_CN                     :	VitalDelayType01 := (0.011 ns, 0.012 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CLK                            :	in    STD_ULOGIC;
      CN                             :	out   STD_ULOGIC);
end component;


----- Component CKND1 -----
component CKND1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CLK_CN                     :	VitalDelayType01 := (0.010 ns, 0.011 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CLK                            :	in    STD_ULOGIC;
      CN                             :	out   STD_ULOGIC);
end component;


----- Component CKND12 -----
component CKND12
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CLK_CN                     :	VitalDelayType01 := (0.008 ns, 0.009 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CLK                            :	in    STD_ULOGIC;
      CN                             :	out   STD_ULOGIC);
end component;


----- Component CKND16 -----
component CKND16
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CLK_CN                     :	VitalDelayType01 := (0.009 ns, 0.009 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CLK                            :	in    STD_ULOGIC;
      CN                             :	out   STD_ULOGIC);
end component;


----- Component CKND2 -----
component CKND2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CLK_CN                     :	VitalDelayType01 := (0.008 ns, 0.009 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CLK                            :	in    STD_ULOGIC;
      CN                             :	out   STD_ULOGIC);
end component;


----- Component CKND20 -----
component CKND20
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CLK_CN                     :	VitalDelayType01 := (0.009 ns, 0.010 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CLK                            :	in    STD_ULOGIC;
      CN                             :	out   STD_ULOGIC);
end component;


----- Component CKND24 -----
component CKND24
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CLK_CN                     :	VitalDelayType01 := (0.009 ns, 0.009 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CLK                            :	in    STD_ULOGIC;
      CN                             :	out   STD_ULOGIC);
end component;


----- Component CKND2D0 -----
component CKND2D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.017 ns, 0.020 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.019 ns, 0.022 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component CKND2D1 -----
component CKND2D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.015 ns, 0.017 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.017 ns, 0.019 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component CKND2D2 -----
component CKND2D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.015 ns, 0.018 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.018 ns, 0.020 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component CKND2D3 -----
component CKND2D3
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.016 ns, 0.016 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.018 ns, 0.020 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component CKND2D4 -----
component CKND2D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.015 ns, 0.016 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.016 ns, 0.018 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component CKND2D8 -----
component CKND2D8
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.014 ns, 0.016 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.016 ns, 0.021 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component CKND3 -----
component CKND3
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CLK_CN                     :	VitalDelayType01 := (0.009 ns, 0.009 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CLK                            :	in    STD_ULOGIC;
      CN                             :	out   STD_ULOGIC);
end component;


----- Component CKND4 -----
component CKND4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CLK_CN                     :	VitalDelayType01 := (0.009 ns, 0.010 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CLK                            :	in    STD_ULOGIC;
      CN                             :	out   STD_ULOGIC);
end component;


----- Component CKND6 -----
component CKND6
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CLK_CN                     :	VitalDelayType01 := (0.008 ns, 0.010 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CLK                            :	in    STD_ULOGIC;
      CN                             :	out   STD_ULOGIC);
end component;


----- Component CKND8 -----
component CKND8
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CLK_CN                     :	VitalDelayType01 := (0.009 ns, 0.010 ns);
      tipd_CLK                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CLK                            :	in    STD_ULOGIC;
      CN                             :	out   STD_ULOGIC);
end component;


----- Component CKXOR2D0 -----
component CKXOR2D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z_A2_EQ_0               :	VitalDelayType01 := (0.041 ns, 0.042 ns);
      tpd_A1_Z_A2_EQ_1               :	VitalDelayType01 := (0.055 ns, 0.058 ns);
      tpd_A1_Z                       :	VitalDelayType01 := (0.055 ns, 0.058 ns);
      tpd_A2_Z_A1_EQ_0               :	VitalDelayType01 := (0.066 ns, 0.066 ns);
      tpd_A2_Z_A1_EQ_1               :	VitalDelayType01 := (0.083 ns, 0.083 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.083 ns, 0.083 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component CKXOR2D1 -----
component CKXOR2D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z_A2_EQ_0               :	VitalDelayType01 := (0.043 ns, 0.043 ns);
      tpd_A1_Z_A2_EQ_1               :	VitalDelayType01 := (0.052 ns, 0.058 ns);
      tpd_A1_Z                       :	VitalDelayType01 := (0.052 ns, 0.058 ns);
      tpd_A2_Z_A1_EQ_0               :	VitalDelayType01 := (0.069 ns, 0.061 ns);
      tpd_A2_Z_A1_EQ_1               :	VitalDelayType01 := (0.083 ns, 0.089 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.083 ns, 0.089 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component CKXOR2D2 -----
component CKXOR2D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z_A2_EQ_0               :	VitalDelayType01 := (0.052 ns, 0.051 ns);
      tpd_A1_Z_A2_EQ_1               :	VitalDelayType01 := (0.057 ns, 0.068 ns);
      tpd_A1_Z                       :	VitalDelayType01 := (0.057 ns, 0.068 ns);
      tpd_A2_Z_A1_EQ_0               :	VitalDelayType01 := (0.072 ns, 0.066 ns);
      tpd_A2_Z_A1_EQ_1               :	VitalDelayType01 := (0.090 ns, 0.094 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.090 ns, 0.094 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component CKXOR2D4 -----
component CKXOR2D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z_A2_EQ_0               :	VitalDelayType01 := (0.055 ns, 0.050 ns);
      tpd_A1_Z_A2_EQ_1               :	VitalDelayType01 := (0.053 ns, 0.085 ns);
      tpd_A1_Z                       :	VitalDelayType01 := (0.055 ns, 0.085 ns);
      tpd_A2_Z_A1_EQ_0               :	VitalDelayType01 := (0.049 ns, 0.053 ns);
      tpd_A2_Z_A1_EQ_1               :	VitalDelayType01 := (0.095 ns, 0.101 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.095 ns, 0.101 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component DCAP -----
component DCAP
end component;


----- Component DEL1 -----
component DEL1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_Z                        :	VitalDelayType01 := (0.513 ns, 0.465 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I                              :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component DEL2 -----
component DEL2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_Z                        :	VitalDelayType01 := (1.116 ns, 1.004 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I                              :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component DEL3 -----
component DEL3
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_Z                        :	VitalDelayType01 := (1.782 ns, 1.568 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I                              :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component DEL4 -----
component DEL4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_Z                        :	VitalDelayType01 := (2.408 ns, 2.130 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I                              :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component DFCND1 -----
component DFCND1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.117 ns, 0.047 ns);
      tpd_CP_Q                       :	VitalDelayType01 := (0.117 ns, 0.114 ns);
      tpd_CDN_QN                     :	VitalDelayType01 := (0.085 ns, 0.148 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.149 ns, 0.148 ns);
      trecovery_CDN_CP               :	VitalDelayType := -0.062 ns;
      thold_CDN_CP                   :	VitalDelayType := 0.120 ns;
      thold_D_CP                     :	VitalDelayType := 0.018 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.029 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.121 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.085 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.086 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component;


----- Component DFCND2 -----
component DFCND2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.116 ns, 0.039 ns);
      tpd_CP_Q                       :	VitalDelayType01 := (0.116 ns, 0.105 ns);
      tpd_CDN_QN                     :	VitalDelayType01 := (0.082 ns, 0.143 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.146 ns, 0.143 ns);
      trecovery_CDN_CP               :	VitalDelayType := -0.064 ns;
      thold_CDN_CP                   :	VitalDelayType := 0.111 ns;
      thold_D_CP                     :	VitalDelayType := 0.018 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.032 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.119 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.081 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.091 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component;


----- Component DFCND4 -----
component DFCND4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.120 ns, 0.042 ns);
      tpd_CP_Q                       :	VitalDelayType01 := (0.120 ns, 0.103 ns);
      tpd_CDN_QN                     :	VitalDelayType01 := (0.079 ns, 0.154 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.135 ns, 0.154 ns);
      trecovery_CDN_CP               :	VitalDelayType := -0.059 ns;
      thold_CDN_CP                   :	VitalDelayType := 0.100 ns;
      thold_D_CP                     :	VitalDelayType := 0.012 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.035 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.122 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.083 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.072 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component;


----- Component DFCNQD1 -----
component DFCNQD1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.117 ns, 0.048 ns);
      tpd_CP_Q                       :	VitalDelayType01 := (0.117 ns, 0.115 ns);
      trecovery_CDN_CP               :	VitalDelayType := -0.062 ns;
      thold_CDN_CP                   :	VitalDelayType := 0.120 ns;
      thold_D_CP                     :	VitalDelayType := 0.021 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.026 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.105 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.084 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.085 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DFCNQD2 -----
component DFCNQD2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.111 ns, 0.036 ns);
      tpd_CP_Q                       :	VitalDelayType01 := (0.111 ns, 0.102 ns);
      trecovery_CDN_CP               :	VitalDelayType := -0.067 ns;
      thold_CDN_CP                   :	VitalDelayType := 0.114 ns;
      thold_D_CP                     :	VitalDelayType := 0.018 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.026 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.084 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.087 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.090 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DFCNQD4 -----
component DFCNQD4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.119 ns, 0.040 ns);
      tpd_CP_Q                       :	VitalDelayType01 := (0.119 ns, 0.098 ns);
      trecovery_CDN_CP               :	VitalDelayType := -0.056 ns;
      thold_CDN_CP                   :	VitalDelayType := 0.102 ns;
      thold_D_CP                     :	VitalDelayType := 0.009 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.035 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.083 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.089 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.072 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DFCSND1 -----
component DFCSND1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.055 ns, 0.041 ns);
      tpd_SDN_Q                      :	VitalDelayType01 := (0.123 ns, 0.041 ns);
      tpd_CP_Q                       :	VitalDelayType01 := (0.118 ns, 0.126 ns);
      tpd_CDN_QN                     :	VitalDelayType01 := (0.096 ns, 0.047 ns);
      tpd_SDN_QN                     :	VitalDelayType01 := (0.060 ns, 0.047 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.175 ns, 0.158 ns);
      trecovery_CDN_CP               :	VitalDelayType := -0.073 ns;
      trecovery_CDN_SDN              :	VitalDelayType := -0.004 ns;
      thold_CDN_CP                   :	VitalDelayType := 0.167 ns;
      thold_D_CP                     :	VitalDelayType := 0.009 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.026 ns;
      trecovery_SDN_CDN              :	VitalDelayType := 0.006 ns;
      trecovery_SDN_CP               :	VitalDelayType := -0.026 ns;
      thold_SDN_CP                   :	VitalDelayType := 0.079 ns;
      thold_SDN_CDN                  :	VitalDelayType := 0.000 ns;
      thold_CDN_SDN                  :	VitalDelayType := 0.000 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.134 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.104 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.090 ns;
      tpw_SDN_negedge                :	VitalDelayType := 0.075 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SDN                            :	in    STD_ULOGIC);
end component;


----- Component DFCSND2 -----
component DFCSND2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.042 ns, 0.042 ns);
      tpd_SDN_Q                      :	VitalDelayType01 := (0.127 ns, 0.042 ns);
      tpd_CP_Q                       :	VitalDelayType01 := (0.115 ns, 0.124 ns);
      tpd_CDN_QN                     :	VitalDelayType01 := (0.116 ns, 0.064 ns);
      tpd_SDN_QN                     :	VitalDelayType01 := (0.075 ns, 0.064 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.188 ns, 0.167 ns);
      trecovery_CDN_CP               :	VitalDelayType := -0.079 ns;
      trecovery_CDN_SDN              :	VitalDelayType := 0.010 ns;
      thold_CDN_CP                   :	VitalDelayType := 0.182 ns;
      thold_D_CP                     :	VitalDelayType := 0.006 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.029 ns;
      trecovery_SDN_CDN              :	VitalDelayType := -0.007 ns;
      trecovery_SDN_CP               :	VitalDelayType := -0.023 ns;
      thold_SDN_CP                   :	VitalDelayType := 0.064 ns;
      thold_SDN_CDN                  :	VitalDelayType := 0.000 ns;
      thold_CDN_SDN                  :	VitalDelayType := 0.000 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.141 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.109 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.096 ns;
      tpw_SDN_negedge                :	VitalDelayType := 0.087 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SDN                            :	in    STD_ULOGIC);
end component;


----- Component DFCSND4 -----
component DFCSND4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.047 ns, 0.047 ns);
      tpd_SDN_Q                      :	VitalDelayType01 := (0.147 ns, 0.047 ns);
      tpd_CP_Q                       :	VitalDelayType01 := (0.117 ns, 0.125 ns);
      tpd_CDN_QN                     :	VitalDelayType01 := (0.119 ns, 0.074 ns);
      tpd_SDN_QN                     :	VitalDelayType01 := (0.068 ns, 0.074 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.197 ns, 0.186 ns);
      trecovery_CDN_CP               :	VitalDelayType := -0.076 ns;
      trecovery_CDN_SDN              :	VitalDelayType := 0.006 ns;
      thold_CDN_CP                   :	VitalDelayType := 0.170 ns;
      thold_D_CP                     :	VitalDelayType := -0.003 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.041 ns;
      trecovery_SDN_CDN              :	VitalDelayType := -0.004 ns;
      trecovery_SDN_CP               :	VitalDelayType := -0.012 ns;
      thold_SDN_CP                   :	VitalDelayType := 0.053 ns;
      thold_SDN_CDN                  :	VitalDelayType := 0.000 ns;
      thold_CDN_SDN                  :	VitalDelayType := 0.000 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.146 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.112 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.078 ns;
      tpw_SDN_negedge                :	VitalDelayType := 0.101 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SDN                            :	in    STD_ULOGIC);
end component;


----- Component DFD1 -----
component DFD1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.097 ns, 0.100 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.128 ns, 0.126 ns);
      thold_D_CP                     :	VitalDelayType := 0.003 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.023 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.102 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.088 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component;


----- Component DFD2 -----
component DFD2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.102 ns, 0.102 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.128 ns, 0.125 ns);
      thold_D_CP                     :	VitalDelayType := 0.012 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.026 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.105 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.090 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component;


----- Component DFD4 -----
component DFD4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.104 ns, 0.098 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.129 ns, 0.134 ns);
      thold_D_CP                     :	VitalDelayType := 0.003 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.038 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.109 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.073 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component;


----- Component DFKCND1 -----
component DFKCND1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.097 ns, 0.114 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.147 ns, 0.127 ns);
      thold_CN_CP                    :	VitalDelayType := -0.006 ns;
      tsetup_CN_CP                   :	VitalDelayType := 0.059 ns;
      thold_D_CP                     :	VitalDelayType := -0.012 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.056 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.112 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.083 ns;
      tipd_CN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CN                             :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component;


----- Component DFKCND2 -----
component DFKCND2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.108 ns, 0.102 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.129 ns, 0.133 ns);
      thold_CN_CP                    :	VitalDelayType := -0.006 ns;
      tsetup_CN_CP                   :	VitalDelayType := 0.064 ns;
      thold_D_CP                     :	VitalDelayType := -0.009 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.062 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.110 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.088 ns;
      tipd_CN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CN                             :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component;


----- Component DFKCND4 -----
component DFKCND4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.112 ns, 0.099 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.130 ns, 0.141 ns);
      thold_CN_CP                    :	VitalDelayType := -0.018 ns;
      tsetup_CN_CP                   :	VitalDelayType := 0.073 ns;
      thold_D_CP                     :	VitalDelayType := -0.018 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.070 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.114 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.071 ns;
      tipd_CN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CN                             :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component;


----- Component DFKCNQD1 -----
component DFKCNQD1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.096 ns, 0.116 ns);
      thold_CN_CP                    :	VitalDelayType := -0.006 ns;
      tsetup_CN_CP                   :	VitalDelayType := 0.059 ns;
      thold_D_CP                     :	VitalDelayType := -0.009 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.056 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.096 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.083 ns;
      tipd_CN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CN                             :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DFKCNQD2 -----
component DFKCNQD2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.105 ns, 0.095 ns);
      thold_CN_CP                    :	VitalDelayType := -0.009 ns;
      tsetup_CN_CP                   :	VitalDelayType := 0.062 ns;
      thold_D_CP                     :	VitalDelayType := -0.012 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.062 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.081 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.088 ns;
      tipd_CN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CN                             :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DFKCNQD4 -----
component DFKCNQD4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.109 ns, 0.094 ns);
      thold_CN_CP                    :	VitalDelayType := -0.018 ns;
      tsetup_CN_CP                   :	VitalDelayType := 0.070 ns;
      thold_D_CP                     :	VitalDelayType := -0.021 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.067 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.079 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.071 ns;
      tipd_CN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CN                             :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DFKCSND1 -----
component DFKCSND1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.094 ns, 0.112 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.142 ns, 0.123 ns);
      thold_CN_CP                    :	VitalDelayType := -0.015 ns;
      tsetup_CN_CP                   :	VitalDelayType := 0.082 ns;
      thold_D_CP                     :	VitalDelayType := -0.029 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.085 ns;
      thold_SN_CP                    :	VitalDelayType := -0.050 ns;
      tsetup_SN_CP                   :	VitalDelayType := 0.102 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.107 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.089 ns;
      tipd_CN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CN                             :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SN                             :	in    STD_ULOGIC);
end component;


----- Component DFKCSND2 -----
component DFKCSND2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.108 ns, 0.101 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.128 ns, 0.134 ns);
      thold_CN_CP                    :	VitalDelayType := -0.015 ns;
      tsetup_CN_CP                   :	VitalDelayType := 0.073 ns;
      thold_D_CP                     :	VitalDelayType := -0.029 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.094 ns;
      thold_SN_CP                    :	VitalDelayType := -0.050 ns;
      tsetup_SN_CP                   :	VitalDelayType := 0.111 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.111 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.095 ns;
      tipd_CN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CN                             :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SN                             :	in    STD_ULOGIC);
end component;


----- Component DFKCSND4 -----
component DFKCSND4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.115 ns, 0.099 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.132 ns, 0.144 ns);
      thold_CN_CP                    :	VitalDelayType := -0.026 ns;
      tsetup_CN_CP                   :	VitalDelayType := 0.082 ns;
      thold_D_CP                     :	VitalDelayType := -0.029 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.105 ns;
      thold_SN_CP                    :	VitalDelayType := -0.059 ns;
      tsetup_SN_CP                   :	VitalDelayType := 0.123 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.116 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.076 ns;
      tipd_CN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CN                             :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SN                             :	in    STD_ULOGIC);
end component;


----- Component DFKSND1 -----
component DFKSND1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.093 ns, 0.117 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.145 ns, 0.120 ns);
      thold_D_CP                     :	VitalDelayType := -0.015 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.059 ns;
      thold_SN_CP                    :	VitalDelayType := -0.038 ns;
      tsetup_SN_CP                   :	VitalDelayType := 0.076 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.108 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.082 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SN                             :	in    STD_ULOGIC);
end component;


----- Component DFKSND2 -----
component DFKSND2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.105 ns, 0.109 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.137 ns, 0.128 ns);
      thold_D_CP                     :	VitalDelayType := -0.015 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.062 ns;
      thold_SN_CP                    :	VitalDelayType := -0.044 ns;
      tsetup_SN_CP                   :	VitalDelayType := 0.082 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.111 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.089 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SN                             :	in    STD_ULOGIC);
end component;


----- Component DFKSND4 -----
component DFKSND4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.111 ns, 0.100 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.131 ns, 0.139 ns);
      thold_D_CP                     :	VitalDelayType := -0.015 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.079 ns;
      thold_SN_CP                    :	VitalDelayType := -0.044 ns;
      tsetup_SN_CP                   :	VitalDelayType := 0.097 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.113 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.067 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SN                             :	in    STD_ULOGIC);
end component;


----- Component DFNCND1 -----
component DFNCND1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.149 ns, 0.046 ns);
      tpd_CPN_Q                      :	VitalDelayType01 := (0.149 ns, 0.111 ns);
      tpd_CDN_QN                     :	VitalDelayType01 := (0.084 ns, 0.184 ns);
      tpd_CPN_QN                     :	VitalDelayType01 := (0.144 ns, 0.184 ns);
      trecovery_CDN_CPN              :	VitalDelayType := -0.094 ns;
      thold_CDN_CPN                  :	VitalDelayType := 0.164 ns;
      thold_D_CPN                    :	VitalDelayType := 0.032 ns;
      tsetup_D_CPN                   :	VitalDelayType := 0.029 ns;
      tpw_CPN_posedge                :	VitalDelayType := 0.079 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.086 ns;
      tpw_CPN_negedge                :	VitalDelayType := 0.140 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CPN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      CPN                            :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component;


----- Component DFNCND2 -----
component DFNCND2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.142 ns, 0.039 ns);
      tpd_CPN_Q                      :	VitalDelayType01 := (0.142 ns, 0.119 ns);
      tpd_CDN_QN                     :	VitalDelayType01 := (0.081 ns, 0.171 ns);
      tpd_CPN_QN                     :	VitalDelayType01 := (0.158 ns, 0.171 ns);
      trecovery_CDN_CPN              :	VitalDelayType := -0.105 ns;
      thold_CDN_CPN                  :	VitalDelayType := 0.149 ns;
      thold_D_CPN                    :	VitalDelayType := 0.032 ns;
      tsetup_D_CPN                   :	VitalDelayType := 0.021 ns;
      tpw_CPN_posedge                :	VitalDelayType := 0.077 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.082 ns;
      tpw_CPN_negedge                :	VitalDelayType := 0.139 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CPN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      CPN                            :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component;


----- Component DFNCND4 -----
component DFNCND4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.160 ns, 0.043 ns);
      tpd_CPN_Q                      :	VitalDelayType01 := (0.160 ns, 0.127 ns);
      tpd_CDN_QN                     :	VitalDelayType01 := (0.089 ns, 0.194 ns);
      tpd_CPN_QN                     :	VitalDelayType01 := (0.171 ns, 0.194 ns);
      trecovery_CDN_CPN              :	VitalDelayType := -0.105 ns;
      thold_CDN_CPN                  :	VitalDelayType := 0.149 ns;
      thold_D_CPN                    :	VitalDelayType := 0.032 ns;
      tsetup_D_CPN                   :	VitalDelayType := 0.021 ns;
      tpw_CPN_posedge                :	VitalDelayType := 0.077 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.082 ns;
      tpw_CPN_negedge                :	VitalDelayType := 0.154 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CPN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      CPN                            :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component;


----- Component DFNCSND1 -----
component DFNCSND1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.055 ns, 0.041 ns);
      tpd_SDN_Q                      :	VitalDelayType01 := (0.124 ns, 0.041 ns);
      tpd_CPN_Q                      :	VitalDelayType01 := (0.140 ns, 0.116 ns);
      tpd_CDN_QN                     :	VitalDelayType01 := (0.096 ns, 0.047 ns);
      tpd_SDN_QN                     :	VitalDelayType01 := (0.054 ns, 0.047 ns);
      tpd_CPN_QN                     :	VitalDelayType01 := (0.169 ns, 0.181 ns);
      trecovery_CDN_CPN              :	VitalDelayType := -0.097 ns;
      trecovery_CDN_SDN              :	VitalDelayType := -0.003 ns;
      thold_CDN_CPN                  :	VitalDelayType := 0.205 ns;
      thold_D_CPN                    :	VitalDelayType := 0.029 ns;
      tsetup_D_CPN                   :	VitalDelayType := 0.050 ns;
      trecovery_SDN_CPN              :	VitalDelayType := -0.006 ns;
      trecovery_SDN_CDN              :	VitalDelayType := 0.004 ns;
      thold_SDN_CPN                  :	VitalDelayType := 0.059 ns;
      thold_SDN_CDN                  :	VitalDelayType := 0.000 ns;
      thold_CDN_SDN                  :	VitalDelayType := 0.000 ns;
      tpw_CPN_posedge                :	VitalDelayType := 0.082 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.105 ns;
      tpw_CPN_negedge                :	VitalDelayType := 0.141 ns;
      tpw_SDN_negedge                :	VitalDelayType := 0.075 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CPN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      CPN                            :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SDN                            :	in    STD_ULOGIC);
end component;


----- Component DFNCSND2 -----
component DFNCSND2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.042 ns, 0.042 ns);
      tpd_SDN_Q                      :	VitalDelayType01 := (0.128 ns, 0.042 ns);
      tpd_CPN_Q                      :	VitalDelayType01 := (0.137 ns, 0.132 ns);
      tpd_CDN_QN                     :	VitalDelayType01 := (0.119 ns, 0.063 ns);
      tpd_SDN_QN                     :	VitalDelayType01 := (0.068 ns, 0.063 ns);
      tpd_CPN_QN                     :	VitalDelayType01 := (0.197 ns, 0.190 ns);
      trecovery_CDN_CPN              :	VitalDelayType := -0.102 ns;
      trecovery_CDN_SDN              :	VitalDelayType := 0.010 ns;
      thold_CDN_CPN                  :	VitalDelayType := 0.185 ns;
      thold_D_CPN                    :	VitalDelayType := 0.029 ns;
      tsetup_D_CPN                   :	VitalDelayType := 0.050 ns;
      trecovery_SDN_CPN              :	VitalDelayType := -0.015 ns;
      trecovery_SDN_CDN              :	VitalDelayType := -0.007 ns;
      thold_SDN_CPN                  :	VitalDelayType := 0.059 ns;
      thold_SDN_CDN                  :	VitalDelayType := 0.000 ns;
      thold_CDN_SDN                  :	VitalDelayType := 0.000 ns;
      tpw_CPN_posedge                :	VitalDelayType := 0.083 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.098 ns;
      tpw_CPN_negedge                :	VitalDelayType := 0.156 ns;
      tpw_SDN_negedge                :	VitalDelayType := 0.087 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CPN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      CPN                            :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SDN                            :	in    STD_ULOGIC);
end component;


----- Component DFNCSND4 -----
component DFNCSND4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.047 ns, 0.047 ns);
      tpd_SDN_Q                      :	VitalDelayType01 := (0.147 ns, 0.047 ns);
      tpd_CPN_Q                      :	VitalDelayType01 := (0.132 ns, 0.123 ns);
      tpd_CDN_QN                     :	VitalDelayType01 := (0.120 ns, 0.075 ns);
      tpd_SDN_QN                     :	VitalDelayType01 := (0.063 ns, 0.075 ns);
      tpd_CPN_QN                     :	VitalDelayType01 := (0.190 ns, 0.200 ns);
      trecovery_CDN_CPN              :	VitalDelayType := -0.094 ns;
      trecovery_CDN_SDN              :	VitalDelayType := 0.007 ns;
      thold_CDN_CPN                  :	VitalDelayType := 0.193 ns;
      thold_D_CPN                    :	VitalDelayType := 0.018 ns;
      tsetup_D_CPN                   :	VitalDelayType := 0.047 ns;
      trecovery_SDN_CPN              :	VitalDelayType := -0.009 ns;
      trecovery_SDN_CDN              :	VitalDelayType := -0.006 ns;
      thold_SDN_CPN                  :	VitalDelayType := 0.044 ns;
      thold_SDN_CDN                  :	VitalDelayType := 0.000 ns;
      thold_CDN_SDN                  :	VitalDelayType := 0.000 ns;
      tpw_CPN_posedge                :	VitalDelayType := 0.072 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.111 ns;
      tpw_CPN_negedge                :	VitalDelayType := 0.154 ns;
      tpw_SDN_negedge                :	VitalDelayType := 0.101 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CPN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      CPN                            :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SDN                            :	in    STD_ULOGIC);
end component;


----- Component DFND1 -----
component DFND1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CPN_Q                      :	VitalDelayType01 := (0.109 ns, 0.094 ns);
      tpd_CPN_QN                     :	VitalDelayType01 := (0.120 ns, 0.139 ns);
      thold_D_CPN                    :	VitalDelayType := 0.023 ns;
      tsetup_D_CPN                   :	VitalDelayType := 0.035 ns;
      tpw_CPN_posedge                :	VitalDelayType := 0.068 ns;
      tpw_CPN_negedge                :	VitalDelayType := 0.109 ns;
      tipd_CPN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CPN                            :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component;


----- Component DFND2 -----
component DFND2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CPN_Q                      :	VitalDelayType01 := (0.133 ns, 0.112 ns);
      tpd_CPN_QN                     :	VitalDelayType01 := (0.138 ns, 0.157 ns);
      thold_D_CPN                    :	VitalDelayType := 0.041 ns;
      tsetup_D_CPN                   :	VitalDelayType := 0.035 ns;
      tpw_CPN_posedge                :	VitalDelayType := 0.078 ns;
      tpw_CPN_negedge                :	VitalDelayType := 0.128 ns;
      tipd_CPN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CPN                            :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component;


----- Component DFND4 -----
component DFND4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CPN_Q                      :	VitalDelayType01 := (0.121 ns, 0.098 ns);
      tpd_CPN_QN                     :	VitalDelayType01 := (0.129 ns, 0.151 ns);
      thold_D_CPN                    :	VitalDelayType := 0.026 ns;
      tsetup_D_CPN                   :	VitalDelayType := 0.044 ns;
      tpw_CPN_posedge                :	VitalDelayType := 0.067 ns;
      tpw_CPN_negedge                :	VitalDelayType := 0.118 ns;
      tipd_CPN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CPN                            :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component;


----- Component DFNSND1 -----
component DFNSND1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_SDN_Q                      :	VitalDelayType01 := (0.111 ns, 0.116 ns);
      tpd_CPN_Q                      :	VitalDelayType01 := (0.131 ns, 0.116 ns);
      tpd_SDN_QN                     :	VitalDelayType01 := (0.163 ns, 0.050 ns);
      tpd_CPN_QN                     :	VitalDelayType01 := (0.163 ns, 0.167 ns);
      thold_D_CPN                    :	VitalDelayType := 0.035 ns;
      tsetup_D_CPN                   :	VitalDelayType := 0.044 ns;
      trecovery_SDN_CPN              :	VitalDelayType := -0.009 ns;
      thold_SDN_CPN                  :	VitalDelayType := 0.047 ns;
      tpw_CPN_posedge                :	VitalDelayType := 0.080 ns;
      tpw_CPN_negedge                :	VitalDelayType := 0.133 ns;
      tpw_SDN_negedge                :	VitalDelayType := 0.072 ns;
      tipd_CPN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CPN                            :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SDN                            :	in    STD_ULOGIC);
end component;


----- Component DFNSND2 -----
component DFNSND2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_SDN_Q                      :	VitalDelayType01 := (0.097 ns, 0.114 ns);
      tpd_CPN_Q                      :	VitalDelayType01 := (0.129 ns, 0.114 ns);
      tpd_SDN_QN                     :	VitalDelayType01 := (0.154 ns, 0.040 ns);
      tpd_CPN_QN                     :	VitalDelayType01 := (0.154 ns, 0.158 ns);
      thold_D_CPN                    :	VitalDelayType := 0.032 ns;
      tsetup_D_CPN                   :	VitalDelayType := 0.041 ns;
      trecovery_SDN_CPN              :	VitalDelayType := -0.026 ns;
      thold_SDN_CPN                  :	VitalDelayType := 0.064 ns;
      tpw_CPN_posedge                :	VitalDelayType := 0.083 ns;
      tpw_CPN_negedge                :	VitalDelayType := 0.130 ns;
      tpw_SDN_negedge                :	VitalDelayType := 0.063 ns;
      tipd_CPN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CPN                            :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SDN                            :	in    STD_ULOGIC);
end component;


----- Component DFNSND4 -----
component DFNSND4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_SDN_Q                      :	VitalDelayType01 := (0.119 ns, 0.100 ns);
      tpd_CPN_Q                      :	VitalDelayType01 := (0.117 ns, 0.100 ns);
      tpd_SDN_QN                     :	VitalDelayType01 := (0.156 ns, 0.054 ns);
      tpd_CPN_QN                     :	VitalDelayType01 := (0.156 ns, 0.162 ns);
      thold_D_CPN                    :	VitalDelayType := 0.015 ns;
      tsetup_D_CPN                   :	VitalDelayType := 0.047 ns;
      trecovery_SDN_CPN              :	VitalDelayType := -0.018 ns;
      thold_SDN_CPN                  :	VitalDelayType := 0.047 ns;
      tpw_CPN_posedge                :	VitalDelayType := 0.074 ns;
      tpw_CPN_negedge                :	VitalDelayType := 0.125 ns;
      tpw_SDN_negedge                :	VitalDelayType := 0.079 ns;
      tipd_CPN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CPN                            :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SDN                            :	in    STD_ULOGIC);
end component;


----- Component DFQD1 -----
component DFQD1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.089 ns, 0.093 ns);
      thold_D_CP                     :	VitalDelayType := 0.003 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.029 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.081 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.073 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DFQD2 -----
component DFQD2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.099 ns, 0.101 ns);
      thold_D_CP                     :	VitalDelayType := 0.006 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.023 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.080 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.091 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DFQD4 -----
component DFQD4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.101 ns, 0.098 ns);
      thold_D_CP                     :	VitalDelayType := 0.003 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.035 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.076 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.072 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component DFSND1 -----
component DFSND1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_SDN_Q                      :	VitalDelayType01 := (0.104 ns, 0.112 ns);
      tpd_CP_Q                       :	VitalDelayType01 := (0.094 ns, 0.112 ns);
      tpd_SDN_QN                     :	VitalDelayType01 := (0.159 ns, 0.051 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.159 ns, 0.129 ns);
      thold_D_CP                     :	VitalDelayType := 0.009 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.035 ns;
      trecovery_SDN_CP               :	VitalDelayType := -0.029 ns;
      thold_SDN_CP                   :	VitalDelayType := 0.062 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.116 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.093 ns;
      tpw_SDN_negedge                :	VitalDelayType := 0.068 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SDN                            :	in    STD_ULOGIC);
end component;


----- Component DFSND2 -----
component DFSND2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_SDN_Q                      :	VitalDelayType01 := (0.098 ns, 0.107 ns);
      tpd_CP_Q                       :	VitalDelayType01 := (0.105 ns, 0.107 ns);
      tpd_SDN_QN                     :	VitalDelayType01 := (0.146 ns, 0.040 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.146 ns, 0.135 ns);
      thold_D_CP                     :	VitalDelayType := 0.003 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.029 ns;
      trecovery_SDN_CP               :	VitalDelayType := -0.032 ns;
      thold_SDN_CP                   :	VitalDelayType := 0.064 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.116 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.096 ns;
      tpw_SDN_negedge                :	VitalDelayType := 0.063 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SDN                            :	in    STD_ULOGIC);
end component;


----- Component DFSND4 -----
component DFSND4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_SDN_Q                      :	VitalDelayType01 := (0.117 ns, 0.106 ns);
      tpd_CP_Q                       :	VitalDelayType01 := (0.104 ns, 0.106 ns);
      tpd_SDN_QN                     :	VitalDelayType01 := (0.164 ns, 0.054 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.164 ns, 0.149 ns);
      thold_D_CP                     :	VitalDelayType := -0.003 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.041 ns;
      trecovery_SDN_CP               :	VitalDelayType := -0.021 ns;
      thold_SDN_CP                   :	VitalDelayType := 0.053 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.123 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.079 ns;
      tpw_SDN_negedge                :	VitalDelayType := 0.078 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SDN                            :	in    STD_ULOGIC);
end component;


----- Component DFXD1 -----
component DFXD1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.094 ns, 0.111 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.142 ns, 0.122 ns);
      thold_DA_CP                    :	VitalDelayType := -0.047 ns;
      tsetup_DA_CP                   :	VitalDelayType := 0.108 ns;
      thold_DB_CP                    :	VitalDelayType := -0.035 ns;
      tsetup_DB_CP                   :	VitalDelayType := 0.085 ns;
      thold_SA_CP                    :	VitalDelayType := -0.041 ns;
      tsetup_SA_CP                   :	VitalDelayType := 0.086 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.107 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.094 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_DA                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_DB                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SA                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      DA                             :	in    STD_ULOGIC;
      DB                             :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SA                             :	in    STD_ULOGIC);
end component;


----- Component DFXD2 -----
component DFXD2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.105 ns, 0.103 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.128 ns, 0.127 ns);
      thold_DA_CP                    :	VitalDelayType := -0.035 ns;
      tsetup_DA_CP                   :	VitalDelayType := 0.117 ns;
      thold_DB_CP                    :	VitalDelayType := -0.023 ns;
      tsetup_DB_CP                   :	VitalDelayType := 0.111 ns;
      thold_SA_CP                    :	VitalDelayType := -0.029 ns;
      tsetup_SA_CP                   :	VitalDelayType := 0.089 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.107 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.106 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_DA                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_DB                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SA                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      DA                             :	in    STD_ULOGIC;
      DB                             :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SA                             :	in    STD_ULOGIC);
end component;


----- Component DFXD4 -----
component DFXD4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.106 ns, 0.098 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.129 ns, 0.136 ns);
      thold_DA_CP                    :	VitalDelayType := -0.035 ns;
      tsetup_DA_CP                   :	VitalDelayType := 0.132 ns;
      thold_DB_CP                    :	VitalDelayType := -0.023 ns;
      tsetup_DB_CP                   :	VitalDelayType := 0.126 ns;
      thold_SA_CP                    :	VitalDelayType := -0.035 ns;
      tsetup_SA_CP                   :	VitalDelayType := 0.100 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.110 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.088 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_DA                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_DB                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SA                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      DA                             :	in    STD_ULOGIC;
      DB                             :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SA                             :	in    STD_ULOGIC);
end component;


----- Component EDFCND1 -----
component EDFCND1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.104 ns, 0.054 ns);
      tpd_CP_Q                       :	VitalDelayType01 := (0.104 ns, 0.119 ns);
      tpd_CDN_QN                     :	VitalDelayType01 := (0.112 ns, 0.155 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.165 ns, 0.155 ns);
      trecovery_CDN_CP               :	VitalDelayType := -0.059 ns;
      thold_CDN_CP                   :	VitalDelayType := 0.085 ns;
      thold_D_CP                     :	VitalDelayType := -0.038 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.094 ns;
      thold_E_CP                     :	VitalDelayType := -0.044 ns;
      tsetup_E_CP                    :	VitalDelayType := 0.082 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.123 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.144 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.102 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component;


----- Component EDFCND2 -----
component EDFCND2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.114 ns, 0.038 ns);
      tpd_CP_Q                       :	VitalDelayType01 := (0.114 ns, 0.104 ns);
      tpd_CDN_QN                     :	VitalDelayType01 := (0.100 ns, 0.152 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.149 ns, 0.152 ns);
      trecovery_CDN_CP               :	VitalDelayType := -0.059 ns;
      thold_CDN_CP                   :	VitalDelayType := 0.088 ns;
      thold_D_CP                     :	VitalDelayType := -0.029 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.105 ns;
      thold_E_CP                     :	VitalDelayType := -0.038 ns;
      tsetup_E_CP                    :	VitalDelayType := 0.088 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.121 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.132 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.109 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component;


----- Component EDFCND4 -----
component EDFCND4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.126 ns, 0.038 ns);
      tpd_CP_Q                       :	VitalDelayType01 := (0.126 ns, 0.099 ns);
      tpd_CDN_QN                     :	VitalDelayType01 := (0.094 ns, 0.169 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.148 ns, 0.169 ns);
      trecovery_CDN_CP               :	VitalDelayType := -0.050 ns;
      thold_CDN_CP                   :	VitalDelayType := 0.076 ns;
      thold_D_CP                     :	VitalDelayType := -0.047 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.117 ns;
      thold_E_CP                     :	VitalDelayType := -0.045 ns;
      tsetup_E_CP                    :	VitalDelayType := 0.098 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.127 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.129 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.090 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component;


----- Component EDFCNQD1 -----
component EDFCNQD1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.103 ns, 0.054 ns);
      tpd_CP_Q                       :	VitalDelayType01 := (0.103 ns, 0.120 ns);
      trecovery_CDN_CP               :	VitalDelayType := -0.059 ns;
      thold_CDN_CP                   :	VitalDelayType := 0.085 ns;
      thold_D_CP                     :	VitalDelayType := -0.038 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.094 ns;
      thold_E_CP                     :	VitalDelayType := -0.044 ns;
      tsetup_E_CP                    :	VitalDelayType := 0.082 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.108 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.138 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.102 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component EDFCNQD2 -----
component EDFCNQD2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.110 ns, 0.036 ns);
      tpd_CP_Q                       :	VitalDelayType01 := (0.110 ns, 0.100 ns);
      trecovery_CDN_CP               :	VitalDelayType := -0.059 ns;
      thold_CDN_CP                   :	VitalDelayType := 0.085 ns;
      thold_D_CP                     :	VitalDelayType := -0.029 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.108 ns;
      thold_E_CP                     :	VitalDelayType := -0.038 ns;
      tsetup_E_CP                    :	VitalDelayType := 0.091 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.117 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.132 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.108 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component EDFCNQD4 -----
component EDFCNQD4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.125 ns, 0.038 ns);
      tpd_CP_Q                       :	VitalDelayType01 := (0.125 ns, 0.097 ns);
      trecovery_CDN_CP               :	VitalDelayType := -0.053 ns;
      thold_CDN_CP                   :	VitalDelayType := 0.076 ns;
      thold_D_CP                     :	VitalDelayType := -0.044 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.120 ns;
      thold_E_CP                     :	VitalDelayType := -0.045 ns;
      tsetup_E_CP                    :	VitalDelayType := 0.097 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.123 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.135 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.090 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component EDFD1 -----
component EDFD1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.092 ns, 0.115 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.156 ns, 0.136 ns);
      thold_D_CP                     :	VitalDelayType := -0.038 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.094 ns;
      thold_E_CP                     :	VitalDelayType := -0.043 ns;
      tsetup_E_CP                    :	VitalDelayType := 0.076 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.113 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.098 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component;


----- Component EDFD2 -----
component EDFD2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.099 ns, 0.104 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.139 ns, 0.130 ns);
      thold_D_CP                     :	VitalDelayType := -0.041 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.102 ns;
      thold_E_CP                     :	VitalDelayType := -0.043 ns;
      tsetup_E_CP                    :	VitalDelayType := 0.079 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.109 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.106 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component;


----- Component EDFD4 -----
component EDFD4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.102 ns, 0.101 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.138 ns, 0.137 ns);
      thold_D_CP                     :	VitalDelayType := -0.038 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.114 ns;
      thold_E_CP                     :	VitalDelayType := -0.043 ns;
      tsetup_E_CP                    :	VitalDelayType := 0.089 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.109 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.086 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component;


----- Component EDFKCND1 -----
component EDFKCND1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.093 ns, 0.115 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.156 ns, 0.138 ns);
      thold_CN_CP                    :	VitalDelayType := -0.006 ns;
      tsetup_CN_CP                   :	VitalDelayType := 0.091 ns;
      thold_D_CP                     :	VitalDelayType := -0.047 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.097 ns;
      thold_E_CP                     :	VitalDelayType := -0.056 ns;
      tsetup_E_CP                    :	VitalDelayType := 0.098 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.114 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.090 ns;
      tipd_CN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CN                             :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component;


----- Component EDFKCND2 -----
component EDFKCND2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.099 ns, 0.103 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.143 ns, 0.128 ns);
      thold_CN_CP                    :	VitalDelayType := -0.006 ns;
      tsetup_CN_CP                   :	VitalDelayType := 0.094 ns;
      thold_D_CP                     :	VitalDelayType := -0.044 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.105 ns;
      thold_E_CP                     :	VitalDelayType := -0.054 ns;
      tsetup_E_CP                    :	VitalDelayType := 0.105 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.111 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.098 ns;
      tipd_CN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CN                             :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component;


----- Component EDFKCND4 -----
component EDFKCND4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.103 ns, 0.103 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.136 ns, 0.137 ns);
      thold_CN_CP                    :	VitalDelayType := -0.012 ns;
      tsetup_CN_CP                   :	VitalDelayType := 0.105 ns;
      thold_D_CP                     :	VitalDelayType := -0.050 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.117 ns;
      thold_E_CP                     :	VitalDelayType := -0.057 ns;
      tsetup_E_CP                    :	VitalDelayType := 0.113 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.109 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.079 ns;
      tipd_CN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CN                             :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component;


----- Component EDFKCNQD1 -----
component EDFKCNQD1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.092 ns, 0.115 ns);
      thold_CN_CP                    :	VitalDelayType := -0.006 ns;
      tsetup_CN_CP                   :	VitalDelayType := 0.091 ns;
      thold_D_CP                     :	VitalDelayType := -0.047 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.097 ns;
      thold_E_CP                     :	VitalDelayType := -0.056 ns;
      tsetup_E_CP                    :	VitalDelayType := 0.098 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.098 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.090 ns;
      tipd_CN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CN                             :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component EDFKCNQD2 -----
component EDFKCNQD2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.095 ns, 0.100 ns);
      thold_CN_CP                    :	VitalDelayType := -0.006 ns;
      tsetup_CN_CP                   :	VitalDelayType := 0.097 ns;
      thold_D_CP                     :	VitalDelayType := -0.044 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.108 ns;
      thold_E_CP                     :	VitalDelayType := -0.056 ns;
      tsetup_E_CP                    :	VitalDelayType := 0.104 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.099 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.097 ns;
      tipd_CN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CN                             :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component EDFKCNQD4 -----
component EDFKCNQD4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.097 ns, 0.098 ns);
      thold_CN_CP                    :	VitalDelayType := -0.018 ns;
      tsetup_CN_CP                   :	VitalDelayType := 0.105 ns;
      thold_D_CP                     :	VitalDelayType := -0.050 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.120 ns;
      thold_E_CP                     :	VitalDelayType := -0.056 ns;
      tsetup_E_CP                    :	VitalDelayType := 0.116 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.102 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.079 ns;
      tipd_CN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CN                             :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component EDFQD1 -----
component EDFQD1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.092 ns, 0.112 ns);
      thold_D_CP                     :	VitalDelayType := -0.038 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.094 ns;
      thold_E_CP                     :	VitalDelayType := -0.043 ns;
      tsetup_E_CP                    :	VitalDelayType := 0.076 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.102 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.098 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component EDFQD2 -----
component EDFQD2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.096 ns, 0.101 ns);
      thold_D_CP                     :	VitalDelayType := -0.041 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.102 ns;
      thold_E_CP                     :	VitalDelayType := -0.043 ns;
      tsetup_E_CP                    :	VitalDelayType := 0.079 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.099 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.106 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component EDFQD4 -----
component EDFQD4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.095 ns, 0.095 ns);
      thold_D_CP                     :	VitalDelayType := -0.038 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.120 ns;
      thold_E_CP                     :	VitalDelayType := -0.044 ns;
      tsetup_E_CP                    :	VitalDelayType := 0.092 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.100 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.087 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC);
end component;


----- Component FA1D1 -----
component FA1D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A_CO_B_EQ_0_AN_CI_EQ_1     :	VitalDelayType01 := (0.086 ns, 0.093 ns);
      tpd_A_CO_B_EQ_1_AN_CI_EQ_0     :	VitalDelayType01 := (0.095 ns, 0.104 ns);
      tpd_A_CO                       :	VitalDelayType01 := (0.090 ns, 0.098 ns);
      tpd_B_CO_A_EQ_0_AN_CI_EQ_1     :	VitalDelayType01 := (0.054 ns, 0.090 ns);
      tpd_B_CO_A_EQ_1_AN_CI_EQ_0     :	VitalDelayType01 := (0.086 ns, 0.071 ns);
      tpd_B_CO                       :	VitalDelayType01 := (0.070 ns, 0.080 ns);
      tpd_CI_CO_A_EQ_0_AN_B_EQ_1     :	VitalDelayType01 := (0.040 ns, 0.047 ns);
      tpd_CI_CO_A_EQ_1_AN_B_EQ_0     :	VitalDelayType01 := (0.040 ns, 0.047 ns);
      tpd_CI_CO                      :	VitalDelayType01 := (0.040 ns, 0.047 ns);
      tpd_A_S_B_EQ_0_AN_CI_EQ_0      :	VitalDelayType01 := (0.087 ns, 0.089 ns);
      tpd_A_S_B_EQ_0_AN_CI_EQ_1      :	VitalDelayType01 := (0.105 ns, 0.103 ns);
      tpd_A_S_B_EQ_1_AN_CI_EQ_0      :	VitalDelayType01 := (0.093 ns, 0.082 ns);
      tpd_A_S_B_EQ_1_AN_CI_EQ_1      :	VitalDelayType01 := (0.096 ns, 0.107 ns);
      tpd_A_S                        :	VitalDelayType01 := (0.099 ns, 0.097 ns);
      tpd_B_S_A_EQ_0_AN_CI_EQ_0      :	VitalDelayType01 := (0.091 ns, 0.081 ns);
      tpd_B_S_A_EQ_0_AN_CI_EQ_1      :	VitalDelayType01 := (0.098 ns, 0.104 ns);
      tpd_B_S_A_EQ_1_AN_CI_EQ_0      :	VitalDelayType01 := (0.074 ns, 0.073 ns);
      tpd_B_S_A_EQ_1_AN_CI_EQ_1      :	VitalDelayType01 := (0.087 ns, 0.089 ns);
      tpd_B_S                        :	VitalDelayType01 := (0.089 ns, 0.089 ns);
      tpd_CI_S_A_EQ_0_AN_B_EQ_0      :	VitalDelayType01 := (0.043 ns, 0.050 ns);
      tpd_CI_S_A_EQ_0_AN_B_EQ_1      :	VitalDelayType01 := (0.066 ns, 0.066 ns);
      tpd_CI_S_A_EQ_1_AN_B_EQ_0      :	VitalDelayType01 := (0.066 ns, 0.066 ns);
      tpd_CI_S_A_EQ_1_AN_B_EQ_1      :	VitalDelayType01 := (0.042 ns, 0.050 ns);
      tpd_CI_S                       :	VitalDelayType01 := (0.066 ns, 0.066 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      CI                             :	in    STD_ULOGIC;
      CO                             :	out   STD_ULOGIC;
      S                              :	out   STD_ULOGIC);
end component;


----- Component FA1D2 -----
component FA1D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A_CO_B_EQ_0_AN_CI_EQ_1     :	VitalDelayType01 := (0.094 ns, 0.103 ns);
      tpd_A_CO_B_EQ_1_AN_CI_EQ_0     :	VitalDelayType01 := (0.099 ns, 0.111 ns);
      tpd_A_CO                       :	VitalDelayType01 := (0.097 ns, 0.107 ns);
      tpd_B_CO_A_EQ_0_AN_CI_EQ_1     :	VitalDelayType01 := (0.057 ns, 0.099 ns);
      tpd_B_CO_A_EQ_1_AN_CI_EQ_0     :	VitalDelayType01 := (0.092 ns, 0.073 ns);
      tpd_B_CO                       :	VitalDelayType01 := (0.075 ns, 0.086 ns);
      tpd_CI_CO_A_EQ_0_AN_B_EQ_1     :	VitalDelayType01 := (0.041 ns, 0.050 ns);
      tpd_CI_CO_A_EQ_1_AN_B_EQ_0     :	VitalDelayType01 := (0.041 ns, 0.050 ns);
      tpd_CI_CO                      :	VitalDelayType01 := (0.041 ns, 0.050 ns);
      tpd_A_S_B_EQ_0_AN_CI_EQ_0      :	VitalDelayType01 := (0.095 ns, 0.098 ns);
      tpd_A_S_B_EQ_0_AN_CI_EQ_1      :	VitalDelayType01 := (0.109 ns, 0.109 ns);
      tpd_A_S_B_EQ_1_AN_CI_EQ_0      :	VitalDelayType01 := (0.101 ns, 0.091 ns);
      tpd_A_S_B_EQ_1_AN_CI_EQ_1      :	VitalDelayType01 := (0.101 ns, 0.119 ns);
      tpd_A_S                        :	VitalDelayType01 := (0.105 ns, 0.108 ns);
      tpd_B_S_A_EQ_0_AN_CI_EQ_0      :	VitalDelayType01 := (0.100 ns, 0.092 ns);
      tpd_B_S_A_EQ_0_AN_CI_EQ_1      :	VitalDelayType01 := (0.103 ns, 0.111 ns);
      tpd_B_S_A_EQ_1_AN_CI_EQ_0      :	VitalDelayType01 := (0.080 ns, 0.083 ns);
      tpd_B_S_A_EQ_1_AN_CI_EQ_1      :	VitalDelayType01 := (0.093 ns, 0.099 ns);
      tpd_B_S                        :	VitalDelayType01 := (0.096 ns, 0.097 ns);
      tpd_CI_S_A_EQ_0_AN_B_EQ_0      :	VitalDelayType01 := (0.047 ns, 0.057 ns);
      tpd_CI_S_A_EQ_0_AN_B_EQ_1      :	VitalDelayType01 := (0.072 ns, 0.071 ns);
      tpd_CI_S_A_EQ_1_AN_B_EQ_0      :	VitalDelayType01 := (0.072 ns, 0.071 ns);
      tpd_CI_S_A_EQ_1_AN_B_EQ_1      :	VitalDelayType01 := (0.047 ns, 0.057 ns);
      tpd_CI_S                       :	VitalDelayType01 := (0.072 ns, 0.071 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      CI                             :	in    STD_ULOGIC;
      CO                             :	out   STD_ULOGIC;
      S                              :	out   STD_ULOGIC);
end component;


----- Component FA1D4 -----
component FA1D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A_CO_B_EQ_0_AN_CI_EQ_1     :	VitalDelayType01 := (0.107 ns, 0.111 ns);
      tpd_A_CO_B_EQ_1_AN_CI_EQ_0     :	VitalDelayType01 := (0.105 ns, 0.120 ns);
      tpd_A_CO                       :	VitalDelayType01 := (0.106 ns, 0.115 ns);
      tpd_B_CO_A_EQ_0_AN_CI_EQ_1     :	VitalDelayType01 := (0.061 ns, 0.102 ns);
      tpd_B_CO_A_EQ_1_AN_CI_EQ_0     :	VitalDelayType01 := (0.101 ns, 0.086 ns);
      tpd_B_CO                       :	VitalDelayType01 := (0.081 ns, 0.094 ns);
      tpd_CI_CO_A_EQ_0_AN_B_EQ_1     :	VitalDelayType01 := (0.055 ns, 0.069 ns);
      tpd_CI_CO_A_EQ_1_AN_B_EQ_0     :	VitalDelayType01 := (0.055 ns, 0.069 ns);
      tpd_CI_CO                      :	VitalDelayType01 := (0.055 ns, 0.069 ns);
      tpd_A_S_B_EQ_0_AN_CI_EQ_0      :	VitalDelayType01 := (0.106 ns, 0.115 ns);
      tpd_A_S_B_EQ_0_AN_CI_EQ_1      :	VitalDelayType01 := (0.118 ns, 0.117 ns);
      tpd_A_S_B_EQ_1_AN_CI_EQ_0      :	VitalDelayType01 := (0.107 ns, 0.107 ns);
      tpd_A_S_B_EQ_1_AN_CI_EQ_1      :	VitalDelayType01 := (0.110 ns, 0.117 ns);
      tpd_A_S                        :	VitalDelayType01 := (0.112 ns, 0.116 ns);
      tpd_B_S_A_EQ_0_AN_CI_EQ_0      :	VitalDelayType01 := (0.103 ns, 0.103 ns);
      tpd_B_S_A_EQ_0_AN_CI_EQ_1      :	VitalDelayType01 := (0.111 ns, 0.107 ns);
      tpd_B_S_A_EQ_1_AN_CI_EQ_0      :	VitalDelayType01 := (0.093 ns, 0.101 ns);
      tpd_B_S_A_EQ_1_AN_CI_EQ_1      :	VitalDelayType01 := (0.107 ns, 0.098 ns);
      tpd_B_S                        :	VitalDelayType01 := (0.105 ns, 0.104 ns);
      tpd_CI_S_A_EQ_0_AN_B_EQ_0      :	VitalDelayType01 := (0.065 ns, 0.081 ns);
      tpd_CI_S_A_EQ_0_AN_B_EQ_1      :	VitalDelayType01 := (0.083 ns, 0.074 ns);
      tpd_CI_S_A_EQ_1_AN_B_EQ_0      :	VitalDelayType01 := (0.083 ns, 0.074 ns);
      tpd_CI_S_A_EQ_1_AN_B_EQ_1      :	VitalDelayType01 := (0.065 ns, 0.081 ns);
      tpd_CI_S                       :	VitalDelayType01 := (0.083 ns, 0.081 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      CI                             :	in    STD_ULOGIC;
      CO                             :	out   STD_ULOGIC;
      S                              :	out   STD_ULOGIC);
end component;


----- Component HA1D1 -----
component HA1D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A_CO                       :	VitalDelayType01 := (0.033 ns, 0.029 ns);
      tpd_B_CO                       :	VitalDelayType01 := (0.036 ns, 0.033 ns);
      tpd_A_S_B_EQ_0                 :	VitalDelayType01 := (0.042 ns, 0.048 ns);
      tpd_A_S_B_EQ_1                 :	VitalDelayType01 := (0.056 ns, 0.057 ns);
      tpd_A_S                        :	VitalDelayType01 := (0.056 ns, 0.057 ns);
      tpd_B_S_A_EQ_0                 :	VitalDelayType01 := (0.032 ns, 0.039 ns);
      tpd_B_S_A_EQ_1                 :	VitalDelayType01 := (0.055 ns, 0.043 ns);
      tpd_B_S                        :	VitalDelayType01 := (0.055 ns, 0.043 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      CO                             :	out   STD_ULOGIC;
      S                              :	out   STD_ULOGIC);
end component;


----- Component HA1D2 -----
component HA1D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A_CO                       :	VitalDelayType01 := (0.037 ns, 0.035 ns);
      tpd_B_CO                       :	VitalDelayType01 := (0.040 ns, 0.039 ns);
      tpd_A_S_B_EQ_0                 :	VitalDelayType01 := (0.046 ns, 0.054 ns);
      tpd_A_S_B_EQ_1                 :	VitalDelayType01 := (0.061 ns, 0.064 ns);
      tpd_A_S                        :	VitalDelayType01 := (0.061 ns, 0.064 ns);
      tpd_B_S_A_EQ_0                 :	VitalDelayType01 := (0.036 ns, 0.049 ns);
      tpd_B_S_A_EQ_1                 :	VitalDelayType01 := (0.059 ns, 0.048 ns);
      tpd_B_S                        :	VitalDelayType01 := (0.059 ns, 0.049 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      CO                             :	out   STD_ULOGIC;
      S                              :	out   STD_ULOGIC);
end component;


----- Component HA1D4 -----
component HA1D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A_CO                       :	VitalDelayType01 := (0.036 ns, 0.034 ns);
      tpd_B_CO                       :	VitalDelayType01 := (0.038 ns, 0.036 ns);
      tpd_A_S_B_EQ_0                 :	VitalDelayType01 := (0.057 ns, 0.065 ns);
      tpd_A_S_B_EQ_1                 :	VitalDelayType01 := (0.063 ns, 0.065 ns);
      tpd_A_S                        :	VitalDelayType01 := (0.063 ns, 0.065 ns);
      tpd_B_S_A_EQ_0                 :	VitalDelayType01 := (0.043 ns, 0.062 ns);
      tpd_B_S_A_EQ_1                 :	VitalDelayType01 := (0.072 ns, 0.051 ns);
      tpd_B_S                        :	VitalDelayType01 := (0.072 ns, 0.062 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      CO                             :	out   STD_ULOGIC;
      S                              :	out   STD_ULOGIC);
end component;


----- Component IAO21AD0 -----
component IAO21AD0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.053 ns, 0.069 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.056 ns, 0.080 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.034 ns, 0.011 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component IAO21AD1 -----
component IAO21AD1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.048 ns, 0.062 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.050 ns, 0.066 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.028 ns, 0.010 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component IAO21AD2 -----
component IAO21AD2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.054 ns, 0.084 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.056 ns, 0.091 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.028 ns, 0.008 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component IAO21AD4 -----
component IAO21AD4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.056 ns, 0.082 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.057 ns, 0.088 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.028 ns, 0.008 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component IAO22AD0 -----
component IAO22AD0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.045 ns, 0.054 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.048 ns, 0.061 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.042 ns, 0.019 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.050 ns, 0.022 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component IAO22AD1 -----
component IAO22AD1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.042 ns, 0.048 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.042 ns, 0.051 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.037 ns, 0.018 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.046 ns, 0.020 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component IAO22AD2 -----
component IAO22AD2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.048 ns, 0.073 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.044 ns, 0.069 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.078 ns, 0.060 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.074 ns, 0.060 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component IAO22AD4 -----
component IAO22AD4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.045 ns, 0.073 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.042 ns, 0.071 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.094 ns, 0.068 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.087 ns, 0.068 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component IIND4D0 -----
component IIND4D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.041 ns, 0.056 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.046 ns, 0.065 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.029 ns, 0.039 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.033 ns, 0.043 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component IIND4D1 -----
component IIND4D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.037 ns, 0.057 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.044 ns, 0.067 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.025 ns, 0.039 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.027 ns, 0.040 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component IIND4D2 -----
component IIND4D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.044 ns, 0.072 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.054 ns, 0.083 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.024 ns, 0.036 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.028 ns, 0.040 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component IIND4D4 -----
component IIND4D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.032 ns, 0.050 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.041 ns, 0.067 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.023 ns, 0.035 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.026 ns, 0.039 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component IINR4D0 -----
component IINR4D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.048 ns, 0.044 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.072 ns, 0.054 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.066 ns, 0.026 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.067 ns, 0.027 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component IINR4D1 -----
component IINR4D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.045 ns, 0.059 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.068 ns, 0.063 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.063 ns, 0.024 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.067 ns, 0.026 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component IINR4D2 -----
component IINR4D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.055 ns, 0.073 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.087 ns, 0.087 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.071 ns, 0.025 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.076 ns, 0.026 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component IINR4D4 -----
component IINR4D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.039 ns, 0.053 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.064 ns, 0.059 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.062 ns, 0.033 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.066 ns, 0.034 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component IND2D0 -----
component IND2D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.035 ns, 0.041 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.018 ns, 0.016 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component IND2D1 -----
component IND2D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.035 ns, 0.045 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.016 ns, 0.014 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component IND2D2 -----
component IND2D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.039 ns, 0.056 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.017 ns, 0.017 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component IND2D4 -----
component IND2D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.033 ns, 0.041 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.015 ns, 0.014 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component IND3D0 -----
component IND3D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.040 ns, 0.051 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.026 ns, 0.027 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.022 ns, 0.024 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component IND3D1 -----
component IND3D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.040 ns, 0.055 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.024 ns, 0.026 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.018 ns, 0.021 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component IND3D2 -----
component IND3D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.050 ns, 0.074 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.022 ns, 0.026 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.017 ns, 0.019 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component IND3D4 -----
component IND3D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.038 ns, 0.051 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.022 ns, 0.023 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.018 ns, 0.019 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component IND4D0 -----
component IND4D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.044 ns, 0.063 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.031 ns, 0.042 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.028 ns, 0.040 ns);
      tpd_B3_ZN                      :	VitalDelayType01 := (0.024 ns, 0.031 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      B3                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component IND4D1 -----
component IND4D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.043 ns, 0.068 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.028 ns, 0.039 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.025 ns, 0.037 ns);
      tpd_B3_ZN                      :	VitalDelayType01 := (0.021 ns, 0.028 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      B3                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component IND4D2 -----
component IND4D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.042 ns, 0.070 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.023 ns, 0.037 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.026 ns, 0.044 ns);
      tpd_B3_ZN                      :	VitalDelayType01 := (0.027 ns, 0.046 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      B3                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component IND4D4 -----
component IND4D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.041 ns, 0.066 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.023 ns, 0.034 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.030 ns, 0.037 ns);
      tpd_B3_ZN                      :	VitalDelayType01 := (0.018 ns, 0.026 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      B3                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component INR2D0 -----
component INR2D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.050 ns, 0.033 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.034 ns, 0.011 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component INR2D1 -----
component INR2D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.048 ns, 0.038 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.028 ns, 0.010 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component INR2D2 -----
component INR2D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.045 ns, 0.037 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.028 ns, 0.008 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component INR2D4 -----
component INR2D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.047 ns, 0.034 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.028 ns, 0.008 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component INR3D0 -----
component INR3D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.059 ns, 0.045 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.043 ns, 0.017 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.030 ns, 0.014 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component INR3D1 -----
component INR3D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.059 ns, 0.043 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.043 ns, 0.016 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.027 ns, 0.013 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component INR3D2 -----
component INR3D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.075 ns, 0.040 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.060 ns, 0.010 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.043 ns, 0.009 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component INR3D4 -----
component INR3D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.081 ns, 0.037 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.064 ns, 0.010 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.046 ns, 0.009 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component INR4D0 -----
component INR4D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.083 ns, 0.054 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.064 ns, 0.026 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.056 ns, 0.023 ns);
      tpd_B3_ZN                      :	VitalDelayType01 := (0.033 ns, 0.018 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      B3                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component INR4D1 -----
component INR4D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.088 ns, 0.063 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.063 ns, 0.025 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.053 ns, 0.022 ns);
      tpd_B3_ZN                      :	VitalDelayType01 := (0.029 ns, 0.017 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      B3                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component INR4D2 -----
component INR4D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.088 ns, 0.061 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.064 ns, 0.025 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.054 ns, 0.024 ns);
      tpd_B3_ZN                      :	VitalDelayType01 := (0.028 ns, 0.019 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      B3                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component INR4D4 -----
component INR4D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.110 ns, 0.034 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.093 ns, 0.010 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.082 ns, 0.011 ns);
      tpd_B3_ZN                      :	VitalDelayType01 := (0.057 ns, 0.010 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      B3                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component INVD0 -----
component INVD0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_ZN                       :	VitalDelayType01 := (0.015 ns, 0.010 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component INVD1 -----
component INVD1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_ZN                       :	VitalDelayType01 := (0.014 ns, 0.009 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component INVD12 -----
component INVD12
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_ZN                       :	VitalDelayType01 := (0.014 ns, 0.007 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component INVD16 -----
component INVD16
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_ZN                       :	VitalDelayType01 := (0.014 ns, 0.007 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component INVD2 -----
component INVD2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_ZN                       :	VitalDelayType01 := (0.012 ns, 0.007 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component INVD20 -----
component INVD20
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_ZN                       :	VitalDelayType01 := (0.013 ns, 0.007 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component INVD24 -----
component INVD24
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_ZN                       :	VitalDelayType01 := (0.014 ns, 0.007 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component INVD3 -----
component INVD3
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_ZN                       :	VitalDelayType01 := (0.013 ns, 0.007 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component INVD4 -----
component INVD4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_ZN                       :	VitalDelayType01 := (0.013 ns, 0.007 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component INVD6 -----
component INVD6
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_ZN                       :	VitalDelayType01 := (0.013 ns, 0.007 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component INVD8 -----
component INVD8
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I_ZN                       :	VitalDelayType01 := (0.013 ns, 0.007 ns);
      tipd_I                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component IOA21AD0 -----
component IOA21AD0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.046 ns, 0.056 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.049 ns, 0.062 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.018 ns, 0.016 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component IOA21AD1 -----
component IOA21AD1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.040 ns, 0.048 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.043 ns, 0.055 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.016 ns, 0.014 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component IOA21AD2 -----
component IOA21AD2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.049 ns, 0.046 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.049 ns, 0.048 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.016 ns, 0.013 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component IOA21AD4 -----
component IOA21AD4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.052 ns, 0.055 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.054 ns, 0.062 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.017 ns, 0.016 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component IOA22AD0 -----
component IOA22AD0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.048 ns, 0.058 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.046 ns, 0.056 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.054 ns, 0.024 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.046 ns, 0.022 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component IOA22AD1 -----
component IOA22AD1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.041 ns, 0.052 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.040 ns, 0.048 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.048 ns, 0.023 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.041 ns, 0.020 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component IOA22AD2 -----
component IOA22AD2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.044 ns, 0.064 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.046 ns, 0.070 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.068 ns, 0.075 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.072 ns, 0.082 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component IOA22AD4 -----
component IOA22AD4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.053 ns, 0.066 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.044 ns, 0.073 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.083 ns, 0.080 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.085 ns, 0.083 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component LHCND1 -----
component LHCND1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.118 ns, 0.098 ns);
      tpd_D_Q                        :	VitalDelayType01 := (0.117 ns, 0.131 ns);
      tpd_E_Q                        :	VitalDelayType01 := (0.104 ns, 0.133 ns);
      tpd_CDN_QN                     :	VitalDelayType01 := (0.075 ns, 0.091 ns);
      tpd_D_QN                       :	VitalDelayType01 := (0.106 ns, 0.088 ns);
      tpd_E_QN                       :	VitalDelayType01 := (0.110 ns, 0.076 ns);
      trecovery_CDN_E                :	VitalDelayType := 0.062 ns;
      thold_CDN_E                    :	VitalDelayType := -0.056 ns;
      thold_D_E                      :	VitalDelayType := -0.053 ns;
      tsetup_D_E                     :	VitalDelayType := 0.073 ns;
      tpw_E_posedge                  :	VitalDelayType := 0.079 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.064 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component;


----- Component LHCND2 -----
component LHCND2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.138 ns, 0.123 ns);
      tpd_D_Q                        :	VitalDelayType01 := (0.139 ns, 0.158 ns);
      tpd_E_Q                        :	VitalDelayType01 := (0.127 ns, 0.158 ns);
      tpd_CDN_QN                     :	VitalDelayType01 := (0.080 ns, 0.098 ns);
      tpd_D_QN                       :	VitalDelayType01 := (0.116 ns, 0.095 ns);
      tpd_E_QN                       :	VitalDelayType01 := (0.115 ns, 0.085 ns);
      trecovery_CDN_E                :	VitalDelayType := 0.064 ns;
      thold_CDN_E                    :	VitalDelayType := -0.059 ns;
      thold_D_E                      :	VitalDelayType := -0.056 ns;
      tsetup_D_E                     :	VitalDelayType := 0.076 ns;
      tpw_E_posedge                  :	VitalDelayType := 0.091 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.076 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component;


----- Component LHCND4 -----
component LHCND4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.183 ns, 0.166 ns);
      tpd_D_Q                        :	VitalDelayType01 := (0.182 ns, 0.204 ns);
      tpd_E_Q                        :	VitalDelayType01 := (0.180 ns, 0.206 ns);
      tpd_CDN_QN                     :	VitalDelayType01 := (0.094 ns, 0.115 ns);
      tpd_D_QN                       :	VitalDelayType01 := (0.130 ns, 0.115 ns);
      tpd_E_QN                       :	VitalDelayType01 := (0.131 ns, 0.102 ns);
      trecovery_CDN_E                :	VitalDelayType := 0.073 ns;
      thold_CDN_E                    :	VitalDelayType := -0.064 ns;
      thold_D_E                      :	VitalDelayType := -0.062 ns;
      tsetup_D_E                     :	VitalDelayType := 0.085 ns;
      tpw_E_posedge                  :	VitalDelayType := 0.115 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.097 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component;


----- Component LHCSND1 -----
component LHCSND1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.145 ns, 0.113 ns);
      tpd_D_Q                        :	VitalDelayType01 := (0.146 ns, 0.141 ns);
      tpd_E_Q                        :	VitalDelayType01 := (0.134 ns, 0.140 ns);
      tpd_SDN_Q                      :	VitalDelayType01 := (0.087 ns, 0.073 ns);
      tpd_CDN_QN                     :	VitalDelayType01 := (0.084 ns, 0.113 ns);
      tpd_D_QN                       :	VitalDelayType01 := (0.112 ns, 0.112 ns);
      tpd_E_QN                       :	VitalDelayType01 := (0.111 ns, 0.099 ns);
      tpd_SDN_QN                     :	VitalDelayType01 := (0.045 ns, 0.054 ns);
      trecovery_CDN_E                :	VitalDelayType := 0.073 ns;
      trecovery_CDN_SDN              :	VitalDelayType := -0.021 ns;
      thold_CDN_E                    :	VitalDelayType := -0.064 ns;
      thold_D_E                      :	VitalDelayType := -0.062 ns;
      tsetup_D_E                     :	VitalDelayType := 0.073 ns;
      trecovery_SDN_E                :	VitalDelayType := -0.012 ns;
      trecovery_SDN_CDN              :	VitalDelayType := 0.021 ns;
      thold_SDN_E                    :	VitalDelayType := 0.026 ns;
      thold_SDN_CDN                  :	VitalDelayType := 0.000 ns;
      thold_CDN_SDN                  :	VitalDelayType := 0.000 ns;
      tpw_E_posedge                  :	VitalDelayType := 0.082 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.071 ns;
      tpw_SDN_negedge                :	VitalDelayType := 0.070 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SDN                            :	in    STD_ULOGIC);
end component;


----- Component LHCSND2 -----
component LHCSND2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.172 ns, 0.138 ns);
      tpd_D_Q                        :	VitalDelayType01 := (0.172 ns, 0.169 ns);
      tpd_E_Q                        :	VitalDelayType01 := (0.164 ns, 0.168 ns);
      tpd_SDN_Q                      :	VitalDelayType01 := (0.109 ns, 0.097 ns);
      tpd_CDN_QN                     :	VitalDelayType01 := (0.094 ns, 0.124 ns);
      tpd_D_QN                       :	VitalDelayType01 := (0.124 ns, 0.123 ns);
      tpd_E_QN                       :	VitalDelayType01 := (0.124 ns, 0.113 ns);
      tpd_SDN_QN                     :	VitalDelayType01 := (0.053 ns, 0.062 ns);
      trecovery_CDN_E                :	VitalDelayType := 0.079 ns;
      trecovery_CDN_SDN              :	VitalDelayType := -0.015 ns;
      thold_CDN_E                    :	VitalDelayType := -0.067 ns;
      thold_D_E                      :	VitalDelayType := -0.067 ns;
      tsetup_D_E                     :	VitalDelayType := 0.076 ns;
      trecovery_SDN_E                :	VitalDelayType := -0.009 ns;
      trecovery_SDN_CDN              :	VitalDelayType := 0.018 ns;
      thold_SDN_E                    :	VitalDelayType := 0.021 ns;
      thold_SDN_CDN                  :	VitalDelayType := 0.000 ns;
      thold_CDN_SDN                  :	VitalDelayType := 0.000 ns;
      tpw_E_posedge                  :	VitalDelayType := 0.096 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.083 ns;
      tpw_SDN_negedge                :	VitalDelayType := 0.082 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SDN                            :	in    STD_ULOGIC);
end component;


----- Component LHCSND4 -----
component LHCSND4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.234 ns, 0.191 ns);
      tpd_D_Q                        :	VitalDelayType01 := (0.240 ns, 0.225 ns);
      tpd_E_Q                        :	VitalDelayType01 := (0.227 ns, 0.223 ns);
      tpd_SDN_Q                      :	VitalDelayType01 := (0.170 ns, 0.158 ns);
      tpd_CDN_QN                     :	VitalDelayType01 := (0.110 ns, 0.150 ns);
      tpd_D_QN                       :	VitalDelayType01 := (0.143 ns, 0.149 ns);
      tpd_E_QN                       :	VitalDelayType01 := (0.144 ns, 0.138 ns);
      tpd_SDN_QN                     :	VitalDelayType01 := (0.075 ns, 0.087 ns);
      trecovery_CDN_E                :	VitalDelayType := 0.094 ns;
      trecovery_CDN_SDN              :	VitalDelayType := -0.003 ns;
      thold_CDN_E                    :	VitalDelayType := -0.079 ns;
      thold_D_E                      :	VitalDelayType := -0.076 ns;
      tsetup_D_E                     :	VitalDelayType := 0.091 ns;
      trecovery_SDN_E                :	VitalDelayType := 0.003 ns;
      trecovery_SDN_CDN              :	VitalDelayType := 0.006 ns;
      thold_SDN_E                    :	VitalDelayType := 0.012 ns;
      thold_SDN_CDN                  :	VitalDelayType := 0.000 ns;
      thold_CDN_SDN                  :	VitalDelayType := 0.000 ns;
      tpw_E_posedge                  :	VitalDelayType := 0.125 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.109 ns;
      tpw_SDN_negedge                :	VitalDelayType := 0.119 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SDN                            :	in    STD_ULOGIC);
end component;


----- Component LHD1 -----
component LHD1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_D_Q                        :	VitalDelayType01 := (0.049 ns, 0.069 ns);
      tpd_E_Q                        :	VitalDelayType01 := (0.081 ns, 0.071 ns);
      tpd_D_QN                       :	VitalDelayType01 := (0.105 ns, 0.081 ns);
      tpd_E_QN                       :	VitalDelayType01 := (0.108 ns, 0.113 ns);
      thold_D_E                      :	VitalDelayType := 0.000 ns;
      tsetup_D_E                     :	VitalDelayType := 0.056 ns;
      tpw_E_posedge                  :	VitalDelayType := 0.084 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component;


----- Component LHD2 -----
component LHD2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_D_Q                        :	VitalDelayType01 := (0.057 ns, 0.082 ns);
      tpd_E_Q                        :	VitalDelayType01 := (0.088 ns, 0.084 ns);
      tpd_D_QN                       :	VitalDelayType01 := (0.135 ns, 0.109 ns);
      tpd_E_QN                       :	VitalDelayType01 := (0.141 ns, 0.140 ns);
      thold_D_E                      :	VitalDelayType := -0.015 ns;
      tsetup_D_E                     :	VitalDelayType := 0.082 ns;
      tpw_E_posedge                  :	VitalDelayType := 0.103 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component;


----- Component LHD4 -----
component LHD4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_D_Q                        :	VitalDelayType01 := (0.078 ns, 0.113 ns);
      tpd_E_Q                        :	VitalDelayType01 := (0.106 ns, 0.119 ns);
      tpd_D_QN                       :	VitalDelayType01 := (0.210 ns, 0.161 ns);
      tpd_E_QN                       :	VitalDelayType01 := (0.211 ns, 0.192 ns);
      thold_D_E                      :	VitalDelayType := -0.044 ns;
      tsetup_D_E                     :	VitalDelayType := 0.138 ns;
      tpw_E_posedge                  :	VitalDelayType := 0.145 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component;


----- Component LHSND1 -----
component LHSND1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_D_Q                        :	VitalDelayType01 := (0.108 ns, 0.132 ns);
      tpd_E_Q                        :	VitalDelayType01 := (0.101 ns, 0.135 ns);
      tpd_SDN_Q                      :	VitalDelayType01 := (0.069 ns, 0.076 ns);
      tpd_D_QN                       :	VitalDelayType01 := (0.107 ns, 0.079 ns);
      tpd_E_QN                       :	VitalDelayType01 := (0.109 ns, 0.073 ns);
      tpd_SDN_QN                     :	VitalDelayType01 := (0.050 ns, 0.042 ns);
      thold_D_E                      :	VitalDelayType := -0.038 ns;
      tsetup_D_E                     :	VitalDelayType := 0.062 ns;
      trecovery_SDN_E                :	VitalDelayType := -0.009 ns;
      thold_SDN_E                    :	VitalDelayType := 0.021 ns;
      tpw_E_posedge                  :	VitalDelayType := 0.076 ns;
      tpw_SDN_negedge                :	VitalDelayType := 0.050 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SDN                            :	in    STD_ULOGIC);
end component;


----- Component LHSND2 -----
component LHSND2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_D_Q                        :	VitalDelayType01 := (0.127 ns, 0.160 ns);
      tpd_E_Q                        :	VitalDelayType01 := (0.122 ns, 0.162 ns);
      tpd_SDN_Q                      :	VitalDelayType01 := (0.090 ns, 0.102 ns);
      tpd_D_QN                       :	VitalDelayType01 := (0.113 ns, 0.085 ns);
      tpd_E_QN                       :	VitalDelayType01 := (0.114 ns, 0.077 ns);
      tpd_SDN_QN                     :	VitalDelayType01 := (0.057 ns, 0.047 ns);
      thold_D_E                      :	VitalDelayType := -0.038 ns;
      tsetup_D_E                     :	VitalDelayType := 0.064 ns;
      trecovery_SDN_E                :	VitalDelayType := -0.009 ns;
      thold_SDN_E                    :	VitalDelayType := 0.015 ns;
      tpw_E_posedge                  :	VitalDelayType := 0.089 ns;
      tpw_SDN_negedge                :	VitalDelayType := 0.062 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SDN                            :	in    STD_ULOGIC);
end component;


----- Component LHSND4 -----
component LHSND4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_D_Q                        :	VitalDelayType01 := (0.178 ns, 0.217 ns);
      tpd_E_Q                        :	VitalDelayType01 := (0.165 ns, 0.219 ns);
      tpd_SDN_Q                      :	VitalDelayType01 := (0.131 ns, 0.157 ns);
      tpd_D_QN                       :	VitalDelayType01 := (0.135 ns, 0.100 ns);
      tpd_E_QN                       :	VitalDelayType01 := (0.135 ns, 0.094 ns);
      tpd_SDN_QN                     :	VitalDelayType01 := (0.075 ns, 0.063 ns);
      thold_D_E                      :	VitalDelayType := -0.044 ns;
      tsetup_D_E                     :	VitalDelayType := 0.073 ns;
      trecovery_SDN_E                :	VitalDelayType := 0.006 ns;
      thold_SDN_E                    :	VitalDelayType := 0.003 ns;
      tpw_E_posedge                  :	VitalDelayType := 0.117 ns;
      tpw_SDN_negedge                :	VitalDelayType := 0.089 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SDN                            :	in    STD_ULOGIC);
end component;


----- Component LNCND1 -----
component LNCND1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.118 ns, 0.097 ns);
      tpd_D_Q                        :	VitalDelayType01 := (0.114 ns, 0.132 ns);
      tpd_EN_Q                       :	VitalDelayType01 := (0.126 ns, 0.117 ns);
      tpd_CDN_QN                     :	VitalDelayType01 := (0.074 ns, 0.090 ns);
      tpd_D_QN                       :	VitalDelayType01 := (0.109 ns, 0.088 ns);
      tpd_EN_QN                      :	VitalDelayType01 := (0.092 ns, 0.098 ns);
      trecovery_CDN_EN               :	VitalDelayType := 0.059 ns;
      thold_CDN_EN                   :	VitalDelayType := -0.047 ns;
      thold_D_EN                     :	VitalDelayType := -0.044 ns;
      tsetup_D_EN                    :	VitalDelayType := 0.082 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.064 ns;
      tpw_EN_negedge                 :	VitalDelayType := 0.084 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_EN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      EN                             :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component;


----- Component LNCND2 -----
component LNCND2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.139 ns, 0.123 ns);
      tpd_D_Q                        :	VitalDelayType01 := (0.143 ns, 0.156 ns);
      tpd_EN_Q                       :	VitalDelayType01 := (0.147 ns, 0.141 ns);
      tpd_CDN_QN                     :	VitalDelayType01 := (0.080 ns, 0.100 ns);
      tpd_D_QN                       :	VitalDelayType01 := (0.113 ns, 0.098 ns);
      tpd_EN_QN                      :	VitalDelayType01 := (0.098 ns, 0.107 ns);
      trecovery_CDN_EN               :	VitalDelayType := 0.064 ns;
      thold_CDN_EN                   :	VitalDelayType := -0.050 ns;
      thold_D_EN                     :	VitalDelayType := -0.047 ns;
      tsetup_D_EN                    :	VitalDelayType := 0.085 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.076 ns;
      tpw_EN_negedge                 :	VitalDelayType := 0.094 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_EN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      EN                             :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component;


----- Component LNCND4 -----
component LNCND4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.184 ns, 0.166 ns);
      tpd_D_Q                        :	VitalDelayType01 := (0.183 ns, 0.206 ns);
      tpd_EN_Q                       :	VitalDelayType01 := (0.199 ns, 0.188 ns);
      tpd_CDN_QN                     :	VitalDelayType01 := (0.094 ns, 0.116 ns);
      tpd_D_QN                       :	VitalDelayType01 := (0.127 ns, 0.115 ns);
      tpd_EN_QN                      :	VitalDelayType01 := (0.114 ns, 0.125 ns);
      trecovery_CDN_EN               :	VitalDelayType := 0.070 ns;
      thold_CDN_EN                   :	VitalDelayType := -0.053 ns;
      thold_D_EN                     :	VitalDelayType := -0.053 ns;
      tsetup_D_EN                    :	VitalDelayType := 0.094 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.098 ns;
      tpw_EN_negedge                 :	VitalDelayType := 0.120 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_EN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      EN                             :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component;


----- Component LNCSND1 -----
component LNCSND1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.133 ns, 0.117 ns);
      tpd_D_Q                        :	VitalDelayType01 := (0.131 ns, 0.150 ns);
      tpd_EN_Q                       :	VitalDelayType01 := (0.139 ns, 0.134 ns);
      tpd_SDN_Q                      :	VitalDelayType01 := (0.070 ns, 0.077 ns);
      tpd_CDN_QN                     :	VitalDelayType01 := (0.087 ns, 0.103 ns);
      tpd_D_QN                       :	VitalDelayType01 := (0.121 ns, 0.103 ns);
      tpd_EN_QN                      :	VitalDelayType01 := (0.106 ns, 0.109 ns);
      tpd_SDN_QN                     :	VitalDelayType01 := (0.049 ns, 0.041 ns);
      trecovery_CDN_EN               :	VitalDelayType := 0.067 ns;
      trecovery_CDN_SDN              :	VitalDelayType := -0.018 ns;
      thold_CDN_EN                   :	VitalDelayType := -0.053 ns;
      thold_D_EN                     :	VitalDelayType := -0.050 ns;
      tsetup_D_EN                    :	VitalDelayType := 0.088 ns;
      trecovery_SDN_CDN              :	VitalDelayType := 0.021 ns;
      trecovery_SDN_EN               :	VitalDelayType := 0.003 ns;
      thold_SDN_EN                   :	VitalDelayType := 0.009 ns;
      thold_SDN_CDN                  :	VitalDelayType := 0.000 ns;
      thold_CDN_SDN                  :	VitalDelayType := 0.000 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.073 ns;
      tpw_EN_negedge                 :	VitalDelayType := 0.091 ns;
      tpw_SDN_negedge                :	VitalDelayType := 0.059 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_EN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      EN                             :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SDN                            :	in    STD_ULOGIC);
end component;


----- Component LNCSND2 -----
component LNCSND2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.152 ns, 0.143 ns);
      tpd_D_Q                        :	VitalDelayType01 := (0.152 ns, 0.175 ns);
      tpd_EN_Q                       :	VitalDelayType01 := (0.158 ns, 0.164 ns);
      tpd_SDN_Q                      :	VitalDelayType01 := (0.089 ns, 0.101 ns);
      tpd_CDN_QN                     :	VitalDelayType01 := (0.097 ns, 0.110 ns);
      tpd_D_QN                       :	VitalDelayType01 := (0.129 ns, 0.111 ns);
      tpd_EN_QN                      :	VitalDelayType01 := (0.120 ns, 0.117 ns);
      tpd_SDN_QN                     :	VitalDelayType01 := (0.056 ns, 0.047 ns);
      trecovery_CDN_EN               :	VitalDelayType := 0.070 ns;
      trecovery_CDN_SDN              :	VitalDelayType := -0.012 ns;
      thold_CDN_EN                   :	VitalDelayType := -0.056 ns;
      thold_D_EN                     :	VitalDelayType := -0.056 ns;
      tsetup_D_EN                    :	VitalDelayType := 0.094 ns;
      trecovery_SDN_CDN              :	VitalDelayType := 0.015 ns;
      trecovery_SDN_EN               :	VitalDelayType := 0.006 ns;
      thold_SDN_EN                   :	VitalDelayType := 0.003 ns;
      thold_SDN_CDN                  :	VitalDelayType := 0.000 ns;
      thold_CDN_SDN                  :	VitalDelayType := 0.000 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.086 ns;
      tpw_EN_negedge                 :	VitalDelayType := 0.103 ns;
      tpw_SDN_negedge                :	VitalDelayType := 0.067 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_EN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      EN                             :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SDN                            :	in    STD_ULOGIC);
end component;


----- Component LNCSND4 -----
component LNCSND4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.197 ns, 0.199 ns);
      tpd_D_Q                        :	VitalDelayType01 := (0.196 ns, 0.233 ns);
      tpd_EN_Q                       :	VitalDelayType01 := (0.211 ns, 0.220 ns);
      tpd_SDN_Q                      :	VitalDelayType01 := (0.130 ns, 0.156 ns);
      tpd_CDN_QN                     :	VitalDelayType01 := (0.117 ns, 0.129 ns);
      tpd_D_QN                       :	VitalDelayType01 := (0.148 ns, 0.125 ns);
      tpd_EN_QN                      :	VitalDelayType01 := (0.135 ns, 0.135 ns);
      tpd_SDN_QN                     :	VitalDelayType01 := (0.074 ns, 0.063 ns);
      trecovery_CDN_EN               :	VitalDelayType := 0.079 ns;
      trecovery_CDN_SDN              :	VitalDelayType := -0.003 ns;
      thold_CDN_EN                   :	VitalDelayType := -0.062 ns;
      thold_D_EN                     :	VitalDelayType := -0.059 ns;
      tsetup_D_EN                    :	VitalDelayType := 0.102 ns;
      trecovery_SDN_CDN              :	VitalDelayType := 0.006 ns;
      trecovery_SDN_EN               :	VitalDelayType := 0.021 ns;
      thold_SDN_EN                   :	VitalDelayType := -0.009 ns;
      thold_SDN_CDN                  :	VitalDelayType := 0.000 ns;
      thold_CDN_SDN                  :	VitalDelayType := 0.000 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.114 ns;
      tpw_EN_negedge                 :	VitalDelayType := 0.131 ns;
      tpw_SDN_negedge                :	VitalDelayType := 0.089 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_EN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      EN                             :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SDN                            :	in    STD_ULOGIC);
end component;


----- Component LND1 -----
component LND1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_D_Q                        :	VitalDelayType01 := (0.049 ns, 0.069 ns);
      tpd_EN_Q                       :	VitalDelayType01 := (0.078 ns, 0.102 ns);
      tpd_D_QN                       :	VitalDelayType01 := (0.105 ns, 0.081 ns);
      tpd_EN_QN                      :	VitalDelayType01 := (0.138 ns, 0.110 ns);
      thold_D_EN                     :	VitalDelayType := -0.029 ns;
      tsetup_D_EN                    :	VitalDelayType := 0.044 ns;
      tpw_EN_negedge                 :	VitalDelayType := 0.096 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_EN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      D                              :	in    STD_ULOGIC;
      EN                             :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component;


----- Component LND2 -----
component LND2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_D_Q                        :	VitalDelayType01 := (0.057 ns, 0.082 ns);
      tpd_EN_Q                       :	VitalDelayType01 := (0.084 ns, 0.116 ns);
      tpd_D_QN                       :	VitalDelayType01 := (0.135 ns, 0.107 ns);
      tpd_EN_QN                      :	VitalDelayType01 := (0.172 ns, 0.135 ns);
      thold_D_EN                     :	VitalDelayType := -0.044 ns;
      tsetup_D_EN                    :	VitalDelayType := 0.070 ns;
      tpw_EN_negedge                 :	VitalDelayType := 0.117 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_EN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      D                              :	in    STD_ULOGIC;
      EN                             :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component;


----- Component LND4 -----
component LND4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_D_Q                        :	VitalDelayType01 := (0.078 ns, 0.116 ns);
      tpd_EN_Q                       :	VitalDelayType01 := (0.108 ns, 0.144 ns);
      tpd_D_QN                       :	VitalDelayType01 := (0.210 ns, 0.163 ns);
      tpd_EN_QN                      :	VitalDelayType01 := (0.241 ns, 0.193 ns);
      thold_D_EN                     :	VitalDelayType := -0.070 ns;
      tsetup_D_EN                    :	VitalDelayType := 0.129 ns;
      tpw_EN_negedge                 :	VitalDelayType := 0.158 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_EN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      D                              :	in    STD_ULOGIC;
      EN                             :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC);
end component;


----- Component LNSND1 -----
component LNSND1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_D_Q                        :	VitalDelayType01 := (0.108 ns, 0.133 ns);
      tpd_EN_Q                       :	VitalDelayType01 := (0.122 ns, 0.120 ns);
      tpd_SDN_Q                      :	VitalDelayType01 := (0.069 ns, 0.076 ns);
      tpd_D_QN                       :	VitalDelayType01 := (0.106 ns, 0.080 ns);
      tpd_EN_QN                      :	VitalDelayType01 := (0.091 ns, 0.094 ns);
      tpd_SDN_QN                     :	VitalDelayType01 := (0.050 ns, 0.042 ns);
      thold_D_EN                     :	VitalDelayType := -0.026 ns;
      tsetup_D_EN                    :	VitalDelayType := 0.076 ns;
      trecovery_SDN_EN               :	VitalDelayType := 0.012 ns;
      thold_SDN_EN                   :	VitalDelayType := -0.003 ns;
      tpw_EN_negedge                 :	VitalDelayType := 0.076 ns;
      tpw_SDN_negedge                :	VitalDelayType := 0.050 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_EN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      D                              :	in    STD_ULOGIC;
      EN                             :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SDN                            :	in    STD_ULOGIC);
end component;


----- Component LNSND2 -----
component LNSND2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_D_Q                        :	VitalDelayType01 := (0.133 ns, 0.159 ns);
      tpd_EN_Q                       :	VitalDelayType01 := (0.139 ns, 0.146 ns);
      tpd_SDN_Q                      :	VitalDelayType01 := (0.090 ns, 0.102 ns);
      tpd_D_QN                       :	VitalDelayType01 := (0.113 ns, 0.087 ns);
      tpd_EN_QN                      :	VitalDelayType01 := (0.099 ns, 0.099 ns);
      tpd_SDN_QN                     :	VitalDelayType01 := (0.057 ns, 0.047 ns);
      thold_D_EN                     :	VitalDelayType := -0.029 ns;
      tsetup_D_EN                    :	VitalDelayType := 0.079 ns;
      trecovery_SDN_EN               :	VitalDelayType := 0.018 ns;
      thold_SDN_EN                   :	VitalDelayType := -0.009 ns;
      tpw_EN_negedge                 :	VitalDelayType := 0.088 ns;
      tpw_SDN_negedge                :	VitalDelayType := 0.062 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_EN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      D                              :	in    STD_ULOGIC;
      EN                             :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SDN                            :	in    STD_ULOGIC);
end component;


----- Component LNSND4 -----
component LNSND4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_D_Q                        :	VitalDelayType01 := (0.174 ns, 0.216 ns);
      tpd_EN_Q                       :	VitalDelayType01 := (0.192 ns, 0.202 ns);
      tpd_SDN_Q                      :	VitalDelayType01 := (0.131 ns, 0.157 ns);
      tpd_D_QN                       :	VitalDelayType01 := (0.134 ns, 0.101 ns);
      tpd_EN_QN                      :	VitalDelayType01 := (0.120 ns, 0.118 ns);
      tpd_SDN_QN                     :	VitalDelayType01 := (0.075 ns, 0.063 ns);
      thold_D_EN                     :	VitalDelayType := -0.032 ns;
      tsetup_D_EN                    :	VitalDelayType := 0.091 ns;
      trecovery_SDN_EN               :	VitalDelayType := 0.029 ns;
      thold_SDN_EN                   :	VitalDelayType := -0.023 ns;
      tpw_EN_negedge                 :	VitalDelayType := 0.116 ns;
      tpw_SDN_negedge                :	VitalDelayType := 0.089 ns;
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_EN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      D                              :	in    STD_ULOGIC;
      EN                             :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SDN                            :	in    STD_ULOGIC);
end component;


----- Component MAOI222D0 -----
component MAOI222D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A_ZN                       :	VitalDelayType01 := (0.063 ns, 0.031 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.069 ns, 0.032 ns);
      tpd_C_ZN                       :	VitalDelayType01 := (0.072 ns, 0.034 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component MAOI222D1 -----
component MAOI222D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A_ZN                       :	VitalDelayType01 := (0.058 ns, 0.030 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.063 ns, 0.032 ns);
      tpd_C_ZN                       :	VitalDelayType01 := (0.066 ns, 0.035 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component MAOI222D2 -----
component MAOI222D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A_ZN                       :	VitalDelayType01 := (0.111 ns, 0.076 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.109 ns, 0.076 ns);
      tpd_C_ZN                       :	VitalDelayType01 := (0.112 ns, 0.077 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component MAOI222D4 -----
component MAOI222D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A_ZN                       :	VitalDelayType01 := (0.119 ns, 0.089 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.122 ns, 0.091 ns);
      tpd_C_ZN                       :	VitalDelayType01 := (0.124 ns, 0.091 ns);
      tipd_A                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A                              :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component MAOI22D0 -----
component MAOI22D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.037 ns, 0.017 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.041 ns, 0.020 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.059 ns, 0.059 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.062 ns, 0.065 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component MAOI22D1 -----
component MAOI22D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.033 ns, 0.015 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.038 ns, 0.018 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.053 ns, 0.051 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.054 ns, 0.056 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component MAOI22D2 -----
component MAOI22D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.063 ns, 0.062 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.068 ns, 0.064 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.038 ns, 0.057 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.043 ns, 0.064 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component MAOI22D4 -----
component MAOI22D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.075 ns, 0.074 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.077 ns, 0.077 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.048 ns, 0.083 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.054 ns, 0.087 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component MOAI22D0 -----
component MOAI22D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.037 ns, 0.016 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.044 ns, 0.019 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.047 ns, 0.044 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.051 ns, 0.049 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component MOAI22D1 -----
component MOAI22D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.033 ns, 0.015 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.039 ns, 0.018 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.042 ns, 0.039 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.045 ns, 0.045 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component MOAI22D2 -----
component MOAI22D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.078 ns, 0.078 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.071 ns, 0.077 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.039 ns, 0.060 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.040 ns, 0.066 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component MOAI22D4 -----
component MOAI22D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.087 ns, 0.101 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.082 ns, 0.100 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.051 ns, 0.085 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.052 ns, 0.090 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component MUX2D0 -----
component MUX2D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I0_Z                       :	VitalDelayType01 := (0.050 ns, 0.064 ns);
      tpd_I1_Z                       :	VitalDelayType01 := (0.051 ns, 0.065 ns);
      tpd_S_Z_I0_EQ_0_AN_I1_EQ_1     :	VitalDelayType01 := (0.040 ns, 0.058 ns);
      tpd_S_Z_I0_EQ_1_AN_I1_EQ_0     :	VitalDelayType01 := (0.064 ns, 0.055 ns);
      tpd_S_Z                        :	VitalDelayType01 := (0.064 ns, 0.058 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I0                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component MUX2D1 -----
component MUX2D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I0_Z                       :	VitalDelayType01 := (0.046 ns, 0.053 ns);
      tpd_I1_Z                       :	VitalDelayType01 := (0.041 ns, 0.049 ns);
      tpd_S_Z_I0_EQ_0_AN_I1_EQ_1     :	VitalDelayType01 := (0.034 ns, 0.051 ns);
      tpd_S_Z_I0_EQ_1_AN_I1_EQ_0     :	VitalDelayType01 := (0.058 ns, 0.045 ns);
      tpd_S_Z                        :	VitalDelayType01 := (0.058 ns, 0.051 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I0                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component MUX2D2 -----
component MUX2D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I0_Z                       :	VitalDelayType01 := (0.056 ns, 0.064 ns);
      tpd_I1_Z                       :	VitalDelayType01 := (0.046 ns, 0.058 ns);
      tpd_S_Z_I0_EQ_0_AN_I1_EQ_1     :	VitalDelayType01 := (0.043 ns, 0.065 ns);
      tpd_S_Z_I0_EQ_1_AN_I1_EQ_0     :	VitalDelayType01 := (0.066 ns, 0.054 ns);
      tpd_S_Z                        :	VitalDelayType01 := (0.066 ns, 0.065 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I0                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component MUX2D4 -----
component MUX2D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I0_Z                       :	VitalDelayType01 := (0.047 ns, 0.054 ns);
      tpd_I1_Z                       :	VitalDelayType01 := (0.047 ns, 0.062 ns);
      tpd_S_Z_I0_EQ_0_AN_I1_EQ_1     :	VitalDelayType01 := (0.045 ns, 0.059 ns);
      tpd_S_Z_I0_EQ_1_AN_I1_EQ_0     :	VitalDelayType01 := (0.062 ns, 0.058 ns);
      tpd_S_Z                        :	VitalDelayType01 := (0.062 ns, 0.059 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I0                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component MUX2ND0 -----
component MUX2ND0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I0_ZN                      :	VitalDelayType01 := (0.034 ns, 0.021 ns);
      tpd_I1_ZN                      :	VitalDelayType01 := (0.034 ns, 0.020 ns);
      tpd_S_ZN_I0_EQ_0_AN_I1_EQ_1    :	VitalDelayType01 := (0.030 ns, 0.014 ns);
      tpd_S_ZN_I0_EQ_1_AN_I1_EQ_0    :	VitalDelayType01 := (0.027 ns, 0.032 ns);
      tpd_S_ZN                       :	VitalDelayType01 := (0.030 ns, 0.032 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I0                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component MUX2ND1 -----
component MUX2ND1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I0_ZN                      :	VitalDelayType01 := (0.071 ns, 0.068 ns);
      tpd_I1_ZN                      :	VitalDelayType01 := (0.068 ns, 0.060 ns);
      tpd_S_ZN_I0_EQ_0_AN_I1_EQ_1    :	VitalDelayType01 := (0.069 ns, 0.054 ns);
      tpd_S_ZN_I0_EQ_1_AN_I1_EQ_0    :	VitalDelayType01 := (0.066 ns, 0.077 ns);
      tpd_S_ZN                       :	VitalDelayType01 := (0.069 ns, 0.077 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I0                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component MUX2ND2 -----
component MUX2ND2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I0_ZN                      :	VitalDelayType01 := (0.084 ns, 0.079 ns);
      tpd_I1_ZN                      :	VitalDelayType01 := (0.077 ns, 0.076 ns);
      tpd_S_ZN_I0_EQ_0_AN_I1_EQ_1    :	VitalDelayType01 := (0.082 ns, 0.067 ns);
      tpd_S_ZN_I0_EQ_1_AN_I1_EQ_0    :	VitalDelayType01 := (0.073 ns, 0.091 ns);
      tpd_S_ZN                       :	VitalDelayType01 := (0.082 ns, 0.091 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I0                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component MUX2ND4 -----
component MUX2ND4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I0_ZN                      :	VitalDelayType01 := (0.072 ns, 0.066 ns);
      tpd_I1_ZN                      :	VitalDelayType01 := (0.075 ns, 0.061 ns);
      tpd_S_ZN_I0_EQ_0_AN_I1_EQ_1    :	VitalDelayType01 := (0.066 ns, 0.058 ns);
      tpd_S_ZN_I0_EQ_1_AN_I1_EQ_0    :	VitalDelayType01 := (0.072 ns, 0.079 ns);
      tpd_S_ZN                       :	VitalDelayType01 := (0.072 ns, 0.079 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I0                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      S                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component MUX3D0 -----
component MUX3D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I0_Z                       :	VitalDelayType01 := (0.080 ns, 0.099 ns);
      tpd_I1_Z                       :	VitalDelayType01 := (0.080 ns, 0.102 ns);
      tpd_I2_Z                       :	VitalDelayType01 := (0.051 ns, 0.064 ns);
      tpd_S0_Z_I0_EQ_0_AN_I1_EQ_1    :	VitalDelayType01 := (0.071 ns, 0.097 ns);
      tpd_S0_Z_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_0_AN_S1_EQ_0 :	VitalDelayType01 := (0.090 ns, 0.087 ns);
      tpd_S0_Z                       :	VitalDelayType01 := (0.090 ns, 0.097 ns);
      tpd_S1_Z_I0_EQ_0_AN_I1_EQ_0_AN_I2_EQ_1_AN_S0_EQ_0 :	VitalDelayType01 := (0.041 ns, 0.059 ns);
      tpd_S1_Z_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_0_AN_S0_EQ_0 :	VitalDelayType01 := (0.068 ns, 0.054 ns);
      tpd_S1_Z_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_1_AN_S0_EQ_1 :	VitalDelayType01 := (0.041 ns, 0.059 ns);
      tpd_S1_Z_I0_EQ_1_AN_I1_EQ_1_AN_I2_EQ_0_AN_S0_EQ_1 :	VitalDelayType01 := (0.068 ns, 0.054 ns);
      tpd_S1_Z                       :	VitalDelayType01 := (0.068 ns, 0.059 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I0                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      S0                             :	in    STD_ULOGIC;
      S1                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component MUX3D1 -----
component MUX3D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I0_Z                       :	VitalDelayType01 := (0.075 ns, 0.086 ns);
      tpd_I1_Z                       :	VitalDelayType01 := (0.064 ns, 0.076 ns);
      tpd_I2_Z                       :	VitalDelayType01 := (0.041 ns, 0.049 ns);
      tpd_S0_Z_I0_EQ_0_AN_I1_EQ_1    :	VitalDelayType01 := (0.058 ns, 0.082 ns);
      tpd_S0_Z_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_0_AN_S1_EQ_0 :	VitalDelayType01 := (0.082 ns, 0.074 ns);
      tpd_S0_Z                       :	VitalDelayType01 := (0.082 ns, 0.082 ns);
      tpd_S1_Z_I0_EQ_0_AN_I1_EQ_0_AN_I2_EQ_1_AN_S0_EQ_0 :	VitalDelayType01 := (0.036 ns, 0.056 ns);
      tpd_S1_Z_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_0_AN_S0_EQ_0 :	VitalDelayType01 := (0.065 ns, 0.046 ns);
      tpd_S1_Z_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_1_AN_S0_EQ_1 :	VitalDelayType01 := (0.036 ns, 0.056 ns);
      tpd_S1_Z_I0_EQ_1_AN_I1_EQ_1_AN_I2_EQ_0_AN_S0_EQ_1 :	VitalDelayType01 := (0.061 ns, 0.046 ns);
      tpd_S1_Z                       :	VitalDelayType01 := (0.063 ns, 0.056 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I0                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      S0                             :	in    STD_ULOGIC;
      S1                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component MUX3D2 -----
component MUX3D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I0_Z                       :	VitalDelayType01 := (0.085 ns, 0.100 ns);
      tpd_I1_Z                       :	VitalDelayType01 := (0.069 ns, 0.092 ns);
      tpd_I2_Z                       :	VitalDelayType01 := (0.042 ns, 0.057 ns);
      tpd_S0_Z_I0_EQ_0_AN_I1_EQ_1    :	VitalDelayType01 := (0.061 ns, 0.096 ns);
      tpd_S0_Z_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_0_AN_S1_EQ_0 :	VitalDelayType01 := (0.092 ns, 0.082 ns);
      tpd_S0_Z                       :	VitalDelayType01 := (0.092 ns, 0.096 ns);
      tpd_S1_Z_I0_EQ_0_AN_I1_EQ_0_AN_I2_EQ_1_AN_S0_EQ_0 :	VitalDelayType01 := (0.033 ns, 0.068 ns);
      tpd_S1_Z_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_0_AN_S0_EQ_0 :	VitalDelayType01 := (0.076 ns, 0.047 ns);
      tpd_S1_Z_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_1_AN_S0_EQ_1 :	VitalDelayType01 := (0.033 ns, 0.071 ns);
      tpd_S1_Z_I0_EQ_1_AN_I1_EQ_1_AN_I2_EQ_0_AN_S0_EQ_1 :	VitalDelayType01 := (0.071 ns, 0.045 ns);
      tpd_S1_Z                       :	VitalDelayType01 := (0.074 ns, 0.070 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I0                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      S0                             :	in    STD_ULOGIC;
      S1                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component MUX3D4 -----
component MUX3D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I0_Z                       :	VitalDelayType01 := (0.083 ns, 0.095 ns);
      tpd_I1_Z                       :	VitalDelayType01 := (0.079 ns, 0.102 ns);
      tpd_I2_Z                       :	VitalDelayType01 := (0.047 ns, 0.056 ns);
      tpd_S0_Z_I0_EQ_0_AN_I1_EQ_1    :	VitalDelayType01 := (0.078 ns, 0.099 ns);
      tpd_S0_Z_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_0_AN_S1_EQ_0 :	VitalDelayType01 := (0.101 ns, 0.100 ns);
      tpd_S0_Z                       :	VitalDelayType01 := (0.101 ns, 0.100 ns);
      tpd_S1_Z_I0_EQ_0_AN_I1_EQ_0_AN_I2_EQ_1_AN_S0_EQ_0 :	VitalDelayType01 := (0.041 ns, 0.086 ns);
      tpd_S1_Z_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_0_AN_S0_EQ_0 :	VitalDelayType01 := (0.082 ns, 0.052 ns);
      tpd_S1_Z_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_1_AN_S0_EQ_1 :	VitalDelayType01 := (0.041 ns, 0.093 ns);
      tpd_S1_Z_I0_EQ_1_AN_I1_EQ_1_AN_I2_EQ_0_AN_S0_EQ_1 :	VitalDelayType01 := (0.082 ns, 0.052 ns);
      tpd_S1_Z                       :	VitalDelayType01 := (0.082 ns, 0.089 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I0                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      S0                             :	in    STD_ULOGIC;
      S1                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component MUX3ND0 -----
component MUX3ND0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I0_ZN                      :	VitalDelayType01 := (0.051 ns, 0.043 ns);
      tpd_I1_ZN                      :	VitalDelayType01 := (0.044 ns, 0.033 ns);
      tpd_I2_ZN                      :	VitalDelayType01 := (0.029 ns, 0.015 ns);
      tpd_S0_ZN_I0_EQ_0_AN_I1_EQ_1_AN_I2_EQ_0_AN_S1_EQ_0 :	VitalDelayType01 := (0.048 ns, 0.029 ns);
      tpd_S0_ZN_I0_EQ_1_AN_I1_EQ_0   :	VitalDelayType01 := (0.041 ns, 0.048 ns);
      tpd_S0_ZN                      :	VitalDelayType01 := (0.048 ns, 0.048 ns);
      tpd_S1_ZN_I0_EQ_0_AN_I1_EQ_0_AN_I2_EQ_1_AN_S0_EQ_0 :	VitalDelayType01 := (0.024 ns, 0.012 ns);
      tpd_S1_ZN_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_0_AN_S0_EQ_0 :	VitalDelayType01 := (0.023 ns, 0.032 ns);
      tpd_S1_ZN_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_1_AN_S0_EQ_1 :	VitalDelayType01 := (0.025 ns, 0.012 ns);
      tpd_S1_ZN_I0_EQ_1_AN_I1_EQ_1_AN_I2_EQ_0_AN_S0_EQ_1 :	VitalDelayType01 := (0.023 ns, 0.031 ns);
      tpd_S1_ZN                      :	VitalDelayType01 := (0.024 ns, 0.031 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I0                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      S0                             :	in    STD_ULOGIC;
      S1                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component MUX3ND1 -----
component MUX3ND1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I0_ZN                      :	VitalDelayType01 := (0.109 ns, 0.090 ns);
      tpd_I1_ZN                      :	VitalDelayType01 := (0.100 ns, 0.077 ns);
      tpd_I2_ZN                      :	VitalDelayType01 := (0.071 ns, 0.053 ns);
      tpd_S0_ZN_I0_EQ_0_AN_I1_EQ_1_AN_I2_EQ_0_AN_S1_EQ_0 :	VitalDelayType01 := (0.105 ns, 0.079 ns);
      tpd_S0_ZN_I0_EQ_1_AN_I1_EQ_0   :	VitalDelayType01 := (0.096 ns, 0.104 ns);
      tpd_S0_ZN                      :	VitalDelayType01 := (0.105 ns, 0.104 ns);
      tpd_S1_ZN_I0_EQ_0_AN_I1_EQ_0_AN_I2_EQ_1_AN_S0_EQ_0 :	VitalDelayType01 := (0.080 ns, 0.050 ns);
      tpd_S1_ZN_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_0_AN_S0_EQ_0 :	VitalDelayType01 := (0.070 ns, 0.078 ns);
      tpd_S1_ZN_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_1_AN_S0_EQ_1 :	VitalDelayType01 := (0.078 ns, 0.051 ns);
      tpd_S1_ZN_I0_EQ_1_AN_I1_EQ_1_AN_I2_EQ_0_AN_S0_EQ_1 :	VitalDelayType01 := (0.070 ns, 0.076 ns);
      tpd_S1_ZN                      :	VitalDelayType01 := (0.079 ns, 0.077 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I0                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      S0                             :	in    STD_ULOGIC;
      S1                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component MUX3ND2 -----
component MUX3ND2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I0_ZN                      :	VitalDelayType01 := (0.117 ns, 0.099 ns);
      tpd_I1_ZN                      :	VitalDelayType01 := (0.109 ns, 0.089 ns);
      tpd_I2_ZN                      :	VitalDelayType01 := (0.078 ns, 0.061 ns);
      tpd_S0_ZN_I0_EQ_0_AN_I1_EQ_1_AN_I2_EQ_0_AN_S1_EQ_0 :	VitalDelayType01 := (0.114 ns, 0.083 ns);
      tpd_S0_ZN_I0_EQ_1_AN_I1_EQ_0   :	VitalDelayType01 := (0.105 ns, 0.107 ns);
      tpd_S0_ZN                      :	VitalDelayType01 := (0.114 ns, 0.107 ns);
      tpd_S1_ZN_I0_EQ_0_AN_I1_EQ_0_AN_I2_EQ_1_AN_S0_EQ_0 :	VitalDelayType01 := (0.086 ns, 0.056 ns);
      tpd_S1_ZN_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_0_AN_S0_EQ_0 :	VitalDelayType01 := (0.073 ns, 0.086 ns);
      tpd_S1_ZN_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_1_AN_S0_EQ_1 :	VitalDelayType01 := (0.086 ns, 0.056 ns);
      tpd_S1_ZN_I0_EQ_1_AN_I1_EQ_1_AN_I2_EQ_0_AN_S0_EQ_1 :	VitalDelayType01 := (0.071 ns, 0.084 ns);
      tpd_S1_ZN                      :	VitalDelayType01 := (0.086 ns, 0.085 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I0                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      S0                             :	in    STD_ULOGIC;
      S1                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component MUX3ND4 -----
component MUX3ND4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I0_ZN                      :	VitalDelayType01 := (0.110 ns, 0.102 ns);
      tpd_I1_ZN                      :	VitalDelayType01 := (0.111 ns, 0.094 ns);
      tpd_I2_ZN                      :	VitalDelayType01 := (0.076 ns, 0.069 ns);
      tpd_S0_ZN_I0_EQ_0_AN_I1_EQ_1_AN_I2_EQ_0_AN_S1_EQ_0 :	VitalDelayType01 := (0.109 ns, 0.091 ns);
      tpd_S0_ZN_I0_EQ_1_AN_I1_EQ_0   :	VitalDelayType01 := (0.111 ns, 0.115 ns);
      tpd_S0_ZN                      :	VitalDelayType01 := (0.111 ns, 0.115 ns);
      tpd_S1_ZN_I0_EQ_0_AN_I1_EQ_0_AN_I2_EQ_1_AN_S0_EQ_0 :	VitalDelayType01 := (0.090 ns, 0.065 ns);
      tpd_S1_ZN_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_0_AN_S0_EQ_0 :	VitalDelayType01 := (0.072 ns, 0.098 ns);
      tpd_S1_ZN_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_1_AN_S0_EQ_1 :	VitalDelayType01 := (0.093 ns, 0.065 ns);
      tpd_S1_ZN_I0_EQ_1_AN_I1_EQ_1_AN_I2_EQ_0_AN_S0_EQ_1 :	VitalDelayType01 := (0.072 ns, 0.095 ns);
      tpd_S1_ZN                      :	VitalDelayType01 := (0.092 ns, 0.096 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I0                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      S0                             :	in    STD_ULOGIC;
      S1                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component MUX4D0 -----
component MUX4D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I0_Z                       :	VitalDelayType01 := (0.084 ns, 0.104 ns);
      tpd_I1_Z                       :	VitalDelayType01 := (0.085 ns, 0.108 ns);
      tpd_I2_Z                       :	VitalDelayType01 := (0.075 ns, 0.099 ns);
      tpd_I3_Z                       :	VitalDelayType01 := (0.073 ns, 0.101 ns);
      tpd_S0_Z_I0_EQ_0_AN_I1_EQ_1_AN_I2_EQ_0_AN_I3_EQ_0_AN_S1_EQ_0 :	VitalDelayType01 := (0.075 ns, 0.114 ns);
      tpd_S0_Z_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_0_AN_I3_EQ_0_AN_S1_EQ_0 :	VitalDelayType01 := (0.102 ns, 0.097 ns);
      tpd_S0_Z_I0_EQ_1_AN_I1_EQ_1_AN_I2_EQ_0_AN_I3_EQ_1_AN_S1_EQ_1 :	VitalDelayType01 := (0.067 ns, 0.103 ns);
      tpd_S0_Z_I0_EQ_1_AN_I1_EQ_1_AN_I2_EQ_1_AN_I3_EQ_0_AN_S1_EQ_1 :	VitalDelayType01 := (0.104 ns, 0.098 ns);
      tpd_S0_Z                       :	VitalDelayType01 := (0.103 ns, 0.109 ns);
      tpd_S1_Z_I0_EQ_0_AN_I1_EQ_0_AN_I2_EQ_1_AN_I3_EQ_0_AN_S0_EQ_0 :	VitalDelayType01 := (0.044 ns, 0.060 ns);
      tpd_S1_Z_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_0_AN_I3_EQ_0_AN_S0_EQ_0 :	VitalDelayType01 := (0.064 ns, 0.064 ns);
      tpd_S1_Z_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_1_AN_I3_EQ_1_AN_S0_EQ_1 :	VitalDelayType01 := (0.044 ns, 0.059 ns);
      tpd_S1_Z_I0_EQ_1_AN_I1_EQ_1_AN_I2_EQ_1_AN_I3_EQ_0_AN_S0_EQ_1 :	VitalDelayType01 := (0.064 ns, 0.064 ns);
      tpd_S1_Z                       :	VitalDelayType01 := (0.064 ns, 0.064 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I0                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      I3                             :	in    STD_ULOGIC;
      S0                             :	in    STD_ULOGIC;
      S1                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component MUX4D1 -----
component MUX4D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I0_Z                       :	VitalDelayType01 := (0.081 ns, 0.079 ns);
      tpd_I1_Z                       :	VitalDelayType01 := (0.072 ns, 0.078 ns);
      tpd_I2_Z                       :	VitalDelayType01 := (0.073 ns, 0.077 ns);
      tpd_I3_Z                       :	VitalDelayType01 := (0.063 ns, 0.077 ns);
      tpd_S0_Z_I0_EQ_0_AN_I1_EQ_1_AN_I2_EQ_0_AN_I3_EQ_0_AN_S1_EQ_0 :	VitalDelayType01 := (0.069 ns, 0.090 ns);
      tpd_S0_Z_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_0_AN_I3_EQ_0_AN_S1_EQ_0 :	VitalDelayType01 := (0.096 ns, 0.081 ns);
      tpd_S0_Z_I0_EQ_1_AN_I1_EQ_1_AN_I2_EQ_0_AN_I3_EQ_1_AN_S1_EQ_1 :	VitalDelayType01 := (0.056 ns, 0.084 ns);
      tpd_S0_Z_I0_EQ_1_AN_I1_EQ_1_AN_I2_EQ_1_AN_I3_EQ_0_AN_S1_EQ_1 :	VitalDelayType01 := (0.093 ns, 0.081 ns);
      tpd_S0_Z                       :	VitalDelayType01 := (0.095 ns, 0.087 ns);
      tpd_S1_Z_I0_EQ_0_AN_I1_EQ_0_AN_I2_EQ_1_AN_I3_EQ_0_AN_S0_EQ_0 :	VitalDelayType01 := (0.044 ns, 0.057 ns);
      tpd_S1_Z_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_0_AN_I3_EQ_0_AN_S0_EQ_0 :	VitalDelayType01 := (0.062 ns, 0.060 ns);
      tpd_S1_Z_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_1_AN_I3_EQ_1_AN_S0_EQ_1 :	VitalDelayType01 := (0.041 ns, 0.057 ns);
      tpd_S1_Z_I0_EQ_1_AN_I1_EQ_1_AN_I2_EQ_1_AN_I3_EQ_0_AN_S0_EQ_1 :	VitalDelayType01 := (0.060 ns, 0.061 ns);
      tpd_S1_Z                       :	VitalDelayType01 := (0.061 ns, 0.060 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I0                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      I3                             :	in    STD_ULOGIC;
      S0                             :	in    STD_ULOGIC;
      S1                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component MUX4D2 -----
component MUX4D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I0_Z                       :	VitalDelayType01 := (0.088 ns, 0.093 ns);
      tpd_I1_Z                       :	VitalDelayType01 := (0.084 ns, 0.095 ns);
      tpd_I2_Z                       :	VitalDelayType01 := (0.085 ns, 0.091 ns);
      tpd_I3_Z                       :	VitalDelayType01 := (0.071 ns, 0.095 ns);
      tpd_S0_Z_I0_EQ_0_AN_I1_EQ_1_AN_I2_EQ_0_AN_I3_EQ_0_AN_S1_EQ_0 :	VitalDelayType01 := (0.082 ns, 0.107 ns);
      tpd_S0_Z_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_0_AN_I3_EQ_0_AN_S1_EQ_0 :	VitalDelayType01 := (0.108 ns, 0.092 ns);
      tpd_S0_Z_I0_EQ_1_AN_I1_EQ_1_AN_I2_EQ_0_AN_I3_EQ_1_AN_S1_EQ_1 :	VitalDelayType01 := (0.068 ns, 0.102 ns);
      tpd_S0_Z_I0_EQ_1_AN_I1_EQ_1_AN_I2_EQ_1_AN_I3_EQ_0_AN_S1_EQ_1 :	VitalDelayType01 := (0.105 ns, 0.091 ns);
      tpd_S0_Z                       :	VitalDelayType01 := (0.106 ns, 0.105 ns);
      tpd_S1_Z_I0_EQ_0_AN_I1_EQ_0_AN_I2_EQ_1_AN_I3_EQ_0_AN_S0_EQ_0 :	VitalDelayType01 := (0.056 ns, 0.075 ns);
      tpd_S1_Z_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_0_AN_I3_EQ_0_AN_S0_EQ_0 :	VitalDelayType01 := (0.074 ns, 0.072 ns);
      tpd_S1_Z_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_1_AN_I3_EQ_1_AN_S0_EQ_1 :	VitalDelayType01 := (0.052 ns, 0.075 ns);
      tpd_S1_Z_I0_EQ_1_AN_I1_EQ_1_AN_I2_EQ_1_AN_I3_EQ_0_AN_S0_EQ_1 :	VitalDelayType01 := (0.073 ns, 0.073 ns);
      tpd_S1_Z                       :	VitalDelayType01 := (0.074 ns, 0.075 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I0                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      I3                             :	in    STD_ULOGIC;
      S0                             :	in    STD_ULOGIC;
      S1                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component MUX4D4 -----
component MUX4D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I0_Z                       :	VitalDelayType01 := (0.115 ns, 0.109 ns);
      tpd_I1_Z                       :	VitalDelayType01 := (0.106 ns, 0.109 ns);
      tpd_I2_Z                       :	VitalDelayType01 := (0.111 ns, 0.113 ns);
      tpd_I3_Z                       :	VitalDelayType01 := (0.089 ns, 0.113 ns);
      tpd_S0_Z_I0_EQ_0_AN_I1_EQ_1_AN_I2_EQ_0_AN_I3_EQ_0_AN_S1_EQ_0 :	VitalDelayType01 := (0.101 ns, 0.132 ns);
      tpd_S0_Z_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_0_AN_I3_EQ_0_AN_S1_EQ_0 :	VitalDelayType01 := (0.134 ns, 0.112 ns);
      tpd_S0_Z_I0_EQ_1_AN_I1_EQ_1_AN_I2_EQ_0_AN_I3_EQ_1_AN_S1_EQ_1 :	VitalDelayType01 := (0.092 ns, 0.129 ns);
      tpd_S0_Z_I0_EQ_1_AN_I1_EQ_1_AN_I2_EQ_1_AN_I3_EQ_0_AN_S1_EQ_1 :	VitalDelayType01 := (0.137 ns, 0.116 ns);
      tpd_S0_Z                       :	VitalDelayType01 := (0.135 ns, 0.131 ns);
      tpd_S1_Z_I0_EQ_0_AN_I1_EQ_0_AN_I2_EQ_1_AN_I3_EQ_0_AN_S0_EQ_0 :	VitalDelayType01 := (0.079 ns, 0.095 ns);
      tpd_S1_Z_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_0_AN_I3_EQ_0_AN_S0_EQ_0 :	VitalDelayType01 := (0.091 ns, 0.101 ns);
      tpd_S1_Z_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_1_AN_I3_EQ_1_AN_S0_EQ_1 :	VitalDelayType01 := (0.070 ns, 0.095 ns);
      tpd_S1_Z_I0_EQ_1_AN_I1_EQ_1_AN_I2_EQ_1_AN_I3_EQ_0_AN_S0_EQ_1 :	VitalDelayType01 := (0.087 ns, 0.100 ns);
      tpd_S1_Z                       :	VitalDelayType01 := (0.089 ns, 0.101 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I0                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      I3                             :	in    STD_ULOGIC;
      S0                             :	in    STD_ULOGIC;
      S1                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component MUX4ND0 -----
component MUX4ND0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I0_ZN                      :	VitalDelayType01 := (0.074 ns, 0.049 ns);
      tpd_I1_ZN                      :	VitalDelayType01 := (0.076 ns, 0.049 ns);
      tpd_I2_ZN                      :	VitalDelayType01 := (0.069 ns, 0.045 ns);
      tpd_I3_ZN                      :	VitalDelayType01 := (0.070 ns, 0.044 ns);
      tpd_S0_ZN_I0_EQ_0_AN_I1_EQ_1_AN_I2_EQ_0_AN_I3_EQ_0_AN_S1_EQ_0 :	VitalDelayType01 := (0.085 ns, 0.045 ns);
      tpd_S0_ZN_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_0_AN_I3_EQ_0_AN_S1_EQ_0 :	VitalDelayType01 := (0.068 ns, 0.071 ns);
      tpd_S0_ZN_I0_EQ_1_AN_I1_EQ_1_AN_I2_EQ_0_AN_I3_EQ_1_AN_S1_EQ_1 :	VitalDelayType01 := (0.072 ns, 0.037 ns);
      tpd_S0_ZN_I0_EQ_1_AN_I1_EQ_1_AN_I2_EQ_1_AN_I3_EQ_0_AN_S1_EQ_1 :	VitalDelayType01 := (0.066 ns, 0.070 ns);
      tpd_S0_ZN                      :	VitalDelayType01 := (0.079 ns, 0.070 ns);
      tpd_S1_ZN_I0_EQ_0_AN_I1_EQ_0_AN_I2_EQ_1_AN_I3_EQ_0_AN_S0_EQ_0 :	VitalDelayType01 := (0.032 ns, 0.016 ns);
      tpd_S1_ZN_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_0_AN_I3_EQ_0_AN_S0_EQ_0 :	VitalDelayType01 := (0.032 ns, 0.036 ns);
      tpd_S1_ZN_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_1_AN_I3_EQ_1_AN_S0_EQ_1 :	VitalDelayType01 := (0.032 ns, 0.016 ns);
      tpd_S1_ZN_I0_EQ_1_AN_I1_EQ_1_AN_I2_EQ_1_AN_I3_EQ_0_AN_S0_EQ_1 :	VitalDelayType01 := (0.032 ns, 0.036 ns);
      tpd_S1_ZN                      :	VitalDelayType01 := (0.032 ns, 0.036 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I0                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      I3                             :	in    STD_ULOGIC;
      S0                             :	in    STD_ULOGIC;
      S1                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component MUX4ND1 -----
component MUX4ND1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I0_ZN                      :	VitalDelayType01 := (0.100 ns, 0.090 ns);
      tpd_I1_ZN                      :	VitalDelayType01 := (0.102 ns, 0.088 ns);
      tpd_I2_ZN                      :	VitalDelayType01 := (0.097 ns, 0.085 ns);
      tpd_I3_ZN                      :	VitalDelayType01 := (0.098 ns, 0.072 ns);
      tpd_S0_ZN_I0_EQ_0_AN_I1_EQ_1_AN_I2_EQ_0_AN_I3_EQ_0_AN_S1_EQ_0 :	VitalDelayType01 := (0.112 ns, 0.085 ns);
      tpd_S0_ZN_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_0_AN_I3_EQ_0_AN_S1_EQ_0 :	VitalDelayType01 := (0.101 ns, 0.109 ns);
      tpd_S0_ZN_I0_EQ_1_AN_I1_EQ_1_AN_I2_EQ_0_AN_I3_EQ_1_AN_S1_EQ_1 :	VitalDelayType01 := (0.105 ns, 0.070 ns);
      tpd_S0_ZN_I0_EQ_1_AN_I1_EQ_1_AN_I2_EQ_1_AN_I3_EQ_0_AN_S1_EQ_1 :	VitalDelayType01 := (0.099 ns, 0.106 ns);
      tpd_S0_ZN                      :	VitalDelayType01 := (0.108 ns, 0.108 ns);
      tpd_S1_ZN_I0_EQ_0_AN_I1_EQ_0_AN_I2_EQ_1_AN_I3_EQ_0_AN_S0_EQ_0 :	VitalDelayType01 := (0.079 ns, 0.056 ns);
      tpd_S1_ZN_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_0_AN_I3_EQ_0_AN_S0_EQ_0 :	VitalDelayType01 := (0.078 ns, 0.075 ns);
      tpd_S1_ZN_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_1_AN_I3_EQ_1_AN_S0_EQ_1 :	VitalDelayType01 := (0.079 ns, 0.053 ns);
      tpd_S1_ZN_I0_EQ_1_AN_I1_EQ_1_AN_I2_EQ_1_AN_I3_EQ_0_AN_S0_EQ_1 :	VitalDelayType01 := (0.078 ns, 0.074 ns);
      tpd_S1_ZN                      :	VitalDelayType01 := (0.079 ns, 0.075 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I0                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      I3                             :	in    STD_ULOGIC;
      S0                             :	in    STD_ULOGIC;
      S1                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component MUX4ND2 -----
component MUX4ND2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I0_ZN                      :	VitalDelayType01 := (0.105 ns, 0.096 ns);
      tpd_I1_ZN                      :	VitalDelayType01 := (0.108 ns, 0.092 ns);
      tpd_I2_ZN                      :	VitalDelayType01 := (0.102 ns, 0.091 ns);
      tpd_I3_ZN                      :	VitalDelayType01 := (0.104 ns, 0.079 ns);
      tpd_S0_ZN_I0_EQ_0_AN_I1_EQ_1_AN_I2_EQ_0_AN_I3_EQ_0_AN_S1_EQ_0 :	VitalDelayType01 := (0.118 ns, 0.086 ns);
      tpd_S0_ZN_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_0_AN_I3_EQ_0_AN_S1_EQ_0 :	VitalDelayType01 := (0.104 ns, 0.117 ns);
      tpd_S0_ZN_I0_EQ_1_AN_I1_EQ_1_AN_I2_EQ_0_AN_I3_EQ_1_AN_S1_EQ_1 :	VitalDelayType01 := (0.114 ns, 0.074 ns);
      tpd_S0_ZN_I0_EQ_1_AN_I1_EQ_1_AN_I2_EQ_1_AN_I3_EQ_0_AN_S1_EQ_1 :	VitalDelayType01 := (0.101 ns, 0.111 ns);
      tpd_S0_ZN                      :	VitalDelayType01 := (0.116 ns, 0.114 ns);
      tpd_S1_ZN_I0_EQ_0_AN_I1_EQ_0_AN_I2_EQ_1_AN_I3_EQ_0_AN_S0_EQ_0 :	VitalDelayType01 := (0.082 ns, 0.063 ns);
      tpd_S1_ZN_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_0_AN_I3_EQ_0_AN_S0_EQ_0 :	VitalDelayType01 := (0.085 ns, 0.083 ns);
      tpd_S1_ZN_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_1_AN_I3_EQ_1_AN_S0_EQ_1 :	VitalDelayType01 := (0.082 ns, 0.060 ns);
      tpd_S1_ZN_I0_EQ_1_AN_I1_EQ_1_AN_I2_EQ_1_AN_I3_EQ_0_AN_S0_EQ_1 :	VitalDelayType01 := (0.084 ns, 0.081 ns);
      tpd_S1_ZN                      :	VitalDelayType01 := (0.084 ns, 0.082 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I0                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      I3                             :	in    STD_ULOGIC;
      S0                             :	in    STD_ULOGIC;
      S1                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component MUX4ND4 -----
component MUX4ND4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_I0_ZN                      :	VitalDelayType01 := (0.116 ns, 0.109 ns);
      tpd_I1_ZN                      :	VitalDelayType01 := (0.117 ns, 0.109 ns);
      tpd_I2_ZN                      :	VitalDelayType01 := (0.113 ns, 0.107 ns);
      tpd_I3_ZN                      :	VitalDelayType01 := (0.114 ns, 0.088 ns);
      tpd_S0_ZN_I0_EQ_0_AN_I1_EQ_1_AN_I2_EQ_0_AN_I3_EQ_0_AN_S1_EQ_0 :	VitalDelayType01 := (0.133 ns, 0.099 ns);
      tpd_S0_ZN_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_0_AN_I3_EQ_0_AN_S1_EQ_0 :	VitalDelayType01 := (0.121 ns, 0.144 ns);
      tpd_S0_ZN_I0_EQ_1_AN_I1_EQ_1_AN_I2_EQ_0_AN_I3_EQ_1_AN_S1_EQ_1 :	VitalDelayType01 := (0.125 ns, 0.085 ns);
      tpd_S0_ZN_I0_EQ_1_AN_I1_EQ_1_AN_I2_EQ_1_AN_I3_EQ_0_AN_S1_EQ_1 :	VitalDelayType01 := (0.118 ns, 0.141 ns);
      tpd_S0_ZN                      :	VitalDelayType01 := (0.129 ns, 0.142 ns);
      tpd_S1_ZN_I0_EQ_0_AN_I1_EQ_0_AN_I2_EQ_1_AN_I3_EQ_0_AN_S0_EQ_0 :	VitalDelayType01 := (0.107 ns, 0.076 ns);
      tpd_S1_ZN_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_0_AN_I3_EQ_0_AN_S0_EQ_0 :	VitalDelayType01 := (0.099 ns, 0.094 ns);
      tpd_S1_ZN_I0_EQ_1_AN_I1_EQ_0_AN_I2_EQ_1_AN_I3_EQ_1_AN_S0_EQ_1 :	VitalDelayType01 := (0.098 ns, 0.071 ns);
      tpd_S1_ZN_I0_EQ_1_AN_I1_EQ_1_AN_I2_EQ_1_AN_I3_EQ_0_AN_S0_EQ_1 :	VitalDelayType01 := (0.097 ns, 0.090 ns);
      tpd_S1_ZN                      :	VitalDelayType01 := (0.102 ns, 0.092 ns);
      tipd_I0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_I3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S0                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_S1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      I0                             :	in    STD_ULOGIC;
      I1                             :	in    STD_ULOGIC;
      I2                             :	in    STD_ULOGIC;
      I3                             :	in    STD_ULOGIC;
      S0                             :	in    STD_ULOGIC;
      S1                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component ND2D0 -----
component ND2D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.017 ns, 0.016 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.020 ns, 0.018 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component ND2D1 -----
component ND2D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.015 ns, 0.015 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.019 ns, 0.016 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component ND2D2 -----
component ND2D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.016 ns, 0.013 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.020 ns, 0.015 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component ND2D3 -----
component ND2D3
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.017 ns, 0.015 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.020 ns, 0.015 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component ND2D4 -----
component ND2D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.015 ns, 0.014 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.018 ns, 0.015 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component ND2D8 -----
component ND2D8
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.015 ns, 0.014 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.018 ns, 0.015 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component ND3D0 -----
component ND3D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.021 ns, 0.024 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.026 ns, 0.027 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.027 ns, 0.029 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component ND3D1 -----
component ND3D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.018 ns, 0.022 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.023 ns, 0.026 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.025 ns, 0.029 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component ND3D2 -----
component ND3D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.017 ns, 0.020 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.022 ns, 0.026 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.024 ns, 0.027 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component ND3D3 -----
component ND3D3
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.017 ns, 0.020 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.022 ns, 0.025 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.024 ns, 0.028 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component ND3D4 -----
component ND3D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.018 ns, 0.019 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.023 ns, 0.023 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.027 ns, 0.026 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component ND3D8 -----
component ND3D8
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.017 ns, 0.019 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.021 ns, 0.025 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.027 ns, 0.027 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component ND4D0 -----
component ND4D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.024 ns, 0.031 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.028 ns, 0.042 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.031 ns, 0.042 ns);
      tpd_A4_ZN                      :	VitalDelayType01 := (0.031 ns, 0.044 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      A4                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component ND4D1 -----
component ND4D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.021 ns, 0.029 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.025 ns, 0.037 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.028 ns, 0.039 ns);
      tpd_A4_ZN                      :	VitalDelayType01 := (0.028 ns, 0.041 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      A4                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component ND4D2 -----
component ND4D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.018 ns, 0.027 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.023 ns, 0.039 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.027 ns, 0.038 ns);
      tpd_A4_ZN                      :	VitalDelayType01 := (0.027 ns, 0.043 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      A4                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component ND4D3 -----
component ND4D3
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.019 ns, 0.028 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.023 ns, 0.038 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.026 ns, 0.037 ns);
      tpd_A4_ZN                      :	VitalDelayType01 := (0.027 ns, 0.039 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      A4                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component ND4D4 -----
component ND4D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.018 ns, 0.026 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.022 ns, 0.034 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.029 ns, 0.037 ns);
      tpd_A4_ZN                      :	VitalDelayType01 := (0.031 ns, 0.040 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      A4                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component ND4D8 -----
component ND4D8
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.075 ns, 0.105 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.079 ns, 0.109 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.085 ns, 0.112 ns);
      tpd_A4_ZN                      :	VitalDelayType01 := (0.086 ns, 0.115 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      A4                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component NR2D0 -----
component NR2D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.030 ns, 0.011 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.035 ns, 0.012 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component NR2D1 -----
component NR2D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.027 ns, 0.010 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.032 ns, 0.011 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component NR2D2 -----
component NR2D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.028 ns, 0.008 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.033 ns, 0.010 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component NR2D3 -----
component NR2D3
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.028 ns, 0.009 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.032 ns, 0.010 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component NR2D4 -----
component NR2D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.033 ns, 0.008 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.032 ns, 0.010 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component NR2D8 -----
component NR2D8
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.027 ns, 0.008 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.033 ns, 0.009 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component NR3D0 -----
component NR3D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.029 ns, 0.014 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.042 ns, 0.016 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.046 ns, 0.018 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component NR3D1 -----
component NR3D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.027 ns, 0.013 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.043 ns, 0.016 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.045 ns, 0.017 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component NR3D2 -----
component NR3D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.028 ns, 0.011 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.041 ns, 0.014 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.045 ns, 0.015 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component NR3D3 -----
component NR3D3
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.028 ns, 0.011 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.042 ns, 0.014 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.045 ns, 0.016 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component NR3D4 -----
component NR3D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.026 ns, 0.012 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.041 ns, 0.014 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.045 ns, 0.014 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component NR3D8 -----
component NR3D8
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.028 ns, 0.011 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.045 ns, 0.013 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.045 ns, 0.013 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component NR4D0 -----
component NR4D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.033 ns, 0.018 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.051 ns, 0.023 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.065 ns, 0.026 ns);
      tpd_A4_ZN                      :	VitalDelayType01 := (0.066 ns, 0.028 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      A4                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component NR4D1 -----
component NR4D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.029 ns, 0.017 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.052 ns, 0.022 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.062 ns, 0.025 ns);
      tpd_A4_ZN                      :	VitalDelayType01 := (0.066 ns, 0.027 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      A4                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component NR4D2 -----
component NR4D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.038 ns, 0.012 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.061 ns, 0.015 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.075 ns, 0.016 ns);
      tpd_A4_ZN                      :	VitalDelayType01 := (0.075 ns, 0.016 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      A4                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component NR4D3 -----
component NR4D3
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.036 ns, 0.013 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.058 ns, 0.017 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.071 ns, 0.016 ns);
      tpd_A4_ZN                      :	VitalDelayType01 := (0.075 ns, 0.017 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      A4                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component NR4D4 -----
component NR4D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.035 ns, 0.012 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.062 ns, 0.014 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.072 ns, 0.015 ns);
      tpd_A4_ZN                      :	VitalDelayType01 := (0.073 ns, 0.014 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      A4                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component NR4D8 -----
component NR4D8
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.175 ns, 0.069 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.190 ns, 0.073 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.202 ns, 0.075 ns);
      tpd_A4_ZN                      :	VitalDelayType01 := (0.204 ns, 0.075 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      A4                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component OA21AD0 -----
component OA21AD0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.039 ns, 0.056 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.043 ns, 0.062 ns);
      tpd_B_Z                        :	VitalDelayType01 := (0.046 ns, 0.043 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component OA21AD1 -----
component OA21AD1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.034 ns, 0.049 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.037 ns, 0.052 ns);
      tpd_B_Z                        :	VitalDelayType01 := (0.040 ns, 0.037 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component OA21AD2 -----
component OA21AD2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.040 ns, 0.058 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.043 ns, 0.063 ns);
      tpd_B_Z                        :	VitalDelayType01 := (0.041 ns, 0.042 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component OA21AD4 -----
component OA21AD4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.041 ns, 0.061 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.041 ns, 0.064 ns);
      tpd_B_Z                        :	VitalDelayType01 := (0.040 ns, 0.041 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component OA22AD0 -----
component OA22AD0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.040 ns, 0.062 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.044 ns, 0.067 ns);
      tpd_B1_Z                       :	VitalDelayType01 := (0.046 ns, 0.076 ns);
      tpd_B2_Z                       :	VitalDelayType01 := (0.049 ns, 0.080 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component OA22AD1 -----
component OA22AD1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.034 ns, 0.053 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.037 ns, 0.057 ns);
      tpd_B1_Z                       :	VitalDelayType01 := (0.042 ns, 0.065 ns);
      tpd_B2_Z                       :	VitalDelayType01 := (0.047 ns, 0.074 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component OA22AD2 -----
component OA22AD2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.039 ns, 0.063 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.041 ns, 0.068 ns);
      tpd_B1_Z                       :	VitalDelayType01 := (0.044 ns, 0.077 ns);
      tpd_B2_Z                       :	VitalDelayType01 := (0.045 ns, 0.081 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component OA22AD4 -----
component OA22AD4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.040 ns, 0.061 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.039 ns, 0.065 ns);
      tpd_B1_Z                       :	VitalDelayType01 := (0.042 ns, 0.075 ns);
      tpd_B2_Z                       :	VitalDelayType01 := (0.044 ns, 0.079 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component OAI211D0 -----
component OAI211D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.049 ns, 0.028 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.042 ns, 0.025 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.031 ns, 0.035 ns);
      tpd_C_ZN                       :	VitalDelayType01 := (0.032 ns, 0.037 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component OAI211D1 -----
component OAI211D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.045 ns, 0.026 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.038 ns, 0.023 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.027 ns, 0.032 ns);
      tpd_C_ZN                       :	VitalDelayType01 := (0.028 ns, 0.033 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component OAI211D2 -----
component OAI211D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.041 ns, 0.025 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.037 ns, 0.021 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.025 ns, 0.030 ns);
      tpd_C_ZN                       :	VitalDelayType01 := (0.027 ns, 0.030 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component OAI211D4 -----
component OAI211D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.040 ns, 0.025 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.039 ns, 0.021 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.027 ns, 0.029 ns);
      tpd_C_ZN                       :	VitalDelayType01 := (0.030 ns, 0.031 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component OAI21AD0 -----
component OAI21AD0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.036 ns, 0.017 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.041 ns, 0.019 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.026 ns, 0.021 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component OAI21AD1 -----
component OAI21AD1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.033 ns, 0.015 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.039 ns, 0.018 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.024 ns, 0.019 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component OAI21AD2 -----
component OAI21AD2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.032 ns, 0.014 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.037 ns, 0.017 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.023 ns, 0.018 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component OAI21AD4 -----
component OAI21AD4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.032 ns, 0.015 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.037 ns, 0.017 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.023 ns, 0.017 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component OAI21D0 -----
component OAI21D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.036 ns, 0.017 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.041 ns, 0.019 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.026 ns, 0.021 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component OAI21D1 -----
component OAI21D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.033 ns, 0.015 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.039 ns, 0.018 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.024 ns, 0.019 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component OAI21D2 -----
component OAI21D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.032 ns, 0.014 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.037 ns, 0.017 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.023 ns, 0.018 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component OAI21D4 -----
component OAI21D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.032 ns, 0.015 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.037 ns, 0.017 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.023 ns, 0.017 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component OAI221D0 -----
component OAI221D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.044 ns, 0.025 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.052 ns, 0.030 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.069 ns, 0.043 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.065 ns, 0.038 ns);
      tpd_C_ZN                       :	VitalDelayType01 := (0.036 ns, 0.040 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component OAI221D1 -----
component OAI221D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.037 ns, 0.023 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.043 ns, 0.027 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.057 ns, 0.040 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.053 ns, 0.034 ns);
      tpd_C_ZN                       :	VitalDelayType01 := (0.031 ns, 0.036 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component OAI221D2 -----
component OAI221D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.040 ns, 0.024 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.045 ns, 0.027 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.058 ns, 0.036 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.056 ns, 0.034 ns);
      tpd_C_ZN                       :	VitalDelayType01 := (0.031 ns, 0.036 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component OAI221D4 -----
component OAI221D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.094 ns, 0.082 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.097 ns, 0.087 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.115 ns, 0.099 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.114 ns, 0.091 ns);
      tpd_C_ZN                       :	VitalDelayType01 := (0.083 ns, 0.095 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      C                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component OAI222D0 -----
component OAI222D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.046 ns, 0.026 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.053 ns, 0.031 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.071 ns, 0.041 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.065 ns, 0.037 ns);
      tpd_C1_ZN                      :	VitalDelayType01 := (0.080 ns, 0.044 ns);
      tpd_C2_ZN                      :	VitalDelayType01 := (0.077 ns, 0.041 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      C1                             :	in    STD_ULOGIC;
      C2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component OAI222D1 -----
component OAI222D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.037 ns, 0.025 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.043 ns, 0.028 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.059 ns, 0.037 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.053 ns, 0.033 ns);
      tpd_C1_ZN                      :	VitalDelayType01 := (0.067 ns, 0.041 ns);
      tpd_C2_ZN                      :	VitalDelayType01 := (0.064 ns, 0.038 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      C1                             :	in    STD_ULOGIC;
      C2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component OAI222D2 -----
component OAI222D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.038 ns, 0.024 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.044 ns, 0.028 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.058 ns, 0.036 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.054 ns, 0.032 ns);
      tpd_C1_ZN                      :	VitalDelayType01 := (0.069 ns, 0.040 ns);
      tpd_C2_ZN                      :	VitalDelayType01 := (0.064 ns, 0.036 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      C1                             :	in    STD_ULOGIC;
      C2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component OAI222D4 -----
component OAI222D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.101 ns, 0.085 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.105 ns, 0.088 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.122 ns, 0.100 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.116 ns, 0.095 ns);
      tpd_C1_ZN                      :	VitalDelayType01 := (0.134 ns, 0.103 ns);
      tpd_C2_ZN                      :	VitalDelayType01 := (0.129 ns, 0.097 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_C2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      C1                             :	in    STD_ULOGIC;
      C2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component OAI22AD0 -----
component OAI22AD0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.038 ns, 0.018 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.043 ns, 0.020 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.052 ns, 0.024 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.056 ns, 0.025 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component OAI22AD1 -----
component OAI22AD1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.036 ns, 0.017 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.041 ns, 0.018 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.049 ns, 0.022 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.054 ns, 0.023 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component OAI22AD2 -----
component OAI22AD2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.033 ns, 0.014 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.038 ns, 0.017 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.049 ns, 0.019 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.051 ns, 0.022 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component OAI22AD4 -----
component OAI22AD4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.032 ns, 0.014 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.038 ns, 0.017 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.046 ns, 0.019 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.052 ns, 0.022 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component OAI22D0 -----
component OAI22D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.038 ns, 0.018 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.043 ns, 0.020 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.052 ns, 0.024 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.056 ns, 0.025 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component OAI22D1 -----
component OAI22D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.036 ns, 0.017 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.041 ns, 0.018 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.049 ns, 0.022 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.054 ns, 0.023 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component OAI22D2 -----
component OAI22D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.033 ns, 0.014 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.038 ns, 0.017 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.049 ns, 0.019 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.051 ns, 0.022 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component OAI22D4 -----
component OAI22D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.032 ns, 0.014 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.038 ns, 0.017 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.046 ns, 0.019 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.052 ns, 0.022 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component OAI31D0 -----
component OAI31D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.078 ns, 0.023 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.075 ns, 0.022 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.059 ns, 0.019 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.032 ns, 0.024 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component OAI31D1 -----
component OAI31D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.068 ns, 0.021 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.067 ns, 0.020 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.051 ns, 0.017 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.028 ns, 0.022 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component OAI31D2 -----
component OAI31D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.071 ns, 0.021 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.068 ns, 0.020 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.052 ns, 0.016 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.027 ns, 0.022 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component OAI31D4 -----
component OAI31D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.070 ns, 0.019 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.066 ns, 0.018 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.052 ns, 0.016 ns);
      tpd_B_ZN                       :	VitalDelayType01 := (0.029 ns, 0.021 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B                         :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      B                              :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component OAI32D0 -----
component OAI32D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.082 ns, 0.023 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.077 ns, 0.022 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.062 ns, 0.019 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.068 ns, 0.028 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.063 ns, 0.025 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component OAI32D1 -----
component OAI32D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.070 ns, 0.020 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.068 ns, 0.019 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.053 ns, 0.017 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.060 ns, 0.025 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.056 ns, 0.023 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component OAI32D2 -----
component OAI32D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.073 ns, 0.022 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.069 ns, 0.019 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.054 ns, 0.016 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.060 ns, 0.027 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.056 ns, 0.022 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component OAI32D4 -----
component OAI32D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.132 ns, 0.075 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.130 ns, 0.073 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.116 ns, 0.069 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.115 ns, 0.080 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.111 ns, 0.077 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component OAI33D0 -----
component OAI33D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.083 ns, 0.024 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.078 ns, 0.022 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.064 ns, 0.019 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.113 ns, 0.031 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.108 ns, 0.029 ns);
      tpd_B3_ZN                      :	VitalDelayType01 := (0.095 ns, 0.026 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      B3                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component OAI33D1 -----
component OAI33D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.072 ns, 0.022 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.069 ns, 0.020 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.054 ns, 0.017 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.100 ns, 0.029 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.095 ns, 0.026 ns);
      tpd_B3_ZN                      :	VitalDelayType01 := (0.083 ns, 0.023 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      B3                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component OAI33D2 -----
component OAI33D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.073 ns, 0.021 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.070 ns, 0.020 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.055 ns, 0.016 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.102 ns, 0.028 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.097 ns, 0.027 ns);
      tpd_B3_ZN                      :	VitalDelayType01 := (0.085 ns, 0.023 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      B3                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component OAI33D4 -----
component OAI33D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN                      :	VitalDelayType01 := (0.138 ns, 0.077 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.135 ns, 0.074 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.123 ns, 0.071 ns);
      tpd_B1_ZN                      :	VitalDelayType01 := (0.174 ns, 0.087 ns);
      tpd_B2_ZN                      :	VitalDelayType01 := (0.168 ns, 0.081 ns);
      tpd_B3_ZN                      :	VitalDelayType01 := (0.156 ns, 0.077 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_B3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      B1                             :	in    STD_ULOGIC;
      B2                             :	in    STD_ULOGIC;
      B3                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component OR2D0 -----
component OR2D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.034 ns, 0.052 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.038 ns, 0.056 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component OR2D1 -----
component OR2D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.034 ns, 0.040 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.037 ns, 0.045 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component OR2D2 -----
component OR2D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.040 ns, 0.052 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.044 ns, 0.057 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component OR2D4 -----
component OR2D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.040 ns, 0.051 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.040 ns, 0.059 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component OR2D8 -----
component OR2D8
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.043 ns, 0.059 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.047 ns, 0.064 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component OR3D0 -----
component OR3D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.040 ns, 0.088 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.038 ns, 0.083 ns);
      tpd_A3_Z                       :	VitalDelayType01 := (0.035 ns, 0.071 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component OR3D1 -----
component OR3D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.041 ns, 0.079 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.039 ns, 0.069 ns);
      tpd_A3_Z                       :	VitalDelayType01 := (0.034 ns, 0.057 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component OR3D2 -----
component OR3D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.047 ns, 0.091 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.044 ns, 0.087 ns);
      tpd_A3_Z                       :	VitalDelayType01 := (0.042 ns, 0.073 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component OR3D4 -----
component OR3D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.046 ns, 0.090 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.042 ns, 0.085 ns);
      tpd_A3_Z                       :	VitalDelayType01 := (0.038 ns, 0.072 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component OR3D8 -----
component OR3D8
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.053 ns, 0.104 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.048 ns, 0.100 ns);
      tpd_A3_Z                       :	VitalDelayType01 := (0.045 ns, 0.088 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component OR4D0 -----
component OR4D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.042 ns, 0.129 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.041 ns, 0.123 ns);
      tpd_A3_Z                       :	VitalDelayType01 := (0.039 ns, 0.110 ns);
      tpd_A4_Z                       :	VitalDelayType01 := (0.036 ns, 0.089 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      A4                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component OR4D1 -----
component OR4D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.044 ns, 0.106 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.042 ns, 0.101 ns);
      tpd_A3_Z                       :	VitalDelayType01 := (0.040 ns, 0.091 ns);
      tpd_A4_Z                       :	VitalDelayType01 := (0.036 ns, 0.072 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      A4                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component OR4D2 -----
component OR4D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.049 ns, 0.131 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.048 ns, 0.124 ns);
      tpd_A3_Z                       :	VitalDelayType01 := (0.045 ns, 0.113 ns);
      tpd_A4_Z                       :	VitalDelayType01 := (0.043 ns, 0.094 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      A4                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component OR4D4 -----
component OR4D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.051 ns, 0.132 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.046 ns, 0.124 ns);
      tpd_A3_Z                       :	VitalDelayType01 := (0.044 ns, 0.111 ns);
      tpd_A4_Z                       :	VitalDelayType01 := (0.039 ns, 0.093 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      A4                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component OR4D8 -----
component OR4D8
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z                       :	VitalDelayType01 := (0.069 ns, 0.184 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.068 ns, 0.178 ns);
      tpd_A3_Z                       :	VitalDelayType01 := (0.060 ns, 0.166 ns);
      tpd_A4_Z                       :	VitalDelayType01 := (0.054 ns, 0.145 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      A4                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component SDFCND1 -----
component SDFCND1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.107 ns, 0.042 ns);
      tpd_CP_Q                       :	VitalDelayType01 := (0.107 ns, 0.103 ns);
      tpd_CDN_QN                     :	VitalDelayType01 := (0.077 ns, 0.124 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.132 ns, 0.124 ns);
      trecovery_CDN_CP               :	VitalDelayType := -0.062 ns;
      thold_CDN_CP                   :	VitalDelayType := 0.088 ns;
      thold_D_CP                     :	VitalDelayType := -0.026 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.088 ns;
      thold_SE_CP                    :	VitalDelayType := -0.026 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.104 ns;
      thold_SI_CP                    :	VitalDelayType := -0.041 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.135 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.109 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.072 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.100 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SDFCND2 -----
component SDFCND2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.116 ns, 0.038 ns);
      tpd_CP_Q                       :	VitalDelayType01 := (0.116 ns, 0.105 ns);
      tpd_CDN_QN                     :	VitalDelayType01 := (0.081 ns, 0.143 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.143 ns, 0.143 ns);
      trecovery_CDN_CP               :	VitalDelayType := -0.059 ns;
      thold_CDN_CP                   :	VitalDelayType := 0.088 ns;
      thold_D_CP                     :	VitalDelayType := -0.026 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.088 ns;
      thold_SE_CP                    :	VitalDelayType := -0.026 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.104 ns;
      thold_SI_CP                    :	VitalDelayType := -0.041 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.138 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.118 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.072 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.100 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SDFCND4 -----
component SDFCND4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.124 ns, 0.041 ns);
      tpd_CP_Q                       :	VitalDelayType01 := (0.124 ns, 0.102 ns);
      tpd_CDN_QN                     :	VitalDelayType01 := (0.088 ns, 0.160 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.147 ns, 0.160 ns);
      trecovery_CDN_CP               :	VitalDelayType := -0.047 ns;
      thold_CDN_CP                   :	VitalDelayType := 0.073 ns;
      thold_D_CP                     :	VitalDelayType := -0.029 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.102 ns;
      thold_SE_CP                    :	VitalDelayType := -0.029 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.116 ns;
      thold_SI_CP                    :	VitalDelayType := -0.041 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.149 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.124 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.073 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.083 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SDFCNQD1 -----
component SDFCNQD1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.103 ns, 0.040 ns);
      tpd_CP_Q                       :	VitalDelayType01 := (0.103 ns, 0.100 ns);
      trecovery_CDN_CP               :	VitalDelayType := -0.056 ns;
      thold_CDN_CP                   :	VitalDelayType := 0.088 ns;
      thold_D_CP                     :	VitalDelayType := -0.026 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.091 ns;
      thold_SE_CP                    :	VitalDelayType := -0.025 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.105 ns;
      thold_SI_CP                    :	VitalDelayType := -0.041 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.138 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.079 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.077 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.100 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SDFCNQD2 -----
component SDFCNQD2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.114 ns, 0.036 ns);
      tpd_CP_Q                       :	VitalDelayType01 := (0.114 ns, 0.102 ns);
      trecovery_CDN_CP               :	VitalDelayType := -0.064 ns;
      thold_CDN_CP                   :	VitalDelayType := 0.088 ns;
      thold_D_CP                     :	VitalDelayType := -0.026 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.091 ns;
      thold_SE_CP                    :	VitalDelayType := -0.026 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.102 ns;
      thold_SI_CP                    :	VitalDelayType := -0.041 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.138 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.086 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.079 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.100 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SDFCNQD4 -----
component SDFCNQD4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.123 ns, 0.038 ns);
      tpd_CP_Q                       :	VitalDelayType01 := (0.123 ns, 0.098 ns);
      trecovery_CDN_CP               :	VitalDelayType := -0.050 ns;
      thold_CDN_CP                   :	VitalDelayType := 0.076 ns;
      thold_D_CP                     :	VitalDelayType := -0.026 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.105 ns;
      thold_SE_CP                    :	VitalDelayType := -0.029 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.113 ns;
      thold_SI_CP                    :	VitalDelayType := -0.041 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.147 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.086 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.080 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.083 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SDFCSND1 -----
component SDFCSND1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.040 ns, 0.046 ns);
      tpd_SDN_Q                      :	VitalDelayType01 := (0.112 ns, 0.046 ns);
      tpd_CP_Q                       :	VitalDelayType01 := (0.111 ns, 0.127 ns);
      tpd_CDN_QN                     :	VitalDelayType01 := (0.089 ns, 0.046 ns);
      tpd_SDN_QN                     :	VitalDelayType01 := (0.044 ns, 0.046 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.164 ns, 0.149 ns);
      trecovery_CDN_CP               :	VitalDelayType := -0.076 ns;
      trecovery_CDN_SDN              :	VitalDelayType := -0.002 ns;
      thold_CDN_CP                   :	VitalDelayType := 0.108 ns;
      thold_D_CP                     :	VitalDelayType := -0.032 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.085 ns;
      trecovery_SDN_CDN              :	VitalDelayType := 0.003 ns;
      trecovery_SDN_CP               :	VitalDelayType := -0.023 ns;
      thold_SDN_CP                   :	VitalDelayType := 0.056 ns;
      thold_SE_CP                    :	VitalDelayType := -0.034 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.102 ns;
      thold_SI_CP                    :	VitalDelayType := -0.047 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.141 ns;
      thold_SDN_CDN                  :	VitalDelayType := 0.000 ns;
      thold_CDN_SDN                  :	VitalDelayType := 0.000 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.127 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.085 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.103 ns;
      tpw_SDN_negedge                :	VitalDelayType := 0.069 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SDN                            :	in    STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SDFCSND2 -----
component SDFCSND2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.042 ns, 0.042 ns);
      tpd_SDN_Q                      :	VitalDelayType01 := (0.128 ns, 0.042 ns);
      tpd_CP_Q                       :	VitalDelayType01 := (0.118 ns, 0.127 ns);
      tpd_CDN_QN                     :	VitalDelayType01 := (0.117 ns, 0.064 ns);
      tpd_SDN_QN                     :	VitalDelayType01 := (0.079 ns, 0.064 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.191 ns, 0.173 ns);
      trecovery_CDN_CP               :	VitalDelayType := -0.082 ns;
      trecovery_CDN_SDN              :	VitalDelayType := 0.012 ns;
      thold_CDN_CP                   :	VitalDelayType := 0.108 ns;
      thold_D_CP                     :	VitalDelayType := -0.032 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.088 ns;
      trecovery_SDN_CDN              :	VitalDelayType := -0.010 ns;
      trecovery_SDN_CP               :	VitalDelayType := -0.026 ns;
      thold_SDN_CP                   :	VitalDelayType := 0.056 ns;
      thold_SE_CP                    :	VitalDelayType := -0.034 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.104 ns;
      thold_SI_CP                    :	VitalDelayType := -0.047 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.144 ns;
      thold_SDN_CDN                  :	VitalDelayType := 0.000 ns;
      thold_CDN_SDN                  :	VitalDelayType := 0.000 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.145 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.085 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.104 ns;
      tpw_SDN_negedge                :	VitalDelayType := 0.086 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SDN                            :	in    STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SDFCSND4 -----
component SDFCSND4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.047 ns, 0.047 ns);
      tpd_SDN_Q                      :	VitalDelayType01 := (0.149 ns, 0.047 ns);
      tpd_CP_Q                       :	VitalDelayType01 := (0.121 ns, 0.124 ns);
      tpd_CDN_QN                     :	VitalDelayType01 := (0.118 ns, 0.074 ns);
      tpd_SDN_QN                     :	VitalDelayType01 := (0.069 ns, 0.074 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.192 ns, 0.194 ns);
      trecovery_CDN_CP               :	VitalDelayType := -0.070 ns;
      trecovery_CDN_SDN              :	VitalDelayType := 0.007 ns;
      thold_CDN_CP                   :	VitalDelayType := 0.094 ns;
      thold_D_CP                     :	VitalDelayType := -0.035 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.102 ns;
      trecovery_SDN_CDN              :	VitalDelayType := -0.006 ns;
      trecovery_SDN_CP               :	VitalDelayType := -0.012 ns;
      thold_SDN_CP                   :	VitalDelayType := 0.044 ns;
      thold_SE_CP                    :	VitalDelayType := -0.041 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.111 ns;
      thold_SI_CP                    :	VitalDelayType := -0.050 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.152 ns;
      thold_SDN_CDN                  :	VitalDelayType := 0.000 ns;
      thold_CDN_SDN                  :	VitalDelayType := 0.000 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.146 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.086 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.085 ns;
      tpw_SDN_negedge                :	VitalDelayType := 0.101 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SDN                            :	in    STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SDFD1 -----
component SDFD1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.094 ns, 0.100 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.119 ns, 0.110 ns);
      thold_D_CP                     :	VitalDelayType := -0.023 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.076 ns;
      thold_SE_CP                    :	VitalDelayType := -0.028 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.101 ns;
      thold_SI_CP                    :	VitalDelayType := -0.041 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.129 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.097 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.095 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SDFD2 -----
component SDFD2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.101 ns, 0.102 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.129 ns, 0.124 ns);
      thold_D_CP                     :	VitalDelayType := -0.026 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.076 ns;
      thold_SE_CP                    :	VitalDelayType := -0.026 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.100 ns;
      thold_SI_CP                    :	VitalDelayType := -0.041 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.132 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.105 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.095 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SDFD4 -----
component SDFD4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.104 ns, 0.102 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.136 ns, 0.134 ns);
      thold_D_CP                     :	VitalDelayType := -0.029 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.091 ns;
      thold_SE_CP                    :	VitalDelayType := -0.031 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.107 ns;
      thold_SI_CP                    :	VitalDelayType := -0.041 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.141 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.110 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.078 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SDFKCND1 -----
component SDFKCND1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.079 ns, 0.074 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.113 ns, 0.110 ns);
      thold_CN_CP                    :	VitalDelayType := -0.035 ns;
      tsetup_CN_CP                   :	VitalDelayType := 0.076 ns;
      thold_D_CP                     :	VitalDelayType := -0.035 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.079 ns;
      thold_SE_CP                    :	VitalDelayType := -0.035 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.098 ns;
      thold_SI_CP                    :	VitalDelayType := -0.041 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.129 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.085 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.075 ns;
      tipd_CN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CN                             :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SDFKCND2 -----
component SDFKCND2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.084 ns, 0.085 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.144 ns, 0.132 ns);
      thold_CN_CP                    :	VitalDelayType := -0.035 ns;
      tsetup_CN_CP                   :	VitalDelayType := 0.073 ns;
      thold_D_CP                     :	VitalDelayType := -0.038 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.076 ns;
      thold_SE_CP                    :	VitalDelayType := -0.035 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.097 ns;
      thold_SI_CP                    :	VitalDelayType := -0.041 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.129 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.103 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.075 ns;
      tipd_CN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CN                             :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SDFKCND4 -----
component SDFKCND4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.074 ns, 0.073 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.149 ns, 0.143 ns);
      thold_CN_CP                    :	VitalDelayType := -0.041 ns;
      tsetup_CN_CP                   :	VitalDelayType := 0.088 ns;
      thold_D_CP                     :	VitalDelayType := -0.044 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.091 ns;
      thold_SE_CP                    :	VitalDelayType := -0.041 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.111 ns;
      thold_SI_CP                    :	VitalDelayType := -0.047 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.141 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.100 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.064 ns;
      tipd_CN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CN                             :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SDFKCNQD1 -----
component SDFKCNQD1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.077 ns, 0.075 ns);
      thold_CN_CP                    :	VitalDelayType := -0.035 ns;
      tsetup_CN_CP                   :	VitalDelayType := 0.076 ns;
      thold_D_CP                     :	VitalDelayType := -0.035 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.079 ns;
      thold_SE_CP                    :	VitalDelayType := -0.035 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.098 ns;
      thold_SI_CP                    :	VitalDelayType := -0.041 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.129 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.068 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.075 ns;
      tipd_CN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CN                             :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SDFKCNQD2 -----
component SDFKCNQD2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.083 ns, 0.086 ns);
      thold_CN_CP                    :	VitalDelayType := -0.035 ns;
      tsetup_CN_CP                   :	VitalDelayType := 0.073 ns;
      thold_D_CP                     :	VitalDelayType := -0.038 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.076 ns;
      thold_SE_CP                    :	VitalDelayType := -0.035 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.097 ns;
      thold_SI_CP                    :	VitalDelayType := -0.041 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.129 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.076 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.075 ns;
      tipd_CN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CN                             :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SDFKCNQD4 -----
component SDFKCNQD4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.073 ns, 0.073 ns);
      thold_CN_CP                    :	VitalDelayType := -0.041 ns;
      tsetup_CN_CP                   :	VitalDelayType := 0.088 ns;
      thold_D_CP                     :	VitalDelayType := -0.044 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.091 ns;
      thold_SE_CP                    :	VitalDelayType := -0.041 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.113 ns;
      thold_SI_CP                    :	VitalDelayType := -0.047 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.141 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.065 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.064 ns;
      tipd_CN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CN                             :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SDFKCSND1 -----
component SDFKCSND1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.079 ns, 0.074 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.113 ns, 0.110 ns);
      thold_CN_CP                    :	VitalDelayType := -0.062 ns;
      tsetup_CN_CP                   :	VitalDelayType := 0.108 ns;
      thold_D_CP                     :	VitalDelayType := -0.059 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.147 ns;
      thold_SE_CP                    :	VitalDelayType := -0.044 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.097 ns;
      thold_SI_CP                    :	VitalDelayType := -0.041 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.129 ns;
      thold_SN_CP                    :	VitalDelayType := -0.082 ns;
      tsetup_SN_CP                   :	VitalDelayType := 0.164 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.085 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.075 ns;
      tipd_CN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CN                             :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC;
      SN                             :	in    STD_ULOGIC);
end component;


----- Component SDFKCSND2 -----
component SDFKCSND2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.084 ns, 0.085 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.144 ns, 0.131 ns);
      thold_CN_CP                    :	VitalDelayType := -0.062 ns;
      tsetup_CN_CP                   :	VitalDelayType := 0.114 ns;
      thold_D_CP                     :	VitalDelayType := -0.059 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.144 ns;
      thold_SE_CP                    :	VitalDelayType := -0.045 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.097 ns;
      thold_SI_CP                    :	VitalDelayType := -0.041 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.123 ns;
      thold_SN_CP                    :	VitalDelayType := -0.082 ns;
      tsetup_SN_CP                   :	VitalDelayType := 0.161 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.103 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.075 ns;
      tipd_CN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CN                             :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC;
      SN                             :	in    STD_ULOGIC);
end component;


----- Component SDFKCSND4 -----
component SDFKCSND4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.074 ns, 0.073 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.149 ns, 0.143 ns);
      thold_CN_CP                    :	VitalDelayType := -0.067 ns;
      tsetup_CN_CP                   :	VitalDelayType := 0.126 ns;
      thold_D_CP                     :	VitalDelayType := -0.067 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.158 ns;
      thold_SE_CP                    :	VitalDelayType := -0.050 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.110 ns;
      thold_SI_CP                    :	VitalDelayType := -0.047 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.141 ns;
      thold_SN_CP                    :	VitalDelayType := -0.091 ns;
      tsetup_SN_CP                   :	VitalDelayType := 0.176 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.100 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.064 ns;
      tipd_CN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CN                             :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC;
      SN                             :	in    STD_ULOGIC);
end component;


----- Component SDFKSND1 -----
component SDFKSND1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.080 ns, 0.074 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.114 ns, 0.111 ns);
      thold_D_CP                     :	VitalDelayType := -0.023 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.138 ns;
      thold_SE_CP                    :	VitalDelayType := -0.047 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.098 ns;
      thold_SI_CP                    :	VitalDelayType := -0.041 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.132 ns;
      thold_SN_CP                    :	VitalDelayType := -0.064 ns;
      tsetup_SN_CP                   :	VitalDelayType := 0.155 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.086 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.076 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC;
      SN                             :	in    STD_ULOGIC);
end component;


----- Component SDFKSND2 -----
component SDFKSND2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.086 ns, 0.086 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.143 ns, 0.133 ns);
      thold_D_CP                     :	VitalDelayType := -0.023 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.135 ns;
      thold_SE_CP                    :	VitalDelayType := -0.047 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.098 ns;
      thold_SI_CP                    :	VitalDelayType := -0.041 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.129 ns;
      thold_SN_CP                    :	VitalDelayType := -0.067 ns;
      tsetup_SN_CP                   :	VitalDelayType := 0.149 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.103 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.076 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC;
      SN                             :	in    STD_ULOGIC);
end component;


----- Component SDFKSND4 -----
component SDFKSND4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.076 ns, 0.073 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.150 ns, 0.145 ns);
      thold_D_CP                     :	VitalDelayType := -0.029 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.149 ns;
      thold_SE_CP                    :	VitalDelayType := -0.051 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.114 ns;
      thold_SI_CP                    :	VitalDelayType := -0.047 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.144 ns;
      thold_SN_CP                    :	VitalDelayType := -0.073 ns;
      tsetup_SN_CP                   :	VitalDelayType := 0.167 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.101 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.065 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC;
      SN                             :	in    STD_ULOGIC);
end component;


----- Component SDFNCND1 -----
component SDFNCND1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.137 ns, 0.040 ns);
      tpd_CPN_Q                      :	VitalDelayType01 := (0.137 ns, 0.115 ns);
      tpd_CDN_QN                     :	VitalDelayType01 := (0.075 ns, 0.154 ns);
      tpd_CPN_QN                     :	VitalDelayType01 := (0.143 ns, 0.154 ns);
      trecovery_CDN_CPN              :	VitalDelayType := -0.097 ns;
      thold_CDN_CPN                  :	VitalDelayType := 0.132 ns;
      thold_D_CPN                    :	VitalDelayType := 0.023 ns;
      tsetup_D_CPN                   :	VitalDelayType := 0.097 ns;
      thold_SE_CPN                   :	VitalDelayType := -0.019 ns;
      tsetup_SE_CPN                  :	VitalDelayType := 0.083 ns;
      thold_SI_CPN                   :	VitalDelayType := 0.012 ns;
      tsetup_SI_CPN                  :	VitalDelayType := 0.144 ns;
      tpw_CPN_posedge                :	VitalDelayType := 0.083 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.071 ns;
      tpw_CPN_negedge                :	VitalDelayType := 0.128 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CPN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      CPN                            :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SDFNCND2 -----
component SDFNCND2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.146 ns, 0.038 ns);
      tpd_CPN_Q                      :	VitalDelayType01 := (0.146 ns, 0.119 ns);
      tpd_CDN_QN                     :	VitalDelayType01 := (0.082 ns, 0.174 ns);
      tpd_CPN_QN                     :	VitalDelayType01 := (0.159 ns, 0.174 ns);
      trecovery_CDN_CPN              :	VitalDelayType := -0.100 ns;
      thold_CDN_CPN                  :	VitalDelayType := 0.129 ns;
      thold_D_CPN                    :	VitalDelayType := 0.023 ns;
      tsetup_D_CPN                   :	VitalDelayType := 0.097 ns;
      thold_SE_CPN                   :	VitalDelayType := -0.019 ns;
      tsetup_SE_CPN                  :	VitalDelayType := 0.082 ns;
      thold_SI_CPN                   :	VitalDelayType := 0.012 ns;
      tsetup_SI_CPN                  :	VitalDelayType := 0.141 ns;
      tpw_CPN_posedge                :	VitalDelayType := 0.083 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.071 ns;
      tpw_CPN_negedge                :	VitalDelayType := 0.140 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CPN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      CPN                            :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SDFNCND4 -----
component SDFNCND4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.143 ns, 0.041 ns);
      tpd_CPN_Q                      :	VitalDelayType01 := (0.143 ns, 0.104 ns);
      tpd_CDN_QN                     :	VitalDelayType01 := (0.088 ns, 0.178 ns);
      tpd_CPN_QN                     :	VitalDelayType01 := (0.148 ns, 0.178 ns);
      trecovery_CDN_CPN              :	VitalDelayType := -0.079 ns;
      thold_CDN_CPN                  :	VitalDelayType := 0.114 ns;
      thold_D_CPN                    :	VitalDelayType := 0.009 ns;
      tsetup_D_CPN                   :	VitalDelayType := 0.105 ns;
      thold_SE_CPN                   :	VitalDelayType := -0.028 ns;
      tsetup_SE_CPN                  :	VitalDelayType := 0.097 ns;
      thold_SI_CPN                   :	VitalDelayType := 0.000 ns;
      tsetup_SI_CPN                  :	VitalDelayType := 0.149 ns;
      tpw_CPN_posedge                :	VitalDelayType := 0.073 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.071 ns;
      tpw_CPN_negedge                :	VitalDelayType := 0.135 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CPN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      CPN                            :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SDFNCSND1 -----
component SDFNCSND1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.040 ns, 0.046 ns);
      tpd_SDN_Q                      :	VitalDelayType01 := (0.107 ns, 0.046 ns);
      tpd_CPN_Q                      :	VitalDelayType01 := (0.134 ns, 0.140 ns);
      tpd_CDN_QN                     :	VitalDelayType01 := (0.089 ns, 0.046 ns);
      tpd_SDN_QN                     :	VitalDelayType01 := (0.040 ns, 0.046 ns);
      tpd_CPN_QN                     :	VitalDelayType01 := (0.178 ns, 0.173 ns);
      trecovery_CDN_CPN              :	VitalDelayType := -0.102 ns;
      trecovery_CDN_SDN              :	VitalDelayType := 0.004 ns;
      thold_CDN_CPN                  :	VitalDelayType := 0.190 ns;
      thold_D_CPN                    :	VitalDelayType := 0.018 ns;
      tsetup_D_CPN                   :	VitalDelayType := 0.097 ns;
      trecovery_SDN_CPN              :	VitalDelayType := -0.003 ns;
      trecovery_SDN_CDN              :	VitalDelayType := -0.003 ns;
      thold_SDN_CPN                  :	VitalDelayType := 0.047 ns;
      thold_SE_CPN                   :	VitalDelayType := -0.023 ns;
      tsetup_SE_CPN                  :	VitalDelayType := 0.086 ns;
      thold_SI_CPN                   :	VitalDelayType := 0.006 ns;
      tsetup_SI_CPN                  :	VitalDelayType := 0.152 ns;
      thold_SDN_CDN                  :	VitalDelayType := 0.000 ns;
      thold_CDN_SDN                  :	VitalDelayType := 0.000 ns;
      tpw_CPN_posedge                :	VitalDelayType := 0.089 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.107 ns;
      tpw_CPN_negedge                :	VitalDelayType := 0.146 ns;
      tpw_SDN_negedge                :	VitalDelayType := 0.068 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CPN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      CPN                            :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SDN                            :	in    STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SDFNCSND2 -----
component SDFNCSND2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.042 ns, 0.042 ns);
      tpd_SDN_Q                      :	VitalDelayType01 := (0.126 ns, 0.042 ns);
      tpd_CPN_Q                      :	VitalDelayType01 := (0.139 ns, 0.143 ns);
      tpd_CDN_QN                     :	VitalDelayType01 := (0.115 ns, 0.062 ns);
      tpd_SDN_QN                     :	VitalDelayType01 := (0.066 ns, 0.062 ns);
      tpd_CPN_QN                     :	VitalDelayType01 := (0.210 ns, 0.193 ns);
      trecovery_CDN_CPN              :	VitalDelayType := -0.108 ns;
      trecovery_CDN_SDN              :	VitalDelayType := 0.021 ns;
      thold_CDN_CPN                  :	VitalDelayType := 0.193 ns;
      thold_D_CPN                    :	VitalDelayType := 0.018 ns;
      tsetup_D_CPN                   :	VitalDelayType := 0.100 ns;
      trecovery_SDN_CPN              :	VitalDelayType := -0.003 ns;
      trecovery_SDN_CDN              :	VitalDelayType := -0.018 ns;
      thold_SDN_CPN                  :	VitalDelayType := 0.047 ns;
      thold_SE_CPN                   :	VitalDelayType := -0.023 ns;
      tsetup_SE_CPN                  :	VitalDelayType := 0.086 ns;
      thold_SI_CPN                   :	VitalDelayType := 0.006 ns;
      tsetup_SI_CPN                  :	VitalDelayType := 0.152 ns;
      thold_SDN_CDN                  :	VitalDelayType := 0.000 ns;
      thold_CDN_SDN                  :	VitalDelayType := 0.000 ns;
      tpw_CPN_posedge                :	VitalDelayType := 0.089 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.108 ns;
      tpw_CPN_negedge                :	VitalDelayType := 0.165 ns;
      tpw_SDN_negedge                :	VitalDelayType := 0.086 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CPN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      CPN                            :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SDN                            :	in    STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SDFNCSND4 -----
component SDFNCSND4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.047 ns, 0.047 ns);
      tpd_SDN_Q                      :	VitalDelayType01 := (0.146 ns, 0.047 ns);
      tpd_CPN_Q                      :	VitalDelayType01 := (0.130 ns, 0.132 ns);
      tpd_CDN_QN                     :	VitalDelayType01 := (0.120 ns, 0.073 ns);
      tpd_SDN_QN                     :	VitalDelayType01 := (0.064 ns, 0.073 ns);
      tpd_CPN_QN                     :	VitalDelayType01 := (0.201 ns, 0.197 ns);
      trecovery_CDN_CPN              :	VitalDelayType := -0.088 ns;
      trecovery_CDN_SDN              :	VitalDelayType := 0.016 ns;
      thold_CDN_CPN                  :	VitalDelayType := 0.176 ns;
      thold_D_CPN                    :	VitalDelayType := 0.003 ns;
      tsetup_D_CPN                   :	VitalDelayType := 0.108 ns;
      trecovery_SDN_CPN              :	VitalDelayType := 0.003 ns;
      trecovery_SDN_CDN              :	VitalDelayType := -0.015 ns;
      thold_SDN_CPN                  :	VitalDelayType := 0.026 ns;
      thold_SE_CPN                   :	VitalDelayType := -0.034 ns;
      tsetup_SE_CPN                  :	VitalDelayType := 0.107 ns;
      thold_SI_CPN                   :	VitalDelayType := -0.009 ns;
      tsetup_SI_CPN                  :	VitalDelayType := 0.167 ns;
      thold_SDN_CDN                  :	VitalDelayType := 0.000 ns;
      thold_CDN_SDN                  :	VitalDelayType := 0.000 ns;
      tpw_CPN_posedge                :	VitalDelayType := 0.079 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.111 ns;
      tpw_CPN_negedge                :	VitalDelayType := 0.154 ns;
      tpw_SDN_negedge                :	VitalDelayType := 0.101 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CPN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      CPN                            :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SDN                            :	in    STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SDFND1 -----
component SDFND1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CPN_Q                      :	VitalDelayType01 := (0.124 ns, 0.114 ns);
      tpd_CPN_QN                     :	VitalDelayType01 := (0.134 ns, 0.140 ns);
      thold_D_CPN                    :	VitalDelayType := 0.021 ns;
      tsetup_D_CPN                   :	VitalDelayType := 0.082 ns;
      thold_SE_CPN                   :	VitalDelayType := -0.018 ns;
      tsetup_SE_CPN                  :	VitalDelayType := 0.083 ns;
      thold_SI_CPN                   :	VitalDelayType := 0.012 ns;
      tsetup_SI_CPN                  :	VitalDelayType := 0.135 ns;
      tpw_CPN_posedge                :	VitalDelayType := 0.084 ns;
      tpw_CPN_negedge                :	VitalDelayType := 0.120 ns;
      tipd_CPN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CPN                            :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SDFND2 -----
component SDFND2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CPN_Q                      :	VitalDelayType01 := (0.129 ns, 0.120 ns);
      tpd_CPN_QN                     :	VitalDelayType01 := (0.146 ns, 0.153 ns);
      thold_D_CPN                    :	VitalDelayType := 0.021 ns;
      tsetup_D_CPN                   :	VitalDelayType := 0.082 ns;
      thold_SE_CPN                   :	VitalDelayType := -0.019 ns;
      tsetup_SE_CPN                  :	VitalDelayType := 0.082 ns;
      thold_SI_CPN                   :	VitalDelayType := 0.012 ns;
      tsetup_SI_CPN                  :	VitalDelayType := 0.135 ns;
      tpw_CPN_posedge                :	VitalDelayType := 0.084 ns;
      tpw_CPN_negedge                :	VitalDelayType := 0.130 ns;
      tipd_CPN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CPN                            :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SDFND4 -----
component SDFND4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CPN_Q                      :	VitalDelayType01 := (0.120 ns, 0.097 ns);
      tpd_CPN_QN                     :	VitalDelayType01 := (0.126 ns, 0.147 ns);
      thold_D_CPN                    :	VitalDelayType := 0.006 ns;
      tsetup_D_CPN                   :	VitalDelayType := 0.097 ns;
      thold_SE_CPN                   :	VitalDelayType := -0.023 ns;
      tsetup_SE_CPN                  :	VitalDelayType := 0.104 ns;
      thold_SI_CPN                   :	VitalDelayType := -0.006 ns;
      tsetup_SI_CPN                  :	VitalDelayType := 0.152 ns;
      tpw_CPN_posedge                :	VitalDelayType := 0.072 ns;
      tpw_CPN_negedge                :	VitalDelayType := 0.115 ns;
      tipd_CPN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CPN                            :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SDFNSND1 -----
component SDFNSND1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_SDN_Q                      :	VitalDelayType01 := (0.097 ns, 0.110 ns);
      tpd_CPN_Q                      :	VitalDelayType01 := (0.125 ns, 0.110 ns);
      tpd_SDN_QN                     :	VitalDelayType01 := (0.141 ns, 0.034 ns);
      tpd_CPN_QN                     :	VitalDelayType01 := (0.141 ns, 0.147 ns);
      thold_D_CPN                    :	VitalDelayType := 0.021 ns;
      tsetup_D_CPN                   :	VitalDelayType := 0.097 ns;
      trecovery_SDN_CPN              :	VitalDelayType := -0.018 ns;
      thold_SDN_CPN                  :	VitalDelayType := 0.056 ns;
      thold_SE_CPN                   :	VitalDelayType := -0.022 ns;
      tsetup_SE_CPN                  :	VitalDelayType := 0.094 ns;
      thold_SI_CPN                   :	VitalDelayType := 0.009 ns;
      tsetup_SI_CPN                  :	VitalDelayType := 0.152 ns;
      tpw_CPN_posedge                :	VitalDelayType := 0.085 ns;
      tpw_CPN_negedge                :	VitalDelayType := 0.122 ns;
      tpw_SDN_negedge                :	VitalDelayType := 0.062 ns;
      tipd_CPN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CPN                            :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SDN                            :	in    STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SDFNSND2 -----
component SDFNSND2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_SDN_Q                      :	VitalDelayType01 := (0.101 ns, 0.116 ns);
      tpd_CPN_Q                      :	VitalDelayType01 := (0.127 ns, 0.116 ns);
      tpd_SDN_QN                     :	VitalDelayType01 := (0.156 ns, 0.041 ns);
      tpd_CPN_QN                     :	VitalDelayType01 := (0.156 ns, 0.157 ns);
      thold_D_CPN                    :	VitalDelayType := 0.021 ns;
      tsetup_D_CPN                   :	VitalDelayType := 0.097 ns;
      trecovery_SDN_CPN              :	VitalDelayType := -0.023 ns;
      thold_SDN_CPN                  :	VitalDelayType := 0.053 ns;
      thold_SE_CPN                   :	VitalDelayType := -0.022 ns;
      tsetup_SE_CPN                  :	VitalDelayType := 0.092 ns;
      thold_SI_CPN                   :	VitalDelayType := 0.009 ns;
      tsetup_SI_CPN                  :	VitalDelayType := 0.152 ns;
      tpw_CPN_posedge                :	VitalDelayType := 0.085 ns;
      tpw_CPN_negedge                :	VitalDelayType := 0.130 ns;
      tpw_SDN_negedge                :	VitalDelayType := 0.065 ns;
      tipd_CPN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CPN                            :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SDN                            :	in    STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SDFNSND4 -----
component SDFNSND4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_SDN_Q                      :	VitalDelayType01 := (0.121 ns, 0.101 ns);
      tpd_CPN_Q                      :	VitalDelayType01 := (0.116 ns, 0.101 ns);
      tpd_SDN_QN                     :	VitalDelayType01 := (0.157 ns, 0.054 ns);
      tpd_CPN_QN                     :	VitalDelayType01 := (0.157 ns, 0.161 ns);
      thold_D_CPN                    :	VitalDelayType := 0.006 ns;
      tsetup_D_CPN                   :	VitalDelayType := 0.105 ns;
      trecovery_SDN_CPN              :	VitalDelayType := -0.012 ns;
      thold_SDN_CPN                  :	VitalDelayType := 0.035 ns;
      thold_SE_CPN                   :	VitalDelayType := -0.032 ns;
      tsetup_SE_CPN                  :	VitalDelayType := 0.107 ns;
      thold_SI_CPN                   :	VitalDelayType := -0.006 ns;
      tsetup_SI_CPN                  :	VitalDelayType := 0.164 ns;
      tpw_CPN_posedge                :	VitalDelayType := 0.074 ns;
      tpw_CPN_negedge                :	VitalDelayType := 0.124 ns;
      tpw_SDN_negedge                :	VitalDelayType := 0.082 ns;
      tipd_CPN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CPN                            :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SDN                            :	in    STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SDFQD1 -----
component SDFQD1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.091 ns, 0.094 ns);
      thold_D_CP                     :	VitalDelayType := -0.023 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.079 ns;
      thold_SE_CP                    :	VitalDelayType := -0.028 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.102 ns;
      thold_SI_CP                    :	VitalDelayType := -0.041 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.132 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.074 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.098 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SDFQD2 -----
component SDFQD2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.100 ns, 0.099 ns);
      thold_D_CP                     :	VitalDelayType := -0.021 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.079 ns;
      thold_SE_CP                    :	VitalDelayType := -0.028 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.101 ns;
      thold_SI_CP                    :	VitalDelayType := -0.041 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.132 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.080 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.098 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SDFQD4 -----
component SDFQD4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.101 ns, 0.096 ns);
      thold_D_CP                     :	VitalDelayType := -0.026 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.091 ns;
      thold_SE_CP                    :	VitalDelayType := -0.031 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.111 ns;
      thold_SI_CP                    :	VitalDelayType := -0.041 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.141 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.076 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.079 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SDFSND1 -----
component SDFSND1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_SDN_Q                      :	VitalDelayType01 := (0.097 ns, 0.102 ns);
      tpd_CP_Q                       :	VitalDelayType01 := (0.099 ns, 0.102 ns);
      tpd_SDN_QN                     :	VitalDelayType01 := (0.134 ns, 0.034 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.134 ns, 0.120 ns);
      thold_D_CP                     :	VitalDelayType := -0.032 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.088 ns;
      trecovery_SDN_CP               :	VitalDelayType := -0.029 ns;
      thold_SDN_CP                   :	VitalDelayType := 0.053 ns;
      thold_SE_CP                    :	VitalDelayType := -0.032 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.107 ns;
      thold_SI_CP                    :	VitalDelayType := -0.044 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.141 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.107 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.102 ns;
      tpw_SDN_negedge                :	VitalDelayType := 0.062 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SDN                            :	in    STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SDFSND2 -----
component SDFSND2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_SDN_Q                      :	VitalDelayType01 := (0.101 ns, 0.105 ns);
      tpd_CP_Q                       :	VitalDelayType01 := (0.105 ns, 0.105 ns);
      tpd_SDN_QN                     :	VitalDelayType01 := (0.145 ns, 0.041 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.145 ns, 0.134 ns);
      thold_D_CP                     :	VitalDelayType := -0.032 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.085 ns;
      trecovery_SDN_CP               :	VitalDelayType := -0.026 ns;
      thold_SDN_CP                   :	VitalDelayType := 0.053 ns;
      thold_SE_CP                    :	VitalDelayType := -0.034 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.104 ns;
      thold_SI_CP                    :	VitalDelayType := -0.044 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.147 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.115 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.101 ns;
      tpw_SDN_negedge                :	VitalDelayType := 0.065 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SDN                            :	in    STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SDFSND4 -----
component SDFSND4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_SDN_Q                      :	VitalDelayType01 := (0.121 ns, 0.102 ns);
      tpd_CP_Q                       :	VitalDelayType01 := (0.104 ns, 0.102 ns);
      tpd_SDN_QN                     :	VitalDelayType01 := (0.159 ns, 0.054 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.159 ns, 0.150 ns);
      thold_D_CP                     :	VitalDelayType := -0.032 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.100 ns;
      trecovery_SDN_CP               :	VitalDelayType := -0.015 ns;
      thold_SDN_CP                   :	VitalDelayType := 0.041 ns;
      thold_SE_CP                    :	VitalDelayType := -0.038 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.113 ns;
      thold_SI_CP                    :	VitalDelayType := -0.044 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.152 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.121 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.083 ns;
      tpw_SDN_negedge                :	VitalDelayType := 0.082 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SDN                            :	in    STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SDFXD1 -----
component SDFXD1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.098 ns, 0.100 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.119 ns, 0.113 ns);
      thold_DA_CP                    :	VitalDelayType := -0.079 ns;
      tsetup_DA_CP                   :	VitalDelayType := 0.170 ns;
      thold_DB_CP                    :	VitalDelayType := -0.079 ns;
      tsetup_DB_CP                   :	VitalDelayType := 0.170 ns;
      thold_SA_CP                    :	VitalDelayType := -0.107 ns;
      tsetup_SA_CP                   :	VitalDelayType := 0.149 ns;
      thold_SE_CP                    :	VitalDelayType := -0.028 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.113 ns;
      thold_SI_CP                    :	VitalDelayType := -0.041 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.161 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.098 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.104 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_DA                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_DB                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SA                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      DA                             :	in    STD_ULOGIC;
      DB                             :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SA                             :	in    STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SDFXD2 -----
component SDFXD2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.103 ns, 0.106 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.135 ns, 0.128 ns);
      thold_DA_CP                    :	VitalDelayType := -0.076 ns;
      tsetup_DA_CP                   :	VitalDelayType := 0.173 ns;
      thold_DB_CP                    :	VitalDelayType := -0.079 ns;
      tsetup_DB_CP                   :	VitalDelayType := 0.173 ns;
      thold_SA_CP                    :	VitalDelayType := -0.104 ns;
      tsetup_SA_CP                   :	VitalDelayType := 0.154 ns;
      thold_SE_CP                    :	VitalDelayType := -0.025 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.116 ns;
      thold_SI_CP                    :	VitalDelayType := -0.041 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.164 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.109 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.105 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_DA                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_DB                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SA                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      DA                             :	in    STD_ULOGIC;
      DB                             :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SA                             :	in    STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SDFXD4 -----
component SDFXD4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.105 ns, 0.105 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.138 ns, 0.133 ns);
      thold_DA_CP                    :	VitalDelayType := -0.076 ns;
      tsetup_DA_CP                   :	VitalDelayType := 0.185 ns;
      thold_DB_CP                    :	VitalDelayType := -0.079 ns;
      tsetup_DB_CP                   :	VitalDelayType := 0.185 ns;
      thold_SA_CP                    :	VitalDelayType := -0.110 ns;
      tsetup_SA_CP                   :	VitalDelayType := 0.164 ns;
      thold_SE_CP                    :	VitalDelayType := -0.028 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.127 ns;
      thold_SI_CP                    :	VitalDelayType := -0.038 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.179 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.111 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.085 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_DA                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_DB                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SA                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      DA                             :	in    STD_ULOGIC;
      DB                             :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SA                             :	in    STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SEDFCND1 -----
component SEDFCND1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.107 ns, 0.040 ns);
      tpd_CP_Q                       :	VitalDelayType01 := (0.107 ns, 0.109 ns);
      tpd_CDN_QN                     :	VitalDelayType01 := (0.101 ns, 0.153 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.161 ns, 0.153 ns);
      trecovery_CDN_CP               :	VitalDelayType := -0.064 ns;
      thold_CDN_CP                   :	VitalDelayType := 0.094 ns;
      thold_D_CP                     :	VitalDelayType := -0.088 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.135 ns;
      thold_E_CP                     :	VitalDelayType := -0.113 ns;
      tsetup_E_CP                    :	VitalDelayType := 0.144 ns;
      thold_SE_CP                    :	VitalDelayType := -0.038 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.108 ns;
      thold_SI_CP                    :	VitalDelayType := -0.056 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.141 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.123 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.153 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.120 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SEDFCND2 -----
component SEDFCND2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.116 ns, 0.039 ns);
      tpd_CP_Q                       :	VitalDelayType01 := (0.116 ns, 0.109 ns);
      tpd_CDN_QN                     :	VitalDelayType01 := (0.098 ns, 0.157 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.159 ns, 0.157 ns);
      trecovery_CDN_CP               :	VitalDelayType := -0.059 ns;
      thold_CDN_CP                   :	VitalDelayType := 0.088 ns;
      thold_D_CP                     :	VitalDelayType := -0.088 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.138 ns;
      thold_E_CP                     :	VitalDelayType := -0.113 ns;
      tsetup_E_CP                    :	VitalDelayType := 0.144 ns;
      thold_SE_CP                    :	VitalDelayType := -0.040 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.110 ns;
      thold_SI_CP                    :	VitalDelayType := -0.056 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.141 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.125 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.152 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.120 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SEDFCND4 -----
component SEDFCND4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.120 ns, 0.043 ns);
      tpd_CP_Q                       :	VitalDelayType01 := (0.120 ns, 0.108 ns);
      tpd_CDN_QN                     :	VitalDelayType01 := (0.102 ns, 0.166 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.161 ns, 0.166 ns);
      trecovery_CDN_CP               :	VitalDelayType := -0.053 ns;
      thold_CDN_CP                   :	VitalDelayType := 0.079 ns;
      thold_D_CP                     :	VitalDelayType := -0.094 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.147 ns;
      thold_E_CP                     :	VitalDelayType := -0.116 ns;
      tsetup_E_CP                    :	VitalDelayType := 0.152 ns;
      thold_SE_CP                    :	VitalDelayType := -0.040 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.117 ns;
      thold_SI_CP                    :	VitalDelayType := -0.056 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.152 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.131 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.155 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.101 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SEDFCNQD1 -----
component SEDFCNQD1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.104 ns, 0.038 ns);
      tpd_CP_Q                       :	VitalDelayType01 := (0.104 ns, 0.107 ns);
      trecovery_CDN_CP               :	VitalDelayType := -0.064 ns;
      thold_CDN_CP                   :	VitalDelayType := 0.094 ns;
      thold_D_CP                     :	VitalDelayType := -0.088 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.135 ns;
      thold_E_CP                     :	VitalDelayType := -0.113 ns;
      tsetup_E_CP                    :	VitalDelayType := 0.141 ns;
      thold_SE_CP                    :	VitalDelayType := -0.038 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.108 ns;
      thold_SI_CP                    :	VitalDelayType := -0.056 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.141 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.113 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.149 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.120 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SEDFCNQD2 -----
component SEDFCNQD2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.114 ns, 0.037 ns);
      tpd_CP_Q                       :	VitalDelayType01 := (0.114 ns, 0.107 ns);
      trecovery_CDN_CP               :	VitalDelayType := -0.062 ns;
      thold_CDN_CP                   :	VitalDelayType := 0.088 ns;
      thold_D_CP                     :	VitalDelayType := -0.088 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.138 ns;
      thold_E_CP                     :	VitalDelayType := -0.113 ns;
      tsetup_E_CP                    :	VitalDelayType := 0.144 ns;
      thold_SE_CP                    :	VitalDelayType := -0.040 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.107 ns;
      thold_SI_CP                    :	VitalDelayType := -0.056 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.141 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.121 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.154 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.120 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SEDFCNQD4 -----
component SEDFCNQD4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CDN_Q                      :	VitalDelayType01 := (0.116 ns, 0.041 ns);
      tpd_CP_Q                       :	VitalDelayType01 := (0.116 ns, 0.105 ns);
      trecovery_CDN_CP               :	VitalDelayType := -0.053 ns;
      thold_CDN_CP                   :	VitalDelayType := 0.079 ns;
      thold_D_CP                     :	VitalDelayType := -0.091 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.147 ns;
      thold_E_CP                     :	VitalDelayType := -0.116 ns;
      tsetup_E_CP                    :	VitalDelayType := 0.152 ns;
      thold_SE_CP                    :	VitalDelayType := -0.041 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.117 ns;
      thold_SI_CP                    :	VitalDelayType := -0.056 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.152 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.127 ns;
      tpw_CDN_negedge                :	VitalDelayType := 0.162 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.101 ns;
      tipd_CDN                       :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CDN                            :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SEDFD1 -----
component SEDFD1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.081 ns, 0.074 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.113 ns, 0.117 ns);
      thold_D_CP                     :	VitalDelayType := -0.053 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.108 ns;
      thold_E_CP                     :	VitalDelayType := -0.072 ns;
      tsetup_E_CP                    :	VitalDelayType := 0.085 ns;
      thold_SE_CP                    :	VitalDelayType := -0.095 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.132 ns;
      thold_SI_CP                    :	VitalDelayType := -0.056 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.147 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.088 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.077 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SEDFD2 -----
component SEDFD2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.088 ns, 0.086 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.143 ns, 0.139 ns);
      thold_D_CP                     :	VitalDelayType := -0.053 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.105 ns;
      thold_E_CP                     :	VitalDelayType := -0.072 ns;
      tsetup_E_CP                    :	VitalDelayType := 0.085 ns;
      thold_SE_CP                    :	VitalDelayType := -0.095 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.133 ns;
      thold_SI_CP                    :	VitalDelayType := -0.056 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.144 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.103 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.077 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SEDFD4 -----
component SEDFD4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.080 ns, 0.076 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.149 ns, 0.153 ns);
      thold_D_CP                     :	VitalDelayType := -0.059 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.117 ns;
      thold_E_CP                     :	VitalDelayType := -0.072 ns;
      tsetup_E_CP                    :	VitalDelayType := 0.100 ns;
      thold_SE_CP                    :	VitalDelayType := -0.097 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.148 ns;
      thold_SI_CP                    :	VitalDelayType := -0.062 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.158 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.104 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.066 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SEDFKCND1 -----
component SEDFKCND1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.094 ns, 0.097 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.130 ns, 0.119 ns);
      thold_CN_CP                    :	VitalDelayType := -0.094 ns;
      tsetup_CN_CP                   :	VitalDelayType := 0.147 ns;
      thold_D_CP                     :	VitalDelayType := -0.094 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.170 ns;
      thold_E_CP                     :	VitalDelayType := -0.136 ns;
      tsetup_E_CP                    :	VitalDelayType := 0.154 ns;
      thold_SE_CP                    :	VitalDelayType := -0.032 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.114 ns;
      thold_SI_CP                    :	VitalDelayType := -0.047 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.161 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.102 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.105 ns;
      tipd_CN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CN                             :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SEDFKCND2 -----
component SEDFKCND2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.104 ns, 0.100 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.132 ns, 0.135 ns);
      thold_CN_CP                    :	VitalDelayType := -0.088 ns;
      tsetup_CN_CP                   :	VitalDelayType := 0.149 ns;
      thold_D_CP                     :	VitalDelayType := -0.094 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.173 ns;
      thold_E_CP                     :	VitalDelayType := -0.135 ns;
      tsetup_E_CP                    :	VitalDelayType := 0.152 ns;
      thold_SE_CP                    :	VitalDelayType := -0.031 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.119 ns;
      thold_SI_CP                    :	VitalDelayType := -0.047 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.164 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.110 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.105 ns;
      tipd_CN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CN                             :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SEDFKCND4 -----
component SEDFKCND4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.103 ns, 0.098 ns);
      tpd_CP_QN                      :	VitalDelayType01 := (0.135 ns, 0.136 ns);
      thold_CN_CP                    :	VitalDelayType := -0.100 ns;
      tsetup_CN_CP                   :	VitalDelayType := 0.161 ns;
      thold_D_CP                     :	VitalDelayType := -0.094 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.185 ns;
      thold_E_CP                     :	VitalDelayType := -0.141 ns;
      tsetup_E_CP                    :	VitalDelayType := 0.163 ns;
      thold_SE_CP                    :	VitalDelayType := -0.035 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.129 ns;
      thold_SI_CP                    :	VitalDelayType := -0.047 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.176 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.108 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.085 ns;
      tipd_CN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CN                             :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      QN                             :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SEDFKCNQD1 -----
component SEDFKCNQD1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.091 ns, 0.093 ns);
      thold_CN_CP                    :	VitalDelayType := -0.085 ns;
      tsetup_CN_CP                   :	VitalDelayType := 0.149 ns;
      thold_D_CP                     :	VitalDelayType := -0.094 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.170 ns;
      thold_E_CP                     :	VitalDelayType := -0.135 ns;
      tsetup_E_CP                    :	VitalDelayType := 0.154 ns;
      thold_SE_CP                    :	VitalDelayType := -0.028 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.119 ns;
      thold_SI_CP                    :	VitalDelayType := -0.047 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.164 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.095 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.105 ns;
      tipd_CN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CN                             :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SEDFKCNQD2 -----
component SEDFKCNQD2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.102 ns, 0.094 ns);
      thold_CN_CP                    :	VitalDelayType := -0.088 ns;
      tsetup_CN_CP                   :	VitalDelayType := 0.149 ns;
      thold_D_CP                     :	VitalDelayType := -0.094 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.173 ns;
      thold_E_CP                     :	VitalDelayType := -0.135 ns;
      tsetup_E_CP                    :	VitalDelayType := 0.154 ns;
      thold_SE_CP                    :	VitalDelayType := -0.031 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.119 ns;
      thold_SI_CP                    :	VitalDelayType := -0.047 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.164 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.109 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.105 ns;
      tipd_CN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CN                             :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SEDFKCNQD4 -----
component SEDFKCNQD4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.098 ns, 0.093 ns);
      thold_CN_CP                    :	VitalDelayType := -0.100 ns;
      tsetup_CN_CP                   :	VitalDelayType := 0.161 ns;
      thold_D_CP                     :	VitalDelayType := -0.091 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.185 ns;
      thold_E_CP                     :	VitalDelayType := -0.141 ns;
      tsetup_E_CP                    :	VitalDelayType := 0.164 ns;
      thold_SE_CP                    :	VitalDelayType := -0.034 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.129 ns;
      thold_SI_CP                    :	VitalDelayType := -0.044 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.176 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.104 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.085 ns;
      tipd_CN                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CN                             :	in    STD_ULOGIC;
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SEDFQD1 -----
component SEDFQD1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.081 ns, 0.075 ns);
      thold_D_CP                     :	VitalDelayType := -0.053 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.108 ns;
      thold_E_CP                     :	VitalDelayType := -0.072 ns;
      tsetup_E_CP                    :	VitalDelayType := 0.085 ns;
      thold_SE_CP                    :	VitalDelayType := -0.095 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.132 ns;
      thold_SI_CP                    :	VitalDelayType := -0.056 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.147 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.075 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.077 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SEDFQD2 -----
component SEDFQD2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.088 ns, 0.087 ns);
      thold_D_CP                     :	VitalDelayType := -0.053 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.105 ns;
      thold_E_CP                     :	VitalDelayType := -0.072 ns;
      tsetup_E_CP                    :	VitalDelayType := 0.085 ns;
      thold_SE_CP                    :	VitalDelayType := -0.095 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.133 ns;
      thold_SI_CP                    :	VitalDelayType := -0.056 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.144 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.082 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.077 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component SEDFQD4 -----
component SEDFQD4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_CP_Q                       :	VitalDelayType01 := (0.080 ns, 0.077 ns);
      thold_D_CP                     :	VitalDelayType := -0.059 ns;
      tsetup_D_CP                    :	VitalDelayType := 0.117 ns;
      thold_E_CP                     :	VitalDelayType := -0.075 ns;
      tsetup_E_CP                    :	VitalDelayType := 0.098 ns;
      thold_SE_CP                    :	VitalDelayType := -0.098 ns;
      tsetup_SE_CP                   :	VitalDelayType := 0.147 ns;
      thold_SI_CP                    :	VitalDelayType := -0.062 ns;
      tsetup_SI_CP                   :	VitalDelayType := 0.155 ns;
      tpw_CP_posedge                 :	VitalDelayType := 0.074 ns;
      tpw_CP_negedge                 :	VitalDelayType := 0.066 ns;
      tipd_CP                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_D                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_E                         :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SE                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_SI                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      CP                             :	in    STD_ULOGIC;
      D                              :	in    STD_ULOGIC;
      E                              :	in    STD_ULOGIC;
      Q                              :	out   STD_ULOGIC;
      SE                             :	in    STD_ULOGIC;
      SI                             :	in    STD_ULOGIC);
end component;


----- Component TIEH -----
component TIEH
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn);

-- synopsys translate_on
   port(
      Z                              :	out   STD_ULOGIC := 'H');
end component;


----- Component TIEL -----
component TIEL
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn);

-- synopsys translate_on
   port(
      ZN                             :	out   STD_ULOGIC := 'L');
end component;


----- Component XNR2D0 -----
component XNR2D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN_A2_EQ_0              :	VitalDelayType01 := (0.064 ns, 0.050 ns);
      tpd_A1_ZN_A2_EQ_1              :	VitalDelayType01 := (0.038 ns, 0.060 ns);
      tpd_A1_ZN                      :	VitalDelayType01 := (0.064 ns, 0.060 ns);
      tpd_A2_ZN_A1_EQ_0              :	VitalDelayType01 := (0.079 ns, 0.080 ns);
      tpd_A2_ZN_A1_EQ_1              :	VitalDelayType01 := (0.053 ns, 0.067 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.079 ns, 0.080 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component XNR2D1 -----
component XNR2D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN_A2_EQ_0              :	VitalDelayType01 := (0.059 ns, 0.047 ns);
      tpd_A1_ZN_A2_EQ_1              :	VitalDelayType01 := (0.036 ns, 0.057 ns);
      tpd_A1_ZN                      :	VitalDelayType01 := (0.059 ns, 0.057 ns);
      tpd_A2_ZN_A1_EQ_0              :	VitalDelayType01 := (0.071 ns, 0.075 ns);
      tpd_A2_ZN_A1_EQ_1              :	VitalDelayType01 := (0.045 ns, 0.056 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.071 ns, 0.075 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component XNR2D2 -----
component XNR2D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN_A2_EQ_0              :	VitalDelayType01 := (0.060 ns, 0.054 ns);
      tpd_A1_ZN_A2_EQ_1              :	VitalDelayType01 := (0.041 ns, 0.057 ns);
      tpd_A1_ZN                      :	VitalDelayType01 := (0.060 ns, 0.057 ns);
      tpd_A2_ZN_A1_EQ_0              :	VitalDelayType01 := (0.075 ns, 0.071 ns);
      tpd_A2_ZN_A1_EQ_1              :	VitalDelayType01 := (0.052 ns, 0.070 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.075 ns, 0.071 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component XNR2D4 -----
component XNR2D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN_A2_EQ_0              :	VitalDelayType01 := (0.067 ns, 0.048 ns);
      tpd_A1_ZN_A2_EQ_1              :	VitalDelayType01 := (0.034 ns, 0.065 ns);
      tpd_A1_ZN                      :	VitalDelayType01 := (0.067 ns, 0.065 ns);
      tpd_A2_ZN_A1_EQ_0              :	VitalDelayType01 := (0.077 ns, 0.088 ns);
      tpd_A2_ZN_A1_EQ_1              :	VitalDelayType01 := (0.043 ns, 0.055 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.077 ns, 0.088 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component XNR3D0 -----
component XNR3D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN_A2_EQ_0_AN_A3_EQ_0   :	VitalDelayType01 := (0.141 ns, 0.162 ns);
      tpd_A1_ZN_A2_EQ_0_AN_A3_EQ_1   :	VitalDelayType01 := (0.150 ns, 0.136 ns);
      tpd_A1_ZN_A2_EQ_1_AN_A3_EQ_0   :	VitalDelayType01 := (0.113 ns, 0.122 ns);
      tpd_A1_ZN_A2_EQ_1_AN_A3_EQ_1   :	VitalDelayType01 := (0.106 ns, 0.105 ns);
      tpd_A1_ZN                      :	VitalDelayType01 := (0.131 ns, 0.134 ns);
      tpd_A2_ZN_A1_EQ_0_AN_A3_EQ_0   :	VitalDelayType01 := (0.141 ns, 0.109 ns);
      tpd_A2_ZN_A1_EQ_0_AN_A3_EQ_1   :	VitalDelayType01 := (0.095 ns, 0.136 ns);
      tpd_A2_ZN_A1_EQ_1_AN_A3_EQ_0   :	VitalDelayType01 := (0.098 ns, 0.128 ns);
      tpd_A2_ZN_A1_EQ_1_AN_A3_EQ_1   :	VitalDelayType01 := (0.113 ns, 0.092 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.127 ns, 0.132 ns);
      tpd_A3_ZN_A1_EQ_0_AN_A2_EQ_0   :	VitalDelayType01 := (0.076 ns, 0.098 ns);
      tpd_A3_ZN_A1_EQ_0_AN_A2_EQ_1   :	VitalDelayType01 := (0.049 ns, 0.058 ns);
      tpd_A3_ZN_A1_EQ_1_AN_A2_EQ_0   :	VitalDelayType01 := (0.050 ns, 0.058 ns);
      tpd_A3_ZN_A1_EQ_1_AN_A2_EQ_1   :	VitalDelayType01 := (0.076 ns, 0.098 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.076 ns, 0.098 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component XNR3D1 -----
component XNR3D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN_A2_EQ_0_AN_A3_EQ_0   :	VitalDelayType01 := (0.127 ns, 0.142 ns);
      tpd_A1_ZN_A2_EQ_0_AN_A3_EQ_1   :	VitalDelayType01 := (0.133 ns, 0.124 ns);
      tpd_A1_ZN_A2_EQ_1_AN_A3_EQ_0   :	VitalDelayType01 := (0.097 ns, 0.101 ns);
      tpd_A1_ZN_A2_EQ_1_AN_A3_EQ_1   :	VitalDelayType01 := (0.088 ns, 0.096 ns);
      tpd_A1_ZN                      :	VitalDelayType01 := (0.115 ns, 0.119 ns);
      tpd_A2_ZN_A1_EQ_0_AN_A3_EQ_0   :	VitalDelayType01 := (0.129 ns, 0.096 ns);
      tpd_A2_ZN_A1_EQ_0_AN_A3_EQ_1   :	VitalDelayType01 := (0.081 ns, 0.125 ns);
      tpd_A2_ZN_A1_EQ_1_AN_A3_EQ_0   :	VitalDelayType01 := (0.087 ns, 0.115 ns);
      tpd_A2_ZN_A1_EQ_1_AN_A3_EQ_1   :	VitalDelayType01 := (0.102 ns, 0.087 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.116 ns, 0.120 ns);
      tpd_A3_ZN_A1_EQ_0_AN_A2_EQ_0   :	VitalDelayType01 := (0.069 ns, 0.094 ns);
      tpd_A3_ZN_A1_EQ_0_AN_A2_EQ_1   :	VitalDelayType01 := (0.042 ns, 0.051 ns);
      tpd_A3_ZN_A1_EQ_1_AN_A2_EQ_0   :	VitalDelayType01 := (0.042 ns, 0.051 ns);
      tpd_A3_ZN_A1_EQ_1_AN_A2_EQ_1   :	VitalDelayType01 := (0.069 ns, 0.094 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.069 ns, 0.094 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component XNR3D2 -----
component XNR3D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN_A2_EQ_0_AN_A3_EQ_0   :	VitalDelayType01 := (0.121 ns, 0.135 ns);
      tpd_A1_ZN_A2_EQ_0_AN_A3_EQ_1   :	VitalDelayType01 := (0.125 ns, 0.117 ns);
      tpd_A1_ZN_A2_EQ_1_AN_A3_EQ_0   :	VitalDelayType01 := (0.095 ns, 0.132 ns);
      tpd_A1_ZN_A2_EQ_1_AN_A3_EQ_1   :	VitalDelayType01 := (0.117 ns, 0.092 ns);
      tpd_A1_ZN                      :	VitalDelayType01 := (0.119 ns, 0.125 ns);
      tpd_A2_ZN_A1_EQ_0_AN_A3_EQ_0   :	VitalDelayType01 := (0.111 ns, 0.122 ns);
      tpd_A2_ZN_A1_EQ_0_AN_A3_EQ_1   :	VitalDelayType01 := (0.106 ns, 0.108 ns);
      tpd_A2_ZN_A1_EQ_1_AN_A3_EQ_0   :	VitalDelayType01 := (0.086 ns, 0.131 ns);
      tpd_A2_ZN_A1_EQ_1_AN_A3_EQ_1   :	VitalDelayType01 := (0.116 ns, 0.082 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.114 ns, 0.119 ns);
      tpd_A3_ZN_A1_EQ_0_AN_A2_EQ_0   :	VitalDelayType01 := (0.074 ns, 0.075 ns);
      tpd_A3_ZN_A1_EQ_0_AN_A2_EQ_1   :	VitalDelayType01 := (0.058 ns, 0.074 ns);
      tpd_A3_ZN_A1_EQ_1_AN_A2_EQ_0   :	VitalDelayType01 := (0.058 ns, 0.074 ns);
      tpd_A3_ZN_A1_EQ_1_AN_A2_EQ_1   :	VitalDelayType01 := (0.074 ns, 0.075 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.074 ns, 0.075 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component XNR3D4 -----
component XNR3D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN_A2_EQ_0_AN_A3_EQ_0   :	VitalDelayType01 := (0.127 ns, 0.131 ns);
      tpd_A1_ZN_A2_EQ_0_AN_A3_EQ_1   :	VitalDelayType01 := (0.125 ns, 0.131 ns);
      tpd_A1_ZN_A2_EQ_1_AN_A3_EQ_0   :	VitalDelayType01 := (0.091 ns, 0.110 ns);
      tpd_A1_ZN_A2_EQ_1_AN_A3_EQ_1   :	VitalDelayType01 := (0.104 ns, 0.093 ns);
      tpd_A1_ZN                      :	VitalDelayType01 := (0.115 ns, 0.120 ns);
      tpd_A2_ZN_A1_EQ_0_AN_A3_EQ_0   :	VitalDelayType01 := (0.116 ns, 0.108 ns);
      tpd_A2_ZN_A1_EQ_0_AN_A3_EQ_1   :	VitalDelayType01 := (0.103 ns, 0.120 ns);
      tpd_A2_ZN_A1_EQ_1_AN_A3_EQ_0   :	VitalDelayType01 := (0.094 ns, 0.115 ns);
      tpd_A2_ZN_A1_EQ_1_AN_A3_EQ_1   :	VitalDelayType01 := (0.110 ns, 0.093 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.113 ns, 0.117 ns);
      tpd_A3_ZN_A1_EQ_0_AN_A2_EQ_0   :	VitalDelayType01 := (0.067 ns, 0.067 ns);
      tpd_A3_ZN_A1_EQ_0_AN_A2_EQ_1   :	VitalDelayType01 := (0.049 ns, 0.058 ns);
      tpd_A3_ZN_A1_EQ_1_AN_A2_EQ_0   :	VitalDelayType01 := (0.049 ns, 0.058 ns);
      tpd_A3_ZN_A1_EQ_1_AN_A2_EQ_1   :	VitalDelayType01 := (0.067 ns, 0.067 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.067 ns, 0.067 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component XNR4D0 -----
component XNR4D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN_A2_EQ_0_AN_A3_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.100 ns, 0.081 ns);
      tpd_A1_ZN_A2_EQ_0_AN_A3_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.068 ns, 0.091 ns);
      tpd_A1_ZN_A2_EQ_0_AN_A3_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.068 ns, 0.091 ns);
      tpd_A1_ZN_A2_EQ_0_AN_A3_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.100 ns, 0.081 ns);
      tpd_A1_ZN_A2_EQ_1_AN_A3_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.102 ns, 0.105 ns);
      tpd_A1_ZN_A2_EQ_1_AN_A3_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.089 ns, 0.093 ns);
      tpd_A1_ZN_A2_EQ_1_AN_A3_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.089 ns, 0.093 ns);
      tpd_A1_ZN_A2_EQ_1_AN_A3_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.102 ns, 0.105 ns);
      tpd_A1_ZN                      :	VitalDelayType01 := (0.094 ns, 0.098 ns);
      tpd_A2_ZN_A1_EQ_0_AN_A3_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.119 ns, 0.098 ns);
      tpd_A2_ZN_A1_EQ_0_AN_A3_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.084 ns, 0.112 ns);
      tpd_A2_ZN_A1_EQ_0_AN_A3_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.084 ns, 0.112 ns);
      tpd_A2_ZN_A1_EQ_0_AN_A3_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.119 ns, 0.098 ns);
      tpd_A2_ZN_A1_EQ_1_AN_A3_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.126 ns, 0.122 ns);
      tpd_A2_ZN_A1_EQ_1_AN_A3_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.109 ns, 0.118 ns);
      tpd_A2_ZN_A1_EQ_1_AN_A3_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.109 ns, 0.118 ns);
      tpd_A2_ZN_A1_EQ_1_AN_A3_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.126 ns, 0.122 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.114 ns, 0.117 ns);
      tpd_A3_ZN_A1_EQ_0_AN_A2_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.113 ns, 0.093 ns);
      tpd_A3_ZN_A1_EQ_0_AN_A2_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.117 ns, 0.111 ns);
      tpd_A3_ZN_A1_EQ_0_AN_A2_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.105 ns, 0.123 ns);
      tpd_A3_ZN_A1_EQ_0_AN_A2_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.124 ns, 0.132 ns);
      tpd_A3_ZN_A1_EQ_1_AN_A2_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.105 ns, 0.123 ns);
      tpd_A3_ZN_A1_EQ_1_AN_A2_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.124 ns, 0.132 ns);
      tpd_A3_ZN_A1_EQ_1_AN_A2_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.113 ns, 0.093 ns);
      tpd_A3_ZN_A1_EQ_1_AN_A2_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.117 ns, 0.111 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.118 ns, 0.117 ns);
      tpd_A4_ZN_A1_EQ_0_AN_A2_EQ_0_AN_A3_EQ_0 :	VitalDelayType01 := (0.090 ns, 0.075 ns);
      tpd_A4_ZN_A1_EQ_0_AN_A2_EQ_0_AN_A3_EQ_1 :	VitalDelayType01 := (0.091 ns, 0.095 ns);
      tpd_A4_ZN_A1_EQ_0_AN_A2_EQ_1_AN_A3_EQ_0 :	VitalDelayType01 := (0.084 ns, 0.102 ns);
      tpd_A4_ZN_A1_EQ_0_AN_A2_EQ_1_AN_A3_EQ_1 :	VitalDelayType01 := (0.106 ns, 0.108 ns);
      tpd_A4_ZN_A1_EQ_1_AN_A2_EQ_0_AN_A3_EQ_0 :	VitalDelayType01 := (0.084 ns, 0.102 ns);
      tpd_A4_ZN_A1_EQ_1_AN_A2_EQ_0_AN_A3_EQ_1 :	VitalDelayType01 := (0.106 ns, 0.108 ns);
      tpd_A4_ZN_A1_EQ_1_AN_A2_EQ_1_AN_A3_EQ_0 :	VitalDelayType01 := (0.090 ns, 0.075 ns);
      tpd_A4_ZN_A1_EQ_1_AN_A2_EQ_1_AN_A3_EQ_1 :	VitalDelayType01 := (0.091 ns, 0.095 ns);
      tpd_A4_ZN                      :	VitalDelayType01 := (0.098 ns, 0.098 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      A4                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component XNR4D1 -----
component XNR4D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN_A2_EQ_0_AN_A3_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.094 ns, 0.091 ns);
      tpd_A1_ZN_A2_EQ_0_AN_A3_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.074 ns, 0.088 ns);
      tpd_A1_ZN_A2_EQ_0_AN_A3_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.074 ns, 0.088 ns);
      tpd_A1_ZN_A2_EQ_0_AN_A3_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.094 ns, 0.091 ns);
      tpd_A1_ZN_A2_EQ_1_AN_A3_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.106 ns, 0.107 ns);
      tpd_A1_ZN_A2_EQ_1_AN_A3_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.084 ns, 0.102 ns);
      tpd_A1_ZN_A2_EQ_1_AN_A3_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.084 ns, 0.102 ns);
      tpd_A1_ZN_A2_EQ_1_AN_A3_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.106 ns, 0.107 ns);
      tpd_A1_ZN                      :	VitalDelayType01 := (0.090 ns, 0.098 ns);
      tpd_A2_ZN_A1_EQ_0_AN_A3_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.101 ns, 0.094 ns);
      tpd_A2_ZN_A1_EQ_0_AN_A3_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.072 ns, 0.094 ns);
      tpd_A2_ZN_A1_EQ_0_AN_A3_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.072 ns, 0.094 ns);
      tpd_A2_ZN_A1_EQ_0_AN_A3_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.101 ns, 0.093 ns);
      tpd_A2_ZN_A1_EQ_1_AN_A3_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.125 ns, 0.122 ns);
      tpd_A2_ZN_A1_EQ_1_AN_A3_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.101 ns, 0.125 ns);
      tpd_A2_ZN_A1_EQ_1_AN_A3_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.101 ns, 0.125 ns);
      tpd_A2_ZN_A1_EQ_1_AN_A3_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.125 ns, 0.122 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.101 ns, 0.109 ns);
      tpd_A3_ZN_A1_EQ_0_AN_A2_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.090 ns, 0.087 ns);
      tpd_A3_ZN_A1_EQ_0_AN_A2_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.119 ns, 0.111 ns);
      tpd_A3_ZN_A1_EQ_0_AN_A2_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.092 ns, 0.108 ns);
      tpd_A3_ZN_A1_EQ_0_AN_A2_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.116 ns, 0.139 ns);
      tpd_A3_ZN_A1_EQ_1_AN_A2_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.095 ns, 0.108 ns);
      tpd_A3_ZN_A1_EQ_1_AN_A2_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.119 ns, 0.139 ns);
      tpd_A3_ZN_A1_EQ_1_AN_A2_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.090 ns, 0.090 ns);
      tpd_A3_ZN_A1_EQ_1_AN_A2_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.119 ns, 0.114 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.105 ns, 0.113 ns);
      tpd_A4_ZN_A1_EQ_0_AN_A2_EQ_0_AN_A3_EQ_0 :	VitalDelayType01 := (0.086 ns, 0.084 ns);
      tpd_A4_ZN_A1_EQ_0_AN_A2_EQ_0_AN_A3_EQ_1 :	VitalDelayType01 := (0.098 ns, 0.098 ns);
      tpd_A4_ZN_A1_EQ_0_AN_A2_EQ_1_AN_A3_EQ_0 :	VitalDelayType01 := (0.086 ns, 0.101 ns);
      tpd_A4_ZN_A1_EQ_0_AN_A2_EQ_1_AN_A3_EQ_1 :	VitalDelayType01 := (0.102 ns, 0.112 ns);
      tpd_A4_ZN_A1_EQ_1_AN_A2_EQ_0_AN_A3_EQ_0 :	VitalDelayType01 := (0.089 ns, 0.101 ns);
      tpd_A4_ZN_A1_EQ_1_AN_A2_EQ_0_AN_A3_EQ_1 :	VitalDelayType01 := (0.104 ns, 0.112 ns);
      tpd_A4_ZN_A1_EQ_1_AN_A2_EQ_1_AN_A3_EQ_0 :	VitalDelayType01 := (0.086 ns, 0.088 ns);
      tpd_A4_ZN_A1_EQ_1_AN_A2_EQ_1_AN_A3_EQ_1 :	VitalDelayType01 := (0.098 ns, 0.101 ns);
      tpd_A4_ZN                      :	VitalDelayType01 := (0.095 ns, 0.099 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      A4                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component XNR4D2 -----
component XNR4D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN_A2_EQ_0_AN_A3_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.107 ns, 0.095 ns);
      tpd_A1_ZN_A2_EQ_0_AN_A3_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.085 ns, 0.109 ns);
      tpd_A1_ZN_A2_EQ_0_AN_A3_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.085 ns, 0.109 ns);
      tpd_A1_ZN_A2_EQ_0_AN_A3_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.107 ns, 0.095 ns);
      tpd_A1_ZN_A2_EQ_1_AN_A3_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.111 ns, 0.114 ns);
      tpd_A1_ZN_A2_EQ_1_AN_A3_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.099 ns, 0.116 ns);
      tpd_A1_ZN_A2_EQ_1_AN_A3_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.099 ns, 0.116 ns);
      tpd_A1_ZN_A2_EQ_1_AN_A3_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.111 ns, 0.114 ns);
      tpd_A1_ZN                      :	VitalDelayType01 := (0.103 ns, 0.112 ns);
      tpd_A2_ZN_A1_EQ_0_AN_A3_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.113 ns, 0.100 ns);
      tpd_A2_ZN_A1_EQ_0_AN_A3_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.089 ns, 0.115 ns);
      tpd_A2_ZN_A1_EQ_0_AN_A3_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.089 ns, 0.115 ns);
      tpd_A2_ZN_A1_EQ_0_AN_A3_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.113 ns, 0.100 ns);
      tpd_A2_ZN_A1_EQ_1_AN_A3_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.126 ns, 0.125 ns);
      tpd_A2_ZN_A1_EQ_1_AN_A3_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.113 ns, 0.131 ns);
      tpd_A2_ZN_A1_EQ_1_AN_A3_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.113 ns, 0.131 ns);
      tpd_A2_ZN_A1_EQ_1_AN_A3_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.126 ns, 0.125 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.113 ns, 0.120 ns);
      tpd_A3_ZN_A1_EQ_0_AN_A2_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.103 ns, 0.105 ns);
      tpd_A3_ZN_A1_EQ_0_AN_A2_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.130 ns, 0.130 ns);
      tpd_A3_ZN_A1_EQ_0_AN_A2_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.100 ns, 0.120 ns);
      tpd_A3_ZN_A1_EQ_0_AN_A2_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.125 ns, 0.147 ns);
      tpd_A3_ZN_A1_EQ_1_AN_A2_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.104 ns, 0.120 ns);
      tpd_A3_ZN_A1_EQ_1_AN_A2_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.128 ns, 0.146 ns);
      tpd_A3_ZN_A1_EQ_1_AN_A2_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.103 ns, 0.107 ns);
      tpd_A3_ZN_A1_EQ_1_AN_A2_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.131 ns, 0.132 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.115 ns, 0.126 ns);
      tpd_A4_ZN_A1_EQ_0_AN_A2_EQ_0_AN_A3_EQ_0 :	VitalDelayType01 := (0.098 ns, 0.104 ns);
      tpd_A4_ZN_A1_EQ_0_AN_A2_EQ_0_AN_A3_EQ_1 :	VitalDelayType01 := (0.110 ns, 0.116 ns);
      tpd_A4_ZN_A1_EQ_0_AN_A2_EQ_1_AN_A3_EQ_0 :	VitalDelayType01 := (0.099 ns, 0.109 ns);
      tpd_A4_ZN_A1_EQ_0_AN_A2_EQ_1_AN_A3_EQ_1 :	VitalDelayType01 := (0.113 ns, 0.120 ns);
      tpd_A4_ZN_A1_EQ_1_AN_A2_EQ_0_AN_A3_EQ_0 :	VitalDelayType01 := (0.102 ns, 0.109 ns);
      tpd_A4_ZN_A1_EQ_1_AN_A2_EQ_0_AN_A3_EQ_1 :	VitalDelayType01 := (0.118 ns, 0.119 ns);
      tpd_A4_ZN_A1_EQ_1_AN_A2_EQ_1_AN_A3_EQ_0 :	VitalDelayType01 := (0.098 ns, 0.107 ns);
      tpd_A4_ZN_A1_EQ_1_AN_A2_EQ_1_AN_A3_EQ_1 :	VitalDelayType01 := (0.110 ns, 0.118 ns);
      tpd_A4_ZN                      :	VitalDelayType01 := (0.108 ns, 0.113 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      A4                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component XNR4D4 -----
component XNR4D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_ZN_A2_EQ_0_AN_A3_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.128 ns, 0.123 ns);
      tpd_A1_ZN_A2_EQ_0_AN_A3_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.116 ns, 0.150 ns);
      tpd_A1_ZN_A2_EQ_0_AN_A3_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.116 ns, 0.150 ns);
      tpd_A1_ZN_A2_EQ_0_AN_A3_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.128 ns, 0.123 ns);
      tpd_A1_ZN_A2_EQ_1_AN_A3_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.137 ns, 0.140 ns);
      tpd_A1_ZN_A2_EQ_1_AN_A3_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.125 ns, 0.157 ns);
      tpd_A1_ZN_A2_EQ_1_AN_A3_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.125 ns, 0.157 ns);
      tpd_A1_ZN_A2_EQ_1_AN_A3_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.137 ns, 0.140 ns);
      tpd_A1_ZN                      :	VitalDelayType01 := (0.127 ns, 0.145 ns);
      tpd_A2_ZN_A1_EQ_0_AN_A3_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.142 ns, 0.127 ns);
      tpd_A2_ZN_A1_EQ_0_AN_A3_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.113 ns, 0.154 ns);
      tpd_A2_ZN_A1_EQ_0_AN_A3_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.113 ns, 0.154 ns);
      tpd_A2_ZN_A1_EQ_0_AN_A3_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.142 ns, 0.127 ns);
      tpd_A2_ZN_A1_EQ_1_AN_A3_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.155 ns, 0.155 ns);
      tpd_A2_ZN_A1_EQ_1_AN_A3_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.147 ns, 0.174 ns);
      tpd_A2_ZN_A1_EQ_1_AN_A3_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.147 ns, 0.174 ns);
      tpd_A2_ZN_A1_EQ_1_AN_A3_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.155 ns, 0.155 ns);
      tpd_A2_ZN                      :	VitalDelayType01 := (0.145 ns, 0.154 ns);
      tpd_A3_ZN_A1_EQ_0_AN_A2_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.127 ns, 0.145 ns);
      tpd_A3_ZN_A1_EQ_0_AN_A2_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.153 ns, 0.169 ns);
      tpd_A3_ZN_A1_EQ_0_AN_A2_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.126 ns, 0.139 ns);
      tpd_A3_ZN_A1_EQ_0_AN_A2_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.149 ns, 0.168 ns);
      tpd_A3_ZN_A1_EQ_1_AN_A2_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.132 ns, 0.139 ns);
      tpd_A3_ZN_A1_EQ_1_AN_A2_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.155 ns, 0.168 ns);
      tpd_A3_ZN_A1_EQ_1_AN_A2_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.127 ns, 0.150 ns);
      tpd_A3_ZN_A1_EQ_1_AN_A2_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.154 ns, 0.174 ns);
      tpd_A3_ZN                      :	VitalDelayType01 := (0.141 ns, 0.156 ns);
      tpd_A4_ZN_A1_EQ_0_AN_A2_EQ_0_AN_A3_EQ_0 :	VitalDelayType01 := (0.119 ns, 0.146 ns);
      tpd_A4_ZN_A1_EQ_0_AN_A2_EQ_0_AN_A3_EQ_1 :	VitalDelayType01 := (0.137 ns, 0.157 ns);
      tpd_A4_ZN_A1_EQ_0_AN_A2_EQ_1_AN_A3_EQ_0 :	VitalDelayType01 := (0.128 ns, 0.136 ns);
      tpd_A4_ZN_A1_EQ_0_AN_A2_EQ_1_AN_A3_EQ_1 :	VitalDelayType01 := (0.137 ns, 0.150 ns);
      tpd_A4_ZN_A1_EQ_1_AN_A2_EQ_0_AN_A3_EQ_0 :	VitalDelayType01 := (0.135 ns, 0.136 ns);
      tpd_A4_ZN_A1_EQ_1_AN_A2_EQ_0_AN_A3_EQ_1 :	VitalDelayType01 := (0.142 ns, 0.150 ns);
      tpd_A4_ZN_A1_EQ_1_AN_A2_EQ_1_AN_A3_EQ_0 :	VitalDelayType01 := (0.119 ns, 0.151 ns);
      tpd_A4_ZN_A1_EQ_1_AN_A2_EQ_1_AN_A3_EQ_1 :	VitalDelayType01 := (0.137 ns, 0.161 ns);
      tpd_A4_ZN                      :	VitalDelayType01 := (0.132 ns, 0.148 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      A4                             :	in    STD_ULOGIC;
      ZN                             :	out   STD_ULOGIC);
end component;


----- Component XOR2D0 -----
component XOR2D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z_A2_EQ_0               :	VitalDelayType01 := (0.040 ns, 0.052 ns);
      tpd_A1_Z_A2_EQ_1               :	VitalDelayType01 := (0.061 ns, 0.061 ns);
      tpd_A1_Z                       :	VitalDelayType01 := (0.061 ns, 0.061 ns);
      tpd_A2_Z_A1_EQ_0               :	VitalDelayType01 := (0.053 ns, 0.065 ns);
      tpd_A2_Z_A1_EQ_1               :	VitalDelayType01 := (0.076 ns, 0.079 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.076 ns, 0.079 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component XOR2D1 -----
component XOR2D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z_A2_EQ_0               :	VitalDelayType01 := (0.039 ns, 0.049 ns);
      tpd_A1_Z_A2_EQ_1               :	VitalDelayType01 := (0.055 ns, 0.062 ns);
      tpd_A1_Z                       :	VitalDelayType01 := (0.055 ns, 0.062 ns);
      tpd_A2_Z_A1_EQ_0               :	VitalDelayType01 := (0.045 ns, 0.054 ns);
      tpd_A2_Z_A1_EQ_1               :	VitalDelayType01 := (0.066 ns, 0.083 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.066 ns, 0.083 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component XOR2D2 -----
component XOR2D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z_A2_EQ_0               :	VitalDelayType01 := (0.035 ns, 0.057 ns);
      tpd_A1_Z_A2_EQ_1               :	VitalDelayType01 := (0.056 ns, 0.054 ns);
      tpd_A1_Z                       :	VitalDelayType01 := (0.056 ns, 0.057 ns);
      tpd_A2_Z_A1_EQ_0               :	VitalDelayType01 := (0.049 ns, 0.067 ns);
      tpd_A2_Z_A1_EQ_1               :	VitalDelayType01 := (0.071 ns, 0.071 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.071 ns, 0.071 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component XOR2D4 -----
component XOR2D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z_A2_EQ_0               :	VitalDelayType01 := (0.049 ns, 0.044 ns);
      tpd_A1_Z_A2_EQ_1               :	VitalDelayType01 := (0.058 ns, 0.073 ns);
      tpd_A1_Z                       :	VitalDelayType01 := (0.058 ns, 0.073 ns);
      tpd_A2_Z_A1_EQ_0               :	VitalDelayType01 := (0.047 ns, 0.052 ns);
      tpd_A2_Z_A1_EQ_1               :	VitalDelayType01 := (0.075 ns, 0.090 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.075 ns, 0.090 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component XOR3D0 -----
component XOR3D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z_A2_EQ_0_AN_A3_EQ_0    :	VitalDelayType01 := (0.115 ns, 0.122 ns);
      tpd_A1_Z_A2_EQ_0_AN_A3_EQ_1    :	VitalDelayType01 := (0.104 ns, 0.106 ns);
      tpd_A1_Z_A2_EQ_1_AN_A3_EQ_0    :	VitalDelayType01 := (0.139 ns, 0.163 ns);
      tpd_A1_Z_A2_EQ_1_AN_A3_EQ_1    :	VitalDelayType01 := (0.153 ns, 0.135 ns);
      tpd_A1_Z                       :	VitalDelayType01 := (0.134 ns, 0.135 ns);
      tpd_A2_Z_A1_EQ_0_AN_A3_EQ_0    :	VitalDelayType01 := (0.109 ns, 0.108 ns);
      tpd_A2_Z_A1_EQ_0_AN_A3_EQ_1    :	VitalDelayType01 := (0.094 ns, 0.101 ns);
      tpd_A2_Z_A1_EQ_1_AN_A3_EQ_0    :	VitalDelayType01 := (0.127 ns, 0.156 ns);
      tpd_A2_Z_A1_EQ_1_AN_A3_EQ_1    :	VitalDelayType01 := (0.141 ns, 0.118 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.125 ns, 0.128 ns);
      tpd_A3_Z_A1_EQ_0_AN_A2_EQ_0    :	VitalDelayType01 := (0.049 ns, 0.058 ns);
      tpd_A3_Z_A1_EQ_0_AN_A2_EQ_1    :	VitalDelayType01 := (0.076 ns, 0.098 ns);
      tpd_A3_Z_A1_EQ_1_AN_A2_EQ_0    :	VitalDelayType01 := (0.076 ns, 0.098 ns);
      tpd_A3_Z_A1_EQ_1_AN_A2_EQ_1    :	VitalDelayType01 := (0.050 ns, 0.058 ns);
      tpd_A3_Z                       :	VitalDelayType01 := (0.076 ns, 0.098 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component XOR3D1 -----
component XOR3D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z_A2_EQ_0_AN_A3_EQ_0    :	VitalDelayType01 := (0.100 ns, 0.098 ns);
      tpd_A1_Z_A2_EQ_0_AN_A3_EQ_1    :	VitalDelayType01 := (0.086 ns, 0.098 ns);
      tpd_A1_Z_A2_EQ_1_AN_A3_EQ_0    :	VitalDelayType01 := (0.124 ns, 0.142 ns);
      tpd_A1_Z_A2_EQ_1_AN_A3_EQ_1    :	VitalDelayType01 := (0.135 ns, 0.122 ns);
      tpd_A1_Z                       :	VitalDelayType01 := (0.117 ns, 0.120 ns);
      tpd_A2_Z_A1_EQ_0_AN_A3_EQ_0    :	VitalDelayType01 := (0.098 ns, 0.095 ns);
      tpd_A2_Z_A1_EQ_0_AN_A3_EQ_1    :	VitalDelayType01 := (0.081 ns, 0.097 ns);
      tpd_A2_Z_A1_EQ_1_AN_A3_EQ_0    :	VitalDelayType01 := (0.111 ns, 0.141 ns);
      tpd_A2_Z_A1_EQ_1_AN_A3_EQ_1    :	VitalDelayType01 := (0.126 ns, 0.108 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.112 ns, 0.119 ns);
      tpd_A3_Z_A1_EQ_0_AN_A2_EQ_0    :	VitalDelayType01 := (0.042 ns, 0.051 ns);
      tpd_A3_Z_A1_EQ_0_AN_A2_EQ_1    :	VitalDelayType01 := (0.069 ns, 0.094 ns);
      tpd_A3_Z_A1_EQ_1_AN_A2_EQ_0    :	VitalDelayType01 := (0.069 ns, 0.094 ns);
      tpd_A3_Z_A1_EQ_1_AN_A2_EQ_1    :	VitalDelayType01 := (0.042 ns, 0.051 ns);
      tpd_A3_Z                       :	VitalDelayType01 := (0.069 ns, 0.094 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component XOR3D2 -----
component XOR3D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z_A2_EQ_0_AN_A3_EQ_0    :	VitalDelayType01 := (0.103 ns, 0.112 ns);
      tpd_A1_Z_A2_EQ_0_AN_A3_EQ_1    :	VitalDelayType01 := (0.099 ns, 0.099 ns);
      tpd_A1_Z_A2_EQ_1_AN_A3_EQ_0    :	VitalDelayType01 := (0.125 ns, 0.121 ns);
      tpd_A1_Z_A2_EQ_1_AN_A3_EQ_1    :	VitalDelayType01 := (0.109 ns, 0.124 ns);
      tpd_A1_Z                       :	VitalDelayType01 := (0.112 ns, 0.118 ns);
      tpd_A2_Z_A1_EQ_0_AN_A3_EQ_0    :	VitalDelayType01 := (0.097 ns, 0.102 ns);
      tpd_A2_Z_A1_EQ_0_AN_A3_EQ_1    :	VitalDelayType01 := (0.092 ns, 0.096 ns);
      tpd_A2_Z_A1_EQ_1_AN_A3_EQ_0    :	VitalDelayType01 := (0.109 ns, 0.102 ns);
      tpd_A2_Z_A1_EQ_1_AN_A3_EQ_1    :	VitalDelayType01 := (0.094 ns, 0.108 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.101 ns, 0.105 ns);
      tpd_A3_Z_A1_EQ_0_AN_A2_EQ_0    :	VitalDelayType01 := (0.047 ns, 0.054 ns);
      tpd_A3_Z_A1_EQ_0_AN_A2_EQ_1    :	VitalDelayType01 := (0.072 ns, 0.071 ns);
      tpd_A3_Z_A1_EQ_1_AN_A2_EQ_0    :	VitalDelayType01 := (0.072 ns, 0.071 ns);
      tpd_A3_Z_A1_EQ_1_AN_A2_EQ_1    :	VitalDelayType01 := (0.047 ns, 0.054 ns);
      tpd_A3_Z                       :	VitalDelayType01 := (0.072 ns, 0.071 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component XOR3D4 -----
component XOR3D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z_A2_EQ_0_AN_A3_EQ_0    :	VitalDelayType01 := (0.087 ns, 0.105 ns);
      tpd_A1_Z_A2_EQ_0_AN_A3_EQ_1    :	VitalDelayType01 := (0.096 ns, 0.090 ns);
      tpd_A1_Z_A2_EQ_1_AN_A3_EQ_0    :	VitalDelayType01 := (0.118 ns, 0.137 ns);
      tpd_A1_Z_A2_EQ_1_AN_A3_EQ_1    :	VitalDelayType01 := (0.133 ns, 0.124 ns);
      tpd_A1_Z                       :	VitalDelayType01 := (0.110 ns, 0.115 ns);
      tpd_A2_Z_A1_EQ_0_AN_A3_EQ_0    :	VitalDelayType01 := (0.098 ns, 0.108 ns);
      tpd_A2_Z_A1_EQ_0_AN_A3_EQ_1    :	VitalDelayType01 := (0.097 ns, 0.104 ns);
      tpd_A2_Z_A1_EQ_1_AN_A3_EQ_0    :	VitalDelayType01 := (0.101 ns, 0.127 ns);
      tpd_A2_Z_A1_EQ_1_AN_A3_EQ_1    :	VitalDelayType01 := (0.121 ns, 0.105 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.110 ns, 0.115 ns);
      tpd_A3_Z_A1_EQ_0_AN_A2_EQ_0    :	VitalDelayType01 := (0.050 ns, 0.060 ns);
      tpd_A3_Z_A1_EQ_0_AN_A2_EQ_1    :	VitalDelayType01 := (0.063 ns, 0.061 ns);
      tpd_A3_Z_A1_EQ_1_AN_A2_EQ_0    :	VitalDelayType01 := (0.063 ns, 0.061 ns);
      tpd_A3_Z_A1_EQ_1_AN_A2_EQ_1    :	VitalDelayType01 := (0.050 ns, 0.059 ns);
      tpd_A3_Z                       :	VitalDelayType01 := (0.063 ns, 0.061 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component XOR4D0 -----
component XOR4D0
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z_A2_EQ_0_AN_A3_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.071 ns, 0.091 ns);
      tpd_A1_Z_A2_EQ_0_AN_A3_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.102 ns, 0.088 ns);
      tpd_A1_Z_A2_EQ_0_AN_A3_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.102 ns, 0.088 ns);
      tpd_A1_Z_A2_EQ_0_AN_A3_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.071 ns, 0.091 ns);
      tpd_A1_Z_A2_EQ_1_AN_A3_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.094 ns, 0.093 ns);
      tpd_A1_Z_A2_EQ_1_AN_A3_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.107 ns, 0.106 ns);
      tpd_A1_Z_A2_EQ_1_AN_A3_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.107 ns, 0.106 ns);
      tpd_A1_Z_A2_EQ_1_AN_A3_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.094 ns, 0.093 ns);
      tpd_A1_Z                       :	VitalDelayType01 := (0.098 ns, 0.098 ns);
      tpd_A2_Z_A1_EQ_0_AN_A3_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.085 ns, 0.113 ns);
      tpd_A2_Z_A1_EQ_0_AN_A3_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.125 ns, 0.101 ns);
      tpd_A2_Z_A1_EQ_0_AN_A3_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.125 ns, 0.101 ns);
      tpd_A2_Z_A1_EQ_0_AN_A3_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.085 ns, 0.113 ns);
      tpd_A2_Z_A1_EQ_1_AN_A3_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.110 ns, 0.121 ns);
      tpd_A2_Z_A1_EQ_1_AN_A3_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.131 ns, 0.125 ns);
      tpd_A2_Z_A1_EQ_1_AN_A3_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.131 ns, 0.125 ns);
      tpd_A2_Z_A1_EQ_1_AN_A3_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.110 ns, 0.121 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.117 ns, 0.119 ns);
      tpd_A3_Z_A1_EQ_0_AN_A2_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.103 ns, 0.134 ns);
      tpd_A3_Z_A1_EQ_0_AN_A2_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.123 ns, 0.141 ns);
      tpd_A3_Z_A1_EQ_0_AN_A2_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.117 ns, 0.091 ns);
      tpd_A3_Z_A1_EQ_0_AN_A2_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.121 ns, 0.109 ns);
      tpd_A3_Z_A1_EQ_1_AN_A2_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.117 ns, 0.091 ns);
      tpd_A3_Z_A1_EQ_1_AN_A2_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.121 ns, 0.109 ns);
      tpd_A3_Z_A1_EQ_1_AN_A2_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.103 ns, 0.135 ns);
      tpd_A3_Z_A1_EQ_1_AN_A2_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.123 ns, 0.142 ns);
      tpd_A3_Z                       :	VitalDelayType01 := (0.120 ns, 0.122 ns);
      tpd_A4_Z_A1_EQ_0_AN_A2_EQ_0_AN_A3_EQ_0 :	VitalDelayType01 := (0.083 ns, 0.109 ns);
      tpd_A4_Z_A1_EQ_0_AN_A2_EQ_0_AN_A3_EQ_1 :	VitalDelayType01 := (0.105 ns, 0.115 ns);
      tpd_A4_Z_A1_EQ_0_AN_A2_EQ_1_AN_A3_EQ_0 :	VitalDelayType01 := (0.095 ns, 0.073 ns);
      tpd_A4_Z_A1_EQ_0_AN_A2_EQ_1_AN_A3_EQ_1 :	VitalDelayType01 := (0.095 ns, 0.092 ns);
      tpd_A4_Z_A1_EQ_1_AN_A2_EQ_0_AN_A3_EQ_0 :	VitalDelayType01 := (0.095 ns, 0.073 ns);
      tpd_A4_Z_A1_EQ_1_AN_A2_EQ_0_AN_A3_EQ_1 :	VitalDelayType01 := (0.095 ns, 0.092 ns);
      tpd_A4_Z_A1_EQ_1_AN_A2_EQ_1_AN_A3_EQ_0 :	VitalDelayType01 := (0.083 ns, 0.110 ns);
      tpd_A4_Z_A1_EQ_1_AN_A2_EQ_1_AN_A3_EQ_1 :	VitalDelayType01 := (0.105 ns, 0.116 ns);
      tpd_A4_Z                       :	VitalDelayType01 := (0.100 ns, 0.101 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      A4                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component XOR4D1 -----
component XOR4D1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z_A2_EQ_0_AN_A3_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.079 ns, 0.089 ns);
      tpd_A1_Z_A2_EQ_0_AN_A3_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.098 ns, 0.094 ns);
      tpd_A1_Z_A2_EQ_0_AN_A3_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.098 ns, 0.094 ns);
      tpd_A1_Z_A2_EQ_0_AN_A3_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.080 ns, 0.088 ns);
      tpd_A1_Z_A2_EQ_1_AN_A3_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.087 ns, 0.106 ns);
      tpd_A1_Z_A2_EQ_1_AN_A3_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.110 ns, 0.109 ns);
      tpd_A1_Z_A2_EQ_1_AN_A3_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.110 ns, 0.109 ns);
      tpd_A1_Z_A2_EQ_1_AN_A3_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.086 ns, 0.106 ns);
      tpd_A1_Z                       :	VitalDelayType01 := (0.095 ns, 0.100 ns);
      tpd_A2_Z_A1_EQ_0_AN_A3_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.075 ns, 0.094 ns);
      tpd_A2_Z_A1_EQ_0_AN_A3_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.103 ns, 0.097 ns);
      tpd_A2_Z_A1_EQ_0_AN_A3_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.103 ns, 0.097 ns);
      tpd_A2_Z_A1_EQ_0_AN_A3_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.075 ns, 0.094 ns);
      tpd_A2_Z_A1_EQ_1_AN_A3_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.103 ns, 0.126 ns);
      tpd_A2_Z_A1_EQ_1_AN_A3_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.131 ns, 0.124 ns);
      tpd_A2_Z_A1_EQ_1_AN_A3_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.131 ns, 0.124 ns);
      tpd_A2_Z_A1_EQ_1_AN_A3_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.103 ns, 0.125 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.103 ns, 0.111 ns);
      tpd_A3_Z_A1_EQ_0_AN_A2_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.093 ns, 0.114 ns);
      tpd_A3_Z_A1_EQ_0_AN_A2_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.116 ns, 0.148 ns);
      tpd_A3_Z_A1_EQ_0_AN_A2_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.093 ns, 0.086 ns);
      tpd_A3_Z_A1_EQ_0_AN_A2_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.121 ns, 0.109 ns);
      tpd_A3_Z_A1_EQ_1_AN_A2_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.096 ns, 0.086 ns);
      tpd_A3_Z_A1_EQ_1_AN_A2_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.124 ns, 0.109 ns);
      tpd_A3_Z_A1_EQ_1_AN_A2_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.093 ns, 0.118 ns);
      tpd_A3_Z_A1_EQ_1_AN_A2_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.115 ns, 0.155 ns);
      tpd_A3_Z                       :	VitalDelayType01 := (0.108 ns, 0.120 ns);
      tpd_A4_Z_A1_EQ_0_AN_A2_EQ_0_AN_A3_EQ_0 :	VitalDelayType01 := (0.089 ns, 0.105 ns);
      tpd_A4_Z_A1_EQ_0_AN_A2_EQ_0_AN_A3_EQ_1 :	VitalDelayType01 := (0.102 ns, 0.121 ns);
      tpd_A4_Z_A1_EQ_0_AN_A2_EQ_1_AN_A3_EQ_0 :	VitalDelayType01 := (0.090 ns, 0.083 ns);
      tpd_A4_Z_A1_EQ_0_AN_A2_EQ_1_AN_A3_EQ_1 :	VitalDelayType01 := (0.101 ns, 0.096 ns);
      tpd_A4_Z_A1_EQ_1_AN_A2_EQ_0_AN_A3_EQ_0 :	VitalDelayType01 := (0.093 ns, 0.083 ns);
      tpd_A4_Z_A1_EQ_1_AN_A2_EQ_0_AN_A3_EQ_1 :	VitalDelayType01 := (0.103 ns, 0.097 ns);
      tpd_A4_Z_A1_EQ_1_AN_A2_EQ_1_AN_A3_EQ_0 :	VitalDelayType01 := (0.089 ns, 0.111 ns);
      tpd_A4_Z_A1_EQ_1_AN_A2_EQ_1_AN_A3_EQ_1 :	VitalDelayType01 := (0.102 ns, 0.126 ns);
      tpd_A4_Z                       :	VitalDelayType01 := (0.096 ns, 0.104 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      A4                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component XOR4D2 -----
component XOR4D2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z_A2_EQ_0_AN_A3_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.086 ns, 0.109 ns);
      tpd_A1_Z_A2_EQ_0_AN_A3_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.109 ns, 0.098 ns);
      tpd_A1_Z_A2_EQ_0_AN_A3_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.110 ns, 0.098 ns);
      tpd_A1_Z_A2_EQ_0_AN_A3_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.086 ns, 0.108 ns);
      tpd_A1_Z_A2_EQ_1_AN_A3_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.100 ns, 0.115 ns);
      tpd_A1_Z_A2_EQ_1_AN_A3_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.114 ns, 0.116 ns);
      tpd_A1_Z_A2_EQ_1_AN_A3_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.114 ns, 0.116 ns);
      tpd_A1_Z_A2_EQ_1_AN_A3_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.100 ns, 0.115 ns);
      tpd_A1_Z                       :	VitalDelayType01 := (0.105 ns, 0.112 ns);
      tpd_A2_Z_A1_EQ_0_AN_A3_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.090 ns, 0.115 ns);
      tpd_A2_Z_A1_EQ_0_AN_A3_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.115 ns, 0.102 ns);
      tpd_A2_Z_A1_EQ_0_AN_A3_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.115 ns, 0.102 ns);
      tpd_A2_Z_A1_EQ_0_AN_A3_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.089 ns, 0.114 ns);
      tpd_A2_Z_A1_EQ_1_AN_A3_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.114 ns, 0.131 ns);
      tpd_A2_Z_A1_EQ_1_AN_A3_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.129 ns, 0.126 ns);
      tpd_A2_Z_A1_EQ_1_AN_A3_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.129 ns, 0.126 ns);
      tpd_A2_Z_A1_EQ_1_AN_A3_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.114 ns, 0.130 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.115 ns, 0.120 ns);
      tpd_A3_Z_A1_EQ_0_AN_A2_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.097 ns, 0.133 ns);
      tpd_A3_Z_A1_EQ_0_AN_A2_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.121 ns, 0.160 ns);
      tpd_A3_Z_A1_EQ_0_AN_A2_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.108 ns, 0.097 ns);
      tpd_A3_Z_A1_EQ_0_AN_A2_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.141 ns, 0.122 ns);
      tpd_A3_Z_A1_EQ_1_AN_A2_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.111 ns, 0.097 ns);
      tpd_A3_Z_A1_EQ_1_AN_A2_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.145 ns, 0.122 ns);
      tpd_A3_Z_A1_EQ_1_AN_A2_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.097 ns, 0.135 ns);
      tpd_A3_Z_A1_EQ_1_AN_A2_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.121 ns, 0.162 ns);
      tpd_A3_Z                       :	VitalDelayType01 := (0.121 ns, 0.129 ns);
      tpd_A4_Z_A1_EQ_0_AN_A2_EQ_0_AN_A3_EQ_0 :	VitalDelayType01 := (0.097 ns, 0.124 ns);
      tpd_A4_Z_A1_EQ_0_AN_A2_EQ_0_AN_A3_EQ_1 :	VitalDelayType01 := (0.109 ns, 0.140 ns);
      tpd_A4_Z_A1_EQ_0_AN_A2_EQ_1_AN_A3_EQ_0 :	VitalDelayType01 := (0.106 ns, 0.094 ns);
      tpd_A4_Z_A1_EQ_0_AN_A2_EQ_1_AN_A3_EQ_1 :	VitalDelayType01 := (0.116 ns, 0.107 ns);
      tpd_A4_Z_A1_EQ_1_AN_A2_EQ_0_AN_A3_EQ_0 :	VitalDelayType01 := (0.109 ns, 0.094 ns);
      tpd_A4_Z_A1_EQ_1_AN_A2_EQ_0_AN_A3_EQ_1 :	VitalDelayType01 := (0.124 ns, 0.107 ns);
      tpd_A4_Z_A1_EQ_1_AN_A2_EQ_1_AN_A3_EQ_0 :	VitalDelayType01 := (0.097 ns, 0.127 ns);
      tpd_A4_Z_A1_EQ_1_AN_A2_EQ_1_AN_A3_EQ_1 :	VitalDelayType01 := (0.109 ns, 0.145 ns);
      tpd_A4_Z                       :	VitalDelayType01 := (0.111 ns, 0.119 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      A4                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


----- Component XOR4D4 -----
component XOR4D4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_A1_Z_A2_EQ_0_AN_A3_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.125 ns, 0.142 ns);
      tpd_A1_Z_A2_EQ_0_AN_A3_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.105 ns, 0.115 ns);
      tpd_A1_Z_A2_EQ_0_AN_A3_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.106 ns, 0.115 ns);
      tpd_A1_Z_A2_EQ_0_AN_A3_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.126 ns, 0.141 ns);
      tpd_A1_Z_A2_EQ_1_AN_A3_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.125 ns, 0.168 ns);
      tpd_A1_Z_A2_EQ_1_AN_A3_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.117 ns, 0.121 ns);
      tpd_A1_Z_A2_EQ_1_AN_A3_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.117 ns, 0.121 ns);
      tpd_A1_Z_A2_EQ_1_AN_A3_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.125 ns, 0.167 ns);
      tpd_A1_Z                       :	VitalDelayType01 := (0.121 ns, 0.141 ns);
      tpd_A2_Z_A1_EQ_0_AN_A3_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.111 ns, 0.138 ns);
      tpd_A2_Z_A1_EQ_0_AN_A3_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.103 ns, 0.105 ns);
      tpd_A2_Z_A1_EQ_0_AN_A3_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.103 ns, 0.105 ns);
      tpd_A2_Z_A1_EQ_0_AN_A3_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.112 ns, 0.137 ns);
      tpd_A2_Z_A1_EQ_1_AN_A3_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.151 ns, 0.183 ns);
      tpd_A2_Z_A1_EQ_1_AN_A3_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.130 ns, 0.135 ns);
      tpd_A2_Z_A1_EQ_1_AN_A3_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.131 ns, 0.135 ns);
      tpd_A2_Z_A1_EQ_1_AN_A3_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.151 ns, 0.182 ns);
      tpd_A2_Z                       :	VitalDelayType01 := (0.127 ns, 0.144 ns);
      tpd_A3_Z_A1_EQ_0_AN_A2_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.098 ns, 0.161 ns);
      tpd_A3_Z_A1_EQ_0_AN_A2_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.121 ns, 0.197 ns);
      tpd_A3_Z_A1_EQ_0_AN_A2_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.129 ns, 0.103 ns);
      tpd_A3_Z_A1_EQ_0_AN_A2_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.159 ns, 0.129 ns);
      tpd_A3_Z_A1_EQ_1_AN_A2_EQ_0_AN_A4_EQ_0 :	VitalDelayType01 := (0.141 ns, 0.103 ns);
      tpd_A3_Z_A1_EQ_1_AN_A2_EQ_0_AN_A4_EQ_1 :	VitalDelayType01 := (0.169 ns, 0.129 ns);
      tpd_A3_Z_A1_EQ_1_AN_A2_EQ_1_AN_A4_EQ_0 :	VitalDelayType01 := (0.098 ns, 0.173 ns);
      tpd_A3_Z_A1_EQ_1_AN_A2_EQ_1_AN_A4_EQ_1 :	VitalDelayType01 := (0.121 ns, 0.210 ns);
      tpd_A3_Z                       :	VitalDelayType01 := (0.134 ns, 0.157 ns);
      tpd_A4_Z_A1_EQ_0_AN_A2_EQ_0_AN_A3_EQ_0 :	VitalDelayType01 := (0.097 ns, 0.155 ns);
      tpd_A4_Z_A1_EQ_0_AN_A2_EQ_0_AN_A3_EQ_1 :	VitalDelayType01 := (0.110 ns, 0.175 ns);
      tpd_A4_Z_A1_EQ_0_AN_A2_EQ_1_AN_A3_EQ_0 :	VitalDelayType01 := (0.128 ns, 0.102 ns);
      tpd_A4_Z_A1_EQ_0_AN_A2_EQ_1_AN_A3_EQ_1 :	VitalDelayType01 := (0.141 ns, 0.114 ns);
      tpd_A4_Z_A1_EQ_1_AN_A2_EQ_0_AN_A3_EQ_0 :	VitalDelayType01 := (0.134 ns, 0.102 ns);
      tpd_A4_Z_A1_EQ_1_AN_A2_EQ_0_AN_A3_EQ_1 :	VitalDelayType01 := (0.145 ns, 0.114 ns);
      tpd_A4_Z_A1_EQ_1_AN_A2_EQ_1_AN_A3_EQ_0 :	VitalDelayType01 := (0.097 ns, 0.167 ns);
      tpd_A4_Z_A1_EQ_1_AN_A2_EQ_1_AN_A3_EQ_1 :	VitalDelayType01 := (0.110 ns, 0.187 ns);
      tpd_A4_Z                       :	VitalDelayType01 := (0.122 ns, 0.144 ns);
      tipd_A1                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A2                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A3                        :	VitalDelayType01 := (0.000 ns, 0.000 ns);
      tipd_A4                        :	VitalDelayType01 := (0.000 ns, 0.000 ns));

-- synopsys translate_on
   port(
      A1                             :	in    STD_ULOGIC;
      A2                             :	in    STD_ULOGIC;
      A3                             :	in    STD_ULOGIC;
      A4                             :	in    STD_ULOGIC;
      Z                              :	out   STD_ULOGIC);
end component;


end VCOMPONENTS;

---- end of VITAL components library ----
