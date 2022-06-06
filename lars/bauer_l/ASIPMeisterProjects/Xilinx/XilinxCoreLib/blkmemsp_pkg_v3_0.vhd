----------------------------------------------------------------------------
-- $IdG: blkmemsp_pkg_v3_0.vhd,v 1.1.2.10 2000/08/02 19:54:36 restu Exp $
----------------------------------------------------------------------------
-- Block Memory Compiler VII :  Constant and function package
----------------------------------------------------------------------------
--
--    **************************
--    * Copyright Xilinx, Inc. *
--    * All rights reserved.   *
--    * March 3, 2000          *
--    **************************
--
----------------------------------------------------------------------------
-- Filename:  blkmemsp_pkg_v3_0.vhd
--      
-- Description:  
--            Defines the functions and constanst needed for memory
--            partitioning.
--
----------------------------------------------------------------------------
-- Structure:
----------------------------------------------------------------------------
-- Author:      Christopher Ebeling
-- History:
--              Ebeling    04/07/2000 - First Version
--              Ismail     05/03/2000 - Changed all family param to integer
--                                      instead of string
--              Ooi        05/04/2000 - Added constants for testbench
--              Ismail     05/04/2000 - Added new fns: string_to_bit_vector
--                                      & int_write_more_to string
--              Ismail     05/04/2000 - Added more fns: find_current
--                                      data_width, find_connected_data_width,
--                                      find_result_delay
--              Ismail     06/12/2000 - Change String_to_bit_vector fn
--                                      declaration
--                                      remove bit_vector to string
--              Ismail     06/21/2000 - if c_has_sinit =0 then set the init
--                                      string to zero
--              Ooi        06/29/2000 - Added in initialization functions
--                                      for memory init.
--              Jackson    07/26/2000 - changed find_addr_width and
--                                      find_data_width functions to
--                                      support the 128 X 32 configuration for
--                                      the Virtex Block RAM
--              Ismail     08/08/2000 - Added fn iterate_opt_slice_width_v2
--                                      and changed function slice_width_v2
--                                      for algorithm optimization.  Optimi-
--                                      zation included algorithm reiteration
--                                      of each chunk of block memory that is 
--                                      built.  It ensures that the most
--                                      optimized implementation is chosen.
--              Jackson    08/14/2000 - Modified to include functions for
--                                      Virtex architecture
--              Ooi        08/18/2000 - Modified parse_init function to
--                                      support both Virtex and Virtex-II.
----------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

--LIBRARY XILINXCORELIB;
--USE XILINXCORELIB.RAM16_32_v2_0.ALL;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.ul_utils.ALL;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.mem_init_file_pack_sp_v3_0.ALL;

PACKAGE blkmemsp_pkg_v3_0 IS

----------------------------------------------------------------------------
-- CONSTANT and TYPE DECLARATION
----------------------------------------------------------------------------

--------------- Define the family dependent constants  ---------------------
CONSTANT virtex         : INTEGER       := 1 ;
CONSTANT virtex2        : INTEGER       := 2 ;
CONSTANT v_index 	: INTEGER	:= 6 ;	--# of different port widths
                                                -- includes special single
                                                -- port case
CONSTANT vsp_index      : INTEGER       := 6 ;
CONSTANT v2_index	: INTEGER	:= 7 ;  --# of different port widths
                                                -- includes special single
                                                -- port case
CONSTANT v2sp_index     : INTEGER       := 7 ;
CONSTANT max_mux_width	: INTEGER	:= 72 ;
CONSTANT max_mux_depth	: INTEGER	:= 64 ;

--------------- Define the family dependent types  -------------------------
TYPE v_array IS ARRAY ((v_index-1) DOWNTO 0) OF INTEGER ;
TYPE v2_array IS ARRAY ((v2_index-1) DOWNTO 0) OF INTEGER ;

------------- Define the memory initalization types  -----------------------
TYPE INITP_ARRAY IS ARRAY (7 DOWNTO 0) OF BIT_VECTOR(255 DOWNTO 0);
TYPE INIT_ARRAY IS ARRAY (63 DOWNTO 0) OF BIT_VECTOR(255 DOWNTO 0);
TYPE MEM_ARRAY IS ARRAY (6 DOWNTO 1) OF STRING(1 TO 6);

----------- Define the family dependent constant arrays  -------------------
CONSTANT v_widths	: v_array	:= (1, 2, 4, 8, 16, 32) ;
CONSTANT v_depths	: v_array	:= (4096, 2048, 1024, 512, 256, 128) ;
CONSTANT v2_widths	: v2_array	:= (1, 2, 4, 9, 18, 36, 72) ;
CONSTANT v2_depths	: v2_array	:= (16384, 8192, 4096, 2048, 1024, 512, 256) ;


-- Define some constants needed in the sim parameters for the block memory V2

CONSTANT c_write_first : INTEGER        := 0;
CONSTANT c_read_first  : INTEGER        := 1;
CONSTANT c_no_change   : INTEGER        := 2;
CONSTANT write_first_bits : STRING        := "WRITE_FIRST";
CONSTANT read_first_bits  : STRING        := "READ_FIRST";
CONSTANT no_change_bits   : STRING        := "NO_CHANGE";

--------- Define constants for memory initalization functions --------------
CONSTANT v2max_init_lines       : INTEGER := 64;
CONSTANT v2max_init_parity      : INTEGER := 8;
CONSTANT v2max_init_width       : INTEGER := 256;
CONSTANT vmax_init_lines : INTEGER := 16;
CONSTANT vmax_init_width : INTEGER := 256;
--------------- Define default value for top level generics ----------------
CONSTANT DEFAULT_FAMILY		: STRING := "virtex";
CONSTANT DEFAULT_DEPTH 		: INTEGER := 1024;
CONSTANT DEFAULT_WIDTH 		: INTEGER := 16;
CONSTANT DEFAULT_ADD_WIDTH 	: INTEGER := 10;
CONSTANT DEFAULT_HAS_DIN 	: INTEGER := 1;
CONSTANT DEFAULT_MEM_INIT 	: STRING := "mif_file_16_1";
CONSTANT DEFAULT_MEM_INIT_ARRAY : MEM_ARRAY := ("123456", "123456", "123456", "123456", "123456", "123456");
CONSTANT DEFAULT_WRITE_MODE 	: INTEGER := c_write_first;
CONSTANT DEFAULT_PIPE_STAGES 	: INTEGER := 0;
CONSTANT DEFAULT_LIMIT_PITCH 	: INTEGER := 18;
CONSTANT DEFAULT_HAS_LIMIT_PITCH : INTEGER := 0;
CONSTANT DEFAULT_HAS_WE 	: INTEGER := 1;
CONSTANT DEFAULT_HAS_EN 	: INTEGER := 0;
CONSTANT DEFAULT_HAS_SINIT	: INTEGER := 0;
CONSTANT DEFAULT_SINIT_VALUE 	: STRING := "000000000";
CONSTANT DEFAULT_HAS_DOUT 	: INTEGER := 1;
CONSTANT DEFAULT_REG_INPUTS 	: INTEGER := 0;
CONSTANT DEFAULT_EN_RLOCS 	: INTEGER := 0;
CONSTANT DEFAULT_HAS_ND 	: INTEGER := 0;
CONSTANT DEFAULT_HAS_RFD 	: INTEGER := 0;
CONSTANT DEFAULT_HAS_RDY 	: INTEGER := 0;
CONSTANT DEFAULT_HAS_DEFAULT    : INTEGER := 1;
CONSTANT DEFAULT_DEFAULT_DATA   : STRING  := "000000000";

----------------------------------------------------------------------------
-- FUNCTION DECLARATION
----------------------------------------------------------------------------

FUNCTION find_addr_width (family: INTEGER; depth: INTEGER)
RETURN INTEGER ;

FUNCTION find_data_width (family: INTEGER; depth: INTEGER)
RETURN INTEGER ;

FUNCTION find_parity_width (family: INTEGER; depth: INTEGER)
RETURN INTEGER ;

FUNCTION find_blk_depth (family: INTEGER; blk_width: INTEGER)
RETURN INTEGER ;

FUNCTION find_blk_count (family: INTEGER; slice_width: INTEGER; slice_depth: INTEGER)
RETURN INTEGER ;

