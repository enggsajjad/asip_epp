library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

library UNISIM;
use UNISIM.VComponents.all;


entity dlx_toplevel is
 port (  reset     : in  std_logic;
         clk_in    : in  std_logic;
			dummy_out : out std_logic
         );
 end dlx_toplevel;

 architecture Behavioral of dlx_toplevel is
  component CPU
    port (
      CLK     : in    std_logic;
      Reset   : in    std_logic;
      instAB  : out   std_logic_vector(31 downto 0);
      instDB  : in    std_logic_vector(31 downto 0);
      DataAB  : out   std_logic_vector(31 downto 0);
      DataDB  : inout std_logic_vector(31 downto 0);
      DataReq : out   std_logic;
      DataAck : in    std_logic;
      dataWin : out   std_logic_vector(3 downto 0)
      );
  end component;
  
  component brom_im
    port (
     	clka: IN std_logic;
		addra: IN std_logic_VECTOR(7 downto 0);
		douta: OUT std_logic_VECTOR(31 downto 0));
  end component;

  component bram_dm
    port (
      clka: IN std_logic;
		dina: IN std_logic_VECTOR(31 downto 0);
		addra: IN std_logic_VECTOR(7 downto 0);
		wea: IN std_logic_VECTOR(0 downto 0);
		douta: OUT std_logic_VECTOR(31 downto 0));
  end component;
	
  signal instrdb : std_logic_vector(31 downto 0);
  signal instrab : std_logic_vector(31 downto 0);
  
  signal dataab_cpu  : std_logic_vector(31 downto 0);
  signal datadb_cpu  : std_logic_vector(31 downto 0);
  signal datareq_cpu : std_logic;
  signal dataack_cpu : std_logic;
  signal wmode_cpu  : std_logic_vector(3 downto 0);

  signal instrab_rom : std_logic_vector(7 downto 0);
  signal dataab_ram  : std_logic_vector(7 downto 0);
  signal we      : std_logic_VECTOR(0 downto 0);
  signal rd      : std_logic;
  signal mem_in  : std_logic_vector(31 downto 0);
  signal mem_out : std_logic_vector(31 downto 0);  
  
  signal datadb_mem  : std_logic_vector(31 downto 0);
  signal datareq_mem : std_logic;
  signal dataack_mem : std_logic;
 

--  signal reset  : std_logic;
  signal clk :    std_logic;
  signal clock_ip :    std_logic;
  signal temp : std_logic;
  signal temp1 : std_logic;
  signal temp2 : std_logic;
  
  signal reset_cpu : std_logic;
  
begin

  clk <= clk_in;
  
  CPU0 : CPU
     port map (
      clk     => clk,
      reset   => reset_cpu,
      instDB  => instrdb,
      instAB  => instrab,
      DataDB  => datadb_cpu,
      DataAB  => dataab_cpu,
      DataReq => datareq_cpu,
      DataAck => dataack_cpu,
      DataWin => wmode_cpu
      );
		
  BROM_instance : brom_im
   port map (
      addra 	=> instrab_rom,
      clka  	=> clk,
      douta    => instrdb
	  );

  BRAM_instance : bram_dm
    port map (
      addra  => dataab_ram,
      clka   	=> clk,
      dina   	=> mem_in,
      douta    => mem_out,
      wea   	=> we
      );
		
  reset_cpu <= reset;
  instrab_rom  <= instrab(7 downto 0);
  dataab_ram  <= dataab_cpu(9 downto 2);
  we     <= "1"     when (not(wmode_cpu = "1111") and  datareq_mem = '1' ) else "0"; 
  datadb_mem <= mem_out when wmode_cpu = "1111" else (others => 'Z');
  mem_in <= datadb_mem;
  
  dummy_out <= instrab(0);	 
end Behavioral;
