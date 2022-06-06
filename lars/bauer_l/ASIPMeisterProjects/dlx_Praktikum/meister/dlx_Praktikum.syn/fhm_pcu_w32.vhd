-- Module     : 1-bit full adder
-- References :
-- Author     : Designed by T.Morifuji (c)1996.
-- Version    : 1.0  :
-- VHDL       : 87

-- Functionality : synthesis level
--  port
--   a, b   : add datas
--   cin    : carry in
--   result : result of a + b + c
--   cout   : carry of a + b + c

library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.std_logic_unsigned.all;

entity fhm_pcu_w32_add32_fa is
    port (a:    in  std_logic;
          b:    in  std_logic;
          cin:  in  std_logic;
          s:    out std_logic;
          cout: out std_logic );
end fhm_pcu_w32_add32_fa;

architecture synthesis of fhm_pcu_w32_add32_fa is
begin

   s <= (not a and b and not cin) or
	(a and not b and not cin) or
        (not a and not b and cin) or 
	(a and b and cin);

   cout <= (a and b and not cin) or 
           (not a and b and cin) or 
           (a and not b and cin) or 
           (a and b and cin);

end synthesis;

--%%

-- Module     : 32-bit ripple carry adder
-- References :
-- Author     : Designed by T.Morifuji (c)1996.
-- Version    : 1.0
-- VHDL       : 87

-- Functionality : synthesis level
--  port
--   a, b   : add datas
--   cin    : carry in
--   result : result of a + b + c
--   cout   : '1' when result > 2^32-1 else '0'

library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.std_logic_unsigned.all;

entity fhm_pcu_w32_add32 is
    port (a, b   : in  std_logic_vector(31 downto 0);
          cin    : in  std_logic;
          result : out std_logic_vector(31 downto 0);
          cout   : out std_logic);
end fhm_pcu_w32_add32;

architecture synthesis of fhm_pcu_w32_add32 is

   component fhm_pcu_w32_add32_fa
      port (a:    in  std_logic;
            b:    in  std_logic;
            cin:  in  std_logic;
            s:    out std_logic;
            cout: out std_logic);
   end component;

   signal  ctmp :  std_logic_vector(32 downto 0);

begin

   ctmp(0) <= cin;

   full_adder: for i in 31 downto 0 generate
   fan: fhm_pcu_w32_add32_fa 
      port map (a    => a(i),
                b    => b(i),
                cin  => ctmp(i),
                s    => result(i),
                cout => ctmp(i+1));
   end generate full_adder;

   cout <= ctmp(32);

end synthesis;


--%%

-- Module     : 32-bit positive edge trigger register
-- References :
-- Author     : Designed by T.Morifuji (c)1997.
-- Version    : 1.0  :
-- VHDL       : 87

-- Functionality : synthesis level
--  port
--   clock    : clock
--   reset    : reset
--   enb      : '1' then register data
--   data_in  : data to register
--   data_out : registered data

library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.std_logic_unsigned.all;

entity fhm_pcu_w32_reg32 is
  port (clock    : in  std_logic;
        reset    : in  std_logic;
        enb      : in  std_logic;
        data_in  : in  std_logic_vector(31 downto 0);
        data_out : out std_logic_vector(31 downto 0) );
end fhm_pcu_w32_reg32;

architecture synthesis of fhm_pcu_w32_reg32 is
begin

  process (clock, reset, enb)
  begin
    if (reset = '1') then
      data_out <= "00000000000000000000000000000000";
    elsif (clock'event and clock = '1') then
      if (enb = '1') then
        data_out <= data_in;
      end if;
    end if;
  end process;

end synthesis;

--%%
-- Module	: 32-bit program counter unit
--                1 increment step and
--                using rca for adder algorithm
-- Refereces	:
-- Author	: Designed by M. Itoh (c)1998
-- Version	: 1.0 :

-- Functionality : synthesis level
-- port
--  clock      	: clock
--  load	: '1' then set counter value
--  reset	: '1' then reset counter
--  hold	: '1' then hold counter value
--  data_in	: data to register
--  data_out	: registered data

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_signed.all;

entity fhm_pcu_w32 is
  port(
    clock    : in  std_logic;
    load     : in  std_logic;
    reset    : in  std_logic;
    hold     : in  std_logic;
    data_in  : in  std_logic_vector(31 downto 0);
    data_out : out std_logic_vector(31 downto 0));
end fhm_pcu_w32;

architecture synthesis of fhm_pcu_w32 is
component fhm_pcu_w32_add32
  port (
    a, b   : in  std_logic_vector(31 downto 0);
    cin    : in  std_logic;
    result : out std_logic_vector(31 downto 0);
    cout   : out std_logic );
end component;

component fhm_pcu_w32_reg32
  port (
    clock    : in  std_logic;
    reset    : in  std_logic;
    enb	     : in  std_logic;
    data_in  : in  std_logic_vector(31 downto 0);
    data_out : out std_logic_vector(31 downto 0)
  );
end component;

signal zero, one	: std_logic;
signal pc, next_pc, inc_pc	: std_logic_vector(31 downto 0);
signal step	: std_logic_vector(31 downto 0);

signal	cout	: std_logic;

begin
  zero <= '0';
  one  <= '1';
  step <= "00000000000000000000000000000001";
  
  next_pc <= data_in when load = '1' else
             pc when hold = '1' else
             inc_pc;
  
  add1 : fhm_pcu_w32_add32
  port map(
    a	   => pc,
    b	   => step,
    cin	   => zero,
    result => inc_pc,
    cout   => open);

  reg1 : fhm_pcu_w32_reg32
  port map (
    clock    => clock,
    reset    => reset,
    enb      => one,
    data_in  => next_pc,
    data_out => pc);

  data_out <= pc;
end synthesis;

-----------------------------------------
-- Generated by ASIP Meister ver.1.1 --
-----------------------------------------
