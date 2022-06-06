-- Module     : 4bit Carry Look Ahead Adder
-- Feature    : 
-- References : Computer Architecture
-- Author     : Designed by T.Morifuji (c)1996,1997.
-- Version    : 1.0  :

library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.std_logic_unsigned.all;

entity fhm_alu_w32_add4 is
  port (a, b       : in  std_logic_vector(3 downto 0);
        cin        : in  std_logic;
        result     : out std_logic_vector(3 downto 0);
        pout, gout : out std_logic);
end fhm_alu_w32_add4;

architecture synthesis of fhm_alu_w32_add4 is

  signal p, g  : std_logic_vector(3 downto 0);
  signal carry : std_logic_vector(2 downto 0);

begin  --  gate

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

-- Module     : 16bit Carry Look Ahead Adder
-- Feature    : 
-- References : Computer Architecture
-- Author     : Designed by T.Morifuji (c)1996,1997.
-- Version    : 1.0  :

library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.std_logic_unsigned.all;

entity fhm_alu_w32_add16 is
  port (a, b       : in std_logic_vector(15 downto 0);
        cin        : in std_logic;
        result     : out std_logic_vector(15 downto 0);
        pout, gout : out std_logic);
end fhm_alu_w32_add16;

architecture synthesis of fhm_alu_w32_add16 is

  component fhm_alu_w32_add4
    port (a, b       : in  std_logic_vector(3 downto 0);
          cin        : in  std_logic;
          result     : out std_logic_vector(3 downto 0);
          pout, gout : out std_logic);
  end component;

  signal p, g  : std_logic_vector(3 downto 0);
  signal carry : std_logic_vector(2 downto 0);

--  for all : fhm_alu_w32_add4
--    use entity work.fhm_alu_w32_add4(gate);
begin  --  gate

  -- make internal carry and carry propagate/generate
  carry(0) <= g(0) or (p(0) and cin);
  carry(1) <= g(1) or (p(1) and g(0)) or (p(1) and p(0) and cin);
  carry(2) <= g(2) or (p(2) and g(1)) or (p(2) and p(1) and g(0))
            or (p(2) and p(1) and p(0) and cin);
  pout <= p(3) and p(2) and p(1) and p(0);
  gout <= g(3) or (p(3) and g(2)) or (p(3) and p(2) and g(1))
          or (p(3) and p(2) and p(1) and g(0));
  
  -- work adder
  u0 : fhm_alu_w32_add4
    port map (a(3 downto 0), b(3 downto 0), cin,
              result(3 downto 0), p(0), g(0));
  u1 : fhm_alu_w32_add4
    port map (a(7 downto 4), b(7 downto 4), carry(0),
              result(7 downto 4), p(1), g(1));
  u2 : fhm_alu_w32_add4
    port map (a(11 downto 8), b(11 downto 8), carry(1),
              result(11 downto 8), p(2), g(2));
  u3 : fhm_alu_w32_add4
    port map (a(15 downto 12), b(15 downto 12), carry(2),
              result(15 downto 12), p(3), g(3));

end synthesis;

--%%

-- Module     : 32 bit Carry Look Ahead Adder
-- Feature    : 
-- References : Computer Architecture
-- Author     : Designed by T.Morifuji (c)1996,1997.
-- Version    : 1.0  :

library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.std_logic_unsigned.all;

entity fhm_alu_w32_add is
  port (a, b   : in  std_logic_vector(32-1 downto 0);
        cin    : in  std_logic;
        result : out std_logic_vector(32-1 downto 0);
        cout   : out std_logic);
end fhm_alu_w32_add;

architecture synthesis of fhm_alu_w32_add is

  component fhm_alu_w32_add16
    port (a, b       : in std_logic_vector(15 downto 0);
          cin        : in std_logic;
          result     : out std_logic_vector(15 downto 0);
          pout, gout : out std_logic);
  end component;

--  for all : fhm_alu_w32_add16
--    use entity work.fhm_alu_w32_add16(gate);

  signal p, g      : std_logic_vector(1 downto 0);
  signal carry     : std_logic_vector(1 downto 0);
begin
  carry(0) <= g(0) or
              (p(0) and cin);
  carry(1) <= g(1) or
              (p(1) and g(0)) or
              (p(1) and p(0) and cin);

  u16_0 : fhm_alu_w32_add16
    port map (a(15 downto 0), b(15 downto 0),cin,
              result(15 downto 0), p(0), g(0));
  u16_1 : fhm_alu_w32_add16
    port map (a(31 downto 16), b(31 downto 16),carry(0),
              result(31 downto 16), p(1), g(1));

  cout <= carry(1);
end synthesis;

--%
--
--  	%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
-- Module     : Arithmetic Logic Unit
-- Feature    : 
-- References : 
-- Author     : Designed by T.Morifuji (c)1997,1998.

