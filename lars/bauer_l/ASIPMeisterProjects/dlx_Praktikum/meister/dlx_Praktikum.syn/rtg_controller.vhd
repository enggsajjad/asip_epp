-----------------------------------------------------------
-- Entity Name: rtg_controller
-----------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity rtg_controller is
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
end entity rtg_controller;

architecture RTL of rtg_controller is
  component rtg_proc_fsm
  port (
    CLK : in std_logic;
    RST : in std_logic;
    INTR_REQ : in std_logic;
    INTR_DETECT : in std_logic;
    INTR_HANDLING : out std_logic;
    FETCH_ENB : out std_logic
  );
  end component rtg_proc_fsm;

  component rtg_register_w1_00
  port (
    CLK : in std_logic;
    RST : in std_logic;
    ENB : in std_logic;
    DIN : in std_logic;
    DOUT : out std_logic
  );
  end component rtg_register_w1_00;

  component rtg_register_w1_01
  port (
    CLK : in std_logic;
    RST : in std_logic;
    ENB : in std_logic;
    DIN : in std_logic_vector(0 downto 0);
    DOUT : out std_logic_vector(0 downto 0)
  );
  end component rtg_register_w1_01;

  component rtg_register_w32
  port (
    CLK : in std_logic;
    RST : in std_logic;
    ENB : in std_logic;
    DIN : in std_logic_vector(31 downto 0);
    DOUT : out std_logic_vector(31 downto 0)
  );
  end component rtg_register_w32;

  component rtg_register_w34
  port (
    CLK : in std_logic;
    RST : in std_logic;
    ENB : in std_logic;
    DIN : in std_logic_vector(33 downto 0);
    DOUT : out std_logic_vector(33 downto 0)
  );
  end component rtg_register_w34;

  component rtg_register_w12
  port (
    CLK : in std_logic;
    RST : in std_logic;
    ENB : in std_logic;
    DIN : in std_logic_vector(11 downto 0);
    DOUT : out std_logic_vector(11 downto 0)
  );
  end component rtg_register_w12;

  component rtg_register_w7
  port (
    CLK : in std_logic;
    RST : in std_logic;
    ENB : in std_logic;
    DIN : in std_logic_vector(6 downto 0);
    DOUT : out std_logic_vector(6 downto 0)
  );
  end component rtg_register_w7;

  constant INTR_RESET : std_logic_vector(0 downto 0) := "0";

  signal interrupt_handling : std_logic;
  signal fetch_enb : std_logic;
  signal intr_detected : std_logic;
  signal intr_request : std_logic;
  signal intr_req_IF : std_logic;
  signal intr_req_ID : std_logic;
  signal intr_req_EXE : std_logic;
  signal intr_req_MEM : std_logic;
  signal intr_req_WB : std_logic;
  signal stall_req_IF : std_logic;
  signal stall_req_ID : std_logic;
  signal stall_req_EXE : std_logic;
  signal stall_req_MEM : std_logic;
  signal stall_req_WB : std_logic;
  signal branch_req_IF : std_logic;
  signal branch_req_ID : std_logic;
  signal branch_req_EXE : std_logic;
  signal branch_req_MEM : std_logic;
  signal branch_req_WB : std_logic;
  signal intr_nreq_IF : std_logic;
  signal intr_nreq_ID : std_logic;
  signal intr_nreq_EXE : std_logic;
  signal intr_nreq_MEM : std_logic;
  signal intr_nreq_WB : std_logic;
  signal stall_nreq_IF : std_logic;
  signal stall_nreq_ID : std_logic;
  signal stall_nreq_EXE : std_logic;
  signal stall_nreq_MEM : std_logic;
  signal stall_nreq_WB : std_logic;
  signal branch_nreq_IF : std_logic;
  signal branch_nreq_ID : std_logic;
  signal branch_nreq_EXE : std_logic;
  signal branch_nreq_MEM : std_logic;
  signal branch_nreq_WB : std_logic;
  signal intr_acc_IF : std_logic;
  signal intr_acc_ID : std_logic;
  signal intr_acc_EXE : std_logic;
  signal intr_acc_MEM : std_logic;
  signal intr_acc_WB : std_logic;
  signal stall_acc_IF : std_logic;
  signal stall_acc_ID : std_logic;
  signal stall_acc_EXE : std_logic;
  signal stall_acc_MEM : std_logic;
  signal stall_acc_WB : std_logic;
  signal branch_acc_IF : std_logic;
  signal branch_acc_ID : std_logic;
  signal branch_acc_EXE : std_logic;
  signal branch_acc_MEM : std_logic;
  signal branch_acc_WB : std_logic;
  signal do_stall_IF : std_logic;
  signal do_stall_ID : std_logic;
  signal do_stall_EXE : std_logic;
  signal do_stall_MEM : std_logic;
  signal do_stall_WB : std_logic;
  signal do_flush_IF : std_logic;
  signal do_flush_ID : std_logic;
  signal do_flush_EXE : std_logic;
  signal do_flush_MEM : std_logic;
  signal do_flush_WB : std_logic;
  signal advance_stage_IF : std_logic;
  signal advance_stage_ID : std_logic;
  signal advance_stage_EXE : std_logic;
  signal advance_stage_MEM : std_logic;
  signal advance_stage_WB : std_logic;
  signal valid_stage_IF : std_logic;
  signal valid_stage_ID : std_logic;
  signal valid_stage_EXE : std_logic;
  signal valid_stage_MEM : std_logic;
  signal valid_stage_WB : std_logic;
  signal pipereg_enb_IF : std_logic;
  signal pipereg_enb_ID : std_logic;
  signal pipereg_enb_EXE : std_logic;
  signal pipereg_enb_MEM : std_logic;
  signal pipereg_enb_WB : std_logic;
  signal intr_reset_detected : std_logic;
  signal intr_code_detected_IF : std_logic_vector(0 downto 0);
  signal intr_code_detected_ID : std_logic_vector(0 downto 0);
  signal intr_code_detected_EXE : std_logic_vector(0 downto 0);
  signal intr_code_detected_MEM : std_logic_vector(0 downto 0);
  signal intr_code_detected_WB : std_logic_vector(0 downto 0);
  signal intr_code : std_logic_vector(0 downto 0);
  signal intrpipe_code_in_IF : std_logic_vector(0 downto 0);
  signal intrpipe_code_in_ID : std_logic_vector(0 downto 0);
  signal intrpipe_code_in_EXE : std_logic_vector(0 downto 0);
  signal intrpipe_code_in_MEM : std_logic_vector(0 downto 0);
  signal intrpipe_code_in_WB : std_logic_vector(0 downto 0);
  signal intrpipe_code_in_LAST : std_logic_vector(0 downto 0);
  signal intrpipe_code_IF : std_logic_vector(0 downto 0);
  signal intrpipe_code_ID : std_logic_vector(0 downto 0);
  signal intrpipe_code_EXE : std_logic_vector(0 downto 0);
  signal intrpipe_code_MEM : std_logic_vector(0 downto 0);
  signal intrpipe_code_WB : std_logic_vector(0 downto 0);
  signal intrpipe_code_LAST : std_logic_vector(0 downto 0);
  signal intrpipe_req_in_IF : std_logic;
  signal intrpipe_req_in_ID : std_logic;
  signal intrpipe_req_in_EXE : std_logic;
  signal intrpipe_req_in_MEM : std_logic;
  signal intrpipe_req_in_WB : std_logic;
  signal intrpipe_req_IF : std_logic;
  signal intrpipe_req_ID : std_logic;
  signal intrpipe_req_EXE : std_logic;
  signal intrpipe_req_MEM : std_logic;
  signal intrpipe_req_WB : std_logic;
  signal intrpipe_saved_pc_in_IF : std_logic_vector(31 downto 0);
  signal intrpipe_saved_pc_in_ID : std_logic_vector(31 downto 0);
  signal intrpipe_saved_pc_in_EXE : std_logic_vector(31 downto 0);
  signal intrpipe_saved_pc_in_MEM : std_logic_vector(31 downto 0);
  signal intrpipe_saved_pc_in_WB : std_logic_vector(31 downto 0);
  signal intrpipe_saved_pc_in_LAST : std_logic_vector(31 downto 0);
  signal intrpipe_saved_pc_IF : std_logic_vector(31 downto 0);
  signal intrpipe_saved_pc_ID : std_logic_vector(31 downto 0);
  signal intrpipe_saved_pc_EXE : std_logic_vector(31 downto 0);
  signal intrpipe_saved_pc_MEM : std_logic_vector(31 downto 0);
  signal intrpipe_saved_pc_WB : std_logic_vector(31 downto 0);
  signal intrpipe_saved_pc_LAST : std_logic_vector(31 downto 0);
  signal intr_handling_x : std_logic;
  signal branch_inst_at_EXE_0 : std_logic;
  signal branch_inst_at_EXE_1 : std_logic;
  signal branch_inst_at_EXE_2 : std_logic;
  signal const_bit1 : std_logic;
  signal multcyc_MUL0_start_c0_inst_EXE : std_logic;
  signal multcyc_MUL0_start_ready_EXE : std_logic;
  signal multcyc_MUL0_start_stall_EXE : std_logic;
  signal multcyc_MUL0_start_busy_EXE : std_logic;
  signal multcyc_MUL0_start_next_busy_EXE : std_logic;
  signal multcyc_DIV0_start_c0_inst_EXE : std_logic;
  signal multcyc_DIV0_start_ready_EXE : std_logic;
  signal multcyc_DIV0_start_stall_EXE : std_logic;
  signal multcyc_DIV0_start_busy_EXE : std_logic;
  signal multcyc_DIV0_start_next_busy_EXE : std_logic;
  signal multcyc_DMAU_req_c0_inst_MEM : std_logic;
  signal multcyc_DMAU_req_ready_MEM : std_logic;
  signal multcyc_DMAU_req_stall_MEM : std_logic;
  signal multcyc_DMAU_req_busy_MEM : std_logic;
  signal multcyc_DMAU_req_next_busy_MEM : std_logic;
  signal asgn_PC_load_inst_v0c0_EXE : std_logic;
  signal asgn_PC_load_inst_v0c1_EXE : std_logic;
  signal asgn_UA_MUX00_SEL_inst_v0c0_EXE : std_logic;
  signal asgn_UA_MUX00_SEL_inst_v0c1_EXE : std_logic;
  signal decoded_add : std_logic;
  signal decoded_addu : std_logic;
  signal decoded_addi : std_logic;
  signal decoded_addui : std_logic;
  signal decoded_sub : std_logic;
  signal decoded_subu : std_logic;
  signal decoded_subi : std_logic;
  signal decoded_subui : std_logic;
  signal decoded_mult : std_logic;
  signal decoded_multu : std_logic;
  signal decoded_div : std_logic;
  signal decoded_divu : std_logic;
  signal decoded_and : std_logic;
  signal decoded_andi : std_logic;
  signal decoded_or : std_logic;
  signal decoded_ori : std_logic;
  signal decoded_xor : std_logic;
  signal decoded_xori : std_logic;
  signal decoded_sll : std_logic;
  signal decoded_srl : std_logic;
  signal decoded_sra : std_logic;
  signal decoded_slli : std_logic;
  signal decoded_srli : std_logic;
  signal decoded_srai : std_logic;
  signal decoded_slt : std_logic;
  signal decoded_sgt : std_logic;
  signal decoded_sle : std_logic;
  signal decoded_sge : std_logic;
  signal decoded_seq : std_logic;
  signal decoded_sne : std_logic;
  signal decoded_slti : std_logic;
  signal decoded_sgti : std_logic;
  signal decoded_slei : std_logic;
  signal decoded_sgei : std_logic;
  signal decoded_seqi : std_logic;
  signal decoded_snei : std_logic;
  signal decoded_lhi : std_logic;
  signal decoded_lb : std_logic;
  signal decoded_lh : std_logic;
  signal decoded_lw : std_logic;
  signal decoded_lbu : std_logic;
  signal decoded_lhu : std_logic;
  signal decoded_sb : std_logic;
  signal decoded_sh : std_logic;
  signal decoded_sw : std_logic;
  signal decoded_beqz : std_logic;
  signal decoded_bnez : std_logic;
  signal decoded_j : std_logic;
  signal decoded_jal : std_logic;
  signal decoded_jr : std_logic;
  signal decoded_jalr : std_logic;
  signal decoded_MOD : std_logic;
  signal decoded_modu : std_logic;
  signal decoded_sltu : std_logic;
  signal decoded_sgtu : std_logic;
  signal decoded_sleu : std_logic;
  signal decoded_sgeu : std_logic;
  signal decout_ALU0_mode : std_logic_vector(4 downto 0);
  signal decout_ALU0_cin : std_logic;
  signal decout_GPR_w_enb0 : std_logic;
  signal decout_EXT0_mode : std_logic;
  signal decout_MUL0_mode : std_logic;
  signal decout_DIV0_mode : std_logic;
  signal decout_SFT0_mode : std_logic_vector(1 downto 0);
  signal decout_DMAU_rw : std_logic;
  signal decout_DMAU_ac_mode : std_logic_vector(1 downto 0);
  signal decout_DMAU_ext_mode : std_logic;
  signal decout_PC_load : std_logic;
  signal decout_EXT1_mode : std_logic;
  signal decout_UA_MUX00_SEL : std_logic;
  signal decout_UA_MUX01_SEL : std_logic_vector(1 downto 0);
  signal decout_UA_MUX02_SEL : std_logic_vector(3 downto 0);
  signal decout_UA_MUX03_SEL : std_logic;
  signal decout_UA_MUX04_SEL : std_logic;
  signal decout_UA_MUX05_SEL : std_logic_vector(1 downto 0);
  signal decout_UA_MUX06_SEL : std_logic_vector(1 downto 0);
  signal decout_UA_MUX07_SEL : std_logic;
  signal decout_ctrl_word_ID : std_logic_vector(41 downto 0);
  signal decout_ctrl_word_EXE : std_logic_vector(33 downto 0);
  signal decout_ctrl_word_in_EXE : std_logic_vector(33 downto 0);
  signal decout_ctrl_word_MEM : std_logic_vector(11 downto 0);
  signal decout_ctrl_word_in_MEM : std_logic_vector(11 downto 0);
  signal decout_ctrl_word_WB : std_logic_vector(6 downto 0);
  signal decout_ctrl_word_in_WB : std_logic_vector(6 downto 0);
  signal resctrl_IR_enb_inst : std_logic;
  signal resctrl_PC_hold_inst : std_logic;
  signal resctrl_ALU0_mode_inst : std_logic_vector(4 downto 0);
  signal resctrl_ALU0_cin_inst : std_logic;
  signal resctrl_GPR_w_enb0_inst : std_logic;
  signal resctrl_EXT0_mode_inst : std_logic;
  signal resctrl_MUL0_mode_inst : std_logic;
  signal resctrl_DIV0_mode_inst : std_logic;
  signal resctrl_SFT0_mode_inst : std_logic_vector(1 downto 0);
  signal resctrl_DMAU_rw_inst : std_logic;
  signal resctrl_DMAU_ac_mode_inst : std_logic_vector(1 downto 0);
  signal resctrl_DMAU_ext_mode_inst : std_logic;
  signal resctrl_PC_load_inst : std_logic;
  signal resctrl_EXT1_mode_inst : std_logic;
  signal resctrl_UA_MUX00_SEL_inst : std_logic;
  signal resctrl_UA_MUX01_SEL_inst : std_logic_vector(1 downto 0);
  signal resctrl_UA_MUX02_SEL_inst : std_logic_vector(3 downto 0);
  signal resctrl_UA_MUX03_SEL_inst : std_logic;
  signal resctrl_UA_MUX04_SEL_inst : std_logic;
  signal resctrl_UA_MUX05_SEL_inst : std_logic_vector(1 downto 0);
  signal resctrl_UA_MUX06_SEL_inst : std_logic_vector(1 downto 0);
  signal resctrl_UA_MUX07_SEL_inst : std_logic;
  signal resctrl_mc_MUL0_start_inst : std_logic;
  signal resctrl_mc_MUL0_clear_inst : std_logic;
  signal resctrl_mc_DIV0_start_inst : std_logic;
  signal resctrl_mc_DIV0_clear_inst : std_logic;
  signal resctrl_mc_DMAU_req_inst : std_logic;
  signal resctrl_mc_DMAU_reset_inst : std_logic;
  signal resctrl_PC_reset_intr : std_logic;
  signal resctrl_IR_reset_intr : std_logic;
  signal resctrl_DMAU_reset_intr : std_logic;
  signal resctrl_GPR_reset_intr : std_logic;
  signal resctrl_MUL0_reset_intr : std_logic;
  signal resctrl_DIV0_reset_intr : std_logic;

