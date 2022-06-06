-------------------------------------------------------------------------------
-- $RCSfile: fifo_generator_v1_1_comp.vhd,v $ $Revision: 1.1.4.4 $ $Date: 2004/06/22 12:43:27 $
-------------------------------------------------------------------------------
--
-- Fifo Generator - VHDL Behavioral Model Component Declaration
--
-------------------------------------------------------------------------------
--
-- Copyright(C) 2004 by Xilinx, Inc. All rights reserved.
-- This text contains propritary confidential information
-- of Xilinx, Inc., is distributed by and under license from
-- Xilinx, Inc., and may be used, copied and/or disclosed
-- only pursuant to the terms of a valid license agreement
-- with Xilinx, Inc.
--
-- Unmodified source code will substantially conform to the
-- datasheet specifications, and is guaranteed to place
-- and route, and function according to the datasheet
-- specification. There may be discrepancies in teh
-- performance of the source code vs the netlist. Source
-- code is provided "as is", with no obligation on the
-- part of Xilinx to provide support.
--
-- Xilinx Hotline support of source code IP shall only
-- include standard level Xilinx Hotline support, and
-- will only address issues and questions related to the
-- standard released Netlist version of the core (and
-- thus indirectly, the original core source).
--
-- This copyright and support notice must be retained as
-- part of this text at all times.
--
-------------------------------------------------------------------------------
--
-- Filename: fifo__generator_v1_1_comp.vhd
--
-- Description: 
--  The behavioral model for the FIFO Generator core.
--                      
-------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

