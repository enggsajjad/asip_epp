--------------------------------------------------------------------------------
-- Copyright(C) 2004 by Xilinx, Inc. All rights reserved.
-- This text contains proprietary, confidential
-- information of Xilinx, Inc., is distributed
-- under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms
-- of a valid license agreement with Xilinx, Inc. This copyright
-- notice must be retained as part of this text at all times."
--
-- $RCSfile: rs_decoder_v5_0_comp.vhd,v $ $Revision: 1.1.4.2 $ $Date: 2004/05/18 12:11:30 $
--
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.STD_LOGIC_1164.ALL;

PACKAGE rs_decoder_v5_0_comp IS

CONSTANT c_num_channels_default : INTEGER  := 1;
CONSTANT c_clks_per_sym_default : INTEGER  := 1;
CONSTANT c_gen_start_default    : INTEGER  := 0;
CONSTANT c_h_default            : INTEGER  := 1;
CONSTANT c_has_ce_default       : INTEGER  := 0;
CONSTANT c_has_data_del_default : INTEGER  := 0;
CONSTANT c_has_erase_default    : INTEGER  := 0;
CONSTANT c_has_n_in_default     : INTEGER  := 0;
CONSTANT c_has_sr_default       : INTEGER  := 0;
CONSTANT c_huset_default        : STRING   := "MOD";
CONSTANT c_k_default            : INTEGER  := 188;
CONSTANT c_memstyle_default     : INTEGER  := 2; -- = automatic
--CONSTANT c_mem_init_prefix_default
CONSTANT c_n_default            : INTEGER  := 204;
CONSTANT c_optimisation_default : INTEGER  := 0; -- 0=area 1 =speed
CONSTANT c_polynomial_default   : INTEGER  := 0;
CONSTANT c_spec_default         : INTEGER  := 0;
CONSTANT c_symbol_width_default : INTEGER  := 8;
CONSTANT c_sync_mode_default    : INTEGER  := 0;
CONSTANT c_usehuset_default     : INTEGER  := 1;
CONSTANT c_userpm_default       : INTEGER  := 1;
CONSTANT c_family_default       : STRING   := "virtex2";

    
FUNCTION integer_width( integer_value : INTEGER ) RETURN INTEGER;
  
--------------------------------------------------------------------------------
COMPONENT rs_decoder_v5_0
  GENERIC (
    c_num_channels    : INTEGER  := c_num_channels_default;
    c_clks_per_sym    : INTEGER  := c_clks_per_sym_default;
    c_gen_start       : INTEGER  := c_gen_start_default;
    c_h               : INTEGER  := c_h_default;
    c_has_ce          : INTEGER  := c_has_ce_default;
    c_has_data_del    : INTEGER  := c_has_data_del_default;
    c_has_erase       : INTEGER  := c_has_erase_default;
    c_has_n_in        : INTEGER  := c_has_n_in_default;
    c_has_sr          : INTEGER  := c_has_sr_default;
    c_huset           : STRING   := c_huset_default;
    c_k               : INTEGER := c_k_default;
    c_memstyle        : INTEGER  := c_memstyle_default;
    c_mem_init_prefix : STRING   := "rsd1";
    c_n               : INTEGER := c_n_default;
    c_optimisation    : INTEGER  := c_optimisation_default;
    c_polynomial      : INTEGER  := c_polynomial_default;
    c_spec            : INTEGER  := c_spec_default;
    c_symbol_width    : INTEGER := c_symbol_width_default;
    c_sync_mode       : INTEGER  := c_sync_mode_default;
    c_usehuset        : INTEGER  := c_usehuset_default;
    c_userpm          : INTEGER  := c_userpm_default;      
    c_family          : STRING   := c_family_default);
  PORT (
    data_in   : IN  STD_LOGIC_VECTOR(c_symbol_width-1 DOWNTO 0);
    n_in      : IN  STD_LOGIC_VECTOR(c_symbol_width-1 DOWNTO 0) := (OTHERS=>'1');
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
    ready     : OUT STD_LOGIC;
    rffd      : OUT STD_LOGIC
  );
END COMPONENT; -- rs_decoder_v5_0


-- The following tells XST that rs_decoder_v5_0 is a black box which  
-- should be generated command given by the value of this attribute 
-- Note the fully qualified SIM (JAVA class) name that forms the 
-- basis of the core 
attribute box_type : string; 
attribute box_type of RS_DECODER_V5_0 : component is "black_box"; 
attribute GENERATOR_DEFAULT : string; 
attribute GENERATOR_DEFAULT of RS_DECODER_V5_0 : component is 
          "generatecore com.xilinx.ip.rs_decoder_v5_0.rs_decoder_v5_0"; 

END rs_decoder_v5_0_comp;

--------------------------------------------------------------------------------
PACKAGE BODY rs_decoder_v5_0_comp IS


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
  
  
END rs_decoder_v5_0_comp;
