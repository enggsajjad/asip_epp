-- Copyright 2001 Xilinx, Inc. All rights reserved.
-- ================================================
-- $Id: mac_v2_0.vhd,v 1.4.78.3 2004/05/18 12:11:14 julian Exp $
--------------------------------------------------------------------------------
-- Unit     : mac_v2_0 
-- Author   : Rowland Fraser
-- Function : MAC behavioral model
--------------------------------------------------------------------------------
-- Description                                                
-- ===========
-- Behavioral model for mac_v2_0
--------------------------------------------------------------------------------

LIBRARY std;
USE std.standard.ALL;

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_signed.all;

LIBRARY xilinxcorelib;
USE xilinxcorelib.mult_gen_v5_0_comp.all;
USE xilinxcorelib.c_accum_v5_1_comp.all;
USE xilinxcorelib.prims_constants_v5_0.ALL;
USE xilinxcorelib.mult_gen_v5_0_services.ALL;
USE xilinxcorelib.mult_const_pkg_v5_0.ALL;

LIBRARY xilinxcorelib;
USE xilinxcorelib.mac_pack_behav_v2_0.ALL;

ENTITY mac_behav_v2_0 IS
  GENERIC (c_family_int    : integer;
           c_a_width       : integer;
           c_b_width       : integer;
           c_mult_type     : integer;
           c_mem_type      : integer;          
           c_count_width   : integer;
           c_p_width       : integer;
           c_mult_round    : integer; 
           c_acc_width     : integer;
           c_out_width     : integer;
           c_a_type        : integer;
           c_b_type        : integer;      
           c_b_mode        : integer;
           c_b_value       : string;
           c_saturate      : integer;
           c_sync_enable   : integer;
           c_has_inreg     : integer;
           c_pipe_level    : string;
           c_optimization  : integer;
           c_has_count     : integer;
           c_mac_count     : integer;
           c_mem_init_prefix : string := "mem";
           c_output_hold   : integer;
           c_has_rffd      : integer;
           c_has_rdy       : integer;
           c_has_c_in      : integer;
           c_has_c_out     : integer;
           c_has_ovfl      : integer;
           c_has_ce        : integer;
           c_has_add       : integer;
           c_has_aclr      : integer;
           c_has_sclr      : integer;
           c_standalone    : integer;
           c_enable_rlocs  : integer);

  PORT (clk       : IN  std_logic;
        a         : IN  std_logic_vector((c_a_width - 1) downto 0);
        b         : IN  std_logic_vector((c_b_width - 1) downto 0);
        c_in      : IN  std_logic;
        fd        : IN  std_logic;
        nd        : IN  std_logic;
        a_signed  : IN  std_logic;
        load_b    : IN  std_logic;
        add       : IN  std_logic;
        count     : IN  std_logic_Vector((c_count_width - 1) downto 0); 
        aclr      : IN  std_logic;
        sclr      : IN  std_logic;
        ce        : IN  std_logic;
        q         : OUT std_logic_vector((c_out_width-1) downto 0) := (OTHERS => '0');
        c_out     : OUT std_logic := '0';
        ovfl      : OUT std_logic := '0';
        rdy       : OUT std_logic := '0';
        rfd       : OUT std_logic := '0';
        rffd      : OUT std_logic := '0');
END mac_behav_v2_0 ;

ARCHITECTURE behavioral OF mac_behav_v2_0 IS 
  constant c_distributed : integer := 0;  -- ip var: c_distributed
  constant c_sp_block    : integer := 1;  -- ip var: c_sp_block
  constant c_dp_block    : integer := 2;  -- ip var: c_dp_block
  constant PARALLEL     : integer := 0;  -- ip var: c_parallel
  constant V2_PARALLEL  : integer := 1;  -- ip_var: c_v2_parallel

  CONSTANT mult_has_a_signed : integer := find_mult_has_a_signed(c_a_type);
  CONSTANT mult_has_loadb : integer := find_mult_has_loadb(c_b_mode);
  CONSTANT count_fixed_to_zero : boolean := find_count_fixed_to_zero(c_mac_count, 
                                                                     c_has_count);     
  CONSTANT count_fixed_to_one : boolean := find_count_fixed_to_one(c_mac_count,
                                                                   c_has_count);
                                                                                                                                   
  CONSTANT count_fixed_gt_one : boolean := find_count_fixed_gt_one(c_mac_count,
                                                                   c_has_count);
  CONSTANT mult_has_q : integer := find_mult_has_q(c_pipe_level,
                                                   c_has_c_in,
                                                   c_mult_round,
                                                   c_has_add,
                                                   c_saturate,
                                                   count_fixed_to_one,
                                                   c_b_mode,
                                                   c_mem_type);
  CONSTANT mult_has_o : integer := find_mult_has_o(mult_has_q);
  CONSTANT mult_out_width : integer := find_mult_out_width(c_p_width, c_mult_round); 
  CONSTANT mult_pipeline : integer := find_mult_pipeline(c_pipe_level);
  CONSTANT mult_bram_addr_width : integer := find_mult_bram_addr_width(c_family_int);
  CONSTANT mult_b_constant : integer := find_mult_b_constant(c_b_mode);
  CONSTANT mult_has_b : integer := find_mult_has_b(c_b_mode);
  CONSTANT acc_add_mode : integer := find_acc_add_mode(c_has_add);  
  CONSTANT acc_has_c_in : integer := find_acc_has_c_in(c_has_c_in, c_mult_round);
  CONSTANT acc_b_type : integer := find_acc_b_type(c_a_type, c_b_type);
  CONSTANT max_acc_out_width : integer := find_max_acc_out_width(c_p_width, 
                                                                 acc_b_type, 
                                                                 c_has_add,
                                                                 c_saturate,
                                                                 c_has_c_in,
                                                                 c_mult_round,
                                                                 c_mac_count,
                                                                 c_has_count);
  CONSTANT acc_out_width : integer := find_acc_out_width(max_acc_out_width, c_acc_width);
  CONSTANT acc_has_b_signed_pin : integer := find_acc_has_b_signed_pin(c_a_type);
  CONSTANT mult_mult_type  : integer := find_mult_type(c_b_mode,
                                                       c_mult_type);
  CONSTANT mult_use_luts : integer := find_mult_use_luts(mult_mult_type);
    CONSTANT mult_o_latency : integer := get_mult_gen_v5_0_latency(c_a_width,         -- c_a_width
                                                                   c_b_width,         -- c_b_width
                                                                   c_b_type,          -- c_b_type
                                                                   mult_has_a_signed, -- c_has_a_signed
                                                                   c_has_inreg,       -- c_reg_a_b_inputs
                                                                   c_mem_type,        -- c_mem_type
                                                                   mult_pipeline,     -- c_pipeline
                                                                   mult_mult_type,    -- c_mult_type
                                                                   mult_has_loadb,    -- c_has_loadb
                                                                   c_a_width,         -- c_baat
                                                                   c_b_value,         -- c_b_value
                                                                   c_a_type,          -- c_a_type
                                                                   0,                 -- c_has_swapb
                                                                   0,                 -- c_sqm_type
                                                                   c_has_aclr,        -- c_has_aclr
                                                                   c_has_sclr,        -- c_has_sclr
                                                                   c_has_ce,          -- c_has_ce
                                                                   c_sync_enable,     -- c_sync_enable
                                                                   1,       -- c_has_nd
                                                                   mult_has_q,        -- c_has_q
                                                                   mult_bram_addr_width);  
  CONSTANT mult_latency : integer := find_mult_latency(mult_o_latency,
                                                       mult_has_o,
                                                       mult_has_q);
  CONSTANT has_output_hold_reg : boolean := 
           find_has_output_hold_reg(c_output_hold, c_has_count, c_mac_count);
  CONSTANT discarded_acc_bits : integer := (c_acc_width - acc_out_width);
  CONSTANT mult_b_type : integer := find_mult_b_type(c_b_mode,
                                                     c_b_type,
                                                     c_b_width,
                                                     c_b_value);
  CONSTANT mult_b_width : integer := find_mult_b_width(c_b_mode,
                                                       c_b_type,
                                                       c_b_width,
                                                       c_b_value);
  CONSTANT mult_b_value : string := find_mult_b_value(c_b_mode,
                                                      c_b_type,
                                                      c_b_width,
                                                      mult_b_width,
                                                      c_b_value);
  SIGNAL acc_q : std_logic_vector(acc_out_width - 1 DOWNTO 0);
  SIGNAL m : std_logic_vector(c_out_width - 1 DOWNTO 0);     
  SIGNAL p : std_logic_vector(c_p_width - 1 DOWNTO 0);     
  SIGNAL acc_q_c_out : std_logic;
  SIGNAL acc_q_ovfl : std_logic; 
  SIGNAL acc_ovfl_null : std_logic;
  SIGNAL acc_c_out_null : std_logic;
  SIGNAL acc_b_out_null : std_logic;
  SIGNAL acc_q_b_out_null : std_logic;
  SIGNAL acc_s_null : std_logic_vector(acc_out_width - 1 DOWNTO 0);
  SIGNAL acc_ce : std_logic;
  SIGNAL acc_c_in : std_logic;
  SIGNAL mult_o : std_logic_vector(mult_out_width - 1 DOWNTO 0);
  SIGNAL mult_q : std_logic_vector(mult_out_width - 1 DOWNTO 0);
  SIGNAL mult_load_done_null : std_logic;
  SIGNAL tied_low : std_logic := '0';
  SIGNAL rfd_int : std_logic := '0'; 
  SIGNAL rffd_int : std_logic := '0';
  SIGNAL mult_nd : std_logic;
  SIGNAL mult_rdy_null : std_logic;
  SIGNAL p_round_bit : std_logic; 
  SIGNAL c_in_int : std_logic;
  SIGNAL load, load_int : std_logic;
  SIGNAL bypass, bypass_int : std_logic;
  SIGNAL rdy_del : std_logic := '0';
  SIGNAL add_int : std_logic ;
  SIGNAL a_signed_int : std_logic;
  TYPE   del_type IS ARRAY (0 TO mult_latency - 1) OF std_logic; 
  SIGNAL bypass_del : del_type;
  SIGNAL load_del : del_type;
  SIGNAL add_del : del_type;
  SIGNAL c_in_del : del_type;
  SIGNAL a_signed_del : del_type;
  SIGNAL counter_le_zero : std_logic := '0';
  SIGNAL counter_reg : integer := 0;
  SIGNAL state, next_state : std_logic_vector(2 DOWNTO 0) := (OTHERS => '0');
  SIGNAL mult_rfd : std_logic;
  SIGNAL rdy_int : std_logic := '0';
  TYPE   rdy_array_type IS ARRAY (0 TO mult_latency - 1) OF std_logic;
  TYPE   rfd_array_type IS ARRAY (0 TO 5) OF std_logic;
  SIGNAL rdy_array : rdy_array_type;
  SIGNAL rfd_array : rfd_array_type;
  SIGNAL count_eq_zero : boolean;
  SIGNAL count_eq_one : boolean;
  SIGNAL count_eq_zero_reg : boolean;
  SIGNAL count_eq_one_reg : boolean;   
  SIGNAL load_and_ce : std_logic; 
  SIGNAL ce_and_bypass : std_logic;
  SIGNAL count_reg : integer;
  SIGNAL b_int : std_logic_vector(mult_b_width - 1 DOWNTO 0) := (OTHERS => '0');
  SIGNAL acc_sclr : std_logic;
