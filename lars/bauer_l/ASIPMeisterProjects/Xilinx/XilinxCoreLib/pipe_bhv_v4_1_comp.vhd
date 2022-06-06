-- $Header: /devl/xcs/repo/env/Databases/ip/src/com/xilinx/ip/sincos_v4_1/simulation/pipe_bhv_v4_1_comp.vhd,v 1.2.78.3 2004/05/18 12:11:43 julian Exp $

library ieee;
use ieee.std_logic_1164.all;

package pipe_bhv_v4_1_comp is
	
	component pipe_bhv_v4_1
		generic (
			C_HAS_ACLR      : integer := 0;
			C_HAS_CE        : integer := 0;
			C_HAS_SCLR      : integer := 1;
			C_PIPE_STAGES   : integer := 2; 
			C_WIDTH         : integer := 16);		 
		port (
			D     : in  std_logic_vector(C_WIDTH-1 downto 0); -- Input value
			CLK   : in  std_logic := '0'; -- Clock
			CE    : in  std_logic := '1'; -- Clock Enable
			ACLR  : in  std_logic := '0'; -- Asynch clear.
			SCLR  : in  std_logic := '0'; -- Synch clear.
			Q     : out std_logic_vector(C_WIDTH-1 downto 0));
	end component;
	
end pipe_bhv_v4_1_comp;