-- Module     : Basic 4bit carry look ahead adder
-- References : John L. Hennessy, David A. Patterson,
--              "Computer Architecture : A Quantitative Approach,"
--              Second Edition, Morgan Kaufmann, 1996
-- Author     : Designed by T.Morifuji (c)1996,1997.
-- Version    : 1.0  :
-- VHDL       : 87

-- Functionality : synthesis level
--  port
--   a, b   : add datas
--   cin    : carry in
--   result : result of a + b + c
--   cout   : '1' when result > 2^4-1 else '0'

library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.std_logic_unsigned.all;

entity fhm_adder_w32_cla4 is
  port (a, b       : in  std_logic_vector(3 downto 0);
        cin        : in  std_logic;
        result     : out std_logic_vector(3 downto 0);
        pout, gout : out std_logic);
end fhm_adder_w32_cla4;

architecture synthesis of fhm_adder_w32_cla4 is

  signal p, g  : std_logic_vector(3 downto 0);
  signal carry : std_logic_vector(2 downto 0);

begin  --  synthesis

  --  make carry generate
  g(0) <= a(0) and b(0);
  g(1) <= a(1) and b(1);
  g(2) <= a(2) and b(2);
  g(3) <= a(3) and b(3);

  --  make carry propagate
  p(0) <= a(0) xor b(0);
  p(1) <= a(1) xor b(1);
  p(2) <= a(2) xor b(2);
  p(3) <= a(3) xor b(3);
  
  --   make internal carry and external carry
  carry(0) <= g(0) or (p(0) and cin);
  carry(1) <= g(1) or (p(1) and g(0)) or (p(1) and p(0) and cin);
  carry(2) <= g(2) or (p(2) and g(1)) or (p(2) and p(1) and g(0))
            or (p(2) and p(1) and p(0) and cin);
  pout  <= p(3) and p(2) and p(1) and p(0);
  gout  <= g(3) or (p(3) and g(2)) or (p(3) and p(2) and g(1))
            or (p(3) and p(2) and p(1) and g(0));

  --  make sum.
  result(0) <= p(0) xor cin;
  result(1) <= p(1) xor carry(0);
  result(2) <= p(2) xor carry(1);
  result(3) <= p(3) xor carry(2);

end synthesis;

--%%

-- Module     : Basic 16bit carry look ahead adder
-- References : John L. Hennessy, David A. Patterson,
--              "Computer Architecture : A Quantitative Approach,"
--              Second Edition, Morgan Kaufmann, 1996
-- Author     : Designed by T.Morifuji (c)1996,1997.
-- Version    : 1.0  :
-- VHDL       : 87

-- Functionality : synthesis level
--  port
--   a, b   : add datas
--   cin    : carry in
--   result : result of a + b + c
--   cout   : '1' when result > 2^16-1 else '0'

library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.std_logic_unsigned.all;

entity fhm_adder_w32_cla16 is
  port (a, b       : in std_logic_vector(15 downto 0);
        cin        : in std_logic;
        result     : out std_logic_vector(15 downto 0);
        pout, gout : out std_logic);
end fhm_adder_w32_cla16;

architecture synthesis of fhm_adder_w32_cla16 is

  component fhm_adder_w32_cla4
    port (a, b       : in  std_logic_vector(3 downto 0);
          cin        : in  std_logic;
          result     : out std_logic_vector(3 downto 0);
          pout, gout : out std_logic);
  end component;

  signal p, g  : std_logic_vector(3 downto 0);
  signal carry : std_logic_vector(2 downto 0);

begin  --  synthesis

  -- make internal carry and carry propagate/generate
  carry(0) <= g(0) or (p(0) and cin);
  carry(1) <= g(1) or (p(1) and g(0)) or (p(1) and p(0) and cin);
  carry(2) <= g(2) or (p(2) and g(1)) or (p(2) and p(1) and g(0))
            or (p(2) and p(1) and p(0) and cin);
  pout <= p(3) and p(2) and p(1) and p(0);
  gout <= g(3) or (p(3) and g(2)) or (p(3) and p(2) and g(1))
          or (p(3) and p(2) and p(1) and g(0));
  
  -- work adder
  u0 : fhm_adder_w32_cla4
    port map (
      a      => a(3 downto 0),
      b      => b(3 downto 0),
      cin    => cin,
      result => result(3 downto 0),
      pout   => p(0),
      gout   => g(0));
  
  u1 : fhm_adder_w32_cla4
    port map (
      a      => a(7 downto 4),
      b      => b(7 downto 4),
      cin    => carry(0),
      result => result(7 downto 4),
      pout   => p(1),
      gout   => g(1));

  u2 : fhm_adder_w32_cla4
    port map (
      a      => a(11 downto 8),
      b      => b(11 downto 8),
      cin    => carry(1),
      result => result(11 downto 8),
      pout   => p(2),
      gout   => g(2));

  u3 : fhm_adder_w32_cla4
    port map (
      a      => a(15 downto 12),
      b      => b(15 downto 12),
      cin    => carry(2),
      result => result(15 downto 12),
      pout   => p(3),
      gout   => g(3));

end synthesis;

--%%

-- Module     : 32-bit carry look ahead adder
-- References : John L. Hennessy, David A. Patterson,
--              "Computer Architecture : A Quantitative Approach,"
--              Second Edition, Morgan Kaufmann, 1996
-- Author     : Designed by T.Morifuji (c)1996,1997.
-- Version    : 1.0  :
-- VHDL       : 87

-- Functionality : synthesis level
--  port
--   a, b   : add datas
--   cin    : carry in
--   result : result of a + b + c
--   cout   : '1' when result > 2^64-1 else '0'

library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.std_logic_unsigned.all;

entity fhm_adder_w32 is
  port (a, b   : in  std_logic_vector(31 downto 0);
        cin    : in  std_logic;
        result : out std_logic_vector(31 downto 0);
        cout   : out std_logic);
end fhm_adder_w32;

architecture synthesis of fhm_adder_w32 is

  component fhm_adder_w32_cla16
    port (a, b       : in std_logic_vector(15 downto 0);
          cin        : in std_logic;
          result     : out std_logic_vector(15 downto 0);
          pout, gout : out std_logic);
  end component;

  signal p, g      : std_logic_vector(1 downto 0);
  signal carry     : std_logic_vector(1 downto 0);
begin
  carry(0) <= g(0) or
              (p(0) and cin);
  carry(1) <= g(1) or
              (p(1) and g(0)) or
              (p(1) and p(0) and cin);

  u16_0 : fhm_adder_w32_cla16
    port map (
      a      => a(15 downto 0),
      b      => b(15 downto 0),
      cin    => cin,
      result => result(15 downto 0),
      pout   => p(0),
      gout   => g(0));
  u16_1 : fhm_adder_w32_cla16
    port map (
      a      => a(31 downto 16),
      b      => b(31 downto 16),
      cin    => carry(0),
      result => result(31 downto 16),
      pout   => p(1),
      gout   => g(1));

  cout <= carry(1);
end synthesis;

-----------------------------------------
-- Generated by ASIP Meister ver.1.1 --
-----------------------------------------
