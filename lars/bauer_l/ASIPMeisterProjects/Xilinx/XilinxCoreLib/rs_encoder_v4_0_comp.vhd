--------------------------------------------------------------------------------
--  Copyright(C) 2003 by Xilinx, Inc. All rights reserved.
--  This text/file contains proprietary, confidential
--  information of Xilinx, Inc., is distributed under license
--  from Xilinx, Inc., and may be used, copied and/or
--  disclosed only pursuant to the terms of a valid license
--  agreement with Xilinx, Inc.  Xilinx hereby grants you
--  a license to use this text/file solely for design, simulation,
--  implementation and creation of design files limited
--  to Xilinx devices or technologies. Use with non-Xilinx
--  devices or technologies is expressly prohibited and
--  immediately terminates your license unless covered by
--  a separate agreement.
--
--  Xilinx is providing this design, code, or information
--  "as is" solely for use in developing programs and
--  solutions for Xilinx devices.  By providing this design,
--  code, or information as one possible implementation of
--  this feature, application or standard, Xilinx is making no
--  representation that this implementation is free from any
--  claims of infringement.  You are responsible for
--  obtaining any rights you may require for your implementation.
--  Xilinx expressly disclaims any warranty whatsoever with
--  respect to the adequacy of the implementation, including
--  but not limited to any warranties or representations that this
--  implementation is free from claims of infringement, implied
--  warranties of merchantability or fitness for a particular
--  purpose.
--
--  Xilinx products are not intended for use in life support
--  appliances, devices, or systems. Use in such applications are
--  expressly prohibited.
--
--  This copyright and support notice must be retained as part
--  of this text at all times. (c) Copyright 1995-2003 Xilinx, Inc.
--  All rights reserved.
--
-- $RCSfile: rs_encoder_v4_0_comp.vhd,v $ $Revision: 1.2.10.3 $ $Date: 2004/05/18 12:11:31 $
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.STD_LOGIC_1164.ALL;

PACKAGE rs_encoder_v4_0_comp IS

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
COMPONENT rs_encoder_v4_0
  GENERIC (
    c_family_int     : INTEGER;
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
END COMPONENT; -- rs_encoder_v4_0

-- The following tells XST that rs_encoder_v4_0 is a black box which  
-- should be generated command given by the value of this attribute 
-- Note the fully qualified SIM (JAVA class) name that forms the 
-- basis of the core 
attribute box_type : string; 
attribute box_type of RS_ENCODER_V4_0 : component is "black_box"; 
attribute GENERATOR_DEFAULT : string; 
attribute GENERATOR_DEFAULT of RS_ENCODER_V4_0 : component is 
          "generatecore com.xilinx.ip.rs_encoder_v4_0.rs_encoder_v4_0"; 


END rs_encoder_v4_0_comp;

--------------------------------------------------------------------------------