FUNCTION slice_width_v2 (family: INTEGER; slice_start: INTEGER; ram_width: INTEGER; ram_depth: INTEGER)
RETURN v2_array ;

FUNCTION slice_width_v(family:INTEGER;slice_start: INTEGER;ram_width: INTEGER;ram_depth:INTEGER)
 RETURN v_array;

FUNCTION slice_depth_v2 (family: INTEGER; ram_depth: INTEGER)
RETURN v2_array ;

FUNCTION slice_depth_v (family: INTEGER; ram_depth: INTEGER)
  RETURN v_array;

FUNCTION find_total_blk_count_v2 (family: INTEGER; max_slice_width: INTEGER; ram_width: INTEGER; ram_depth: INTEGER)
RETURN INTEGER ;

FUNCTION find_total_blk_count_v (family: INTEGER; max_slice_width: INTEGER; ram_width: INTEGER; ram_depth: INTEGER)
RETURN INTEGER ;

FUNCTION find_start_slice_width_v2 (family: INTEGER; ram_width: INTEGER ; ram_depth: INTEGER ; is_single_port : INTEGER)
RETURN INTEGER ;

FUNCTION find_start_slice_width_v (family: INTEGER; ram_width: INTEGER ; ram_depth: INTEGER ; is_single_port : INTEGER)
RETURN INTEGER ;

FUNCTION iterate_opt_slice_width_v2 (ram_width: INTEGER; ram_depth: INTEGER; index_start_slice: INTEGER; current_array: v2_array)
RETURN v2_array;

FUNCTION iterate_opt_slice_width_v (ram_width: INTEGER; ram_depth: INTEGER; index_start_slice: INTEGER; current_array:v_array)
RETURN v_array;

FUNCTION find_min_blk_count_v2 (family: INTEGER; ram_width: INTEGER ; ram_depth: INTEGER)
RETURN INTEGER ;

FUNCTION find_min_blk_count_v (family: INTEGER; ram_width: INTEGER ; ram_depth: INTEGER)
RETURN INTEGER ;

FUNCTION int_write_mode_to_string (family: INTEGER; write_mode: INTEGER)
RETURN STRING ;

FUNCTION string_to_bit_vector(str: STRING; str_length: INTEGER)
RETURN BIT_VECTOR;

FUNCTION negate_integer(x: INTEGER)
RETURN INTEGER;

FUNCTION find_connected_data_width_v2 (current_primitive: INTEGER; current_blk: INTEGER; depth_array: v2_array; width_array: v2_array ; total_width: INTEGER)
RETURN INTEGER;

FUNCTION find_connected_data_width_v (current_primitive: INTEGER; current_blk: INTEGER; depth_array: v_array; width_array: v_array ; total_width: INTEGER)
RETURN INTEGER;

FUNCTION find_current_data_width_v2 (current_primitive: INTEGER; current_blk: INTEGER; depth_array: v2_array; width_array: v2_array; total_width : INTEGER)
RETURN INTEGER;

FUNCTION find_current_data_width_v(current_primitive: INTEGER; current_blk: INTEGER; depth_array: v_array; width_array: v_array; total_width : INTEGER)
RETURN INTEGER;

FUNCTION find_result_delay(c_reg_inputs: INTEGER; c_pipe_stages: INTEGER)
RETURN INTEGER;

FUNCTION log2roundup(data_value: INTEGER)
RETURN INTEGER;

FUNCTION div4roundup(data_value: INTEGER)
RETURN INTEGER;

FUNCTION get_lesser (a: INTEGER; b: INTEGER)
RETURN INTEGER;

FUNCTION str_by_index (i: INTEGER; str: STRING)
RETURN STRING;

FUNCTION hex_to_bin_str( str: STRING; str_length: INTEGER; rtn_length: INTEGER)
RETURN STRING;

FUNCTION flip_str(str: STRING; str_length: INTEGER)
RETURN STRING;

FUNCTION family_str_to_int(family:STRING)
RETURN INTEGER;

FUNCTION set_sinit( has_sinit:INTEGER; width: INTEGER; orig_sinit : STRING)
RETURN STRING;

---------------------- Memory initialization function ----------------------

FUNCTION parse_init(family: INTEGER; init_vector: BIT_VECTOR; user_width: INTEGER; user_depth: INTEGER; primitive_start_point: INTEGER; bram_parity_width: INTEGER; bram_data_width: INTEGER; data_width: INTEGER)
RETURN INIT_ARRAY;

FUNCTION v2parse_initp(init_vector: BIT_VECTOR; user_width: INTEGER; user_depth: INTEGER; primitive_start_point: INTEGER; bram_parity_width: INTEGER; bram_data_width: INTEGER; data_width: INTEGER)
RETURN INITP_ARRAY;

FUNCTION find_start_point(user_width : INTEGER; block_num : INTEGER; block_depth : INTEGER; col_start_point : INTEGER)
RETURN INTEGER;

END  blkmemsp_pkg_v3_0 ;

----------------------------------------------------------------------------
-- Definition of functions
----------------------------------------------------------------------------
--  1.	find_addr_width (family: INTEGER; depth: INTEGER)
--	Given the depth of a Block RAM primitive and the target architecture, 
--      returns the address port width.
--
--  2.  find_data_width (family: INTEGER; depth: INTEGER)
--      Given the depth of a Block RAM primitive and the target architecture,
--      returns the data width of the primitive.(excluding parity bits)
--
--  3.	find_parity_width (family: INTEGER; depth: INTEGER)
--	Given the depth of a Block RAM primitive and the target architecture,
--      returns the parity width of the primitive.
--
--  4.	find_blk_depth (family: INTEGER; blk_width: INTEGER)
--      Given the data width and target architecture, it returns 
--	corresponding depth of a Block RAM primitive that can accomadate
--	the data width.
--
--  5.	find_blk_count (family: INTEGER ; slice_width: INTEGER ; slice_depth:
--	INTEGER)
--      Given the memory or slice_width and slice_depth, return the Block 
--	RAM count.
--
--  6.	slice_width_v2 (family: INTEGER; slice_start: INTEGER; ram_width: 
--	INTEGER; ram_depth: INTEGER)
--	Returns an array containing number of Block RAMs needed to achieve
--      a width of ram_width. This array uses the least number of block
--      RAMs given index_start_slice. Note that this function calls find_
--      optimized_slice_width_v2().
--
--  7. iterate_opt_slice_width_v2(ram_width: INTEGER; ram_depth: INTEGER;
--      index_start_slice: INTEGER; current_array: v2_array)
--      Given memory width and depth, returns an array containing number of Block
--      RAMs needed to achieve a width of ram_width.  This array uses the least
--      number of block RAMs given index_start_slice.  Note that this function
--      calls slice_width_v2.
--
--  8.	slice_depth_v2 (family: INTEGER; ram_depth: INTEGER)
--	Returns an array containing number of Block RAMs needed to achieve
--	a depth of ram_depth.
--
--  9.	find_total_blk_count (family: INTEGER; max_slice_width: INTEGER; 
--	ram_width: INTEGER; ram_depth: INTEGER)
--	Given the relevant info, returns the total Block RAM count.
--
--  10.	find_start_slice_width (family: INTEGER; ram_width: INTEGER ; 
--	ram_depth: INTEGER; is_single_port : INTEGER)	
--	Given memory width and depth, returns which primitive should you use
--	to start the algorithm.
--
--  11.	find_min_blk_count (family: INTEGER; ram_width: INTEGER ; ram_depth: INTEGER)
--	Returns the minimum Block RAM count for a particular ram_width and ram_depth.		
--
--  12.	int_write_mode_to_string (family: INTEGER; write_mode: INTEGER)
--	Returns the string equivalent of a write mode in integer.
--
--  13.	string_to_bit_vector(str: STRING; str_length: INTEGER)
--	Returns a bit vector equivalent of a string.
--
--  14.	negate_integer(x: INTEGER)
--      Returns 1 when x=0, returns 0 when x=1.
--
--  15.	find_connected_data_width (current_primitive: INTEGER; current_blk: 
--	INTEGER; depth_array: v2_array; width_array: v2_array ; 
--	total_width: INTEGER)
--	Returns the number of connected data width given the appropriate 
--      parameters.
--
--  16.	find_current_data_width (current_primitive: INTEGER; current_blk: 
--	INTEGER; depth_array: v2_array; width_array: v2_array; 
--	total_width : INTEGER)
--	Returns the data width that is being processed.
--
--  17.	find_result_delay(c_reg_inputs: INTEGER; c_pipe_stages: INTEGER)
--	Returns the core's input to output delay.
--
--  18.	log2roundup(data_value: INTEGER)
--	Returns the Ceil( log2(data_value) ).
--
--  19.	div4roundup(data_value: INTEGER)
--	Returns the Ceil ( data_value/4 )
--
--  20.	get_lesser (a: INTEGER; b: INTEGER)
--	Returns the min(a,b) 
--
--  21.	str_by_index (i: INTEGER; str: STRING)
--	Returns str(i).
--
--  22.	hex_to_bin_str( str: STRING; str_length: INTEGER; rtn_length: 
--	INTEGER)
--	Returns the bin conversion of hex value str.
--
--  23.	flip_str(str: STRING; str_length: INTEGER)
--	Reverses string str.
--
--  24.	family_str_to_int(family:STRING)
--	Returns the integer version of a string representation of parameter 
--	family.
--
--  25.	set_sinit( has_sinit:INTEGER; width: INTEGER; orig_sinit : STRING)
--	Returns orig_sinit if has_sinit=1 else returns a string of zeros.
--
--  26.	parse_init(family: INTEGER; init_vector: BIT_VECTOR; user_width:
--      INTEGER; user_depth: INTEGER; primitive_start_point: INTEGER; 
--	bram_data_width: INTEGER; data_width: INTEGER)
--	Returns a INIT_ARRAY which is initailized to the appropriate
--	memory contents.
--
--  27.	v2parse_initp(init_vector: BIT_VECTOR; user_width: INTEGER; 
--	user_depth: INTEGER; primitive_start_point: INTEGER; 
--	bram_parity_width: INTEGER; bram_data_width: INTEGER; data_width: 
--	INTEGER)
--	Returns a INITP_ARRAY which is initailized to the appropriate
--	memory contents.
--
--  28.	find_start_point(user_width : INTEGER; block_num : INTEGER; 
--	block_depth : INTEGER; col_start_point : INTEGER)
--	Returns an integer that represents the first bit of the init memory
--	that is initialized into specific block memory.
--
--  29. assign_default_data(default_data: STRING; depth: INTEGER;  
--      width: INTEGER; lineno: INTEGER; init_vector: IN BIT_VECTOR ) 
--      Returns a bit_vector containing the bits that will be initalized to
--      the memories.  These bits were initalized from the value 
--      default_data
--
--  30. assign_mem_init_vector(filename: STRING; depth: INTEGER; width: 
--      INTEGER; c_has_default_data: INTEGER; default_data: STRING )
--      Returns a bit_vector containing the bits that will be initalized to
--      the memories.  These bits were initalized from the mif file, 
--      filename.
--
----------------------------------------------------------------------------


