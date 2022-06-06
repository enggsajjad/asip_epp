-------------------------------------------------------------------------------
-- $Id: vfftv2_utils.vhd,v 1.1 2001/04/16 23:17:39 chrisd Exp $
-------------------------------------------------------------------------------
--
-- vfft_utils dummy package - for Virtex vfft v1.0 FFT VHDL
-- Behavioral Model
--
-------------------------------------------------------------------------------
-- This is a dummy package to force get_models to generate
-- the correct compile order for the Virtex-II v1.0 family of
-- FFTs. All of the Virtex FFT behv models reference this package.

library ieee;
use ieee.std_logic_1164.all;

package vfftv2_utils is

end vfftv2_utils;


-- Module Name		xdsp_cnt10
-- Synopsis		behv. model of10b counter
-- Author 		Dr Chris Dick
-- Creation Date: 	11/21/99
-- Comments: 		
-- Modification History

-- ************************************************************************
--  Copyright 1996-1998 - Xilinx, Inc.
--  All rights reserved.
-- ************************************************************************

library ieee;
	use ieee.std_logic_1164.all;
	use ieee.std_logic_arith.all;
	use ieee.std_logic_unsigned.all;
	use std.textio.all;
	
library xilinxcorelib;
	use xilinxcorelib.ul_utils.all;

entity xdsp_cnt10V2 is
  port( clk 	: in  std_logic;
        ce 	: in  std_logic;
        sclr 	: IN  std_logic;        
        q 	: out std_logic_vector(9 downto 0));
end xdsp_cnt10V2;

architecture behv of xdsp_cnt10V2 is
constant w: integer := 10;

	signal	cntr		: std_logic_vector(w-1 downto 0);
begin
	
process(clk,sclr,ce)
begin
	if clk'event and clk = '1' then
	    if sclr = '1' then
		cntr <= (others => '0');
	    elsif ce = '1' then
		cntr <= cntr + 1;
	    end if;
	end if;
end process;

	q <= cntr;
	
end behv;

-- Module Name		xdsp_cnt11
-- Synopsis		behv. model of11b counter
-- Author 		Dr Chris Dick
-- Creation Date: 	11/21/99
-- Comments: 		
-- Modification History

-- ************************************************************************
--  Copyright 1996-1998 - Xilinx, Inc.
--  All rights reserved.
-- ************************************************************************

library ieee;
	use ieee.std_logic_1164.all;
	use ieee.std_logic_arith.all;
	use ieee.std_logic_unsigned.all;
	use std.textio.all;
	
library xilinxcorelib;
use xilinxcorelib.ul_utils.all;

entity xdsp_cnt11V2 is
  port( clk 	: in  std_logic;
        ce 	: in  std_logic;
        sclr 	: IN  std_logic;        
        q 	: out std_logic_vector(10 downto 0));
end xdsp_cnt11V2;

architecture behv of xdsp_cnt11V2 is
constant w: integer := 11;

	signal	cntr		: std_logic_vector(w-1 downto 0);
begin
	
process(clk,sclr,ce)
begin
	if clk'event and clk = '1' then
	    if sclr = '1' then
		cntr <= (others => '0');
	    elsif ce = '1' then
		cntr <= cntr + 1;
	    end if;
	end if;
end process;

	q <= cntr;
	
end behv;

-- Module Name		rsub16
-- Synopsis		behv. model of baseblox 2b counter
-- Author 		Dr Chris Dick
-- Creation Date: 	11/20/99
-- Comments: 		
-- Modification History

-- ************************************************************************
--  Copyright 1996-1998 - Xilinx, Inc.
--  All rights reserved.
-- ************************************************************************

library ieee;
	use ieee.std_logic_1164.all;
	use ieee.std_logic_arith.all;
	use ieee.std_logic_unsigned.all;
	use std.textio.all;
	
library xilinxcorelib;
	use xilinxcorelib.ul_utils.all;

entity xdsp_cnt2v2 IS
  port( clk 	: in  std_logic;
        ce 	: in  std_logic;
        sclr 	: IN  std_logic;        
        q 	: out std_logic_vector(1 downto 0) := (others => '0'));
end xdsp_cnt2v2;

architecture behv of xdsp_cnt2v2 is
constant w: integer := 2;

	signal	cntr		: std_logic_vector(w-1 downto 0);
begin
	
process(clk,sclr,ce)
begin
	if sclr = '1' then
		cntr <= (others => '0');
	elsif clk'event and clk = '1' then
		if ce = '1' then
			cntr <= cntr + 1;	
		end if;
	end if;
end process;

	q <= cntr;
	
end behv;

-- Module Name		rsub16
-- Synopsis		behv. model of baseblox 5b counter
-- Author 		Dr Chris Dick
-- Creation Date: 	11/20/99
-- Comments: 		
-- Modification History

-- ************************************************************************
--  Copyright 1996-1998 - Xilinx, Inc.
--  All rights reserved.
-- ************************************************************************

library ieee;
	use ieee.std_logic_1164.all;
	use ieee.std_logic_arith.all;
	use ieee.std_logic_unsigned.all;
	use std.textio.all;
	
library xilinxcorelib;
	use xilinxcorelib.ul_utils.all;

entity xdsp_cnt4v2 IS
  port( clk 	: in  std_logic;
        ce 	: in  std_logic;
        sclr 	: IN  std_logic;        
        q 	: out std_logic_vector(3 downto 0) := (others => '0'));
end xdsp_cnt4v2;

architecture behv of xdsp_cnt4v2 is
constant w: integer := 4;

	signal	cntr		: std_logic_vector(w-1 downto 0);
begin
	
process(clk,sclr,ce)
begin
	if sclr = '1' then
		cntr <= (others => '0');
	elsif clk'event and clk = '1' then
		if ce = '1' then
			cntr <= cntr + 1;	
		end if;
	end if;
end process;

	q <= cntr;
	
end behv;

-- Module Name		rsub16
-- Synopsis		behv. model of baseblox 5b counter
-- Author 		Dr Chris Dick
-- Creation Date: 	11/20/99
-- Comments: 		
-- Modification History

-- ************************************************************************
--  Copyright 1996-1998 - Xilinx, Inc.
--  All rights reserved.
-- ************************************************************************

library ieee;
	use ieee.std_logic_1164.all;
	use ieee.std_logic_arith.all;
	use ieee.std_logic_unsigned.all;
	use std.textio.all;
	
library xilinxcorelib;
	use xilinxcorelib.ul_utils.all;

entity xdsp_cnt5v2 IS
  port( clk 	: in  std_logic;
        ce 	: in  std_logic;
        sclr 	: IN  std_logic;        
        q 	: out std_logic_vector(4 downto 0) := (others => '0'));
end xdsp_cnt5v2;

architecture behv of xdsp_cnt5v2 is
constant w: integer := 5;

	signal	cntr		: std_logic_vector(w-1 downto 0);
begin
	
process(clk,sclr,ce)
begin
	if sclr = '1' then
		cntr <= (others => '0');
	elsif clk'event and clk = '1' then
		if ce = '1' then
			cntr <= cntr + 1;	
		end if;
	end if;
end process;

	q <= cntr;
	
end behv;

-- Module Name		xdsp_cnt8
-- Synopsis		behv. model of baseblox 8b counter
-- Author 		Dr Chris Dick
-- Creation Date: 	11/21/99
-- Comments: 		
-- Modification History

-- ************************************************************************
--  Copyright 1996-1998 - Xilinx, Inc.
--  All rights reserved.
-- ************************************************************************

library ieee;
	use ieee.std_logic_1164.all;
	use ieee.std_logic_arith.all;
	use ieee.std_logic_unsigned.all;
	use std.textio.all;
	
library xilinxcorelib;
use xilinxcorelib.ul_utils.all;

entity xdsp_cnt8V2 is
  port( clk 	: in  std_logic;
        ce 	: in  std_logic;
        sclr 	: IN  std_logic;        
        q 	: out std_logic_vector(7 downto 0));
end xdsp_cnt8V2;

architecture behv of xdsp_cnt8V2 is
constant w: integer := 8;

	signal	cntr		: std_logic_vector(w-1 downto 0);
begin
	
process(clk,sclr,ce)
begin
	if clk'event and clk = '1' then
	    if sclr = '1' then
		cntr <= (others => '0');
	    elsif ce = '1' then
		cntr <= cntr + 1;
	    end if;
	end if;
end process;

	q <= cntr;
	
end behv;

-- output of CoreGen module generator
-- $Header: /devl/xcs/repo/env/Databases/ip/src/com/xilinx/ip/vfft_v2_0/simulation/vfftv2_utils.vhd,v 1.1 2001/04/16 23:17:39 chrisd Exp $
-- *****************************************************************
--  Copyright 1997-1998 - Xilinx, Inc.
--  All rights reserved.
-- *****************************************************************
--
--  Description:
--    Behaviorial Model for 16 words by xx ROM LUT
--

library ieee;
use ieee.std_logic_1164.all;
--  
library xilinxcorelib;
use xilinxcorelib.ul_utils.all;
--
ENTITY xdsp_cos1024v2 IS  
  PORT (a	: IN STD_LOGIC_VECTOR(8-1 DOWNTO 0);
        clk	: IN STD_LOGIC;
        qspo_ce	: IN STD_LOGIC := default_fdce_ce;
        --clr	: IN STD_LOGIC := default_fdce_clr;
        qspo	: OUT STD_LOGIC_VECTOR(15-1 DOWNTO 0));
END xdsp_cos1024v2;
--
--  behavior describing a parameterized ROM
ARCHITECTURE behv OF xdsp_cos1024v2 IS
--
CONSTANT width: INTEGER := 15;
CONSTANT depth: INTEGER := 256;
CONSTANT adrwid: INTEGER := 8;
CONSTANT usetbufrlocs: BOOLEAN := false;
CONSTANT rloc_x: rloctype := default_rloc;
CONSTANT rloc_y: rloctype := default_rloc;
CONSTANT userpm: rpmflagtype := yes_rpm;
CONSTANT huset : husettype := default_huset;
CONSTANT memdata: memdatatype(0 TO 255) := 
            (0,
            1,
            2,
            6,
            10,
            15,
            22,
            30,
            39,
            50,
            62,
            75,
            89,
            104,
            121,
            139,
            158,
            178,
            200,
            222,
            246,
            272,
            298,
            326,
            355,
            385,
            416,
            449,
            482,
            517,
            554,
            591,
            630,
            669,
            710,
            753,
            796,
            841,
            887,
            934,
            982,
            1031,
            1082,
            1134,
            1187,
            1241,
            1297,
            1353,
            1411,
            1470,
            1530,
            1591,
            1654,
            1718,
            1782,
            1848,
            1915,
            1984,
            2053,
            2124,
            2196,
            2269,
            2343,
            2418,
            2494,
            2572,
            2650,
            2730,
            2811,
            2893,
            2976,
            3061,
            3146,
            3233,
            3320,
            3409,
            3499,
            3590,
            3682,
            3775,
            3869,
            3965,
            4061,
            4158,
            4257,
            4357,
            4457,
            4559,
            4662,
            4766,
            4871,
            4977,
            5084,
            5192,
            5301,
            5411,
            5522,
            5635,
            5748,
            5862,
            5977,
            6094,
            6211,
            6329,
            6448,
            6569,
            6690,
            6812,
            6935,
            7060,
            7185,
            7311,
            7438,
            7566,
            7695,
            7825,
            7956,
            8088,
            8220,
            8354,
            8489,
            8624,
            8760,
            8898,
            9036,
            9175,
            9315,
            9456,
            9598,
            9740,
            9884,
            10028,
            10173,
            10319,
            10466,
            10614,
            10762,
            10912,
            11062,
            11213,
            11365,
            11517,
            11671,
            11825,
            11980,
            12136,
            12293,
            12450,
            12608,
            12767,
            12927,
            13087,
            13248,
            13410,
            13573,
            13736,
            13900,
            14065,
            14230,
            14396,
            14563,
            14731,
            14899,
            15068,
            15237,
            15407,
            15578,
            15750,
            15922,
            16095,
            16268,
            16442,
            16617,
            16792,
            16968,
            17144,
            17321,
            17499,
            17677,
            17856,
            18035,
            18215,
            18395,
            18576,
            18758,
            18940,
            19122,
            19305,
            19489,
            19673,
            19858,
            20043,
            20228,
            20414,
            20601,
            20788,
            20975,
            21163,
            21351,
            21540,
            21729,
            21918,
            22108,
            22299,
            22489,
            22680,
            22872,
            23064,
            23256,
            23449,
            23641,
            23835,
            24028,
            24222,
            24417,
            24611,
            24806,
            25001,
            25197,
            25392,
            25588,
            25785,
            25981,
            26178,
            26375,
            26573,
            26770,
            26968,
            27166,
            27364,
            27563,
            27761,
            27960,
            28159,
            28358,
            28557,
            28757,
            28956,
            29156,
            29356,
            29556,
            29756,
            29957,
            30157,
            30357,
            30558,
            30759,
            30959,
            31160,
            31361,
            31562,
            31763,
            31964,
            32165,
            32366,
            32567);
