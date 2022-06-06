LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE cmpy_v1_0_comp IS

    component cmpy_v1_0  
    generic(
        A_WIDTH     : integer := 32;    -- width of multiplicand a and c, 2 to 18 bits
        B_WIDTH     : integer := 32;    -- width of multiplicand b and d, 2 to 18 bits
        P_WIDTH     : integer := 32;    -- product width, 3 to 35 bits
        OPTIMIZE    : integer := 1;     -- 0:SPEED,  1: DSP48_COUNT, 2:AREA
        ROUND       : integer := 0;     -- 0: Truncate           1: Round
        PIPE_IN     : integer := 1;     -- number of delay stages on input 0 or 1
        PIPE_MID    : integer := 1;     -- 0: unregistered-; 1: registered internal results
        PIPE_OUT    : integer := 1);    -- number of delay stages on output 0 or 1
    port( 
        ar          : in std_logic_vector(a_width-1 downto 0);
        ai          : in std_logic_vector(a_width-1 downto 0);
        br          : in std_logic_vector(b_width-1 downto 0);
        bi          : in std_logic_vector(b_width-1 downto 0);
        round_cy    : in std_logic;
        pr          : out std_logic_vector(P_WIDTH-1 downto 0);
        pi          : out std_logic_vector(P_WIDTH-1 downto 0);
        clk         : in std_logic;
        ce          : in std_logic;
        rst         : in std_logic);
    end component; 

END cmpy_v1_0_comp;


