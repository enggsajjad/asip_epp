-----------------------------------------------------------
-- Entity Name: CPU
-----------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity CPU is
  port (
    CLK : in std_logic;
    Reset : in std_logic;
    instAB : out std_logic_vector(31 downto 0);
    instDB : in std_logic_vector(31 downto 0);
    DataAB : out std_logic_vector(31 downto 0);
    DataDB : inout std_logic_vector(31 downto 0);
    DataReq : out std_logic;
    DataAck : in std_logic;
    dataWin : out std_logic_vector(3 downto 0)
  );
end entity CPU;

architecture RTL of CPU is
  component fhm_pcu_w32
  port (
    clock : in std_logic;
    load : in std_logic;
    reset : in std_logic;
    hold : in std_logic;
    data_in : in std_logic_vector(31 downto 0);
    data_out : out std_logic_vector(31 downto 0)
  );
  end component fhm_pcu_w32;

  component fhm_register_w32
  port (
    clock : in std_logic;
    reset : in std_logic;
    enb : in std_logic;
    data_in : in std_logic_vector(31 downto 0);
    data_out : out std_logic_vector(31 downto 0)
  );
  end component fhm_register_w32;

  component fhm_imau_w32
  port (
    addr : in std_logic_vector(31 downto 0);
    addr_bus : out std_logic_vector(31 downto 0);
    data_bus : in std_logic_vector(31 downto 0);
    data : out std_logic_vector(31 downto 0)
  );
  end component fhm_imau_w32;

  component fhm_dmau_w32
  port (
    reset : in std_logic;
    req : in std_logic;
    rw : in std_logic;
    ac_mode : in std_logic_vector(1 downto 0);
    ext_mode : in std_logic;
    addr : in std_logic_vector(31 downto 0);
    data_in : in std_logic_vector(31 downto 0);
    addr_err : out std_logic;
    req_bus : out std_logic;
    w_mode_bus : out std_logic_vector(3 downto 0);
    addr_bus : out std_logic_vector(31 downto 0);
    data_bus : inout std_logic_vector(31 downto 0);
    ack_bus : in std_logic;
    ack : out std_logic;
    data_out : out std_logic_vector(31 downto 0)
  );
  end component fhm_dmau_w32;

  component fhm_registerfile_w32
  port (
    clock : in std_logic;
    reset : in std_logic;
    w_enb0 : in std_logic;
    w_sel0 : in std_logic_vector(4 downto 0);
    data_in0 : in std_logic_vector(31 downto 0);
    r_sel0 : in std_logic_vector(4 downto 0);
    r_sel1 : in std_logic_vector(4 downto 0);
    data_out0 : out std_logic_vector(31 downto 0);
    data_out1 : out std_logic_vector(31 downto 0)
  );
  end component fhm_registerfile_w32;

  component fhm_alu_w32
  port (
    a : in std_logic_vector(31 downto 0);
    b : in std_logic_vector(31 downto 0);
    cin : in std_logic;
    mode : in std_logic_vector(4 downto 0);
    result : out std_logic_vector(31 downto 0);
    flag : out std_logic_vector(3 downto 0)
  );
  end component fhm_alu_w32;

  component fhm_extender_w16
  port (
    data_in : in std_logic_vector(15 downto 0);
    mode : in std_logic;
    data_out : out std_logic_vector(31 downto 0)
  );
  end component fhm_extender_w16;

  component fhm_multiplier_w32
  port (
    clock : in std_logic;
    reset : in std_logic;
    a : in std_logic_vector(31 downto 0);
    b : in std_logic_vector(31 downto 0);
    mode : in std_logic;
    start : in std_logic;
    clear : in std_logic;
    result : out std_logic_vector(63 downto 0);
    fin : out std_logic
  );
  end component fhm_multiplier_w32;

  component fhm_divider_w32
  port (
    clock : in std_logic;
    reset : in std_logic;
    clear : in std_logic;
    a : in std_logic_vector(31 downto 0);
    b : in std_logic_vector(31 downto 0);
    start : in std_logic;
    mode : in std_logic;
    q : out std_logic_vector(31 downto 0);
    r : out std_logic_vector(31 downto 0);
    flag : out std_logic;
    fin : out std_logic
  );
  end component fhm_divider_w32;

  component fhm_shifter_w32
  port (
    data_in : in std_logic_vector(31 downto 0);
    mode : in std_logic_vector(1 downto 0);
    ctrl : in std_logic_vector(4 downto 0);
    data_out : out std_logic_vector(31 downto 0)
  );
  end component fhm_shifter_w32;

  component fhm_extender_w28
  port (
    data_in : in std_logic_vector(27 downto 0);
    mode : in std_logic;
    data_out : out std_logic_vector(31 downto 0)
  );
  end component fhm_extender_w28;

  component rtg_controller
  port (
    CLK : in std_logic;
    RST : in std_logic;
    INTREQ_RESET : in std_logic;
    CTRLIN_CMPEQ_06_EXE : in std_logic;
    CTRLIN_CMPNEQ_01_EXE : in std_logic;
    CTRLIN_MUL0_FIN : in std_logic;
    CTRLOUT_MUL0_CLEAR : out std_logic;
    CTRLIN_DIV0_FIN : in std_logic;
    CTRLOUT_DIV0_CLEAR : out std_logic;
    CTRLIN_DMAU_ACK : in std_logic;
    CTRLOUT_DMAU_RESET : out std_logic;
    DATAIN_PC_DATA_OUT : in std_logic_vector(31 downto 0);
    DATAOUT_SAVED_PC : out std_logic_vector(31 downto 0);
    DATAIN_IR_DATA_OUT : in std_logic_vector(31 downto 0);
    CTRLOUT_IR_ENB : out std_logic;
    CTRLOUT_PC_HOLD : out std_logic;
    CTRLOUT_ALU0_MODE : out std_logic_vector(4 downto 0);
    CTRLOUT_ALU0_CIN : out std_logic;
    CTRLOUT_GPR_W_ENB0 : out std_logic;
    CTRLOUT_EXT0_MODE : out std_logic;
    CTRLOUT_MUL0_MODE : out std_logic;
    CTRLOUT_DIV0_MODE : out std_logic;
    CTRLOUT_SFT0_MODE : out std_logic_vector(1 downto 0);
    CTRLOUT_DMAU_RW : out std_logic;
    CTRLOUT_DMAU_AC_MODE : out std_logic_vector(1 downto 0);
    CTRLOUT_DMAU_EXT_MODE : out std_logic;
    CTRLOUT_PC_LOAD : out std_logic;
    CTRLOUT_EXT1_MODE : out std_logic;
    CTRLOUT_MUL0_START : out std_logic;
    CTRLOUT_DIV0_START : out std_logic;
    CTRLOUT_DMAU_REQ : out std_logic;
    CTRLOUT_PC_RESET : out std_logic;
    CTRLOUT_IR_RESET : out std_logic;
    CTRLOUT_GPR_RESET : out std_logic;
    CTRLOUT_MUL0_RESET : out std_logic;
    CTRLOUT_DIV0_RESET : out std_logic;
    CTRLOUT_UA_MUX00_SEL : out std_logic;
    CTRLOUT_UA_MUX01_SEL : out std_logic_vector(1 downto 0);
    CTRLOUT_UA_MUX02_SEL : out std_logic_vector(3 downto 0);
    CTRLOUT_UA_MUX03_SEL : out std_logic;
    CTRLOUT_UA_MUX04_SEL : out std_logic;
    CTRLOUT_UA_MUX05_SEL : out std_logic_vector(1 downto 0);
    CTRLOUT_UA_MUX06_SEL : out std_logic_vector(1 downto 0);
    CTRLOUT_UA_MUX07_SEL : out std_logic;
    CTRLOUT_UA_PREG00_ENB : out std_logic;
    CTRLOUT_UA_PREG01_ENB : out std_logic;
    CTRLOUT_UA_PREG02_ENB : out std_logic;
    CTRLOUT_UA_PREG03_ENB : out std_logic;
    CTRLOUT_UA_PREG04_ENB : out std_logic;
    CTRLOUT_UA_PREG05_ENB : out std_logic;
    CTRLOUT_UA_PREG06_ENB : out std_logic;
    CTRLOUT_UA_PREG07_ENB : out std_logic;
    CTRLOUT_UA_PREG08_ENB : out std_logic;
    CTRLOUT_UA_PREG09_ENB : out std_logic;
    CTRLOUT_UA_PREG10_ENB : out std_logic;
    CTRLOUT_UA_PREG11_ENB : out std_logic;
    CTRLOUT_UA_PREG12_ENB : out std_logic;
    CTRLOUT_UA_PREG13_ENB : out std_logic;
    CTRLOUT_UA_PREG14_ENB : out std_logic;
    CTRLOUT_UA_PREG15_ENB : out std_logic;
    CTRLOUT_UA_PREG16_ENB : out std_logic;
    CTRLOUT_UA_PREG17_ENB : out std_logic;
    CTRLOUT_UA_PREG18_ENB : out std_logic;
    CTRLOUT_UA_PREG19_ENB : out std_logic;
    CTRLOUT_UA_PREG20_ENB : out std_logic;
    CTRLOUT_UA_PREG21_ENB : out std_logic;
    CTRLOUT_UA_PREG22_ENB : out std_logic;
    CTRLOUT_UA_PREG23_ENB : out std_logic;
    CTRLOUT_UA_PREG24_ENB : out std_logic;
    CTRLOUT_UA_PREG25_ENB : out std_logic;
    CTRLOUT_UA_PREG26_ENB : out std_logic;
    CTRLOUT_UA_PREG27_ENB : out std_logic;
    CTRLOUT_UA_PREG28_ENB : out std_logic;
    CTRLOUT_UA_PREG29_ENB : out std_logic;
    CTRLOUT_UA_PREG30_ENB : out std_logic;
    CTRLOUT_UA_PREG31_ENB : out std_logic
  );
  end component rtg_controller;

  component rtg_mux2to1_w32
  port (
    SEL : in std_logic;
    DIN0 : in std_logic_vector(31 downto 0);
    DIN1 : in std_logic_vector(31 downto 0);
    DOUT : out std_logic_vector(31 downto 0)
  );
  end component rtg_mux2to1_w32;

  component rtg_mux3to1_w5
  port (
    SEL : in std_logic_vector(1 downto 0);
    DIN0 : in std_logic_vector(4 downto 0);
    DIN1 : in std_logic_vector(4 downto 0);
    DIN2 : in std_logic_vector(4 downto 0);
    DOUT : out std_logic_vector(4 downto 0)
  );
  end component rtg_mux3to1_w5;

  component rtg_mux14to1_w32
  port (
    SEL : in std_logic_vector(3 downto 0);
    DIN0 : in std_logic_vector(31 downto 0);
    DIN1 : in std_logic_vector(31 downto 0);
    DIN2 : in std_logic_vector(31 downto 0);
    DIN3 : in std_logic_vector(31 downto 0);
    DIN4 : in std_logic_vector(31 downto 0);
    DIN5 : in std_logic_vector(31 downto 0);
    DIN6 : in std_logic_vector(31 downto 0);
    DIN7 : in std_logic_vector(31 downto 0);
    DIN8 : in std_logic_vector(31 downto 0);
    DIN9 : in std_logic_vector(31 downto 0);
    DIN10 : in std_logic_vector(31 downto 0);
    DIN11 : in std_logic_vector(31 downto 0);
    DIN12 : in std_logic_vector(31 downto 0);
    DIN13 : in std_logic_vector(31 downto 0);
    DOUT : out std_logic_vector(31 downto 0)
  );
  end component rtg_mux14to1_w32;

  component rtg_mux2to1_w5
  port (
    SEL : in std_logic;
    DIN0 : in std_logic_vector(4 downto 0);
    DIN1 : in std_logic_vector(4 downto 0);
    DOUT : out std_logic_vector(4 downto 0)
  );
  end component rtg_mux2to1_w5;

  component rtg_mux3to1_w32
  port (
    SEL : in std_logic_vector(1 downto 0);
    DIN0 : in std_logic_vector(31 downto 0);
    DIN1 : in std_logic_vector(31 downto 0);
    DIN2 : in std_logic_vector(31 downto 0);
    DOUT : out std_logic_vector(31 downto 0)
  );
  end component rtg_mux3to1_w32;

  component rtg_mux4to1_w32
  port (
    SEL : in std_logic_vector(1 downto 0);
    DIN0 : in std_logic_vector(31 downto 0);
    DIN1 : in std_logic_vector(31 downto 0);
    DIN2 : in std_logic_vector(31 downto 0);
    DIN3 : in std_logic_vector(31 downto 0);
    DOUT : out std_logic_vector(31 downto 0)
  );
  end component rtg_mux4to1_w32;

  component rtg_register_w32
  port (
    CLK : in std_logic;
    RST : in std_logic;
    ENB : in std_logic;
    DIN : in std_logic_vector(31 downto 0);
    DOUT : out std_logic_vector(31 downto 0)
  );
  end component rtg_register_w32;

  component rtg_register_w4
  port (
    CLK : in std_logic;
    RST : in std_logic;
    ENB : in std_logic;
    DIN : in std_logic_vector(3 downto 0);
    DOUT : out std_logic_vector(3 downto 0)
  );
  end component rtg_register_w4;

  component rtg_register_w5
  port (
    CLK : in std_logic;
    RST : in std_logic;
    ENB : in std_logic;
    DIN : in std_logic_vector(4 downto 0);
    DOUT : out std_logic_vector(4 downto 0)
  );
  end component rtg_register_w5;


  signal uf_pc_data_out : std_logic_vector(31 downto 0);
  signal uf_imau_data : std_logic_vector(31 downto 0);
  signal bitrange25to21_00 : std_logic_vector(4 downto 0);
  signal bitrange20to16_00 : std_logic_vector(4 downto 0);
  signal uf_gpr_data_out0 : std_logic_vector(31 downto 0);
  signal uf_gpr_data_out1 : std_logic_vector(31 downto 0);
  signal ua_preg23_dout : std_logic_vector(4 downto 0);
  signal ua_preg09_dout : std_logic_vector(31 downto 0);
  signal bitrange15to0_00 : std_logic_vector(15 downto 0);
  signal uf_ext0_data_out : std_logic_vector(31 downto 0);
  signal ua_preg20_dout : std_logic_vector(4 downto 0);
  signal concat_00 : std_logic_vector(31 downto 0);
  signal ua_preg05_dout : std_logic_vector(31 downto 0);
  signal ua_preg07_dout : std_logic_vector(31 downto 0);
  signal ua_preg26_dout : std_logic_vector(31 downto 0);
  signal ua_preg13_dout : std_logic_vector(31 downto 0);
  signal bitrange4to0_00 : std_logic_vector(4 downto 0);
  signal ua_preg17_dout : std_logic_vector(31 downto 0);
  signal bitrange4to0_01 : std_logic_vector(4 downto 0);
  signal concat_01 : std_logic_vector(31 downto 0);
  signal concat_02 : std_logic_vector(31 downto 0);
  signal concat_03 : std_logic_vector(31 downto 0);
  signal concat_05 : std_logic_vector(31 downto 0);
  signal concat_06 : std_logic_vector(31 downto 0);
  signal concat_07 : std_logic_vector(31 downto 0);
  signal ua_preg29_dout : std_logic_vector(31 downto 0);
  signal ua_preg08_dout : std_logic_vector(31 downto 0);
  signal ua_preg04_dout : std_logic_vector(31 downto 0);
  signal ua_preg06_dout : std_logic_vector(31 downto 0);
  signal ua_preg00_dout : std_logic_vector(31 downto 0);
  signal uf_alu0_result : std_logic_vector(31 downto 0);
  signal concat_09 : std_logic_vector(27 downto 0);
  signal concat_10 : std_logic_vector(31 downto 0);
  signal const_5h1f : std_logic_vector(4 downto 0);
  signal ua_preg03_dout : std_logic_vector(31 downto 0);
  signal ua_preg15_dout : std_logic_vector(31 downto 0);
  signal uf_ir_data_out : std_logic_vector(31 downto 0);
  signal const_16h0000 : std_logic_vector(15 downto 0);
  signal uf_mul0_result : std_logic_vector(63 downto 0);
  signal ua_preg24_dout : std_logic_vector(31 downto 0);
  signal ua_preg11_dout : std_logic_vector(3 downto 0);
  signal bitrange2to0_00 : std_logic_vector(2 downto 0);
  signal cmpeq_00 : std_logic;
  signal cmpeq_01 : std_logic;
  signal const_31h00000000 : std_logic_vector(30 downto 0);
  signal bitor_00 : std_logic;
  signal cmpeq_02 : std_logic;
  signal cmpeq_03 : std_logic;
  signal bitor_01 : std_logic;
  signal cmpeq_04 : std_logic;
  signal bitor_02 : std_logic;
  signal bitpos3_00 : std_logic;
  signal bitrange1to0_00 : std_logic_vector(1 downto 0);
  signal concat_04 : std_logic_vector(2 downto 0);
  signal cmpeq_05 : std_logic;
  signal bitor_03 : std_logic;
  signal bitor_04 : std_logic;
  signal cmpneq_00 : std_logic;
  signal bitrange25to0_00 : std_logic_vector(25 downto 0);
  signal const_bv00 : std_logic_vector(1 downto 0);
  signal uf_ext1_data_out : std_logic_vector(31 downto 0);
  signal bitrange31to30_00 : std_logic_vector(1 downto 0);
  signal bitrange31to2_00 : std_logic_vector(29 downto 0);
  signal cmpeq_06 : std_logic;
  signal cmpneq_01 : std_logic;
  signal ua_mux00_dout : std_logic_vector(31 downto 0);
  signal ua_mux01_dout : std_logic_vector(4 downto 0);
  signal ua_mux02_dout : std_logic_vector(31 downto 0);
  signal ua_mux03_dout : std_logic_vector(4 downto 0);
  signal ua_mux04_dout : std_logic_vector(4 downto 0);
  signal ua_preg30_dout : std_logic_vector(31 downto 0);
  signal ua_preg31_dout : std_logic_vector(31 downto 0);
  signal ua_mux07_dout : std_logic_vector(4 downto 0);
  signal ua_preg01_dout : std_logic_vector(31 downto 0);
  signal ua_preg02_dout : std_logic_vector(31 downto 0);
  signal uf_dmau_data_out : std_logic_vector(31 downto 0);
  signal uf_alu0_flag : std_logic_vector(3 downto 0);
  signal ua_preg10_dout : std_logic_vector(3 downto 0);
  signal uf_div0_q : std_logic_vector(31 downto 0);
  signal ua_preg12_dout : std_logic_vector(31 downto 0);
  signal uf_div0_r : std_logic_vector(31 downto 0);
  signal ua_preg14_dout : std_logic_vector(31 downto 0);
  signal uf_sft0_data_out : std_logic_vector(31 downto 0);
  signal ua_preg16_dout : std_logic_vector(31 downto 0);
  signal ua_preg18_dout : std_logic_vector(4 downto 0);
  signal ua_preg19_dout : std_logic_vector(4 downto 0);
  signal bitrange15to11_00 : std_logic_vector(4 downto 0);
  signal ua_preg21_dout : std_logic_vector(4 downto 0);
  signal ua_preg22_dout : std_logic_vector(4 downto 0);
  signal bitrange31to0_00 : std_logic_vector(31 downto 0);
  signal ua_preg25_dout : std_logic_vector(31 downto 0);
  signal concat_08 : std_logic_vector(31 downto 0);
  signal ua_preg27_dout : std_logic_vector(31 downto 0);
  signal ua_preg28_dout : std_logic_vector(31 downto 0);
  signal ua_mux05_dout : std_logic_vector(31 downto 0);
  signal ua_mux06_dout : std_logic_vector(31 downto 0);
  signal uf_pc_load : std_logic;
  signal uf_pc_reset : std_logic;
  signal uf_pc_hold : std_logic;
  signal uf_ir_reset : std_logic;
  signal uf_ir_enb : std_logic;
  signal uf_dmau_reset : std_logic;
  signal uf_dmau_req : std_logic;
  signal uf_dmau_rw : std_logic;
  signal uf_dmau_ac_mode : std_logic_vector(1 downto 0);
  signal uf_dmau_ext_mode : std_logic;
  signal uf_dmau_ack : std_logic;
  signal uf_gpr_reset : std_logic;
  signal uf_gpr_w_enb0 : std_logic;
  signal uf_alu0_cin : std_logic;
  signal uf_alu0_mode : std_logic_vector(4 downto 0);
  signal uf_ext0_mode : std_logic;
  signal uf_mul0_reset : std_logic;
  signal uf_mul0_mode : std_logic;
  signal uf_mul0_start : std_logic;
  signal uf_mul0_clear : std_logic;
  signal uf_mul0_fin : std_logic;
  signal uf_div0_reset : std_logic;
  signal uf_div0_clear : std_logic;
  signal uf_div0_start : std_logic;
  signal uf_div0_mode : std_logic;
  signal uf_div0_fin : std_logic;
  signal uf_sft0_mode : std_logic_vector(1 downto 0);
  signal uf_ext1_mode : std_logic;
  signal ua_mux00_sel : std_logic;
  signal ua_mux01_sel : std_logic_vector(1 downto 0);
  signal ua_mux02_sel : std_logic_vector(3 downto 0);
  signal ua_mux03_sel : std_logic;
  signal ua_mux04_sel : std_logic;
  signal ua_mux05_sel : std_logic_vector(1 downto 0);
  signal ua_mux06_sel : std_logic_vector(1 downto 0);
  signal ua_mux07_sel : std_logic;
  signal ua_preg00_rst : std_logic;
  signal ua_preg00_enb : std_logic;
  signal ua_preg01_rst : std_logic;
  signal ua_preg01_enb : std_logic;
  signal ua_preg02_rst : std_logic;
  signal ua_preg02_enb : std_logic;
  signal ua_preg03_rst : std_logic;
  signal ua_preg03_enb : std_logic;
  signal ua_preg04_rst : std_logic;
  signal ua_preg04_enb : std_logic;
  signal ua_preg05_rst : std_logic;
  signal ua_preg05_enb : std_logic;
  signal ua_preg06_rst : std_logic;
  signal ua_preg06_enb : std_logic;
  signal ua_preg07_rst : std_logic;
  signal ua_preg07_enb : std_logic;
  signal ua_preg08_rst : std_logic;
  signal ua_preg08_enb : std_logic;
  signal ua_preg09_rst : std_logic;
  signal ua_preg09_enb : std_logic;
  signal ua_preg10_rst : std_logic;
  signal ua_preg10_enb : std_logic;
  signal ua_preg11_rst : std_logic;
  signal ua_preg11_enb : std_logic;
  signal ua_preg12_rst : std_logic;
  signal ua_preg12_enb : std_logic;
  signal ua_preg13_rst : std_logic;
  signal ua_preg13_enb : std_logic;
  signal ua_preg14_rst : std_logic;
  signal ua_preg14_enb : std_logic;
  signal ua_preg15_rst : std_logic;
  signal ua_preg15_enb : std_logic;
  signal ua_preg16_rst : std_logic;
  signal ua_preg16_enb : std_logic;
  signal ua_preg17_rst : std_logic;
  signal ua_preg17_enb : std_logic;
  signal ua_preg18_rst : std_logic;
  signal ua_preg18_enb : std_logic;
  signal ua_preg19_rst : std_logic;
  signal ua_preg19_enb : std_logic;
  signal ua_preg20_rst : std_logic;
  signal ua_preg20_enb : std_logic;
  signal ua_preg21_rst : std_logic;
  signal ua_preg21_enb : std_logic;
  signal ua_preg22_rst : std_logic;
  signal ua_preg22_enb : std_logic;
  signal ua_preg23_rst : std_logic;
  signal ua_preg23_enb : std_logic;
  signal ua_preg24_rst : std_logic;
  signal ua_preg24_enb : std_logic;
  signal ua_preg25_rst : std_logic;
  signal ua_preg25_enb : std_logic;
  signal ua_preg26_rst : std_logic;
  signal ua_preg26_enb : std_logic;
  signal ua_preg27_rst : std_logic;
  signal ua_preg27_enb : std_logic;
  signal ua_preg28_rst : std_logic;
  signal ua_preg28_enb : std_logic;
  signal ua_preg29_rst : std_logic;
  signal ua_preg29_enb : std_logic;
  signal ua_preg30_rst : std_logic;
  signal ua_preg30_enb : std_logic;
  signal ua_preg31_rst : std_logic;
  signal ua_preg31_enb : std_logic;
  signal unused_00 : std_logic;
  signal unused_01 : std_logic;
  signal unused_02 : std_logic_vector(31 downto 0);