PACKAGE BODY blkmemsp_pkg_v3_0 IS

----------------------------------------------------------------------------
-- FUNCTION : find_addr_width 
-- Given the depth of a Block RAM primitive and the target architecture, 
-- returns the address port width.                      
----------------------------------------------------------------------------
FUNCTION find_addr_width (family: INTEGER; depth: INTEGER)
RETURN INTEGER IS
  VARIABLE addr_width : INTEGER	:= 0 ;
BEGIN 
  IF (family = virtex) THEN
    CASE depth IS
      WHEN 0      =>	addr_width := 0 ;
      when 128    =>    addr_width := 7;  --added by Jackson
      WHEN 256    =>	addr_width := 8 ;
      WHEN 512    =>	addr_width := 9 ;
      WHEN 1024   =>	addr_width := 10 ;
      WHEN 2048   =>	addr_width := 11 ;
      WHEN 4096   =>	addr_width := 12 ;
      WHEN others =>	addr_width := 0 ; 
    END CASE ;
  ELSIF (family = virtex2) THEN
    CASE depth IS
      WHEN 0      =>    addr_width := 0 ;
      WHEN 256    =>    addr_width := 8 ;
      WHEN 512    =>	addr_width := 9 ;
      WHEN 1024   =>	addr_width := 10 ;
      WHEN 2048   =>	addr_width := 11 ;
      WHEN 4096   =>	addr_width := 12 ;
      WHEN 8192   =>	addr_width := 13 ;
      WHEN 16384  =>	addr_width := 14 ;
      WHEN others =>	addr_width := 0 ; 
    END CASE ;
  ELSE
    addr_width := 0 ;
  END IF ;	
  RETURN addr_width ;
END find_addr_width ;


----------------------------------------------------------------------------
-- FUNCTION : find_data_width 
-- Given the depth of a Block RAM primitive and the target architecture,
-- return the data width of the primitive.(excluding parity bits)
----------------------------------------------------------------------------
FUNCTION find_data_width (family: INTEGER; depth: INTEGER)
RETURN INTEGER IS
  VARIABLE data_width : INTEGER	:= 0 ;
BEGIN 
  IF (family = virtex) THEN
    CASE depth IS
      WHEN 0	=>	data_width := 0 ;
      when 128  =>      data_width := 32;  --added by Jackson
      WHEN 256	=>      data_width := 16 ;
      WHEN 512	=>      data_width := 8 ;
      WHEN 1024	=>	data_width := 4 ;
      WHEN 2048 =>	data_width := 2 ;
      WHEN 4096 =>	data_width := 1 ;
      WHEN others=>	data_width := 0 ; 
    END CASE ;
  ELSIF (family = virtex2) THEN
    CASE depth IS
      WHEN 0	=>	data_width := 0 ;
      WHEN 256	=>	data_width := 64;
      WHEN 512	=>	data_width := 32 ;
      WHEN 1024 =>	data_width := 16 ;
      WHEN 2048 =>	data_width := 8 ;
      WHEN 4096 =>	data_width := 4 ;
      WHEN 8192 =>	data_width := 2 ;
      WHEN 16384 =>	data_width := 1 ;
      WHEN others =>	data_width := 0 ; 
    END CASE ;
  ELSE
    data_width := 0 ;
  END IF ;	
  RETURN data_width ;
END find_data_width ;


----------------------------------------------------------------------------
-- FUNCTION : find_parity_width
-- Given the depth of a Block RAM primitive and the target architecture,
-- return the parity width of the primitive.                     
----------------------------------------------------------------------------
FUNCTION find_parity_width (family: INTEGER; depth: INTEGER)
RETURN INTEGER IS
  VARIABLE parity_width : INTEGER	:= 0 ;
BEGIN 
  IF (family = virtex) THEN
    parity_width := 0 ;
  ELSIF (family = virtex2) THEN
    CASE depth IS
      WHEN 0	=>	parity_width := 0 ;
      WHEN 256	=>	parity_width := 8 ;
      WHEN 512	=>	parity_width := 4 ;
      WHEN 1024	=>	parity_width := 2 ;
      WHEN 2048 =>	parity_width := 1 ;
      WHEN others=>	parity_width := 0 ; 
    END CASE ;
  ELSE
    parity_width := 0 ;
  END IF ;	
  RETURN parity_width ;
END find_parity_width ;

----------------------------------------------------------------------------
-- FUNCTION : find_blk_depth 
-- Given the data width and target architecture, it returns 
-- corresponding depth of a Block RAM primitive that can accomadate
-- the data width.                       
----------------------------------------------------------------------------
FUNCTION find_blk_depth (family: INTEGER; blk_width: INTEGER)
RETURN INTEGER IS
  VARIABLE blk_depth : INTEGER	:= 0 ;
BEGIN 
  IF (family = virtex) THEN
    CASE blk_width IS
      WHEN 0 =>		blk_depth := 0 ;
      WHEN 1 =>		blk_depth := 4096 ;
      WHEN 2 =>		blk_depth := 2048 ;
      WHEN 3|4 =>	blk_depth := 1024 ;
      WHEN 5|6|7|8 =>	blk_depth := 512 ;
      WHEN 9|10|11|12 =>blk_depth := 256 ;
      WHEN 13|14|15|16 =>blk_depth := 256 ;
      WHEN others =>	blk_depth := 0 ; 
		END CASE ;
	
  ELSIF (family = virtex2) THEN
    CASE blk_width IS
      WHEN 0				=>	blk_depth := 0 ;
      WHEN 1				=>	blk_depth := 16384 ;
      WHEN 2				=>	blk_depth := 8192 ;
      WHEN 3|4				=>	blk_depth := 4096 ;
      WHEN 5|6|7|8|9 			=>	blk_depth := 2048 ;
      WHEN 10|11|12|13|14|15|16|17|18	=>	blk_depth := 1024 ;
      WHEN 19|20|21|22|23|24|25|26|27	=>	blk_depth := 512 ;
      WHEN 28|29|30|31|32|33|34|35|36	=>	blk_depth := 512 ;
      WHEN others			=>	blk_depth := 0 ; 
    END CASE ;
  ELSE
    blk_depth := 0 ;
  END IF ;	
  RETURN blk_depth;