--
BEGIN
-- 
 PROCESS (clk,qspo_ce)
 variable	clr : std_logic := '0'; 
 BEGIN
   IF (rat(clr) = 'X') THEN
     qspo <= setallX(width);
   ELSIF (rat(clr) = '1') THEN
     qspo <= setall0(width);
   ELSIF (rat(clk) = 'X' AND rat(clk'LAST_VALUE) /= 'X' AND rat(qspo_ce) /= '0') THEN
     qspo <= setallX(width);
   ELSIF (clk'EVENT and rat(clk) = '1' AND rat(clk'LAST_VALUE) = '0') THEN
     IF (rat(qspo_ce) = 'X') THEN
       qspo <= setallX(width);
     ELSIF (rat(qspo_ce) = '1') THEN
       IF (anyX(a)) THEN
         qspo <= setallX(width);
       ELSE
         qspo <= int_2_std_logic_vector(memdata(std_logic_vector_2_posint(a)), width);
       END IF;
     END IF;
   END IF;
 END PROCESS;
END behv;
-- output of CoreGen module generator
-- $Header: /devl/xcs/repo/env/Databases/ip/src/com/xilinx/ip/vfft_v2_0/simulation/vfftv2_utils.vhd,v 1.1 2001/04/16 23:17:39 chrisd Exp $
-- *****************************************************************
--  Copyright 1997-1998 - Xilinx, Inc.
--  All rights reserved.
-- *****************************************************************
--
--  Description:
--    Behaviorial Model for 16 words by xx ROM LUT
--

library ieee;
use ieee.std_logic_1164.all;
--  
library xilinxcorelib;
use xilinxcorelib.ul_utils.all;
--
ENTITY xdsp_cos256V2 IS  
  PORT (a	: IN STD_LOGIC_VECTOR(6-1 DOWNTO 0);
        clk	: IN STD_LOGIC;
        qspo_ce	: IN STD_LOGIC := default_fdce_ce;
        qspo	: OUT STD_LOGIC_VECTOR(15-1 DOWNTO 0));
END xdsp_cos256V2;
--
--  behavior describing a parameterized ROM
ARCHITECTURE behv OF xdsp_cos256V2 IS
--
CONSTANT width: INTEGER := 15;
CONSTANT depth: INTEGER := 64;
CONSTANT adrwid: INTEGER := 6;
CONSTANT usetbufrlocs: BOOLEAN := false;
CONSTANT rloc_x: rloctype := default_rloc;
CONSTANT rloc_y: rloctype := default_rloc;
CONSTANT userpm: rpmflagtype := yes_rpm;
CONSTANT huset : husettype := default_huset;
CONSTANT memdata: memdatatype(0 TO 255) := 
            (0,
            10,
            39,
            89,
            158,
            246,
            355,
            482,
            630,
            796,
            982,
            1187,
            1411,
            1654,
            1915,
            2196,
            2494,
            2811,
            3146,
            3499,
            3869,
            4257,
            4662,
            5084,
            5522,
            5977,
            6448,
            6935,
            7438,
            7956,
            8489,
            9036,
            9598,
            10173,
            10762,
            11365,
            11980,
            12608,
            13248,
            13900,
            14563,
            15237,
            15922,
            16617,
            17321,
            18035,
            18758,
            19489,
            20228,
            20975,
            21729,
            22489,
            23256,
            24028,
            24806,
            25588,
            26375,
            27166,
            27960,
            28757,
            29556,
            30357,
            31160,
            31964,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0);
--
BEGIN
-- 
 PROCESS (clk)
 variable	clr : std_logic := '0'; 
 BEGIN
   IF (rat(clr) = 'X') THEN
     qspo <= setallX(width);
   ELSIF (rat(clr) = '1') THEN
     qspo <= setall0(width);
   ELSIF (rat(clk) = 'X' AND rat(clk'LAST_VALUE) /= 'X' AND rat(qspo_ce) /= '0') THEN
     qspo <= setallX(width);
   ELSIF (clk'EVENT and rat(clk) = '1' AND rat(clk'LAST_VALUE) = '0') THEN
     IF (rat(qspo_ce) = 'X') THEN
       qspo <= setallX(width);
     ELSIF (rat(qspo_ce) = '1') THEN
       IF (anyX(a)) THEN
         qspo <= setallX(width);
       ELSE
         qspo <= int_2_std_logic_vector(memdata(std_logic_vector_2_posint(a)), width);
       END IF;
     END IF;
   END IF;
 END PROCESS;
END behv;
-- Module Name		coss16
-- Synopsis		behv. model of baseblox ROM
-- Author 		Dr Chris Dick
-- Creation Date: 	4/23/99
-- Comments: 		design based on behv model from Coregen v1.5
-- Modification History

-- ************************************************************************
--  Copyright 1996-1999 - Xilinx, Inc.
--  All rights reserved.
-- ************************************************************************


library ieee;
use ieee.std_logic_1164.all;
--  
library xilinxcorelib;
use xilinxcorelib.ul_utils.all;
--
ENTITY xdsp_coss16v2 IS  
  PORT (a	: IN STD_LOGIC_VECTOR(4-1 DOWNTO 0);
        clk	: IN STD_LOGIC;
        qspo_ce	: IN STD_LOGIC := default_fdce_ce;
        --clr	: IN STD_LOGIC := default_fdce_clr;
        qspo	: OUT STD_LOGIC_VECTOR(16-1 DOWNTO 0) := (others => '0'));
END xdsp_coss16v2;
--
--  behavior describing a parameterized ROM
ARCHITECTURE behv OF xdsp_coss16v2 IS
--
CONSTANT width: INTEGER := 16;
CONSTANT depth: INTEGER := 16;
CONSTANT adrwid: INTEGER := 4;
CONSTANT usetbufrlocs: BOOLEAN := false;
CONSTANT rloc_x: rloctype := default_rloc;
CONSTANT rloc_y: rloctype := default_rloc;
CONSTANT userpm: rpmflagtype := yes_rpm;
CONSTANT huset : husettype := default_huset;
CONSTANT memdata: memdatatype(0 TO 255) := 
            (32768,
            32768,
            32768,
            32768,
            32768,
            30274,
            23170,
            12540,
            32768,
            23170,
            0,
            42366,
            32768,
            12540,
            42366,
            35262,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0);
--
BEGIN
-- 
 PROCESS (clk)
 	variable clr	: std_logic := '0';
 BEGIN
   IF (rat(clr) = 'X') THEN
     qspo <= (others => '0');			--setallX(width);
   ELSIF (rat(clr) = '1') THEN
     qspo <= setall0(width);
   ELSIF (rat(clk) = 'X' AND rat(clk'LAST_VALUE) /= 'X' AND rat(qspo_ce) /= '0') THEN
     qspo <= (others => '0');			--setallX(width);
   ELSIF (clk'EVENT and rat(clk) = '1' AND rat(clk'LAST_VALUE) = '0') THEN
     IF (rat(qspo_ce) = 'X') THEN
       qspo <= (others => '0');			--setallX(width);
     ELSIF (rat(qspo_ce) = '1') THEN
       IF (anyX(a)) THEN
         qspo <= (others => '0');		--setallX(width);
       ELSE
         qspo <= int_2_std_logic_vector(memdata(std_logic_vector_2_posint(a)), width);
       END IF;
     END IF;
   END IF;
 END PROCESS;
END behv;
-- Module Name		xdsp_cnt8
-- Synopsis		behv. model of baseblox 8b counter
-- Author 		Dr Chris Dick
-- Creation Date: 	11/21/99
-- Comments: 		
-- Modification History

-- ************************************************************************
--  Copyright 1996-1998 - Xilinx, Inc.
--  All rights reserved.
-- ************************************************************************

library ieee;
	use ieee.std_logic_1164.all;
	use ieee.std_logic_arith.all;
	use ieee.std_logic_unsigned.all;
	use std.textio.all;
	
library xilinxcorelib;
use xilinxcorelib.ul_utils.all;

entity xdsp_lcnt10V2 is
  port( clk 	: in  std_logic;
  		ce 	: in  std_logic;  
  		ld  : in std_logic;
		d   : in std_logic_vector(9 downto 0);
        sclr 	: IN  std_logic;        
        q 	: out std_logic_vector(9 downto 0));
end xdsp_lcnt10V2;

architecture behv of xdsp_lcnt10V2 is
constant w: integer := 10;

	signal	cntr		: std_logic_vector(w-1 downto 0);
begin
	
process(clk,sclr,ce,ld)
begin
	if clk'event and clk = '1' then
	    if sclr = '1' then
		cntr <= (others => '0');
	    elsif ce = '1' then	
			if ld = '1' then
				cntr <=d;
			else
		        cntr <= cntr + 1;  
			end if;
	    end if;
	end if;
end process;

	q <= cntr;
	
end behv;

-- Module Name		xdsp_cnt8
-- Synopsis		behv. model of baseblox 8b counter
-- Author 		Dr Chris Dick
-- Creation Date: 	11/21/99
-- Comments: 		
-- Modification History

-- ************************************************************************
--  Copyright 1996-1998 - Xilinx, Inc.
--  All rights reserved.
-- ************************************************************************

library ieee;
	use ieee.std_logic_1164.all;
	use ieee.std_logic_arith.all;
	use ieee.std_logic_unsigned.all;
	use std.textio.all;
	
library xilinxcorelib;
use xilinxcorelib.ul_utils.all;

entity xdsp_lcnt3V2 is
  port( clk 	: in  std_logic;
  		ce 	: in  std_logic;  
  		ld  : in std_logic;
		d   : in std_logic_vector(2 downto 0);
        sclr 	: IN  std_logic;        
        q 	: out std_logic_vector(2 downto 0));
end xdsp_lcnt3V2;

architecture behv of xdsp_lcnt3V2 is
constant w: integer := 3;

	signal	cntr		: std_logic_vector(w-1 downto 0);
begin
	
process(clk,sclr,ce,ld)
begin
	if clk'event and clk = '1' then
	    if sclr = '1' then
		cntr <= (others => '0');
	    elsif ce = '1' then	
			if ld = '1' then
				cntr <=d;
			else
		        cntr <= cntr + 1;  
			end if;
		end if;
	end if;
end process;

	q <= cntr;
	
end behv;

-- Module Name		xdsp_cnt8
-- Synopsis		behv. model of baseblox 8b counter
-- Author 		Dr Chris Dick
-- Creation Date: 	11/21/99
-- Comments: 		
-- Modification History

-- ************************************************************************
--  Copyright 1996-1998 - Xilinx, Inc.
--  All rights reserved.
-- ************************************************************************

library ieee;
	use ieee.std_logic_1164.all;
	use ieee.std_logic_arith.all;
	use ieee.std_logic_unsigned.all;
	use std.textio.all;
	
library xilinxcorelib;
use xilinxcorelib.ul_utils.all;

entity xdsp_lcnt8V2 is
  port( clk 	: in  std_logic;
  		ce 	: in  std_logic;  
  		ld  : in std_logic;
		d   : in std_logic_vector(7 downto 0);
        sclr 	: IN  std_logic;        
        q 	: out std_logic_vector(7 downto 0));
end xdsp_lcnt8V2;

architecture behv of xdsp_lcnt8V2 is
constant w: integer := 8;

	signal	cntr		: std_logic_vector(w-1 downto 0);
begin
	
process(clk,sclr,ce,ld)
begin
	if clk'event and clk = '1' then
	    if sclr = '1' then
		cntr <= (others => '0');
	    elsif ce = '1' then	
			if ld = '1' then
				cntr <=d;
			else
		        cntr <= cntr + 1;  
			end if;
	    end if;
	end if;
end process;

	q <= cntr;
	
end behv;

-- output of CoreGen module generator
-- $Header: /devl/xcs/repo/env/Databases/ip/src/com/xilinx/ip/vfft_v2_0/simulation/vfftv2_utils.vhd,v 1.1 2001/04/16 23:17:39 chrisd Exp $
-- ************************************************************************
--  Copyright 1996-1998 - Xilinx, Inc.
--  All rights reserved.
-- ************************************************************************
--
--  Description:
--    Variable operand multiplier
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

library xilinxcorelib;
use xilinxcorelib.ul_utils.all;

entity xdsp_mul16x17V2 is
  port( b        : in  std_logic_vector( 17 - 1 downto 0 );
        a        : in  std_logic_vector( 16 - 1 downto 0 );
        clk      : in  std_logic;
        ce       : in  std_logic;
        p	 : out std_logic_vector( (17 + 16 -1) downto 0));
end xdsp_mul16x17V2;

architecture behv of xdsp_mul16x17V2 is
  constant aw : integer := 17;
  constant bw : integer := 16;
  constant signed : boolean := true;

  function level_nums(n: integer) return integer is  
  begin
    case n is
      when 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 => return 4;
      when 5 | 6 | 7 | 8 => return 3;
      when 3 | 4 => return 2;
      when 1 | 2 => return 1;
      when others => assert (false)
          report "The function level_nums recd an invalid param " & int_2_string(n)
                  severity error;
          return 0;
    end case;
  end level_nums;

  function convert_abs_2_two_comp(vect : std_logic_vector)
    return std_logic_vector is

  variable local_vect : std_logic_vector(vect'HIGH downto 0);
  begin

    -- ones complement first
    for i in 0 to vect'high loop
      if (vect(i) = '0') then
        local_vect(i) := '1';
      else
        local_vect(i) := '0';
      end if;
    end loop;
    
    -- add 1 and carry to next hight bit
    for i in 0 to vect'high loop
      if (local_vect(i) = '0') then
        local_vect(i) := '1';
        exit;
      else
        local_vect(i) := '0';

      end if;
    end loop;

    return local_vect;
 
  end convert_abs_2_two_comp ;

type data_array is array(level_nums((bw+1)/2) +1  downto 0) of 
                         std_logic_vector(aw+bw -1 downto 0);

begin

  process
    variable setup      : boolean := TRUE;
    variable va         : std_logic_vector( aw - 1 downto 0 );
    variable vb         : std_logic_vector( bw - 1 downto 0 );
    variable vprod      : std_logic_vector( aw+bw - 1 downto 0 );
    variable cin        : std_logic;
    variable value      : std_logic;
    variable s          : data_array;
    variable negative   : boolean;
    variable i,j        : integer;
    variable a_value    : integer;
    variable b_value    : integer;
    variable prod_value : integer;
    variable index      : integer;
    variable clk_cycles : integer;

  begin

    clk_cycles := level_nums((bw+1)/2) + 2 ;

    if (setup = TRUE) then
      for i in clk_cycles-1 downto 0 loop
        s(i) := setall0(aw+bw);
      end loop;
      setup := FALSE;


    elsif (rat(clk) = 'X' AND rat(ce) /= '0' AND rat(clk'LAST_VALUE)/='X') then
      for i in clk_cycles-1 downto 0 loop
        s(i) := setallX(aw+bw);
      end loop;

    elsif (clk'event and rat(clk)='1' and rat(clk'last_value)='0') then

      if (rat(ce)='X') then
        vprod := setallX(aw+bw);

      elsif (rat(ce)='1') then
        if (anyX(a) or anyX(b)) then
          vprod := setallX(aw+bw);
        else
          negative := FALSE;
          vb := std_logic_vector_2_var(a);
          va := std_logic_vector_2_var(b);
          if (signed) then
            if ( (va(aw-1) xor vb(bw-1)) = '1' ) then
              negative := TRUE;
            end if ;
            if (va(aw-1) = '1') then
              va := two_comp(va);
            end if ; 
            if (vb(bw-1) = '1') then
              vb := two_comp(vb);
            end if ; 
          end if;
          vprod := setall0(aw+bw);
          if ( aw + bw < 32 ) then
            a_value := std_logic_vector_2_posint(va);
            b_value := std_logic_vector_2_posint(vb);
            prod_value := a_value * b_value; 
            vprod := int_2_std_logic_vector(prod_value,aw+bw);
          else
            for i in 0 to bw -1 loop -- bw width
              if (vb(i) = '1') then
                index := i;
                cin := '0';
                for j in 0 to aw-1 loop  -- add a to prod 
                  value := vprod(index) xor va(j) xor cin; -- sum
                  cin := (vprod(index) and va(j)) or (vprod(index) and cin) or 
                         (va(j) and cin); -- carry
                  vprod(index) := value;
                  index := index + 1;
                end loop;
                vprod(index) := vprod(index) xor cin; -- last carry 
              else
                cin := '0';
              end if;        
            end loop;
          end if;
          if (negative) then
            vprod := convert_abs_2_two_comp(vprod);
          end if;
        end if;

      end if;

      if ce = '1'then	
          for i in clk_cycles-2 downto 0 loop
              s(i+1) := s(i);
          end loop;
          s(0) := vprod;
      end if;
      
    end if;

    p <= s(clk_cycles-1);

    wait on clk;

  end process;

end behv;

-- Module Name		mux2w16
-- Synopsis		behv. model of baseblox registered 2:1 16b mux
-- Author 		Dr Chris Dick
-- Creation Date: 	5/3/99
-- Comments: 		design based on behv model from Coregen v1.5
-- Modification History

-- ************************************************************************
--  Copyright 1996-1999 - Xilinx, Inc.
--  All rights reserved.
-- ************************************************************************                 

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

library xilinxcorelib;
	use xilinxcorelib.ul_utils.all;

ENTITY xdsp_mux2w16rV2 IS
  PORT( ma	 : IN  std_logic_vector( 16 - 1 DOWNTO 0 );
        mb 	 : IN  std_logic_vector( 16 - 1 DOWNTO 0 );
        clk	 : in std_logic;
        ce	 : in std_logic;
        s       : IN  std_logic_vector(0 downto 0);
        q 	 : OUT std_logic_vector( 16 - 1 DOWNTO 0 ) );
END xdsp_mux2w16rV2;


ARCHITECTURE behv OF xdsp_mux2w16rV2 IS
CONSTANT w: integer := 16;
BEGIN
 process (clk, ma, mb, s)
 begin
 	if clk'event and clk = '1' then
 	    if ce = '1' then
  		case rat(s(0)) is
   			WHEN '0' => q <= ma;
    			WHEN '1' => q <= mb;
    			WHEN OTHERS => q <= setallX(w);
  		end case;
 	    end if;
  	end if;
 end process;
end behv;
 

-- Module Name		mux2w16
-- Synopsis		behv. model of baseblox registered 2:1 16b mux
-- Author 		Dr Chris Dick
-- Creation Date: 	5/3/99
-- Comments: 		design based on behv model from Coregen v1.5
-- Modification History

-- ************************************************************************
--  Copyright 1996-1999 - Xilinx, Inc.
--  All rights reserved.
-- ************************************************************************                 

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

library xilinxcorelib;
	use xilinxcorelib.ul_utils.all;

ENTITY xdsp_mux2w16r_sclrV2 IS
  PORT( ma	 : IN std_logic_vector( 16 - 1 DOWNTO 0 );
        mb 	 : IN std_logic_vector( 16 - 1 DOWNTO 0 );
        clk	 : in std_logic;
        ce	 : in std_logic;
        sclr	 : IN std_logic;
        s        : IN std_logic;	
        q 	 : OUT std_logic_vector( 16 - 1 DOWNTO 0 ) );
END xdsp_mux2w16r_sclrV2;


ARCHITECTURE behv OF xdsp_mux2w16r_sclrV2 IS
CONSTANT w: integer := 16;
BEGIN
 process (clk, ma, mb, s, sclr)
 begin
 	if clk'event and clk = '1' then
 	    if sclr = '1' then
 	    	q <= (others => '0');
 	    elsif ce = '1' then
  		case rat(s) is
   			WHEN '0' => q <= ma;
    			WHEN '1' => q <= mb;
    			WHEN OTHERS => q <= setallX(w);
  		end case;
 	    end if;
  	end if;
 end process;
end behv;
 

-- Module Name		mux2w16
-- Synopsis		behv. model of baseblox 2:1 16b mux
-- Author 		Dr Chris Dick
-- Creation Date: 	5/3/99
-- Comments: 		design based on behv model from Coregen v1.5
-- Modification History

-- ************************************************************************
--  Copyright 1996-1999 - Xilinx, Inc.
--  All rights reserved.
-- ************************************************************************                 

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

library xilinxcorelib;
use xilinxcorelib.ul_utils.all;

ENTITY xdsp_mux2w16v2 IS
  PORT( ma	 : IN  std_logic_vector( 16 - 1 DOWNTO 0 );
        mb 	 : IN  std_logic_vector( 16 - 1 DOWNTO 0 );
        sel      : IN  std_logic;
        o 	 : OUT std_logic_vector( 16 - 1 DOWNTO 0 ) );
END xdsp_mux2w16v2;


ARCHITECTURE behv OF xdsp_mux2w16v2 IS
CONSTANT w: integer := 16;
BEGIN
 process (ma, mb, sel)
 begin
  case rat(sel) is
    WHEN '0' => o <= ma;
    WHEN '1' => o <= mb;
    WHEN OTHERS => o <= (others => '0');		--setallX(w);
  end case;
 end process;
end behv;
 

-- 2:1 1-bit wide multiplexor

library ieee;
	use ieee.std_logic_1164.all;
	use ieee.std_logic_arith.all;
	use ieee.std_logic_unsigned.all;
	
entity xdsp_mux2w1V2 is
	port (
		a		: in std_logic;	-- mux operand inputs
		b		: in std_logic;
		s0		: in std_logic;	-- mux sel
		y		: out std_logic	-- mux output signal
	);
end xdsp_mux2w1V2;

architecture mux1 of xdsp_mux2w1V2 is

begin
		y <= a when s0='0' else
		     b;
end mux1;		   
-- 2:1 1-bit wide multiplexor

library ieee;
	use ieee.std_logic_1164.all;
	use ieee.std_logic_arith.all;
	use ieee.std_logic_unsigned.all;
	
entity xdsp_mux2w2V2 is
	port (
		ma		: in std_logic_vector(1 downto 0);	-- mux operand inputs
		mb		: in std_logic_vector(1 downto 0);
		s		: in std_logic;	-- mux sel
		q		: out std_logic_vector(1 downto 0)	-- mux output signal
	);
end xdsp_mux2w2V2;

architecture mux1 of xdsp_mux2w2V2 is

begin
		q <= ma when s='0' else
		     mb;
end mux1;		   
-- Module Name		mux2w16
-- Synopsis		behv. model of baseblox 2:1 4b mux
-- Author 		Dr Chris Dick
-- Creation Date: 	5/3/99
-- Comments: 		design based on behv model from Coregen v1.5
-- Modification History

-- ************************************************************************
--  Copyright 1996-1999 - Xilinx, Inc.
--  All rights reserved.
-- ************************************************************************                             

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

library xilinxcorelib;
use xilinxcorelib.ul_utils.all;

ENTITY xdsp_mux2w4rV2 IS
  PORT( ma 	: IN  std_logic_vector( 4 - 1 DOWNTO 0 );
        mb	: IN  std_logic_vector( 4 - 1 DOWNTO 0 );
        clk	: in std_logic;
        ce	: in std_logic;
        s	: IN  std_logic_vector(0 downto 0);
        q	: OUT std_logic_vector( 4 - 1 DOWNTO 0 ) );
END xdsp_mux2w4rV2;


ARCHITECTURE behv OF xdsp_mux2w4rV2 IS
CONSTANT w: integer := 4;
BEGIN
 process (clk, ma, mb, s)
 begin
 	if clk'event and clk = '1' then
 	    if ce = '1' then
  		case rat(s(0)) is
   			WHEN '0' => q <= ma;
    			WHEN '1' => q <= mb;
    			WHEN OTHERS => q <= setallX(w);
  		end case;
 	    end if;
  	end if;
 end process;
end behv;
 

-- Module Name		mux2w16
-- Synopsis		behv. model of baseblox 2:1 4b mux
-- Author 		Dr Chris Dick
-- Creation Date: 	5/3/99
-- Comments: 		design based on behv model from Coregen v1.5
-- Modification History

-- ************************************************************************
--  Copyright 1996-1999 - Xilinx, Inc.
--  All rights reserved.
-- ************************************************************************                             

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

library xilinxcorelib;
use xilinxcorelib.ul_utils.all;

ENTITY xdsp_mux2w4v2 IS
  PORT( ma 	: IN  std_logic_vector( 4 - 1 DOWNTO 0 );
        mb	: IN  std_logic_vector( 4 - 1 DOWNTO 0 );
        sel	: IN  std_logic;
        o	: OUT std_logic_vector( 4 - 1 DOWNTO 0 ) );
END xdsp_mux2w4v2;


ARCHITECTURE behv OF xdsp_mux2w4v2 IS
CONSTANT w: integer := 4;
BEGIN
 process (ma, mb, sel)
 begin
  case rat(sel) is
    WHEN '0' => o <= ma;
    WHEN '1' => o <= mb;
    WHEN OTHERS => o <= (others => '0');		--setallX(w);
  end case;
 end process;
end behv;
 

-- Module Name		mux2w16
-- Synopsis		behv. model of baseblox registered 2:1 16b mux
-- Author 		Dr Chris Dick
-- Creation Date: 	5/3/99
-- Comments: 		design based on behv model from Coregen v1.5
-- Modification History

-- ************************************************************************
--  Copyright 1996-1999 - Xilinx, Inc.
--  All rights reserved.
-- ************************************************************************                 

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

library xilinxcorelib;
	use xilinxcorelib.ul_utils.all;

ENTITY xdsp_mux2w8rV2 IS
  PORT( ma	 : IN  std_logic_vector( 8 - 1 DOWNTO 0 );
        mb 	 : IN  std_logic_vector( 8 - 1 DOWNTO 0 );
        clk	 : in std_logic;
        ce	 : in std_logic;	   
		sclr : in std_logic;
        s       : IN  std_logic;
        q 	 : OUT std_logic_vector( 8 - 1 DOWNTO 0 ) );
END xdsp_mux2w8rV2;


ARCHITECTURE behv OF xdsp_mux2w8rV2 IS
CONSTANT w: integer := 8;
BEGIN
 process (clk, ma, mb, s)
 begin
 	if clk'event and clk = '1' then	
		if sclr = '1' then
			 q <= setall0(w);
 	    elsif ce = '1' then
  		case rat(s) is
   			WHEN '0' => q <= ma;
    			WHEN '1' => q <= mb;
    			WHEN OTHERS => q <= setallX(w);
  		end case; 
	    end if;
  	end if;
 end process;
end behv;
 

-- 3:1 1-bit wide multiplexor

library ieee;
	use ieee.std_logic_1164.all;
	use ieee.std_logic_arith.all;
	use ieee.std_logic_unsigned.all;
	
entity xdsp_mux3w1V2 is
	port (
		a		: in std_logic;	-- mux operand inputs
		b		: in std_logic;
		c		: in std_logic;
		s0		: in std_logic;	-- mux selects
		s1		: in std_logic;	-- mux selects
		y		: out std_logic	-- mux output signal
	);
end xdsp_mux3w1V2;

architecture mux1 of xdsp_mux3w1V2 is

begin

		y <= a when s0='0' and s1='0' else
		     b when s0='1' and s1='0' else
		     c when s0='0' and s1='1' else
		     c;
end mux1;
-- Module Name		mux4w16
-- Synopsis		behv. model of baseblox 4:1 16b mux
-- Author 		Dr Chris Dick
-- Creation Date: 	5/3/99
-- Comments: 		design based on behv model from Coregen v1.5
-- Modification History

-- ************************************************************************
--  Copyright 1996-1999 - Xilinx, Inc.
--  All rights reserved.
-- ************************************************************************                                              

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

library xilinxcorelib;
use xilinxcorelib.ul_utils.all;

ENTITY xdsp_mux4w16rV2 IS
  PORT( ma	: IN  std_logic_vector( 16 -1 DOWNTO 0 );
        mb	: IN  std_logic_vector( 16 -1 DOWNTO 0 );
        mc	: IN  std_logic_vector( 16 -1 DOWNTO 0 );
        md	: IN  std_logic_vector( 16 -1 DOWNTO 0 );
        clk	: in std_logic;
        ce	: in std_logic;
        s	: IN  std_logic_vector(1 downto 0);
        q	: OUT std_logic_vector( 16 -1 DOWNTO 0 ) );
END xdsp_mux4w16rV2;


ARCHITECTURE behv OF xdsp_mux4w16rV2 IS
CONSTANT w: integer := 16;

BEGIN
 process (clk, ce , ma, mb, mc, md,  s)
 begin
 if clk'event and clk = '1' then
     if ce = '1' then
  	case rat(s(1)) is
   	 WHEN '1' =>
		case rat(s(0)) is
         	WHEN '1' => q <= md;
    	 	WHEN '0' => q <= mc;
	 	WHEN OTHERS => q <= setallX(w);
        	end case;
    	WHEN '0' => 
		case rat(s(0)) is
         	WHEN '1' => q <= mb;
    	 	WHEN '0' => q <= ma;
	 	WHEN OTHERS => q <= setallX(w);
        	end case;
    	WHEN OTHERS => q <= setallX(w);
  	end case;
     end if;
 end if;
 end process;
end behv;
 

-- 3:1 1-bit wide multiplexor

library ieee;
	use ieee.std_logic_1164.all;
	use ieee.std_logic_arith.all;
	use ieee.std_logic_unsigned.all;
	
entity xdsp_mux4w2V2 is
	port (
		ma		: in std_logic_vector(1 downto 0);	-- mux operand inputs
		mb		: in std_logic_vector(1 downto 0);
		mc		: in std_logic_vector(1 downto 0); 
		md		: in std_logic_vector(1 downto 0);
		s		: in std_logic_vector(1 downto 0);	-- mux selects
		q		: out std_logic_vector(1 downto 0)	-- mux output signal
	);
end xdsp_mux4w2V2;

architecture mux1 of xdsp_mux4w2V2 is

begin

		q <= ma when s(0)='0' and s(1)='0' else
		     mb when s(0)='1' and s(1)='0' else
		     mc when s(0)='0' and s(1)='1' else
		     md ;
end mux1;
-- Module Name		mux2w16
-- Synopsis		behv. model of baseblox registered 2:1 16b mux
-- Author 		Dr Chris Dick
-- Creation Date: 	5/3/99
-- Comments: 		design based on behv model from Coregen v1.5
-- Modification History

-- ************************************************************************
--  Copyright 1996-1999 - Xilinx, Inc.
--  All rights reserved.
-- ************************************************************************                 

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

library xilinxcorelib;
	use xilinxcorelib.ul_utils.all;

ENTITY xdsp_mux4w8rV2 IS
  PORT( ma	 : IN  std_logic_vector( 8 - 1 DOWNTO 0 );
  		mb 	 : IN  std_logic_vector( 8 - 1 DOWNTO 0 ); 
  		mc	 : IN  std_logic_vector( 8 - 1 DOWNTO 0 );
        md 	 : IN  std_logic_vector( 8 - 1 DOWNTO 0 );
        clk	 : in std_logic;
        ce	 : in std_logic;	   
		sclr : in std_logic;
        s       : IN  std_logic_vector(1 downto 0);
        q 	 : OUT std_logic_vector( 8 - 1 DOWNTO 0 ) );
END xdsp_mux4w8rV2;


ARCHITECTURE behv OF xdsp_mux4w8rV2 IS
CONSTANT w: integer := 8;
BEGIN
 process (clk, ma, mb, mc, md, s)
 begin
 	if clk'event and clk = '1' then	
		if sclr = '1' then
			 q <= setall0(w);
 	    elsif ce = '1' then
  		case rat(s(1)) is 
			WHEN '1' =>
		  case rat(s(0)) is
         	WHEN '1' => q <= md;
    	 	WHEN '0' => q <= mc;
	 	    WHEN OTHERS => q <= setallX(w);
          end case;
    	WHEN '0' => 
		 case rat(s(0)) is
         	WHEN '1' => q <= mb;
    	 	WHEN '0' => q <= ma;
	 	    WHEN OTHERS => q <= setallX(w);
         end case;
    	 WHEN OTHERS => q <= setallX(w);
  	    end case;  
   		end if;
  	end if;
 end process;
end behv;
 

-- Module Name		radd16
-- Synopsis		behv. model of baseblox 16b adder
-- Author 		Dr Chris Dick
-- Creation Date: 	4/15/99
-- Comments: 		design based on behv model from Coregen v1.5
-- Modification History

-- ************************************************************************
--  Copyright 1996-1998 - Xilinx, Inc.
--  All rights reserved.
-- ************************************************************************

library IEEE;
use IEEE.STD_LOGIC_1164.all;
library xilinxcorelib;
use xilinxcorelib.ul_utils.all;


ENTITY xdsp_radd16V2 IS
  PORT( a 	: IN  std_logic_vector( 16 - 1 DOWNTO 0 );
        b 	: IN  std_logic_vector( 16 - 1 DOWNTO 0 );
        clk 	: IN  std_logic;
        ce 	: IN  std_logic;
        c_in 	: IN  std_logic;
        q 	: OUT std_logic_vector( 16 DOWNTO 0 ));
END xdsp_radd16V2;

ARCHITECTURE behv OF xdsp_radd16V2 IS
CONSTANT w: integer := 16;
CONSTANT signed : boolean := true;

FUNCTION plus (a, b : std_logic_vector;
	       cin: std_logic;
	       width : integer) RETURN std_logic_vector IS
VARIABLE retval : std_logic_vector(width-1 DOWNTO 0);
VARIABLE carry : std_logic := cin;
BEGIN  -- plus
  IF (anyX(a) OR anyX(b) OR rat(cin) = 'X') THEN
      retval := (OTHERS => 'X');
  else
      FOR i IN 0 TO width-1 LOOP
	  retval(i) := a(i) XOR b(i) XOR carry;
	  carry := (a(i) AND b(i)) or
		   (a(i) AND carry) or
		   (b(i) AND carry);
      END LOOP;  -- i
  END IF;    
  RETURN retval;
END plus;

BEGIN
 process (clk)
   variable sum : std_logic_vector(w DOWNTO 0) := (OTHERS => '0');
   begin
 
     if (rat(clk) = 'X' AND rat(clk'last_value)/='X' AND rat(ce) /= '0') then
       sum := (OTHERS => 'X');
     elsif (clk'event and rat(clk) = '1' and rat(clk'last_value) = '0') then
       if (rat(ce) = 'X') then
         sum := (OTHERS => 'X');
       elsif (rat(ce) = '1') then
         if(rat(c_in) = 'X' OR anyX(a) OR anyX(b)) then
           sum := (OTHERS => 'X');
         else
           sum := plus(extend(a, w+1, signed), extend(b, w+1, signed), c_in, w+1);
         end if;
       end if;
     end if; 
   q <= sum;
   end process;
end behv;

-- Module Name		radd17
-- Synopsis		behv. model of baseblox 17b adder
-- Author 		Dr Chris Dick
-- Creation Date: 	4/22/99
-- Comments: 		design based on behv model from Coregen v1.5
-- Modification History

-- ************************************************************************
--  Copyright 1996-1999 - Xilinx, Inc.
--  All rights reserved.
-- ************************************************************************

library IEEE;
use IEEE.STD_LOGIC_1164.all;
library xilinxcorelib;
use xilinxcorelib.ul_utils.all;


ENTITY xdsp_radd17V2 IS
  PORT( a : IN  std_logic_vector( 17 - 1 DOWNTO 0 );
        b : IN  std_logic_vector( 17 - 1 DOWNTO 0 );
        clk : IN  std_logic;
        ce : IN  std_logic;
        c_in : IN  std_logic;
        --clr : IN  std_logic;
        q : OUT std_logic_vector( 17 DOWNTO 0 ));
END xdsp_radd17V2;

ARCHITECTURE behv OF xdsp_radd17V2 IS
CONSTANT w: integer := 17;
CONSTANT signed : boolean := true;

FUNCTION plus (a, b : std_logic_vector;
	       cin: std_logic;
	       width : integer) RETURN std_logic_vector IS
VARIABLE retval : std_logic_vector(width-1 DOWNTO 0);
VARIABLE carry : std_logic := cin;
BEGIN  -- plus
  IF (anyX(a) OR anyX(b) OR rat(cin) = 'X') THEN
      retval := (OTHERS => 'X');
  else
      FOR i IN 0 TO width-1 LOOP
	  retval(i) := a(i) XOR b(i) XOR carry;
	  carry := (a(i) AND b(i)) or
		   (a(i) AND carry) or
		   (b(i) AND carry);
      END LOOP;  -- i
  END IF;    
  RETURN retval;
END plus;

BEGIN
 process (clk)
   variable clr : std_logic := '0';
   variable sum : std_logic_vector(w DOWNTO 0) := (OTHERS => '0');
   begin
     if (rat(clr) = 'X') then
       sum := (OTHERS => 'X');
     elsif (rat(clr) = '1') then
       sum := (OTHERS => '0');
     elsif (rat(clk) = 'X' AND rat(clk'last_value)/='X' AND rat(ce) /= '0') then
       sum := (OTHERS => 'X');
     elsif (clk'event and rat(clk) = '1' and rat(clk'last_value) = '0') then
       if (rat(ce) = 'X') then
         sum := (OTHERS => 'X');
       elsif (rat(ce) = '1') then
         if(rat(c_in) = 'X' OR anyX(a) OR anyX(b)) then
           sum := (OTHERS => 'X');
         else
           sum := plus(extend(a, w+1, signed), extend(b, w+1, signed), c_in, w+1);
         end if;
       end if;
     end if; 
   q <= sum;
   end process;
end behv;

-- Module Name		radd7
-- Synopsis		behv. model of baseblox 16b adder
-- Author 		Dr Chris Dick
-- Creation Date: 	4/15/99
-- Comments: 		design based on behv model from Coregen v1.5
-- Modification History

-- ************************************************************************
--  Copyright 1996-1998 - Xilinx, Inc.
--  All rights reserved.
-- ************************************************************************

library IEEE;
use IEEE.STD_LOGIC_1164.all;
library xilinxcorelib;
use xilinxcorelib.ul_utils.all;


ENTITY xdsp_radd7V2 IS
  PORT( a 	: IN  std_logic_vector( 7 - 1 DOWNTO 0 );
        b 	: IN  std_logic_vector( 7 - 1 DOWNTO 0 );
        clk 	: IN  std_logic;
        ce 	: IN  std_logic;
        c_in 	: IN  std_logic;
	sclr 	: in std_logic;
        q 	: OUT std_logic_vector( 7 DOWNTO 0 ));
END xdsp_radd7V2;

ARCHITECTURE behv OF xdsp_radd7V2 IS
CONSTANT w: integer := 7;
CONSTANT signed : boolean := true;

FUNCTION plus (a, b : std_logic_vector;
	       cin: std_logic;
	       width : integer) RETURN std_logic_vector IS
VARIABLE retval : std_logic_vector(width-1 DOWNTO 0);
VARIABLE carry : std_logic := cin;
BEGIN  -- plus
  IF (anyX(a) OR anyX(b) OR rat(cin) = 'X') THEN
      retval := (OTHERS => 'X');
  else
      FOR i IN 0 TO width-1 LOOP
	  retval(i) := a(i) XOR b(i) XOR carry;
	  carry := (a(i) AND b(i)) or
		   (a(i) AND carry) or
		   (b(i) AND carry);
      END LOOP;  -- i
  END IF;    
  RETURN retval;
END plus;

BEGIN
 process (clk)
   variable sum : std_logic_vector(w DOWNTO 0) := (OTHERS => '0');
   begin
 
     if (rat(clk) = 'X' AND rat(clk'last_value)/='X' AND rat(ce) /= '0') then
       sum := (OTHERS => 'X');
     elsif sclr = '1' then
       sum := (OTHERS => '0');
     elsif (clk'event and rat(clk) = '1' and rat(clk'last_value) = '0') then
       if (rat(ce) = 'X') then
         sum := (OTHERS => 'X');
       elsif (rat(ce) = '1') then
         if(rat(c_in) = 'X' OR anyX(a) OR anyX(b)) then
           sum := (OTHERS => 'X');
         else
           sum := plus(extend(a, w+1, signed), extend(b, w+1, signed), c_in, w+1);
         end if;
       end if;
     end if; 
   q <= sum;
   end process;
end behv;

-- Module Name		radd8
-- Synopsis		behv. model of baseblox 16b adder
-- Author 		Dr Chris Dick
-- Creation Date: 	4/15/99
-- Comments: 		design based on behv model from Coregen v1.5
-- Modification History

-- ************************************************************************
--  Copyright 1996-1998 - Xilinx, Inc.
--  All rights reserved.
-- ************************************************************************

library IEEE;
use IEEE.STD_LOGIC_1164.all;
library xilinxcorelib;
use xilinxcorelib.ul_utils.all;


ENTITY xdsp_radd8V2 IS
  PORT( a 	: IN  std_logic_vector( 8 - 1 DOWNTO 0 );
        b 	: IN  std_logic_vector( 8 - 1 DOWNTO 0 );
        clk 	: IN  std_logic;
        ce 	: IN  std_logic;
        c_in 	: IN  std_logic;
	sclr 	: in std_logic;
        q 	: OUT std_logic_vector( 8 DOWNTO 0 ));
END xdsp_radd8V2;

ARCHITECTURE behv OF xdsp_radd8V2 IS
CONSTANT w: integer := 8;
CONSTANT signed : boolean := true;

FUNCTION plus (a, b : std_logic_vector;
	       cin: std_logic;
	       width : integer) RETURN std_logic_vector IS
VARIABLE retval : std_logic_vector(width-1 DOWNTO 0);
VARIABLE carry : std_logic := cin;
BEGIN  -- plus
  IF (anyX(a) OR anyX(b) OR rat(cin) = 'X') THEN
      retval := (OTHERS => 'X');
  else
      FOR i IN 0 TO width-1 LOOP
	  retval(i) := a(i) XOR b(i) XOR carry;
	  carry := (a(i) AND b(i)) or
		   (a(i) AND carry) or
		   (b(i) AND carry);
      END LOOP;  -- i
  END IF;    
  RETURN retval;
END plus;

BEGIN
 process (clk)
   variable sum : std_logic_vector(w DOWNTO 0) := (OTHERS => '0');
   begin
 
     if (rat(clk) = 'X' AND rat(clk'last_value)/='X' AND rat(ce) /= '0') then
       sum := (OTHERS => 'X');
     elsif sclr = '1' then
       sum := (OTHERS => '0');
     elsif (clk'event and rat(clk) = '1' and rat(clk'last_value) = '0') then
       if (rat(ce) = 'X') then
         sum := (OTHERS => 'X');
       elsif (rat(ce) = '1') then
         if(rat(c_in) = 'X' OR anyX(a) OR anyX(b)) then
           sum := (OTHERS => 'X');
         else
           sum := plus(extend(a, w+1, signed), extend(b, w+1, signed), c_in, w+1);
         end if;
       end if;
     end if; 
   q <= sum;
   end process;
end behv;

-- Module Name		ramd16a4
-- Synopsis		behv. model of baseblox distributed RAM
-- Author 		Dr Chris Dick
-- Creation Date: 	4/29/99
-- Comments: 		design based on behv model from Coregen v1.5
-- Modification History
	

-- ************************************************************************
--  Copyright 1996-1999 - Xilinx, Inc.
--  All rights reserved.
-- ************************************************************************

library ieee;
use ieee.std_logic_1164.all;
--  
library xilinxcorelib;
use xilinxcorelib.ul_utils.all;
--
ENTITY xdsp_ramd16a4V2 IS  
  PORT (
  	WE	:in	std_logic;
	CLK	:in	std_logic;
	D	:in	std_logic_vector( 15 downto 0 );
	QSPO	:out	std_logic_vector( 15 downto 0 );
	qspo_CE	:in	std_logic;
	A	:in	std_logic_vector( 3 downto 0 ));
END xdsp_ramd16a4V2;
--
-- behavior describing a parameterized ram
ARCHITECTURE behv OF xdsp_ramd16a4V2 IS
--
CONSTANT width: INTEGER := 16;
CONSTANT depth: INTEGER := 16;
CONSTANT adrwid: INTEGER := 4;
CONSTANT rloc_x: rloctype := default_rloc;
CONSTANT rloc_y: rloctype := default_rloc;
CONSTANT userpm: rpmflagtype := default_userpm;
CONSTANT huset : husettype := default_huset;
CONSTANT memdata: memdatatype(0 TO 255):=
           (0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0);
--
BEGIN
--
 PROCESS (clk, qspo_ce, we, a)
 VARIABLE memdint : memdatatype(0 TO 255) := memdata;
 TYPE memtype IS ARRAY(0 TO 255) OF std_logic_vector(width-1 downto 0);
 VARIABLE memdvect : memtype;
 VARIABLE startup : BOOLEAN := TRUE;
 BEGIN
   IF (startup = TRUE) THEN
     qspo <= setall0(width);
     startup := FALSE;
     FOR i in 0 TO 255 LOOP
       memdvect(i) := int_2_std_logic_vector(memdint(i), width);
     END LOOP;
   ELSIF (rat(clk) = 'X' and rat(clk'last_value) /= 'X') THEN
     IF (rat(qspo_ce) /= '0') THEN
       qspo <= setallX(width);
     END IF;
     IF (rat(we) /= '0') THEN
         ASSERT FALSE
         REPORT "Memory Hazard: Clock is not defined when write enable is non-zero."
         SEVERITY WARNING;
       IF (anyX(a)) THEN
         FOR i IN 0 TO 255 LOOP
           memdvect(i) := setallX(width);
         END LOOP;
       ELSE
         memdvect(std_logic_vector_2_posint(a)) := setallX(width);
       END IF;
     END IF;
   ELSIF (clk'EVENT and rat(clk) = '1' AND rat(clk'LAST_VALUE) = '0') THEN
     IF (rat(qspo_ce) = 'X') THEN
       qspo <= setallX(width);
     ELSIF (rat(qspo_ce) = '1') THEN
       IF (anyX(a)) THEN
         qspo <= setallX(width);
       ELSE
         qspo <= memdvect(std_logic_vector_2_posint(a));
       END IF;
     END IF;
     IF (rat(we) = 'X') THEN
       ASSERT FALSE
         REPORT "Memory Hazard: Write enable is not defined at the rising clock edge."
         SEVERITY WARNING;      
       IF (anyX(a)) THEN
         FOR i IN 0 TO 255 LOOP
           memdvect(i) := setallX(width);
         END LOOP;
       ELSE
         memdvect(std_logic_vector_2_posint(a)) := setallX(width);
       END IF;
     ELSIF (rat(we) = '1') THEN
       IF (anyX(a)) THEN
         ASSERT FALSE
           REPORT "Memory Hazard: Writing in a location when address is not defined."
           SEVERITY WARNING;      
         FOR i IN 0 TO 255 LOOP
           memdvect(i) := setallX(width);
         END LOOP;
       ELSE
         memdvect(std_logic_vector_2_posint(a)) := d;
       END IF;
     END IF;
   END IF;
 END PROCESS;
--
END behv;
-- Virtex 16-point FFT
-- 16-bit register

library ieee;
	use ieee.std_logic_1164.all;
	use ieee.std_logic_arith.all;
	use ieee.std_logic_unsigned.all;
	use std.textio.all;
	
library xilinxcorelib;
use xilinxcorelib.ul_utils.all;
	
entity xdsp_reg16V2 is
	port (
		clk		: in std_logic;				-- system clock
		ce		: in std_logic;				-- global clk enable
		d		: in std_logic_vector(15 downto 0);	-- data in
		q		: out std_logic_vector(15 downto 0)	-- data out
	      );
end xdsp_reg16V2;

architecture behavioral of xdsp_reg16V2 is

begin

reg16_prc : process(clk,ce)
begin
	if (clk'event and clk = '1') then
		if (ce = '1') then
			q <= d;
		end if;
	end if;
end process;

end behavioral;
-- Virtex 16-point FFT
-- 16-bit register

library ieee;
	use ieee.std_logic_1164.all;
	use ieee.std_logic_arith.all;
	use ieee.std_logic_unsigned.all;
	use std.textio.all;
	
library xilinxcorelib;
use xilinxcorelib.ul_utils.all;
	
entity xdsp_reg16bV2 is
	port (
		clk		: in std_logic;				-- system clock
		ce		: in std_logic;				-- global clk enable
		d		: in std_logic_vector(15 downto 0);	-- data in
		q		: out std_logic_vector(15 downto 0)	-- data out
	      );
end xdsp_reg16bV2;

architecture behavioral of xdsp_reg16bV2 is

begin

reg16_prc : process(clk,ce)
begin
	if (clk'event and clk = '1') then
		if (ce = '1') then
			q <= d;
		end if;
	end if;
end process;

end behavioral;
-- Virtex 16-point FFT
-- 4-bit register

library ieee;
	use ieee.std_logic_1164.all;
	use ieee.std_logic_arith.all;
	use ieee.std_logic_unsigned.all;
	use std.textio.all;
	
library xilinxcorelib;
use xilinxcorelib.ul_utils.all;
	
entity xdsp_reg4v2 is
	port (
		clk		: in std_logic;				-- system clock
		ce		: in std_logic;				-- global clk enable
		sclr		: in std_logic;
		d		: in std_logic_vector(3 downto 0);	-- data in
		q		: out std_logic_vector(3 downto 0) := (others => '0')	-- data out
	      );
end xdsp_reg4v2;

architecture behavioral of xdsp_reg4v2 is

begin

reg16_prc : process(clk,ce,sclr)
begin
	if sclr = '1' then
		q <= (others => '0');
	elsif clk'event and clk = '1' then
		if ce = '1' then
			q <= d;
		end if;
	end if;
end process;

end behavioral;
-- Module Name		rsub16
-- Synopsis		behv. model of baseblox 16b subtractor
-- Author 		Dr Chris Dick
-- Creation Date: 	4/22/99
-- Comments: 		design based on behv model from Coregen v1.5
-- Modification History

-- ************************************************************************
--  Copyright 1996-1998 - Xilinx, Inc.
--  All rights reserved.
-- ************************************************************************

library IEEE;
use IEEE.STD_LOGIC_1164.all;
library xilinxcorelib;
use xilinxcorelib.ul_utils.all;

ENTITY xdsp_rsub16V2 IS
  PORT( a : IN  std_logic_vector( 16 - 1 DOWNTO 0 );
        b : IN  std_logic_vector( 16 - 1 DOWNTO 0 );
        clk : IN  std_logic;
        ce : IN  std_logic;
        b_in : IN  std_logic;
        --clr : IN  std_logic;
        q : OUT std_logic_vector( 16 DOWNTO 0 ));
END xdsp_rsub16V2;

ARCHITECTURE behv OF xdsp_rsub16V2 IS
CONSTANT w: integer := 16;
CONSTANT signed : boolean := true;

FUNCTION minus (a, b : std_logic_vector;
		cin: std_logic;
                width : integer) RETURN std_logic_vector IS
VARIABLE retval : std_logic_vector(width-1 DOWNTO 0);
VARIABLE borrow : std_logic := cin;

BEGIN
    IF (anyX(a) OR anyX(b)) THEN
        retval := (OTHERS => 'X');
    ELSE
        FOR i IN 0 TO width-1 LOOP
            retval(i) := a(i) XOR NOT(b(i)) XOR borrow;
            borrow := (a(i) AND (NOT b(i)))  OR 
                      (a(i) AND  borrow) OR 
                      ((NOT b(i)) AND borrow);
        END LOOP;
    END IF;
    RETURN retval;
END minus;    

BEGIN
 process (clk)
   variable clr	: std_logic := '0';
   variable sum : std_logic_vector(w DOWNTO 0) := (OTHERS => '0');
   begin
     if (rat(clr) = 'X') then
       sum := (OTHERS => 'X');
     elsif (rat(clr) = '1') then
       sum := (OTHERS => '0');
     elsif (rat(clk) = 'X' AND rat(clk'LAST_VALUE)/='X' AND rat(ce) /= '0') then
       sum := (OTHERS => 'X');
     elsif (clk'event and rat(clk) = '1' and rat(clk'last_value) = '0') then
       if (rat(ce) = 'X') then
         sum := (OTHERS => 'X');
       elsif (rat(ce) = '1') then
	   if(rat(b_in) = 'X' OR anyX(a) OR anyX(b)) then
                 sum := (OTHERS => 'X');
	   else
             sum := minus(extend(a, w+1, signed), extend(b, w+1, signed),
			  b_in, w+1);
           end if;
       end if;
     end if; 
     q <= sum;
   end process;
end behv;

-- Module Name		rsub16
-- Synopsis		behv. model of baseblox 16b subtractor
-- Author 		Dr Chris Dick
-- Creation Date: 	4/22/99
-- Comments: 		design based on behv model from Coregen v1.5
-- Modification History

-- ************************************************************************
--  Copyright 1996-1998 - Xilinx, Inc.
--  All rights reserved.
-- ************************************************************************

library IEEE;
use IEEE.STD_LOGIC_1164.all;
library xilinxcorelib;
use xilinxcorelib.ul_utils.all;

ENTITY xdsp_rsub16bV2 IS
  PORT( a : IN  std_logic_vector( 16 - 1 DOWNTO 0 );
        b : IN  std_logic_vector( 16 - 1 DOWNTO 0 );
        clk : IN  std_logic;
        ce : IN  std_logic;
        b_in : IN  std_logic;
        --clr : IN  std_logic;
        q : OUT std_logic_vector( 16 DOWNTO 0 ));
END xdsp_rsub16bV2;

ARCHITECTURE behv OF xdsp_rsub16bV2 IS
CONSTANT w: integer := 16;
CONSTANT signed : boolean := true;

FUNCTION minus (a, b : std_logic_vector;
		cin: std_logic;
                width : integer) RETURN std_logic_vector IS
VARIABLE retval : std_logic_vector(width-1 DOWNTO 0);
VARIABLE borrow : std_logic := cin;

BEGIN
    IF (anyX(a) OR anyX(b)) THEN
        retval := (OTHERS => 'X');
    ELSE
        FOR i IN 0 TO width-1 LOOP
            retval(i) := a(i) XOR NOT(b(i)) XOR borrow;
            borrow := (a(i) AND (NOT b(i)))  OR 
                      (a(i) AND  borrow) OR 
                      ((NOT b(i)) AND borrow);
        END LOOP;
    END IF;
    RETURN retval;
END minus;    

BEGIN
 process (clk)
   variable clr	: std_logic := '0';
   variable sum : std_logic_vector(w DOWNTO 0) := (OTHERS => '0');
   begin
     if (rat(clr) = 'X') then
       sum := (OTHERS => 'X');
     elsif (rat(clr) = '1') then
       sum := (OTHERS => '0');
     elsif (rat(clk) = 'X' AND rat(clk'LAST_VALUE)/='X' AND rat(ce) /= '0') then
       sum := (OTHERS => 'X');
     elsif (clk'event and rat(clk) = '1' and rat(clk'last_value) = '0') then
       if (rat(ce) = 'X') then
         sum := (OTHERS => 'X');
       elsif (rat(ce) = '1') then
	   if(rat(b_in) = 'X' OR anyX(a) OR anyX(b)) then
                 sum := (OTHERS => 'X');
	   else
             sum := minus(extend(a, w+1, signed), extend(b, w+1, signed),
			  b_in, w+1);
           end if;
       end if;
     end if; 
     q <= sum;
   end process;
end behv;

-- Module Name		rsub17
-- Synopsis		behv. model of baseblox 17b subtractor
-- Author 		Dr Chris Dick
-- Creation Date: 	4/22/99
-- Comments: 		design based on behv model from Coregen v1.5
-- Modification History

-- ************************************************************************
--  Copyright 1996-1999 - Xilinx, Inc.
--  All rights reserved.
-- ************************************************************************

library IEEE;
use IEEE.STD_LOGIC_1164.all;
library xilinxcorelib;
use xilinxcorelib.ul_utils.all;

ENTITY xdsp_rsub17V2 IS
  PORT( a : IN  std_logic_vector( 17 - 1 DOWNTO 0 );
        b : IN  std_logic_vector( 17 - 1 DOWNTO 0 );
        clk : IN  std_logic;
        ce : IN  std_logic;
        b_in : IN  std_logic;
        --clr : IN  std_logic;
        q : OUT std_logic_vector( 17 DOWNTO 0 ));
END xdsp_rsub17V2;

ARCHITECTURE behv OF xdsp_rsub17V2 IS
CONSTANT w: integer := 17;
CONSTANT signed : boolean := true;

FUNCTION minus (a, b : std_logic_vector;
		cin: std_logic;
                width : integer) RETURN std_logic_vector IS
VARIABLE retval : std_logic_vector(width-1 DOWNTO 0);
VARIABLE borrow : std_logic := cin;
BEGIN
    IF (anyX(a) OR anyX(b)) THEN
        retval := (OTHERS => 'X');
    ELSE
        FOR i IN 0 TO width-1 LOOP
            retval(i) := a(i) XOR NOT(b(i)) XOR borrow;
            borrow := (a(i) AND (NOT b(i)))  OR 
                      (a(i) AND  borrow) OR 
                      ((NOT b(i)) AND borrow);
        END LOOP;
    END IF;
    RETURN retval;
END minus;    

BEGIN
 process (clk)
   variable clr : std_logic := '0';
   variable sum : std_logic_vector(w DOWNTO 0) := (OTHERS => '0');
   begin
     if (rat(clr) = 'X') then
       sum := (OTHERS => 'X');
     elsif (rat(clr) = '1') then
       sum := (OTHERS => '0');
     elsif (rat(clk) = 'X' AND rat(clk'LAST_VALUE)/='X' AND rat(ce) /= '0') then
       sum := (OTHERS => 'X');
     elsif (clk'event and rat(clk) = '1' and rat(clk'last_value) = '0') then
       if (rat(ce) = 'X') then
         sum := (OTHERS => 'X');
       elsif (rat(ce) = '1') then
	   if(rat(b_in) = 'X' OR anyX(a) OR anyX(b)) then
                 sum := (OTHERS => 'X');
	   else
             sum := minus(extend(a, w+1, signed), extend(b, w+1, signed),
			  b_in, w+1);
           end if;
       end if;
     end if; 
     q <= sum;
   end process;
end behv;

-- Module Name		rsub17
-- Synopsis		behv. model of baseblox 17b subtractor
-- Author 		Dr Chris Dick
-- Creation Date: 	4/22/99
-- Comments: 		design based on behv model from Coregen v1.5
-- Modification History

-- ************************************************************************
--  Copyright 1996-1999 - Xilinx, Inc.
--  All rights reserved.
-- ************************************************************************

library IEEE;
use IEEE.STD_LOGIC_1164.all;
library xilinxcorelib;
use xilinxcorelib.ul_utils.all;

ENTITY xdsp_rsub17bV2 IS
  PORT( a : IN  std_logic_vector( 17 - 1 DOWNTO 0 );
        b : IN  std_logic_vector( 17 - 1 DOWNTO 0 );
        clk : IN  std_logic;
        ce : IN  std_logic;
        b_in : IN  std_logic;
        --clr : IN  std_logic;
        q : OUT std_logic_vector( 17 DOWNTO 0 ));
END xdsp_rsub17bV2;

ARCHITECTURE behv OF xdsp_rsub17bV2 IS
CONSTANT w: integer := 17;
CONSTANT signed : boolean := true;

FUNCTION minus (a, b : std_logic_vector;
		cin: std_logic;
                width : integer) RETURN std_logic_vector IS
VARIABLE retval : std_logic_vector(width-1 DOWNTO 0);
VARIABLE borrow : std_logic := cin;
BEGIN
    IF (anyX(a) OR anyX(b)) THEN
        retval := (OTHERS => 'X');
    ELSE
        FOR i IN 0 TO width-1 LOOP
            retval(i) := a(i) XOR NOT(b(i)) XOR borrow;
            borrow := (a(i) AND (NOT b(i)))  OR 
                      (a(i) AND  borrow) OR 
                      ((NOT b(i)) AND borrow);
        END LOOP;
    END IF;
    RETURN retval;
END minus;    

BEGIN
 process (clk)
   variable clr : std_logic := '0';
   variable sum : std_logic_vector(w DOWNTO 0) := (OTHERS => '0');
   begin
     if (rat(clr) = 'X') then
       sum := (OTHERS => 'X');
     elsif (rat(clr) = '1') then
       sum := (OTHERS => '0');
     elsif (rat(clk) = 'X' AND rat(clk'LAST_VALUE)/='X' AND rat(ce) /= '0') then
       sum := (OTHERS => 'X');
     elsif (clk'event and rat(clk) = '1' and rat(clk'last_value) = '0') then
       if (rat(ce) = 'X') then
         sum := (OTHERS => 'X');
       elsif (rat(ce) = '1') then
	   if(rat(b_in) = 'X' OR anyX(a) OR anyX(b)) then
                 sum := (OTHERS => 'X');
	   else
             sum := minus(extend(a, w+1, signed), extend(b, w+1, signed),
			  b_in, w+1);
           end if;
       end if;
     end if; 
     q <= sum;
   end process;
end behv;

-- output of CoreGen module generator
-- $Header: /devl/xcs/repo/env/Databases/ip/src/com/xilinx/ip/vfft_v2_0/simulation/vfftv2_utils.vhd,v 1.1 2001/04/16 23:17:39 chrisd Exp $
-- *****************************************************************
--  Copyright 1997-1998 - Xilinx, Inc.
--  All rights reserved.
-- *****************************************************************
--
--  Description:
--    Behaviorial Model for 16 words by xx ROM LUT
--

library ieee;
use ieee.std_logic_1164.all;
--  
library xilinxcorelib;
use xilinxcorelib.ul_utils.all;
--
ENTITY xdsp_sin1024v2 IS  
  PORT (a	: IN STD_LOGIC_VECTOR(8-1 DOWNTO 0);
        clk	: IN STD_LOGIC;
        qspo_ce	: IN STD_LOGIC := default_fdce_ce;
        --clr	: IN STD_LOGIC := default_fdce_clr;
        qspo	: OUT STD_LOGIC_VECTOR(15-1 DOWNTO 0));
END xdsp_sin1024v2;
--
--  behavior describing a parameterized ROM
ARCHITECTURE behv OF xdsp_sin1024v2 IS
--
CONSTANT width: INTEGER := 15;
CONSTANT depth: INTEGER := 256;
CONSTANT adrwid: INTEGER := 8;
CONSTANT usetbufrlocs: BOOLEAN := false;
CONSTANT rloc_x: rloctype := default_rloc;
CONSTANT rloc_y: rloctype := default_rloc;
CONSTANT userpm: rpmflagtype := yes_rpm;
CONSTANT huset : husettype := default_huset;
CONSTANT memdata: memdatatype(0 TO 255) := 
            (0,
            32567,
            32366,
            32165,
            31964,
            31763,
            31562,
            31361,
            31160,
            30959,
            30759,
            30558,
            30357,
            30157,
            29957,
            29756,
            29556,
            29356,
            29156,
            28956,
            28757,
            28557,
            28358,
            28159,
            27960,
            27761,
            27563,
            27364,
            27166,
            26968,
            26770,
            26573,
            26375,
            26178,
            25981,
            25785,
            25588,
            25392,
            25197,
            25001,
            24806,
            24611,
            24417,
            24222,
            24028,
            23835,
            23641,
            23449,
            23256,
            23064,
            22872,
            22680,
            22489,
            22299,
            22108,
            21918,
            21729,
            21540,
            21351,
            21163,
            20975,
            20788,
            20601,
            20414,
            20228,
            20043,
            19858,
            19673,
            19489,
            19305,
            19122,
            18940,
            18758,
            18576,
            18395,
            18215,
            18035,
            17856,
            17677,
            17499,
            17321,
            17144,
            16968,
            16792,
            16617,
            16442,
            16268,
            16095,
            15922,
            15750,
            15578,
            15407,
            15237,
            15068,
            14899,
            14731,
            14563,
            14396,
            14230,
            14065,
            13900,
            13736,
            13573,
            13410,
            13248,
            13087,
            12927,
            12767,
            12608,
            12450,
            12293,
            12136,
            11980,
            11825,
            11671,
            11517,
            11365,
            11213,
            11062,
            10912,
            10762,
            10614,
            10466,
            10319,
            10173,
            10028,
            9884,
            9740,
            9598,
            9456,
            9315,
            9175,
            9036,
            8898,
            8760,
            8624,
            8489,
            8354,
            8220,
            8088,
            7956,
            7825,
            7695,
            7566,
            7438,
            7311,
            7185,
            7060,
            6935,
            6812,
            6690,
            6569,
            6448,
            6329,
            6211,
            6094,
            5977,
            5862,
            5748,
            5635,
            5522,
            5411,
            5301,
            5192,
            5084,
            4977,
            4871,
            4766,
            4662,
            4559,
            4457,
            4357,
            4257,
            4158,
            4061,
            3965,
            3869,
            3775,
            3682,
            3590,
            3499,
            3409,
            3320,
            3233,
            3146,
            3061,
            2976,
            2893,
            2811,
            2730,
            2650,
            2572,
            2494,
            2418,
            2343,
            2269,
            2196,
            2124,
            2053,
            1984,
            1915,
            1848,
            1782,
            1718,
            1654,
            1591,
            1530,
            1470,
            1411,
            1353,
            1297,
            1241,
            1187,
            1134,
            1082,
            1031,
            982,
            934,
            887,
            841,
            796,
            753,
            710,
            669,
            630,
            591,
            554,
            517,
            482,
            449,
            416,
            385,
            355,
            326,
            298,
            272,
            246,
            222,
            200,
            178,
            158,
            139,
            121,
            104,
            89,
            75,
            62,
            50,
            39,
            30,
            22,
            15,
            10,
            6,
            2,
            1);
--
BEGIN
-- 
 PROCESS (clk,qspo_ce)
 variable	clr : std_logic := '0'; 
 BEGIN
   IF (rat(clr) = 'X') THEN
     qspo <= setallX(width);
   ELSIF (rat(clr) = '1') THEN
     qspo <= setall0(width);
   ELSIF (rat(clk) = 'X' AND rat(clk'LAST_VALUE) /= 'X' AND rat(qspo_ce) /= '0') THEN
     qspo <= setallX(width);
   ELSIF (clk'EVENT and rat(clk) = '1' AND rat(clk'LAST_VALUE) = '0') THEN
     IF (rat(qspo_ce) = 'X') THEN
       qspo <= setallX(width);
     ELSIF (rat(qspo_ce) = '1') THEN
       IF (anyX(a)) THEN
         qspo <= setallX(width);
       ELSE
         qspo <= int_2_std_logic_vector(memdata(std_logic_vector_2_posint(a)), width);
       END IF;
     END IF;
   END IF;
 END PROCESS;
END behv;
-- output of CoreGen module generator
-- $Header: /devl/xcs/repo/env/Databases/ip/src/com/xilinx/ip/vfft_v2_0/simulation/vfftv2_utils.vhd,v 1.1 2001/04/16 23:17:39 chrisd Exp $
-- *****************************************************************
--  Copyright 1997-1998 - Xilinx, Inc.
--  All rights reserved.
-- *****************************************************************
--
--  Description:
--    Behaviorial Model for 16 words by xx ROM LUT
--

library ieee;
use ieee.std_logic_1164.all;
--  
library xilinxcorelib;
use xilinxcorelib.ul_utils.all;
--
ENTITY xdsp_sin256V2 IS  
  PORT (a	: IN STD_LOGIC_VECTOR(6-1 DOWNTO 0);
        clk	: IN STD_LOGIC;
        qspo_ce	: IN STD_LOGIC := default_fdce_ce;
        qspo	: OUT STD_LOGIC_VECTOR(15-1 DOWNTO 0));
END xdsp_sin256V2;
--
--  behavior describing a parameterized ROM
ARCHITECTURE behv OF xdsp_sin256V2 IS
--
CONSTANT width: INTEGER := 15;
CONSTANT depth: INTEGER := 64;
CONSTANT adrwid: INTEGER := 6;
CONSTANT usetbufrlocs: BOOLEAN := false;
CONSTANT rloc_x: rloctype := default_rloc;
CONSTANT rloc_y: rloctype := default_rloc;
CONSTANT userpm: rpmflagtype := yes_rpm;
CONSTANT huset : husettype := default_huset;
CONSTANT memdata: memdatatype(0 TO 255) := 
            (0,
            31964,
            31160,
            30357,
            29556,
            28757,
            27960,
            27166,
            26375,
            25588,
            24806,
            24028,
            23256,
            22489,
            21729,
            20975,
            20228,
            19489,
            18758,
            18035,
            17321,
            16617,
            15922,
            15237,
            14563,
            13900,
            13248,
            12608,
            11980,
            11365,
            10762,
            10173,
            9598,
            9036,
            8489,
            7956,
            7438,
            6935,
            6448,
            5977,
            5522,
            5084,
            4662,
            4257,
            3869,
            3499,
            3146,
            2811,
            2494,
            2196,
            1915,
            1654,
            1411,
            1187,
            982,
            796,
            630,
            482,
            355,
            246,
            158,
            89,
            39,
            10,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0);
--
BEGIN
-- 
 PROCESS (clk)
 variable	clr : std_logic := '0'; 
 BEGIN
   IF (rat(clr) = 'X') THEN
     qspo <= setallX(width);
   ELSIF (rat(clr) = '1') THEN
     qspo <= setall0(width);
   ELSIF (rat(clk) = 'X' AND rat(clk'LAST_VALUE) /= 'X' AND rat(qspo_ce) /= '0') THEN
     qspo <= setallX(width);
   ELSIF (clk'EVENT and rat(clk) = '1' AND rat(clk'LAST_VALUE) = '0') THEN
     IF (rat(qspo_ce) = 'X') THEN
       qspo <= setallX(width);
     ELSIF (rat(qspo_ce) = '1') THEN
       IF (anyX(a)) THEN
         qspo <= setallX(width);
       ELSE
         qspo <= int_2_std_logic_vector(memdata(std_logic_vector_2_posint(a)), width);
       END IF;
     END IF;
   END IF;
 END PROCESS;
END behv;
-- Module Name		coss16
-- Synopsis		behv. model of baseblox ROM
-- Author 		Dr Chris Dick
-- Creation Date: 	4/24/99
-- Comments: 		design based on behv model from Coregen v1.5
-- Modification History

-- ************************************************************************
--  Copyright 1996-1999 - Xilinx, Inc.
--  All rights reserved.
-- ************************************************************************


library ieee;
use ieee.std_logic_1164.all;
--  
library xilinxcorelib;
use xilinxcorelib.ul_utils.all;
--
ENTITY xdsp_sinn16v2 IS  
  PORT (a	: IN STD_LOGIC_VECTOR(4-1 DOWNTO 0);
        clk	: IN STD_LOGIC;
        qspo_ce	: IN STD_LOGIC := default_fdce_ce;
        --clr	: IN STD_LOGIC := default_fdce_clr;
        qspo	: OUT STD_LOGIC_VECTOR(16-1 DOWNTO 0) := (others => '0'));
END xdsp_sinn16v2;
--
--  behavior describing a parameterized ROM
ARCHITECTURE behv OF xdsp_sinn16v2 IS
--
CONSTANT width: INTEGER := 16;
CONSTANT depth: INTEGER := 16;
CONSTANT adrwid: INTEGER := 4;
CONSTANT usetbufrlocs: BOOLEAN := false;
CONSTANT rloc_x: rloctype := default_rloc;
CONSTANT rloc_y: rloctype := default_rloc;
CONSTANT userpm: rpmflagtype := yes_rpm;
CONSTANT huset : husettype := default_huset;
CONSTANT memdata: memdatatype(0 TO 255) := 
            (0,
            0,
            0,
            0,
            0,
            52996,
            42366,
            35262,
            0,
            42366,
            32768,
            42366,
            0,
            35262,
            42366,
            12540,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0);
--
BEGIN
-- 
 PROCESS (clk)
 	variable clr	: std_logic := '0';
 BEGIN
   IF (rat(clr) = 'X') THEN
     qspo <= (others => '0');		--setallX(width);
   ELSIF (rat(clr) = '1') THEN
     qspo <= setall0(width);
   ELSIF (rat(clk) = 'X' AND rat(clk'LAST_VALUE) /= 'X' AND rat(qspo_ce) /= '0') THEN
     qspo <= (others => '0');		--setallX(width);
   ELSIF (clk'EVENT and rat(clk) = '1' AND rat(clk'LAST_VALUE) = '0') THEN
     IF (rat(qspo_ce) = 'X') THEN
       qspo <= (others => '0');		--setallX(width);
     ELSIF (rat(qspo_ce) = '1') THEN
       IF (anyX(a)) THEN
         qspo <= (others => '0');	--setallX(width);
       ELSE
         qspo <= int_2_std_logic_vector(memdata(std_logic_vector_2_posint(a)), width);
       END IF;
     END IF;
   END IF;
 END PROCESS;
END behv;
-- Module Name		tcompw16
-- Synopsis		behv. model of baseblox 16b 2's comp
-- Author 		Dr Chris Dick
-- Creation Date: 	4/22/99
-- Comments: 		design based on behv model from Coregen v1.5
-- Modification History
--			4/26/99 changed bypass from active low to active high (
--				it now 2's comps when bypass ==1

-- ************************************************************************
--  Copyright 1996-1999 - Xilinx, Inc.
--  All rights reserved.
-- ************************************************************************


library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_unsigned.all;
library xilinxcorelib;
use xilinxcorelib.ul_utils.all;

entity xdsp_tcompw16V2 is
  port( 
	a	: in   std_logic_vector(15 downto 0 );
        bypass	: in   std_logic;
        clk	: in   std_logic;
        ce	: in   std_logic;
        q	: out  std_logic_vector(16 downto 0 ));
end xdsp_tcompw16V2;

architecture behv of xdsp_tcompw16V2 is
  constant k : integer := 16;
  CONSTANT two_comp : BOOLEAN := true;
begin

 process
   variable va   : std_logic_vector( k downto 0 );
   variable vq   : std_logic_vector( k downto 0 );
   VARIABLE one_detected : BOOLEAN := FALSE;
 begin

   va(k-1 downto 0) := std_logic_vector_2_var(a);
   va(k) := a(k-1);
   
   -- ---------------------------------------------------------------------------- --
   -- If the clock is an X, and the clock enable is a 1 or an X, the output gets X --
   -- ---------------------------------------------------------------------------- --
   IF (rat(clk)='X' AND rat(ce)/='0' AND rat(clk'LAST_VALUE)/='X') THEN
     vq := (OTHERS => 'X');

   -- ---------------------------------------------------------------------------- --
   -- If the clock'event is valid then...                                          --
   -- ---------------------------------------------------------------------------- --
     ELSIF (clk'EVENT and rat(clk)='1' and rat(clk'LAST_VALUE)='0') then

   -- ---------------------------------------------------------------------------- --
   -- If the clockenable is an X, the outputs get X                                --
   -- ---------------------------------------------------------------------------- --
       IF rat(ce)='X' THEN
         vq := (OTHERS => 'X');

   -- ---------------------------------------------------------------------------- --
   -- Otherwise, do the twos complement...                                         --
   -- ---------------------------------------------------------------------------- --
       ELSE IF rat(ce)='1' THEN
           IF bypass='1' THEN
             vq := not va + 1;
           ELSIF bypass='0' THEN
             vq := va;
           ELSE
             vq := (OTHERS => 'X');
           END IF;
         q <= vq;

       END IF;
     end if;
   end if;

   WAIT ON clk;

 end process;

end behv;

-- Module Name		tcompw16
-- Synopsis		behv. model of baseblox 16b 2's comp
-- Author 		Dr Chris Dick
-- Creation Date: 	4/22/99
-- Comments: 		design based on behv model from Coregen v1.5
-- Modification History
--			4/26/99 changed bypass from active low to active high (
--				it now 2's comps when bypass ==1

-- ************************************************************************
--  Copyright 1996-1999 - Xilinx, Inc.
--  All rights reserved.
-- ************************************************************************


library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_unsigned.all;
library xilinxcorelib;
use xilinxcorelib.ul_utils.all;

entity xdsp_tcompw16bV2 is
  port( 
	a	: in   std_logic_vector(15 downto 0 );
        bypass	: in   std_logic;
        clk	: in   std_logic;
        ce	: in   std_logic;
        q	: out  std_logic_vector(16 downto 0 ));
end xdsp_tcompw16bV2;

architecture behv of xdsp_tcompw16bV2 is
  constant k : integer := 16;
  CONSTANT two_comp : BOOLEAN := true;
begin

 process
   variable va   : std_logic_vector( k downto 0 );
   variable vq   : std_logic_vector( k downto 0 );
   VARIABLE one_detected : BOOLEAN := FALSE;
 begin

   va(k-1 downto 0) := std_logic_vector_2_var(a);
   va(k) := a(k-1);
   
   -- ---------------------------------------------------------------------------- --
   -- If the clock is an X, and the clock enable is a 1 or an X, the output gets X --
   -- ---------------------------------------------------------------------------- --
   IF (rat(clk)='X' AND rat(ce)/='0' AND rat(clk'LAST_VALUE)/='X') THEN
     vq := (OTHERS => 'X');

   -- ---------------------------------------------------------------------------- --
   -- If the clock'event is valid then...                                          --
   -- ---------------------------------------------------------------------------- --
     ELSIF (clk'EVENT and rat(clk)='1' and rat(clk'LAST_VALUE)='0') then

   -- ---------------------------------------------------------------------------- --
   -- If the clockenable is an X, the outputs get X                                --
   -- ---------------------------------------------------------------------------- --
       IF rat(ce)='X' THEN
         vq := (OTHERS => 'X');

   -- ---------------------------------------------------------------------------- --
   -- Otherwise, do the twos complement...                                         --
   -- ---------------------------------------------------------------------------- --
       ELSE IF rat(ce)='1' THEN
           IF bypass='1' THEN
             vq := not va + 1;
           ELSIF bypass='0' THEN
             vq := va;
           ELSE
             vq := (OTHERS => 'X');
           END IF;
         q <= vq;

       END IF;
     end if;
   end if;

   WAIT ON clk;

 end process;

end behv;

-- Module Name		tcompw17
-- Synopsis		behv. model of baseblox 17b 2's comp
-- Author 		Dr Chris Dick
-- Creation Date: 	4/22/99
-- Comments: 		design based on behv model from Coregen v1.5
-- Modification History
--			4/26/99 changed bypass from active low to active high (
--				it now 2's comps when bypass ==1
-- ************************************************************************
--  Copyright 1996-1999 - Xilinx, Inc.
--  All rights reserved.
-- ************************************************************************


library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_unsigned.all;
library xilinxcorelib;
use xilinxcorelib.ul_utils.all;

entity xdsp_tcompw17V2 is
  port( 
	a	: in   std_logic_vector(16 downto 0 );
        bypass	: in   std_logic;
        clk	: in   std_logic;
        ce	: in   std_logic;
        q	: out  std_logic_vector(17 downto 0 ));
end xdsp_tcompw17V2;

architecture behv of xdsp_tcompw17V2 is
  constant k : integer := 17;
  CONSTANT two_comp : BOOLEAN := true;
begin

 process
   variable va   : std_logic_vector( k downto 0 );
   variable vq   : std_logic_vector( k downto 0 );
   VARIABLE one_detected : BOOLEAN := FALSE;
 begin

   va(k-1 downto 0) := std_logic_vector_2_var(a);
   va(k) := a(k-1);
   
   -- ---------------------------------------------------------------------------- --
   -- If the clock is an X, and the clock enable is a 1 or an X, the output gets X --
   -- ---------------------------------------------------------------------------- --
   IF (rat(clk)='X' AND rat(ce)/='0' AND rat(clk'LAST_VALUE)/='X') THEN
     vq := (OTHERS => 'X');

   -- ---------------------------------------------------------------------------- --
   -- If the clock'event is valid then...                                          --
   -- ---------------------------------------------------------------------------- --
     ELSIF (clk'EVENT and rat(clk)='1' and rat(clk'LAST_VALUE)='0') then

   -- ---------------------------------------------------------------------------- --
   -- If the clockenable is an X, the outputs get X                                --
   -- ---------------------------------------------------------------------------- --
       IF rat(ce)='X' THEN
         vq := (OTHERS => 'X');

   -- ---------------------------------------------------------------------------- --
   -- Otherwise, do the twos complement...                                         --
   -- ---------------------------------------------------------------------------- --
       ELSE IF rat(ce)='1' THEN
           IF bypass='1' THEN
             vq := not va + 1;
           ELSIF bypass='0' THEN
             vq := va;
           ELSE
             vq := (OTHERS => 'X');
           END IF;
         q <= vq;

       END IF;
     end if;
   end if;

   WAIT ON clk;

 end process;

end behv;

-- output of CoreGen module generator
-- $Header: /devl/xcs/repo/env/Databases/ip/src/com/xilinx/ip/vfft_v2_0/simulation/vfftv2_utils.vhd,v 1.1 2001/04/16 23:17:39 chrisd Exp $
-- *****************************************************************
--  Copyright 1997-1998 - Xilinx, Inc.
--  All rights reserved.
-- *****************************************************************
--
--  Description:
--    Behaviorial Model for 16 words by xx ROM LUT
--

library ieee;
use ieee.std_logic_1164.all;
--  
library xilinxcorelib;
use xilinxcorelib.ul_utils.all;
--
ENTITY xdsp_triginvv2 IS  
  PORT (a	: IN STD_LOGIC_VECTOR(4-1 DOWNTO 0);
        c	: IN STD_LOGIC;
        ce	: IN STD_LOGIC := default_fdce_ce;
        clr	: IN STD_LOGIC := default_fdce_clr;
        q	: OUT STD_LOGIC);	--OUT STD_LOGIC_VECTOR(2-1 DOWNTO 0));
END xdsp_triginvv2;
--
--  behavior describing a parameterized ROM
ARCHITECTURE behv OF xdsp_triginvv2 IS
--
CONSTANT width: INTEGER := 1;
CONSTANT depth: INTEGER := 16;
CONSTANT adrwid: INTEGER := 4;
CONSTANT usetbufrlocs: BOOLEAN := false;
CONSTANT rloc_x: rloctype := default_rloc;
CONSTANT rloc_y: rloctype := default_rloc;
CONSTANT userpm: rpmflagtype := yes_rpm;
CONSTANT huset : husettype := default_huset;
CONSTANT memdata: memdatatype(0 TO 255) := 
            (
            0,
            0,
            0,
            1,
            0,
            0,
            0,
            1,
            1,
            1,
            1,
            1,
            0,
            0,
            0,
            1,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0,
            0);
--
BEGIN
-- 
 PROCESS (c, clr)
 variable q_tmp: std_logic_vector(1 downto 0);
 BEGIN
   IF (rat(clr) = 'X') THEN
     q <= 'X';				--setallX(width);
   ELSIF (rat(clr) = '1') THEN
     q <= '0';				--setall0(width);
   ELSIF (rat(c) = 'X' AND rat(c'LAST_VALUE) /= 'X' AND rat(ce) /= '0') THEN
     q <= 'X';				--setallX(width);
   ELSIF (c'EVENT and rat(c) = '1' AND rat(c'LAST_VALUE) = '0') THEN
     IF (rat(ce) = 'X') THEN
       q <= 'X';			--setallX(width);
     ELSIF (rat(ce) = '1') THEN
       IF (anyX(a)) THEN
         q <= 'X';			--setallX(width);
       ELSE
         --q <= int_2_std_logic_vector(memdata(std_logic_vector_2_posint(a)), width);
         q_tmp := int_2_std_logic_vector(memdata(std_logic_vector_2_posint(a)), 2);
         q <= q_tmp(0);
       END IF;
     END IF;
   END IF;
 END PROCESS;
END behv;
