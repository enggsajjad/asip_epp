--------------------------------------------------------------------------------
-- Copyright(C) 2003 by Xilinx, Inc. All rights reserved.
-- This text/file contains proprietary, confidential
-- information of Xilinx, Inc., is distributed under license
-- from Xilinx, Inc., and may be used, copied and/or
-- disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc. Xilinx hereby grants you
-- a license to use this text/file solely for design, simulation,
-- implementation and creation of design files limited
-- to Xilinx devices or technologies. Use with non-Xilinx
-- devices or technologies is expressly prohibited and
-- immediately terminates your license unless covered by
-- a separate agreement.
--
-- Xilinx is providing this design, code, or information
-- "as is" solely for use in developing programs and
-- solutions for Xilinx devices. By providing this design,
-- code, or information as one possible implementation of
-- this feature, application or standard, Xilinx is making no
-- representation that this implementation is free from any
-- claims of infringement. You are responsible for
-- obtaining any rights you may require for your implementation.
-- Xilinx expressly disclaims any warranty whatsoever with
-- respect to the adequacy of the implementation, including
-- but not limited to any warranties or representations that this
-- implementation is free from claims of infringement, implied
-- warranties of merchantability or fitness for a particular
-- purpose.
--
-- Xilinx products are not intended for use in life support
-- appliances, devices, or systems. Use in such applications are
-- expressly prohibited.
--
-- This copyright and support notice must be retained as part
-- of this text at all times. (c) Copyright 1995-2003 Xilinx, Inc.
-- All rights reserved.
--------------------------------------------------------------------------------
-- $RCSfile: rs_encoder_v4_1_comp.vhd,v $ $Revision: 1.1.4.3 $ $Date: 2004/05/18 12:11:32 $
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.STD_LOGIC_1164.ALL;

PACKAGE rs_encoder_v4_1_comp IS

CONSTANT c_mem_init_prefix_default : STRING   := "rse1";
CONSTANT c_gen_start_default       : INTEGER  := 0;
CONSTANT c_h_default               : INTEGER  := 1;
CONSTANT c_k_default               : INTEGER  := 188;
CONSTANT c_n_default               : INTEGER  := 204;
CONSTANT c_optimization_default    : INTEGER  := 2; --optimize for speed
CONSTANT c_polynomial_default      : INTEGER  := 0;
CONSTANT c_n_in_default            : INTEGER  := 0;
CONSTANT c_ce_default              : INTEGER  := 0;
CONSTANT c_nd_default              : INTEGER  := 0;
CONSTANT c_rdy_default             : INTEGER  := 0;
CONSTANT c_rfd_default             : INTEGER  := 0;
CONSTANT c_rffd_default            : INTEGER  := 0;
CONSTANT c_num_channels_default    : INTEGER  := 1;
CONSTANT c_symbol_width_default    : INTEGER  := 8;
CONSTANT c_spec_default            : INTEGER  := 0;
CONSTANT c_memstyle_default        : INTEGER  := 2; -- = automatic
CONSTANT c_userpm_default          : INTEGER  := 1;
CONSTANT c_family_default          : STRING   := "virtex2";

      
--------------------------------------------------------------------------------
COMPONENT rs_encoder_v4_1
  GENERIC (
    c_family          : STRING   := c_family_default;
    c_mem_init_prefix : STRING   := c_mem_init_prefix_default;
    c_symbol_width    : INTEGER  := c_symbol_width_default;
    c_polynomial      : INTEGER  := c_polynomial_default;
    c_gen_start       : INTEGER  := c_gen_start_default;
    c_h               : INTEGER  := c_h_default;
    c_k               : INTEGER  := c_k_default;
    c_n               : INTEGER  := c_n_default;
    -- c_optimization is no longer used. Keep parameter for b/w compatibility.
    c_optimization    : INTEGER  := c_optimization_default;
    c_has_n_in        : INTEGER  := c_n_in_default;
    c_has_ce          : INTEGER  := c_ce_default;
    c_has_nd          : INTEGER  := c_nd_default;
    c_has_rdy         : INTEGER  := c_rdy_default;
    c_has_rfd         : INTEGER  := c_rfd_default;
    c_has_rffd        : INTEGER  := c_rffd_default;
    c_num_channels    : INTEGER  := c_num_channels_default;
    c_userpm          : INTEGER  := c_userpm_default;
    c_spec            : INTEGER  := c_spec_default;   
    c_memstyle        : INTEGER  := c_memstyle_default);
  PORT (
    bypass    : IN  STD_LOGIC;
    clk       : IN  STD_LOGIC;
    data_in   : IN  STD_LOGIC_VECTOR(c_symbol_width-1 DOWNTO 0);
    data_out  : OUT STD_LOGIC_VECTOR(c_symbol_width-1 DOWNTO 0);
    ce        : IN  STD_LOGIC := '1';    
    nd        : IN  STD_LOGIC := '1';    
    info      : OUT STD_LOGIC;
    rdy       : OUT STD_LOGIC;
    rfd       : OUT STD_LOGIC;
    rffd      : OUT STD_LOGIC;
    n_in      : IN  STD_LOGIC_VECTOR(c_symbol_width-1 DOWNTO 0) := (OTHERS => '0');
    reset     : IN  STD_LOGIC := '0';
    start     : IN  STD_LOGIC);
END COMPONENT; -- rs_encoder_v4_1

-- The following tells XST that rs_encoder_v4_1 is a black box which  
-- should be generated command given by the value of this attribute 
-- Note the fully qualified SIM (JAVA class) name that forms the 
-- basis of the core 
ATTRIBUTE box_type : string; 
ATTRIBUTE box_type OF RS_ENCODER_v4_1 : COMPONENT IS "black_box"; 
ATTRIBUTE GENERATOR_DEFAULT : string; 
ATTRIBUTE GENERATOR_DEFAULT OF RS_ENCODER_v4_1 : COMPONENT IS 
          "generatecore com.xilinx.ip.rs_encoder_v4_1.rs_encoder_v4_1"; 


END rs_encoder_v4_1_comp;

--------------------------------------------------------------------------------