END find_blk_depth;


----------------------------------------------------------------------------
-- FUNCTION : find_blk_count
-- Given the memory or slice_width and slice_depth, return the Block 
-- RAM count.                       
----------------------------------------------------------------------------
FUNCTION find_blk_count (family: INTEGER ; 
			slice_width: INTEGER ;
			slice_depth: INTEGER )
RETURN INTEGER IS
  VARIABLE block_count : INTEGER	:= 0 ;
  CONSTANT block_depth : INTEGER	:= find_blk_depth(family, slice_width) ;
	
BEGIN 
  IF (block_depth > 0) THEN
    block_count := (((slice_depth-1)/block_depth) +1) ;
  ELSE
    block_count := 0 ;			
  END IF ;
  RETURN block_count ;
END find_blk_count ;


----------------------------------------------------------------------------
-- FUNCTION : slice_(the_)width_v2
-- Returns an optimized array containing number of Block RAMs needed to achieve
-- a width of ram_width.		   
----------------------------------------------------------------------------

FUNCTION slice_width_v2 (family: INTEGER ; 
			slice_start: INTEGER ; 
			ram_width: INTEGER ; 
			ram_depth: INTEGER)
RETURN v2_array IS
  --widths are{1,2,4,9,18,36,72} respectively
  VARIABLE slice_array 	: v2_array	:= (0,0,0,0,0,0,0) ;	
  VARIABLE remainder 	: INTEGER	:= 0 ;
  VARIABLE slice_width	: INTEGER	:= 0 ;
  VARIABLE i, finish    : INTEGER       := 0;
BEGIN

  remainder := ram_width;

  -- iterate through all the possible primitive widths
  -- and while the flag "finish" is invalid
  WHILE (i < v2_index) and (finish = 0) LOOP
    slice_width := v2_widths(i) ;
    
    -- find the optimize number of blocks of a certain primitive 
    -- that is needed to implement ram_width x ram_depth 
    -- There are 4 cases to check.
  
    -- Case 1: If current primitive width larger than the 
    -- start width    
    IF (slice_start < slice_width) THEN
      slice_array(i) := 0;

    -- Case 2: If current primitive width is the indicated start
    -- width
    ELSIF (slice_start = slice_width) THEN

      -- requested RAM width is smaller than the primitive width
      IF (ram_width <= slice_width) THEN
        slice_array(i) := 1;
        remainder      := 0;
      -- requested RAM width is larger than the primitive width 
      -- and the remainding width to be processed is smaller or equal
      -- than the next primitive width
      ELSE
        slice_array(i) := (ram_width/slice_width) ;
        remainder      :=  ram_width - (slice_array(i) * slice_width);
        IF (remainder /= 0) THEN
          slice_array := iterate_opt_slice_width_v2(remainder, ram_depth, i, slice_array);
        END IF;
      END IF;

      finish         := 1;
           
    -- Case 3: IF using the last index, primitive_width = 1
    ELSIF ( (slice_width = 1) AND (remainder > 0) ) THEN
      slice_array(i) := (remainder/slice_width);
      remainder := remainder - (slice_array(i)*slice_width);
      finish := 1;
    END IF;

    -- increment index
    i := i + 1;    

  END LOOP;
  
  RETURN slice_array ;
END slice_width_v2 ;

----------------------------------------------------------------------------
-- FUNCTION : slice_(the_)width_v
-- Returns an optimized array containing number of Block RAMs needed to achieve
-- a width of ram_width.		   
----------------------------------------------------------------------------

FUNCTION slice_width_v (family: INTEGER ; 
			slice_start: INTEGER ; 
			ram_width: INTEGER ; 
			ram_depth: INTEGER)
RETURN v_array IS
  --widths are{1,2,4,8,16,32} respectively
  VARIABLE slice_array 	: v_array	:= (0,0,0,0,0,0) ;	
  VARIABLE remainder 	: INTEGER	:= 0 ;
  VARIABLE slice_width	: INTEGER	:= 0 ;
  VARIABLE i, finish    : INTEGER       := 0;
BEGIN

  remainder := ram_width;

  -- iterate through all the possible primitive widths
  -- and while the flag "finish" is invalid
  WHILE (i < v_index) and (finish = 0) LOOP
    slice_width := v_widths(i) ;
    
    -- find the optimize number of blocks of a certain primitive 
    -- that is needed to implement ram_width x ram_depth 
    -- There are 4 cases to check.
  
    -- Case 1: If current primitive width larger than the 
    -- start width    
    IF (slice_start < slice_width) THEN
      slice_array(i) := 0;

    -- Case 2: If current primitive width is the indicated start
    -- width
    ELSIF (slice_start = slice_width) THEN

      -- requested RAM width is smaller than the primitive width
      IF (ram_width <= slice_width) THEN
        slice_array(i) := 1;
        remainder      := 0;
      -- requested RAM width is larger than the primitive width 
      -- and the remainding width to be processed is smaller or equal
      -- than the next primitive width
      ELSE
        slice_array(i) := (ram_width/slice_width) ;
        remainder      :=  ram_width - (slice_array(i) * slice_width);
        IF (remainder /= 0) THEN
          slice_array := iterate_opt_slice_width_v(remainder, ram_depth, i, slice_array);
        END IF;
      END IF;

      finish         := 1;
           
    -- Case 3: IF using the last index, primitive_width = 1
    ELSIF ( (slice_width = 1) AND (remainder > 0) ) THEN
      slice_array(i) := (remainder/slice_width);
      remainder := remainder - (slice_array(i)*slice_width);
      finish := 1;
    END IF;

    -- increment index
    i := i + 1;    

  END LOOP;
  
  RETURN slice_array ;
END slice_width_v ;
----------------------------------------------------------------------------
-- FUNCTION : iterate_opt_slice_(the_)width_v2
-- Returns an array containing an optimized number of Block RAMs needed to
-- achieve width of ram_width.		   
----------------------------------------------------------------------------
FUNCTION iterate_opt_slice_width_v2( ram_width : INTEGER;
                                        ram_depth : INTEGER;
                                        index_start_slice : INTEGER;
                                        current_array : v2_array )
RETURN v2_array IS
  CONSTANT depth_array : v2_array := slice_depth_v2(virtex2, ram_depth);
  VARIABLE start_width : INTEGER  := 0;
  VARIABLE best_width  : INTEGER  := 0;
  VARIABLE best_blocks : INTEGER  := 99999; -- arbritary large number
  VARIABLE best_width_array : v2_array := (0,0,0,0,0,0,0);
  VARIABLE width_array  : v2_array     := (0,0,0,0,0,0,0);
  VARIABLE total_blocks : INTEGER      := 0; 
BEGIN

  -- start iterating from the last index used to the max index value
  FOR i IN index_start_slice TO (v2_index-1) LOOP
    start_width := v2_widths(i);
    -- find the optimized width_array associated with the start width
    width_array  := slice_width_v2(virtex2, start_width, ram_width, ram_depth);

    -- calculate number of blocks used for this array
    total_blocks := 0;
    FOR j  IN 0 TO (v2_index-1) LOOP
      total_blocks := total_blocks + (depth_array(j)*width_array(j));
    END LOOP;

    -- store the width array and start width with the smallest block count
    -- so far
    IF (total_blocks <= best_blocks) AND (total_blocks /= 0) THEN
      best_width_array := width_array;
      best_blocks := total_blocks ;
      best_width  := start_width  ;
    END IF;
  END LOOP;

  -- combine the previous v2_array with the new one
  FOR k IN 0 TO index_start_slice-1 LOOP
    best_width_array(k) := current_array(k);
  END LOOP;
    best_width_array(index_start_slice) := current_array(index_start_slice) + best_width_array(index_start_slice);


  RETURN best_width_array ;

