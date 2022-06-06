--------------------------------------------------------------------------------
-- Copyright 2000 Xilinx, Inc. All rights reserved.
-- ================================================
-- $Id: mac_pack_behav_v2_0.vhd,v 1.4.78.3 2004/05/18 12:11:14 julian Exp $
--
--------------------------------------------------------------------------------
-- Unit     : mac_pack_v2_0
-- Author   : Rowland Fraser
-- Function : Declare components used by mac_v2_0 behavioral model  
--------------------------------------------------------------------------------
-- Description    
-- ===========
--
--------------------------------------------------------------------------------

LIBRARY std;
USE std.standard.all;
 
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;

LIBRARY xilinxcorelib;
USE xilinxcorelib.prims_constants_v4_0.ALL;
USE xilinxcorelib.mult_gen_v5_0_services.ALL;
USE xilinxcorelib.mult_const_pkg_v4_0.ALL;

PACKAGE mac_pack_behav_v2_0 IS
  -- port b modes
  CONSTANT c_fixed           : integer := 0;
  CONSTANT c_variable        : integer := 1;
  CONSTANT c_dynamic         : integer := 2;

  FUNCTION find_mult_use_luts (mult_type : integer) RETURN integer;
  
  FUNCTION gen_vect_str(len :INTEGER; val: CHARACTER) RETURN STRING;
  
  FUNCTION find_count_fixed_to_zero(mac_count : integer;
                                    has_count : integer) RETURN boolean;

  FUNCTION find_count_fixed_to_one(mac_count : integer;
                                   has_count : integer) RETURN boolean;
                                   
  FUNCTION find_count_fixed_gt_one(mac_count : integer;
                                   has_count : integer) RETURN boolean;
                                   
  FUNCTION find_acc_has_c_in(has_c_in : integer;
                             mult_round : integer) RETURN integer;

  FUNCTION find_acc_b_type(a_type : integer;
                           b_type : integer) RETURN integer;
    
  FUNCTION find_max_acc_out_width(p_width : integer;
                                  acc_b_type : integer;
                                  has_add : integer;
                                  saturate : integer;
                                  has_c_in : integer;
                                  mult_round : integer;
                                  mac_count : integer;
                                  has_count : integer) RETURN integer;
  
  FUNCTION find_acc_out_width(max_acc_out_width : integer;
                              acc_width : integer) RETURN integer;

  FUNCTION find_acc_has_b_signed_pin(a_type : integer) RETURN integer;

  FUNCTION find_mult_has_nd(has_inreg : integer;
                            mult_pipeline : integer;
                            mult_has_q : integer) RETURN integer;
  
  FUNCTION find_mult_has_q(pipe_level : string;
                           has_c_in : integer;
                           mult_round : integer;
                           has_add : integer;
                           saturate : integer;
                           count_fixed_to_one : boolean;
                           b_mode : integer;
                           mem_type : integer) RETURN integer;

  FUNCTION find_mult_has_o(mult_has_q : integer) RETURN integer;
  
  FUNCTION find_mult_out_width(p_width : integer;
                               mult_round : integer) RETURN integer;
 
  FUNCTION find_mult_b_constant(b_mode : integer) RETURN integer;
 
  FUNCTION find_mult_has_b(b_mode : integer) RETURN integer;

  FUNCTION find_acc_add_mode (has_add : integer) RETURN integer;
  
  FUNCTION find_mult_has_loadb(b_type : integer) RETURN integer;
  
  FUNCTION find_mult_type(b_mode : integer;
                          mult_type : integer) RETURN integer;
  
  FUNCTION find_mult_pipeline(pipe_level : string) RETURN integer;

  FUNCTION find_mult_bram_addr_width(family_int : integer) RETURN integer;
  
  FUNCTION find_mult_output_hold(pipe_level : string) RETURN integer;
  
  FUNCTION mult_has_b(b_type : integer) RETURN integer;
 
  FUNCTION find_acc_has_clr (has_aclr, has_sclr : integer) RETURN boolean;

  FUNCTION find_acc_control_width (count_fixed_to_one,
                                   has_clr : boolean;                                   
                                   has_add, 
                                   has_c_in,
                                   b_mode, 
                                   a_type : integer) RETURN integer;  
                                        
  FUNCTION find_mult_has_a_signed(a_type : integer) RETURN integer;   

  FUNCTION int_2_std_logic_vector (value, width : integer) RETURN std_logic_vector;

  FUNCTION std_logic_vector_2_int(value : std_logic_vector; 
                                  width : integer) RETURN integer;
  
  FUNCTION find_mac_count_width (mac_count : integer) RETURN integer;

  FUNCTION find_has_output_hold_reg (output_hold,
                                     has_count,
                                     mac_count : integer) RETURN boolean;
  
  FUNCTION find_mult_latency(mult_o_latency : integer;
                             mult_has_o : integer;
                             mult_has_q : integer) RETURN integer;
 
  FUNCTION find_mult_b_type(b_mode : integer;
                            b_type : integer;
                            b_width : integer;
                            b_value : string) RETURN integer;

  FUNCTION find_mult_b_width(b_mode : integer;
                             b_type : integer;
                             b_width : integer;
                             b_value : string) RETURN integer;

  FUNCTION find_mult_b_value(b_mode : integer;
                             b_type : integer;
                             b_width : integer;
                             mult_b_width : integer;
                             b_value : string) RETURN string;

  FUNCTION getLatency (c_family_int  : integer;
                       c_has_aclr     : integer;
                       c_has_sclr    : integer;
                       c_has_ce      : integer;
                       c_sync_enable : integer; 
                       c_a_width     : integer;
                       c_b_width     : integer;
                       c_a_type      : integer;
                       c_b_type      : integer;
                       c_b_value     : string;
                       c_b_mode      : integer;
                       c_has_inreg   : integer;
                       c_mem_type    : integer;
                       c_mult_type   : integer;
                       c_pipe_level  : string;
                       c_output_hold : integer;
                       c_mac_count   : integer;
                       c_has_count   : integer;
                       c_has_c_in    : integer;
                       c_mult_round  : integer;
                       c_saturate    : integer;
                       c_has_add     : integer) RETURN integer;  
