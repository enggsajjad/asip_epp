----------------------------------------------------------------------------------
-- Company:        University of Karlsruhe (TH)
--                 Chair for Embedded Systems (CES), ITEC-Henkel
-- Engineer:       Lars Bauer, Hongzhang Chen, Christian Kraemer, et al.
-- Create Date:    14:29:04 05/10/2006 
-- Module Name:    dlx_toplevel - Behavioral 
-- Project Name:   Laboratory: Designing embedded, application specific processors
-- Target Devices: Virtex-II
-- Tool versions:  ISE 9.1
-- Description:    
--
-- Dependencies:   
--
-- Revision: 
-- Revision 0.1  - File Created
-- Revision 1.0  - Functional Version with MemoryMapper, I2C and AudioOut
-- Revision 1.1  - Functional Version with external SRAM and UART connection
-- Revision 1.2  - New Peripherals, Debugging outputs, small bug fixes and cleaning
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

library UNISIM;
use UNISIM.VComponents.all;

use MemoryMapperTypes.all;
use AudioOut_types.all;                 -- contains the constant SAMPLE_BIT_WIDTH
use dlxTypes.all;                       -- contains data and address buswidth

entity dlx_toplevel is
  port ( reset    : in std_logic;
         clk      : in std_logic;
         clock_ip : in std_logic;

         serial0_in  : in  std_logic;
         serial0_out : out std_logic;
         serial1_in  : in  std_logic;
         serial1_out : out std_logic;

         AudioL_Out : out std_logic;
         AudioR_Out : out std_logic;

         pca9564_data    : inout std_logic_vector (7 downto 0);
         pca9564_wr      : out   std_logic;
         pca9564_rd      : out   std_logic;
         pca9564_ce      : out   std_logic;
         pca9564_address : out   std_logic_vector (1 downto 0);
         pca9564_int     : in    std_logic;
         pca9564_reset   : out   std_logic;

         led_buildin : out std_logic_vector (7 downto 0);
         led         : out std_logic_vector (31 downto 0);
         dip         : in  std_logic_vector (31 downto 0);

         -- SRAM PCB oben
         WE_b1  : out   std_logic;      -- Write Enable WE for chip1
         OE_b1  : out   std_logic;      -- Output Enable OE for chip1
         BHE_b1 : out   std_logic;      -- Byte Enable High BHE for chip1
         BLE_b1 : out   std_logic;      -- Byte Enable Low BLE for chip1
         Ai     : out   std_logic_vector(19 downto 0);  -- Address Inputs A for IM(chip 1&2)
         DQ1    : inout std_logic_vector(15 downto 0);  -- Read/Write Data IO for chip1
         WE_b2  : out   std_logic;      -- Write Enable WE for chip2
         OE_b2  : out   std_logic;      -- Output Enable OE for chip2
         BHE_b2 : out   std_logic;      -- Byte Enable High BHE for chip2
         BLE_b2 : out   std_logic;      -- Byte Enable Low BLE for chip2
         DQ2    : inout std_logic_vector(15 downto 0);  -- Read/Write Data IO for chip2

         -- SRAM PCB unten
         WE_a1  : out   std_logic;      -- Write Enable WE for chip1
         OE_a1  : out   std_logic;      -- Output Enable OE for chip1
         BHE_a1 : out   std_logic;      -- Byte Enable High BHE for chip1
         BLE_a1 : out   std_logic;      -- Byte Enable Low BLE for chip1
         Ad     : out   std_logic_vector(19 downto 0);  -- Address Inputs A for IM(chip 1&2)
         DP1    : inout std_logic_vector(15 downto 0);  -- Read/Write Data IO for chip1
         WE_a2  : out   std_logic;      -- Write Enable WE for chip2
         OE_a2  : out   std_logic;      -- Output Enable OE for chip2
         BHE_a2 : out   std_logic;      -- Byte Enable High BHE for chip2
         BLE_a2 : out   std_logic;      -- Byte Enable Low BLE for chip2
         DP2    : inout std_logic_vector(15 downto 0);  -- Read/Write Data IO for chip2

         -- Mictor Connectors
         MictorOben_oddPOD       : out std_logic_vector(15 downto 0);
         MictorOben_evenPOD      : out std_logic_vector(15 downto 0);
         MictorObenLinks_oddPOD  : out std_logic_vector(15 downto 0);
         MictorObenLinks_evenPOD : out std_logic_vector(15 downto 0);
         MictorUnten_oddPOD      : out std_logic_vector(15 downto 0);
         MictorUnten_evenPOD     : out std_logic_vector(15 downto 0)

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

  component brom_im
    port (
      addr : in  std_logic_vector(13 downto 0);
      clk  : in  std_logic;
      dout : out std_logic_vector(35 downto 0));
  end component;

  component bram_dm
    port (
      addr : in  std_logic_vector(13 downto 0);
      clk  : in  std_logic;
      din  : in  std_logic_vector(31 downto 0);
      dout : out std_logic_vector(31 downto 0);
      we   : in  std_logic);
  end component;

  component interface_asipmeister_i2c
    port (
      clock                : in    std_logic;
      reset                : in    std_logic;
      asip_data_in         : in    std_logic_vector (7 downto 0);
      asip_data_out        : out   std_logic_vector (7 downto 0);
      asip_rd_en           : in    std_logic;
      asip_wr_en           : in    std_logic;
      asip_empty           : out   std_logic;
      asip_full            : out   std_logic;
      asip_wr_ack          : out   std_logic;
      asip_rd_valid        : out   std_logic;
      i2c_bus_data_in      : in    std_logic_vector (7 downto 0);
      i2c_bus_data_out     : out   std_logic_vector (7 downto 0);
      i2c_address          : out   std_logic_vector (6 downto 0);
      i2c_rw               : inout std_logic;
      i2c_bytes_to_read    : out   std_logic_vector (7 downto 0);
      i2c_rd_en            : out   std_logic;
      i2c_wr_en            : out   std_logic;
      i2c_empty            : in    std_logic;
      i2c_full             : in    std_logic;
      i2c_wr_ack           : in    std_logic;
      i2c_rd_valid         : in    std_logic;
      i2c_data_valid       : out   std_logic;
      i2c_done             : in    std_logic;
      i2c_request          : out   std_logic;
      i2c_acknowledge      : in    std_logic;
      interface_state      : out   std_logic_vector (3 downto 0);
      interface_fifo_data  : out   std_logic_vector (7 downto 0);
      interface_fifo_rd_en : out   std_logic;
      interface_fifo_valid : out   std_logic);
  end component;

  component i2c_toplevel
    generic (
      devcount                 :       positive);
    port (
      clock_ip                 : in    std_logic;
      data_in                   : in    std_logic_vector ((8 * devcount) - 1 downto 0);
      data_out                 : out   std_logic_vector ((8 * devcount) - 1 downto 0);
      address                  : in    std_logic_vector ((7 * devcount) - 1 downto 0);
      rw                       : in    std_logic_vector (devcount - 1 downto 0);
      bytes_to_read            : in    std_logic_vector ((8 * devcount) - 1 downto 0);
      rd_en                    : in    std_logic_vector (devcount - 1 downto 0);
      wr_en                    : in    std_logic_vector (devcount - 1 downto 0);
      empty                    : out   std_logic_vector (devcount - 1 downto 0);
      full                     : out   std_logic_vector (devcount - 1 downto 0);
      wr_ack                   : out   std_logic_vector (devcount - 1 downto 0);
      rd_valid                 : out   std_logic_vector (devcount - 1 downto 0);
      clock                    : in    std_logic_vector (devcount - 1 downto 0);
      reset                    : in    std_logic_vector (devcount - 1 downto 0);
      data_valid               : in    std_logic_vector (devcount - 1 downto 0);
      done                     : out   std_logic_vector (devcount - 1 downto 0);
      request                  : in    std_logic_vector (devcount - 1 downto 0);
      acknowledge              : out   std_logic_vector (devcount - 1 downto 0);
      pca9564_data             : inout std_logic_vector (7 downto 0);
      pca9564_wr               : out   std_logic;
      pca9564_rd               : out   std_logic;
      pca9564_ce               : out   std_logic;
      pca9564_address          : out   std_logic_vector (1 downto 0);
      pca9564_int              : in    std_logic;
      pca9564_reset            : out   std_logic;
      debug_pca9564_registers  : out   std_logic_vector (31 downto 0);
      debug_statemachine_state : out   std_logic_vector (7 downto 0));
  end component;

  component AudioOut_TopLevel
    generic (
      KSAMPLES_PER_SECOND          : integer;
      FIFO_READ_CLOCK_SPEED_IN_KHZ : integer;
      NUMBER_OF_PORTS              : integer
      );

    port (
      reset            : in  std_logic;
      clkPwmGeneration : in  std_logic;
      clkFifoRead      : in  std_logic;
      clkFifoWrite     : in  std_logic;
      AudioData        : in  AudioDataArray(NUMBER_OF_PORTS-1 downto 0);
      req              : in  std_logic_vector(NUMBER_OF_PORTS-1 downto 0);
      ack              : out std_logic_vector(NUMBER_OF_PORTS-1 downto 0);
      analogOut        : out std_logic;
      fifoDataCount    : out std_logic_vector(7 downto 0);
      selector         : in  std_logic_vector(NUMBER_OF_PORTS-1 downto 0)
      );
  end component;

  component kcuart_rx
    port (
      serial_in    : in  std_logic;
      data_out     : out std_logic_vector(7 downto 0);
      data_strobe  : out std_logic;
      en_16_x_baud : in  std_logic;
      clk          : in  std_logic
      );
  end component;


  component kcuart_tx
    port (
      data_in        : in  std_logic_vector(7 downto 0);
      send_character : in  std_logic;
      en_16_x_baud   : in  std_logic;
      serial_out     : out std_logic;
      Tx_complete    : out std_logic;
      clk            : in  std_logic
      );
  end component;

-- TODO: REPLACE THIS BY DCM !!! (it prevents using the dedicated clock network)
  component clk_div
    generic(
      count       :     integer
      );
    port(
      clk         : in  std_logic;
      reset       : in  std_logic;
      reduced_clk : out std_logic
      );
  end component;
  
  component icon
    port
    (
      control0    :   out std_logic_vector(35 downto 0)
    );
  end component;
  
  component ila
    port
    (
      control     : in    std_logic_vector(35 downto 0);
      clk         : in    std_logic;
      data        : in    std_logic_vector(127 downto 0);
      trig0       : in    std_logic_vector(31 downto 0)
    );
  end component;

  constant READ : std_logic_vector(3 downto 0) := "1111";  -- read mode from CPU

  signal fifo_putc0_data_in  : std_logic_vector(7 downto 0);
  signal fifo_getc0_data_out : std_logic_vector(7 downto 0);
  signal fifo_getc0_empty    : std_logic;

  signal instrab_cpu  : std_logic_vector(31 downto 0);
  signal instrab      : std_logic_vector(INST_AB_WIDTH-1 downto 0);
  signal instrdb_brom : std_logic_vector(35 downto 0);
  signal instrdb_cpu  : std_logic_vector(31 downto 0);  --without parity bits

  signal reset_cpu    : std_logic;
  signal switch       : std_logic := '1';
  signal reset_switch : std_logic;
  signal finish       : std_logic;
  signal reset_finish : std_logic;  -- when the bootloader is used the CPU automatically
                                    -- goes back to the bootloader once the application is
												-- finished; otherwise the CPU simply stops

  signal wmode_cpu   : std_logic_vector(3 downto 0);
  signal datareq_cpu : std_logic;
  signal dataack_cpu : std_logic;

  signal dataab_cpu       : std_logic_vector(31 downto 0);
  signal dataab_bram      : std_logic_vector(DATA_AB_WIDTH-1 downto 0);
  signal datadb_cpu       : std_logic_vector(31 downto 0);
  signal datadb_bram_din  : std_logic_vector(31 downto 0);
  signal datadb_bram_dout : std_logic_vector(31 downto 0);
  signal datawe_bram      : std_logic;

  signal datadb_mem  : std_logic_vector(31 downto 0);
  signal datareq_mem : std_logic;
  signal dataack_mem : std_logic;

  signal datadb_ports  : MemoryMappedDataArrayType(MemoryMappedNumberOfPorts-1 downto 0);
  signal datareq_ports : std_logic_vector(MemoryMappedNumberOfPorts-1 downto 0);
  signal dataack_ports : std_logic_vector(MemoryMappedNumberOfPorts-1 downto 0);

  signal port2            : std_logic_vector(31 downto 0);
  signal port2_req_d      : std_logic;
  signal port3            : std_logic_vector(31 downto 0);
  signal port3_counter    : MemoryMappedDataType;
  signal port3_req_d      : std_logic;
  signal port4_req_d      : std_logic;

  signal asip_wr_ack_i       : std_logic;
  signal asip_rd_valid_i     : std_logic;
  signal i2c_write_en        : std_logic;
  signal i2c_read_en         : std_logic;
  signal i2c_bus_data_in_i   : std_logic_vector (7 downto 0);
  signal i2c_bus_data_out_i  : std_logic_vector (7 downto 0);
  signal i2c_address_i       : std_logic_vector (6 downto 0);
  signal i2c_rw_i            : std_logic;
  signal i2c_bytes_to_read_i : std_logic_vector (7 downto 0);
  signal i2c_rd_en_i         : std_logic;
  signal i2c_wr_en_i         : std_logic;
  signal i2c_empty_i         : std_logic;
  signal i2c_full_i          : std_logic;
  signal i2c_wr_ack_i        : std_logic;
  signal i2c_rd_valid_i      : std_logic;
  signal i2c_data_valid_i    : std_logic;
  signal i2c_done_i          : std_logic;
  signal i2c_request_i       : std_logic;
  signal i2c_acknowledge_i   : std_logic;


  -- Connections to AudioOut (left channel has only 1 port that is connected to CPU; right channel has 2 ports, i.e. CPU and testing)
  constant NUMBER_OF_AUDIO_PORTS : natural := 2;

  signal selectorR   : std_logic_vector(NUMBER_OF_AUDIO_PORTS-1 downto 0);
  signal AudioR_Data : AudioDataArray(NUMBER_OF_AUDIO_PORTS-1 downto 0);
  signal AudioR_Req  : std_logic_vector(NUMBER_OF_AUDIO_PORTS-1 downto 0);
  signal AudioR_Ack  : std_logic_vector(NUMBER_OF_AUDIO_PORTS-1 downto 0);
  signal AudioL_Data : AudioDataArray(0 downto 0);
  signal AudioL_Req  : std_logic_vector(0 downto 0);
  signal AudioL_Ack  : std_logic_vector(0 downto 0);

  -- Connections to UART
  signal resetforclkdiv : std_logic := '0';  --reset for clkdiv
  signal reduced_clk    : std_logic;    --16 times faster than baud rate
  signal data_out       : std_logic_vector(7 downto 0);  --connecting tx and fifo
  signal send_character : std_logic;    --connecting data_present and send_character
  signal Tx_complete    : std_logic;

  signal data_in      : std_logic_vector(7 downto 0);  --connecting rx and fifo
  signal write_buffer : std_logic;                     --connecting data

  signal control0   : std_logic_vector(35 downto 0);
  
  signal data       : std_logic_vector(127 downto 0);
  signal trig0      : std_logic_vector(31 downto 0);
  

begin
  cpu_i : CPU
    port map (
      clk     => clk,
      reset   => reset_cpu,
      instDB  => instrdb_cpu,
      instAB  => instrab_cpu,
      DataDB  => datadb_cpu,
      DataAB  => dataab_cpu,
      DataReq => datareq_cpu,
      DataAck => dataack_cpu,
      DataWin => wmode_cpu);

  i_memorymapper : MemoryMapper
    port map (
      -- CPU
      DataAB_master  => dataab_cpu,
      DataDB_master  => datadb_cpu,
      DataReq_master => datareq_cpu,
      DataAck_master => dataack_cpu,
      DataRW_master  => wmode_cpu,
      -- bram_dm
      DataDB_mem     => datadb_mem,
      DataReq_mem    => datareq_mem,
      DataAck_mem    => dataack_mem,
      -- ports
      DataDB_ports   => datadb_ports,
      DataReq_ports  => datareq_ports,
      DataAck_ports  => dataack_ports);

  i_brom_im : brom_im
    port map (
      addr => instrab,
      clk  => clk,
      dout => instrdb_brom);

  i_bram_dm : bram_dm
    port map (
      addr => dataab_bram,
      clk  => clk,
      din  => datadb_bram_din,
      dout => datadb_bram_dout,
      we   => datawe_bram);

  i2c_interface : interface_asipmeister_i2c
    port map (
      clock                => clk,
      reset                => reset,
      asip_data_in         => fifo_putc0_data_in,
      asip_data_out        => fifo_getc0_data_out,
      asip_rd_en           => i2c_read_en,
      asip_wr_en           => i2c_write_en,
      asip_empty           => fifo_getc0_empty,
      asip_full            => open,
      asip_wr_ack          => asip_wr_ack_i,
      asip_rd_valid        => asip_rd_valid_i,
      i2c_bus_data_in      => i2c_bus_data_in_i,
      i2c_bus_data_out     => i2c_bus_data_out_i,
      i2c_address          => i2c_address_i,
      i2c_rw               => i2c_rw_i,
      i2c_bytes_to_read    => i2c_bytes_to_read_i,
      i2c_rd_en            => i2c_rd_en_i,
      i2c_wr_en            => i2c_wr_en_i,
      i2c_empty            => i2c_empty_i,
      i2c_full             => i2c_full_i,
      i2c_wr_ack           => i2c_wr_ack_i,
      i2c_rd_valid         => i2c_rd_valid_i,
      i2c_data_valid       => i2c_data_valid_i,
      i2c_done             => i2c_done_i,
      i2c_request          => i2c_request_i,
      i2c_acknowledge      => i2c_acknowledge_i,
      interface_state      => open,
      interface_fifo_data  => open,
      interface_fifo_rd_en => open,
      interface_fifo_valid => open);

  i2c_core : i2c_toplevel
    generic map (
      devcount                 => 1)
    port map (
      clock_ip                 => clock_ip,
      data_in                  => i2c_bus_data_out_i,
      data_out                 => i2c_bus_data_in_i,
      address                  => i2c_address_i,
      rw (0)                   => i2c_rw_i,
      bytes_to_read            => i2c_bytes_to_read_i,
      rd_en (0)                => i2c_rd_en_i,
      wr_en (0)                => i2c_wr_en_i,
      empty (0)                => i2c_empty_i,
      full (0)                 => i2c_full_i,
      wr_ack (0)               => i2c_wr_ack_i,
      rd_valid (0)             => i2c_rd_valid_i,
      clock (0)                => clk,
      reset (0)                => reset,
      data_valid (0)           => i2c_data_valid_i,
      done (0)                 => i2c_done_i,
      request (0)              => i2c_request_i,
      acknowledge (0)          => i2c_acknowledge_i,
      pca9564_data             => pca9564_data,
      pca9564_wr               => pca9564_wr,
      pca9564_rd               => pca9564_rd,
      pca9564_ce               => pca9564_ce,
      pca9564_address          => pca9564_address,
      pca9564_int              => pca9564_int,
      pca9564_reset            => pca9564_reset,
      debug_pca9564_registers  => open,
      debug_statemachine_state => open);


  AudioR : AudioOut_TopLevel
    generic map (
      KSAMPLES_PER_SECOND          => 48,
      FIFO_READ_CLOCK_SPEED_IN_KHZ => 40000,
      NUMBER_OF_PORTS              => NUMBER_OF_AUDIO_PORTS)
    port map (
      reset                        => reset,
      clkPwmGeneration             => clock_ip,
      clkFifoRead                  => clock_ip,
      clkFifoWrite                 => clk,
      AudioData                    => AudioR_Data,
      req                          => AudioR_Req,
      ack                          => AudioR_Ack,
      analogOut                    => AudioR_Out,
      fifoDataCount                => open,
      selector                     => selectorR);

  AudioL : AudioOut_TopLevel
    generic map (
      KSAMPLES_PER_SECOND          => 48,
      FIFO_READ_CLOCK_SPEED_IN_KHZ => 40000,
      NUMBER_OF_PORTS              => 1)
    port map (
      reset                        => reset,
      clkPwmGeneration             => clock_ip,
      clkFifoRead                  => clock_ip,
      clkFifoWrite                 => clk,
      AudioData                    => AudioL_Data,
      req                          => AudioL_Req,
      ack                          => AudioL_Ack,
      analogOut                    => audioL_Out,
      fifoDataCount                => open,
      selector                     => "0");

  clk_div_instance : clk_div
    generic map(
      -- make changes here for other system clocks and baud rates
      --count => 64                     -- 40MHz/(16*38400)
      --count => 5 --45MHz/(16*460800)  -- geht in diesem project!!
      count       => 10                 -- 40MHz/(16*230400)
      )
    port map(
      clk         => clk,
      reset       => resetforclkdiv,
      reduced_clk => reduced_clk
      );

  kcuart_tx_instance : kcuart_tx
    port map(
      serial_out     => serial0_out,
      data_in        => data_out,
      send_character => send_character,
      Tx_complete    => Tx_complete,
      en_16_x_baud   => reduced_clk,
      clk            => clk
      );

  kcuart_rx_instance : kcuart_rx
    port map(
      serial_in    => serial0_in,
      data_out     => data_in,
      data_strobe  => write_buffer,
      en_16_x_baud => reduced_clk,
      clk          => clk
      );

  i_icon : icon
    port map
    (
      control0    => control0
    );
	
  i_ila : ila
    port map
    (
      control   => control0,
      clk       => clk,
      data      => data,
      trig0     => trig0
    );

  -- dummy feed-through to avoid DRC error from
  -- bitgen (as long as the second UART port is unused)
  serial1_out <= serial1_in;


  -----------------------------------------------------------------------------
  -- AudioOut (connect audio-port 1 to memorymapper-port 1)
  AudioR_Data(0)   <= datadb_ports(1)(15 downto 0);
  AudioL_Data(0)   <= datadb_ports(1)(15 downto 0);
  AudioR_Req(0)    <= datareq_ports(1) when dataab_cpu(3 downto 2) = "01" else '0'; -- bit battern to identify left channel
  AudioL_Req(0)    <= datareq_ports(1) when dataab_cpu(3 downto 2) = "10" else '0'; -- bit battern to identify right channel
  dataack_ports(1) <= AudioR_Ack(0) or AudioL_Ack(0);
  selectorR        <= "00";             -- connect ASIP cpu


  -----------------------------------------------------------------------------
  -- Pin assignments (DEBUG)
  led_buildin             <= instrab_cpu(7 downto 0);
  led                     <= datareq_cpu & dataack_cpu & dataab_cpu(29 downto 16) & instrab_cpu(15 downto 0);
  MictorOben_oddPOD       <= datareq_cpu & dataack_cpu & dataab_cpu(13 downto  0);
  MictorOben_evenPOD      <= datareq_cpu & dataack_cpu & dataab_cpu(27 downto 14);
  MictorObenLinks_oddPOD  <= instrab_cpu(15 downto 0);
  MictorObenLinks_evenPOD <= (others => '0');
  MictorUnten_oddPOD      <= datareq_ports(3) & dataack_ports(3) & wmode_cpu & port3_counter(25 downto 16);
  MictorUnten_evenPOD     <= datareq_ports(3) & dataack_ports(3) & wmode_cpu & port3_counter(9  downto  0);

  trig0(14 downto 0) 	<= dataab_bram & datawe_bram ;
  data(80 downto 0)		<=  dataab_bram & datadb_bram_din & datadb_bram_dout & datawe_bram & clk & reset;
  -----------------------------------------------------------------------------
  -- Basic CPU control
  reset_cpu <= reset or finish or reset_switch;

  finishprocess : process (clk, reset)
    type s_t is (st0, st1, st2);
    variable state : s_t;
  begin
    if rising_edge(clk) then
      if reset = '1' then
        finish       <= '0';
        state       := st0;
      else
        case state is
          when st0 =>
            if instrdb_cpu = X"FFFFFFFF" then
              finish <= '1';
              state := st1;
            else
              state := st0;
				  if reset_finish='1' then
				    -- when the bootloader is used then finish (and thus reset_cpu) goes
					 -- back to '0' to restart the bootloader
                finish <= '0';
				  end if;
            end if;
          when st1 =>
            finish   <= '1';
            state   := st2;
          when st2 =>
            finish   <= '1';
            state   := st0;
        end case;
      end if;
    end if;
  end process;

  switchprocess    : process(clk, reset, datareq_ports(0), finish)
    type s_t is (st0, st1, st2, st3, st4);
    variable state : s_t;
  begin
    if rising_edge(clk) then
      if reset = '1' or finish = '1' then
        switch                 <= '0';
        dataack_ports(0)       <= '0';
        reset_switch           <= '0';
        reset_finish           <= '0';
        state       := st0;
      else
        case state is
          when st0 =>
            if datareq_ports(0) = '1' then
              switch           <= '1';
              dataack_ports(0) <= '1';
              reset_switch     <= '1';
              reset_finish     <= '1';
              state := st1;
            else
              dataack_ports(0) <= '0';
              reset_switch     <= '0';
              state := st0;
            end if;
          when st1 =>
            reset_switch       <= '1';
            state   := st2;
          when st2 =>
            reset_switch       <= '1';
            state   := st3;
          when st3 =>
            reset_switch       <= '1';
            state   := st4;
          when st4 =>
            reset_switch       <= '1';
            state   := st0;
        end case;
      end if;
    end if;
  end process;



  -----------------------------------------------------------------------------
  -- Memory Controller
  improcess        : process(clk, switch, reset, datareq_ports(5), datadb_ports(5), wmode_cpu, instrab_cpu, DQ1, DQ2, instrdb_brom)
    type s_t is (waitForReq, write0, read0);
    variable state : s_t;
  begin
    if switch = '1' then                   -- using sram as IM (only reading)  
      ai     <= instrab_cpu(19 downto 0);  -- word addressing.
      we_b1  <= '1';
      oe_b1  <= '0';
      bhe_b1 <= '0';
      ble_b1 <= '0';
      we_b2  <= '1';
      oe_b2  <= '0';
      bhe_b2 <= '0';
      ble_b2 <= '0';

      instrdb_cpu(15 downto 0)  <= dq1;
      instrdb_cpu(31 downto 16) <= dq2;

    else                                -- switch = '0' using blockram as IM (initialization & test: read & write)
      instrdb_cpu <= instrdb_brom(31 downto 0);
      instrab     <= instrab_cpu(INST_AB_WIDTH-1 downto 0);
      if reset = '1' then

        state := waitForReq;
        dataack_ports(5) <= '0';
        datadb_ports(5)(31 downto 0) <= (others => 'Z');
		ai <= (others => '0');
        we_b1  <= '1';
        oe_b1  <= '1';
        bhe_b1 <= '1';
        ble_b1 <= '1';
        we_b2  <= '1';
        oe_b2  <= '1';
        bhe_b2 <= '1';
        ble_b2 <= '1';
        dq1    <= (others => 'Z');
        dq2    <= (others => 'Z');
      else

        if rising_edge(clk) then

          case state is
            when waitForReq =>          -- waiting for req and decide whether read or write has to be executed.
              if (datareq_ports(5) = '1') then
                ai <= dataab_cpu(21 downto 2);
                if (wmode_cpu /= READ) then 
                  -- write request
                  dq1 <= datadb_ports(5)(15 downto 0);
                  dq2 <= datadb_ports(5)(31 downto 16);
                  we_b1  <= '0';
                  oe_b1  <= '1';
                  bhe_b1 <= '0';
                  ble_b1 <= '0';
                  we_b2  <= '0';
                  oe_b2  <= '1';
                  bhe_b2 <= '0';
                  ble_b2 <= '0';
                  state := write0;
				else
                  -- read request
                  we_b1  <= '1';
                  oe_b1  <= '0';
                  bhe_b1 <= '0';
                  ble_b1 <= '0';
                  we_b2  <= '1';
                  oe_b2  <= '0';
                  bhe_b2 <= '0';
                  ble_b2 <= '0';
                  state := read0;
                end if;

              else  -- No Request
                dataack_ports(5) <= '0';
                state := waitForReq;
                we_b1  <= '1';          -- close is very important!!
                oe_b1  <= '1';
                bhe_b1 <= '1';
                ble_b1 <= '1';
                we_b2  <= '1';
                oe_b2  <= '1';
                bhe_b2 <= '1';
                ble_b2 <= '1';
                datadb_ports(5) <= (others => 'Z');  -- this line is very important!!
                dq1             <= (others => 'Z');
                dq2             <= (others => 'Z');

              end if;
			  
            when write0 =>
              dataack_ports(5) <= '1';
              state := waitForReq;
			  
            -- wait for 1 clk (25 ns) time for read
            -- read acknowledge
            when read0 =>
              datadb_ports(5)(15 downto 0) <= dq1;
              datadb_ports(5)(31 downto 16) <= dq2;
              dataack_ports(5) <= '1';
              state := waitForReq;

          end case;
        end if;
      end if;
    end if;

  end process;


  -- DataMemory
  dataab_bram <= dataab_cpu(DATA_AB_WIDTH+1 downto 2);

  readwriteSRAMDM   : process(clk, reset, datareq_mem, datadb_mem, wmode_cpu, switch, datareq_ports(6), datadb_ports(6))
    type s_t1 is (st0, st1, st2, st3);
    variable state1 : s_t1;

    type s_t2 is (waitForReq, write0, read0);    
    variable state2 : s_t2;

    type s_t is (waitForReq, read0, write0);  
    variable state : s_t;
  begin
    if rising_edge(clk) then
      if reset = '1' then
        state1 := st0;
        state2 := waitForReq;
        state  := waitForReq;
        dataack_mem             <= '0';
        datadb_mem(31 downto 0) <= (others => 'Z');
        dataack_ports(6)        <= '0';
        datadb_ports(6)         <= (others => 'Z');
		
	datawe_bram     <= '0'; 
		
        we_a1  <= '1';
        oe_a1  <= '1';
        bhe_a1 <= '1';
        ble_a1 <= '1';
        we_a2  <= '1';
        oe_a2  <= '1';
        bhe_a2 <= '1';
        ble_a2 <= '1';

        dp1 <= (others => 'Z');
        dp2 <= (others => 'Z');

      else
        if switch = '1' then            -- using sramdm

          case state is
            when waitForReq =>          -- waiting for req and decide whether read or write has to be executed.
              if (datareq_mem = '1') then
                ad <= dataab_cpu(21 downto 2);  -- the last 2 bit decide every 8-bit, but we only have sw and lw, so we can only do 32-bit load/store-operations.
                                        -- ignor the last 2 bit.  

                if (wmode_cpu = READ) then
                  -- read request
                  we_a1     <= '1';
                  oe_a1     <= '0';
                  bhe_a1    <= '0';
                  ble_a1    <= '0';
                  we_a2     <= '1';
                  oe_a2     <= '0';
                  bhe_a2    <= '0';
                  ble_a2    <= '0';
                  state := read0;
                else
                  dp1       <= datadb_mem(15 downto 0);
                  dp2       <= datadb_mem(31 downto 16);
                  we_a1     <= '0';
                  oe_a1     <= '1';
                  bhe_a1    <= '0';
                  ble_a1    <= '0';
                  we_a2     <= '0';
                  oe_a2     <= '1';
                  bhe_a2    <= '0';
                  ble_a2    <= '0';
                  state := write0;
                end if;
              else
                dataack_mem <= '0';
                state   := waitForReq;

                we_a1  <= '1';
                oe_a1  <= '1';
                bhe_a1 <= '1';
                ble_a1 <= '1';
                we_a2  <= '1';
                oe_a2  <= '1';
                bhe_a2 <= '1';
                ble_a2 <= '1';

                datadb_mem <= (others => 'Z');
                dp1        <= (others => 'Z');
                dp2        <= (others => 'Z');
              end if;

              -- wait for 1 clk (25 ns) time for read
              -- read acknowledge
            when read0 =>

              datadb_mem(15 downto 0)  <= dp1;
              datadb_mem(31 downto 16) <= dp2;
              dataack_mem              <= '1';
              state := waitForReq;

              -- wait for 1 clk (25 ns) time for write
              -- write acknowledge
            when write0 =>

              dataack_mem <= '1';
              state := waitForReq;

          end case;

        else                            -- switch = '0'; using blockramdm
          case state1 is
            when st0 =>
              if datareq_mem = '1' then
                if wmode_cpu = READ then  --- read need 4 takt!!!, d.h. wie in modelsim read from sram!!
                  datawe_bram     <= '0';
                  state1 := st1;
                else						 --- write process in BRAM
                  datawe_bram     <= '1';
                  datadb_bram_din <= datadb_mem;
                  state1 := st2;
                end if;
              else
                datadb_mem  <= (others => 'Z');  -- dadurch read from ports_5 funktioniert!!
                dataack_mem <= '0';
                state1 := st0;
                datawe_bram <= '0';
              end if;

            when st1 =>
              datadb_mem  <= datadb_bram_dout;
              state1 := st2;
            when st2 =>
              dataack_mem <= '1';
              state1 := st0;
            when st3 =>
              dataack_mem <= '1';
              state1 := st0;
          end case;

          -- initianisierung des Sram-dms nur write!!!
          case state2 is
            when waitForReq =>          -- waiting for req and decide whether read or write has to be executed.
              if (datareq_ports(6) = '1') then
                ad <= dataab_cpu(21 downto 2);
                if (wmode_cpu /= READ) then
				-- write request
                  dp1    <= datadb_ports(6)(15 downto 0);
                  dp2    <= datadb_ports(6)(31 downto 16);
                  we_a1  <= '0';
                  oe_a1  <= '1';
                  bhe_a1 <= '0';
                  ble_a1 <= '0';
                  we_a2  <= '0';
                  oe_a2  <= '1';
                  bhe_a2 <= '0';
                  ble_a2 <= '0';
                  state2 := write0;
				else
                  -- read request
                  we_a1  <= '1';
                  oe_a1  <= '0';
                  bhe_a1 <= '0';
                  ble_a1 <= '0';
                  we_a2  <= '1';
                  oe_a2  <= '0';
                  bhe_a2 <= '0';
                  ble_a2 <= '0';
                  state2 := read0;
                end if;

              else
                dataack_ports(6) <= '0';
                state2 := waitForReq;

                we_a1  <= '1';          -- close is very important!!
                oe_a1  <= '1';
                bhe_a1 <= '1';
                ble_a1 <= '1';
                we_a2  <= '1';
                oe_a2  <= '1';
                bhe_a2 <= '1';
                ble_a2 <= '1';

                datadb_ports(6) <= (others => 'Z');
                dp1             <= (others => 'Z');
                dp2             <= (others => 'Z');
              end if;

              -- wait for 1 clk (25 ns)  time for write
              -- write acknowledge
            when write0 =>
              dataack_ports(6) <= '1';
              state2 := waitForReq;
	
			-- wait for 1 clk (25 ns) time for read
            -- read acknowledge
            when read0 =>
              datadb_ports(6)(15 downto 0) <= dp1;
              datadb_ports(6)(31 downto 16) <= dp2;
              dataack_ports(6) <= '1';
              state2 := waitForReq;
			  
          end case;

        end if;
      end if;
    end if;
  end process;


  -- write (pseudo) sine signal to right audio channel, port #1
  dummySoundData           : process(reset, clk)
    variable soundData     : std_logic_vector(SAMPLE_BIT_WIDTH-1 downto 0);
    variable increment     : std_logic_vector(SAMPLE_BIT_WIDTH-1 downto 0);
    variable delay_counter : integer;
    variable delay_limit   : integer;
  begin
    if rising_edge(clk) then
      if reset = '1' then
        soundData         := (others => '0');
        increment         := (others => '0');
        delay_counter     := 0;
        delay_limit       := 0;
        AudioR_Req(1)    <= '1';
      else
        if AudioR_Ack(1) = '1' then
          -- delay_limit := conv_integer( dip(7 DOWNTO 0) );
          delay_limit     := 10;
          if delay_counter >= delay_limit then
            delay_counter := 0;
            soundData     := soundData + increment;
          else
            delay_counter := delay_counter + 1;
          end if;
          if soundData = conv_std_logic_vector( (2**SAMPLE_BIT_WIDTH)-1, SAMPLE_BIT_WIDTH) then
            increment     := conv_std_logic_vector(-8, SAMPLE_BIT_WIDTH);
          elsif soundData = conv_std_logic_vector('0', SAMPLE_BIT_WIDTH) then
            increment     := conv_std_logic_vector(8, SAMPLE_BIT_WIDTH);
          end if;
          AudioR_Data(1) <= soundData;
        end if;
      end if;
    end if;
  end process;


  -- memory mapped counter (mm_port nr 3)
  datadb_ports(3) <= port3_counter when wmode_cpu = READ and port3_req_d = '1'
                     else (others => 'Z');
  port3_req_d     <= datareq_ports(3) when rising_edge(clk);
  dataack_ports(3) <= port3_req_d;

  port3counter       : process (reset, clk)
  begin
    if rising_edge(clk) then
      if reset = '1' then
        port3_counter      <= (others => '0');
      else
        if datareq_ports(3) = '1' then
          -- Master (e.g. CPU) want to write
          if wmode_cpu /= READ then
            port3_counter  <= datadb_ports(3);
          end if;
        end if;

        -- Count up, if there was no write-request
        if datareq_ports(3) = '0' or wmode_cpu = READ then
          port3_counter <= conv_std_logic_vector(conv_integer(port3_counter)+1, 32);
        end if;

      end if;
    end if;
  end process;


  -- memory mapped putc/getc port (mm_port nr 4)
  putgetchar             : process (clk, reset, datareq_ports(4), datadb_ports(4), asip_wr_ack_i, asip_rd_valid_i, wmode_cpu)
    type t_s is (waitForReq, write0, write1, write2, write3, read0, read1, read2, read3);
    variable state       : t_s;
    variable sampledData : std_logic_vector(7 downto 0);
  begin
    if rising_edge(clk) then
      if reset = '1' then
        state       := waitForReq;
        i2c_write_en                 <= '0';
        i2c_read_en                  <= '0';
        dataack_ports(4)             <= '0';
        datadb_ports(4)(31 downto 0) <= (others => 'Z');
        sampledData := (others                  => '0');
        fifo_putc0_data_in           <= (others => '0');
      else
        case state is

          when waitForReq =>            -- waiting for req and decide whether putc or getc has to be executed.
            if (datareq_ports(4) = '1') then
              if (wmode_cpu = READ) then
                state       := read0;
              else
                sampledData := datadb_ports(4)(7 downto 0);
                state       := write0;
              end if;
            end if;

          when write0 =>                -- From writ0 to write3 for completion of putc. 
            fifo_putc0_data_in <= sampledData;
            i2c_write_en       <= '1';
            state := write1;

          when write1 =>
            i2c_write_en <= '0';
            state := write2;

          when write2 =>
            if (asip_wr_ack_i = '1') then
              dataack_ports(4) <= '1';
              state := write3;
            else
              state := write0;
            end if;

          when write3 =>
            if (datareq_ports(4) = '0') then
              dataack_ports(4) <= '0';
              state := waitForReq;
            end if;

          when read0 =>                 -- From read0 to read3 for completion of getc.
            i2c_read_en <= '1';
            state := read1;

          when read1 =>
            i2c_read_en <= '0';
            state := read2;

          when read2 =>
            if (asip_rd_valid_i = '1') then
              datadb_ports(4)(7 downto 0) <= fifo_getc0_data_out;
              dataack_ports(4)            <= '1';
              state := read3;
            else
              state := read0;
            end if;

          when read3 =>

            datadb_ports(4)(7 downto 0) <= (others => 'Z');
            if (datareq_ports(4) = '0') then
              dataack_ports(4)          <= '0';
              state := waitForReq;
            end if;
        end case;

      end if;
    end if;
  end process;



  writeandreaduart : process(clk, reset, datareq_ports(2), wmode_cpu, write_buffer, data_in, Tx_complete)
    type s_t is (waitForReq, write0, read0);
    variable state : s_t;
  begin
    if rising_edge(clk) then
      if reset = '1' then
        dataack_ports(2)       <= '0';
        datadb_ports(2)        <= (others => 'Z');
        send_character         <= '0';
        data_out               <= (others => 'Z');
        state         := waitForReq;
      else
        case state is
          when waitForReq                 =>
            if (datareq_ports(2) = '1') then
              if wmode_cpu /= READ then  -- write
                data_out       <= datadb_ports(2)(7 downto 0);
                send_character <= '1';
                state := write0;
              else                       -- read
                state := read0;
              end if;

            else
              dataack_ports(2) <= '0';
              state := waitForReq;
              datadb_ports(2)  <= (others => 'Z');
              send_character   <= '0';
              data_out         <= (others => 'Z');
            end if;

          when write0 =>

            if Tx_complete = '1' then
              send_character   <= '0';
              data_out         <= (others => 'Z');
              dataack_ports(2) <= '1';
              state := waitForReq;
            end if;

          when read0 =>
            if write_buffer = '1' then
              datadb_ports(2)  <= "000000000000000000000000" & data_in;
              dataack_ports(2) <= '1';
              state := waitForReq;
            end if;

        end case;
      end if;
    end if;
  end process;


end Behavioral;