END iterate_opt_slice_width_v2;

----------------------------------------------------------------------------
-- FUNCTION : iterate_opt_slice_(the_)width_v2
-- Returns an array containing an optimized number of Block RAMs needed to
-- achieve width of ram_width.		   
----------------------------------------------------------------------------
FUNCTION iterate_opt_slice_width_v( ram_width : INTEGER;
                                        ram_depth : INTEGER;
                                        index_start_slice : INTEGER;
                                        current_array : v_array )
RETURN v_array IS
  CONSTANT depth_array : v_array := slice_depth_v(virtex, ram_depth);
  VARIABLE start_width : INTEGER  := 0;
  VARIABLE best_width  : INTEGER  := 0;
  VARIABLE best_blocks : INTEGER  := 99999; -- arbritary large number
  VARIABLE best_width_array : v_array := (0,0,0,0,0,0);
  VARIABLE width_array  : v_array     := (0,0,0,0,0,0);
  VARIABLE total_blocks : INTEGER      := 0; 
BEGIN

  -- start iterating from the last index used to the max index value
  FOR i IN index_start_slice TO (v_index-1) LOOP
    start_width := v_widths(i);
    -- find the optimized width_array associated with the start width
    width_array  := slice_width_v(virtex, start_width, ram_width, ram_depth);

    -- calculate number of blocks used for this array
    total_blocks := 0;
    FOR j  IN 0 TO (v_index-1) LOOP
      total_blocks := total_blocks + (depth_array(j)*width_array(j));
    END LOOP;

    -- store the width array and start width with the smallest block count
    -- so far
    IF (total_blocks <= best_blocks) AND (total_blocks /= 0) THEN
      best_width_array := width_array;
      best_blocks := total_blocks ;
      best_width  := start_width  ;
    END IF;
  END LOOP;

  -- combine the previous v2_array with the new one
  FOR k IN 0 TO index_start_slice-1 LOOP
    best_width_array(k) := current_array(k);
  END LOOP;
    best_width_array(index_start_slice) := current_array(index_start_slice) + best_width_array(index_start_slice);


  RETURN best_width_array ;

END iterate_opt_slice_width_v;

----------------------------------------------------------------------------
-- FUNCTION : slice_(the_)depth_v2
-- Returns an array containing number of Block RAMs needed to achieve
-- a depth of ram_depth.                                           
----------------------------------------------------------------------------
FUNCTION slice_depth_v2 (family: INTEGER ; ram_depth: INTEGER)
RETURN v2_array IS
  VARIABLE slice_count 	: v2_array	:= (0,0,0,0,0,0,0) ;	
  --widths are{1,2,4,9,18,36} respectively
BEGIN
  FOR i IN 0 TO (v2_index-1) LOOP
    IF (ram_depth > 0) THEN
      slice_count(i) := (((ram_depth-1)/v2_depths(i)) +1) ;
    ELSE
      slice_count(i) := 0 ;
    END IF ;				
  END LOOP ;
    RETURN slice_count ;
END slice_depth_v2 ;

----------------------------------------------------------------------------
-- FUNCTION : slice_(the_)depth_v
-- Returns an array containing number of Block RAMs needed to achieve
-- a depth of ram_depth.                                           
----------------------------------------------------------------------------
FUNCTION slice_depth_v (family: INTEGER ; ram_depth: INTEGER)
RETURN v_array IS
  VARIABLE slice_count 	: v_array	:= (0,0,0,0,0,0) ;	
  --widths are{1,2,4,8,16,32} respectively
BEGIN
  FOR i IN 0 TO (v_index-1) LOOP
    IF (ram_depth > 0) THEN
      slice_count(i) := (((ram_depth-1)/v_depths(i)) +1) ;
    ELSE
      slice_count(i) := 0 ;
    END IF ;				
  END LOOP ;
    RETURN slice_count ;
END slice_depth_v ;



----------------------------------------------------------------------------
-- FUNCTION : find_total_blk_count(_v2)
-- Given the relevant info, returns the total Block RAM count.
----------------------------------------------------------------------------
FUNCTION find_total_blk_count_v2 (family: INTEGER ;
				max_slice_width: INTEGER ;
				ram_width: INTEGER ;   
				ram_depth: INTEGER)
RETURN INTEGER IS
  CONSTANT slice_array 	: v2_array	:= slice_width_v2 (family, max_slice_width, ram_width, ram_depth) ;
  CONSTANT block_count	: v2_array	:= slice_depth_v2 (family, ram_depth) ;
  VARIABLE total_blocks	: INTEGER	:= 0 ;
BEGIN
  FOR i IN 0 TO (v2_index-1) LOOP
    total_blocks	:= total_blocks + (slice_array(i) * block_count(i)) ;
  END LOOP ;
  RETURN total_blocks ;
END find_total_blk_count_v2 ;

----------------------------------------------------------------------------
-- FUNCTION : find_total_blk_count(_v)
-- Given the relevant info, returns the total Block RAM count.
----------------------------------------------------------------------------
FUNCTION find_total_blk_count_v (family: INTEGER ;
				max_slice_width: INTEGER ;
				ram_width: INTEGER ;   
				ram_depth: INTEGER)
RETURN INTEGER IS
  CONSTANT slice_array 	: v_array	:= slice_width_v (family, max_slice_width, ram_width, ram_depth) ;
  CONSTANT block_count	: v_array	:= slice_depth_v (family, ram_depth) ;
  VARIABLE total_blocks	: INTEGER	:= 0 ;
BEGIN
  FOR i IN 0 TO (v_index-1) LOOP
    total_blocks	:= total_blocks + (slice_array(i) * block_count(i)) ;
  END LOOP ;
  RETURN total_blocks ;
END find_total_blk_count_v ;

----------------------------------------------------------------------------
-- FUNCTION : find_start_slice_width(_v2)
-- Given memory width and depth, returns which primitive should you use
-- to start the algorithm.*    	    
----------------------------------------------------------------------------
FUNCTION find_start_slice_width_v2 (family: INTEGER ;
				ram_width: INTEGER ;   
				ram_depth: INTEGER ;
                                is_single_port : INTEGER)
RETURN INTEGER IS
  VARIABLE start_width	: INTEGER	:= 0 ;
  VARIABLE best_width	: INTEGER 	:= 0 ;	
  VARIABLE total_blocks	: INTEGER	:= 0 ;
  VARIABLE best_blocks	: INTEGER	:= 99999 ;	--arbitrary large #
  VARIABLE v2_index_start : INTEGER := 0;
BEGIN
  IF (is_single_port = 1) THEN
    v2_index_start := 0;
  ELSE
    v2_index_start := 1;
  END IF;
  
  FOR i IN v2_index_start TO (v2_index-1) LOOP
    start_width	:= v2_widths(i) ;
    total_blocks:= find_total_blk_count_v2(family, start_width, ram_width, ram_depth) ;
    IF (total_blocks <= best_blocks) THEN
      best_blocks 	:= total_blocks ;
      best_width	:= start_width ;
    END IF ;
  END LOOP ;
  RETURN best_width ;
END find_start_slice_width_v2 ;

----------------------------------------------------------------------------
-- FUNCTION : find_start_slice_width(_v)
-- Given memory width and depth, returns which primitive should you use
-- to start the algorithm.*    	    
----------------------------------------------------------------------------
FUNCTION find_start_slice_width_v (family: INTEGER ;
				ram_width: INTEGER ;   
				ram_depth: INTEGER ;
                                is_single_port : INTEGER)
RETURN INTEGER IS
  VARIABLE start_width	: INTEGER	:= 0 ;
  VARIABLE best_width	: INTEGER 	:= 0 ;	
  VARIABLE total_blocks	: INTEGER	:= 0 ;
  VARIABLE best_blocks	: INTEGER	:= 99999 ;	--arbitrary large #
  VARIABLE v_index_start : INTEGER := 0;
BEGIN
  IF (is_single_port = 1) THEN
    v_index_start := 0;
  ELSE
    v_index_start := 1;
  END IF;
  
  FOR i IN v_index_start TO (v_index-1) LOOP
    start_width	:= v_widths(i) ;
    total_blocks:= find_total_blk_count_v(family, start_width, ram_width, ram_depth) ;
    IF (total_blocks <= best_blocks) THEN
      best_blocks 	:= total_blocks ;
      best_width	:= start_width ;
    END IF ;
  END LOOP ;
  RETURN best_width ;
