-------------------------------------------------------------
--                                                         --
--               Copyright 2002 PEAS Project  --
--                                                         --
-------------------------------------------------------------
--
-- TestBench for ASIP Meister CPUs
--
library STD, IEEE;
use STD.textio.all;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_textio.all;
use WORK.all;
use MemoryMapperTypes.all;
use Helper.all;


entity TEST is
end TEST;

architecture TestBench of TEST is
  component CPU
    port (
      CLK     : in    std_logic;
      Reset   : in    std_logic;
      InstAB  : out   std_logic_vector(31 downto 0);
      InstDB  : in    std_logic_vector(31 downto 0);
      DataAB  : out   std_logic_vector(31 downto 0);
      DataDB  : inout std_logic_vector(31 downto 0);
      DataReq : out   std_logic;
      DataAck : in    std_logic;
      DataWin : out   std_logic_vector(3 downto 0)
      );
  end component;

  component MemoryMapper
    port (
      DataAB_master  : in    MemoryMappedAddressType;
      DataDB_master  : inout MemoryMappedDataType;
      DataReq_master : in    std_logic;
      DataAck_master : out   std_logic;
      DataRW_master  : in    std_logic_vector(3 downto 0);

      DataDB_mem  : inout MemoryMappedDataType;
      DataReq_mem : out   std_logic;
      DataAck_mem : in    std_logic;

      DataDB_ports  : inout MemoryMappedDataArrayType(MemoryMappedNumberOfPorts-1 downto 0);
      DataReq_ports : out   std_logic_vector(MemoryMappedNumberOfPorts-1 downto 0);
      DataAck_ports : in    std_logic_vector(MemoryMappedNumberOfPorts-1 downto 0)
      );
  end component;

--  --------------------------------------------------------------------------
-- Constants and Signals
--
  -- Debugging Output
  constant PrintMemAccess      : bit := '0';
  constant PrintThousandCycles : bit := '1';

  constant CLK_HALF_PERIOD     : time                         := 10 ns;
  constant SETUP_TIME          : time                         := 50 ns;
  constant IM_SIZE             : integer                      := 65536;   -- size in 32-bit Word
  constant DM_SIZE             : integer                      := 262144;  -- size in 32-bit Word
  constant READ                : std_logic_vector(3 downto 0) := "1111";  -- read mode from CPU

  signal CLK        : std_logic;
  signal RESET      : std_logic;
  signal DataWMode  : std_logic_vector(3 downto 0);
  signal IM_data    : std_logic_vector(31 downto 0);
  signal IM_addr    : std_logic_vector(31 downto 0);
  signal DataAB32   : std_logic_vector(31 downto 0);
  signal DataDB32   : std_logic_vector(31 downto 0);
  signal DM_dataout : std_logic_vector(31 downto 0);
  signal DM_datain  : std_logic_vector(31 downto 0);
  signal DataReq    : std_logic;
  signal DataAck    : std_logic;

  -- MemoryMapper Signals
  signal datadb_mem       : std_logic_vector(31 downto 0);
  signal datareq_mem      : std_logic;
  signal dataack_mem      : std_logic;
  signal datadb_ports     : MemoryMappedDataArrayType(MemoryMappedNumberOfPorts-1 downto 0);
  signal datareq_ports    : std_logic_vector(MemoryMappedNumberOfPorts-1 downto 0);
  signal dataack_ports    : std_logic_vector(MemoryMappedNumberOfPorts-1 downto 0);
  signal port0_req_d      : std_logic;
  signal port1_req_d      : std_logic;
  signal port2_req_d      : std_logic;
  signal port3_counter    : MemoryMappedDataType;
  signal port3_req_d      : std_logic;
  signal port4_req_d      : std_logic;


  subtype Atype is std_logic_vector(31 downto 0);  -- Address Type
  subtype Dtype is std_logic_vector(31 downto 0);  -- Data Type
  subtype Dtype_Byte is std_logic_vector(7 downto 0);
  type IMtype is array (0 to IM_SIZE-1) of Dtype;  -- Instruction Memory
  type DMtype is array (0 to DM_SIZE-1) of Dtype;  -- Data Memory
  type DMtypeB is array (0 to 4*DM_SIZE-1) of Dtype_Byte;  -- Data Memory Byte

  signal finish         : std_logic := '0';
  signal EndOfInputData : std_logic;
  signal clock_counter  : integer   := -1;  -- starting with -1 to overcome the lost cycle at the beginning

  file IMin          : text open read_mode is "TestData.IM";
  file DMin          : text open read_mode is "TestData.DM";
  file Tout          : text open write_mode is "TestData.OUT";
  file LCD_outfile   : text open write_mode is "lcd.out";
  file UART_outfile  : text open write_mode is "uart.out";
  file Audio_outfile : text open write_mode is "audio.out";
  file trace_outfile : text open write_mode is "modelsim_trace.out";  -- for creating an IM trace


