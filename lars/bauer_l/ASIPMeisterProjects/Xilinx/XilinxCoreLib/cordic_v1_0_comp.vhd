--------------------------------------------------------------------------------
-- Copyright 2000 Xilinx, Inc. All rights reserved.
-- ================================================
-- $Header: /devl/xcs/repo/env/Databases/ip/src/com/xilinx/ip/cordic_v1_0/simulation/cordic_v1_0_comp.vhd,v 1.4.78.3 2004/05/18 12:10:42 julian Exp $
--------------------------------------------------------------------------------
-- Project  : cordic_v1_0
-- Unit     : cordic_comp_v1_0
-- Author   : Jeffrey Graham
-- Function :  Top Level Module Component 
--------------------------------------------------------------------------------
-- Description
-- ===========
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

PACKAGE cordic_v1_0_comp IS

  COMPONENT cordic_v1_0
  GENERIC (
    c_architecture	: INTEGER := 2; 
    c_cordic_function : INTEGER := 0;
    c_enable_rlocs : INTEGER := 1;
    c_has_aclr : INTEGER := 0;
    c_has_ce : INTEGER := 0;
    c_has_phase_in : INTEGER := 0;
    c_has_phase_out : INTEGER := 0;
    c_has_rdy : INTEGER := 0;
    c_has_rfd : INTEGER := 0;
    c_has_sclr : INTEGER := 0;
    c_has_x_in : INTEGER := 0;
    c_has_x_out : INTEGER := 0;
    c_has_y_in : INTEGER := 0;
    c_has_y_out : INTEGER := 0;
    c_input_width : INTEGER := 16;
    c_mif_file_prefix : STRING := "cor1";
    c_output_width : INTEGER := 16;
    c_phase_format : INTEGER := 0;
    c_pipeline_mode : INTEGER := -2;
    c_reg_inputs : INTEGER := 0;
    c_replications	: INTEGER := 0;
    c_round_mode : INTEGER := 0;
    c_scale_comp : INTEGER := 0
    );
  PORT (
    x_in : in STD_LOGIC_VECTOR(c_input_width-1 downto 0) := (OTHERS => 'Z');
    y_in : in STD_LOGIC_VECTOR(c_input_width-1 downto 0) := (OTHERS => 'Z');
    phase_in : in STD_LOGIC_VECTOR(c_input_width-1 downto 0) := (OTHERS => 'Z');
    nd : IN STD_LOGIC := '1';
    x_out : OUT STD_LOGIC_VECTOR(c_output_width-1 downto 0);
    y_out : OUT STD_LOGIC_VECTOR(c_output_width-1 downto 0);
    phase_out : OUT STD_LOGIC_VECTOR(c_output_width-1 downto 0);
    rdy : OUT STD_LOGIC;
    rfd : OUT STD_LOGIC;
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC := '1';
    aclr : IN STD_LOGIC := '0';
    sclr : IN STD_LOGIC := '0'
  );
  END COMPONENT;

END cordic_v1_0_comp;
