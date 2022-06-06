--------------------------------------------------------------------------------
-- Copyright 2000 Xilinx, Inc. All rights reserved.
-- ============================2====================
-- $Id: mac_v2_0_comp.vhd,v 1.4.78.3 2004/05/18 12:11:14 julian Exp $
--
--------------------------------------------------------------------------------
-- Unit     : mac_v2_0
-- Author   : Rowland Fraser
-- Function : Component declarations
--------------------------------------------------------------------------------
-- Description
-- ===========
-- 
--------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

LIBRARY xilinxcorelib;
USE xilinxcorelib.prims_constants_v2_0.all;

PACKAGE mac_v2_0_comp IS
  COMPONENT mac_v2_0  
    GENERIC (c_family_int    : integer := 0; 
             c_a_width       : integer;
             c_b_width       : integer;
             c_mult_type     : integer;
             c_mem_type      : integer;
             c_count_width   : integer;
             c_p_width       : integer;
             c_mult_round    : integer; 
             c_acc_width     : integer;
             c_out_width     : integer;
             c_a_type        : integer;
             c_b_type        : integer;
             c_b_mode        : integer;
             c_b_value       : string;
             c_saturate      : integer;
             c_sync_enable   : integer;
             c_has_inreg     : integer;
             c_pipe_level    : string;
             c_optimization  : integer;
             c_has_count     : integer;
             c_mac_count     : integer;
             c_mem_init_prefix : string := "mem";
             c_output_hold   : integer;
             c_has_rffd      : integer;
             c_has_rdy       : integer;
             c_has_c_in      : integer;
             c_has_c_out     : integer;
             c_has_ovfl      : integer;
             c_has_ce        : integer;
             c_has_add       : integer;
             c_has_a_signed  : integer;
             c_has_load_b    : integer;
             c_has_aclr      : integer;
             c_has_sclr      : integer;
             c_standalone    : integer;
             c_enable_rlocs  : integer);
        PORT (clk       : IN  std_logic;
              a         : IN  std_logic_vector((c_a_width - 1) downto 0);
              b         : IN  std_logic_vector((c_b_width - 1) downto 0);
              c_in      : IN  std_logic;
              fd        : IN  std_logic;
              nd        : IN  std_logic;
              a_signed  : IN  std_logic;
              load_b    : IN  std_logic;
              add       : IN  std_logic;
              count     : IN  std_logic_Vector((c_count_width - 1) downto 0); 
              aclr      : IN  std_logic;
              sclr      : IN  std_logic;
              ce        : IN  std_logic;
              q         : OUT std_logic_vector((c_out_width-1) downto 0);
              c_out     : OUT std_logic;
              ovfl      : OUT std_logic;
              rdy       : OUT std_logic;
              rfd       : OUT std_logic;
              rffd      : OUT std_logic); 
          END COMPONENT;
END mac_v2_0_comp;
