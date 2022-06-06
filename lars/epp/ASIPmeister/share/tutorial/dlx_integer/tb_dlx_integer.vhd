-------------------------------------------------------------
--                                                         --
--               Copyright 2002 PEAS Project               --
--                                                         --
-------------------------------------------------------------
--
-- TestBench for DLX-Integer CPU
--
library STD, IEEE;
use STD.textio.all;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_textio.all;
use std.textio.all;
use WORK.all;

entity TEST is
end TEST;

architecture TestBench of TEST is

  component cpu

  port (
    CLK : in std_logic;
    Reset : in std_logic;
    InstAB : out std_logic_vector(31 downto 0);
    DataAB : out std_logic_vector(31 downto 0);
    InstDB : in std_logic_vector(31 downto 0);
    DataDB : inout std_logic_vector(31 downto 0);
    dataWm : out std_logic_vector(3 downto 0);
    DataAck : in std_logic;
    DataReq : out std_logic
  );

    end component;

-- --------------------------------------------------------------------------
-- Constant and Signal
--
  constant CLK_PERIOD : time := 50 ns; -- Clock 20MHz
  constant SETUP_TIME : time := 5 ns;

  signal CLK        : std_logic;
  signal RESET      : std_logic;
  signal DM_env4    : std_logic_vector(3 downto 0);
  signal IM_data    : std_logic_vector(31 downto 0);
  signal IM_addr    : std_logic_vector(31 downto 0);
  signal DM_data    : std_logic_vector(31 downto 0);
  signal DM_dataout : std_logic_vector(31 downto 0);
  signal DM_datain  : std_logic_vector(31 downto 0);
  signal DM_addr    : std_logic_vector(31 downto 0);
  signal DM_Read      : std_logic;
  signal DataReq, DataAck : std_logic;

  signal fin        : std_logic;  -- '1' when 1 signal processing is over
                                  -- '0' otherwise (i.e. busy state)

  subtype Atype is std_logic_vector(31 downto 0);  -- Address Type
  subtype Dtype is std_logic_vector(31 downto 0);  -- Data Type
  subtype Dtype_Byte is std_logic_vector(7 downto 0);
  type IMtype is array (0 to 1023) of Dtype;       -- Instruction Memory
  type DMtype is array (0 to 1023) of Dtype;       -- Data Memory
--  type DMtype is array (0 to 15) of Dtype;       -- Data Memory
  type DMtypeB is array (0 to 4095) of Dtype_Byte; -- Data Memory Byte

  constant IO_iport_addr : integer := 16#004#;
  constant IO_oport_addr : integer := 16#028#;

  signal finish : std_logic := '0';
  
  signal IOInputData : Dtype;
  signal IOOutputData : Dtype;

  signal EndOfInputData : std_logic;

  file IMin : std.textio.text is in "TestData.IM";  -- VHDL'87
  file DMin : std.textio.text is in "TestData.DM";  -- VHDL'87
  file Tout : std.textio.text is out "TestData.OUT";  -- VHLD'87
  
  file  InputDataFile : std.textio.text is in  "Data.input";
  file OutputDataFile : std.textio.text is out "Data.output";

  constant Str_Memory : string(1 to 20) := "+--addr--++--data--+";
  constant Str_Error : string(1 to 8) := "-- Error";
  
