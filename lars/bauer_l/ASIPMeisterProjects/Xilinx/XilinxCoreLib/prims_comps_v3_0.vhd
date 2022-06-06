-- $Id: prims_comps_v3_0.vhd,v 1.6.78.3 2004/05/18 12:10:16 julian Exp $
--
-- Filename - prims_comps_v3_0.vhd
-- Author - Xilinx
-- Creation - 19 Aug 1999
--
-- Description - This file contains the component declarations for
--				 baseblocks primitives.

Library IEEE;
Use IEEE.std_logic_1164.all;

Library XilinxCoreLib;
Use XilinxCoreLib.prims_constants_v3_0.all;

package prims_comps_v3_0 is

-- Architecture Independant components...

----- Component C_LUT_V3_0 -----
-- Short Description
--
-- 1-4 input LUT. I1...I3 are defaulted to '0's to allow their exclusion from
--	a port mapping.
--
component C_LUT_V3_0 
    generic (
	    	  init : integer := 0;
              eqn  : string  := ""
    		);
    port( I0       : in std_ulogic;
          I1,I2,I3 : in std_ulogic := '0';
          O        : out std_ulogic
    	);
    			  
end component;

	
end prims_comps_v3_0;