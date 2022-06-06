-- Module     : Arithmetic Logic Unit
-- Feature    : 
-- References : 
-- Author     : Designed by T.Morifuji (c)1997,1998.

-- Version : 1.3  : Modified by Y.Yamane 2002/01/15 Tue

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
--  | 1 1 0 1 1 |             |             | 0 * * * |
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

-- Functionality : behavior level
--  port
--   a, b   : datas
--   cin    : carry in
--   mode   : control (refer to the above table)
--   result : result of calculation
--   flag   : flag of result (refer to the above table)


library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.std_logic_arith.all;
  use IEEE.std_logic_unsigned.all;

entity fhm_alu_w32 is
  port (a, b 	: in std_logic_vector(31 downto 0);
        cin     : in std_logic;
        mode 	: in std_logic_vector(4 downto 0);
        result 	: out std_logic_vector(31 downto 0);
        flag 	: out std_logic_vector(3 downto 0) );
end fhm_alu_w32;


architecture behavior of fhm_alu_w32 is

  -- purpose: adder
  procedure fhm_alu_w32_add (
    constant a, b   : in  std_logic_vector(31 downto 0);
    constant cin    : in  std_logic;
    variable result : out std_logic_vector(31 downto 0);
    variable cout   : out std_logic) is
    variable int_a, int_b : std_logic_vector(32 downto 0);
    variable int_result   : std_logic_vector(32 downto 0);
  begin  -- fhm_alu_w32_add
    int_a := '0' & a;
    int_b := '0' & b;
    int_result := int_a + int_b + cin;
    result := int_result(31 downto 0);
    cout := int_result(32);
  end fhm_alu_w32_add;