-- Version : 1.1  : all test is ok.
-- Version : 1.2  : modified by Y.Yamane 2001/12/26

-- Comment : function table is followings.
--  +-----------+-------------+-------------+---------+
--  |   mode    |   cin = 0   |   cin = 1   |  flag   |
--  +-----------+-------------+-------------+---------+
--  | 4 3 2 1 0 |   result    |   result    | c z s v |
--  +-----------+-------------+-------------+---------+
--  | 0 0 0 0 0 | a           | a + 1       | * * * 0 | unsigned (c)
--  | 0 0 0 0 1 | a + b       | a + b + 1   | * * * 0 | unsigned (c)
--  | 0 0 0 1 0 | a - b - 1   | a - b       | * * * 0 | unsigned (c)
--  | 0 0 0 1 1 | a - 1       | a           | * * * 0 | unsigned (c)
--  | 0 0 1 0 0 | a           | a +] 1      | * * * 0 | unsigned clip
--  | 0 0 1 0 1 | a +] b      | a +] b +] 1 | * * * 0 | unsigned clip
--  | 0 0 1 1 0 | a -] b -] 1 | a -] b      | * * * 0 | unsigned clip
--  | 0 0 1 1 1 | a -] 1      | a           | * * * 0 | unsigned clip
--  | 0 1 0 0 0 | a           | a + 1       | * * * * | signed (v)
--  | 0 1 0 0 1 | a + b       | a + b + 1   | * * * * | signed (v)
--  | 0 1 0 1 0 | a - b - 1   | a - b       | * * * * | signed (v)
--  | 0 1 0 1 1 | a - 1       | a           | * * * * | signed (v)
--  | 0 1 1 0 0 | a           | a +] 1      | * * * * | signed clip
--  | 0 1 1 0 1 | a +] b      | a +] b +] 1 | * * * * | signed clip
--  | 0 1 1 1 0 | a -] b -] 1 | a -] b      | * * * * | signed clip
--  | 0 1 1 1 1 | a -] 1      | a           | * * * * | signed clip
--  | 1 0 0 0 0 |           a or b          | 0 * * 0 |
--  | 1 0 0 0 1 |          a xor b          | 0 * * 0 |
--  | 1 0 0 1 0 |          a and b          | 0 * * 0 |
--  | 1 0 0 1 1 |           not a           | 0 * * 0 |
--  | 1 0 1 0 0 |             | max(a, b)   | * * * 0 | unsigned
--  | 1 0 1 0 1 |             | min(a, b)   | * * * 0 | unsigned
--  | 1 0 1 1 0 |             | max(a, b)   | * * * * | signed
--  | 1 0 1 1 1 |             | min(a, b)   | * * * * | signed
--  | 1 1 0 0 0 |          a nor b          | 0 * * 0 |
--  | 1 1 0 0 1 |         a nxor b          | 0 * * 0 |
--  | 1 1 0 1 0 |         a nand b          | 0 * * 0 |
--  | 1 1 0 1 1 |             |             | 0 * * 0 |
--  | 1 1 1 0 0 |             |             | 0 * * * |
--  | 1 1 1 0 1 |             |             | 0 * * * |
--  | 1 1 1 1 0 |             |             | 0 * * * |
--  | 1 1 1 1 1 |             |             | 0 * * * |
--  +-----------+-------------+-------------+---------+
-- C is '1' when (carry-occurred or not-bollowed) and unsigned-mode
--  	else
--      '0';
-- V is '1' when overflowed and signed-mode else
--      '0';
-- S is equal to MSB of result;
-- Z is '1' when result = 0 else
--      '0';

library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.std_logic_unsigned.all;
  use IEEE.std_logic_arith.all;

entity fhm_alu_w32 is
  port (a, b 	: in std_logic_vector(32-1 downto 0);
        cin     : in std_logic;
        mode 	: in std_logic_vector(4 downto 0);
        result 	: out std_logic_vector(32-1 downto 0);
        flag 	: out std_logic_vector(3 downto 0) );
end fhm_alu_w32;

architecture synthesis of fhm_alu_w32 is

  component fhm_alu_w32_add
    port (a, b 	 : in std_logic_vector(32-1 downto 0);
          cin    : in std_logic;
          result : out std_logic_vector(32-1 downto 0);
          cout 	 : out std_logic);
  end component;

  signal ain, bin             : std_logic_vector(32-1 downto 0);
  signal sum                  : std_logic_vector(32-1 downto 0);
  signal unsigned_max         : std_logic_vector(32-1 downto 0);
  signal unsigned_min         : std_logic_vector(32-1 downto 0);
  signal signed_max           : std_logic_vector(32-1 downto 0);
  signal signed_min           : std_logic_vector(32-1 downto 0);
  signal clipped_signed_sum   : std_logic_vector(32-1 downto 0);
  signal clipped_unsigned_sum : std_logic_vector(32-1 downto 0);
  signal clipped_sum          : std_logic_vector(32-1 downto 0);
  signal tmp_cout             : std_logic;
  signal tmp_out              : std_logic_vector(32-1 downto 0);
  signal pre_result           : std_logic_vector(32-1 downto 0);
  signal V, C                 : std_logic;
  signal pre_pre_v            : std_logic;
  signal pre_v                : std_logic;
  signal unsigned_clipped     : std_logic;
  signal S, Z                 : std_logic;

  signal signed_max_value : std_logic_vector(32-1 downto 0);
  signal signed_min_value : std_logic_vector(32-1 downto 0);