begin  -- Architecture Body

  DUT : CPU
    port map(
	     CLK => CLK,
             DataReq => DataReq,
             DataAck => DataAck,
	     InstAB  => IM_addr,
	     DataAB  => DM_addr,
	     InstDB  => IM_data,
	     DataDB  => DM_data,
	     DATAWM  => DM_env4,
	     Reset   => RESET);
  
  DM_Read <= DM_env4(3) and DM_env4(2) and DM_env4(1) and DM_env4(0) ;


  -- ------------------------------------------------------------------------
  -- Clock and Reset Signal
  --
  process
  begin
    CLK <= '0';
    wait for SETUP_TIME;
    CLK <= '1';
    wait for CLK_PERIOD/2;
    CLK <= '0';
    wait for CLK_PERIOD/2-SETUP_TIME;
  end process;

  RESET <= '1',
           '0' after CLK_PERIOD;


  -- ------------------------------------------------------------------------
  -- Instruction Memory
  --
  IMem : process(IM_addr, RESET) 
    variable addr : Atype;
    variable data : Dtype;
    variable lbuf : line;
    variable IM   : IMtype;
    type im_s_t is (st0, st1, st2);
    variable im_s : im_s_t := st0;
  begin  -- IM Access
    if (RESET'event and RESET = '1') then
      for A in IM'range loop
        IM(A) := (others => '0');
      end loop;
      while (not(endfile(IMin))) loop
        readline(IMin, lbuf);
        hread(lbuf, addr);                 -- 1st column in file is address
        hread(lbuf, data);                 -- 2nd column in file is data
        IM(conv_integer(addr(11 downto 2))) := data;  -- byte address to
      end loop;                                       --   word address
      im_s := st0;
    else   
      IM_data <= IM(conv_integer(IM_addr(11 downto 2)));
    end if;
  end process IMem;
  -- -------------------------------------------------------------------------

  DM_datain <= DM_data;
  DM_data <= DM_dataout when (DM_Read = '1') else
             (others => 'Z');

  -- --------------------------------------------------------------------------
  -- Data Memory
  --
  DMem : process(CLK, RESET, finish)
    variable addr : Atype;
    variable data, dout : Dtype;
    variable lbuf : line;
    variable DM : DMTypeB;
    variable base_addr : integer;
    variable Tbuf : line;
    variable IO_output_val : Dtype;
    type dm_s_t is (st0, st1, st2);
    variable dm_s : dm_s_t := st0;
  begin  -- DM Access

    if (RESET'event and RESET = '1') then

      for A in DMType'range loop
        DM(A*4+0) := (others => '0');
        DM(A*4+1) := (others => '0');
        DM(A*4+2) := (others => '0');
        DM(A*4+3) := (others => '0');
      end loop;
      while (not(endfile(DMin))) loop
        readline(DMin, lbuf);
        hread(lbuf, addr);           -- 1st column in file is address
        hread(lbuf, data);           -- 2nd column in file is data
--        hread(lbuf, dout);           -- 3rd column in file is also data(no use)

        base_addr := conv_integer(addr(11 downto 2) & "00");
        
        DM(base_addr+3) := data(31 downto 24);
        DM(base_addr+2) := data(23 downto 16);
        DM(base_addr+1) := data(15 downto 8);
        DM(base_addr+0) := data(7 downto 0);
      end loop;
    elsif CLK'event and CLK = '1'then
      case dm_s is
        when st0 =>
          DataAck <= '0';
          if DataReq = '1' then
            dm_s := st1;
          end if;
        when st1 =>
          DataAck <= '0';
          base_addr := conv_integer(DM_addr(11 downto 2) & "00");
          if (DM_env4 = "1111") then       -- read mode
            DM_dataout <= DM(base_addr+3) &
                          DM(base_addr+2) &
                          DM(base_addr+1) &
                          DM(base_addr+0);
          elsif (DM_env4 = "0111") then
            DM(base_addr+3) := DM_datain(31 downto 24);
          elsif (DM_env4 = "1011" ) then
            DM(base_addr+2) := DM_datain(23 downto 16);
          elsif (DM_env4 = "1101" ) then
            DM(base_addr+1) := DM_datain(15 downto 8);
          elsif (DM_env4 = "1110" ) then
            DM(base_addr+0) := DM_datain(7 downto 0);
          elsif (DM_env4 = "1100" ) then
            DM(base_addr+0) := DM_datain(7 downto 0);
            DM(base_addr+1) := DM_datain(15 downto 8);
          elsif (DM_env4 = "0011" ) then
            DM(base_addr+2) := DM_datain(23 downto 16);
            DM(base_addr+3) := DM_datain(31 downto 24);
          elsif ( DM_env4 = "0000") then  -- Write Word
            DM(base_addr+3) := DM_datain(31 downto 24);
            DM(base_addr+2) := DM_datain(23 downto 16);
            DM(base_addr+1) := DM_datain(15 downto 8);
            DM(base_addr+0) := DM_datain(7 downto 0);
          end if;
          dm_s := st2;
        when st2 =>
          DataAck <= '1';
          if DataReq = '0' then
            dm_s := st0;
          end if;
      end case;
    end if;

    if finish'event and finish = '1' then
      write(Tbuf, Str_Memory, RIGHT, 20);
      writeline(Tout,Tbuf);
      for A in DMType'range loop
        hwrite(Tbuf, conv_std_logic_vector(A*4, 32), RIGHT, 9);
        hwrite(Tbuf, DM(A*4+3), RIGHT, 4);
        hwrite(Tbuf, DM(A*4+2), RIGHT, 2);
        hwrite(Tbuf, DM(A*4+1), RIGHT, 2);
        hwrite(Tbuf, DM(A*4+0), RIGHT, 2);
        writeline(Tout, Tbuf);
      end loop;  -- A      
    end if;

  end process DMem;
  -- ------------------------------------------------------------------------

  
  -- ------------------------------------------------------------------------
  -- Simulation End and Data Dump
  --
  process
  begin
    wait on IM_data;
    if ((IM_data = "11111111111111111111111111111111") 
     or (EndOfInputData = '1')) then
      wait for CLK_PERIOD;
      finish <= '1';
      assert FALSE report "Simulation End." severity FAILURE;
    end if;
  end process;
  
end TestBench;

configuration CFG of TEST is
  for TestBench
--    for DUT : CPU
--      use entity WORK.CPU(RTL);
--    end for;
  end for;
end;