END find_start_slice_width_v ;

----------------------------------------------------------------------------
-- FUNCTION : find_min_blk_count(_v2)      	    
-- Returns the minimum Block RAM count for a particular ram_width and 
-- ram_depth.		
----------------------------------------------------------------------------
FUNCTION find_min_blk_count_v2 (family: INTEGER ;
			     ram_width: INTEGER ;   
			     ram_depth: INTEGER)
RETURN INTEGER IS
  VARIABLE start_width	: INTEGER	:= 0 ;
  VARIABLE best_width	: INTEGER 	:= 0 ;	
  VARIABLE total_blocks	: INTEGER	:= 0 ;
  VARIABLE best_blocks	: INTEGER	:= 99999 ;	--arbitrary large #
BEGIN
  FOR i IN 0 TO (v2_index-1) LOOP
    start_width	:= v2_widths(i) ;
    total_blocks:= find_total_blk_count_v2(family, start_width, ram_width, ram_depth) ;
    IF (total_blocks <= best_blocks) THEN
      best_blocks := total_blocks ;
      best_width  := start_width ;
    END IF ;
  END LOOP ;
RETURN best_blocks ;
END find_min_blk_count_v2 ;
----------------------------------------------------------------------------
-- FUNCTION : find_min_blk_count(_v2)      	    
-- Returns the minimum Block RAM count for a particular ram_width and 
-- ram_depth.		
----------------------------------------------------------------------------
FUNCTION find_min_blk_count_v (family: INTEGER ;
			     ram_width: INTEGER ;   
			     ram_depth: INTEGER)
RETURN INTEGER IS
  VARIABLE start_width	: INTEGER	:= 0 ;
  VARIABLE best_width	: INTEGER 	:= 0 ;	
  VARIABLE total_blocks	: INTEGER	:= 0 ;
  VARIABLE best_blocks	: INTEGER	:= 99999 ;	--arbitrary large #
BEGIN
  FOR i IN 0 TO (v_index-1) LOOP
    start_width	:= v_widths(i) ;
    total_blocks:= find_total_blk_count_v2(family, start_width, ram_width, ram_depth) ;
    IF (total_blocks <= best_blocks) THEN
      best_blocks := total_blocks ;
      best_width  := start_width ;
    END IF ;
  END LOOP ;
RETURN best_blocks ;
END find_min_blk_count_v ;

----------------------------------------------------------------------------
-- FUNCTION : int_write_mode_to_string(_v2)
-- Returns the string equivalent of a write mode in integer.     	    
----------------------------------------------------------------------------
FUNCTION int_write_mode_to_string (family : INTEGER ; write_mode : INTEGER)
RETURN STRING IS
BEGIN
  IF write_mode = 0 THEN
    RETURN write_first_bits;
  ELSIF write_mode = 1 THEN
    RETURN read_first_bits;
  ELSIF write_mode = 2 THEN
    RETURN no_change_bits;
  ELSE
    RETURN "";
  END IF;          
END int_write_mode_to_string;

----------------------------------------------------------------------------
-- FUNCTION : string_to_bit_vector(_v2)  
-- Returns a bit vector equivalent of a string.    	    
----------------------------------------------------------------------------
FUNCTION string_to_bit_vector(str: STRING; str_length: INTEGER)
RETURN BIT_VECTOR IS
  VARIABLE ans : BIT_VECTOR(str_length-1 DOWNTO 0);
BEGIN

  FOR j IN 0 TO str_length-1 LOOP
    ans(j) := '0';
  END LOOP;
         
 FOR i IN 0 TO str_length-1 LOOP
    IF str(i+1) = '0' THEN
      ans(i) := '0';
    ELSIF str(i+1) = '1' THEN
      ans(i) := '1';
    ELSE
      ans(i) := '0';
    END IF;
  END LOOP;         

  RETURN ans;

END string_to_bit_vector;

----------------------------------------------------------------------------
-- FUNCTION : negate_integer            	    
-- Returns 1 when x=0, returns 0 when x=1.
----------------------------------------------------------------------------
FUNCTION negate_integer( x: INTEGER )
         RETURN INTEGER IS
         VARIABLE y : INTEGER := 0;
         BEGIN
         IF ( x = 0) THEN
            y := 1;
         END IF;                   
         
         RETURN y;

END negate_integer;

----------------------------------------------------------------------------
-- FUNCTION : find_connected_data_width        
-- Returns the number of connected data width given the appropriate 
-- parameters.     
----------------------------------------------------------------------------
FUNCTION find_connected_data_width_v2 (current_primitive:INTEGER; 
                                    current_blk:INTEGER; 
                                    depth_array:v2_array; 
                                    width_array:v2_array; 
                                    total_width : INTEGER)
RETURN INTEGER IS
  VARIABLE width_connected   : INTEGER := 0;
  VARIABLE width_unconnected : INTEGER := total_width;
  VARIABLE primitive_width   : INTEGER := 0;
  VARIABLE num_primitive_col : INTEGER := 0;
BEGIN  
  FOR i IN 0 TO current_primitive LOOP
    primitive_width :=  v2_widths(i);
    IF (i = current_primitive) THEN 
      num_primitive_col := current_blk-1;
    ELSE
      num_primitive_col := width_array(i);
    END IF;
    IF ( num_primitive_col /= 0) THEN
      FOR j IN 1 TO num_primitive_col LOOP
        IF (width_unconnected >= primitive_width) THEN 
          width_connected := width_connected + primitive_width;
          width_unconnected := width_unconnected - primitive_width;
        ELSE 
          width_connected := width_connected + (width_unconnected); 
          width_unconnected := 0;
        END IF;
      END LOOP;
    END IF;
  END LOOP;       	 
  RETURN width_connected ;
END find_connected_data_width_v2 ;

---------------------------------------------------------------------------
-- FUNCTION : find_connected_data_width        
-- Returns the number of connected data width given the appropriate 
-- parameters.     
----------------------------------------------------------------------------
FUNCTION find_connected_data_width_v (current_primitive:INTEGER; 
                                    current_blk:INTEGER; 
                                    depth_array:v_array; 
                                    width_array:v_array; 
                                    total_width : INTEGER)
RETURN INTEGER IS
  VARIABLE width_connected   : INTEGER := 0;
  VARIABLE width_unconnected : INTEGER := total_width;
  VARIABLE primitive_width   : INTEGER := 0;
  VARIABLE num_primitive_col : INTEGER := 0;
BEGIN  
  FOR i IN 0 TO current_primitive LOOP
    primitive_width :=  v_widths(i);
    IF (i = current_primitive) THEN 
      num_primitive_col := current_blk-1;
    ELSE
      num_primitive_col := width_array(i);
    END IF;
    IF ( num_primitive_col /= 0) THEN
      FOR j IN 1 TO num_primitive_col LOOP
        IF (width_unconnected >= primitive_width) THEN 
          width_connected := width_connected + primitive_width;
          width_unconnected := width_unconnected - primitive_width;
        ELSE 
          width_connected := width_connected + (width_unconnected); 
          width_unconnected := 0;
        END IF;
      END LOOP;
    END IF;
  END LOOP;       	 
  RETURN width_connected ;
END find_connected_data_width_v ;

----------------------------------------------------------------------------
-- FUNCTION : find_current_data_width_v2
-- Returns the data width that is being processed.             
----------------------------------------------------------------------------

FUNCTION find_current_data_width_v2 (current_primitive:INTEGER; 
                                  current_blk:INTEGER; 
                                  depth_array:v2_array;
                                  width_array:v2_array;
                                  total_width : INTEGER)
RETURN INTEGER IS
  VARIABLE width_connected   : INTEGER := 0;
  VARIABLE width_unconnected : INTEGER := total_width;
  VARIABLE primitive_width   : INTEGER := 0;
  VARIABLE num_primitive_col : INTEGER := 0;
  VARIABLE current_data_width : INTEGER := 0;