begin

  --  input value of adder
  ain <= a;
  bin <= "00000000000000000000000000000000" when mode(1 downto 0) = "00"
                    and mode(4) = '0'          else -- a
         b     when mode(1 downto 0) = "01"
                    and mode(4) = '0'          else -- a + b
         not b when mode(1 downto 0) = "10"
                    or mode(4) = '1'           else -- a - b
  "11111111111111111111111111111111" when mode(1 downto 0) = "11"
                    and mode(4) = '0'          else -- a - 1
         "11111111111111111111111111111111";

  unsigned_clipped <= tmp_cout xor mode(1);

  clipped_unsigned_sum <= sum when unsigned_clipped = '0' else
  "11111111111111111111111111111111" when mode(1) = '0' else -- (+)
  "00000000000000000000000000000000"; -- (-)

  signed_max_value(32-1) <= '0';
  signed_max_value(32-2 downto 1) <= conv_std_logic_vector(0, 32-2);
  signed_max_value(0) <= '1';
  signed_min_value(32-1) <= '1';
  signed_min_value(32-2 downto 0) <= conv_std_logic_vector(0, 32-1);

  clipped_signed_sum <= sum when pre_pre_v = '0' else
                        signed_max  -- (+)
                           when tmp_cout = '0' and mode(1) = '0' else
                        signed_min; -- (-)

  clipped_sum <= sum when mode(2) = '0' else
                 clipped_unsigned_sum when mode(3) = '0' else
                 clipped_signed_sum;

  unsigned_max <= a when tmp_cout = '1' else
                  b;

  unsigned_min <= a when tmp_cout = '0' else
                  b;

  signed_max <= a when (a(32-1) = '0' and b(32-1) = '1') else
                b when (a(32-1) = '1' and b(32-1) = '0') else
                a when (a(32-1) = '0' and tmp_cout = '1') else
                b;

  signed_min <= b when (a(32-1) = '0' and b(32-1) = '1') else
                a when (a(32-1) = '1' and b(32-1) = '0') else
                b when (a(32-1) = '0' and tmp_cout = '1') else
                a;

  -- output
  tmp_out <= sum         when mode(2) = '0' else -- no clip
             clipped_sum when mode(2) = '1' else
             "11111111111111111111111111111111";

  S <= pre_result(32-1);

  C <= unsigned_clipped when mode(4 downto 2)  = "001" else
       tmp_cout         when mode(4 downto 2) /= "100"
                         and mode(4 downto 2) /= "110" else
       '0';

  Z <= '1' when pre_result = conv_std_logic_vector(0, 32) else
       '0';

  pre_pre_v <= '1' when ((ain(32-1)='0' and bin(32-1) = '0'
                          and sum(32-1) = '1' )
                      or (ain(32-1)='1' and bin(32-1) = '1'
                                       and sum(32-1) = '0' )) else
               '0';

  pre_v <= '1' when mode(2) = '0' and pre_pre_v = '1' else
           '0';

  V <= pre_v     when mode(4 downto 2) = "010" else
       pre_pre_v when mode(4 downto 2) = "011"
               or mode(4 downto 1) = "1011" else
       '0';

  flag <= C & Z & S & V;

  pre_result <= tmp_out      when mode(4) = '0' else
               a or b        when mode(3 downto 0) = "0000" else
               a xor b       when mode(3 downto 0) = "0001" else
               a and b       when mode(3 downto 0) = "0010" else
               not a         when mode(3 downto 0) = "0011" else
               unsigned_max  when mode(3 downto 0) = "0100" else
               unsigned_min  when mode(3 downto 0) = "0101" else
               signed_max    when mode(3 downto 0) = "0110" else
               signed_min    when mode(3 downto 0) = "0111" else
               not (a or b)  when mode(3 downto 0) = "1000" else
               not (a xor b) when mode(3 downto 0) = "1001" else
               not (a and b) when mode(3 downto 0) = "1010" else
               "11111111111111111111111111111111";

  result <= pre_result;

  -- port mapping add
  a0 : fhm_alu_w32_add
    port map (ain, bin, cin,
              sum, tmp_cout);

end synthesis;

-----------------------------------------
-- Generated by ASIP Meister ver.1.1 --
-----------------------------------------
