--------------------------------------------------------------------------------
-- Copyright 2001 Xilinx, Inc. All rights reserved.
--------------------------------------------------------------------------------
-- $Id: rs_decoder_v3_0_comp.vhd,v 1.4.78.3 2004/05/18 12:11:29 julian Exp $

LIBRARY ieee;
USE ieee.STD_LOGIC_1164.ALL;

PACKAGE rs_decoder_v3_0_comp IS

CONSTANT c_gen_start_default    : NATURAL  := 0;
CONSTANT c_h_default            : POSITIVE := 1;
CONSTANT c_k_default            : POSITIVE := 188;
CONSTANT c_n_default            : POSITIVE := 204;
CONSTANT c_polynomial_default   : NATURAL  := 0;
CONSTANT c_symbol_width_default : POSITIVE := 8;
CONSTANT c_has_ce_default       : NATURAL  := 0;
CONSTANT c_has_erase_default    : NATURAL  := 0;
CONSTANT c_has_sr_default       : NATURAL  := 0;
CONSTANT c_has_data_del_default : NATURAL  := 0;
CONSTANT c_sync_mode_default    : NATURAL  := 0;
CONSTANT c_spec_default         : NATURAL  := 0;
CONSTANT c_clks_per_sym_default : POSITIVE := 1;
CONSTANT c_memstyle_default     : NATURAL  := 2; -- = automatic
CONSTANT c_userpm_default       : NATURAL  := 1;
CONSTANT c_huset_default        : STRING   := "MOD";
CONSTANT c_usehuset_default     : NATURAL  := 1;
CONSTANT c_optimisation_default : INTEGER  := 0; -- 0=area 1 =speed
CONSTANT c_family_int_default   : NATURAL  := 0;   --1=virtex2 0 for all other families-only effects placement

    
FUNCTION integer_width( integer_value : INTEGER ) RETURN INTEGER;
  
--------------------------------------------------------------------------------
COMPONENT rs_decoder_v3_0
  GENERIC (
    c_gen_start      : NATURAL  := c_gen_start_default;
    c_h              : POSITIVE := c_h_default;
    c_k              : POSITIVE := c_k_default;
    c_n              : POSITIVE := c_n_default;
    c_polynomial     : NATURAL  := c_polynomial_default;
    c_symbol_width   : POSITIVE := c_symbol_width_default;
    c_has_ce         : NATURAL  := c_has_ce_default;
    c_has_erase      : NATURAL  := c_has_erase_default;
    c_has_sr         : NATURAL  := c_has_sr_default;
    c_has_data_del   : NATURAL  := c_has_data_del_default;
    c_sync_mode      : NATURAL  := c_sync_mode_default;
    c_spec           : NATURAL  := c_spec_default;
    c_clks_per_sym   : POSITIVE := c_clks_per_sym_default;
    c_memstyle       : NATURAL  := c_memstyle_default;
    c_userpm         : NATURAL  := c_userpm_default;      
    c_huset          : STRING   := c_huset_default;
    c_usehuset       : NATURAL  := c_usehuset_default;
    c_optimisation   : INTEGER  := c_optimisation_default;
    c_family_int     : INTEGER  := c_family_int_default);
  PORT (
    data_in   : IN  STD_LOGIC_VECTOR(c_symbol_width-1 DOWNTO 0);
    sync      : IN  STD_LOGIC;
    clk       : IN  STD_LOGIC;
    ce        : IN  STD_LOGIC := '1';
    erase     : IN  STD_LOGIC := '0';
    reset     : IN  STD_LOGIC;
    sr        : IN  STD_LOGIC := '0';
    data_out  : OUT STD_LOGIC_VECTOR(c_symbol_width-1 DOWNTO 0);
    data_del  : OUT STD_LOGIC_VECTOR(c_symbol_width-1 DOWNTO 0);
    blk_strt  : OUT STD_LOGIC;
    blk_end   : OUT STD_LOGIC;
    erase_cnt : OUT STD_LOGIC_VECTOR(integer_width(c_n)-1 DOWNTO 0);
    err_found : OUT STD_LOGIC;
    err_cnt   : OUT STD_LOGIC_VECTOR(integer_width(c_n-c_k)-1 DOWNTO 0);
    fail      : OUT STD_LOGIC;
    ready     : OUT STD_LOGIC
  );
END COMPONENT; -- rs_decoder_v3_0


-- The following tells XST that rs_decoder_V3_0 is a black box which  
-- should be generated command given by the value of this attribute 
-- Note the fully qualified SIM (JAVA class) name that forms the 
-- basis of the core 
attribute box_type : string; 
attribute box_type of RS_DECODER_V3_0 : component is "black_box"; 
attribute GENERATOR_DEFAULT : string; 
attribute GENERATOR_DEFAULT of RS_DECODER_V3_0 : component is 
          "generatecore com.xilinx.ip.rs_decoder_v3_0.rs_decoder_v3_0"; 

END rs_decoder_v3_0_comp;

--------------------------------------------------------------------------------
PACKAGE BODY rs_decoder_v3_0_comp IS


FUNCTION integer_width( integer_value : INTEGER ) RETURN INTEGER IS
    VARIABLE width : INTEGER := 1;
BEGIN
  FOR i IN 30 DOWNTO 0 LOOP
    IF integer_value >= 2**i THEN
      width := i+1;
      EXIT;
    END IF;
  END LOOP;

  RETURN width;

END integer_width;
  
  
END rs_decoder_v3_0_comp;
