-- Module	 : Data Memory Access Unit
-- Author	 : M. Itoh (c) 2000.
--                 Modified by J.Sato (c) 2001
-- Version	 : 1.0
-- VHDL          : 87

-- Functionality : behavior level
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
    port (reset        : in  std_logic;				-- reset signal
	  req          : in  std_logic;				-- request from cpu
	  rw           : in  std_logic;				-- read/write mode from cpu
  ac_mode : in std_logic_vector(1 downto 0); -- access mode from cpu
          ext_mode     : in  std_logic;				-- extention mode from cpu
	addr : in std_logic_vector(31 downto 0); -- address from cpu
	data_in : in std_logic_vector(31 downto 0); -- input data from cpu
	  addr_err     : out std_logic;				-- address error signal for cpu
	  req_bus      : out std_logic;				-- request for bus
	w_mode_bus : out std_logic_vector(3 downto 0); -- access mode for bus
	  addr_bus     : out std_logic_vector(31 downto 0);	-- address for bus
	data_bus : inout std_logic_vector(31 downto 0); -- input data for bus
	  ack_bus      : in  std_logic;				-- ack from bus
	  ack          : out std_logic;				-- ack for cpu
	data_out : out std_logic_vector(31 downto 0)); -- output data for cpu
end fhm_dmau_w32;

-- purpose: behavior description for data memory access unit
architecture behavior of fhm_dmau_w32 is