PACKAGE fifo_generator_v1_1_comp IS

 COMPONENT fifo_generator_v1_1 
  GENERIC (
    --------------------------------------------------------------------------------
    -- Generic Declarations (alphabetical)
    --------------------------------------------------------------------------------
    C_COMMON_CLOCK                : integer := 0;
    C_COUNT_TYPE                  : integer := 0;
    C_DATA_COUNT_WIDTH            : integer := 2;
    C_DEFAULT_VALUE               : string  := "";
    C_DIN_WIDTH                   : integer := 8;
    C_DOUT_RST_VAL                : string  := "";
    C_DOUT_WIDTH                  : integer := 8;
    C_ENABLE_RLOCS                : integer := 0;
    C_FAMILY                      : string  := "";
    C_HAS_ALMOST_EMPTY            : integer := 0;
    C_HAS_ALMOST_FULL             : integer := 0;
    C_HAS_BACKUP                  : integer := 0;
    C_HAS_DATA_COUNT              : integer := 0;
    C_HAS_MEMINIT_FILE            : integer := 0;
    C_HAS_OVERFLOW                : integer := 0;
    C_HAS_RD_DATA_COUNT           : integer := 0;
    C_HAS_RD_RST                  : integer := 0;
    C_HAS_RST                     : integer := 1;
    C_HAS_UNDERFLOW               : integer := 0;
    C_HAS_VALID                   : integer := 0;
    C_HAS_WR_ACK                  : integer := 0;
    C_HAS_WR_DATA_COUNT           : integer := 0;
    C_HAS_WR_RST                  : integer := 0;
    C_IMPLEMENTATION_TYPE         : integer := 0;
    C_INIT_WR_PNTR_VAL            : integer := 0;
    C_MEMORY_TYPE                 : integer := 1;
    C_MIF_FILE_NAME               : string  := "";
    C_OPTIMIZATION_MODE           : integer := 0;
    C_OVERFLOW_LOW                : integer := 0;
    C_PRELOAD_REGS                : integer := 0;
    C_PRELOAD_LATENCY             : integer := 1;
     C_PRIM_FIFO_TYPE             : integer := 512;
    C_PROG_EMPTY_THRESH_ASSERT_VAL: integer := 0;
    C_PROG_EMPTY_THRESH_NEGATE_VAL: integer := 0;
    C_PROG_EMPTY_TYPE             : integer := 0;
    C_PROG_FULL_THRESH_ASSERT_VAL : integer := 0;
    C_PROG_FULL_THRESH_NEGATE_VAL : integer := 0;
    C_PROG_FULL_TYPE              : integer := 0;
    C_RD_DATA_COUNT_WIDTH         : integer := 2;
    C_RD_DEPTH                    : integer := 256;
    C_RD_PNTR_WIDTH               : integer := 8;
    C_UNDERFLOW_LOW               : integer := 0;
    C_VALID_LOW                   : integer := 0;
    C_WR_ACK_LOW                  : integer := 0;
    C_WR_DATA_COUNT_WIDTH         : integer := 2;
    C_WR_DEPTH                    : integer := 256;
    C_WR_PNTR_WIDTH               : integer := 8;
    C_WR_RESPONSE_LATENCY         : integer := 1
    );


  PORT(
--------------------------------------------------------------------------------
-- Input and Output Declarations
--------------------------------------------------------------------------------
    CLK                       : IN  std_logic := '0';
    BACKUP                    : IN  std_logic := '0';
    BACKUP_MARKER             : IN  std_logic := '0';
    DIN                       : IN  std_logic_vector(C_DIN_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    PROG_EMPTY_THRESH         : IN  std_logic_vector(C_RD_PNTR_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    PROG_EMPTY_THRESH_ASSERT  : IN  std_logic_vector(C_RD_PNTR_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    PROG_EMPTY_THRESH_NEGATE  : IN  std_logic_vector(C_RD_PNTR_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    PROG_FULL_THRESH          : IN  std_logic_vector(C_WR_PNTR_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    PROG_FULL_THRESH_ASSERT   : IN  std_logic_vector(C_WR_PNTR_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    PROG_FULL_THRESH_NEGATE   : IN  std_logic_vector(C_WR_PNTR_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    RD_CLK                    : IN  std_logic := '0';
    RD_EN                     : IN  std_logic := '0';
    RD_RST                    : IN  std_logic := '0';
    RST                       : IN  std_logic := '0';
    WR_CLK                    : IN  std_logic := '0';
    WR_EN                     : IN  std_logic := '0';
    WR_RST                    : IN  std_logic := '0';

    ALMOST_EMPTY              : OUT std_logic;
    ALMOST_FULL               : OUT std_logic;
    DATA_COUNT                : OUT std_logic_vector(C_DATA_COUNT_WIDTH-1 DOWNTO 0);
    DOUT                      : OUT std_logic_vector(C_DOUT_WIDTH-1 DOWNTO 0);
    EMPTY                     : OUT std_logic;
    FULL                      : OUT std_logic;
    OVERFLOW                  : OUT std_logic;
    PROG_EMPTY                : OUT std_logic;
    PROG_FULL                 : OUT std_logic;
    VALID                     : OUT std_logic;
    RD_DATA_COUNT             : OUT std_logic_vector(C_RD_DATA_COUNT_WIDTH-1 DOWNTO 0);
    UNDERFLOW                 : OUT std_logic;
    WR_ACK                    : OUT std_logic;
    WR_DATA_COUNT             : OUT std_logic_vector(C_WR_DATA_COUNT_WIDTH-1 DOWNTO 0)
--     ; --SIM

--     DEBUG_WR_PNTR         : OUT std_logic_vector(C_WR_PNTR_WIDTH-1 DOWNTO 0); --SIM
--     DEBUG_RD_PNTR         : OUT std_logic_vector(C_RD_PNTR_WIDTH-1 DOWNTO 0); --SIM
--     DEBUG_RAM_WR_EN       : OUT std_logic; --SIM
--     DEBUG_RAM_RD_EN       : OUT std_logic; --SIM
--     debug_wr_pntr_w       : OUT std_logic_vector(C_WR_PNTR_WIDTH-1 DOWNTO 0); --SIM
--     debug_wr_pntr_plus1_w : OUT std_logic_vector(C_WR_PNTR_WIDTH-1 DOWNTO 0); --SIM
--     debug_wr_pntr_plus2_w : OUT std_logic_vector(C_WR_PNTR_WIDTH-1 DOWNTO 0); --SIM
--     debug_wr_pntr_r       : OUT std_logic_vector(C_WR_PNTR_WIDTH-1 DOWNTO 0); --SIM
--     debug_rd_pntr_r       : OUT std_logic_vector(C_RD_PNTR_WIDTH-1 DOWNTO 0); --SIM
--     debug_rd_pntr_plus1_r : OUT std_logic_vector(C_RD_PNTR_WIDTH-1 DOWNTO 0); --SIM
--     debug_rd_pntr_w       : OUT std_logic_vector(C_RD_PNTR_WIDTH-1 DOWNTO 0); --SIM
--     DEBUG_RAM_EMPTY       : OUT std_logic; --SIM
--     DEBUG_RAM_FULL        : OUT std_logic --SIM
    );
 END COMPONENT;

END fifo_generator_v1_1_comp;
