-----------------------------------------------------------
-- Entity Name: rtg_register_w7
-----------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity rtg_register_w7 is
  port (
    CLK : in std_logic;
    RST : in std_logic;
    ENB : in std_logic;
    DIN : in std_logic_vector(6 downto 0);
    DOUT : out std_logic_vector(6 downto 0)
  );
end entity rtg_register_w7;

architecture RTL of rtg_register_w7 is


begin
  process (RST, CLK)
  begin
    if RST = '1' then
      DOUT <= "0000000";
    elsif CLK'event and CLK = '1' then
      if ENB = '1' then
        DOUT <= DIN;
      end if;
    end if;
  end process;
end RTL;

-----------------------------------------
-- Generated by ASIP Meister ver.1.1 --
-----------------------------------------
