-- Module     : 32-bit positive edge trigger register
-- Author     : Designed by T.Morifuji (c)1997.
-- Version    : 1.0
-- VHDL       : 87

-- Functionality :
--  port
--   clock    : clock port
--   reset    : reset port
--   data_in  : input data
--   data_out : output data

library IEEE;
  use IEEE.std_logic_1164.all;

entity fhm_dmau_w32_reg32 is
  port(
    clock    : in  std_logic;
    reset    : in  std_logic;
    data_in  : in  std_logic_vector(31 downto 0);
    data_out : out std_logic_vector(31 downto 0)
  );
end fhm_dmau_w32_reg32;

architecture synthesis of fhm_dmau_w32_reg32 is
begin
  process (clock, reset)
  begin
    if (reset = '1') then
      data_out <= "00000000000000000000000000000000";
    elsif (clock'event and clock = '1') then --'
      data_out <= data_in;
    end if;
  end process;
end synthesis;

--%%

-- Module	 : Data Memory Access Unit
-- Author	 : M. Itoh (c) 2000.
--                 Modified by J.Sato (c) 2001
--                 Modified by K.Ueda (c) 2002
-- Version	 : 1.0
-- VHDL          : 87

-- Functionality : synthesis level
--  port
--    reset        : reset
--    req          : memory access request from cpu
--    rw           : read/write mode from cpu
--                   0 => read
--                   1 => write
--    ac_mode      : access mode from cpu
--                   11 => 32 bits access
--                   10 => 24 bits access
--                   01 => 16 bits access
--                   00 => 8 bits access
--    ext_mode     : extention mode from cpu
--                   0 => zero extention
--                   1 => sign extention
--    addr         : address from cpu
--    data_in      : data output for cpu
--    addr_err     : address error signal for cpu
--    req_bus      : memory access request for bus
--    w_mode_bus   : access mode for bus
--    addr_bus     : address output for bus
--    data_bus     : data input/output for bus
--    ack_bus      : memory access ack from bus
--    ack          : memory access ack for cpu
--    data_out     : data input for cpu

library ieee;
use ieee.std_logic_1164.all;

entity fhm_dmau_w32 is
  port (
    reset        : in    std_logic;			-- reset signal
    req          : in    std_logic;			-- request from cpu
    rw           : in    std_logic;			-- read/write mode from cpu
  ac_mode : in std_logic_vector(1 downto 0); -- access mode from cpu
    ext_mode     : in    std_logic;			-- extention mode from cpu
  addr : in std_logic_vector(31 downto 0); -- address from cpu
  data_in : in std_logic_vector(31 downto 0); -- input data from cpu
  addr_err : out std_logic; -- address error signal for cpu
    req_bus      : out   std_logic;			-- request for bus
  w_mode_bus : out std_logic_vector(3 downto 0); -- read/write mode for
--  	bus
  addr_bus : out std_logic_vector(31 downto 0); -- address for bus
  data_bus : inout std_logic_vector(31 downto 0); -- input data for bus
    ack_bus      : in    std_logic;			-- ack from bus
    ack          : out   std_logic;			-- ack for cpu
  data_out : out std_logic_vector(31 downto 0) -- output data for cpu
  );
end fhm_dmau_w32;

architecture synthesis of fhm_dmau_w32 is
  component fhm_dmau_w32_reg32
    port (
      clock    : in  std_logic;
      reset    : in  std_logic;
      data_in  : in  std_logic_vector(31 downto 0);
      data_out : out std_logic_vector(31 downto 0)
    );
  end component;
  signal data_in_tmp1, data_in_tmp2, data_in_tmp3 : std_logic_vector(31
  	downto 0);
  signal data_bus_out, data_out_tmp1, data_out_tmp2 :
  	std_logic_vector(31 downto 0);
  signal addr_tmp : std_logic_vector(1 downto 0);
  signal w_mode_tmp : std_logic_vector(3 downto 0);
  signal addr_err_tmp : std_logic;
  signal ext : std_logic;
begin  -- synthesis
  addr_err_tmp <= '0' when (ac_mode = "11" and (addr_tmp = "00")) or
  (ac_mode = "10" and (addr_tmp = "00" or addr_tmp = "01")) or
  (ac_mode = "01" and (addr_tmp = "00" or addr_tmp = "01" or addr_tmp =
  	"10")) or
  (ac_mode = "00" and (addr_tmp = "00" or addr_tmp = "01" or addr_tmp =
  	"10" or addr_tmp = "11"))
                  else '1';
  addr_err <= addr_err_tmp;
  req_bus  <= '0' when (reset = '1' or addr_err_tmp='1') else req;
  addr_bus <= addr(31 downto 2) & "00";

  addr_tmp <= addr(1 downto 0);
  w_mode_tmp(3) <= '0' when (addr_tmp = "00")
                    else '1';
  w_mode_tmp(2) <= '0' when (addr_tmp = "01") or
  (addr_tmp = "00" and (ac_mode = "11" or ac_mode = "10" or ac_mode =
  	"01"))
                    else '1';
  w_mode_tmp(1) <= '0' when (addr_tmp = "10") or
  (addr_tmp = "01" and (ac_mode = "11" or ac_mode = "10" or ac_mode =
  	"01")) or
  (addr_tmp = "00" and (ac_mode = "11" or ac_mode = "10"))
                    else '1';
  w_mode_tmp(0) <= '0' when (addr_tmp = "11") or
  (addr_tmp = "10" and (ac_mode = "11" or ac_mode = "10" or ac_mode =
  	"01")) or
  (addr_tmp = "01" and (ac_mode = "11" or ac_mode = "10")) or
                            (addr_tmp = "00" and (ac_mode = "11"))
                    else '1';
  w_mode_bus <= "1111" when rw='0' else w_mode_tmp;

  ack <= '0' when reset = '1' else
         ack_bus;

  data_bus <= data_in_tmp3 when (rw='1' and addr_err_tmp='0') else
  	"ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";

  data_in_tmp2(31 downto 24) <=
    data_in_tmp1(31 downto 24) when (ac_mode="11") else
    data_in_tmp1(23 downto 16) when (ac_mode="10") else
    data_in_tmp1(15 downto 8) when (ac_mode="01") else
    data_in_tmp1(7 downto 0) when (ac_mode="00") else
    "ZZZZZZZZ";
  data_in_tmp2(23 downto 16) <=
    data_in_tmp1(23 downto 16) when (ac_mode="11") else
    data_in_tmp1(15 downto 8) when (ac_mode="10") else
    data_in_tmp1(7 downto 0) when (ac_mode="01") else
    "ZZZZZZZZ";
  data_in_tmp2(15 downto 8) <=
    data_in_tmp1(15 downto 8) when (ac_mode="11") else
    data_in_tmp1(7 downto 0) when (ac_mode="10") else
    "ZZZZZZZZ";
  data_in_tmp2(7 downto 0) <=
    data_in_tmp1(7 downto 0) when (ac_mode="11") else
    "ZZZZZZZZ";

  data_in_tmp3(31 downto 24) <=
    data_in_tmp2(31 downto 24) when (addr_tmp="00") else
    "ZZZZZZZZ";
  data_in_tmp3(23 downto 16) <=
    data_in_tmp2(23 downto 16) when (addr_tmp="00") else
    data_in_tmp2(31 downto 24) when (addr_tmp="01") else
    "ZZZZZZZZ";
  data_in_tmp3(15 downto 8) <=
    data_in_tmp2(15 downto 8) when (addr_tmp="00") else
    data_in_tmp2(23 downto 16) when (addr_tmp="01") else
    data_in_tmp2(31 downto 24) when (addr_tmp="10") else
    "ZZZZZZZZ";
  data_in_tmp3(7 downto 0) <=
    data_in_tmp2(7 downto 0) when (addr_tmp="00") else
    data_in_tmp2(15 downto 8) when (addr_tmp="01") else
    data_in_tmp2(23 downto 16) when (addr_tmp="10") else
    data_in_tmp2(31 downto 24) when (addr_tmp="11") else
    "ZZZZZZZZ";

  REG_DATA_IN: fhm_dmau_w32_reg32
    port map (
      clock    => req,
      reset    => reset,
      data_in  => data_in,
      data_out => data_in_tmp1);

  REG_DATA_OUT: fhm_dmau_w32_reg32
    port map (
      clock    => ack_bus,
      reset    => reset,
      data_in  => data_bus,
      data_out => data_bus_out);

  ext <= ext_mode and data_out_tmp1(31);

  data_out_tmp1(31 downto 24) <=
  data_bus_out(31 downto 24) when (addr_tmp="00") else data_bus_out(23
  	downto 16) when (addr_tmp="01") else data_bus_out(15 downto 8) when
  	(addr_tmp="10") else data_bus_out(7 downto 0) when (addr_tmp="11") else
  	"ZZZZZZZZ";
  data_out_tmp1(23 downto 16) <=
  data_bus_out(23 downto 16) when (addr_tmp="00") else data_bus_out(15
  	downto 8) when (addr_tmp="01") else data_bus_out(7 downto 0) when
  	(addr_tmp="10") else "ZZZZZZZZ";
  data_out_tmp1(15 downto 8) <=
  data_bus_out(15 downto 8) when (addr_tmp="00") else data_bus_out(7
  	downto 0) when (addr_tmp="01") else "ZZZZZZZZ";
  data_out_tmp1(7 downto 0) <=
    data_bus_out(7 downto 0) when (addr_tmp="00") else  "ZZZZZZZZ";

  data_out_tmp2(31 downto 24) <=
    data_out_tmp1(31 downto 24) when (ac_mode="11") else
    (others => ext);
  data_out_tmp2(23 downto 16) <=
    data_out_tmp1(23 downto 16) when (ac_mode="11") else
    data_out_tmp1(31 downto 24) when (ac_mode="10") else
    (others => ext);
  data_out_tmp2(15 downto 8) <=
    data_out_tmp1(15 downto 8) when (ac_mode="11") else
    data_out_tmp1(23 downto 16) when (ac_mode="10") else
    data_out_tmp1(31 downto 24) when (ac_mode="01") else
    (others => ext);
  data_out_tmp2(7 downto 0) <=
    data_out_tmp1(7 downto 0) when (ac_mode="11") else
    data_out_tmp1(15 downto 8) when (ac_mode="10") else
    data_out_tmp1(23 downto 16) when (ac_mode="01") else
    data_out_tmp1(31 downto 24) when (ac_mode="00") else
    (others => ext);

  data_out <= data_out_tmp2;
end synthesis;

-----------------------------------------
-- Generated by ASIP Meister ver.1.1 --
-----------------------------------------