BEGIN  
  FOR i IN 0 TO current_primitive LOOP
    primitive_width :=  v2_widths(i);              
    IF (i = current_primitive) THEN 
      num_primitive_col := current_blk;
    ELSE
      num_primitive_col := width_array(i);
    END IF;              
    IF ( num_primitive_col /= 0) THEN
      FOR j IN 1 TO num_primitive_col LOOP
        IF (width_unconnected >= primitive_width) THEN 
          width_connected := width_connected + primitive_width;
          width_unconnected := width_unconnected - primitive_width;
          current_data_width := primitive_width;
        ELSE 
          width_connected := width_connected + (width_unconnected); 
          current_data_width := width_unconnected;
          width_unconnected := 0;
        END IF;
      END LOOP;
    END IF;
  END LOOP;       	   
  RETURN current_data_width ;
END find_current_data_width_v2 ;
----------------------------------------------------------------------------
-- FUNCTION : find_current_data_width_v
-- Returns the data width that is being processed.             
----------------------------------------------------------------------------

FUNCTION find_current_data_width_v (current_primitive:INTEGER; 
                                  current_blk:INTEGER; 
                                  depth_array:v_array;
                                  width_array:v_array;
                                  total_width : INTEGER)
RETURN INTEGER IS
  VARIABLE width_connected   : INTEGER := 0;
  VARIABLE width_unconnected : INTEGER := total_width;
  VARIABLE primitive_width   : INTEGER := 0;
  VARIABLE num_primitive_col : INTEGER := 0;
  VARIABLE current_data_width : INTEGER := 0;
BEGIN  
  FOR i IN 0 TO current_primitive LOOP
    primitive_width :=  v_widths(i);              
    IF (i = current_primitive) THEN 
      num_primitive_col := current_blk;
    ELSE
      num_primitive_col := width_array(i);
    END IF;              
    IF ( num_primitive_col /= 0) THEN
      FOR j IN 1 TO num_primitive_col LOOP
        IF (width_unconnected >= primitive_width) THEN 
          width_connected := width_connected + primitive_width;
          width_unconnected := width_unconnected - primitive_width;
          current_data_width := primitive_width;
        ELSE 
          width_connected := width_connected + (width_unconnected); 
          current_data_width := width_unconnected;
          width_unconnected := 0;
        END IF;
      END LOOP;
    END IF;
  END LOOP;       	   
  RETURN current_data_width ;
END find_current_data_width_v ;
----------------------------------------------------------------------------
-- FUNCTION : find_result_delay
-- Returns the core's input to output delay.
----------------------------------------------------------------------------
FUNCTION find_result_delay(c_reg_inputs : INTEGER; c_pipe_stages : INTEGER)
RETURN INTEGER IS
  VARIABLE result_delay : INTEGER := 0;
BEGIN
  IF( (c_reg_inputs=0) AND (c_pipe_stages=0) ) THEN
    result_delay := 1;
  ELSIF ( (c_reg_inputs=1) AND (c_pipe_stages=0) ) THEN
    result_delay := 2;
  ELSIF ( (c_reg_inputs=0) AND (c_pipe_stages=1) ) THEN
    result_delay := 2;       
  ELSIF ( (c_reg_inputs=1) AND (c_pipe_stages=1) ) THEN
    result_delay := 3;
  END IF;
  RETURN result_delay;
END find_result_delay;

----------------------------------------------------------------------------
-- FUNCTION : log2roundup                   
-- Returns the Ceil( log2(data_value) ).      
----------------------------------------------------------------------------
FUNCTION log2roundup (data_value: INTEGER)
RETURN INTEGER IS 
	
VARIABLE width 		: INTEGER := 0;
VARIABLE cnt            : INTEGER := 1;
CONSTANT lower_limit 	: INTEGER := 1;
CONSTANT upper_limit	: INTEGER := 8;

BEGIN
  IF (data_value <= 1) THEN
    width := 0;          
  ELSE
    WHILE (cnt < data_value) LOOP
      width := width + 1;
      cnt := cnt *2;
    end LOOP;
  END IF;

  RETURN width;
END log2roundup;


----------------------------------------------------------------------------
-- FUNCTION : div4roundup
-- Returns the Ceil ( data_value/4 )                       
----------------------------------------------------------------------------
FUNCTION div4roundup (data_value: INTEGER)
RETURN INTEGER IS 
  VARIABLE div       : INTEGER;
BEGIN	
  div := data_value/4;
  IF ( (data_value mod 4) /= 0) THEN
    div := div+1;
  END IF;              
  RETURN div;
END div4roundup;

----------------------------------------------------------------------------
-- FUNCTION : get_lesser
-- Returns the min(a,b)                           
----------------------------------------------------------------------------
FUNCTION get_lesser (a: INTEGER; b: INTEGER)
RETURN INTEGER IS
VARIABLE smallest : INTEGER := 1;
BEGIN
  IF (a < b) THEN
    smallest := a;
  ELSE
    smallest := b;
  END IF;          
  RETURN smallest;
END get_lesser;

----------------------------------------------------------------------------
-- FUNCTION : str_by_index                          
-- Returns a string of size one starting at index i 
-- of string str                                    
----------------------------------------------------------------------------
FUNCTION str_by_index ( i:INTEGER; str: STRING)
RETURN STRING IS
  VARIABLE str_tmp : STRING(1 TO 1);
BEGIN
  str_tmp := str(i TO i);
  RETURN str_tmp;
END str_by_index;


----------------------------------------------------------------------------
-- FUNCTION : hex_to_bin_str
-- Returns a binary representation of the HEX
-- characters
-- Note : that the str input is flipped to produce
-- output.  Ex. 43 := 0011 0100
----------------------------------------------------------------------------
FUNCTION hex_to_bin_str( str : STRING; str_length : INTEGER; rtn_length : INTEGER)
RETURN STRING IS
VARIABLE str_tmp : STRING(1 TO rtn_length);
VARIABLE tmp     : STRING(1 TO str_length*4);
BEGIN
  FOR i IN 0 TO (str_length-1) LOOP            
    CASE str(str_length-i) IS
      WHEN '0' => tmp(i*4+1 TO (i+1)*4) := "0000"; 
      WHEN '1' => tmp(i*4+1 TO (i+1)*4) := "1000"; 
      WHEN '2' => tmp(i*4+1 TO (i+1)*4) := "0100"; 
      WHEN '3' => tmp(i*4+1 TO (i+1)*4) := "1100"; 
      WHEN '4' => tmp(i*4+1 TO (i+1)*4) := "0010"; 
      WHEN '5' => tmp(i*4+1 TO (i+1)*4) := "1010"; 
      WHEN '6' => tmp(i*4+1 TO (i+1)*4) := "0110"; 
      WHEN '7' => tmp(i*4+1 TO (i+1)*4) := "1110"; 
      WHEN '8' => tmp(i*4+1 TO (i+1)*4) := "0001"; 
      WHEN '9' => tmp(i*4+1 TO (i+1)*4) := "1001"; 
      WHEN 'A' => tmp(i*4+1 TO (i+1)*4) := "0101"; 
      WHEN 'B' => tmp(i*4+1 TO (i+1)*4) := "1101"; 
      WHEN 'C' => tmp(i*4+1 TO (i+1)*4) := "0011"; 
      WHEN 'D' => tmp(i*4+1 TO (i+1)*4) := "1011"; 
      WHEN 'E' => tmp(i*4+1 TO (i+1)*4) := "0111"; 
      WHEN 'F' => tmp(i*4+1 TO (i+1)*4) := "1111"; 
      WHEN 'a' => tmp(i*4+1 TO (i+1)*4) := "0101"; 
      WHEN 'b' => tmp(i*4+1 TO (i+1)*4) := "1101"; 
      WHEN 'c' => tmp(i*4+1 TO (i+1)*4) := "0011"; 
      WHEN 'd' => tmp(i*4+1 TO (i+1)*4) := "1011"; 
      WHEN 'e' => tmp(i*4+1 TO (i+1)*4) := "0111"; 
      WHEN 'f' => tmp(i*4+1 TO (i+1)*4) := "1111";
      WHEN others  =>  tmp(i*4+1 TO (i+1)*4) := "1111";
    END CASE;
  END LOOP;
  str_tmp(1 TO rtn_length) := tmp(1 TO rtn_length);
  RETURN str_tmp;
END hex_to_bin_str;

----------------------------------------------------------------------------
-- FUNCTION : flip_str                              
-- Flips the string.  Ex. if str=34 output is 43     
----------------------------------------------------------------------------
FUNCTION flip_str(str: STRING; str_length: INTEGER)
RETURN STRING IS
VARIABLE str_tmp   : STRING(1 TO str_length);
BEGIN
  FOR i IN 1 TO str_length LOOP  
    str_tmp(i) := str(str_length-i+1);
  END LOOP;
  RETURN str_tmp;  