begin
  UA_PROCFSM : rtg_proc_fsm
    port map (
      CLK => CLK, 
      RST => RST, 
      INTR_REQ => intr_request, 
      INTR_DETECT => intr_detected, 
      INTR_HANDLING => interrupt_handling, 
      FETCH_ENB => fetch_enb
    );

  UA_VALID_ID : rtg_register_w1_00
    port map (
      RST => RST, 
      CLK => CLK, 
      ENB => pipereg_enb_ID, 
      DIN => advance_stage_IF, 
      DOUT => valid_stage_ID
    );

  UA_VALID_EXE : rtg_register_w1_00
    port map (
      RST => RST, 
      CLK => CLK, 
      ENB => pipereg_enb_EXE, 
      DIN => advance_stage_ID, 
      DOUT => valid_stage_EXE
    );

  UA_VALID_MEM : rtg_register_w1_00
    port map (
      RST => RST, 
      CLK => CLK, 
      ENB => pipereg_enb_MEM, 
      DIN => advance_stage_EXE, 
      DOUT => valid_stage_MEM
    );

  UA_VALID_WB : rtg_register_w1_00
    port map (
      RST => RST, 
      CLK => CLK, 
      ENB => pipereg_enb_WB, 
      DIN => advance_stage_MEM, 
      DOUT => valid_stage_WB
    );

  UA_INTRPIPE_CODE_ID : rtg_register_w1_01
    port map (
      RST => RST, 
      CLK => CLK, 
      ENB => pipereg_enb_ID, 
      DIN => intrpipe_code_in_ID, 
      DOUT => intrpipe_code_ID
    );

  UA_INTRPIPE_CODE_EXE : rtg_register_w1_01
    port map (
      RST => RST, 
      CLK => CLK, 
      ENB => pipereg_enb_EXE, 
      DIN => intrpipe_code_in_EXE, 
      DOUT => intrpipe_code_EXE
    );

  UA_INTRPIPE_CODE_MEM : rtg_register_w1_01
    port map (
      RST => RST, 
      CLK => CLK, 
      ENB => pipereg_enb_MEM, 
      DIN => intrpipe_code_in_MEM, 
      DOUT => intrpipe_code_MEM
    );

  UA_INTRPIPE_CODE_WB : rtg_register_w1_01
    port map (
      RST => RST, 
      CLK => CLK, 
      ENB => pipereg_enb_WB, 
      DIN => intrpipe_code_in_WB, 
      DOUT => intrpipe_code_WB
    );

  UA_INTRPIPE_CODE_LAST : rtg_register_w1_01
    port map (
      RST => RST, 
      CLK => CLK, 
      ENB => intr_handling_x, 
      DIN => intrpipe_code_in_LAST, 
      DOUT => intrpipe_code_LAST
    );

  UA_INTRPIPE_REQ_ID : rtg_register_w1_00
    port map (
      RST => RST, 
      CLK => CLK, 
      ENB => pipereg_enb_ID, 
      DIN => intrpipe_req_in_ID, 
      DOUT => intrpipe_req_ID
    );

  UA_INTRPIPE_REQ_EXE : rtg_register_w1_00
    port map (
      RST => RST, 
      CLK => CLK, 
      ENB => pipereg_enb_EXE, 
      DIN => intrpipe_req_in_EXE, 
      DOUT => intrpipe_req_EXE
    );

  UA_INTRPIPE_REQ_MEM : rtg_register_w1_00
    port map (
      RST => RST, 
      CLK => CLK, 
      ENB => pipereg_enb_MEM, 
      DIN => intrpipe_req_in_MEM, 
      DOUT => intrpipe_req_MEM
    );

  UA_INTRPIPE_REQ_WB : rtg_register_w1_00
    port map (
      RST => RST, 
      CLK => CLK, 
      ENB => pipereg_enb_WB, 
      DIN => intrpipe_req_in_WB, 
      DOUT => intrpipe_req_WB
    );

  UA_INTRPIPE_SAVEDPC_ID : rtg_register_w32
    port map (
      RST => RST, 
      CLK => CLK, 
      ENB => pipereg_enb_ID, 
      DIN => intrpipe_saved_pc_in_ID, 
      DOUT => intrpipe_saved_pc_ID
    );

  UA_INTRPIPE_SAVEDPC_EXE : rtg_register_w32
    port map (
      RST => RST, 
      CLK => CLK, 
      ENB => pipereg_enb_EXE, 
      DIN => intrpipe_saved_pc_in_EXE, 
      DOUT => intrpipe_saved_pc_EXE
    );

  UA_INTRPIPE_SAVEDPC_MEM : rtg_register_w32
    port map (
      RST => RST, 
      CLK => CLK, 
      ENB => pipereg_enb_MEM, 
      DIN => intrpipe_saved_pc_in_MEM, 
      DOUT => intrpipe_saved_pc_MEM
    );

  UA_INTRPIPE_SAVEDPC_WB : rtg_register_w32
    port map (
      RST => RST, 
      CLK => CLK, 
      ENB => pipereg_enb_WB, 
      DIN => intrpipe_saved_pc_in_WB, 
      DOUT => intrpipe_saved_pc_WB
    );

  UA_INTRPIPE_SAVEDPC_LAST : rtg_register_w32
    port map (
      RST => RST, 
      CLK => CLK, 
      ENB => intr_handling_x, 
      DIN => intrpipe_saved_pc_in_LAST, 
      DOUT => intrpipe_saved_pc_LAST
    );

  UA_MCBUSY_MUL0_START_EXE : rtg_register_w1_00
    port map (
      RST => RST, 
      CLK => CLK, 
      ENB => const_bit1, 
      DIN => multcyc_MUL0_start_next_busy_EXE, 
      DOUT => multcyc_MUL0_start_busy_EXE
    );

  UA_MCBUSY_DIV0_START_EXE : rtg_register_w1_00
    port map (
      RST => RST, 
      CLK => CLK, 
      ENB => const_bit1, 
      DIN => multcyc_DIV0_start_next_busy_EXE, 
      DOUT => multcyc_DIV0_start_busy_EXE
    );

  UA_MCBUSY_DMAU_REQ_MEM : rtg_register_w1_00
    port map (
      RST => RST, 
      CLK => CLK, 
      ENB => const_bit1, 
      DIN => multcyc_DMAU_req_next_busy_MEM, 
      DOUT => multcyc_DMAU_req_busy_MEM
    );

  UA_CW_EXE : rtg_register_w34
    port map (
      RST => RST, 
      CLK => CLK, 
      ENB => pipereg_enb_EXE, 
      DIN => decout_ctrl_word_in_EXE, 
      DOUT => decout_ctrl_word_EXE
    );

  UA_CW_MEM : rtg_register_w12
    port map (
      RST => RST, 
      CLK => CLK, 
      ENB => pipereg_enb_MEM, 
      DIN => decout_ctrl_word_in_MEM, 
      DOUT => decout_ctrl_word_MEM
    );

  UA_CW_WB : rtg_register_w7
    port map (
      RST => RST, 
      CLK => CLK, 
      ENB => pipereg_enb_WB, 
      DIN => decout_ctrl_word_in_WB, 
      DOUT => decout_ctrl_word_WB
    );

  -- pipeline control logic
  intr_nreq_IF <= intr_req_IF and not intr_req_ID and not intr_req_EXE
  	and not intr_req_MEM and not intr_req_WB;
  intr_nreq_ID <= intr_req_ID and not intr_req_EXE and not intr_req_MEM
  	and not intr_req_WB;
  intr_nreq_EXE <= intr_req_EXE and not intr_req_MEM and not
  	intr_req_WB;
  intr_nreq_MEM <= intr_req_MEM and not intr_req_WB;
  intr_nreq_WB <= intr_req_WB;

  stall_nreq_IF <= stall_req_IF and not stall_req_ID and not
  	stall_req_EXE and not stall_req_MEM and not stall_req_WB;
  stall_nreq_ID <= stall_req_ID and not stall_req_EXE and not
  	stall_req_MEM and not stall_req_WB;
  stall_nreq_EXE <= stall_req_EXE and not stall_req_MEM and not
  	stall_req_WB;
  stall_nreq_MEM <= stall_req_MEM and not stall_req_WB;
  stall_nreq_WB <= stall_req_WB;

  branch_nreq_IF <= branch_req_IF and not branch_req_ID and not
  	branch_req_EXE and not branch_req_MEM and not branch_req_WB;
  branch_nreq_ID <= branch_req_ID and not branch_req_EXE and not
  	branch_req_MEM and not branch_req_WB;
  branch_nreq_EXE <= branch_req_EXE and not branch_req_MEM and not
  	branch_req_WB;
  branch_nreq_MEM <= branch_req_MEM and not branch_req_WB;
  branch_nreq_WB <= branch_req_WB;

  intr_acc_IF <= intr_nreq_IF and not stall_nreq_IF and not
  	stall_nreq_ID and not stall_nreq_EXE and not stall_nreq_MEM and not
  	stall_nreq_WB and not branch_nreq_EXE and not branch_nreq_MEM and not
  	branch_nreq_WB;
  intr_acc_ID <= intr_nreq_ID and not stall_nreq_ID and not
  	stall_nreq_EXE and not stall_nreq_MEM and not stall_nreq_WB and not
  	branch_nreq_MEM and not branch_nreq_WB;
  intr_acc_EXE <= intr_nreq_EXE and not stall_nreq_EXE and not
  	stall_nreq_MEM and not stall_nreq_WB and not branch_nreq_WB;
  intr_acc_MEM <= intr_nreq_MEM and not stall_nreq_MEM and not
  	stall_nreq_WB;
  intr_acc_WB <= intr_nreq_WB and not stall_nreq_WB;

  stall_acc_IF <= stall_nreq_IF and not intr_nreq_ID and not
  	intr_nreq_EXE and not intr_nreq_MEM and not intr_nreq_WB and not
  	branch_nreq_EXE and not branch_nreq_MEM and not branch_nreq_WB;
  stall_acc_ID <= stall_nreq_ID and not intr_nreq_EXE and not
  	intr_nreq_MEM and not intr_nreq_WB and not branch_nreq_MEM and not
  	branch_nreq_WB;
  stall_acc_EXE <= stall_nreq_EXE and not intr_nreq_MEM and not
  	intr_nreq_WB and not branch_nreq_WB;
  stall_acc_MEM <= stall_nreq_MEM and not intr_nreq_WB;
  stall_acc_WB <= stall_nreq_WB;

  branch_acc_IF <= branch_nreq_IF and not intr_nreq_IF and not
  	intr_nreq_ID and not intr_nreq_EXE and not intr_nreq_MEM and not
  	intr_nreq_WB and not stall_nreq_IF and not stall_nreq_ID and not
  	stall_nreq_EXE and not stall_nreq_MEM and not stall_nreq_WB;
  branch_acc_ID <= branch_nreq_ID and not intr_nreq_ID and not
  	intr_nreq_EXE and not intr_nreq_MEM and not intr_nreq_WB and not
  	stall_nreq_ID and not stall_nreq_EXE and not stall_nreq_MEM and not
  	stall_nreq_WB;
  branch_acc_EXE <= branch_nreq_EXE and not intr_nreq_EXE and not
  	intr_nreq_MEM and not intr_nreq_WB and not stall_nreq_EXE and not
  	stall_nreq_MEM and not stall_nreq_WB;
  branch_acc_MEM <= branch_nreq_MEM and not intr_nreq_MEM and not
  	intr_nreq_WB and not stall_nreq_MEM and not stall_nreq_WB;
  branch_acc_WB <= branch_nreq_WB and not intr_nreq_WB and not
  	stall_nreq_WB;

  do_stall_IF <= stall_acc_IF or stall_acc_ID or stall_acc_EXE or
  	stall_acc_MEM or stall_acc_WB;
  do_stall_ID <= stall_acc_ID or stall_acc_EXE or stall_acc_MEM or
  	stall_acc_WB;
  do_stall_EXE <= stall_acc_EXE or stall_acc_MEM or stall_acc_WB;
  do_stall_MEM <= stall_acc_MEM or stall_acc_WB;
  do_stall_WB <= stall_acc_WB;

  do_flush_IF <= intr_acc_IF or intr_acc_ID or intr_acc_EXE or
  	intr_acc_MEM or intr_acc_WB or branch_acc_EXE or branch_acc_MEM or
  	branch_acc_WB;
  do_flush_ID <= intr_acc_ID or intr_acc_EXE or intr_acc_MEM or
  	intr_acc_WB or branch_acc_MEM or branch_acc_WB;
  do_flush_EXE <= intr_acc_EXE or intr_acc_MEM or intr_acc_WB or
  	branch_acc_WB;
  do_flush_MEM <= intr_acc_MEM or intr_acc_WB;
  do_flush_WB <= intr_acc_WB;

  advance_stage_IF <= valid_stage_IF and not do_stall_IF and not
  	do_flush_IF;
  advance_stage_ID <= valid_stage_ID and not do_stall_ID and not
  	do_flush_ID;
  advance_stage_EXE <= valid_stage_EXE and not do_stall_EXE and not
  	do_flush_EXE;
  advance_stage_MEM <= valid_stage_MEM and not do_stall_MEM and not
  	do_flush_MEM;
  advance_stage_WB <= valid_stage_WB and not do_stall_WB and not
  	do_flush_WB;

  pipereg_enb_ID <= not do_stall_ID or do_flush_ID;
  pipereg_enb_EXE <= not do_stall_EXE or do_flush_EXE;
  pipereg_enb_MEM <= not do_stall_MEM or do_flush_MEM;
  pipereg_enb_WB <= not do_stall_WB or do_flush_WB;

  valid_stage_IF <= fetch_enb;

  -- reset interrupt detection logic
  intr_reset_detected <= INTREQ_RESET;

  -- internal interrupt detection logic
  intr_req_IF <= '0';
  intr_req_ID <= '0';
  intr_req_EXE <= '0';
  intr_req_MEM <= '0';
  intr_req_WB <= '0';
  intr_code_detected_IF <= "0";
  intr_code_detected_ID <= "0";
  intr_code_detected_EXE <= "0";
  intr_code_detected_MEM <= "0";
  intr_code_detected_WB <= "0";

  -- interrupt pipeline logic
  intrpipe_code_in_ID <= intr_code_detected_IF when intr_acc_IF = '1'
  	else
	"0";
  intrpipe_code_in_EXE <= intr_code_detected_ID when intr_acc_ID = '1'
  	else
	intrpipe_code_ID;
  intrpipe_code_in_MEM <= intr_code_detected_EXE when intr_acc_EXE = '1'
  	else
	intrpipe_code_EXE;
  intrpipe_code_in_WB <= intr_code_detected_MEM when intr_acc_MEM = '1'
  	else
	intrpipe_code_MEM;
  intrpipe_code_in_LAST <= INTR_RESET when intr_reset_detected = '1'
  	else
	intr_code_detected_WB when intr_acc_WB = '1' else 
	intrpipe_code_WB;
  intrpipe_req_in_ID <= intr_acc_IF or ('0' and not do_stall_IF and not
  	do_flush_IF);
  intrpipe_req_in_EXE <= intr_acc_ID or (intrpipe_req_ID and not
  	do_stall_ID and not do_flush_ID);
  intrpipe_req_in_MEM <= intr_acc_EXE or (intrpipe_req_EXE and not
  	do_stall_EXE and not do_flush_EXE);
  intrpipe_req_in_WB <= intr_acc_MEM or (intrpipe_req_MEM and not
  	do_stall_MEM and not do_flush_MEM);
  intr_request <= intr_reset_detected or intr_acc_WB or (intrpipe_req_WB
  	and not do_stall_WB and not do_flush_WB);
  intrpipe_saved_pc_in_ID <= DATAIN_PC_DATA_OUT;
  intrpipe_saved_pc_in_EXE <= intrpipe_saved_pc_ID;
  intrpipe_saved_pc_in_MEM <= intrpipe_saved_pc_EXE;
  intrpipe_saved_pc_in_WB <= intrpipe_saved_pc_MEM;
  intrpipe_saved_pc_in_LAST <= intrpipe_saved_pc_WB;
  DATAOUT_SAVED_PC <= intrpipe_saved_pc_LAST;
  intr_handling_x <= not interrupt_handling;
  intr_code <= intrpipe_code_LAST;
  intr_detected <= intr_reset_detected or intr_acc_IF or intr_acc_ID or
  	intr_acc_EXE or intr_acc_MEM or intr_acc_WB;

  -- branch detection logic
  branch_req_IF <= '0';
  branch_req_ID <= '0';
  branch_req_EXE <= valid_stage_EXE and ((branch_inst_at_EXE_0 and
  	CTRLIN_CMPEQ_06_EXE) or (branch_inst_at_EXE_1 and CTRLIN_CMPNEQ_01_EXE)
  	or branch_inst_at_EXE_2);
  branch_req_MEM <= '0';
  branch_req_WB <= '0';

  -- multi-cycle operation detection logic
  const_bit1 <= '1';
  multcyc_MUL0_start_ready_EXE <= valid_stage_EXE and
  	multcyc_MUL0_start_c0_inst_EXE;
  multcyc_MUL0_start_stall_EXE <= multcyc_MUL0_start_ready_EXE and not
  	CTRLIN_MUL0_FIN;
  multcyc_MUL0_start_next_busy_EXE <= (not multcyc_MUL0_start_busy_EXE
  	and multcyc_MUL0_start_stall_EXE and not do_flush_EXE) or
  	(multcyc_MUL0_start_busy_EXE and not CTRLIN_MUL0_FIN and not
  	do_flush_EXE);
  multcyc_DIV0_start_ready_EXE <= valid_stage_EXE and
  	multcyc_DIV0_start_c0_inst_EXE;
  multcyc_DIV0_start_stall_EXE <= multcyc_DIV0_start_ready_EXE and not
  	CTRLIN_DIV0_FIN;
  multcyc_DIV0_start_next_busy_EXE <= (not multcyc_DIV0_start_busy_EXE
  	and multcyc_DIV0_start_stall_EXE and not do_flush_EXE) or
  	(multcyc_DIV0_start_busy_EXE and not CTRLIN_DIV0_FIN and not
  	do_flush_EXE);
  multcyc_DMAU_req_ready_MEM <= valid_stage_MEM and
  	multcyc_DMAU_req_c0_inst_MEM;
  multcyc_DMAU_req_stall_MEM <= multcyc_DMAU_req_ready_MEM and not
  	CTRLIN_DMAU_ACK;
  multcyc_DMAU_req_next_busy_MEM <= (not multcyc_DMAU_req_busy_MEM and
  	multcyc_DMAU_req_stall_MEM and not do_flush_MEM) or
  	(multcyc_DMAU_req_busy_MEM and not CTRLIN_DMAU_ACK and not
  	do_flush_MEM);

  -- instruction decode logic
  decoded_add <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "000000"
  	and DATAIN_IR_DATA_OUT(10 downto 0) = "00000100000" else
	'0';
  decoded_addu <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "000000"
  	and DATAIN_IR_DATA_OUT(10 downto 0) = "00000100001" else
	'0';
  decoded_addi <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "001000"
  	else
	'0';
  decoded_addui <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "001001"
  	else
	'0';
  decoded_sub <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "000000"
  	and DATAIN_IR_DATA_OUT(10 downto 0) = "00000100010" else
	'0';
  decoded_subu <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "000000"
  	and DATAIN_IR_DATA_OUT(10 downto 0) = "00000100011" else
	'0';
  decoded_subi <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "001010"
  	else
	'0';
  decoded_subui <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "001011"
  	else
	'0';
  decoded_mult <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "000000"
  	and DATAIN_IR_DATA_OUT(10 downto 0) = "00000011000" else
	'0';
  decoded_multu <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "000000"
  	and DATAIN_IR_DATA_OUT(10 downto 0) = "00000011001" else
	'0';
  decoded_div <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "000000"
  	and DATAIN_IR_DATA_OUT(10 downto 0) = "00000011010" else
	'0';
  decoded_divu <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "000000"
  	and DATAIN_IR_DATA_OUT(10 downto 0) = "00000011011" else
	'0';
  decoded_and <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "000000"
  	and DATAIN_IR_DATA_OUT(10 downto 0) = "00000100100" else
	'0';
  decoded_andi <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "001100"
  	else
	'0';
  decoded_or <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "000000" and
  	DATAIN_IR_DATA_OUT(10 downto 0) = "00000100101" else
	'0';
  decoded_ori <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "001101"
  	else
	'0';
  decoded_xor <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "000000"
  	and DATAIN_IR_DATA_OUT(10 downto 0) = "00000100110" else
	'0';
  decoded_xori <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "001110"
  	else
	'0';
  decoded_sll <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "000000"
  	and DATAIN_IR_DATA_OUT(10 downto 0) = "00000000000" else
	'0';
  decoded_srl <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "000000"
  	and DATAIN_IR_DATA_OUT(10 downto 0) = "00000000010" else
	'0';
  decoded_sra <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "000000"
  	and DATAIN_IR_DATA_OUT(10 downto 0) = "00000000011" else
	'0';
  decoded_slli <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "010000"
  	else
	'0';
  decoded_srli <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "010001"
  	else
	'0';
  decoded_srai <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "010010"
  	else
	'0';
  decoded_slt <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "000000"
  	and DATAIN_IR_DATA_OUT(10 downto 0) = "00000101010" else
	'0';
  decoded_sgt <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "000000"
  	and DATAIN_IR_DATA_OUT(10 downto 0) = "00000101011" else
	'0';
  decoded_sle <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "000000"
  	and DATAIN_IR_DATA_OUT(10 downto 0) = "00000101100" else
	'0';
  decoded_sge <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "000000"
  	and DATAIN_IR_DATA_OUT(10 downto 0) = "00000101101" else
	'0';
  decoded_seq <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "000000"
  	and DATAIN_IR_DATA_OUT(10 downto 0) = "00000101110" else
	'0';
  decoded_sne <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "000000"
  	and DATAIN_IR_DATA_OUT(10 downto 0) = "00000101111" else
	'0';
  decoded_slti <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "011010"
  	else
	'0';
  decoded_sgti <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "011011"
  	else
	'0';
  decoded_slei <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "011100"
  	else
	'0';
  decoded_sgei <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "011101"
  	else
	'0';
  decoded_seqi <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "011110"
  	else
	'0';
  decoded_snei <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "011111"
  	else
	'0';
  decoded_lhi <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "001111"
  	and DATAIN_IR_DATA_OUT(25 downto 21) = "00000" else
	'0';
  decoded_lb <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "100000"
  	else
	'0';
  decoded_lh <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "100001"
  	else
	'0';
  decoded_lw <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "100011"
  	else
	'0';
  decoded_lbu <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "100100"
  	else
	'0';
  decoded_lhu <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "100101"
  	else
	'0';
  decoded_sb <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "101000"
  	else
	'0';
  decoded_sh <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "101001"
  	else
	'0';
  decoded_sw <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "101011"
  	else
	'0';
  decoded_beqz <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "000100"
  	and DATAIN_IR_DATA_OUT(20 downto 16) = "00000" else
	'0';
  decoded_bnez <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "000101"
  	and DATAIN_IR_DATA_OUT(20 downto 16) = "00000" else
	'0';
  decoded_j <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "000010" else
	'0';
  decoded_jal <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "000011"
  	else
	'0';
  decoded_jr <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "000000" and
  	DATAIN_IR_DATA_OUT(20 downto 11) = "0000000000" and
  	DATAIN_IR_DATA_OUT(10 downto 0) = "00000001000" else
	'0';
  decoded_jalr <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "000000"
  	and DATAIN_IR_DATA_OUT(20 downto 11) = "0000000000" and
  	DATAIN_IR_DATA_OUT(10 downto 0) = "00000001001" else
	'0';
  decoded_MOD <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "000000"
  	and DATAIN_IR_DATA_OUT(10 downto 0) = "00000011100" else
	'0';
  decoded_modu <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "000000"
  	and DATAIN_IR_DATA_OUT(10 downto 0) = "00000011110" else
	'0';
  decoded_sltu <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "000000"
  	and DATAIN_IR_DATA_OUT(10 downto 0) = "00000111010" else
	'0';
  decoded_sgtu <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "000000"
  	and DATAIN_IR_DATA_OUT(10 downto 0) = "00000111011" else
	'0';
  decoded_sleu <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "000000"
  	and DATAIN_IR_DATA_OUT(10 downto 0) = "00000111100" else
	'0';
  decoded_sgeu <= '1' when DATAIN_IR_DATA_OUT(31 downto 26) = "000000"
  	and DATAIN_IR_DATA_OUT(10 downto 0) = "00000111101" else
	'0';

  -- resource conflict detection logic


  -- stall detection logic
  stall_req_IF <= '0';
  stall_req_ID <= '0';
  stall_req_EXE <= multcyc_MUL0_start_stall_EXE or
  	multcyc_DIV0_start_stall_EXE;
  stall_req_MEM <= multcyc_DMAU_req_stall_MEM;
  stall_req_WB <= '0';

  -- decoder outputs
  decout_ctrl_word_ID(41 downto 41) <= "1" when decoded_addi = '1' or
  	decoded_beqz = '1' or decoded_bnez = '1' or decoded_lb = '1' or
  	decoded_lbu = '1' or decoded_lh = '1' or decoded_lhu = '1' or
  	decoded_lw = '1' or decoded_sb = '1' or decoded_seqi = '1' or
  	decoded_sgei = '1' or decoded_sgti = '1' or decoded_sh = '1' or
  	decoded_slei = '1' or decoded_slti = '1' or decoded_snei = '1' or
  	decoded_subi = '1' or decoded_sw = '1' else
	"0";
  decout_ctrl_word_ID(40 downto 40) <= "1" when decoded_j = '1' or
  	decoded_jal = '1' else
	"0";
  decout_ctrl_word_ID(39 downto 39) <= "1" when decoded_sb = '1' or
  	decoded_sh = '1' or decoded_sw = '1' else
	"0" when decoded_MOD = '1' or decoded_add = '1' or decoded_addi = '1'
  	or decoded_addu = '1' or decoded_addui = '1' or decoded_and = '1' or
  	decoded_andi = '1' or decoded_beqz = '1' or decoded_bnez = '1' or
  	decoded_div = '1' or decoded_divu = '1' or decoded_jalr = '1' or
  	decoded_jr = '1' or decoded_lb = '1' or decoded_lbu = '1' or decoded_lh
  	= '1' or decoded_lhu = '1' or decoded_lw = '1' or decoded_modu = '1' or
  	decoded_mult = '1' or decoded_multu = '1' or decoded_or = '1' or
  	decoded_ori = '1' or decoded_seq = '1' or decoded_seqi = '1' or
  	decoded_sge = '1' or decoded_sgei = '1' or decoded_sgeu = '1' or
  	decoded_sgt = '1' or decoded_sgti = '1' or decoded_sgtu = '1' or
  	decoded_sle = '1' or decoded_slei = '1' or decoded_sleu = '1' or
  	decoded_sll = '1' or decoded_slli = '1' or decoded_slt = '1' or
  	decoded_slti = '1' or decoded_sltu = '1' or decoded_sne = '1' or
  	decoded_snei = '1' or decoded_sra = '1' or decoded_srai = '1' or
  	decoded_srl = '1' or decoded_srli = '1' or decoded_sub = '1' or
  	decoded_subi = '1' or decoded_subu = '1' or decoded_subui = '1' or
  	decoded_xor = '1' or decoded_xori = '1' else
	"0";
  decout_ctrl_word_ID(38 downto 38) <= "1" when decoded_sb = '1' or
  	decoded_sh = '1' or decoded_sw = '1' else
	"0" when decoded_MOD = '1' or decoded_add = '1' or decoded_addu = '1'
  	or decoded_and = '1' or decoded_div = '1' or decoded_divu = '1' or
  	decoded_modu = '1' or decoded_mult = '1' or decoded_multu = '1' or
  	decoded_or = '1' or decoded_seq = '1' or decoded_sge = '1' or
  	decoded_sgeu = '1' or decoded_sgt = '1' or decoded_sgtu = '1' or
  	decoded_sle = '1' or decoded_sleu = '1' or decoded_sll = '1' or
  	decoded_slt = '1' or decoded_sltu = '1' or decoded_sne = '1' or
  	decoded_sra = '1' or decoded_srl = '1' or decoded_sub = '1' or
  	decoded_subu = '1' or decoded_xor = '1' else
	"0";
  decout_ctrl_word_ID(37 downto 36) <= "10" when decoded_beqz = '1' or
  	decoded_bnez = '1' or decoded_j = '1' or decoded_jal = '1' else
	"01" when decoded_sb = '1' or decoded_sh = '1' or decoded_sw = '1'
  	else
	"00" when decoded_add = '1' or decoded_addi = '1' or decoded_addu =
  	'1' or decoded_addui = '1' or decoded_and = '1' or decoded_andi = '1'
  	or decoded_lb = '1' or decoded_lbu = '1' or decoded_lh = '1' or
  	decoded_lhu = '1' or decoded_lw = '1' or decoded_or = '1' or
  	decoded_ori = '1' or decoded_seq = '1' or decoded_seqi = '1' or
  	decoded_sge = '1' or decoded_sgei = '1' or decoded_sgeu = '1' or
  	decoded_sgt = '1' or decoded_sgti = '1' or decoded_sgtu = '1' or
  	decoded_sle = '1' or decoded_slei = '1' or decoded_sleu = '1' or
  	decoded_slt = '1' or decoded_slti = '1' or decoded_sltu = '1' or
  	decoded_sne = '1' or decoded_snei = '1' or decoded_sub = '1' or
  	decoded_subi = '1' or decoded_subu = '1' or decoded_subui = '1' or
  	decoded_xor = '1' or decoded_xori = '1' else
	"00";
  decout_ctrl_word_ID(35 downto 34) <= "11" when decoded_j = '1' or
  	decoded_jal = '1' else
	"10" when decoded_addui = '1' or decoded_andi = '1' or decoded_ori =
  	'1' or decoded_subui = '1' or decoded_xori = '1' else
	"01" when decoded_addi = '1' or decoded_beqz = '1' or decoded_bnez =
  	'1' or decoded_lb = '1' or decoded_lbu = '1' or decoded_lh = '1' or
  	decoded_lhu = '1' or decoded_lw = '1' or decoded_sb = '1' or
  	decoded_seqi = '1' or decoded_sgei = '1' or decoded_sgti = '1' or
  	decoded_sh = '1' or decoded_slei = '1' or decoded_slti = '1' or
  	decoded_snei = '1' or decoded_subi = '1' or decoded_sw = '1' else
	"00" when decoded_add = '1' or decoded_addu = '1' or decoded_and = '1'
  	or decoded_or = '1' or decoded_seq = '1' or decoded_sge = '1' or
  	decoded_sgeu = '1' or decoded_sgt = '1' or decoded_sgtu = '1' or
  	decoded_sle = '1' or decoded_sleu = '1' or decoded_slt = '1' or
  	decoded_sltu = '1' or decoded_sne = '1' or decoded_sub = '1' or
  	decoded_subu = '1' or decoded_xor = '1' else
	"00";
  decout_ctrl_word_ID(33 downto 29) <= "10001" when decoded_xor = '1'
  	else
	"10000" when decoded_or = '1' or decoded_ori = '1' or decoded_xori =
  	'1' else
	"10010" when decoded_and = '1' or decoded_andi = '1' else 
	"00010" when decoded_sgeu = '1' or decoded_sgtu = '1' or decoded_sleu
  	= '1' or decoded_sltu = '1' or decoded_subu = '1' or decoded_subui =
  	'1' else
	"01010" when decoded_seq = '1' or decoded_seqi = '1' or decoded_sge =
  	'1' or decoded_sgei = '1' or decoded_sgt = '1' or decoded_sgti = '1' or
  	decoded_sle = '1' or decoded_slei = '1' or decoded_slt = '1' or
  	decoded_slti = '1' or decoded_sne = '1' or decoded_snei = '1' or
  	decoded_sub = '1' or decoded_subi = '1' else
	"00001" when decoded_addu = '1' or decoded_addui = '1' else 
	"01001" when decoded_add = '1' or decoded_addi = '1' or decoded_beqz =
  	'1' or decoded_bnez = '1' or decoded_j = '1' or decoded_jal = '1' or
  	decoded_lb = '1' or decoded_lbu = '1' or decoded_lh = '1' or
  	decoded_lhu = '1' or decoded_lw = '1' or decoded_sb = '1' or decoded_sh
  	= '1' or decoded_sw = '1' else
	"00000";
  decout_ctrl_word_ID(28 downto 28) <= "1" when decoded_seq = '1' or
  	decoded_seqi = '1' or decoded_sge = '1' or decoded_sgei = '1' or
  	decoded_sgeu = '1' or decoded_sgt = '1' or decoded_sgti = '1' or
  	decoded_sgtu = '1' or decoded_sle = '1' or decoded_slei = '1' or
  	decoded_sleu = '1' or decoded_slt = '1' or decoded_slti = '1' or
  	decoded_sltu = '1' or decoded_sne = '1' or decoded_snei = '1' or
  	decoded_sub = '1' or decoded_subi = '1' or decoded_subu = '1' or
  	decoded_subui = '1' else
	"0" when decoded_add = '1' or decoded_addi = '1' or decoded_addu = '1'
  	or decoded_addui = '1' or decoded_beqz = '1' or decoded_bnez = '1' or
  	decoded_j = '1' or decoded_jal = '1' or decoded_lb = '1' or decoded_lbu
  	= '1' or decoded_lh = '1' or decoded_lhu = '1' or decoded_lw = '1' or
  	decoded_sb = '1' or decoded_sh = '1' or decoded_sw = '1' else
	"0";
  decout_ctrl_word_ID(27 downto 27) <= "0" when decoded_multu = '1' else
	"1" when decoded_mult = '1' else 
	"0";
  decout_ctrl_word_ID(26 downto 26) <= "0" when decoded_divu = '1' or
  	decoded_modu = '1' else
	"1" when decoded_MOD = '1' or decoded_div = '1' else 
	"0";
  decout_ctrl_word_ID(25 downto 24) <= "11" when decoded_sra = '1' or
  	decoded_srai = '1' else
	"10" when decoded_srl = '1' or decoded_srli = '1' else 
	"00" when decoded_sll = '1' or decoded_slli = '1' else 
	"00";
  decout_ctrl_word_ID(23 downto 23) <= "1" when decoded_j = '1' or
  	decoded_jal = '1' or decoded_jalr = '1' or decoded_jr = '1' else
	"0";
  decout_ctrl_word_ID(22 downto 22) <= "1" when decoded_jalr = '1' or
  	decoded_jr = '1' else
	"0" when decoded_j = '1' or decoded_jal = '1' else 
	"0";
  decout_ctrl_word_ID(21 downto 21) <= "1" when decoded_slli = '1' or
  	decoded_srai = '1' or decoded_srli = '1' else
	"0" when decoded_sll = '1' or decoded_sra = '1' or decoded_srl = '1'
  	else
	"0";
  decout_ctrl_word_ID(20) <= '1' when decoded_beqz = '1' else 
	'0';
  decout_ctrl_word_ID(19) <= '1' when decoded_bnez = '1' else 
	'0';
  decout_ctrl_word_ID(18) <= '1' when decoded_j = '1' or decoded_jal =
  	'1' or decoded_jalr = '1' or decoded_jr = '1' else
	'0';
  decout_ctrl_word_ID(17) <= '1' when decoded_mult = '1' or
  	decoded_multu = '1' else
	'0';
  decout_ctrl_word_ID(16) <= '1' when decoded_MOD = '1' or decoded_div =
  	'1' or decoded_divu = '1' or decoded_modu = '1' else
	'0';
  decout_ctrl_word_ID(15) <= '1' when decoded_beqz = '1' else 
	'0';
  decout_ctrl_word_ID(14) <= '1' when decoded_bnez = '1' else 
	'0';
  decout_ctrl_word_ID(13) <= '1' when decoded_beqz = '1' else 
	'0';
  decout_ctrl_word_ID(12) <= '1' when decoded_bnez = '1' else 
	'0';
  decout_ctrl_word_ID(11 downto 11) <= "1" when decoded_sb = '1' or
  	decoded_sh = '1' or decoded_sw = '1' else
	"0" when decoded_lb = '1' or decoded_lbu = '1' or decoded_lh = '1' or
  	decoded_lhu = '1' or decoded_lw = '1' else
	"0";
  decout_ctrl_word_ID(10 downto 9) <= "11" when decoded_lw = '1' or
  	decoded_sw = '1' else
	"01" when decoded_lh = '1' or decoded_lhu = '1' or decoded_sh = '1'
  	else
	"00" when decoded_lb = '1' or decoded_lbu = '1' or decoded_sb = '1'
  	else
	"00";
  decout_ctrl_word_ID(8 downto 8) <= "0" when decoded_lbu = '1' or
  	decoded_lhu = '1' else
	"1" when decoded_lb = '1' or decoded_lh = '1' else 
	"0";
  decout_ctrl_word_ID(7) <= '1' when decoded_lb = '1' or decoded_lbu =
  	'1' or decoded_lh = '1' or decoded_lhu = '1' or decoded_lw = '1' or
  	decoded_sb = '1' or decoded_sh = '1' or decoded_sw = '1' else
	'0';
  decout_ctrl_word_ID(6 downto 6) <= "1" when decoded_MOD = '1' or
  	decoded_add = '1' or decoded_addi = '1' or decoded_addu = '1' or
  	decoded_addui = '1' or decoded_and = '1' or decoded_andi = '1' or
  	decoded_div = '1' or decoded_divu = '1' or decoded_jal = '1' or
  	decoded_jalr = '1' or decoded_lb = '1' or decoded_lbu = '1' or
  	decoded_lh = '1' or decoded_lhi = '1' or decoded_lhu = '1' or
  	decoded_lw = '1' or decoded_modu = '1' or decoded_mult = '1' or
  	decoded_multu = '1' or decoded_or = '1' or decoded_ori = '1' or
  	decoded_seq = '1' or decoded_seqi = '1' or decoded_sge = '1' or
  	decoded_sgei = '1' or decoded_sgeu = '1' or decoded_sgt = '1' or
  	decoded_sgti = '1' or decoded_sgtu = '1' or decoded_sle = '1' or
  	decoded_slei = '1' or decoded_sleu = '1' or decoded_sll = '1' or
  	decoded_slli = '1' or decoded_slt = '1' or decoded_slti = '1' or
  	decoded_sltu = '1' or decoded_sne = '1' or decoded_snei = '1' or
  	decoded_sra = '1' or decoded_srai = '1' or decoded_srl = '1' or
  	decoded_srli = '1' or decoded_sub = '1' or decoded_subi = '1' or
  	decoded_subu = '1' or decoded_subui = '1' or decoded_xor = '1' or
  	decoded_xori = '1' else
	"0";
  decout_ctrl_word_ID(5 downto 4) <= "10" when decoded_jal = '1' or
  	decoded_jalr = '1' else
	"01" when decoded_addi = '1' or decoded_addui = '1' or decoded_andi =
  	'1' or decoded_lb = '1' or decoded_lbu = '1' or decoded_lh = '1' or
  	decoded_lhi = '1' or decoded_lhu = '1' or decoded_lw = '1' or
  	decoded_ori = '1' or decoded_seqi = '1' or decoded_sgei = '1' or
  	decoded_sgti = '1' or decoded_slei = '1' or decoded_slli = '1' or
  	decoded_slti = '1' or decoded_snei = '1' or decoded_srai = '1' or
  	decoded_srli = '1' or decoded_subi = '1' or decoded_subui = '1' or
  	decoded_xori = '1' else
	"00" when decoded_MOD = '1' or decoded_add = '1' or decoded_addu = '1'
  	or decoded_and = '1' or decoded_div = '1' or decoded_divu = '1' or
  	decoded_modu = '1' or decoded_mult = '1' or decoded_multu = '1' or
  	decoded_or = '1' or decoded_seq = '1' or decoded_sge = '1' or
  	decoded_sgeu = '1' or decoded_sgt = '1' or decoded_sgtu = '1' or
  	decoded_sle = '1' or decoded_sleu = '1' or decoded_sll = '1' or
  	decoded_slt = '1' or decoded_sltu = '1' or decoded_sne = '1' or
  	decoded_sra = '1' or decoded_srl = '1' or decoded_sub = '1' or
  	decoded_subu = '1' or decoded_xor = '1' else
	"00";
  decout_ctrl_word_ID(3 downto 0) <= "1101" when decoded_MOD = '1' or
  	decoded_modu = '1' else
	"1100" when decoded_jal = '1' or decoded_jalr = '1' else 
	"1011" when decoded_lb = '1' or decoded_lbu = '1' or decoded_lh = '1'
  	or decoded_lhu = '1' or decoded_lw = '1' else
	"1010" when decoded_lhi = '1' else 
	"1001" when decoded_sne = '1' or decoded_snei = '1' else 
	"1000" when decoded_seq = '1' or decoded_seqi = '1' else 
	"0111" when decoded_sge = '1' or decoded_sgei = '1' or decoded_sgeu =
  	'1' else
	"0110" when decoded_sle = '1' or decoded_slei = '1' or decoded_sleu =
  	'1' else
	"0101" when decoded_sgt = '1' or decoded_sgti = '1' or decoded_sgtu =
  	'1' else
	"0100" when decoded_slt = '1' or decoded_slti = '1' or decoded_sltu =
  	'1' else
	"0011" when decoded_sll = '1' or decoded_slli = '1' or decoded_sra =
  	'1' or decoded_srai = '1' or decoded_srl = '1' or decoded_srli = '1'
  	else
	"0010" when decoded_div = '1' or decoded_divu = '1' else 
	"0001" when decoded_mult = '1' or decoded_multu = '1' else 
	"0000" when decoded_add = '1' or decoded_addi = '1' or decoded_addu =
  	'1' or decoded_addui = '1' or decoded_and = '1' or decoded_andi = '1'
  	or decoded_or = '1' or decoded_ori = '1' or decoded_sub = '1' or
  	decoded_subi = '1' or decoded_subu = '1' or decoded_subui = '1' or
  	decoded_xor = '1' or decoded_xori = '1' else
	"0000";

  decout_ctrl_word_in_EXE <= decout_ctrl_word_ID(33 downto 0);
  decout_ctrl_word_in_MEM <= decout_ctrl_word_EXE(11 downto 0);
  decout_ctrl_word_in_WB <= decout_ctrl_word_MEM(6 downto 0);
  decout_EXT0_mode <= decout_ctrl_word_ID(41);
  decout_EXT1_mode <= decout_ctrl_word_ID(40);
  decout_UA_MUX03_SEL <= decout_ctrl_word_ID(39);
  decout_UA_MUX04_SEL <= decout_ctrl_word_ID(38);
  decout_UA_MUX05_SEL <= decout_ctrl_word_ID(37 downto 36);
  decout_UA_MUX06_SEL <= decout_ctrl_word_ID(35 downto 34);
  decout_ALU0_mode <= decout_ctrl_word_EXE(33 downto 29);
  decout_ALU0_cin <= decout_ctrl_word_EXE(28);
  decout_MUL0_mode <= decout_ctrl_word_EXE(27);
  decout_DIV0_mode <= decout_ctrl_word_EXE(26);
  decout_SFT0_mode <= decout_ctrl_word_EXE(25 downto 24);
  decout_PC_load <= decout_ctrl_word_EXE(23);
  decout_UA_MUX00_SEL <= decout_ctrl_word_EXE(22);
  decout_UA_MUX07_SEL <= decout_ctrl_word_EXE(21);
  branch_inst_at_EXE_0 <= decout_ctrl_word_EXE(20);
  branch_inst_at_EXE_1 <= decout_ctrl_word_EXE(19);
  branch_inst_at_EXE_2 <= decout_ctrl_word_EXE(18);
  multcyc_MUL0_start_c0_inst_EXE <= decout_ctrl_word_EXE(17);
  multcyc_DIV0_start_c0_inst_EXE <= decout_ctrl_word_EXE(16);
  asgn_PC_load_inst_v0c0_EXE <= decout_ctrl_word_EXE(15);
  asgn_PC_load_inst_v0c1_EXE <= decout_ctrl_word_EXE(14);
  asgn_UA_MUX00_SEL_inst_v0c0_EXE <= decout_ctrl_word_EXE(13);
  asgn_UA_MUX00_SEL_inst_v0c1_EXE <= decout_ctrl_word_EXE(12);
  decout_DMAU_rw <= decout_ctrl_word_MEM(11);
  decout_DMAU_ac_mode <= decout_ctrl_word_MEM(10 downto 9);
  decout_DMAU_ext_mode <= decout_ctrl_word_MEM(8);
  multcyc_DMAU_req_c0_inst_MEM <= decout_ctrl_word_MEM(7);
  decout_GPR_w_enb0 <= decout_ctrl_word_WB(6);
  decout_UA_MUX01_SEL <= decout_ctrl_word_WB(5 downto 4);
  decout_UA_MUX02_SEL <= decout_ctrl_word_WB(3 downto 0);

  -- resource control logic
  resctrl_IR_enb_inst <= '0' when advance_stage_IF = '0' else 
	'1';
  resctrl_PC_hold_inst <= '1' when advance_stage_IF = '0' else 
	'0';
  resctrl_ALU0_mode_inst <= decout_ALU0_mode;
  resctrl_ALU0_cin_inst <= decout_ALU0_cin;
  resctrl_GPR_w_enb0_inst <= '0' when advance_stage_WB = '0' else 
	decout_GPR_w_enb0;
  resctrl_EXT0_mode_inst <= decout_EXT0_mode;
  resctrl_MUL0_mode_inst <= decout_MUL0_mode;
  resctrl_DIV0_mode_inst <= decout_DIV0_mode;
  resctrl_SFT0_mode_inst <= decout_SFT0_mode;
  resctrl_DMAU_rw_inst <= decout_DMAU_rw;
  resctrl_DMAU_ac_mode_inst <= decout_DMAU_ac_mode;
  resctrl_DMAU_ext_mode_inst <= decout_DMAU_ext_mode;
  resctrl_PC_load_inst <= '0' when advance_stage_EXE = '0' else 
	'1' when valid_stage_EXE = '1' and ((asgn_PC_load_inst_v0c0_EXE = '1'
  	and CTRLIN_CMPEQ_06_EXE = '1') or (asgn_PC_load_inst_v0c1_EXE = '1' and
  	CTRLIN_CMPNEQ_01_EXE = '1')) else
	decout_PC_load;
  resctrl_EXT1_mode_inst <= decout_EXT1_mode;
  resctrl_UA_MUX00_SEL_inst <= '0' when valid_stage_EXE = '1' and
  	((asgn_UA_MUX00_SEL_inst_v0c0_EXE = '1' and CTRLIN_CMPEQ_06_EXE = '1')
  	or (asgn_UA_MUX00_SEL_inst_v0c1_EXE = '1' and CTRLIN_CMPNEQ_01_EXE =
  	'1')) else
	decout_UA_MUX00_SEL;
  resctrl_UA_MUX01_SEL_inst <= decout_UA_MUX01_SEL;
  resctrl_UA_MUX02_SEL_inst <= decout_UA_MUX02_SEL;
  resctrl_UA_MUX03_SEL_inst <= decout_UA_MUX03_SEL;
  resctrl_UA_MUX04_SEL_inst <= decout_UA_MUX04_SEL;
  resctrl_UA_MUX05_SEL_inst <= decout_UA_MUX05_SEL;
  resctrl_UA_MUX06_SEL_inst <= decout_UA_MUX06_SEL;
  resctrl_UA_MUX07_SEL_inst <= decout_UA_MUX07_SEL;
  resctrl_mc_MUL0_start_inst <= multcyc_MUL0_start_ready_EXE and not
  	multcyc_MUL0_start_busy_EXE;
  resctrl_mc_MUL0_clear_inst <= multcyc_MUL0_start_busy_EXE and
  	do_flush_EXE;
  resctrl_mc_DIV0_start_inst <= multcyc_DIV0_start_ready_EXE and not
  	multcyc_DIV0_start_busy_EXE;
  resctrl_mc_DIV0_clear_inst <= multcyc_DIV0_start_busy_EXE and
  	do_flush_EXE;
  resctrl_mc_DMAU_req_inst <= multcyc_DMAU_req_ready_MEM and not
  	multcyc_DMAU_req_busy_MEM;
  resctrl_mc_DMAU_reset_inst <= multcyc_DMAU_req_busy_MEM and
  	do_flush_MEM;
  resctrl_PC_reset_intr <= '1' when intr_code = INTR_RESET else 
	'0';
  resctrl_IR_reset_intr <= '1' when intr_code = INTR_RESET else 
	'0';
  resctrl_DMAU_reset_intr <= '1' when intr_code = INTR_RESET else 
	'0';
  resctrl_GPR_reset_intr <= '1' when intr_code = INTR_RESET else 
	'0';
  resctrl_MUL0_reset_intr <= '1' when intr_code = INTR_RESET else 
	'0';
  resctrl_DIV0_reset_intr <= '1' when intr_code = INTR_RESET else 
	'0';
  CTRLOUT_MUL0_CLEAR <= resctrl_mc_MUL0_clear_inst when
  	interrupt_handling = '0' else
	'0';
  CTRLOUT_DIV0_CLEAR <= resctrl_mc_DIV0_clear_inst when
  	interrupt_handling = '0' else
	'0';
  CTRLOUT_DMAU_RESET <= resctrl_DMAU_reset_intr when interrupt_handling
  	= '1' else
	resctrl_mc_DMAU_reset_inst when interrupt_handling = '0' else 
	'0';
  CTRLOUT_IR_ENB <= resctrl_IR_enb_inst when interrupt_handling = '0'
  	else
	'0';
  CTRLOUT_PC_HOLD <= resctrl_PC_hold_inst when interrupt_handling = '0'
  	else
	'1';
  CTRLOUT_ALU0_MODE <= resctrl_ALU0_mode_inst when interrupt_handling =
  	'0' else
	"00000";
  CTRLOUT_ALU0_CIN <= resctrl_ALU0_cin_inst when interrupt_handling =
  	'0' else
	'0';
  CTRLOUT_GPR_W_ENB0 <= resctrl_GPR_w_enb0_inst when interrupt_handling
  	= '0' else
	'0';
  CTRLOUT_EXT0_MODE <= resctrl_EXT0_mode_inst when interrupt_handling =
  	'0' else
	'0';
  CTRLOUT_MUL0_MODE <= resctrl_MUL0_mode_inst when interrupt_handling =
  	'0' else
	'0';
  CTRLOUT_DIV0_MODE <= resctrl_DIV0_mode_inst when interrupt_handling =
  	'0' else
	'0';
  CTRLOUT_SFT0_MODE <= resctrl_SFT0_mode_inst when interrupt_handling =
  	'0' else
	"00";
  CTRLOUT_DMAU_RW <= resctrl_DMAU_rw_inst when interrupt_handling = '0'
  	else
	'0';
  CTRLOUT_DMAU_AC_MODE <= resctrl_DMAU_ac_mode_inst when
  	interrupt_handling = '0' else
	"00";
  CTRLOUT_DMAU_EXT_MODE <= resctrl_DMAU_ext_mode_inst when
  	interrupt_handling = '0' else
	'0';
  CTRLOUT_PC_LOAD <= resctrl_PC_load_inst when interrupt_handling = '0'
  	else
	'0';
  CTRLOUT_EXT1_MODE <= resctrl_EXT1_mode_inst when interrupt_handling =
  	'0' else
	'0';
  CTRLOUT_MUL0_START <= resctrl_mc_MUL0_start_inst when
  	interrupt_handling = '0' else
	'0';
  CTRLOUT_DIV0_START <= resctrl_mc_DIV0_start_inst when
  	interrupt_handling = '0' else
	'0';
  CTRLOUT_DMAU_REQ <= resctrl_mc_DMAU_req_inst when interrupt_handling =
  	'0' else
	'0';
  CTRLOUT_PC_RESET <= resctrl_PC_reset_intr when interrupt_handling =
  	'1' else
	'0';
  CTRLOUT_IR_RESET <= resctrl_IR_reset_intr when interrupt_handling =
  	'1' else
	'0';
  CTRLOUT_GPR_RESET <= resctrl_GPR_reset_intr when interrupt_handling =
  	'1' else
	'0';
  CTRLOUT_MUL0_RESET <= resctrl_MUL0_reset_intr when interrupt_handling
  	= '1' else
	'0';
  CTRLOUT_DIV0_RESET <= resctrl_DIV0_reset_intr when interrupt_handling
  	= '1' else
	'0';
  CTRLOUT_UA_MUX00_SEL <= resctrl_UA_MUX00_SEL_inst when
  	interrupt_handling = '0' else
	'0';
  CTRLOUT_UA_MUX01_SEL <= resctrl_UA_MUX01_SEL_inst when
  	interrupt_handling = '0' else
	"00";
  CTRLOUT_UA_MUX02_SEL <= resctrl_UA_MUX02_SEL_inst when
  	interrupt_handling = '0' else
	"0000";
  CTRLOUT_UA_MUX03_SEL <= resctrl_UA_MUX03_SEL_inst when
  	interrupt_handling = '0' else
	'0';
  CTRLOUT_UA_MUX04_SEL <= resctrl_UA_MUX04_SEL_inst when
  	interrupt_handling = '0' else
	'0';
  CTRLOUT_UA_MUX05_SEL <= resctrl_UA_MUX05_SEL_inst when
  	interrupt_handling = '0' else
	"00";
  CTRLOUT_UA_MUX06_SEL <= resctrl_UA_MUX06_SEL_inst when
  	interrupt_handling = '0' else
	"00";
  CTRLOUT_UA_MUX07_SEL <= resctrl_UA_MUX07_SEL_inst when
  	interrupt_handling = '0' else
	'0';
  CTRLOUT_UA_PREG00_ENB <= pipereg_enb_ID;
  CTRLOUT_UA_PREG01_ENB <= pipereg_enb_EXE;
  CTRLOUT_UA_PREG02_ENB <= pipereg_enb_MEM;
  CTRLOUT_UA_PREG03_ENB <= pipereg_enb_WB;
  CTRLOUT_UA_PREG04_ENB <= pipereg_enb_WB;
  CTRLOUT_UA_PREG05_ENB <= pipereg_enb_EXE;
  CTRLOUT_UA_PREG06_ENB <= pipereg_enb_MEM;
  CTRLOUT_UA_PREG07_ENB <= pipereg_enb_EXE;
  CTRLOUT_UA_PREG08_ENB <= pipereg_enb_MEM;
  CTRLOUT_UA_PREG09_ENB <= pipereg_enb_WB;
  CTRLOUT_UA_PREG10_ENB <= pipereg_enb_MEM;
  CTRLOUT_UA_PREG11_ENB <= pipereg_enb_WB;
  CTRLOUT_UA_PREG12_ENB <= pipereg_enb_MEM;
  CTRLOUT_UA_PREG13_ENB <= pipereg_enb_WB;
  CTRLOUT_UA_PREG14_ENB <= pipereg_enb_MEM;
  CTRLOUT_UA_PREG15_ENB <= pipereg_enb_WB;
  CTRLOUT_UA_PREG16_ENB <= pipereg_enb_MEM;
  CTRLOUT_UA_PREG17_ENB <= pipereg_enb_WB;
  CTRLOUT_UA_PREG18_ENB <= pipereg_enb_EXE;
  CTRLOUT_UA_PREG19_ENB <= pipereg_enb_MEM;
  CTRLOUT_UA_PREG20_ENB <= pipereg_enb_WB;
  CTRLOUT_UA_PREG21_ENB <= pipereg_enb_EXE;
  CTRLOUT_UA_PREG22_ENB <= pipereg_enb_MEM;
  CTRLOUT_UA_PREG23_ENB <= pipereg_enb_WB;
  CTRLOUT_UA_PREG24_ENB <= pipereg_enb_EXE;
  CTRLOUT_UA_PREG25_ENB <= pipereg_enb_MEM;
  CTRLOUT_UA_PREG26_ENB <= pipereg_enb_WB;
  CTRLOUT_UA_PREG27_ENB <= pipereg_enb_EXE;
  CTRLOUT_UA_PREG28_ENB <= pipereg_enb_MEM;
  CTRLOUT_UA_PREG29_ENB <= pipereg_enb_WB;
  CTRLOUT_UA_PREG30_ENB <= pipereg_enb_EXE;
  CTRLOUT_UA_PREG31_ENB <= pipereg_enb_EXE;
end RTL;

-----------------------------------------
-- Generated by ASIP Meister ver.1.1 --
-----------------------------------------