begin  -- behavior
    process (reset, req, ack_bus)
    begin  -- process
      if reset = '1' then
        req_bus <= '0';
        ack     <= '0';
      else
        if req'event and req = '1' then
          addr_bus <= addr(31 downto 2) & "00";
          if rw = '1' then
            if ac_mode = "11" then
              if addr(1 downto 0) = "00" then
                addr_err <= '0';
                req_bus  <= '1';
                data_bus <= data_in(31 downto 0);
                w_mode_bus <= "0000";
              else
                addr_err <= '1';
                req_bus  <= '0';
                data_bus <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
              end if;
            elsif ac_mode = "10" then
              if addr(1 downto 0) = "00" then
                addr_err <= '0';
                req_bus  <= '1';
                data_bus <= data_in(23 downto 0) & "ZZZZZZZZ";
                w_mode_bus <= "0001";
              elsif addr(1 downto 0) = "01" then
                addr_err <= '0';
                req_bus  <= '1';
                data_bus <= "ZZZZZZZZ" & data_in(23 downto 0);
                w_mode_bus <= "1000";
              else
                addr_err <= '1';
                req_bus  <= '0';
                data_bus <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
              end if;
            elsif ac_mode = "01" then
              if addr(1 downto 0) = "00" then
                addr_err <= '0';
                req_bus  <= '1';
                data_bus <= data_in(15 downto 0) & "ZZZZZZZZZZZZZZZZ";
                w_mode_bus <= "0011";
              elsif addr(1 downto 0) = "01" then
                addr_err <= '0';
                req_bus  <= '1';
  data_bus <= "ZZZZZZZZ" & data_in(15 downto 0) & "ZZZZZZZZ";
                w_mode_bus <= "1001";
              elsif addr(1 downto 0) = "10" then
                addr_err <= '0';
                req_bus  <= '1';
                data_bus <= "ZZZZZZZZZZZZZZZZ" & data_in(15 downto 0);
                w_mode_bus <= "1100";
              else
                addr_err <= '1';
                req_bus  <= '0';
                data_bus <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
              end if;
            elsif ac_mode = "00" then
              if addr(1 downto 0) = "00" then
                addr_err <= '0';
                req_bus  <= '1';
  data_bus <= data_in(7 downto 0) & "ZZZZZZZZZZZZZZZZZZZZZZZZ";
                w_mode_bus <= "0111";
              elsif addr(1 downto 0) = "01" then
                addr_err <= '0';
                req_bus  <= '1';
  data_bus <= "ZZZZZZZZ" & data_in(7 downto 0) & "ZZZZZZZZZZZZZZZZ";
                w_mode_bus <= "1011";
              elsif addr(1 downto 0) = "10" then
                addr_err <= '0';
                req_bus  <= '1';
  data_bus <= "ZZZZZZZZZZZZZZZZ" & data_in(7 downto 0) & "ZZZZZZZZ";
                w_mode_bus <= "1101";
              elsif addr(1 downto 0) = "11" then
                addr_err <= '0';
                req_bus  <= '1';
  data_bus <= "ZZZZZZZZZZZZZZZZZZZZZZZZ" & data_in(7 downto 0);
                w_mode_bus <= "1110";
              else
                addr_err <= '1';
                req_bus  <= '0';
                data_bus <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
              end if;
            end if;
          elsif rw = '0' then
            data_bus <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
            w_mode_bus <= "1111";
            if ac_mode = "11" then
              if addr(1 downto 0) = "00" then
                addr_err <= '0';
                req_bus  <= '1';
              else
                addr_err <= '1';
                req_bus  <= '0';
              end if;
            elsif ac_mode = "10" then
              if addr(1 downto 0) = "00" then
                addr_err <= '0';
                req_bus  <= '1';
              elsif addr(1 downto 0) = "01" then
                addr_err <= '0';
                req_bus  <= '1';
              else
                addr_err <= '1';
                req_bus  <= '0';
              end if;
            elsif ac_mode = "01" then
              if addr(1 downto 0) = "00" then
                addr_err <= '0';
                req_bus  <= '1';
              elsif addr(1 downto 0) = "01" then
                addr_err <= '0';
                req_bus  <= '1';
              elsif addr(1 downto 0) = "10" then
                addr_err <= '0';
                req_bus  <= '1';
              else
                addr_err <= '1';
                req_bus  <= '0';
              end if;
            elsif ac_mode = "00" then
              if addr(1 downto 0) = "00" then
                addr_err <= '0';
                req_bus  <= '1';
              elsif addr(1 downto 0) = "01" then
                addr_err <= '0';
                req_bus  <= '1';
              elsif addr(1 downto 0) = "10" then
                addr_err <= '0';
                req_bus  <= '1';
              elsif addr(1 downto 0) = "11" then
                addr_err <= '0';
                req_bus  <= '1';
              else
                addr_err <= '1';
                req_bus  <= '0';
              end if;
            end if;
          end if;
        elsif req'event and req = '0' then
          req_bus <= '0';
        elsif ack_bus'event and ack_bus = '1' then
          ack <= '1';
          req_bus <= '0';
          if rw = '0' then
            if ac_mode = "11" then
              if addr(1 downto 0) = "00" then
                data_out(31 downto 0) <= data_bus(31 downto 0);
              end if;
            elsif ac_mode = "10" then
              if addr(1 downto 0) = "00" then
                data_out(23 downto 0) <= data_bus(31 downto 8);
  data_out(31 downto 24) <= (others => ext_mode and data_bus(31));
              elsif addr(1 downto 0) = "01" then
                data_out(23 downto 0) <= data_bus(23 downto 0);
  data_out(31 downto 24) <= (others => ext_mode and data_bus(23));
              end if;
            elsif ac_mode = "01" then
              if addr(1 downto 0) = "00" then
                data_out(15 downto 0) <= data_bus(31 downto 16);
  data_out(31 downto 16) <= (others => ext_mode and data_bus(31));
              elsif addr(1 downto 0) = "01" then
                data_out(15 downto 0) <= data_bus(23 downto 8);
  data_out(31 downto 16) <= (others => ext_mode and data_bus(23));
              elsif addr(1 downto 0) = "10" then
                data_out(15 downto 0) <= data_bus(15 downto 0);
  data_out(31 downto 16) <= (others => ext_mode and data_bus(15));
              end if;
            elsif ac_mode = "00" then
              if addr(1 downto 0) = "00" then
                data_out(7 downto 0) <= data_bus(31 downto 24);
  data_out(31 downto 8) <= (others => ext_mode and data_bus(31));
              elsif addr(1 downto 0) = "01" then
                data_out(7 downto 0) <= data_bus(23 downto 16);
  data_out(31 downto 8) <= (others => ext_mode and data_bus(23));
              elsif addr(1 downto 0) = "10" then
                data_out(7 downto 0) <= data_bus(15 downto 8);
  data_out(31 downto 8) <= (others => ext_mode and data_bus(15));
              elsif addr(1 downto 0) = "11" then
                data_out(7 downto 0) <= data_bus(7 downto 0);
  data_out(31 downto 8) <= (others => ext_mode and data_bus(7));
              end if;
            end if;
          end if;
        elsif ack_bus'event and ack_bus = '0' then
          ack <= '0';
        end if;
      end if;
    end process;
      
end behavior;

-----------------------------------------
-- Generated by ASIP Meister ver.1.1 --
-----------------------------------------