END flip_str;

----------------------------------------------------------------------------
-- FUNCTION : family_str_to_int                     
-- Takes string representation of family and converts 
-- it into an integer representation                
----------------------------------------------------------------------------
FUNCTION family_str_to_int (family : STRING)
RETURN INTEGER IS
BEGIN
  IF (family'length = 7) THEN
--  IF (family(7) = '2') THEN
    RETURN 2;
  ELSE
    RETURN 1;
  END IF;          
END family_str_to_int;

----------------------------------------------------------------------------
-- FUNCTION : set_sinit                             
-- Returns a string of zeros if has_sinit = 0 otherwise
-- returns orig_sinit                               
----------------------------------------------------------------------------
FUNCTION set_sinit( has_sinit:INTEGER; width: INTEGER; orig_sinit : STRING)
RETURN STRING IS
  VARIABLE zeros : STRING(1 TO width);
  VARIABLE sinit : STRING(1 TO width);
BEGIN
  FOR i IN 1 TO width LOOP  
    zeros(i) := '0';
  END LOOP;
  IF (has_sinit = 1) THEN
    sinit := orig_sinit;
  ELSE
    sinit := zeros;
  END IF;
  RETURN sinit;
END set_sinit;

----------------------------------------------------------------------------
-- FUNCTION : v2parse_init                          
-- Returns a INIT_ARRAY which is initailized to the appropriate memory 
-- contents.
----------------------------------------------------------------------------
FUNCTION parse_init(  family: INTEGER;
                      init_vector: BIT_VECTOR; 
                      user_width: INTEGER;
                      user_depth: INTEGER;
                      primitive_start_point: INTEGER;
                      bram_parity_width: INTEGER;
                      bram_data_width: INTEGER;
                      data_width: INTEGER)
RETURN INIT_ARRAY IS
  VARIABLE init: INIT_ARRAY;
  VARIABLE skip_parity : INTEGER;
  VARIABLE max_init_lines : INTEGER;
  VARIABLE max_init_width : INTEGER;
BEGIN

  -- set skip_parity variable
  IF data_width <= bram_data_width THEN
    skip_parity := 0;
  ELSE
    skip_parity := data_width - bram_data_width;
  END IF;

  IF family = 2 THEN
    max_init_lines := v2max_init_lines;
    max_init_width := v2max_init_width;
  ELSE
    max_init_width := vmax_init_width;
    max_init_lines := vmax_init_lines;
  END IF;
  
  -- 64 init strings for ram primitive
  FOR i IN 0 TO max_init_lines-1 LOOP	   

    -- count number of words in one primitive init string
    FOR j IN 0 TO ((max_init_width/bram_data_width)-1) LOOP	   

      -- go through each bit of each word in the primitive init string
      FOR k IN 0 TO (bram_data_width-1) LOOP	  

        --------------------------------------------------------------------
        -- Case when index is still valid in the user init string
        -- Parse user init string into primitive init string
        --------------------------------------------------------------------
        IF ((primitive_start_point + skip_parity + k + (j*user_width) + (i*(256/bram_data_width)*user_width)) <= (user_width*user_depth-1)) THEN

          ------------------------------------------------------------------
          -- Case when index is larger than the given user init string
          -- Fill remaining primitive init string with zeros
          ------------------------------------------------------------------
          IF (data_width-1 < k) THEN
             init(i)((bram_data_width-1-k) + (j*bram_data_width)) := '0';
          END IF;
          
          ------------------------------------------------------------------
          -- Case when index is still smaller than the given user init string
          -- Parse each bit of a word in the init vector into each primitive
          -- init string
          ------------------------------------------------------------------
          IF (data_width-1 >= k) THEN
            init(i)((bram_data_width-1-k) + (j*bram_data_width)) := init_vector(primitive_start_point + skip_parity + k + (j*user_width) + (i*(256/bram_data_width)*user_width));
          END IF;
        END IF;

        --------------------------------------------------------------------
        -- Case when index crosses the boundaries of the user init string 
        -- Fill the remaining primitive init string with zeros
        --------------------------------------------------------------------
        IF ((primitive_start_point + skip_parity +k + (j*user_width) + (i*(256/bram_data_width)*user_width)) > (user_width*user_depth-1)) THEN
          init(i)((bram_data_width-1-k) + (j*bram_data_width)) := '0';
        END IF;

      --k loop
      END LOOP; 

    -- j loop
    END LOOP;

  -- i loop
  END LOOP;

  RETURN init;
END parse_init;

----------------------------------------------------------------------------
-- FUNCTION : v2parse_initp                         
-- Returns a INITP_ARRAY which is initailized to the appropriate memory 
-- contents.
----------------------------------------------------------------------------
FUNCTION v2parse_initp(init_vector: BIT_VECTOR; 
                       user_width: INTEGER; 
                       user_depth: INTEGER; 
                       primitive_start_point: INTEGER; 
                       bram_parity_width: INTEGER; 
                       bram_data_width: INTEGER; data_width: INTEGER)
RETURN INITP_ARRAY IS
  VARIABLE initp: INITP_ARRAY;
BEGIN

  IF (data_width > bram_data_width ) THEN

   -- 8 init strings for ram primitive parity
   FOR i IN 0 TO v2max_init_parity-1 LOOP	   

    -- count number of parity groups in one primitive init string
    FOR j IN 0 TO ((v2max_init_width/bram_parity_width)-1) LOOP
      
      -- go through each bit of each parity group in the primitive init string
      FOR k IN 0 TO (bram_parity_width-1) LOOP	  

        --------------------------------------------------------------------
        -- Case when index is still valid in the user init string
        -- Parse user init string parity groups into primitive parity init 
        -- string
        --------------------------------------------------------------------
        IF ((primitive_start_point + k + (j*user_width) + (i*(256/bram_parity_width)*user_width)) <= (user_width*user_depth-1)) THEN

          ------------------------------------------------------------------
          -- Case when index is larger than the given user init string
          -- Fill remaining primitive parity init string with zeros
          ------------------------------------------------------------------
          IF (data_width-bram_parity_width-1 < k) THEN
            initp(i)((bram_parity_width-1-k) + (j*bram_parity_width)) := '0';
          END IF;

          ------------------------------------------------------------------
	  -- Case when index is still smaller than the given user init string
	  -- Parse each bit of a parity group in the init vector into each 
          -- primitive parity init string
          ------------------------------------------------------------------
          IF (data_width-bram_parity_width-1 >= k) THEN
            initp(i)((bram_parity_width-1-k) + (j*bram_parity_width)) := init_vector(primitive_start_point + k + (j*user_width) + (i*(256/bram_parity_width)*user_width));
         END IF;
END IF;
          ------------------------------------------------------------------
	  -- Case when index crosses the boundaries of the user init string 
	  -- Fill the remaining primitive parity init string with zeros
          ------------------------------------------------------------------
          IF ((primitive_start_point + k + (j*user_width) + (i*(256/bram_parity_width)*user_width)) > (user_width*user_depth-1)) THEN
            initp(i)((bram_parity_width-1-k) + (j*bram_parity_width)) := '0';
          END IF;
        
        --k loop
        END LOOP; 
      
      -- j loop
      END LOOP; 
    
    -- i loop
    END LOOP; 

  ELSE
    FOR i IN 0 TO 7 LOOP
      initp(i) := (OTHERS => '0');      
    END LOOP; 
  END IF;   
  RETURN initp;
END v2parse_initp;   

----------------------------------------------------------------------------
-- FUNCTION : find_start_point                         
-- Returns an integer that represents the first bit of the init memory
-- that is initialized into specific block memory                  
----------------------------------------------------------------------------
FUNCTION find_start_point(user_width  : INTEGER; 
                          block_num   : INTEGER; 
                          block_depth : INTEGER; 
                         col_start_point : INTEGER)
RETURN INTEGER IS
  VARIABLE start_point : INTEGER := 0;
BEGIN
  IF (block_num = 0) THEN
    start_point := col_start_point;
  END IF;
  IF (block_num > 0) THEN
    start_point := col_start_point + (user_width * (block_depth * block_num));
  END IF;

  RETURN start_point;
END find_start_point;

   
END blkmemsp_pkg_v3_0;