begin

  process(a, b, cin, mode)
    variable pre_result    : std_logic_vector(31 downto 0);
    variable s_max, s_min  : std_logic_vector(31 downto 0);
    variable C, Z, S, V    : std_logic;

  begin

    case mode is
      when "00000" =>
  
  	fhm_alu_w32_add(a,"00000000000000000000000000000000",cin,pre_result,C);
      when "00001" =>
        fhm_alu_w32_add(a,b,cin,pre_result,C);
      when "00010" =>
        fhm_alu_w32_add(a,not b,cin,pre_result,C);
      when "00011" =>
  
  	fhm_alu_w32_add(a,"11111111111111111111111111111111",cin,pre_result,C);
      when "00100" =>
  
  	fhm_alu_w32_add(a,"00000000000000000000000000000000",cin,pre_result,C);
      when "00101" =>
        fhm_alu_w32_add(a,b,cin,pre_result,C);
      when "00110" =>
        fhm_alu_w32_add(a,not b,cin,pre_result,C);
      when "00111" =>
  
  	fhm_alu_w32_add(a,"11111111111111111111111111111111",cin,pre_result,C);
      when "01000" =>
  
  	fhm_alu_w32_add(a,"00000000000000000000000000000000",cin,pre_result,C);
      when "01001" =>
        fhm_alu_w32_add(a,b,cin,pre_result,C);
      when "01010" =>
        fhm_alu_w32_add(a,not b,cin,pre_result,C);
      when "01011" =>
  fhm_alu_w32_add(a,not
  	"11111111111111111111111111111111",cin,pre_result,C);
      when "01100" =>
  
  	fhm_alu_w32_add(a,"00000000000000000000000000000000",cin,pre_result,C);
      when "01101" =>
        fhm_alu_w32_add(a,b,cin,pre_result,C);
      when "01110" =>
        fhm_alu_w32_add(a,not b,cin,pre_result,C);
      when "01111" =>
  fhm_alu_w32_add(a,not
  	"11111111111111111111111111111111",cin,pre_result,C);
      when "10000" =>
        pre_result := a or b;
      when "10001" =>
        pre_result := a xor b;
      when "10010" =>
        pre_result := a and b;
      when "10011" =>
        pre_result := not a;
      when "10100" =>
        fhm_alu_w32_add(a,not b,'1',pre_result,C);
      when "10101" =>
        fhm_alu_w32_add(a,not b,'1',pre_result,C);
      when "10110" =>
        fhm_alu_w32_add(a,not b,'1',pre_result,C);
      when "10111" =>
        fhm_alu_w32_add(a,not b,'1',pre_result,C);
      when "11000" =>
        pre_result := not ( a or b );
      when "11001" =>
        pre_result := not ( a xor b );
      when "11010" =>
        pre_result := not ( a and b );
      when others =>
        pre_result := "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    end case;

    if mode(4 downto 2) = "100" or mode(4 downto 3) = "11" then
      C := '0';
    end if;

    if pre_result = "00000000000000000000000000000000" then
      Z := '1';
    else
      Z := '0';
    end if;

    S := pre_result(31);

    V := '0';
    case mode is
      when "01000" | "01100" =>
        if a(31)='0' and pre_result(31)='1' then
          V := '1';
        end if;
      when "01001" | "01101" =>
        if     ( a(31)='0' and b(31)='0'
                 and pre_result(31)='1' )
            or ( a(31)='1' and b(31)='1'
                 and pre_result(31)='0' ) then
          V := '1';
        end if;
      when "01010" | "01110" | "10110" | "10111" =>
        if     ( a(31)='0' and b(31)='1'
                 and pre_result(31)='1' )
            or ( a(31)='1' and b(31)='0'
                 and pre_result(31)='0' ) then
          V := '1';
        end if;
      when "01011" | "01111" =>
        if a(31)='1' and pre_result(31)='0' then
          V := '1';
        end if;
      when others =>
        V := '0';
    end case;


    if a(31) = '0' and b(31) = '1' then
      s_max := a;
    elsif a(31) = '1' and b(31) = '0' then
      s_max := b;
    elsif a(31) = '0' and C = '1' then
      s_max := a;
    else
      s_max := b;
    end if;

    if a(31) = '0' and b(31) = '1' then
      s_max := b;
    elsif a(31) = '1' and b(31) = '0' then
      s_max := a;
    elsif a(31) = '0' and C = '1' then
      s_max := b;
    else
      s_max := a;
    end if;

    if mode(3 downto 2) = "01" then
      if C = '1' and mode(1) = '0' then
        pre_result := "11111111111111111111111111111111";
      elsif C = '0' and mode(1) = '1' then
        pre_result := "00000000000000000000000000000000";
      end if;
    elsif mode (3 downto 2) = "11" and V = '1' then
      if C = '0' and mode(1) = '0' then
        pre_result := s_max;
      else
        pre_result := s_min;
      end if;
    end if;

    if mode(4 downto 1) = "1010" then
  if (C = '1' and mode(0) = '0') or (C = '0' and mode(0) = '1') then
        pre_result := a;
  elsif (C = '1' and mode(0) = '1') or (C = '0' and mode(0) = '0') then
        pre_result := b;
      end if;
    end if;

    if mode(4 downto 1) = "1011" then
      if ( a(31) = '0' and b(31) = '1'
           and mode(0) = '0') or
         ( a(31) = '1' and b(31) = '0'
           and mode(0) = '1') then
        pre_result := a;
      elsif ( a(31) = '1' and b(31) = '0'
             and mode(0) = '0') or
           ( a(31) = '0' and b(31) = '1'
             and mode(0) = '1') then
        pre_result := b;
  elsif (C = '1' and mode(0) = '0') or (C = '0' and mode(0) = '1') then
        pre_result := a;
  elsif (C = '1' and mode(0) = '1') or (C = '0' and mode(0) = '0') then
        pre_result := b;
      end if;
    end if;

    result <= pre_result;
    flag <= C & Z & S & V;

  end process;
end behavior;

-----------------------------------------
-- Generated by ASIP Meister ver.1.1 --
-----------------------------------------