begin
  UF_PC : fhm_pcu_w32
    port map (
      clock => CLK, 
      load => uf_pc_load, 
      reset => uf_pc_reset, 
      hold => uf_pc_hold, 
      data_in => ua_mux00_dout, 
      data_out => uf_pc_data_out
    );

  UF_IR : fhm_register_w32
    port map (
      clock => CLK, 
      reset => uf_ir_reset, 
      enb => uf_ir_enb, 
      data_in => uf_imau_data, 
      data_out => uf_ir_data_out
    );

  UF_IMAU : fhm_imau_w32
    port map (
      addr => uf_pc_data_out, 
      addr_bus => instAB, 
      data_bus => instDB, 
      data => uf_imau_data
    );

  UF_DMAU : fhm_dmau_w32
    port map (
      reset => uf_dmau_reset, 
      req => uf_dmau_req, 
      rw => uf_dmau_rw, 
      ac_mode => uf_dmau_ac_mode, 
      ext_mode => uf_dmau_ext_mode, 
      addr => ua_preg08_dout, 
      data_in => ua_preg06_dout, 
      addr_err => unused_00, 
      req_bus => DataReq, 
      w_mode_bus => dataWin, 
      addr_bus => DataAB, 
      data_bus => DataDB, 
      ack_bus => DataAck, 
      ack => uf_dmau_ack, 
      data_out => uf_dmau_data_out
    );

  UF_GPR : fhm_registerfile_w32
    port map (
      clock => CLK, 
      reset => uf_gpr_reset, 
      w_enb0 => uf_gpr_w_enb0, 
      w_sel0 => ua_mux01_dout, 
      data_in0 => ua_mux02_dout, 
      r_sel0 => ua_mux03_dout, 
      r_sel1 => ua_mux04_dout, 
      data_out0 => uf_gpr_data_out0, 
      data_out1 => uf_gpr_data_out1
    );

  UF_ALU0 : fhm_alu_w32
    port map (
      a => ua_preg30_dout, 
      b => ua_preg31_dout, 
      cin => uf_alu0_cin, 
      mode => uf_alu0_mode, 
      result => uf_alu0_result, 
      flag => uf_alu0_flag
    );

  UF_EXT0 : fhm_extender_w16
    port map (
      data_in => bitrange15to0_00, 
      mode => uf_ext0_mode, 
      data_out => uf_ext0_data_out
    );

  UF_MUL0 : fhm_multiplier_w32
    port map (
      clock => CLK, 
      reset => uf_mul0_reset, 
      a => ua_preg05_dout, 
      b => ua_preg07_dout, 
      mode => uf_mul0_mode, 
      start => uf_mul0_start, 
      clear => uf_mul0_clear, 
      result => uf_mul0_result, 
      fin => uf_mul0_fin
    );

  UF_DIV0 : fhm_divider_w32
    port map (
      clock => CLK, 
      reset => uf_div0_reset, 
      clear => uf_div0_clear, 
      a => ua_preg05_dout, 
      b => ua_preg07_dout, 
      start => uf_div0_start, 
      mode => uf_div0_mode, 
      q => uf_div0_q, 
      r => uf_div0_r, 
      flag => unused_01, 
      fin => uf_div0_fin
    );

  UF_SFT0 : fhm_shifter_w32
    port map (
      data_in => ua_preg05_dout, 
      mode => uf_sft0_mode, 
      ctrl => ua_mux07_dout, 
      data_out => uf_sft0_data_out
    );

  UF_EXT1 : fhm_extender_w28
    port map (
      data_in => concat_09, 
      mode => uf_ext1_mode, 
      data_out => uf_ext1_data_out
    );

  UA_CTRL : rtg_controller
    port map (
      CLK => CLK, 
      RST => Reset, 
      INTREQ_RESET => Reset, 
      CTRLIN_CMPEQ_06_EXE => cmpeq_06, 
      CTRLIN_CMPNEQ_01_EXE => cmpneq_01, 
      CTRLIN_MUL0_FIN => uf_mul0_fin, 
      CTRLOUT_MUL0_CLEAR => uf_mul0_clear, 
      CTRLIN_DIV0_FIN => uf_div0_fin, 
      CTRLOUT_DIV0_CLEAR => uf_div0_clear, 
      CTRLIN_DMAU_ACK => uf_dmau_ack, 
      CTRLOUT_DMAU_RESET => uf_dmau_reset, 
      DATAIN_PC_DATA_OUT => uf_pc_data_out, 
      DATAOUT_SAVED_PC => unused_02, 
      DATAIN_IR_DATA_OUT => uf_ir_data_out, 
      CTRLOUT_IR_ENB => uf_ir_enb, 
      CTRLOUT_PC_HOLD => uf_pc_hold, 
      CTRLOUT_ALU0_MODE => uf_alu0_mode, 
      CTRLOUT_ALU0_CIN => uf_alu0_cin, 
      CTRLOUT_GPR_W_ENB0 => uf_gpr_w_enb0, 
      CTRLOUT_EXT0_MODE => uf_ext0_mode, 
      CTRLOUT_MUL0_MODE => uf_mul0_mode, 
      CTRLOUT_DIV0_MODE => uf_div0_mode, 
      CTRLOUT_SFT0_MODE => uf_sft0_mode, 
      CTRLOUT_DMAU_RW => uf_dmau_rw, 
      CTRLOUT_DMAU_AC_MODE => uf_dmau_ac_mode, 
      CTRLOUT_DMAU_EXT_MODE => uf_dmau_ext_mode, 
      CTRLOUT_PC_LOAD => uf_pc_load, 
      CTRLOUT_EXT1_MODE => uf_ext1_mode, 
      CTRLOUT_MUL0_START => uf_mul0_start, 
      CTRLOUT_DIV0_START => uf_div0_start, 
      CTRLOUT_DMAU_REQ => uf_dmau_req, 
      CTRLOUT_PC_RESET => uf_pc_reset, 
      CTRLOUT_IR_RESET => uf_ir_reset, 
      CTRLOUT_GPR_RESET => uf_gpr_reset, 
      CTRLOUT_MUL0_RESET => uf_mul0_reset, 
      CTRLOUT_DIV0_RESET => uf_div0_reset, 
      CTRLOUT_UA_MUX00_SEL => ua_mux00_sel, 
      CTRLOUT_UA_MUX01_SEL => ua_mux01_sel, 
      CTRLOUT_UA_MUX02_SEL => ua_mux02_sel, 
      CTRLOUT_UA_MUX03_SEL => ua_mux03_sel, 
      CTRLOUT_UA_MUX04_SEL => ua_mux04_sel, 
      CTRLOUT_UA_MUX05_SEL => ua_mux05_sel, 
      CTRLOUT_UA_MUX06_SEL => ua_mux06_sel, 
      CTRLOUT_UA_MUX07_SEL => ua_mux07_sel, 
      CTRLOUT_UA_PREG00_ENB => ua_preg00_enb, 
      CTRLOUT_UA_PREG01_ENB => ua_preg01_enb, 
      CTRLOUT_UA_PREG02_ENB => ua_preg02_enb, 
      CTRLOUT_UA_PREG03_ENB => ua_preg03_enb, 
      CTRLOUT_UA_PREG04_ENB => ua_preg04_enb, 
      CTRLOUT_UA_PREG05_ENB => ua_preg05_enb, 
      CTRLOUT_UA_PREG06_ENB => ua_preg06_enb, 
      CTRLOUT_UA_PREG07_ENB => ua_preg07_enb, 
      CTRLOUT_UA_PREG08_ENB => ua_preg08_enb, 
      CTRLOUT_UA_PREG09_ENB => ua_preg09_enb, 
      CTRLOUT_UA_PREG10_ENB => ua_preg10_enb, 
      CTRLOUT_UA_PREG11_ENB => ua_preg11_enb, 
      CTRLOUT_UA_PREG12_ENB => ua_preg12_enb, 
      CTRLOUT_UA_PREG13_ENB => ua_preg13_enb, 
      CTRLOUT_UA_PREG14_ENB => ua_preg14_enb, 
      CTRLOUT_UA_PREG15_ENB => ua_preg15_enb, 
      CTRLOUT_UA_PREG16_ENB => ua_preg16_enb, 
      CTRLOUT_UA_PREG17_ENB => ua_preg17_enb, 
      CTRLOUT_UA_PREG18_ENB => ua_preg18_enb, 
      CTRLOUT_UA_PREG19_ENB => ua_preg19_enb, 
      CTRLOUT_UA_PREG20_ENB => ua_preg20_enb, 
      CTRLOUT_UA_PREG21_ENB => ua_preg21_enb, 
      CTRLOUT_UA_PREG22_ENB => ua_preg22_enb, 
      CTRLOUT_UA_PREG23_ENB => ua_preg23_enb, 
      CTRLOUT_UA_PREG24_ENB => ua_preg24_enb, 
      CTRLOUT_UA_PREG25_ENB => ua_preg25_enb, 
      CTRLOUT_UA_PREG26_ENB => ua_preg26_enb, 
      CTRLOUT_UA_PREG27_ENB => ua_preg27_enb, 
      CTRLOUT_UA_PREG28_ENB => ua_preg28_enb, 
      CTRLOUT_UA_PREG29_ENB => ua_preg29_enb, 
      CTRLOUT_UA_PREG30_ENB => ua_preg30_enb, 
      CTRLOUT_UA_PREG31_ENB => ua_preg31_enb
    );

  UA_MUX00 : rtg_mux2to1_w32
    port map (
      SEL => ua_mux00_sel, 
      DIN0 => uf_alu0_result, 
      DIN1 => ua_preg05_dout, 
      DOUT => ua_mux00_dout
    );

  UA_MUX01 : rtg_mux3to1_w5
    port map (
      SEL => ua_mux01_sel, 
      DIN0 => ua_preg23_dout, 
      DIN1 => ua_preg20_dout, 
      DIN2 => const_5h1f, 
      DOUT => ua_mux01_dout
    );

  UA_MUX02 : rtg_mux14to1_w32
    port map (
      SEL => ua_mux02_sel, 
      DIN0 => ua_preg09_dout, 
      DIN1 => ua_preg26_dout, 
      DIN2 => ua_preg13_dout, 
      DIN3 => ua_preg17_dout, 
      DIN4 => concat_01, 
      DIN5 => concat_02, 
      DIN6 => concat_03, 
      DIN7 => concat_05, 
      DIN8 => concat_06, 
      DIN9 => concat_07, 
      DIN10 => ua_preg29_dout, 
      DIN11 => ua_preg04_dout, 
      DIN12 => ua_preg03_dout, 
      DIN13 => ua_preg15_dout, 
      DOUT => ua_mux02_dout
    );

  UA_MUX03 : rtg_mux2to1_w5
    port map (
      SEL => ua_mux03_sel, 
      DIN0 => bitrange25to21_00, 
      DIN1 => bitrange20to16_00, 
      DOUT => ua_mux03_dout
    );

  UA_MUX04 : rtg_mux2to1_w5
    port map (
      SEL => ua_mux04_sel, 
      DIN0 => bitrange20to16_00, 
      DIN1 => bitrange25to21_00, 
      DOUT => ua_mux04_dout
    );

  UA_MUX05 : rtg_mux3to1_w32
    port map (
      SEL => ua_mux05_sel, 
      DIN0 => uf_gpr_data_out0, 
      DIN1 => uf_gpr_data_out1, 
      DIN2 => ua_preg00_dout, 
      DOUT => ua_mux05_dout
    );

  UA_MUX06 : rtg_mux4to1_w32
    port map (
      SEL => ua_mux06_sel, 
      DIN0 => uf_gpr_data_out1, 
      DIN1 => uf_ext0_data_out, 
      DIN2 => concat_00, 
      DIN3 => concat_10, 
      DOUT => ua_mux06_dout
    );

  UA_MUX07 : rtg_mux2to1_w5
    port map (
      SEL => ua_mux07_sel, 
      DIN0 => bitrange4to0_00, 
      DIN1 => bitrange4to0_01, 
      DOUT => ua_mux07_dout
    );

  UA_PREG00 : rtg_register_w32
    port map (
      CLK => CLK, 
      RST => ua_preg00_rst, 
      ENB => ua_preg00_enb, 
      DIN => uf_pc_data_out, 
      DOUT => ua_preg00_dout
    );

  UA_PREG01 : rtg_register_w32
    port map (
      CLK => CLK, 
      RST => ua_preg01_rst, 
      ENB => ua_preg01_enb, 
      DIN => uf_pc_data_out, 
      DOUT => ua_preg01_dout
    );

  UA_PREG02 : rtg_register_w32
    port map (
      CLK => CLK, 
      RST => ua_preg02_rst, 
      ENB => ua_preg02_enb, 
      DIN => ua_preg01_dout, 
      DOUT => ua_preg02_dout
    );

  UA_PREG03 : rtg_register_w32
    port map (
      CLK => CLK, 
      RST => ua_preg03_rst, 
      ENB => ua_preg03_enb, 
      DIN => ua_preg02_dout, 
      DOUT => ua_preg03_dout
    );

  UA_PREG04 : rtg_register_w32
    port map (
      CLK => CLK, 
      RST => ua_preg04_rst, 
      ENB => ua_preg04_enb, 
      DIN => uf_dmau_data_out, 
      DOUT => ua_preg04_dout
    );

  UA_PREG05 : rtg_register_w32
    port map (
      CLK => CLK, 
      RST => ua_preg05_rst, 
      ENB => ua_preg05_enb, 
      DIN => uf_gpr_data_out0, 
      DOUT => ua_preg05_dout
    );

  UA_PREG06 : rtg_register_w32
    port map (
      CLK => CLK, 
      RST => ua_preg06_rst, 
      ENB => ua_preg06_enb, 
      DIN => ua_preg05_dout, 
      DOUT => ua_preg06_dout
    );

  UA_PREG07 : rtg_register_w32
    port map (
      CLK => CLK, 
      RST => ua_preg07_rst, 
      ENB => ua_preg07_enb, 
      DIN => uf_gpr_data_out1, 
      DOUT => ua_preg07_dout
    );

  UA_PREG08 : rtg_register_w32
    port map (
      CLK => CLK, 
      RST => ua_preg08_rst, 
      ENB => ua_preg08_enb, 
      DIN => uf_alu0_result, 
      DOUT => ua_preg08_dout
    );

  UA_PREG09 : rtg_register_w32
    port map (
      CLK => CLK, 
      RST => ua_preg09_rst, 
      ENB => ua_preg09_enb, 
      DIN => ua_preg08_dout, 
      DOUT => ua_preg09_dout
    );

  UA_PREG10 : rtg_register_w4
    port map (
      CLK => CLK, 
      RST => ua_preg10_rst, 
      ENB => ua_preg10_enb, 
      DIN => uf_alu0_flag, 
      DOUT => ua_preg10_dout
    );

  UA_PREG11 : rtg_register_w4
    port map (
      CLK => CLK, 
      RST => ua_preg11_rst, 
      ENB => ua_preg11_enb, 
      DIN => ua_preg10_dout, 
      DOUT => ua_preg11_dout
    );

  UA_PREG12 : rtg_register_w32
    port map (
      CLK => CLK, 
      RST => ua_preg12_rst, 
      ENB => ua_preg12_enb, 
      DIN => uf_div0_q, 
      DOUT => ua_preg12_dout
    );

  UA_PREG13 : rtg_register_w32
    port map (
      CLK => CLK, 
      RST => ua_preg13_rst, 
      ENB => ua_preg13_enb, 
      DIN => ua_preg12_dout, 
      DOUT => ua_preg13_dout
    );

  UA_PREG14 : rtg_register_w32
    port map (
      CLK => CLK, 
      RST => ua_preg14_rst, 
      ENB => ua_preg14_enb, 
      DIN => uf_div0_r, 
      DOUT => ua_preg14_dout
    );

  UA_PREG15 : rtg_register_w32
    port map (
      CLK => CLK, 
      RST => ua_preg15_rst, 
      ENB => ua_preg15_enb, 
      DIN => ua_preg14_dout, 
      DOUT => ua_preg15_dout
    );

  UA_PREG16 : rtg_register_w32
    port map (
      CLK => CLK, 
      RST => ua_preg16_rst, 
      ENB => ua_preg16_enb, 
      DIN => uf_sft0_data_out, 
      DOUT => ua_preg16_dout
    );

  UA_PREG17 : rtg_register_w32
    port map (
      CLK => CLK, 
      RST => ua_preg17_rst, 
      ENB => ua_preg17_enb, 
      DIN => ua_preg16_dout, 
      DOUT => ua_preg17_dout
    );

  UA_PREG18 : rtg_register_w5
    port map (
      CLK => CLK, 
      RST => ua_preg18_rst, 
      ENB => ua_preg18_enb, 
      DIN => bitrange20to16_00, 
      DOUT => ua_preg18_dout
    );

  UA_PREG19 : rtg_register_w5
    port map (
      CLK => CLK, 
      RST => ua_preg19_rst, 
      ENB => ua_preg19_enb, 
      DIN => ua_preg18_dout, 
      DOUT => ua_preg19_dout
    );

  UA_PREG20 : rtg_register_w5
    port map (
      CLK => CLK, 
      RST => ua_preg20_rst, 
      ENB => ua_preg20_enb, 
      DIN => ua_preg19_dout, 
      DOUT => ua_preg20_dout
    );

  UA_PREG21 : rtg_register_w5
    port map (
      CLK => CLK, 
      RST => ua_preg21_rst, 
      ENB => ua_preg21_enb, 
      DIN => bitrange15to11_00, 
      DOUT => ua_preg21_dout
    );

  UA_PREG22 : rtg_register_w5
    port map (
      CLK => CLK, 
      RST => ua_preg22_rst, 
      ENB => ua_preg22_enb, 
      DIN => ua_preg21_dout, 
      DOUT => ua_preg22_dout
    );

  UA_PREG23 : rtg_register_w5
    port map (
      CLK => CLK, 
      RST => ua_preg23_rst, 
      ENB => ua_preg23_enb, 
      DIN => ua_preg22_dout, 
      DOUT => ua_preg23_dout
    );

  UA_PREG24 : rtg_register_w32
    port map (
      CLK => CLK, 
      RST => ua_preg24_rst, 
      ENB => ua_preg24_enb, 
      DIN => concat_00, 
      DOUT => ua_preg24_dout
    );

  UA_PREG25 : rtg_register_w32
    port map (
      CLK => CLK, 
      RST => ua_preg25_rst, 
      ENB => ua_preg25_enb, 
      DIN => bitrange31to0_00, 
      DOUT => ua_preg25_dout
    );

  UA_PREG26 : rtg_register_w32
    port map (
      CLK => CLK, 
      RST => ua_preg26_rst, 
      ENB => ua_preg26_enb, 
      DIN => ua_preg25_dout, 
      DOUT => ua_preg26_dout
    );

  UA_PREG27 : rtg_register_w32
    port map (
      CLK => CLK, 
      RST => ua_preg27_rst, 
      ENB => ua_preg27_enb, 
      DIN => concat_08, 
      DOUT => ua_preg27_dout
    );

  UA_PREG28 : rtg_register_w32
    port map (
      CLK => CLK, 
      RST => ua_preg28_rst, 
      ENB => ua_preg28_enb, 
      DIN => ua_preg27_dout, 
      DOUT => ua_preg28_dout
    );

  UA_PREG29 : rtg_register_w32
    port map (
      CLK => CLK, 
      RST => ua_preg29_rst, 
      ENB => ua_preg29_enb, 
      DIN => ua_preg28_dout, 
      DOUT => ua_preg29_dout
    );

  UA_PREG30 : rtg_register_w32
    port map (
      CLK => CLK, 
      RST => ua_preg30_rst, 
      ENB => ua_preg30_enb, 
      DIN => ua_mux05_dout, 
      DOUT => ua_preg30_dout
    );

  UA_PREG31 : rtg_register_w32
    port map (
      CLK => CLK, 
      RST => ua_preg31_rst, 
      ENB => ua_preg31_enb, 
      DIN => ua_mux06_dout, 
      DOUT => ua_preg31_dout
    );

  bitrange25to21_00 <= uf_ir_data_out(25 downto 21);
  bitrange20to16_00 <= uf_ir_data_out(20 downto 16);
  bitrange15to11_00 <= uf_ir_data_out(15 downto 11);
  bitrange15to0_00 <= uf_ir_data_out(15 downto 0);
  const_16h0000 <= "0000000000000000";
  concat_00 <= const_16h0000 & bitrange15to0_00;
  bitrange31to0_00 <= uf_mul0_result(31 downto 0);
  bitrange4to0_00 <= ua_preg07_dout(4 downto 0);
  bitrange4to0_01 <= ua_preg24_dout(4 downto 0);
  bitrange2to0_00 <= ua_preg11_dout(2 downto 0);
  cmpeq_00 <= '1' when bitrange2to0_00 = "010" else 
	'0';
  cmpeq_01 <= '1' when ua_preg11_dout = "1001" else 
	'0';
  bitor_00 <= cmpeq_00 or cmpeq_01;
  const_31h00000000 <= "0000000000000000000000000000000";
  concat_01 <= const_31h00000000 & bitor_00;
  cmpeq_02 <= '1' when bitrange2to0_00 = "000" else 
	'0';
  cmpeq_03 <= '1' when ua_preg11_dout = "0011" else 
	'0';
  bitor_01 <= cmpeq_02 or cmpeq_03;
  concat_02 <= const_31h00000000 & bitor_01;
  cmpeq_04 <= '1' when ua_preg11_dout = "1100" else 
	'0';
  bitor_02 <= cmpeq_04 or bitor_00;
  concat_03 <= const_31h00000000 & bitor_02;
  bitpos3_00 <= ua_preg11_dout(3);
  bitrange1to0_00 <= ua_preg11_dout(1 downto 0);
  concat_04 <= bitpos3_00 & bitrange1to0_00;
  cmpeq_05 <= '1' when concat_04 = "100" else 
	'0';
  bitor_03 <= cmpeq_02 or cmpeq_05;
  bitor_04 <= cmpeq_03 or bitor_03;
  concat_05 <= const_31h00000000 & bitor_04;
  concat_06 <= const_31h00000000 & cmpeq_04;
  cmpneq_00 <= '1' when ua_preg11_dout /= "1100" else 
	'0';
  concat_07 <= const_31h00000000 & cmpneq_00;
  concat_08 <= bitrange15to0_00 & const_16h0000;
  cmpeq_06 <= '1' when ua_preg05_dout =
  	"00000000000000000000000000000000" else
	'0';
  cmpneq_01 <= '1' when ua_preg05_dout /=
  	"00000000000000000000000000000000" else
	'0';
  const_bv00 <= "00";
  bitrange25to0_00 <= uf_ir_data_out(25 downto 0);
  concat_09 <= bitrange25to0_00 & const_bv00;
  bitrange31to30_00 <= uf_ext1_data_out(31 downto 30);
  bitrange31to2_00 <= uf_ext1_data_out(31 downto 2);
  concat_10 <= bitrange31to30_00 & bitrange31to2_00;
  const_5h1f <= "11111";
end RTL;

-----------------------------------------
-- Generated by ASIP Meister ver.1.1 --
-----------------------------------------
