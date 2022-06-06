-------------------------------------------------------------
--                                                         --
--               Copyright 2002 PEAS Project               --
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

entity TEST is
end TEST;

architecture TestBench of TEST is
  component CPU
  port (
    CLK : in std_logic;
    Reset : in std_logic;
    InstAB : out std_logic_vector(31 downto 0);
    InstDB : in std_logic_vector(31 downto 0);
    DataAB : out std_logic_vector(31 downto 0);
    DataDB : inout std_logic_vector(31 downto 0);
    DataReq : out std_logic;
    DataAck : in std_logic;
    DataWin : out std_logic_vector(3 downto 0)
  );
  end component;

-- --------------------------------------------------------------------------
-- Constants and Signals
--
  constant CLK_HALF_PERIOD : time := 1 ns;
  constant SETUP_TIME : time := 50 ns;
  constant IM_SIZE : integer := 65536;  -- size in 32-bit Word
  constant DM_SIZE : integer := 262144;  -- size in 32-bit Word
  constant PrintMemAccess      : bit := '0';
  constant PrintThousandCycles : bit := '1';

  signal CLK        : std_logic;
  signal RESET      : std_logic;
  signal DM_env4    : std_logic_vector(3 downto 0);
  signal IM_data    : std_logic_vector(31 downto 0);
  signal IM_addr    : std_logic_vector(31 downto 0);
  signal DM_data    : std_logic_vector(31 downto 0);
  signal DM_dataout : std_logic_vector(31 downto 0);
  signal DM_datain  : std_logic_vector(31 downto 0);
  signal DM_addr    : std_logic_vector(31 downto 0);
  signal DM_Read    : std_logic;
  signal DataReq    : std_logic;
  signal DataAck    : std_logic;

  subtype Atype is std_logic_vector(31 downto 0);  -- Address Type
  subtype Dtype is std_logic_vector(31 downto 0);  -- Data Type
  subtype Dtype_Byte is std_logic_vector(7 downto 0);
  type IMtype  is array (0 to IM_SIZE-1)   of Dtype;       -- Instruction Memory
  type DMtype  is array (0 to DM_SIZE-1)   of Dtype;       -- Data Memory
  type DMtypeB is array (0 to 4*DM_SIZE-1) of Dtype_Byte;  -- Data Memory Byte
  
  signal finish : std_logic := '0';
  signal EndOfInputData : std_logic;
  signal clock_counter : integer := -1;  -- starting with -1 to overcome the lost cycle at the beginning

  file IMin : Text open read_mode is "TestData.IM";
  file DMin : Text open read_mode is "TestData.DM";
  file Tout : Text open write_mode is "TestData.OUT";


   -- converts a std_logic_vector into a hex string.
   function hstr(slv: std_logic_vector) return string is
       variable hexlen: integer;
       variable longslv : std_logic_vector(67 downto 0) := (others => '0');
       variable hex : string(1 to 16);
       variable fourbit : std_logic_vector(3 downto 0);
     begin
       hexlen := (slv'left+1)/4;
       if (slv'left+1) mod 4 /= 0 then
         hexlen := hexlen + 1;
       end if;
       longslv(slv'left downto 0) := slv;
       for i in (hexlen -1) downto 0 loop
         fourbit := longslv(((i*4)+3) downto (i*4));
         case fourbit is
           when "0000" => hex(hexlen -I) := '0';
           when "0001" => hex(hexlen -I) := '1';
           when "0010" => hex(hexlen -I) := '2';
           when "0011" => hex(hexlen -I) := '3';
           when "0100" => hex(hexlen -I) := '4';
           when "0101" => hex(hexlen -I) := '5';
           when "0110" => hex(hexlen -I) := '6';
           when "0111" => hex(hexlen -I) := '7';
           when "1000" => hex(hexlen -I) := '8';
           when "1001" => hex(hexlen -I) := '9';
           when "1010" => hex(hexlen -I) := 'A';
           when "1011" => hex(hexlen -I) := 'B';
           when "1100" => hex(hexlen -I) := 'C';
           when "1101" => hex(hexlen -I) := 'D';
           when "1110" => hex(hexlen -I) := 'E';
           when "1111" => hex(hexlen -I) := 'F';
           when "ZZZZ" => hex(hexlen -I) := 'z';
           when "UUUU" => hex(hexlen -I) := 'u';
           when "XXXX" => hex(hexlen -I) := 'x';
           when others => hex(hexlen -I) := '?';
         end case;
       end loop;
       return hex(1 to hexlen);
     end hstr;

  
begin  -- Architecture Body

  DUT : CPU
    port map( CLK     => CLK,
              DataReq => DataReq,
              DataAck => DataAck,
	      InstAB  => IM_addr,
	      DataAB  => DM_addr,
	      InstDB  => IM_data,
	      DataDB  => DM_data,
	      DataWin	=> DM_env4,
	      Reset   => RESET);
  
  DM_Read <= DM_env4(3) and DM_env4(2) and DM_env4(1) and DM_env4(0) ;



  -- ------------------------------------------------------------------------
  -- Reset and Clock Signal
  --
  reset_proc: PROCESS
  BEGIN
    RESET <= '1';
    WAIT FOR SETUP_TIME + 2*CLK_HALF_PERIOD;
    WAIT UNTIL CLK='0' AND CLK'EVENT;
    RESET <= '0';
    WAIT;
  END PROCESS;

  clk_proc: PROCESS
    VARIABLE lineBuf : line;
    VARIABLE clockThousands : integer := 0;
  BEGIN
    CLK <= '0';
    WAIT FOR CLK_HALF_PERIOD;
    CLK <= '1';
    IF RESET='0' THEN
      clock_counter <= clock_counter + 1;
    END IF;
    IF (PrintThousandCycles='1' AND clock_counter+1 >= 1000*clockThousands ) THEN
      clockThousands := clockThousands + 1;
      write(lineBuf, string'("***** ") );
      write(lineBuf, clock_counter+1, RIGHT, 6);
      write(lineBuf, string'(" ClockCycles simulated *****") );
      writeline(Output,lineBuf);
    END IF;
    WAIT FOR CLK_HALF_PERIOD;
  END PROCESS;


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
        IM(conv_integer(addr(31 downto 0))) := data;   -- WORD Adressing for basis-CPU
      end loop;
      im_s := st0;
    else   
      IM_data <= IM(conv_integer(IM_addr(31 downto 0)));
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
    variable lineBuf : line;
    variable Tbuf : line;
    variable DM : DMTypeB;
    variable base_addr : integer;
    variable newValue, oldValue : integer;
    variable accessType : string (16 downto 1);
    variable printWriteAccess : bit := '0';
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

        base_addr := conv_integer(addr(31 downto 2) & "00");
        DM(base_addr+3) := data(31 downto 24);
        DM(base_addr+2) := data(23 downto 16);
        DM(base_addr+1) := data(15 downto 8);
        DM(base_addr+0) := data(7 downto 0);
      end loop;
      
    elsif DataReq = '1' then
      base_addr := conv_integer(DM_addr(31 downto 2) & "00");
      if (DM_env4 = "1111") then       -- read mode
        IF (PrintMemAccess='1' AND CLK'EVENT AND CLK = '0') THEN  --read is executed asyncron now, but I only want to see this message once.
          write(lineBuf, string'("ClockCycle:") );
          write(lineBuf, clock_counter-4, RIGHT, 4);
          write(lineBuf, string'("   InstrAddr:0x") );
          write(lineBuf, hstr(IM_addr-3) );
          write(lineBuf, string'("   DMemAddr:0x") );
          write(lineBuf, hstr(DM_addr) );
          write(lineBuf, string'(" --> ") );
          write(lineBuf, conv_integer(DM(base_addr+3) & DM(base_addr+2) & DM(base_addr+1) & DM(base_addr+0)), LEFT, 5);
          write(lineBuf, string'(" (Read) "));
          writeline(Output,lineBuf);
          base_addr := base_addr;  -- good (dummy) line for BREAK POINT to watch memory access.
        END IF;
        DM_dataout <= DM(base_addr+3) &
                      DM(base_addr+2) &
                      DM(base_addr+1) &
                      DM(base_addr+0);
      end if;
      if CLK'event and CLK = '1' then
        DataAck <= '1';
        if ( DM_env4 = "0000") then
          accessType := " (Write 32-Bit) ";
          oldValue := conv_integer(DM(base_addr+3) & DM(base_addr+2) & DM(base_addr+1) & DM(base_addr+0));
          newValue := conv_integer(DM_datain(31 downto 0));
          printWriteAccess := '1';
          DM(base_addr+3) := DM_datain(31 downto 24);
          DM(base_addr+2) := DM_datain(23 downto 16);
          DM(base_addr+1) := DM_datain(15 downto 8);
          DM(base_addr+0) := DM_datain(7 downto 0);
        elsif (DM_env4 = "0111") then
          accessType := " (Write  8-Bit) ";
          oldValue := conv_integer(DM(base_addr+3));
          newValue := conv_integer(DM_datain(31 downto 24));
          printWriteAccess := '1';
          DM(base_addr+3) := DM_datain(31 downto 24);
        elsif (DM_env4 = "1011" ) then
          accessType := " (Write  8-Bit) ";
          oldValue := conv_integer(DM(base_addr+2));
          newValue := conv_integer(DM_datain(23 downto 16));
          printWriteAccess := '1';
          DM(base_addr+2) := DM_datain(23 downto 16);
        elsif (DM_env4 = "1101" ) then
          accessType := " (Write  8-Bit) ";
          oldValue := conv_integer(DM(base_addr+1));
          newValue := conv_integer(DM_datain(15 downto 8));
          printWriteAccess := '1';
          DM(base_addr+1) := DM_datain(15 downto 8);
        elsif (DM_env4 = "1110" ) then
          accessType := " (Write  8-Bit) ";
          oldValue := conv_integer(DM(base_addr+0));
          newValue := conv_integer(DM_datain(7 downto 0));
          printWriteAccess := '1';
          DM(base_addr+0) := DM_datain(7 downto 0);
        elsif (DM_env4 = "1100" ) then
          accessType := " (Write 16-Bit) ";
          oldValue := conv_integer(DM(base_addr+1) & DM(base_addr+0));
          newValue := conv_integer(DM_datain(15 downto 0));
          printWriteAccess := '1';
          DM(base_addr+0) := DM_datain(7 downto 0);
          DM(base_addr+1) := DM_datain(15 downto 8);
        elsif (DM_env4 = "0011" ) then
          accessType := " (Write 16-Bit) ";
          oldValue := conv_integer(DM(base_addr+3) & DM(base_addr+2));
          newValue := conv_integer(DM_datain(31 downto 16));
          printWriteAccess := '1';
          DM(base_addr+2) := DM_datain(23 downto 16);
          DM(base_addr+3) := DM_datain(31 downto 24);
        end if;
        if (printWriteAccess = '1') then
          printWriteAccess := '0';
          IF (PrintMemAccess='1') THEN
            write(lineBuf, string'("ClockCycle:") );
            write(lineBuf, clock_counter-5, RIGHT, 4);
            write(lineBuf, string'("   InstrAddr:0x") );
            write(lineBuf, hstr(IM_addr-3) );
            write(lineBuf, string'("   DMemAddr:0x") );
            write(lineBuf, hstr(DM_addr) );
            write(lineBuf, string'(" <-- ") );
            write(lineBuf, newValue, LEFT, 5);
            write(lineBuf, accessType);
            write(lineBuf, string'("  (Old value was ") );
            write(lineBuf, oldValue);
            write(lineBuf, string'(")") );
            writeline(Output,lineBuf);
          END IF;
        end if;
      end if;
    elsif CLK'event and CLK = '1' then
      DataAck <= '0';
    end if;

    if finish'event and finish = '1' then
      for A in DMType'range loop
        hwrite(Tbuf, conv_std_logic_vector(A*4, 32) );
        write(Tbuf, string'("        ") );
        hwrite(Tbuf, DM(A*4+3) );
        hwrite(Tbuf, DM(A*4+2) );
        hwrite(Tbuf, DM(A*4+1) );
        hwrite(Tbuf, DM(A*4+0) );
        writeline(Tout, Tbuf);
      end loop;
    end if;

  end process DMem;
  -- ------------------------------------------------------------------------


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
      write(lineBuf,string'("----------------------------------------------------------------------------------------------------------------------------------------------------------------"));
      writeline (Output,lineBuf);
      write(lineBuf, string'("***** ") );
      write(lineBuf, clock_counter-2, RIGHT, 6); -- "-2" cause the two "wait for clk_period" for the HLT-command.
      write(lineBuf, string'(" ClockCycles altogether simulated *****") );
      writeline(Output,lineBuf);

      assert FALSE report "Simulation End." severity FAILURE;
     
    end if;
  end process;
  
end TestBench;

configuration CFG of TEST is
  for TestBench
  end for;
end;
