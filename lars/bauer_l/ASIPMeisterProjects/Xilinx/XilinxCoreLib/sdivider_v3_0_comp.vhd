-- $Header: /devl/xcs/repo/env/Databases/ip/src/com/xilinx/ip/sdivider_v3_0/simulation/Attic/sdivider_v3_0_comp.vhd,v 1.1.4.3 2004/06/22 11:33:40 julian Exp $
-- ************************************************************************
--  Copyright (C) 2004 - Xilinx, Inc.
--  All rights reserved.
-- ************************************************************************
--
------------------------------------------------------------
--
--  Description
--  Pipelined divide package
--                  
--
------------------------------------------------------------
--
Library IEEE;
Use IEEE.std_logic_1164.all;

PACKAGE sdivider_v3_0_comp IS

COMPONENT sdivider_v3_0
   GENERIC (
      dividend_width      :POSITIVE := 8;
      divisor_width       :POSITIVE := 8;
      fractional_width    :POSITIVE := 8;
      signed_b            :INTEGER  := 0;
      fractional_b        :INTEGER  := 0;
      Divclk_Sel         : POSITIVE := 1;
      c_has_ce           : INTEGER  := 0;
      c_has_aclr         : INTEGER  := 0;
      c_has_sclr         : INTEGER  := 0;
--        c_has_nd           : INTEGER  := 0;
--        c_has_rfd          : INTEGER  := 0;
--        c_has_rdy          : INTEGER  := 0;
      c_sync_enable      : INTEGER  := 0
--      c_enable_rlocs     : INTEGER        
   );
   PORT(
      dividend : IN  STD_LOGIC_VECTOR(dividend_width-1 DOWNTO 0);     
      divisor  : IN  STD_LOGIC_VECTOR(divisor_width-1 DOWNTO 0);      
      quot     : OUT STD_LOGIC_VECTOR(dividend_width-1 DOWNTO 0);     
      remd     : OUT STD_LOGIC_VECTOR(fractional_width-1 DOWNTO 0);   
      clk      : IN  STD_LOGIC;
--        nd       : IN  STD_LOGIC;
      rfd      : OUT STD_LOGIC;
--        rdy      : OUT STD_LOGIC;
      aclr     : IN  STD_LOGIC;
      sclr     : IN  STD_LOGIC;
      ce       : IN  STD_LOGIC         
      );
END COMPONENT;

END sdivider_v3_0_comp;
