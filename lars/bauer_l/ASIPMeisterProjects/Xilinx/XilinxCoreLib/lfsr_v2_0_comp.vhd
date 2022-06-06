-------------------------------------------------------------------------------
-- $Id: lfsr_v2_0_comp.vhd,v 1.4.78.3 2004/05/18 12:11:13 julian Exp $
-------------------------------------------------------------------------------
--
-- Core Name - VHDL Behavioral Model Component File
--
-------------------------------------------------------------------------------
--                                                                       
-- This file is owned and controlled by Xilinx and must be used solely   
-- for design, simulation, implementation and creation of design files   
-- limited to Xilinx devices or technologies. Use with non-Xilinx        
-- devices or technologies is expressly prohibited and immediately       
-- terminates your license.                                              
--                                                                       
-- Xilinx products are not intended for use in life support              
-- appliances, devices, or systems. Use in such applications is          
-- expressly prohibited.                                                 
--
--            **************************************
--            ** Copyright (C) 2000, Xilinx, Inc. **
--            ** All Rights Reserved.             **
--            **************************************
--
-------------------------------------------------------------------------------
--
-- Filename: lfsr_v2_0_comp.vhd
--
-- Description:
--  This file contains the component declaration for the LFSR
--                      
-------------------------------------------------------------------------------


-------------------------------------------------------------------------------
-- Library Declarations
-------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.prims_utils_v4_0.ALL;


PACKAGE lfsr_v2_0_comp IS
-------------------------------------------------------------------------------
-- Component Declaration
-------------------------------------------------------------------------------

  COMPONENT lfsr_v2_0
    GENERIC (
      c_ainit_val          :     string                              := "11111111";
      c_enable_rlocs       :     integer                             := 0;
      c_gate               :     integer                             := 0;
      c_has_ainit          :     integer                             := 0;
      c_has_ce             :     integer                             := 0;
      c_has_data_valid     :     integer                             := 0;
      c_has_load           :     integer                             := 0;
      c_has_load_taps      :     integer                             := 0;
      c_has_new_seed       :     integer                             := 0;
      c_has_pd_in          :     integer                             := 0;
      c_has_pd_out         :     integer                             := 0;
      c_has_sd_in          :     integer                             := 0;
      c_has_sd_out         :     integer                             := 1;
      c_has_sinit          :     integer                             := 0;
      c_has_taps_in        :     integer                             := 0;
      c_has_term_cnt       :     integer                             := 0;
      c_implementation     :     integer                             := 0;
      c_max_len_logic      :     integer                             := 0;
      c_max_len_logic_type :     integer                             := 0;
      c_sinit_val          :     string                              := "11111111";
      c_size               :     integer                             := 8;
      c_tap_pos            :     string                              := "00011101";
      c_type               :     integer                             := 0
      );
    PORT (
      clk                  : IN  std_logic;
      sd_out               : OUT std_logic;
      pd_out               : OUT std_logic_vector(c_size-1 DOWNTO 0);
      load                 : IN  std_logic                           := '0';
      pd_in                : IN  std_logic_vector(c_size-1 DOWNTO 0) := (OTHERS => '0');
      sd_in                : IN  std_logic                           := '0';
      ce                   : IN  std_logic                           := '1';
      data_valid           : OUT std_logic;
      load_taps            : IN  std_logic                           := '0';
      taps_in              : IN  std_logic_vector(c_size-1 DOWNTO 0) := (OTHERS => '1');
      sinit                : IN  std_logic                           := '0';
      ainit                : IN  std_logic                           := '0';
      new_seed             : OUT std_logic;
      term_cnt             : OUT std_logic
      );
  END COMPONENT;



-------------------------------------------------------------------------------
-- Definition of Generics:

-- c_enable_rlocs       : 1=enable placement directives
-- c_has_load           : 0=no load, 1=load is enabled
-- c_has_load_taps      : 1=allow programmable taps (not a valid option for
--                        the current version)
-- c_has_new_seed       : 1=had a new seed output pin
-- c_has_pd_out         : 1=has parallel output (only if c_has_sd_out = 0)
-- c_has_sd_out         : 1=has serial output (only if c_has_pd_out = 0)
-- c_has_taps_in        : 1=has the programmable taps port (not a valid option for
--                        the current version)
-- c_has_term_cnt       : 1=has the term_cnt output pin (must have max
--                        length logic enabled)
-- c_max_len_logic_type : 0=Gate 1=Counter for Maximum Length Logic
-- c_ainit_val          : asychronous init value (also serves as GSR value, and
--                        dominates over sinit value.)
-- c_gate               : 0=XOR gates, 1=XNOR gates
-- c_has_ainit          : 1=has asynchronous initialization pin
-- c_has_ce             : 1=has clock enable pin
-- c_has_data_valid     : 1=has data valid output pin
-- c_has_pd_in          : 1=has fill_select and pd_in
-- c_has_sd_in          : 1=has fill_select and sd_in
-- c_has_sinit          : 1=has synchronous initialization pin
-- c_implementation     : 0=SRL16, 1=Registers
-- c_max_len_logic      : 1=Include logic to allow all-zeros or all-ones cases.
-- c_sinit_val          : synchronous init value
-- c_size               : length of lfsr (1 to 256)
-- c_tap_pos            : initial tap positions
-- c_type               : 0=Fibonacci, 1=Galois implementation
-------------------------------------------------------------------------------
-- Definition of Ports
-- sd_out       : the serial output port
-- pd_out       : the parallel output port
-- load         : the load enable signal, loads data on pd_in or sd_in
-- load_taps    : the enable signal to load the taps (not a valid option for
--                the current version)
-- taps_in      : the input port for the loadable taps (not a valid option for
--                the current version)
-- sinit        : synchronous initialization port
-- new_seed     : high if there is a new seed
-- term_cnt     : high for 2 clock cycles of the sequence
-- clk          : Clock
-- pn_out       : Output (width=1 for serial output, width=c_size for
--                parallel output)
-- ainit        : asynchronous init
-- ce           : clock enable
-- load_taps    : reprogram taps
-- pd_in        : parallel data input
-- sd_in        : serial data input
-- data_valid   : high if output data is valid
-------------------------------------------------------------------------------

END lfsr_v2_0_comp;