END mac_pack_behav_v2_0;

PACKAGE BODY mac_pack_behav_v2_0 IS
  -- Find mult_use_luts
  FUNCTION find_mult_use_luts (mult_type : integer) RETURN integer IS
    VARIABLE result : integer := 0;   
  BEGIN 
    IF (mult_type = 0) THEN
      result := 1;
    ELSE
      result := 0;
    END IF;
    RETURN result;
  END find_mult_use_luts; 
  
  FUNCTION gen_vect_str(len :INTEGER; val: CHARACTER) RETURN STRING IS
    VARIABLE tmp : STRING(1 TO len);
  BEGIN
   FOR I IN 1 TO len LOOP
     tmp(I) := val;
   END LOOP;
    RETURN tmp;
  END gen_vect_str;
  
  -- Function to find if the MAC count is fixed to 0
  FUNCTION find_count_fixed_to_zero(mac_count : integer;
                                    has_count : integer) RETURN boolean IS
    VARIABLE result : boolean := false;
  BEGIN
    IF (mac_count = 0) AND (has_count = 0) THEN
      result := true;
    ELSE
      result := false;
    END IF;
    RETURN result;
  END find_count_fixed_to_zero;
  
  -- Function to find if the MAC count is fixed to 1
  FUNCTION find_count_fixed_to_one(mac_count : integer;
                                   has_count : integer) RETURN boolean IS
    VARIABLE result : boolean := false;
  BEGIN
    IF (mac_count = 1) AND (has_count = 0) THEN
      result := true;
    ELSE
      result := false;
    END IF;
    RETURN result;
  END find_count_fixed_to_one;

  FUNCTION find_count_fixed_gt_one(mac_count : integer;
                                   has_count : integer) RETURN boolean IS
    VARIABLE result : boolean := false;
  BEGIN
    IF (mac_count > 1) AND (has_count = 0) THEN
      result := true;
    ELSE
      result := false;
    END IF;
    RETURN result;
  END find_count_fixed_gt_one;

  -- Add mode for accumulator
  FUNCTION find_acc_add_mode (has_add : integer) RETURN integer IS 
    VARIABLE add_mode : integer;
  BEGIN
    IF (has_add = 1) THEN
      add_mode := c_add_sub;
    ELSE
      add_mode := c_add;
    END IF;
    RETURN add_mode;
  END find_acc_add_mode;
  
  -- Function to find if the accumulator has a c_in port
  FUNCTION find_acc_has_c_in(has_c_in : integer; 
                             mult_round : integer) RETURN integer IS
    VARIABLE result : integer := 0;
  BEGIN
    IF (has_c_in = 1) OR (mult_round = 1) THEN
      result := 1;
    ELSE
      result := 0;
    END IF;
    RETURN result;
  END find_acc_has_c_in;

  -- Find the type of the accumulator data input
  FUNCTION find_acc_b_type(a_type : integer;
                           b_type : integer) RETURN integer IS
    VARIABLE result : integer := 0;
  BEGIN
    IF (a_type = c_unsigned) AND (b_type = c_unsigned) THEN
      result := c_unsigned;
    ELSE
      result := c_signed;
    END IF;
    RETURN result;
  END find_acc_b_type; 

  -- Return the maximum width required by the accumulator.  This should assume that the
  -- The optional c_out and ovfl outputs are low and that the result will not saturate.
  -- Return the maximum width required by the accumulator.  
  FUNCTION find_max_acc_out_width(p_width : integer;
                                  acc_b_type : integer;
                                  has_add : integer;
                                  saturate : integer;
                                  has_c_in : integer;
                                  mult_round : integer;
                                  mac_count : integer;
                                  has_count : integer) RETURN integer IS
    -- Do not calculate the optimal width in the behavioral model - this 
    -- will catch any cases in the structural model where the width is 
    -- too small.
    VARIABLE result : integer := 258;
  BEGIN
    RETURN result;
  END find_max_acc_out_width;                               

  -- Find accumulator width 
  FUNCTION find_acc_out_width(max_acc_out_width : integer;
                              acc_width : integer) RETURN integer IS
    VARIABLE result : integer := 0;
  BEGIN
    IF (acc_width > max_acc_out_width) THEN
      result := max_acc_out_width;
    ELSE
      result := acc_width;
    END IF;
    RETURN result;
  END find_acc_out_width;

  -- Accumulator has b signed input
  FUNCTION find_acc_has_b_signed_pin(a_type : integer) RETURN integer IS
    VARIABLE result : integer := 0;
  BEGIN
    IF (a_type = c_pin) THEN
      result := 1;
    ELSE
      result := 0;
    END IF;
    RETURN result;
  END find_acc_has_b_signed_pin;

  -- Multiplier has a q output
  FUNCTION find_mult_has_q(pipe_level : string;
                           has_c_in : integer;
                           mult_round : integer;
                           has_add : integer;
                           saturate : integer;
                           count_fixed_to_one : boolean;
                           b_mode : integer;
                           mem_type : integer) RETURN integer IS
    VARIABLE result : integer := 0;
    VARIABLE pipelined : integer := 0;
    VARIABLE uses_block_mem : boolean := false;
    VARIABLE accumulator_is_register : boolean := false;
  BEGIN
    IF (pipe_level(1) = '1') OR 
        (((pipe_level(1) = 'M') OR (pipe_level(1) = 'm')) AND
         ((pipe_level(2) = 'A') OR (pipe_level(2) = 'a')) AND
         ((pipe_level(3) = 'X') OR (pipe_level(3) = 'x'))) THEN
      pipelined := 1;
    ELSE
      pipelined := 0;
    END IF;
 
    -- Find if core uses block memory
    IF ((b_mode = c_fixed) OR (b_mode = c_dynamic)) AND
       ((mem_type = c_sp_block) OR (mem_type = c_dp_block)) THEN
      uses_block_mem := true;
    ELSE
      uses_block_mem := false;
    END IF;
    
    -- Find if accumulator is replaced with register
    IF count_fixed_to_one AND (has_c_in = 0) AND
       (mult_round = 0) AND (has_add = 0) AND
       (saturate = 0) THEN
      accumulator_is_register := true;
    ELSE
      accumulator_is_register := false;
    END IF;
     
    -- If pipelined then there will be an output register on
    -- the multiplier.  An exception to this is when the count is 
    -- fixed to 1 and the multiplier output is fed to a register. 
    -- The other exception to the rule is when a CCM is used with
    -- block memory, in which case we must always use the registered
    -- output of the multiplier.
    IF ((pipelined = 1) AND NOT(accumulator_is_register)) OR
       uses_block_mem THEN
      result := 1;     
    ELSE
      result := 0;
    END IF;
    RETURN result;
  END find_mult_has_q;
  
  -- Multiplier has an o output
  FUNCTION find_mult_has_o(mult_has_q : integer) RETURN integer IS
    VARIABLE result : integer := 0;
  BEGIN
    -- Find if multiplier O output is used
    IF (mult_has_q = 0) THEN
      result := 1;
    ELSE
      result := 0;
    END IF;
    RETURN result;
  END find_mult_has_o;
        
  -- Find multiplier output width
  FUNCTION find_mult_out_width(p_width : integer;
                               mult_round : integer) RETURN integer IS
    VARIABLE result : integer := 0;
  BEGIN
    IF (mult_round = 1) THEN
      result := p_width + 1;
    ELSE
      result := p_width;
    END IF;
    RETURN result;
  END find_mult_out_width;
 
  -- Find if the multplier has constant value of b 
  FUNCTION find_mult_b_constant(b_mode : integer) RETURN integer IS
    VARIABLE result : integer := 0;
  BEGIN
    IF (b_mode = c_fixed) THEN
      result := 1;
    ELSE
      result := 0;
    END IF;
    RETURN result;
  END find_mult_b_constant;

  -- Miltiplier has b input bus
  FUNCTION find_mult_has_b(b_mode : integer) RETURN integer IS
    VARIABLE result : integer := 0;
  BEGIN
    IF (b_mode = c_fixed) THEN
      result := 1;
    ELSE
      result := 0;
    END IF;
    RETURN result;
  END find_mult_has_b; 
  
  -- Find if the multiplier has a load_b input    
  FUNCTION find_mult_has_loadb(b_type : integer) RETURN integer IS
    VARIABLE result : integer := 0;
  BEGIN
    IF (b_type = c_dynamic) THEN
      result := 1;
    ELSE
      result := 0;
    END IF;
    RETURN result;
  END find_mult_has_loadb;  

  -- Find the multiplier type    
  FUNCTION find_mult_type(b_mode : integer;
                          mult_type : integer) RETURN integer IS
    VARIABLE result : integer := 0;
  BEGIN
    IF (b_mode = c_dynamic) THEN
      result := static_rccm;
    ELSIF (b_mode = c_fixed) THEN
      result := ccm;
    ELSE
      result := mult_type;
    END IF; 
    RETURN result; 
  END find_mult_type;
  
  -- Find the multiplier pipeline level
  FUNCTION find_mult_pipeline(pipe_level : string) RETURN integer IS
    VARIABLE result : integer := 0;
  BEGIN
    IF ((pipe_level(1) = 'M') OR (pipe_level(1) = 'm')) AND
       ((pipe_level(2) = 'A') OR (pipe_level(2) = 'a')) AND
       ((pipe_level(3) = 'X') OR (pipe_level(3) = 'x')) THEN
      result := 1;
    ELSE
      result := 0;
    END IF;
    RETURN result;
  END find_mult_pipeline;

  FUNCTION find_mult_bram_addr_width(family_int : integer) RETURN integer IS
    VARIABLE result : integer := 0;
  BEGIN
    IF (family_int = 0) THEN
      result := 8;
    ELSE
      result := 9;
    END IF;
    RETURN result;
  END find_mult_bram_addr_width;
  
  -- Find if the multiplier has an output hold register
  FUNCTION find_mult_output_hold(pipe_level : string) RETURN integer IS
    VARIABLE result : integer := 0;
  BEGIN
    IF (pipe_level(1) = '1') OR
       (((pipe_level(1) = 'M') OR (pipe_level(1) = 'm')) AND
        ((pipe_level(2) = 'A') OR (pipe_level(2) = 'a')) AND
        ((pipe_level(3) = 'X') OR (pipe_level(3) = 'x'))) THEN
      result := 1;
    ELSE
      result := 0;
    END IF;
    RETURN result;
  END find_mult_output_hold;
  
  -- Find if the multiplier has a b input port  
  FUNCTION mult_has_b(b_type : integer) RETURN integer IS
    VARIABLE result : integer := 0;
  BEGIN
    IF (b_type = c_dynamic) THEN
      result := 1;
    ELSE
      result := 0;
    END IF;
    RETURN result;
  END mult_has_b;     

  -- Find if accumulator has aclr or sclr
  FUNCTION find_acc_has_clr (has_aclr, has_sclr : integer) RETURN boolean IS
    VARIABLE result : boolean := false;
  BEGIN
    IF (has_aclr = 1) OR (has_sclr = 1) THEN
      result := true;
    ELSE
      result := false;
    END IF;   
    RETURN result;
  END find_acc_has_clr;

  -- Find the width of the accumulator control signals
  FUNCTION find_acc_control_width (count_fixed_to_one,
                                   has_clr : boolean;
                                   has_add, 
                                   has_c_in,
                                   b_mode, 
                                   a_type : integer) RETURN integer IS 
    VARIABLE width : integer := 0;
  BEGIN   
    IF (has_clr) THEN
      -- The bypass/load signal must use a separate SR which has reset 
      width := 0;
    ELSE
      -- The bypass/load signal shares an SR with the other control signals
      width := 1;
    END IF;  
    IF NOT(count_fixed_to_one) THEN
      -- If count is not fixed to 1, a load signal is required in addition to bypass
      width := width + 1;
    END IF;
    IF (has_add = 1) THEN
      -- add input
      width := width + 1;
    END IF;  
    IF (has_c_in = 1) THEN
      -- c_in input
      width := width + 1;
    END IF;
    IF (a_type = c_pin) THEN
      -- a_signed input
      width := width + 1;
    END IF;
    RETURN width;
  END find_acc_control_width; 

  -- Return 1 if multiplier has a_signed input
  FUNCTION find_mult_has_a_signed(a_type : integer) RETURN integer IS
    VARIABLE result : integer := 0;
  BEGIN
    IF (a_type = c_pin) THEN
      result := 1;
    ELSE
      result := 0;
    END IF;
    RETURN result;
  END find_mult_has_a_signed;
    
  FUNCTION int_2_std_logic_vector (value, width : integer) RETURN std_logic_vector IS
    VARIABLE result : std_logic_vector(width - 1 DOWNTO 0);
    VARIABLE twos_comp : integer := 0;
    VARIABLE sub : integer := 0;
  BEGIN
    IF value >= 0 THEN
      twos_comp := value;
    ELSE
      twos_comp := 2**width - value;
    END IF;
  
    FOR i IN (width - 1) DOWNTO 0 LOOP
      sub := 2**i;
      IF(twos_comp >= sub) THEN
        result(i) := '1';
        twos_comp := twos_comp - sub;  
      ELSE
        result(i) := '0';
      END IF;
    END LOOP;
    RETURN result;
  END int_2_std_logic_vector; 

  FUNCTION std_logic_vector_2_int (value : std_logic_vector;
                                   width : integer) RETURN integer IS
    VARIABLE result : integer := 0;
    VARIABLE p : integer := 1; 
    VARIABLE w : integer := 0;
  BEGIN
    IF (width > 32) THEN
      result := 0;
    ELSIF (width = 32) THEN
      w := 31;
      -- CR 184222
      -- Remove this line:
      -- result := -2**31;
      -- change to:
      result := integer'left;
    ELSE
      w := width;
      result := 0;
    END IF;   
 
    FOR i IN 0 TO w - 1 LOOP
      IF value(i) = '1' THEN
        result := result + p;
      END IF;
      p := p * 2;
    END LOOP;
  
    RETURN result;
  END std_logic_vector_2_int;  
  
  -- Return MAC count width for fixed count (c_has_count = 0)

  FUNCTION find_mac_count_width (mac_count : integer) RETURN integer IS
    VARIABLE result : integer := 0;
    VARIABLE max : integer := 0;
  BEGIN
    max := 2;
    result := 1;
    IF ((mac_count - 2) <= (2**30 - 1)) THEN
      WHILE (mac_count - 2 >= max) LOOP
        result := result + 1;
        max := max * 2;
      END LOOP; 
    END IF; 
    RETURN result;
  END find_mac_count_width;   

  -- Return 1 if the multiplier has nd
  
  FUNCTION find_mult_has_nd(has_inreg : integer;
                            mult_pipeline : integer;
                            mult_has_q : integer) RETURN integer IS
    VARIABLE result : integer;   
  BEGIN
    IF (has_inreg = 1) OR (mult_pipeline = 1) OR 
       (mult_has_q = 1) THEN
      result := 1;
    ELSE
      result := 0;
    END IF;
    RETURN result;
  END find_mult_has_nd; 
  
  -- Find if the core has a dedicated output hold register
  
  FUNCTION find_has_output_hold_reg (output_hold, 
                                     has_count, 
                                     mac_count : integer) RETURN boolean IS
    VARIABLE result : boolean := false;
  BEGIN
    -- Output hold register instatiated only if mac count is not fixed
    -- to one
    IF (output_hold = 1) AND (has_count = 1 OR mac_count /= 1) THEN
      result := true;
    ELSE
      result := false;
    END IF;
    RETURN result;
  END find_has_output_hold_reg;

  -- Find multiplier latency
  FUNCTION find_mult_latency(mult_o_latency : integer;
                             mult_has_o : integer;
                             mult_has_q : integer) RETURN integer IS
    VARIABLE result : integer := 0;
  BEGIN
    IF (mult_has_o = 1) THEN
      result := mult_o_latency;
    ELSIF (mult_has_q = 1) THEN
      result := mult_o_latency + 1;
    END IF;
    RETURN result;
  END find_mult_latency;                             

  -- Function returns total latency of core in clock cycles
  FUNCTION getLatency (c_family_int  : integer;
                       c_has_aclr    : integer;
                       c_has_sclr    : integer;
                       c_has_ce      : integer;
                       c_sync_enable : integer; 
                       c_a_width     : integer;
                       c_b_width     : integer;
                       c_a_type      : integer;
                       c_b_type      : integer;
                       c_b_value     : string;
                       c_b_mode      : integer;
                       c_has_inreg   : integer;
                       c_mem_type    : integer;
                       c_mult_type   : integer;
                       c_pipe_level  : string;
                       c_output_hold : integer;
                       c_mac_count   : integer;
                       c_has_count   : integer;
                       c_has_c_in    : integer;
                       c_mult_round  : integer;
                       c_saturate    : integer;
                       c_has_add     : integer) RETURN integer IS
    VARIABLE input_latency : integer := 0;
    VARIABLE accum_latency : integer := 0;
    VARIABLE output_latency : integer := 0;
    VARIABLE total_latency : integer := 0;
    CONSTANT count_fixed_to_one : boolean := find_count_fixed_to_one(c_mac_count,
                                                                     c_has_count);   
    CONSTANT mult_has_q : integer := find_mult_has_q(c_pipe_level,
                                                     c_has_c_in,
                                                     c_mult_round,
                                                     c_has_add,
                                                     c_saturate,
                                                     count_fixed_to_one,
                                                     c_b_mode,
                                                     c_mem_type);
    CONSTANT mult_pipeline : integer := find_mult_pipeline(c_pipe_level);
    CONSTANT mult_bram_addr_width : integer := find_mult_bram_addr_width(c_family_int);
    CONSTANT mult_has_nd : integer := find_mult_has_nd(c_has_inreg,
                                                       mult_pipeline,
                                                       mult_has_q);    
    CONSTANT mult_has_a_signed : integer := find_mult_has_a_signed(c_a_type);
    CONSTANT mult_mult_type : integer := find_mult_type(c_b_mode, c_mult_type);
    CONSTANT mult_has_loadb : integer := find_mult_has_loadb(c_b_mode);
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
                                                                   mult_has_nd,       -- c_has_nd
                                                                   mult_has_q,        -- c_has_q
                                                                   mult_bram_addr_width);  -- bram_addr_width
    CONSTANT mult_has_o : integer := find_mult_has_o(mult_has_q);        
    CONSTANT mult_latency : integer := find_mult_latency(mult_o_latency,
                                                         mult_has_o,   
                                                         mult_has_q);
  BEGIN
    accum_latency := 1;

    IF (c_output_hold = 1) AND (NOT(count_fixed_to_one) OR (c_saturate = 1) OR (c_has_add = 1)) THEN
      output_latency := 1;
    ELSE
      output_latency := 0;
    END IF;

    total_latency := mult_latency + accum_latency + output_latency;

    RETURN total_latency; 
  END getLatency;

  -- If a signed constant > 0 is passed to the multiplier, set mult_b_type to
  -- be unsigned.  
  FUNCTION find_mult_b_type(b_mode : integer;
                            b_type : integer;
                            b_width : integer;
                            b_value : string) RETURN integer IS
    VARIABLE mult_b_type : integer := 0;
  BEGIN
    IF (b_mode = c_fixed) AND (b_type = c_signed) AND (b_value(1) = '0') THEN
      mult_b_type := c_unsigned;
    ELSE
      mult_b_type := b_type;
    END IF;
    RETURN mult_b_type;
  END find_mult_b_type;

  -- Find length of b_value ignoring trailing zeros 
  FUNCTION find_mult_b_width(b_mode : integer;
                             b_type : integer;
                             b_width : integer;
                             b_value : string) RETURN integer IS
    VARIABLE i : integer := 1;
  BEGIN  
    IF (b_mode = c_fixed) AND (b_type = c_signed) THEN
      WHILE b_value(i) = '0' LOOP
        i := i + 1;
      END LOOP; 
      RETURN b_value'right - i + 1;
    ELSE
      RETURN b_width;
    END IF;  
  END find_mult_b_width;  

  -- Find b_value by removing trailing zeros
  FUNCTION find_mult_b_value(b_mode : integer;
                             b_type : integer;
                             b_width : integer;
                             mult_b_width : integer;
                             b_value : string) RETURN string IS
  BEGIN
    IF (b_mode = c_fixed) AND (b_type = c_signed) AND (b_value(1) = '0') THEN
      RETURN b_value(b_value'right - mult_b_width + 1 TO b_value'right);  
    ELSE
      RETURN b_value;
    END IF;
  END find_mult_b_value;     
  
END mac_pack_behav_v2_0; 






