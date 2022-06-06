-- $Header: /devl/xcs/repo/env/Databases/ip/src/com/xilinx/ip/dds_v4_0/simulation/dither_v4_0_comp.vhd,v 1.4.78.3 2004/05/18 12:10:48 julian Exp $

library ieee;
use ieee.std_logic_1164.all;

--library	XilinxCoreLib;
--use XilinxCoreLib.dds_v2_0_pack.all;

package dither_v4_0_comp is
	
component dither_v4_0
  generic(
       hasAInit : INTEGER := 0;
       hasCe : INTEGER := 0;
       hasSInit : INTEGER := 0;
       lfsrALength : INTEGER := 13;
       lfsrBLength : INTEGER := 14;
       lfsrCLength : INTEGER := 15;
       lfsrDLength : INTEGER := 16;
       pipelined : INTEGER := 1
  );
  port (
       AINIT : in STD_LOGIC;
       CE : in STD_LOGIC;
       CLK : in STD_LOGIC;
       SINIT : in STD_LOGIC;
       DITHER : out INTEGER := 0
  );
end component;
	
end dither_v4_0_comp;
