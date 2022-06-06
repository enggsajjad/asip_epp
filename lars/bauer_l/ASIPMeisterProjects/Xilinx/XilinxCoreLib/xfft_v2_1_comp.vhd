--$Header: /devl/xcs/repo/env/Databases/ip/src/com/xilinx/ip/xfft_v2_1/simulation/xfft_v2_1_comp.vhd,v 1.1.4.3 2004/05/18 12:12:06 julian Exp $
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

PACKAGE xfft_v2_1_comp IS

FUNCTION scale_sch_width( nfft_max, arch : integer ) RETURN integer;

  COMPONENT xfft_v2_1
    GENERIC (
      C_ARCH             : integer := 1;    
      C_TWIDDLE_MEM_TYPE : integer := 1; 
      C_DATA_MEM_TYPE    : integer := 1; 
      C_NFFT_MAX         : integer := 10;  
      C_HAS_BYPASS       : integer := 1; 
      C_HAS_NFFT         : integer := 1; 
      C_HAS_SCALING      : integer := 1;
      C_HAS_BFP          : integer := 1; 
      C_HAS_ROUNDING     : integer := 1;
      C_HAS_OVFLO        : integer := 0; 
      C_HAS_CE           : integer := 1;
      C_HAS_SCLR         : integer := 1; 
      C_INPUT_WIDTH      : integer := 16; 
      C_TWIDDLE_WIDTH    : integer := 16;  
      C_OUTPUT_WIDTH     : integer := 16);
    PORT (
      XN_RE        : IN std_logic_vector(C_INPUT_WIDTH-1 DOWNTO 0);
      XN_IM        : IN std_logic_vector(C_INPUT_WIDTH-1 DOWNTO 0);
      START        : IN std_logic;
      UNLOAD       : IN std_logic := '0';
      NFFT         : IN std_logic_vector(3 DOWNTO 0) := (others => '0'); 
      NFFT_WE      : IN std_logic := '0';
      FWD_INV      : IN std_logic := '1';
      FWD_INV_WE   : IN std_logic := '0';
      SCALE_SCH    : IN std_logic_vector(scale_sch_width(C_NFFT_MAX, C_ARCH)-1 DOWNTO 0) := (others => '0');
      SCALE_SCH_WE : IN std_logic := '0';
      SCLR         : IN std_logic := '0';
      CE           : IN std_logic := '1';
      CLK          : IN std_logic;
      XK_RE        : OUT std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0);
      XK_IM        : OUT std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0);
      XN_INDEX     : OUT std_logic_vector(C_NFFT_MAX-1 DOWNTO 0);
      XK_INDEX     : OUT std_logic_vector(C_NFFT_MAX-1 DOWNTO 0);
      RFD          : OUT std_logic;
      BUSY         : OUT std_logic;
      DV           : OUT std_logic;
      EDONE        : OUT std_logic;
      DONE         : OUT std_logic;
      BLK_EXP      : OUT std_logic_vector(3 DOWNTO 0);
      OVFLO        : OUT std_logic);
  END COMPONENT;

  -- The following tells XST that xfft_v2_1 is a black box which
  -- should be generated command given by the value of this attribute
  -- Note the fully qualified SIM (JAVA class) name that forms the
  -- basis of the core
  attribute box_type : string;
  attribute box_type of XFFT_v2_1 : component is "black_box";
  attribute GENERATOR_DEFAULT : string;
  attribute GENERATOR_DEFAULT of XFFT_v2_1 : component is
          "generatecore com.xilinx.ip.xfft_v2_1.xfft_v2_1";
END xfft_v2_1_comp;

PACKAGE BODY xfft_v2_1_comp IS

  FUNCTION scale_sch_width( nfft_max, arch : integer) RETURN integer IS
	  VARIABLE width : integer := 0;
  BEGIN
    if (arch = 0 or arch = 1) then
      width := (nfft_max+1)/2*2;
    else
      width := 2*nfft_max;
    end if;

    return width;
  END scale_sch_width;

END xfft_v2_1_comp;