BEGIN
  i100 : IF c_b_mode = 0 GENERATE
    b_int <= (OTHERS => '0');
  END GENERATE i100;
  i101 : IF c_b_mode /= 0 GENERATE
    b_int <= b;
  END GENERATE i101;  
  -- ***********************************************************************************
  -- MULTIPLIER
  -- ***********************************************************************************

  m0 : mult_gen_v5_0 GENERIC MAP (c_a_width => c_a_width,
                                  c_b_width => mult_b_width,
                                  c_out_width => mult_out_width, -- from fn
                                  c_has_q => mult_has_q, -- from fn
                                  c_has_o => mult_has_o, -- from fn 
                                  c_reg_a_b_inputs => c_has_inreg,
                                  c_a_type => c_a_type,
                                  c_b_type => mult_b_type,
                                  c_b_constant => mult_b_constant,  -- from fn
                                  c_b_value => mult_b_value,
                                  c_has_aclr => c_has_aclr,
                                  c_has_sclr => c_has_sclr,
                                  c_has_ce => c_has_ce,
                                  c_has_a_signed => mult_has_a_signed, -- from fn
                                  c_standalone => 0,
                                  c_enable_rlocs => c_enable_rlocs,
                                  c_has_loadb => mult_has_loadb, -- from fn
                                  c_mem_type => c_mem_type, 
                                  -- defines whether the multiplier
                                  -- implementation uses single port
                                  -- block mem (256 cycles), dual port block mem,
                                  -- distributed mem (16 cycles)
                                  c_mult_type => mult_mult_type, -- from fn
                                  -- determines which kind of multiplier
                                  -- to instantiate:
                                  -- 0- lut based parallel (c_b_mode = c_variable)
                                  -- 1- Virtex II parallel (c_b_mode = c_variable)
                                  -- 2- parallel CCM (c_b_mode = c_fixed)
                                  -- 3- static RCCM (c_b_mode = c_dynamic)
                                  -- 4- dynamic RCCM -- two mem banks (unused)
                                  c_baat => c_a_width,   
                                  c_has_swapb => 0,
                                  c_has_nd => 1,            
                                  c_has_rdy => 0,
                                  c_has_rfd => 1,           
                                  c_sync_enable => c_sync_enable,
                                  c_pipeline => mult_pipeline, -- from fn        
                                  c_output_hold => 0, -- from fn
	                          c_has_load_done => 0,
                                  c_sqm_type => 0,
                                  c_has_b => mult_has_b, -- from fn
                                  c_stack_adders => 0,
                                  bram_addr_width => mult_bram_addr_width,
                                  c_mem_init_prefix => c_mem_init_prefix,
                                  c_use_luts => mult_use_luts
                                  )
                        PORT MAP (clk => clk,
                                  a => a,
                                  b => b_int, 
                                  o => mult_o,
                                  q => mult_q,
                                  a_signed => a_signed,
                                  loadb => load_b,
                                  load_done => mult_load_done_null,
                                  swapb => tied_low,
                                  ce => ce,
                                  aclr => aclr,
                                  sclr => sclr,
                                  rfd => mult_rfd,
                                  nd =>  mult_nd,
                                  rdy => mult_rdy_null);

    i1000 : IF (c_b_mode = c_dynamic) GENERATE
      rfd_int_gen : PROCESS 
      BEGIN
        -- clear array
        FOR i IN 0 TO 5 LOOP
          rfd_array(i) <= '0';
        END LOOP;
        WHILE true LOOP
          WAIT UNTIL ((clk'event) AND (clk = '1')) OR ((aclr = '1') AND (c_has_aclr = 1));
          -- Check aclr status
          IF (c_has_aclr = 1) AND (aclr = '1') THEN
            FOR i IN 0 TO 5 LOOP
              rfd_array(i) <= '0';
            END LOOP;
          -- Update rdy_del on rising edge of clock
          ELSE
            IF (c_has_sclr = 1) AND (sclr = '1') AND (c_sync_enable = 0) THEN
              FOR i IN 0 TO 5 LOOP
                rfd_array(i) <= '0';
              END LOOP;
            ELSE  
            IF ((c_has_ce = 1) AND (ce = '1')) OR (c_has_ce = 0) THEN 
              IF (c_has_sclr = 1) AND (sclr = '1') THEN    
                FOR i IN 0 TO 5 LOOP
                  rfd_array(i) <= '0';
                END LOOP;
              ELSE 
                FOR i IN 0 TO 4 LOOP
                  rfd_array(i+1) <= rfd_array(i);
                END LOOP;
                rfd_array(0) <= mult_rfd;
              END IF;
            END IF;
            END IF;
          END IF;
        END LOOP;
      END PROCESS rfd_int_gen;
      rfd_int <= mult_rfd AND rfd_array(0) AND rfd_array(1) AND rfd_array(2) AND rfd_array(3) AND rfd_array(4) AND rfd_array(5);
    END GENERATE i1000;      
  
    i1001 : IF (c_b_mode /= c_dynamic) GENERATE
      rfd_int <= mult_rfd;
    END GENERATE i1001;   

  select_mult_out : PROCESS (mult_q, mult_o)
  BEGIN
    IF (mult_has_q = 1) THEN
      p <= mult_q(mult_out_width - 1 DOWNTO mult_out_width - c_p_width);
      IF (c_mult_round = 1) THEN
        p_round_bit <= mult_q(0);
      END IF;
    END IF;
    
    IF (mult_has_o = 1) THEN
      p <= mult_o(mult_out_width - 1 DOWNTO mult_out_width - c_p_width);
      IF (c_mult_round = 1) THEN
        p_round_bit <= mult_o(0);
      END IF;
    END IF;
  END PROCESS select_mult_out; 
  
  mult_nd_gen : PROCESS (bypass, load)
  BEGIN
    IF (count_fixed_to_one) THEN
      mult_nd <= bypass;
    ELSE
      mult_nd <= load;
    END IF;
  END PROCESS mult_nd_gen;

  -- ***********************************************************************************
  --  ACUMULATOR 
  -- ***********************************************************************************

    -- Select c_in_del or p_round_bit
    i7 : IF (c_has_c_in = 1) GENERATE
      acc_c_in <= c_in_int;
    END GENERATE i7;
          
    i8 : IF (c_mult_round = 1) GENERATE   
      i81 : IF (c_has_add = 1) GENERATE
        acc_c_in <= (add_int AND p_round_bit) OR (NOT(add_int) AND NOT(p_round_bit));
      END GENERATE i81;
      i82 : IF (c_has_add = 0) GENERATE
        acc_c_in <= p_round_bit;
      END GENERATE i82;
    END GENERATE i8;   

   select_acc_ce : PROCESS (load_int, bypass_int, ce)
   BEGIN
     IF (c_has_ce = 1) THEN
       IF (count_fixed_to_one) THEN
         acc_ce <= bypass_int AND ce;
       ELSE
         acc_ce <= load_int AND ce;
       END IF;
     ELSE
       IF (count_fixed_to_one) THEN
         acc_ce <= bypass_int;
       ELSE
         acc_ce <= load_int;
       END IF;
     END IF;
   END PROCESS select_acc_ce;

   select_acc_sclr : PROCESS (sclr, ce)
   BEGIN
     IF (c_has_sclr = 1) THEN
       IF (c_has_ce = 1) AND (c_sync_enable = 1) THEN
         acc_sclr <= ce AND sclr;
       ELSE
         acc_sclr <= sclr;
       END IF;
     END IF;
   END PROCESS select_acc_sclr;
  
  -- Instantiate a ccumulator
  -- add_del, a_signed_del and bypass_del are control inputs
   a0 : c_accum_v5_1 GENERIC MAP(c_b_width => c_p_width,
                                 c_out_width => acc_out_width,
                                 c_low_bit => 0,
                                 c_high_bit => acc_out_width - 1,
                                 c_add_mode => acc_add_mode,
                                 c_b_type => acc_b_type, 
                                 c_b_constant => 0,
                                 c_b_value => gen_vect_str(c_p_width, '0'),          
                                 c_scale => 0, 
                                 c_saturate => c_saturate,
                                 c_ainit_val => gen_vect_str(acc_out_width, '0'),
                                 c_sinit_val => gen_vect_str(acc_out_width, '0'),
                                 c_bypass_enable => 1,
                                 c_bypass_low => 0,
                                 c_sync_enable => 0,
                                 c_sync_priority => 0,
                                 c_pipe_stages => 0,
                                 c_has_s => 0,  
                                 c_has_c_in => acc_has_c_in,
                                 c_has_c_out => 0, 
                                 c_has_q_c_out => c_has_c_out,
                                 c_has_b_in => 0,
                                 c_has_b_out => 0,
                                 c_has_q_b_out => 0,
                                 c_has_ovfl => 0,
                                 c_has_q_ovfl => c_has_ovfl,
                                 c_has_ce => 1,
                                 c_has_add => c_has_add,
                                 c_has_bypass => 1,
                                 c_has_bypass_with_cin => c_mult_round,
                                 c_has_b_signed => acc_has_b_signed_pin,
                                 c_has_aclr => c_has_aclr,
                                 c_has_aset => 0,
                                 c_has_ainit => 0,
                                 c_has_sclr => c_has_sclr,
                                 c_has_sset => 0,
                                 c_has_sinit => 0,
                                 c_enable_rlocs => c_enable_rlocs)
                       PORT MAP (b => p,
                                 clk => clk,
                                 add => add_int,
                                 ovfl => acc_ovfl_null, 
                                 q_ovfl => acc_q_ovfl,
                                 c_in => acc_c_in,
                                 c_out => acc_c_out_null,
                                 q_c_out => acc_q_c_out, 
                                 b_in => tied_low,
                                 b_out => acc_b_out_null,
                                 q_b_out => acc_q_b_out_null, 
                                 ce => acc_ce,
                                 b_signed => a_signed_int, 
                                 bypass => bypass_int,
                                 aclr => aclr,
                                 aset => tied_low,
                                 ainit => tied_low,
                                 sclr => acc_sclr,
                                 sset => tied_low,
                                 sinit => tied_low,
                                 s => acc_s_null,
                                 q => acc_q);

  -- If the number of bits discarded is less than the output width then some
  -- of the accumulator bits will be output.
  i9_0 : IF (discarded_acc_bits < c_out_width) GENERATE
    -- Assign a slice of the 'real' accumulator to the output.
    m(c_out_width - discarded_acc_bits - 1 DOWNTO 0) <= 
         acc_q(acc_out_width - 1 DOWNTO acc_out_width - (c_out_width - discarded_acc_bits));
        
    -- Sign extend the output.  If the (acc_out_width < c_acc_width) then sign extension
    -- will be needed 
    i9_1 : IF (discarded_acc_bits > 0) GENERATE
      -- Padding
      f1 : FOR i IN c_out_width - discarded_acc_bits TO c_out_width - 1 GENERATE
        i11 : IF (acc_b_type = c_signed) GENERATE
          m(i) <= acc_q(acc_out_width - 1);
        END GENERATE i11;
        i12 : IF (acc_b_type = c_unsigned) GENERATE
          m(i) <= '0';          
        END GENERATE i12;
      END GENERATE f1;  
    END GENERATE i9_1;
  END GENERATE i9_0;     
  
  -- If the number of bits discarded is greater than or equal to the output width
  i9_2 : IF (discarded_acc_bits >= c_out_width) GENERATE
    f1_1 : FOR i IN 0 TO c_out_width - 1 GENERATE
      i11_1 : IF (acc_b_type = c_signed) GENERATE
        m(i) <= acc_q(acc_out_width - 1);
      END GENERATE i11_1;
      i12_1 : IF (acc_b_type = c_unsigned) GENERATE
        m(i) <= '0';          
      END GENERATE i12_1;
    END GENERATE f1_1;
  END GENERATE i9_2;

  output_register : PROCESS(clk, aclr, m, acc_q_c_out, acc_q_ovfl)
    VARIABLE ce_output_hold : std_logic;
  BEGIN
    IF (c_output_hold = 1) AND NOT(count_fixed_to_one) THEN  
      IF (c_has_aclr = 1) AND (aclr = '1') THEN
        q <= (OTHERS => '0');
        c_out <= '0';
        ovfl <= '0';
      ELSIF (clk = '1') AND (clk'event) THEN
        IF (c_has_sclr = 1) AND (sclr = '1') AND (c_sync_enable = 0) THEN
          q <= (OTHERS => '0');
          c_out <= '0';
          ovfl <= '0';
        ELSE  
        IF (c_has_ce = 1) THEN
          ce_output_hold := ce AND rdy_del;
        ELSE
          ce_output_hold := rdy_del;
        END IF;                 
        IF (ce_output_hold = '1') THEN
          IF (c_has_sclr = 1) AND (sclr = '1') THEN
            q <= (OTHERS => '0');
            c_out <= '0';
            ovfl <= '0';
          ELSE
            q <= m; 
            IF (c_has_c_out = 1) THEN
              c_out <= acc_q_c_out;
            END IF;
            IF (c_has_ovfl = 1) THEN
              ovfl <= acc_q_ovfl;  
            END IF;
          END IF; 
        END IF;
      END IF;
      END IF;
    ELSE
      q <= m;
      c_out <= acc_q_c_out;
      ovfl <= acc_q_ovfl;
    END IF;
  END PROCESS output_register;
  
  -- ***********************************************************************************
  -- MAC CONTROL 
  -- ***********************************************************************************
 
  i0 : IF count_fixed_to_zero GENERATE
    mac_control : PROCESS (bypass_int)
    BEGIN
      IF (c_has_rffd = 1) THEN
        rffd <= '0';
      END IF;
      IF (c_has_rdy = 1) OR (c_output_hold = 1) THEN
        rdy_del <= bypass_int;
      END IF;
    END PROCESS mac_control;
  END GENERATE i0;
  
  i1 : IF count_fixed_to_one GENERATE
    mac_control : PROCESS (rfd_int, clk, aclr)
    BEGIN
      IF (c_has_rffd = 1) THEN
        rffd <= rfd_int;
      END IF;
      IF (c_has_rdy = 1) OR (c_output_hold = 1) THEN
        IF (c_has_aclr = 1) AND (aclr = '1') THEN
          rdy_del <= '0';
        ELSIF (clk = '1') AND (clk'event) THEN
          IF (c_has_sclr = 1) AND (sclr = '1') AND (c_sync_enable = 0) THEN
            rdy_del <= '0';
          ELSE  
          IF ((c_has_ce = 1) AND (ce = '1')) OR (c_has_ce = 0) THEN 
            IF (c_has_sclr = 1) AND (sclr = '1') THEN
              rdy_del <= '0';
            ELSE
              rdy_del <= bypass_int;
            END IF;
          END IF;
          END IF;
        END IF;
      END IF;  
    END PROCESS mac_control;
  END GENERATE i1;
  
  i2 : IF count_fixed_gt_one GENERATE 
    counter : PROCESS (clk, aclr)
    BEGIN
      IF (c_has_aclr = 1) AND (aclr = '1') THEN
        count_reg <= 0;
      ELSIF (clk = '1') AND (clk'event) THEN
        IF (c_has_sclr = 1) AND (sclr = '1') AND (c_sync_enable = 0) THEN
          count_reg <= 0;
        ELSE  
        IF ((c_has_ce = 1) AND (ce = '1')) OR (c_has_ce = 0) THEN      
          IF (c_has_sclr = 1) AND (sclr = '1') THEN
            count_reg <= 0;
          ELSIF (bypass = '1') THEN
            count_reg <= c_mac_count - 2;
          ELSIF (load = '1') AND (count_reg > 0) THEN           
              count_reg <= count_reg - 1;
          END IF;
        END IF;
        END IF;
      END IF;
    END PROCESS counter;

    counter_equal_zero : PROCESS(count_reg) 
    BEGIN
      IF (count_reg = 0) THEN
        counter_le_zero <= '0';
      ELSE
        counter_le_zero <= '1';
      END IF;
    END PROCESS counter_equal_zero;

    mac_fsm : PROCESS (state, bypass, load, counter_le_zero)
    BEGIN
      rffd_int <= '0';
      rdy_int <= '0';     
      CASE state IS
      WHEN "001" => -- MAC
        IF (bypass = '0') AND (load = '0') AND (counter_le_zero = '0') THEN
          next_state <= "010";
        ELSIF (bypass = '0') AND (load = '1') AND (counter_le_zero = '0') THEN
          next_state <= "100";
          rffd_int <= '1';
        ELSE
          next_state <= "001";
          rdy_int <= bypass;
        END IF;
      WHEN "010" => -- LAST
        IF (bypass = '1') THEN
          next_state <= "001";
          rdy_int <= '1';
        ELSIF (load = '1') THEN
          next_state <= "100";
          rffd_int <= '1';
        ELSE 
          next_state <= "010";
        END IF;
      WHEN "100" => -- END
        IF (bypass = '0') THEN
          next_state <= "000";
          rffd_int <= '1';
          rdy_int <= '1';
        ELSE
          next_state <= "001";
          rdy_int <= '1';
        END IF;
      WHEN "000" => -- MAC
        IF (bypass = '1') THEN
          next_state <= "001";
        ELSE
          next_state <= "000";
          rffd_int <= '1';
        END IF;
      WHEN "011" | "101" | "110" | "111" =>
        ASSERT false
        REPORT "ERROR in mac_v2_0 behavioral model: Invalid state."
        SEVERITY failure;
      WHEN others =>
        null;
      END CASE;
    END PROCESS mac_fsm;
         
    mac_reg : PROCESS (clk, aclr)
    BEGIN
      IF (c_has_aclr = 1) AND (aclr = '1') THEN
        state <= "000";
        IF (c_has_rffd = 1) THEN 
          rffd <= '0';
        END IF;
      ELSIF (clk = '1') AND (clk'event) THEN
        IF (c_has_sclr = 1) AND (sclr = '1') AND (c_sync_enable = 0) THEN
          state <= "000";             
          IF (c_has_rffd = 1) THEN
            rffd <= '0';
          END IF;
        ELSE    
        IF ((c_has_ce = 1) AND (ce = '1')) OR (c_has_ce = 0) THEN 
          IF (c_has_sclr = 1) AND (sclr = '1') THEN       
            state <= "000";             
            IF (c_has_rffd = 1) THEN
              rffd <= '0';
            END IF;
          ELSE  
            state <= next_state;
            IF (c_has_rffd = 1) THEN
              rffd <= rffd_int;
            END IF;
          END IF;
        END IF;
        END IF;
      END IF;
    END PROCESS mac_reg;
     
    i10 : IF (mult_latency = 0) GENERATE
      rdy_del <= rdy_int;
    END GENERATE i10;

    i11 : IF (mult_latency >= 1) GENERATE
      rdy_gen : PROCESS 
      BEGIN
        -- clear array
        FOR i IN 0 TO (mult_latency - 1) LOOP
          rdy_array(i) <= '0';
        END LOOP;
        WHILE true LOOP
          WAIT UNTIL ((clk'event) AND (clk = '1')) OR ((aclr = '1') AND (c_has_aclr = 1));
          -- Check aclr status
          IF (c_has_aclr = 1) AND (aclr = '1') THEN
            FOR i IN 0 TO (mult_latency - 1) LOOP
              rdy_array(i) <= '0';
            END LOOP;
          -- Update rdy_del on rising edge of clock
          ELSE
            IF (c_has_sclr = 1) AND (sclr = '1') AND (c_sync_enable = 0) THEN
              FOR i IN 0 TO (mult_latency - 1) LOOP
                rdy_array(i) <= '0';
              END LOOP;
            ELSE  
            IF ((c_has_ce = 1) AND (ce = '1')) OR (c_has_ce = 0) THEN 
              IF (c_has_sclr = 1) AND (sclr = '1') THEN    
                FOR i IN 0 TO (mult_latency - 1) LOOP
                  rdy_array(i) <= '0';
                END LOOP;
              ELSE 
                FOR i IN 0 TO (mult_latency - 2) LOOP
                  rdy_array(i+1) <= rdy_array(i);
                END LOOP;
                rdy_array(0) <= rdy_int;              
              END IF;
            END IF;
            END IF;
          END IF;
        END LOOP;
      END PROCESS rdy_gen;  
      rdy_del <= rdy_array(mult_latency - 1);        
    END GENERATE i11;      
  END GENERATE i2;
  
  i3 : IF (c_has_count = 1) GENERATE
    load_ce : PROCESS (load, ce)
    BEGIN
      IF (c_has_ce = 1) THEN
        load_and_ce <= load AND ce;
      ELSE
        load_and_ce <= load;
      END IF;
    END PROCESS load_ce;
    
    ce_bypass : PROCESS (bypass, ce)
    BEGIN
      IF (c_has_ce = 1) THEN
        ce_and_bypass <= bypass AND ce;
      ELSE
        ce_and_bypass <= bypass;
      END IF;
    END PROCESS ce_bypass;
    
    counter : PROCESS (clk, aclr)
    BEGIN
      IF (c_has_aclr = 1) AND (aclr = '1') THEN
        counter_reg <= 0;
      ELSIF (clk = '1') AND (clk'event) THEN
        IF (c_has_sclr = 1) AND (sclr = '1') AND (c_sync_enable = 0) THEN
           counter_reg <= 0;
        ELSE   
        IF (load_and_ce = '1') THEN      
          IF (c_has_sclr = 1) AND (sclr = '1') THEN
            counter_reg <= 0;            
          ELSIF (bypass = '1') THEN
            counter_reg <= std_logic_vector_2_int(count, c_count_width) - 2;
          ELSE            
            counter_reg <= counter_reg - 1;
          END IF;
        END IF;
        END IF;
      END IF;
    END PROCESS counter;

    counter_equal_zero : PROCESS(count, counter_reg, bypass) 
    BEGIN
      IF (bypass = '0') AND (counter_reg = 0) THEN
        counter_le_zero <= '0';
      ELSIF (bypass = '1') AND (std_logic_vector_2_int(count, c_count_width) <= 1) THEN
        counter_le_zero <= '0';
      ELSE
        counter_le_zero <= '1';
      END IF;
    END PROCESS counter_equal_zero;

    count_status : PROCESS(ce, count, bypass, clk)
      VARIABLE count_int : integer;
      VARIABLE bypass_and_ce : std_logic;
    BEGIN
      count_int := std_logic_vector_2_int(count, c_count_width);
      IF (c_has_ce = 1) THEN
        bypass_and_ce := bypass AND ce;
      ELSE
        bypass_and_ce := bypass;
      END IF;  

      IF (bypass_and_ce = '1') THEN
        IF (clk = '1') AND (clk'event) THEN
          IF (count_int = 0) THEN
            count_eq_zero_reg <= true;
            count_eq_one_reg <= false;
          ELSIF (count_int = 1) THEN
            count_eq_zero_reg <= false;
            count_eq_one_reg <= true;
          ELSE
            count_eq_zero_reg <= false;
            count_eq_one_reg <= false;   
          END IF;
        END IF;  
        IF (count_int = 0) THEN
          count_eq_zero <= true;
          count_eq_one <= false;
        ELSIF (count_int = 1) THEN
          count_eq_zero <= false;
          count_eq_one <= true;
         ELSE
          count_eq_zero <= false;
          count_eq_one <= false;   
        END IF;
      END IF;
 
     IF (bypass_and_ce = '0')  THEN
       count_eq_zero <= count_eq_zero_reg;
       count_eq_one <= count_eq_one_reg;
     END IF;  
    END PROCESS count_status;
             
    mac_fsm : PROCESS (state, load, bypass, count_eq_zero, count_eq_one, counter_le_zero)
    BEGIN
     rffd_int <= '0';
     rdy_int <= '0';     
     CASE state IS
     WHEN "001" => -- MAC         
       IF (NOT(count_eq_zero) AND NOT(count_eq_one)) AND (bypass = '0') AND (counter_le_zero = '0') THEN
         IF (load = '0') THEN
           next_state <= "010";
         ELSIF (load = '1') THEN
           next_state <= "100";
           rffd_int <= '1';
         END IF;
       ELSIF (count_eq_zero OR count_eq_one) AND (bypass = '0') THEN
         next_state <= "000";
         IF (count_eq_one) THEN
           rdy_int <= '1';
         END IF;
       ELSE
         next_state <= "001";
         rdy_int <= bypass;
       END IF;
     WHEN "010" => -- LAST
       IF (bypass = '1') THEN
         next_state <= "001";
         rdy_int <= '1';
       ELSIF (load = '1') THEN
         next_state <= "100";
         rffd_int <= '1';
       ELSE
         next_state <= "010";
       END IF;    
     WHEN "100" => -- END
       IF (bypass = '1') THEN
         next_state <= "001";
         rdy_int <= '1';
       ELSE
         next_state <= "000";
         rffd_int <= '1';
         rdy_int <= '1';
       END IF;
     WHEN "000" => -- MAC
       IF (bypass = '1') OR count_eq_zero THEN 
          next_state <= "001";
       ELSE
         next_state <= "000";
         rffd_int <= '1';
       END IF;
     WHEN "011" | "101" | "110" | "111" =>
       ASSERT false
       REPORT "ERROR in mac_v2_0 behavioral model: Invalid state."
       SEVERITY failure;
     WHEN others =>
       null;
     END CASE;
     -- Force rffd high if the count value is set to 1
     IF count_eq_one THEN
       rffd_int <= '1';
     END IF;
     
     -- Force state to one if count is 0
     IF count_eq_zero THEN
       next_state <= "001";
     END IF;          
    END PROCESS mac_fsm;
    
    mac_reg : PROCESS (clk, aclr)
    BEGIN
      IF (c_has_aclr = 1) AND (aclr = '1') THEN
        state <= "000";
        IF (c_has_rffd = 1) THEN 
          rffd <= '0';
        END IF;
      ELSIF (clk = '1') AND (clk'event) THEN
        IF (c_has_sclr = 1) AND (sclr = '1') AND (c_sync_enable = 0) THEN
          state <= "000";
          IF (c_has_rffd = 1) THEN
            rffd <= '0';
          END IF;
        ELSE  
        IF ((c_has_ce = 1) AND (ce = '1')) OR (c_has_ce = 0) THEN 
          IF (c_has_sclr = 1) AND (sclr = '1') THEN       
            state <= "000";
            IF (c_has_rffd = 1) THEN
              rffd <= '0';
            END IF;
          ELSE  
            state <= next_state;
            IF (c_has_rffd = 1) THEN
              rffd <= rffd_int;
            END IF;
          END IF;
        END IF;
        END IF;
      END IF;
    END PROCESS mac_reg;
    
    i12 : IF (mult_latency = 0) GENERATE
      rdy_del <= rdy_int;
    END GENERATE i12;

    i13 : IF (mult_latency >= 1) GENERATE
      rdy_gen : PROCESS 
      BEGIN
        -- clear array
        FOR i IN 0 TO (mult_latency - 1) LOOP
          rdy_array(i) <= '0';
        END LOOP;
        WHILE true LOOP
          WAIT UNTIL ((clk'event) AND (clk = '1')) OR ((aclr = '1') AND (c_has_aclr = 1));
          -- Check aclr status
          IF (c_has_aclr = 1) AND (aclr = '1') THEN
            FOR i IN 0 TO (mult_latency - 1) LOOP
              rdy_array(i) <= '0';
            END LOOP;
          -- Update rdy_del on rising edge of clock
          ELSE
            IF (c_has_sclr = 1) AND (sclr = '1') AND (c_sync_enable = 0) THEN
              FOR i IN 0 TO (mult_latency - 1) LOOP
                rdy_array(i) <= '0';
              END LOOP;
            ELSE  
            IF ((c_has_ce = 1) AND (ce = '1')) OR (c_has_ce = 0) THEN 
              IF (c_has_sclr = 1) AND (sclr = '1') THEN    
                FOR i IN 0 TO (mult_latency - 1) LOOP
                  rdy_array(i) <= '0';
                END LOOP;
              ELSE 
                FOR i IN 0 TO (mult_latency - 2) LOOP
                  rdy_array(i+1) <= rdy_array(i);
                END LOOP;
                rdy_array(0) <= rdy_int;              
              END IF;
            END IF;
            END IF;
          END IF;
        END LOOP;
      END PROCESS rdy_gen;  
      rdy_del <= rdy_array(mult_latency - 1);        
    END GENERATE i13; 

  END GENERATE i3;  
    
  -- ***********************************************************************************
  --  MAC DELAY CONTROL 
  -- *********************************************************************************** 

  i12 : IF (mult_latency = 0) GENERATE
    bypass_int <= bypass;  
    load_int <= load;
    add_int <= add;  
    c_in_int <= c_in;  
    a_signed_int <= a_signed;        
  END GENERATE i12;
  
  i13 : IF (mult_latency >= 1) GENERATE
    delay_control : PROCESS
    BEGIN
      FOR i IN 0 TO (mult_latency - 1) LOOP
        bypass_del(i) <= '0';
        load_del(i) <= '0';
        add_del(i) <= '0';
        c_in_del(i) <= '0';
        a_signed_del(i) <= '0';          
      END LOOP;
     
      WHILE true LOOP
      WAIT UNTIL ((clk'event) AND (clk = '1')) OR ((aclr = '1') AND (c_has_aclr = 1));      
      -- Check aclr status       
      IF (c_has_aclr = 1) AND (aclr = '1') THEN
        FOR i IN 0 TO (mult_latency - 1) LOOP
          bypass_del(i) <= '0';
          load_del(i) <= '0';
          add_del(i) <= '0';
          c_in_del(i) <= '0';
          a_signed_del(i) <= '0';          
        END LOOP;
      ELSIF (clk = '1') AND (clk'event) THEN
        IF (c_has_sclr = 1) AND (sclr = '1') AND (c_sync_enable = 0) THEN
            FOR i IN 0 TO (mult_latency - 1) LOOP
              bypass_del(i) <= '0';
              load_del(i) <= '0';
              add_del(i) <= '0';
              c_in_del(i) <= '0';
              a_signed_del(i) <= '0';      
            END LOOP;
        ELSE    
        IF ((c_has_ce = 1) AND (ce = '1')) OR (c_has_ce = 0) THEN 
          IF (c_has_sclr = 1) AND (sclr = '1') THEN    
            FOR i IN 0 TO (mult_latency - 1) LOOP
              bypass_del(i) <= '0';
              load_del(i) <= '0';
              add_del(i) <= '0';
              c_in_del(i) <= '0';
              a_signed_del(i) <= '0';                
            END LOOP;
          ELSE 
            FOR i IN 0 TO (mult_latency - 2) LOOP
              bypass_del(i+1) <= bypass_del(i);
              load_del(i+1) <= load_del(i);
              add_del(i+1) <= add_del(i);
              c_in_del(i+1) <= c_in_del(i);
              a_signed_del(i+1) <= a_signed_del(i);               
            END LOOP;
            bypass_del(0) <= bypass;
            load_del(0) <= load;
            add_del(0) <= add;
            c_in_del(0) <= c_in;
            a_signed_del(0) <= a_signed;                  
          END IF;
        END IF;
        END IF;
      END IF;
    END LOOP;
    END PROCESS delay_control;  
    bypass_int <= bypass_del(mult_latency-1);  
    load_int <= load_del(mult_latency-1);
    add_int <= add_del(mult_latency-1);  
    c_in_int <= c_in_del(mult_latency-1);  
    a_signed_int <= a_signed_del(mult_latency-1);

  END GENERATE i13; 

  i6 : IF (c_has_rdy = 1) GENERATE
    i6_1 : IF has_output_hold_reg AND NOT(count_fixed_to_one) GENERATE
      rdy_output : PROCESS (clk, aclr)
      BEGIN
        IF (c_has_aclr = 1) AND (aclr = '1') THEN
          rdy <= '0';
        ELSIF (clk = '1') AND clk'event THEN
          IF (c_has_sclr = 1) AND (sclr = '1') AND (c_sync_enable = 0) THEN
            rdy <= '0';
          ELSE  
          IF ((c_has_ce = 1) AND (ce = '1')) OR (c_has_ce = 0) THEN
            IF (c_has_sclr = 1) AND (sclr = '1') THEN
              rdy <= '0';
            ELSE
              rdy <= rdy_del;
            END IF;
          END IF;
          END IF;
        END IF;
      END PROCESS rdy_output;
    END GENERATE i6_1;
  
    i6_2 : IF  count_fixed_to_one OR NOT(has_output_hold_reg) GENERATE
      rdy <= rdy_del;
    END GENERATE i6_2;
  END GENERATE i6;
  
  bypass_gen : PROCESS (fd, nd, rfd_int)
  BEGIN
    bypass <= fd AND nd AND rfd_int;
  END PROCESS bypass_gen;

  i70 : IF NOT(count_fixed_to_one) GENERATE
    load_gen : PROCESS (nd, rfd_int) 
    BEGIN
      load <= nd AND rfd_int;
    END PROCESS load_gen;
  END GENERATE i70;
  
  rfd <= rfd_int;
  
END behavioral; 
 
LIBRARY std;
USE std.standard.ALL;

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_signed.all;

LIBRARY xilinxcorelib;
USE xilinxcorelib.prims_constants_v5_0.ALL;

LIBRARY xilinxcorelib;
USE xilinxcorelib.mac_pack_behav_v2_0.all;     
   
-- Removed, as this is defined in top level of structure
-- Needs to be included for netlist simulations 
 ENTITY mac_v2_0 IS
   GENERIC (c_family_int    : integer := 0;
            c_a_width       : integer := 8;
            c_b_width       : integer := 8;
            c_mult_type     : integer := 0;
            c_mem_type      : integer := 0;
            c_count_width   : integer := 4;
            c_p_width       : integer := 16;
            c_mult_round    : integer := 0; 
            c_acc_width     : integer := 16;
            c_out_width     : integer := 16;
            c_a_type        : integer := 0;
            c_b_type        : integer := 0;
            c_b_mode        : integer := 0;
            c_b_value       : string := "0";
            c_saturate      : integer := 0;
            c_sync_enable   : integer := 0;
            c_has_inreg     : integer := 0;
            c_pipe_level    : string := "0";
            c_optimization  : integer := 0;
            c_has_count     : integer := 0;
            c_mac_count     : integer := 0;
            c_mem_init_prefix : string := "";
            c_output_hold   : integer := 0;
            c_has_rffd      : integer := 0;
            c_has_rdy       : integer := 1;
            c_has_c_in      : integer := 0;
            c_has_c_out     : integer := 0;
            c_has_ovfl      : integer := 0;
            c_has_ce        : integer := 1;
            c_has_add       : integer := 0;
            c_has_a_signed  : integer := 0;
            c_has_load_b    : integer := 0;
            c_has_aclr      : integer := 0;
            c_has_sclr      : integer := 1;
            c_standalone    : integer := 1;           
            c_enable_rlocs  : integer := 1);
 
   PORT (clk       : IN  std_logic := '0';
         a         : IN  std_logic_vector((c_a_width - 1) DOWNTO 0) := (OTHERS => '0');
         b         : IN  std_logic_vector((c_b_width - 1) DOWNTO 0) := (OTHERS => '0');
         c_in      : IN  std_logic := '0';
         fd        : IN  std_logic := '0';
         nd        : IN  std_logic := '0';
         a_signed  : IN  std_logic := '0';
         load_b    : IN  std_logic := '0';
         add       : IN  std_logic := '1';
         count     : IN  std_logic_vector((c_count_width - 1) DOWNTO 0) := (OTHERS => '0'); 
         aclr      : IN  std_logic := '0';
         sclr      : IN  std_logic := '0';
         ce        : IN  std_logic := '1';
         q         : OUT std_logic_vector((c_out_width-1) DOWNTO 0);
         c_out     : OUT std_logic;
         ovfl      : OUT std_logic;
         rdy       : OUT std_logic;
         rfd       : OUT std_logic;
         rffd      : OUT std_logic);
 END mac_v2_0;            

ARCHITECTURE behavioral OF mac_v2_0 IS
  constant c_distributed : integer := 0;  -- ip var: c_distributed
  constant c_sp_block    : integer := 1;  -- ip var: c_sp_block
  constant c_dp_block    : integer := 2;  -- ip var: c_dp_block
  constant PARALLEL     : integer := 0;  -- ip var: c_parallel
  constant V2_PARALLEL  : integer := 1;  -- ip_var: c_v2_parallel

  -- port b modes
  -- These are in mac_pack_behav_v2_0.vhd but have
  -- to be redefined here due to a Modelsim bug 
  -- (does not like more than 1 package containing the 
  -- same constants)
  CONSTANT c_fixed           : integer := 0;
  CONSTANT c_variable        : integer := 1;
  CONSTANT c_dynamic         : integer := 2;

 COMPONENT mac_behav_v2_0 
  GENERIC (c_family_int    : integer;
           c_a_width       : integer;
           c_b_width       : integer;
           c_mult_type     : integer;
           c_mem_type      : integer;          
           c_count_width   : integer;
           c_p_width       : integer;
           c_mult_round    : integer; 
           c_acc_width     : integer;
           c_out_width     : integer;
           c_a_type        : integer;
           c_b_type        : integer;      
           c_b_mode        : integer;
           c_b_value       : string;
           c_saturate      : integer;
           c_sync_enable   : integer;
           c_has_inreg     : integer;
           c_pipe_level    : string;
           c_optimization  : integer;
           c_has_count     : integer;
           c_mac_count     : integer;
           c_mem_init_prefix : string;
           c_output_hold   : integer;
           c_has_rffd      : integer;
           c_has_rdy       : integer;
           c_has_c_in      : integer;
           c_has_c_out     : integer;
           c_has_ovfl      : integer;
           c_has_ce        : integer;
           c_has_add       : integer;
           c_has_aclr      : integer;
           c_has_sclr      : integer;
           c_standalone    : integer;
           c_enable_rlocs  : integer);

  PORT (clk       : IN  std_logic := '0';
        a         : IN  std_logic_vector((c_a_width - 1) downto 0) := (OTHERS => '0');
        b         : IN  std_logic_vector((c_b_width - 1) downto 0) := (OTHERS => '0');
        c_in      : IN  std_logic := '0';
        fd        : IN  std_logic := '0';
        nd        : IN  std_logic := '0';
        a_signed  : IN  std_logic := '0';
        load_b    : IN  std_logic := '0';
        add       : IN  std_logic := '0';
        count     : IN  std_logic_Vector((c_count_width - 1) downto 0) := (OTHERS => '0'); 
        aclr      : IN  std_logic := '0';
        sclr      : IN  std_logic := '0';
        ce        : IN  std_logic := '0';
        q         : OUT std_logic_vector((c_out_width-1) downto 0);
        c_out     : OUT std_logic;
        ovfl      : OUT std_logic;
        rdy       : OUT std_logic;
        rfd       : OUT std_logic;
        rffd      : OUT std_logic);
  END COMPONENT;

  -- Function to check for valid generics
  FUNCTION check_generics RETURN boolean IS
  BEGIN
    -- Can't use "SEVERITY failure" as this crashes ModelSim
    
    -- c_a_width
    ASSERT NOT(((c_a_width < 1) OR (c_a_width > 64)) AND 
               ((c_a_type = c_unsigned) OR (c_a_type = c_pin)))          
      REPORT "ERROR : MAC - c_a_width must be in the range 1 to 64."
      SEVERITY error;
      
    ASSERT NOT(((c_a_width < 2) OR (c_a_width > 64)) AND 
              (c_a_type = c_signed))          
      REPORT "ERROR : MAC - c_a_width must be in the range 2 to 64."
      SEVERITY error;      
           
    -- c_b_width
    ASSERT NOT(((c_b_width < 1) OR (c_b_width > 64)) AND 
               (c_b_type = c_unsigned))
      REPORT "ERROR : MAC - c_b_width must be in the range 1 to 64."
      SEVERITY error;
      
    ASSERT NOT(((c_b_width < 2) OR (c_b_width > 64)) AND 
               (c_b_type = c_signed))
      REPORT "ERROR : MAC - c_b_width must be in the range 2 to 64."
      SEVERITY error;
          
    -- c_count_width
    ASSERT (c_count_width >= 1) AND (c_count_width <= 32)
      REPORT "ERROR : MAC - c_count_width must be in the range 1 to 32." 
      SEVERITY error;
    
    -- c_p_width 
    -- unsigned output without  
    ASSERT NOT(((c_p_width < 1) OR (c_p_width > 128)) AND
               ((c_a_type = c_unsigned) AND (c_b_type = c_unsigned)))           
      REPORT "ERROR : MAC - c_p_width must be in the range 1 to 128." 
      SEVERITY error;
    -- signed output.  Output width may not be < 2, due to 
    -- accumulator input restrictions
    ASSERT NOT(((c_p_width < 2) OR (c_p_width > 128)) AND 
               ((c_a_type = c_signed) OR (c_b_type = c_signed)))           
      REPORT "ERROR : MAC - c_p_width must be in the range 2 to 128." 
      SEVERITY error;
   
    -- special case; output is signed but may be (c_a_width + c_b_width + 1) wide
    ASSERT NOT(((c_p_width < 2) OR (c_p_width > 129)) AND
           (c_a_type = c_pin) AND (c_b_type = c_unsigned))     
      REPORT "ERROR : MAC - c_p_width must be in the range 2 to 129." 
      SEVERITY error;
          
    -- c_acc_width
    ASSERT NOT(((c_acc_width < c_p_width) OR (c_acc_width > 129)) AND
              (c_has_count = 0) AND (c_mac_count = 1))          
      REPORT "ERROR : MAC - c_acc_width must be in the range c_p_width to 129." 
      SEVERITY error;
   
    ASSERT NOT((((c_acc_width < c_p_width) OR (c_acc_width > 258)) AND
              NOT((c_has_count = 0) AND (c_mac_count = 1))))        
      REPORT "ERROR : MAC - c_acc_width must be in the range c_p_width to 258." 
      SEVERITY error;    
      
    -- c_out_width
    -- This takes the MSB's of the accumulator output and must therefore not 
    -- be larger that c_acc_width
    ASSERT NOT((c_acc_width < 1) OR (c_out_width > c_acc_width)) 
      REPORT "ERROR : MAC - c_out_width must be in the range 1 to c_acc_width." 
      SEVERITY error;
      
    -- c_mult_round and c_has_c_in
    ASSERT NOT((c_mult_round = 1) AND (c_has_c_in = 1))
      REPORT "ERROR : MAC - multiplier rounding and carry input can not be selected at the same time."
      SEVERITY error;

    -- c_mult_round and c_has_add
    ASSERT NOT((c_mult_round = 1) AND (c_has_add = 1))
      REPORT "ERROR : MAC - multiplier rounding and add pin can not be selected at the same time."
      SEVERITY error;
    
    -- for c_mult_round, c_p_width < c_a_width + c_b_width.
    -- if c_a_width > 1 and c_b_width > 1
    ASSERT NOT((c_mult_round = 1) AND
               (c_p_width >= c_a_width + c_b_width) AND
               (c_a_width > 1) AND 
               (c_b_width > 1) AND
               NOT((c_a_type = c_pin) AND (c_b_type = c_unsigned)))
      REPORT "ERROR : MAC - multiplier rounding can not be selected unless c_p_width < c_a_width + c_b_width."
      SEVERITY error;
      
    ASSERT NOT((c_mult_round = 1) AND
               (c_p_width >= c_a_width + c_b_width) AND
               (c_a_width > 1) AND 
               (c_b_width > 1) AND
               (c_a_type = c_pin) AND (c_b_type = c_unsigned))
      REPORT "ERROR : MAC - multiplier rounding can not be selected unless c_p_width < c_a_width + c_b_width + 1."
      SEVERITY error;
                
    -- for c_mult_round, c_p_width < c_b_width
    -- if c_a_width = 1 and c_b_width > 1
    ASSERT NOT((c_mult_round = 1) AND 
               (c_p_width >= c_b_width) AND 
               (c_a_width = 1) AND 
               (c_b_width > 1) AND 
               NOT((c_a_type = c_pin) AND (c_b_type = c_unsigned)))
      REPORT "ERROR : MAC - multiplier rounding can not be selected unless c_p_width < c_b_width."
      SEVERITY error;

    ASSERT NOT((c_mult_round = 1) AND 
               (c_p_width >= c_b_width) AND 
               (c_a_width = 1) AND 
               (c_b_width > 1) AND 
               (c_a_type = c_pin) AND (c_b_type = c_unsigned))
      REPORT "ERROR : MAC - multiplier rounding can not be selected unless c_p_width < c_b_width + 1."
      SEVERITY error;

    -- for c_mult_round, c_p_width < c_a_width
    -- if c_a_width > 1 and c_b_width = 1
    ASSERT NOT((c_mult_round = 1) AND 
              (c_p_width >= c_a_width) AND 
              (c_a_width > 1) AND 
              (c_b_width = 1) AND
              NOT((c_a_type = c_pin) AND (c_b_type = c_unsigned)))            
      REPORT "ERROR : MAC - multiplier rounding can not be selected unless c_p_width < c_a_width."
      SEVERITY error;  
      
    ASSERT NOT((c_mult_round = 1) AND 
              (c_p_width >= c_a_width) AND 
              (c_a_width > 1) AND 
              (c_b_width = 1) AND
              (c_a_type = c_pin) AND (c_b_type = c_unsigned))            
      REPORT "ERROR : MAC - multiplier rounding can not be selected unless c_p_width < c_a_width + 1."
      SEVERITY error;          

    -- c_mult_round and c_p_width = 1
    -- for c_a_width = 1 and c_b_width = 1
    ASSERT NOT((c_mult_round = 1) AND (c_p_width = c_a_width) AND 
              (c_a_width > 1) AND (c_b_width = 1))
      REPORT "ERROR : MAC - multiplier rounding can not be selected if c_a_width = 1 and c_b_width = 1."
      SEVERITY error;     
      
    -- c_mac_count 
    ASSERT NOT((c_mac_count < 0) OR (c_mac_count > 2147483647))
      REPORT "ERROR : MAC - c_mac_count must be in the range 1 to 2^31 - 1." 
      SEVERITY error;
      
    -- aclr and saturate
    ASSERT NOT((c_has_aclr = 1) AND (c_saturate = 1))
      REPORT "ERROR : MAC - asynchronous clear and saturation can not be selected at the same time."   
      SEVERITY error;
      
    -- ovfl and saturate
    ASSERT NOT((c_has_ovfl = 1) AND (c_saturate = 1))
      REPORT "ERROR : MAC - overflow and saturation can not be selected at the same time."   
      SEVERITY error;

    -- c_out and saturate
    ASSERT NOT((c_has_c_out = 1) AND (c_saturate = 1))
      REPORT "ERROR : MAC - carry output and saturation can not be selected at the same time."   
      SEVERITY error;

    -- c_out 
    ASSERT (c_has_c_out = 0) OR ((c_a_type = c_unsigned) AND (c_b_type = c_unsigned))
      REPORT "ERROR : MAC - carry output may not be selected unless a and b inputs are both unsigned."   
      SEVERITY error;

    -- ovfl 
    ASSERT (c_has_ovfl = 0) OR NOT((c_a_type = c_unsigned) AND (c_b_type = c_unsigned))     
      REPORT "ERROR : MAC - overflow output may not be selected if a and b inputs are both unsigned."   
      SEVERITY error;
   
    -- carry and overflow when MAC count is fixed to 1  
    ASSERT NOT((c_has_count = 0) AND (c_mac_count = 1) AND (c_has_c_out = 1))
      REPORT "ERROR : MAC - carry output may not be selected if the MAC count is fixed to 1."   
      SEVERITY error;
 
    ASSERT NOT((c_has_count = 0) AND (c_mac_count = 1) AND (c_has_ovfl = 1))
      REPORT "ERROR : MAC - overflow may not be selected if the MAC count is fixed to 1."   
      SEVERITY error;

    -- Do not allow pipeline level of 1 when c_b_mode = c_fixed/c_dynamic
    -- and c_mult_type = c_sp_block/c_dp_block, ie block memory mode.  This
    -- is because, in this mode, the multiplier must have a registered output 
    -- and a pipeline level of 1 is meaningless.
    ASSERT NOT((c_pipe_level(1) = '1') AND 
               NOT(c_b_mode = c_variable) AND
               NOT(c_mem_type = c_distributed)
              )          
      REPORT "ERROR : MAC - Pipeline level must be 0 or MAX when input b is a Constant or Dynamic Constant and block memory is used."
      SEVERITY error;     

     -- Do not allow a pipeline level of 1 when the MAC count is fixed to 1 and
     -- saturation, ADD, c_in and multiplier rounding are not used.  In this case
     -- the accumulator is replaced with a register, so we do not allow the user
     -- select the q output. 
      ASSERT NOT((c_pipe_level(1) = '1') AND 
                 (c_has_count = 0) AND 
                 (c_mac_count = 1) AND
                 (c_saturate = 0) AND 
                 (c_has_add = 0) AND 
                 (c_has_c_in = 0) AND
                 (c_mult_round = 0)
                ) 
        REPORT "ERROR : MAC - Pipeline level must be 0 or MAX when count is fixed to 1 and c_saturate, c_has_add, c_has_c_in and c_mult_round are set to zero."
        SEVERITY error;     
    RETURN true;
  END check_generics; 
    
  CONSTANT check_params : boolean := check_generics;

  SIGNAL   opt_b          : std_logic_vector((c_b_width - 1) DOWNTO 0);
  SIGNAL   opt_load_b     : std_logic;
  SIGNAL   opt_add        : std_logic;
  SIGNAL   opt_ovfl       : std_logic;
  SIGNAL   opt_c_in       : std_logic;
  SIGNAL   opt_c_out      : std_logic;
  SIGNAL   opt_ce         : std_logic;
  SIGNAL   opt_a_signed   : std_logic;
  SIGNAL   opt_rffd       : std_logic;
  SIGNAL   opt_rdy        : std_logic;
  SIGNAL   opt_count      : std_logic_vector((c_count_width - 1) DOWNTO 0);
  SIGNAL   opt_aclr       : std_logic;
  SIGNAL   opt_sclr       : std_logic;
  SIGNAL   tmp_q          : std_logic_vector((c_out_width-1) downto 0);
  SIGNAL   tmp_c_out      : std_logic;
  SIGNAL   tmp_ovfl       : std_logic;
  SIGNAL   tmp_rdy        : std_logic;
  SIGNAL   tmp_rfd        : std_logic;
  SIGNAL   tmp_rffd       : std_logic; 
BEGIN
   opt_pins_b: IF (c_b_mode = c_variable) OR (c_b_mode = c_dynamic) GENERATE
     opt_b <= b;
   END GENERATE opt_pins_b;

   opt_pin_load_b: IF (c_b_mode = c_dynamic) GENERATE
     opt_load_b <= load_b;
   END GENERATE opt_pin_load_b;

   opt_pin_add: IF (c_has_add /= 0) GENERATE
     opt_add <= add;
   END GENERATE opt_pin_add;

   opt_pin_ovfl: IF (c_has_ovfl /= 0) GENERATE
     tmp_ovfl <= opt_ovfl;
   END GENERATE opt_pin_ovfl;

   opt_pin_c_in: IF (c_has_c_in /= 0) GENERATE
     opt_c_in <= c_in;
   END GENERATE opt_pin_c_in;
    
   opt_pin_c_out: IF (c_has_c_out /=0) GENERATE
     tmp_c_out <= opt_c_out;
   END GENERATE opt_pin_c_out;

   opt_pin_ce: IF (c_has_ce /= 0) GENERATE
     opt_ce <= ce;
   END GENERATE opt_pin_ce;

   opt_pin_a_signed: IF (c_a_type = c_pin) GENERATE
     opt_a_signed <= a_signed;  
   END GENERATE opt_pin_a_signed;

   opt_pin_has_rffd: IF (c_has_rffd /= 0) GENERATE
     tmp_rffd <= opt_rffd;  
   END GENERATE opt_pin_has_rffd;

   opt_pin_rdy: IF (c_has_rdy /= 0) GENERATE
     tmp_rdy <= opt_rdy;
   END GENERATE opt_pin_rdy;

   opt_pin_count : IF (c_has_count /= 0) GENERATE
     opt_count <= count;
   END GENERATE opt_pin_count;  

   opt_pin_aclr: IF (c_has_aclr /= 0) GENERATE
     opt_aclr <= aclr;
   END GENERATE opt_pin_aclr;

   opt_pin_sclr : IF (c_has_sclr /= 0) GENERATE
     opt_sclr <= sclr;
   END GENERATE opt_pin_sclr;

   -- Delay outputs by 1 ns
   q <= tmp_q AFTER 1 ns;
   c_out <= tmp_c_out AFTER 1 ns;
   ovfl <= tmp_ovfl AFTER 1 ns;
   rdy <= tmp_rdy AFTER 1 ns;
   rfd <= tmp_rfd AFTER 1 ns;
   rffd <= tmp_rffd AFTER 1 ns;
   
   m1 : mac_behav_v2_0 GENERIC MAP
   (c_family_int => c_family_int,
    c_a_width => c_a_width,
    c_b_width => c_b_width,
    c_mult_type => c_mult_type,
    c_mem_type => c_mem_type,
    c_count_width => c_count_width,
    c_p_width => c_p_width,
    c_mult_round => c_mult_round,
    c_acc_width => c_acc_width,
    c_out_width => c_out_width,
    c_a_type => c_a_type,
    c_b_type => c_b_type,
    c_b_mode => c_b_mode,
    c_b_value => c_b_value,
    c_saturate => c_saturate,
    c_sync_enable => c_sync_enable,
    c_has_inreg => c_has_inreg,
    c_pipe_level => c_pipe_level,
    c_optimization => c_optimization, 
    c_has_count => c_has_count,
    c_mac_count => c_mac_count,
    c_mem_init_prefix => c_mem_init_prefix,
    c_output_hold => c_output_hold,
    c_has_rffd => c_has_rffd,
    c_has_rdy => c_has_rdy,
    c_has_c_in => c_has_c_in,
    c_has_c_out => c_has_c_out,
    c_has_ovfl => c_has_ovfl,
    c_has_ce => c_has_ce,
    c_has_add => c_has_add,
    c_has_aclr => c_has_aclr,
    c_has_sclr => c_has_sclr,
    c_enable_rlocs => c_enable_rlocs,
    c_standalone => c_standalone)                 
  PORT MAP 
  (clk => clk,
   a => a,
   b => opt_b,
   c_in => opt_c_in,
   fd => fd,
   nd => nd,
   a_signed => opt_a_signed,
   load_b => opt_load_b,
   add => opt_add,
   count => opt_count,
   aclr => opt_aclr,
   sclr => opt_sclr,
   ce => opt_ce,
   q => tmp_q,
   c_out => opt_c_out,
   ovfl => opt_ovfl,
   rdy => opt_rdy,
   rfd => tmp_rfd,
   rffd => opt_rffd);
END behavioral;
                  
CONFIGURATION mac_config_v2_0 OF mac_v2_0 IS
  FOR behavioral
    FOR ALL : mac_behav_v2_0
      USE ENTITY xilinxcorelib.mac_behav_v2_0(behavioral); 
   END FOR;
 END FOR;
END mac_config_v2_0;









