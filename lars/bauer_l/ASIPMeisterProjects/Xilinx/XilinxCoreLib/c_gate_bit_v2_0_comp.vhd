-- $Id: c_gate_bit_v2_0_comp.vhd,v 1.3 2000/01/18 16:09:31 cc Exp $
--
-- Filename - c_gate_bit_v2_0_comp.vhd
-- Author - Xilinx
-- Creation - 3 Mar 1999
--
-- Description - This file contains the component declaration for
--				 the C_GATE_BIT_V2_0 core

Library IEEE;
Use IEEE.std_logic_1164.all;

Library XilinxCoreLib;
Use XilinxCoreLib.prims_constants_v2_0.all;

package c_gate_bit_v2_0_comp is

	
----- Component C_GATE_BIT_V2_0 -----
-- Short Description
--
-- (A)Synchronous Wide Gate
--

component C_GATE_BIT_V2_0
	generic(
			 C_GATE_TYPE		: integer := c_and;
			 C_INPUTS 			: integer := 2;
			 C_INPUT_INV_MASK 	: string := "";
			 C_PIPE_STAGES		: integer := 1;
			 C_AINIT_VAL 		: string := "0";
			 C_SINIT_VAL		: string := "0";
			 C_SYNC_PRIORITY: integer := c_clear;
			 C_SYNC_ENABLE 	: integer := c_override;
			 C_HAS_O 		: integer := 0;
			 C_HAS_Q 		: integer := 1;
			 C_HAS_CE 		: integer := 0;
			 C_HAS_ACLR 	: integer := 0;
			 C_HAS_ASET 	: integer := 0;
			 C_HAS_AINIT 	: integer := 0;
			 C_HAS_SCLR 	: integer := 0;
			 C_HAS_SSET 	: integer := 0;
			 C_HAS_SINIT 	: integer := 0;
			 C_ENABLE_RLOCS	: integer := 0
			);

    port (I : in std_logic_vector(C_INPUTS-1 downto 0) := (others => '0'); -- Input vector
		  CLK : in std_logic := '0'; -- Clock
		  CE : in std_logic := '1'; -- Clock Enable
		  ACLR : in std_logic := '0'; -- Asynch init.
		  ASET : in std_logic := '0'; -- Asynch set.
		  AINIT : in std_logic := '0'; -- Asynch init.
		  SCLR : in std_logic := '0'; -- Synch init.
		  SSET : in std_logic := '0'; -- Synch set.		  
		  SINIT : in std_logic := '0'; -- Synch init.
		  O : out std_logic; -- Asynch output
		  Q : out std_logic); -- Registered output value
end component;


end c_gate_bit_v2_0_comp;