begin  -- Architecture Body

  DUT : CPU
    port map( CLK     => CLK,
              DataReq => DataReq,
              DataAck => DataAck,
              InstAB  => IM_addr,
              DataAB  => DataAB32,
              InstDB  => IM_data,
              DataDB  => DataDB32,
              DataWin => DataWMode,
              Reset   => RESET);

  i_memorymapper : MemoryMapper
    port map (
      -- CPU
      DataAB_master  => DataAb32,
      DataDB_master  => DataDb32,
      DataReq_master => DataReq,
      DataAck_master => DataAck,
      DataRW_master  => DataWMode,
      -- bram_dm
      DataDB_mem     => datadb_mem,
      DataReq_mem    => datareq_mem,
      DataAck_mem    => dataack_mem,
      -- ports
      DataDB_ports   => datadb_ports,
      DataReq_ports  => datareq_ports,
      DataAck_ports  => dataack_ports);


  -- ------------------------------------------------------------------------
  -- Reset and Clock Signal
  --
  reset_proc : process
  begin
    RESET <= '1';
    wait for SETUP_TIME + 2*CLK_HALF_PERIOD;
    wait until CLK = '0' and CLK'event;
    RESET <= '0';
    wait;
  end process;

  clk_proc                  : process
    variable lineBuf        : line;
    variable clockThousands : integer := 0;
  begin
    CLK             <= '0';
    wait for CLK_HALF_PERIOD;
    CLK             <= '1';
    if RESET = '0' then
      clock_counter <= clock_counter + 1;
    end if;
    if (PrintThousandCycles = '1' and clock_counter+1 >= 1000*clockThousands ) then
      clockThousands                  := clockThousands + 1;
      write(lineBuf, string'("***** ") );
      write(lineBuf, clock_counter+1, right, 6);
      write(lineBuf, string'(" ClockCycles simulated *****") );
      writeline(Output, lineBuf);
    end if;
    wait for CLK_HALF_PERIOD;
  end process;


  -- ------------------------------------------------------------------------
  -- Instruction Memory
  --
  IMem            : process(reset, clk)
    variable addr : Atype;
    variable data : Dtype;
    variable lbuf : line;
    variable IM   : IMtype;
    type im_s_t is (st0, st1, st2);
    variable im_s : im_s_t                  := st0;
  begin  -- IM Access
    if (reset'event and reset = '1') then
      for A in IM'range loop
        IM(A)                               := (others => '0');
      end loop;
      while (not(endfile(IMin))) loop
        readline(IMin, lbuf);
        hread(lbuf, addr);              -- 1st column in file is address
        hread(lbuf, data);              -- 2nd column in file is data
        IM(conv_integer(addr(31 downto 0))) := data;  -- WORD Adressing for basis-CPU
      end loop;
      im_s                                  := st0;
    else
      if (falling_edge(clk)) then
        IM_data <= IM(conv_integer(IM_addr(31 downto 0)));
      end if;
    end if;
  end process IMem;
  -- -------------------------------------------------------------------------


  -- --------------------------------------------------------------------------
  -- Data Memory
  --
  DM_datain  <= DataDB_mem;
  DataDB_mem <= DM_dataout when (DataWMode = "1111") else (others => 'Z');

  DMem                          : process(CLK, RESET, finish)
    variable addr               : Atype;
    variable data, dout         : Dtype;
    variable lbuf               : line;
    variable lineBuf            : line;
    variable Tbuf               : line;
    variable DM                 : DMTypeB;
    variable base_addr          : integer;
    variable newValue, oldValue : integer;
    variable accessType         : string (16 downto 1);
    variable printWriteAccess   : bit := '0';
  begin  -- DM Access

    if (RESET'event and RESET = '1') then

      DM_dataout <= (others=>'0');
      for A in DMType'range loop
        DM(A*4+0) := (others => '0');
        DM(A*4+1) := (others => '0');
        DM(A*4+2) := (others => '0');
        DM(A*4+3) := (others => '0');
      end loop;
      while (not(endfile(DMin))) loop
        readline(DMin, lbuf);
        hread(lbuf, addr);              -- 1st column in file is address
        hread(lbuf, data);              -- 2nd column in file is data
        base_addr       := conv_integer(addr(31 downto 2) & "00");
        DM(base_addr+3) := data(31 downto 24);
        DM(base_addr+2) := data(23 downto 16);
        DM(base_addr+1) := data(15 downto 8);
        DM(base_addr+0) := data(7 downto 0);
      end loop;

    elsif DataReq_mem = '1' then
      base_addr := conv_integer(DataAB32(31 downto 2) & "00");
      DM_dataout  <= DM(base_addr+3) &
                     DM(base_addr+2) &
                     DM(base_addr+1) &
                     DM(base_addr+0);
      -- read is executed asyncron now, but I only want to see this message once.
      if falling_edge(clk) and DataWMode = "1111" and PrintMemAccess = '1' then
        write(lineBuf, string'("ClockCycle: ") );
        write(lineBuf, clock_counter-4, right, 4);
        write(lineBuf, string'(" InstrAddr: 0x") );
        write(lineBuf, hstr(IM_addr-3) );
        write(lineBuf, string'(" DMemAddr: 0x") );
        write(lineBuf, hstr(DataAB32) );
        write(lineBuf, string'("      -->  ") );
        write(lineBuf, conv_integer(DM(base_addr+3) & DM(base_addr+2) & DM(base_addr+1) & DM(base_addr+0)), left, 5);
        write(lineBuf, string'(" (Load) "));
        writeline(Output, lineBuf);
          base_addr        := base_addr;  -- good (dummy) line for BREAK POINT to watch memory access.
      end if;

      if rising_edge(clk) then
        DataAck_mem <= '1';
        if ( DataWMode = "0000") then
          accessType       := " (Store 32-Bit) ";
          oldValue         := conv_integer(DM(base_addr+3) & DM(base_addr+2) & DM(base_addr+1) & DM(base_addr+0));
          newValue         := conv_integer(DM_datain(31 downto 0));
          printWriteAccess := '1';
          DM(base_addr+3)  := DM_datain(31 downto 24);
          DM(base_addr+2)  := DM_datain(23 downto 16);
          DM(base_addr+1)  := DM_datain(15 downto 8);
          DM(base_addr+0)  := DM_datain(7 downto 0);
        elsif (DataWMode = "0111") then
          accessType       := " (Store  8-Bit) ";
          oldValue         := conv_integer(DM(base_addr+3));
          newValue         := conv_integer(DM_datain(31 downto 24));
          printWriteAccess := '1';
          DM(base_addr+3)  := DM_datain(31 downto 24);
        elsif (DataWMode = "1011" ) then
          accessType       := " (Store  8-Bit) ";
          oldValue         := conv_integer(DM(base_addr+2));
          newValue         := conv_integer(DM_datain(23 downto 16));
          printWriteAccess := '1';
          DM(base_addr+2)  := DM_datain(23 downto 16);
        elsif (DataWMode = "1101" ) then
          accessType       := " (Store  8-Bit) ";
          oldValue         := conv_integer(DM(base_addr+1));
          newValue         := conv_integer(DM_datain(15 downto 8));
          printWriteAccess := '1';
          DM(base_addr+1)  := DM_datain(15 downto 8);
        elsif (DataWMode = "1110" ) then
          accessType       := " (Store  8-Bit) ";
          oldValue         := conv_integer(DM(base_addr+0));
          newValue         := conv_integer(DM_datain(7 downto 0));
          printWriteAccess := '1';
          DM(base_addr+0)  := DM_datain(7 downto 0);
        elsif (DataWMode = "1100" ) then
          accessType       := " (Store 16-Bit) ";
          oldValue         := conv_integer(DM(base_addr+1) & DM(base_addr+0));
          newValue         := conv_integer(DM_datain(15 downto 0));
          printWriteAccess := '1';
          DM(base_addr+0)  := DM_datain(7 downto 0);
          DM(base_addr+1)  := DM_datain(15 downto 8);
        elsif (DataWMode = "0011" ) then
          accessType       := " (Store 16-Bit) ";
          oldValue         := conv_integer(DM(base_addr+3) & DM(base_addr+2));
          newValue         := conv_integer(DM_datain(31 downto 16));
          printWriteAccess := '1';
          DM(base_addr+2)  := DM_datain(23 downto 16);
          DM(base_addr+3)  := DM_datain(31 downto 24);
        end if;
        if (printWriteAccess = '1') then
          printWriteAccess := '0';
          if (PrintMemAccess = '1') then
            write(lineBuf, string'("ClockCycle: ") );
            write(lineBuf, clock_counter-5, right, 4);
            write(lineBuf, string'(" InstrAddr: 0x") );
            write(lineBuf, hstr(IM_addr-3) );
            write(lineBuf, string'(" DMemAddr: 0x") );
            write(lineBuf, hstr(DataAB32) );
            write(lineBuf, string'(" <-- ") );
            write(lineBuf, newValue, left, 5);
            write(lineBuf, accessType);
            write(lineBuf, string'(" (Old value was ") );
            write(lineBuf, oldValue);
            write(lineBuf, string'(")") );
            writeline(Output, lineBuf);
          end if;
        end if;
      end if;  -- rising edge
    elsif CLK'event and CLK = '1' then  -- Not Reset and Not Request
        DataAck_mem   <= '0';
    end if;

    if finish'event and finish = '1' then
      for A in DMType'range loop
        hwrite(Tbuf, conv_std_logic_vector(A*4, 32) );
        write(Tbuf, string'(" ") );
        hwrite(Tbuf, DM(A*4+3) );
        hwrite(Tbuf, DM(A*4+2) );
        hwrite(Tbuf, DM(A*4+1) );
        hwrite(Tbuf, DM(A*4+0) );
        writeline(Tout, Tbuf);
      end loop;
    end if;

  end process DMem;


  -- ------------------------------------------------------------------------
  -- Port 0: Switch Port
  datadb_ports(0)  <= (others => 'Z');
  dataack_ports(0) <= '0'              when reset = '1' else port0_req_d;
  port0_req_d      <= datareq_ports(0) when rising_edge(clk);


  -- ------------------------------------------------------------------------
  -- Port 1: AudioOut
  datadb_ports(1)  <= (others => 'Z');
  dataack_ports(1) <= '0'              when reset = '1' else port1_req_d;
  port1_req_d      <= datareq_ports(1) when rising_edge(clk);

  writeAudioOut : process (reset, clk)
    variable lineBuf  : line;
  begin
    if rising_edge(clk) and datareq_ports(1) = '1' and not DataWMode = READ then
      if DataAB32(3 downto 2) = "01" then
        write(lineBuf, string'("L: ") );
      elsif DataAB32(3 downto 2) = "10" then
        write(lineBuf, string'("R: ") );
      else
        write(lineBuf, string'("?: ") );
      end if;
      write(lineBuf, conv_integer(datadb_ports(1)(15 downto 0)) );
      write(lineBuf, string'(", ") );
      writeline(audio_outfile, lineBuf);
    end if;
  end process;


  -- ------------------------------------------------------------------------
  -- Port 2: UART output
  datadb_ports(2)  <= (others => 'Z');
  dataack_ports(2) <= '0'              when reset = '1' else port2_req_d;
  port2_req_d      <= datareq_ports(2) when rising_edge(clk);

  uartout             : process (reset, clk)
    variable lineBuf  : line;
    variable dataTemp : integer;
  begin
    if rising_edge(clk) and datareq_ports(2) = '1' and not DataWMode = READ then
      dataTemp := conv_integer(datadb_ports(2));
      if dataTemp = 10 then           -- Line Feed
      elsif dataTemp = 9 then         -- Tabulator
        write(lineBuf, HT);
      elsif dataTemp = 13 then        -- Carriage Return
        writeline(uart_outfile, lineBuf);
      else
        write(lineBuf, int2char(dataTemp) );
      end if;
    end if;
  end process;


  -- ------------------------------------------------------------------------
  -- Port 3: Clock Counter
  datadb_ports(3) <= port3_counter    when DataWMode = READ and port3_req_d = '1' else (others => 'Z');
  port3_req_d     <= datareq_ports(3) when rising_edge(clk);
  dataack_ports(3) <= port3_req_d after 1 ns;  -- Note: the 'after 1 ns' statement is a workarround that assures
                                               -- that the code works with simulation and on FPGA. For any reason
                                               -- the simulation seems to take the data from the bus whenever the ack has
                                               -- a rising edge, that's why we delay it by 1 ns (not required for FPGA).
	
  port3counter       : process (reset, clk)
  begin
    if rising_edge(clk) then
      if reset = '1' then
        port3_counter      <= (others => '0');
      else
        if datareq_ports(3) = '1' then
          if DataWMode /= READ then
            port3_counter <= datadb_ports(3);
          end if;
        end if;

        -- Count up, if there was no write-request
        if datareq_ports(3) = '0' or DataWMode = READ then
          port3_counter <= conv_std_logic_vector(conv_integer(port3_counter)+1, 32);
        end if;

      end if;
    end if;
  end process;


  -- ------------------------------------------------------------------------
  -- Port 4: LCD output
  datadb_ports(4)  <= (others => 'Z');
  dataack_ports(4) <= '0'              when reset = '1' else port4_req_d;
  port4_req_d      <= datareq_ports(4) when rising_edge(clk);

  lcdout              : process (reset, clk)
    variable lineBuf  : line;
    variable dataTemp : integer;
  begin
    if rising_edge(clk) and datareq_ports(4) = '1' and not DataWMode = READ then
      dataTemp := conv_integer(datadb_ports(4));
      if dataTemp = 10 then           -- Line Feed
      elsif dataTemp = 9 then         -- Tabulator
        write(lineBuf, HT);
      elsif dataTemp = 13 then        -- Carriage Return
        writeline(lcd_outfile, lineBuf);
      else
        write(lineBuf, int2char(dataTemp) );
      end if;
    end if;
  end process;


  -- ------------------------------------------------------------------------
  -- Port 5: SRAM 1
  datadb_ports(5)  <= (others => 'Z');
  dataack_ports(5) <= '0';


  -- ------------------------------------------------------------------------
  -- Port 6: SRAM 2
  datadb_ports(6)  <= (others => 'Z');
  dataack_ports(6) <= '0';


  -- ------------------------------------------------------------------------
  -- Simulation End and Data Dump
  --
  process
    variable lineBuf : line;
  begin
    wait on IM_data;
    if ((IM_data = "11111111111111111111111111111111")
        or (EndOfInputData = '1')) then
      wait for 2*CLK_HALF_PERIOD;
      finish <= '1';
      wait for 2*CLK_HALF_PERIOD;
      write(lineBuf, string'("          ----------------------------------------------------------------------------------------------------------------------------------------------------------------"));
      writeline (Output, lineBuf);
      write(lineBuf, string'("***** ") );
      write(lineBuf, clock_counter-2, right, 6);  -- "-2" cause the two "wait for clk_period" for the HLT-command.
      write(lineBuf, string'(" ClockCycles altogether simulated *****") );
      writeline(Output, lineBuf);

      assert false report "SUCCESSFUL: Simulation End." severity failure;

    end if;
  end process;

  -- ------------------------------------------------------------------------
  -- Writes the IM trace to the file modelsim_trace
  -- ------------------------------------------------------------------------
--  traceoutput: process(clk)
--    variable lineBuf  : line;
--  begin
--    if rising_edge(clk) then 
--      hwrite(lineBuf, IM_addr);
--      write(lineBuf, string'(" "));
--      hwrite(lineBuf, (IM_data));
--      writeline(trace_outfile, lineBuf  );
--   end if;
--end process;


end TestBench;

configuration CFG of TEST is
  for TestBench
  end for;
end;
