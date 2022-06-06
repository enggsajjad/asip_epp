--------------------------------------------------------------------------------
-- Copyright 2000 Xilinx, Inc. All rights reserved.
--------------------------------------------------------------------------------
-- $Id: rs_encoder_v3_0_comp.vhd,v 1.4.78.3 2004/05/18 12:11:31 julian Exp $

LIBRARY ieee;
USE ieee.STD_LOGIC_1164.ALL;

PACKAGE rs_encoder_v3_0_comp IS

CONSTANT c_gen_start_default    : NATURAL  := 0;
CONSTANT c_h_default            : POSITIVE := 1;
CONSTANT c_k_default            : POSITIVE := 188;
CONSTANT c_n_default            : POSITIVE := 204;
CONSTANT c_optimization_default : NATURAL  := 2; --optimize for speed
CONSTANT c_polynomial_default   : NATURAL  := 0;
CONSTANT c_symbol_width_default : POSITIVE := 8;
CONSTANT c_spec_default         : NATURAL  := 0;
CONSTANT c_memstyle_default     : NATURAL  := 2; -- = automatic
CONSTANT c_userpm_default       : NATURAL  := 1;

      
--------------------------------------------------------------------------------
COMPONENT rs_encoder_v3_0
  GENERIC (
    c_symbol_width   : POSITIVE := c_symbol_width_default;
    c_polynomial     : NATURAL  := c_polynomial_default;
    c_gen_start      : NATURAL  := c_gen_start_default;
    c_h              : POSITIVE := c_h_default;
    c_k              : POSITIVE := c_k_default;
    c_n              : POSITIVE := c_n_default;
    c_userpm         : NATURAL  := c_userpm_default;
    c_spec           : NATURAL  := c_spec_default;   
    c_memstyle       : NATURAL  := c_memstyle_default;
    c_optimization   : NATURAL  := c_optimization_default);
  PORT (
    bypass    : IN   STD_LOGIC;
    clk       : IN   STD_LOGIC;
    data_in   : IN   STD_LOGIC_VECTOR(c_symbol_width-1 DOWNTO 0);
    data_out  : OUT  STD_LOGIC_VECTOR(c_symbol_width-1 DOWNTO 0);
    enable    : IN   STD_LOGIC := '0';    
    info      : OUT  STD_LOGIC;
    reset     : IN   STD_LOGIC := '1';
    start     : IN   STD_LOGIC := '0');
END COMPONENT; -- rs_encoder_v3_0

-- The following tells XST that rs_encoder_V3_0 is a black box which  
-- should be generated command given by the value of this attribute 
-- Note the fully qualified SIM (JAVA class) name that forms the 
-- basis of the core 
attribute box_type : string; 
attribute box_type of RS_ENCODER_V3_0 : component is "black_box"; 
attribute GENERATOR_DEFAULT : string; 
attribute GENERATOR_DEFAULT of RS_ENCODER_V3_0 : component is 
          "generatecore com.xilinx.ip.rs_encoder_v3_0.rs_encoder_v3_0"; 


END rs_encoder_v3_0_comp;

--------------------------------------------------------------------------------
