----------------------------------------------------------------------------
-- $Id: blkmemdp_pkg_v3_0.vhd,v 1.5 2001/03/27 19:07:18 sujm Exp $
----------------------------------------------------------------------------
-- Dual Port Block Memory Package 
---------------------------------------------------------------------------
--                                                                       --
-- This File is owned and controlled by Xilinx and must be used solely   --
-- for design, simulation, implementation and creation of design files   --
-- limited to Xilinx devices or technologies. Use with non-Xilinx        --
-- devices or technologies is expressly prohibited and immediately       --
-- terminates your license.                                              --
--                                                                       --
-- Xilinx products are not intended for use in life support              --
-- appliances, devices, or systems. Use in such applications is          --
-- expressly prohibited.                                                 --
--                                                                       --
--
--        ****************************
--        ** Copyright Xilinx, Inc. **
--        ** All rights reserved.   **
--        ****************************
--
---------------------------------------------------------------------------
-- Filename:    blkmemdp_pkg_v3_0.vhd
--
-- Description: A package that contains constants, types and functions
-- used by the Dual Port Block Memory behavior model.
---------------------------------------------------------------------------

---------------------------------------------------------------------------
-- Package containing functions used in the Dual Port Block Memory Behavior
-- Model
---------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

PACKAGE blkmemdp_pkg_v3_0 IS

----------------------------------------------------------------------------
-- CONSTANT and TYPE DECLARATION
----------------------------------------------------------------------------

-- Define the family here so I can update it easily
CONSTANT virtex		: INTEGER	:= 1 ;
CONSTANT virtex2	: INTEGER	:= 2 ;
CONSTANT v_index 	: INTEGER	:= 5 ;
CONSTANT v2_index	: INTEGER	:= 6 ;
CONSTANT max_mux_width	: INTEGER	:= 72 ;
CONSTANT max_mux_depth	: INTEGER	:= 64 ;

TYPE v_array IS ARRAY ((v_index-1) DOWNTO 0) OF INTEGER ;
TYPE v2_array IS ARRAY ((v2_index-1) DOWNTO 0) OF INTEGER ;

SUBTYPE mux_input_vector IS STD_LOGIC_VECTOR(max_mux_width-1 DOWNTO 0) ; 
TYPE mux_input_array IS ARRAY (0 TO max_mux_depth-1) OF mux_input_vector ; 
TYPE MEM_ARRAY IS ARRAY (6-1 DOWNTO 0) OF STRING(1 TO 6);

CONSTANT v_widths	: v_array	:= (1, 2, 4, 8, 16) ;
CONSTANT v_depths	: v_array	:= (4096, 2048, 1024, 512, 256) ;
CONSTANT v2_widths	: v2_array	:= (1, 2, 4, 9, 18, 36) ;
CONSTANT v2_depths	: v2_array	:= (16384, 8192, 4096, 2048, 1024, 512) ;
---------------------------------------------------------------------------
-- Define some constants needed in the sim parameters for the block memory V2
-- note: later these constants have to be incorperated in the package for the
-- memory generator
---------------------------------------------------------------------------
CONSTANT c_write_first : INTEGER        := 0;
CONSTANT c_read_first  : INTEGER        := 1;
CONSTANT c_no_change   : INTEGER        := 2;

CONSTANT write_first_bits : STRING        := "WRITE_FIRST";
CONSTANT read_first_bits  : STRING        := "READ_FIRST";
CONSTANT no_change_bits   : STRING        := "NO_CHANGE";

CONSTANT c_sp_rom         : INTEGER        := 0; 
CONSTANT c_dp_rom         : INTEGER        := 4; 
CONSTANT c_sp_ram         : INTEGER        := 1; 
CONSTANT c_dp_ram         : INTEGER        := 2; 
CONSTANT c_srl16          : INTEGER        := 3; 

CONSTANT c_dibitsibuted   : INTEGER        := 0;
CONSTANT c_block_mem      : INTEGER        := 1;
CONSTANT c_hybrid_mem     : INTEGER        := 2;
---------------------------------------------------------------------------
-- Define constants needed in the simulation testbench tb_blkmemv2_v2_0.vhd
-- Single port 
---------------------------------------------------------------------------
CONSTANT DEFAULT_FAMILY		: STRING := "virtex2";
CONSTANT DEFAULT_XMEM_INIT_ARRAY: MEM_ARRAY := ("123456", "123456", "123456", "123456", "123456", "123456");
CONSTANT DEFAULT_MEM_INIT 	: STRING := "";
CONSTANT DEFAULT_LIMIT_PITCH 	: INTEGER := 18;
CONSTANT DEFAULT_HAS_LIMIT_PITCH: INTEGER := 0;
CONSTANT DEFAULT_HAS_DEFAULT    : INTEGER := 1;
CONSTANT DEFAULT_DEFAULT_DATA   : STRING  := "000000000";
CONSTANT DEFAULT_EN_RLOCS       : INTEGER := 1;
CONSTANT DEFAULT_ADDA_WIDTH     : INTEGER := 10;
CONSTANT DEFAULT_ADDB_WIDTH     : INTEGER := 10;
CONSTANT DEFAULT_DEPTHA         : INTEGER := 1024;
CONSTANT DEFAULT_DEPTHB         : INTEGER := 1024;
CONSTANT DEFAULT_HAS_DINA       : INTEGER := 1;
CONSTANT DEFAULT_HAS_DINB       : INTEGER := 1;
CONSTANT DEFAULT_HAS_DOUTA      : INTEGER := 1;
CONSTANT DEFAULT_HAS_DOUTB      : INTEGER := 1;
CONSTANT DEFAULT_HAS_ENA        : INTEGER := 0;
CONSTANT DEFAULT_HAS_ENB        : INTEGER := 0;
CONSTANT DEFAULT_HAS_NDA        : INTEGER := 0;
CONSTANT DEFAULT_HAS_NDB        : INTEGER := 0;
CONSTANT DEFAULT_HAS_RDYA       : INTEGER := 0;
CONSTANT DEFAULT_HAS_RDYB       : INTEGER := 0;
CONSTANT DEFAULT_HAS_RFDA       : INTEGER := 0;
CONSTANT DEFAULT_HAS_RFDB       : INTEGER := 0;
CONSTANT DEFAULT_HAS_SINITA     : INTEGER := 0;
CONSTANT DEFAULT_HAS_SINITB     : INTEGER := 0;
CONSTANT DEFAULT_HAS_WEA        : INTEGER := 1;
CONSTANT DEFAULT_HAS_WEB        : INTEGER := 1;
CONSTANT DEFAULT_PIPE_STAGESA   : INTEGER := 0;
CONSTANT DEFAULT_PIPE_STAGESB   : INTEGER := 0;
CONSTANT DEFAULT_REG_INPUTSA    : INTEGER := 0;
CONSTANT DEFAULT_REG_INPUTSB    : INTEGER := 0;
CONSTANT DEFAULT_SINIT_VALUEA   : STRING  := "0000000000000000000000000000000000000000000000000000000000";
CONSTANT DEFAULT_SINIT_VALUEB   : STRING := "0000000000000000000000000000000000000000000000000000000000";
CONSTANT DEFAULT_WIDTHA         : INTEGER := 16;
CONSTANT DEFAULT_WIDTHB         : INTEGER := 16;
CONSTANT DEFAULT_WRITE_MODEA    : INTEGER := c_write_first;
CONSTANT DEFAULT_WRITE_MODEB    : INTEGER := c_write_first;

----------------------------------------------------------------------------
-- FUNCTION DECLARATION
----------------------------------------------------------------------------

FUNCTION find_addr_width(family: INTEGER; depth: INTEGER)
RETURN INTEGER ;

FUNCTION find_data_width(family: INTEGER; depth: INTEGER)
RETURN INTEGER ;

FUNCTION find_parity_width(family: INTEGER; depth: INTEGER)
RETURN INTEGER ;

FUNCTION find_blk_depth(family: INTEGER; blk_width: INTEGER)
RETURN INTEGER ;

FUNCTION find_blk_count (family: INTEGER ; slice_width: INTEGER ; slice_depth: INTEGER)
RETURN INTEGER ;

FUNCTION slice_width_v2 (family: INTEGER ; slice_start: INTEGER ; ram_width: INTEGER ; ram_depth: INTEGER)
RETURN v2_array ;

FUNCTION slice_depth_v2 (family: INTEGER ; ram_depth: INTEGER)
RETURN v2_array ;

FUNCTION find_total_blk_count (family: INTEGER ; max_slice_width: INTEGER ; ram_width: INTEGER ; ram_depth: INTEGER)
RETURN INTEGER ;

FUNCTION find_start_slice_width (family: INTEGER ; ram_width: INTEGER ; ram_depth: INTEGER)
RETURN INTEGER ;

FUNCTION find_min_blk_count (family: INTEGER ; ram_width: INTEGER ; ram_depth: INTEGER)
RETURN INTEGER ;

FUNCTION int_write_mode_to_string (family: INTEGER ; write_mode: INTEGER)
RETURN STRING ;

FUNCTION string_to_bit_vector(str: STRING; str_length: INTEGER)
RETURN BIT_VECTOR;

FUNCTION negate_integer( x: INTEGER )
RETURN INTEGER;

FUNCTION find_connected_data_width (current_primitive:INTEGER; current_blk:INTEGER; depth_array:v2_array; width_array:v2_array ; total_width : INTEGER)
RETURN INTEGER;

FUNCTION find_current_data_width (current_primitive:INTEGER; current_blk:INTEGER; depth_array:v2_array; width_array:v2_array ; total_width : INTEGER)
RETURN INTEGER;

FUNCTION find_result_delay(c_reg_inputs : INTEGER; c_pipe_stages : INTEGER)
RETURN INTEGER;

FUNCTION log2roundup(data_value : INTEGER)
RETURN INTEGER;

FUNCTION div4roundup(data_value : INTEGER)
RETURN INTEGER;

FUNCTION get_lesser (a: INTEGER; b: INTEGER)
RETURN INTEGER;

FUNCTION str_by_index ( i:INTEGER; str: STRING)
RETURN STRING;

FUNCTION hex_to_bin_str( str : STRING; str_length : INTEGER; rtn_length : INTEGER)
RETURN STRING;

FUNCTION flip_str(str: STRING; str_length: INTEGER)
RETURN STRING;

FUNCTION family_str_to_int(family:STRING)
RETURN INTEGER;

FUNCTION set_sinit( has_sinit:INTEGER; width: INTEGER; orig_sinit : STRING)
RETURN STRING;


END  blkmemdp_pkg_v3_0 ;



PACKAGE BODY blkmemdp_pkg_v3_0 IS
  
---------------------------------------------------------------------------
-- FUNCTION : find_addr_width                      
---------------------------------------------------------------------------
FUNCTION find_addr_width (family: INTEGER; depth: INTEGER)
	RETURN INTEGER IS
	VARIABLE addr_width : INTEGER	:= 0 ;
	BEGIN 
	IF (family = virtex) THEN
		CASE depth IS
			WHEN 0 =>	addr_width := 0 ;
			WHEN 256 =>	addr_width := 8 ;
			WHEN 512 =>	addr_width := 9 ;
			WHEN 1024 =>	addr_width := 10 ;
			WHEN 2048 =>	addr_width := 11 ;
			WHEN 4096 =>	addr_width := 12 ;
			WHEN others =>	addr_width := 0 ; 
		END CASE ;
	ELSIF (family = virtex2) THEN
		CASE depth IS
			WHEN 0 =>	addr_width := 0 ;
                        WHEN 256 =>     addr_width := 8 ;
			WHEN 512 =>	addr_width := 9 ;
			WHEN 1024 =>	addr_width := 10 ;
			WHEN 2048 =>	addr_width := 11 ;
			WHEN 4096 =>	addr_width := 12 ;
			WHEN 8192 =>	addr_width := 13 ;
			WHEN 16384 =>	addr_width := 14 ;
			WHEN others =>	addr_width := 0 ; 
		END CASE ;
	ELSE
		addr_width := 0 ;
	END IF ;	
	RETURN addr_width ;
END find_addr_width ;


---------------------------------------------------------------------------
-- FUNCTION : find_data_width              
---------------------------------------------------------------------------
FUNCTION find_data_width (family: INTEGER; depth: INTEGER)
	RETURN INTEGER IS
	VARIABLE data_width : INTEGER	:= 0 ;
	BEGIN 
	IF (family = virtex) THEN
		CASE depth IS
			WHEN 0 =>	data_width := 0 ;
			WHEN 256 =>	data_width := 16 ;
			WHEN 512 =>	data_width := 8 ;
			WHEN 1024 =>	data_width := 4 ;
			WHEN 2048 =>	data_width := 2 ;
			WHEN 4096 =>	data_width := 1 ;
			WHEN others =>	data_width := 0 ; 
		END CASE ;
	ELSIF (family = virtex2) THEN
		CASE depth IS
			WHEN 0 =>	data_width := 0 ;
                        WHEN 256 =>     data_width := 64;
			WHEN 512 =>	data_width := 32 ;
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


---------------------------------------------------------------------------
-- FUNCTION : find_parity_width                   
---------------------------------------------------------------------------
FUNCTION find_parity_width (family: INTEGER; depth: INTEGER)
	RETURN INTEGER IS
	VARIABLE parity_width : INTEGER	:= 0 ;
	BEGIN 
	IF (family = virtex) THEN
		parity_width := 0 ;
	ELSIF (family = virtex2) THEN
		CASE depth IS
			WHEN 0 =>	parity_width := 0 ;
                        WHEN 256 =>     parity_width := 8 ;
			WHEN 512 =>	parity_width := 4 ;
			WHEN 1024 =>	parity_width := 2 ;
			WHEN 2048 =>	parity_width := 1 ;
			WHEN others =>	parity_width := 0 ; 
		END CASE ;
	ELSE
		parity_width := 0 ;
	END IF ;	
	RETURN parity_width ;
END find_parity_width ;

---------------------------------------------------------------------------
-- FUNCTION : find_blk_depth                       
---------------------------------------------------------------------------
FUNCTION find_blk_depth (family: INTEGER; blk_width: INTEGER)
	RETURN INTEGER IS
	VARIABLE blk_depth : INTEGER	:= 0 ;
	BEGIN 
	IF (family = virtex) THEN
		CASE blk_width IS
			WHEN 0 =>		blk_depth := 0 ;
			WHEN 1 =>		blk_depth := 4096 ;
			WHEN 2 =>		blk_depth := 2048 ;
			WHEN 3|4 =>		blk_depth := 1024 ;
			WHEN 5|6|7|8 =>		blk_depth := 512 ;
			WHEN 9|10|11|12 =>	blk_depth := 256 ;
			WHEN 13|14|15|16 =>	blk_depth := 256 ;
			WHEN others =>	blk_depth := 0 ; 
		END CASE ;
	ELSIF (family = virtex2) THEN
		CASE blk_width IS
			WHEN 0 =>				blk_depth := 0 ;
			WHEN 1 =>				blk_depth := 16384 ;
			WHEN 2 =>				blk_depth := 8192 ;
			WHEN 3|4 =>				blk_depth := 4096 ;
			WHEN 5|6|7|8|9 =>			blk_depth := 2048 ;
			WHEN 10|11|12|13|14|15|16|17|18 =>	blk_depth := 1024 ;
			WHEN 19|20|21|22|23|24|25|26|27 =>	blk_depth := 512 ;
			WHEN 28|29|30|31|32|33|34|35|36 =>	blk_depth := 512 ;
			WHEN others =>	blk_depth := 0 ; 
		END CASE ;
	ELSE
		blk_depth := 0 ;
	END IF ;	
	RETURN blk_width;
END find_blk_depth;


---------------------------------------------------------------------------
-- FUNCTION : find_blk_count              
---------------------------------------------------------------------------
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

---------------------------------------------------------------------------
-- FUNCTION : slice_(the_)width_v2		  
---------------------------------------------------------------------------
FUNCTION slice_width_v2 (family: INTEGER ; 
			slice_start: INTEGER ; 
			ram_width: INTEGER ; 
			ram_depth: INTEGER)
	RETURN v2_array IS
	VARIABLE slice_array 	: v2_array	:= (0,0,0,0,0,0) ;
        --widths are{1,2,4,9,18,36} respectively
	VARIABLE remainder 	: INTEGER	:= 0 ;
	VARIABLE slice_width	: INTEGER	:= 0 ;
	VARIABLE next_width	: INTEGER	:= 1 ;
	BEGIN
	remainder := ram_width ;
	FOR i IN 0 TO (v2_index-1) LOOP
		slice_width := v2_widths(i) ;
		IF (I /= v2_index-1) THEN
			next_width := v2_widths(i+1) ;
		ELSE
			next_width  := v2_widths(i) ;
		END IF ;
		IF (slice_start < slice_width) THEN
			slice_array(i) 	:= 0 ;
		ELSIF (slice_start = slice_width) THEN
			IF (ram_width <= slice_width) THEN
				slice_array(i) 	:= 1 ;
				remainder 	:= 0 ;
			ELSIF ((ram_width MOD slice_width) <= next_width) THEN 
				slice_array(i) 	:= (ram_width/slice_width) ;
				remainder 	:= ram_width - (slice_array(i)*slice_width) ;
			ELSE
				slice_array(i) 	:= ((ram_width/slice_width)+1) ;
				remainder 	:= 0 ;
			END IF ;
		ELSIF ((slice_start > slice_width) AND (slice_width /= 1)) THEN
			IF (remainder > next_width) THEN
				slice_array(i) 	:= (((remainder-1)/slice_width)+1) ;
				remainder	:= remainder - (slice_array(i)*slice_width) ;
			ELSE
				slice_array(i)	:= 0 ;
			END IF ;
		ELSIF ((slice_width = 1) AND (remainder > 0)) THEN
			slice_array(i) 	:= (remainder/slice_width) ;
			remainder	:= remainder - (slice_array(i)*slice_width) ;		
		END IF ;
	END LOOP ; 
	RETURN slice_array ;
END slice_width_v2 ;

---------------------------------------------------------------------------
-- FUNCTION : slice_(the_)depth_v2      
---------------------------------------------------------------------------
FUNCTION slice_depth_v2 (family: INTEGER ;   
			ram_depth: INTEGER)
	RETURN v2_array IS
	VARIABLE slice_count 	: v2_array	:= (0,0,0,0,0,0) ;
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


---------------------------------------------------------------------------
-- FUNCTION : find_total_blk_count(_v2)     
---------------------------------------------------------------------------
FUNCTION find_total_blk_count (family: INTEGER ;
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
END find_total_blk_count ;

---------------------------------------------------------------------------
-- FUNCTION : find_start_slice_width(_v2) 
---------------------------------------------------------------------------
FUNCTION find_start_slice_width (family: INTEGER ;
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
		total_blocks	:= find_total_blk_count(family, start_width, ram_width, ram_depth) ;
		IF (total_blocks <= best_blocks) THEN
			best_blocks 	:= total_blocks ;
			best_width	:= start_width ;
		END IF ;
	END LOOP ;
	RETURN best_width ;
END find_start_slice_width ;


---------------------------------------------------------------------------
-- FUNCTION : find_min_blk_count(_v2)      	  
---------------------------------------------------------------------------
FUNCTION find_min_blk_count (family: INTEGER ;
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
		total_blocks	:= find_total_blk_count(family, start_width, ram_width, ram_depth) ;
		IF (total_blocks <= best_blocks) THEN
			best_blocks 	:= total_blocks ;
			best_width	:= start_width ;
		END IF ;
	END LOOP ;
	RETURN best_blocks ;
END find_min_blk_count ;

---------------------------------------------------------------------------
-- FUNCTION : int_write_mode_to_string(_v2)
---------------------------------------------------------------------------
FUNCTION int_write_mode_to_string (family : INTEGER ;
                         write_mode : INTEGER)
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

---------------------------------------------------------------------------
-- FUNCTION : string_to_bit_vector(_v2)      	
---------------------------------------------------------------------------
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

---------------------------------------------------------------------------
-- FUNCTION : negate_integer            	  
---------------------------------------------------------------------------
FUNCTION negate_integer( x: INTEGER )
         RETURN INTEGER IS
         VARIABLE y : INTEGER := 0;
         BEGIN
         IF ( x = 0) THEN
            y := 1;
         END IF;                   
         
         RETURN y;

END negate_integer;

---------------------------------------------------------------------------
-- FUNCTION : find_connected_data_width           
---------------------------------------------------------------------------
FUNCTION find_connected_data_width (current_primitive:INTEGER; current_blk:INTEGER; depth_array:v2_array; width_array:v2_array ; total_width : INTEGER)
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

END find_connected_data_width ;

---------------------------------------------------------------------------
-- FUNCTION : find_current_data_width             
---------------------------------------------------------------------------
FUNCTION find_current_data_width (current_primitive:INTEGER; current_blk:INTEGER; depth_array:v2_array; width_array:v2_array ; total_width : INTEGER)
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

END find_current_data_width ;

---------------------------------------------------------------------------
-- FUNCTION: find_result_delay
---------------------------------------------------------------------------
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

---------------------------------------------------------------------------
-- FUNCTION : log2roundup                        
---------------------------------------------------------------------------
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

---------------------------------------------------------------------------
-- FUNCTION : div4roundup                         
---------------------------------------------------------------------------
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

---------------------------------------------------------------------------
-- FUNCTION : get_lesser                          
---------------------------------------------------------------------------
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

---------------------------------------------------------------------------
-- FUNCTION : str_by_index                        
-- Returns a string of size one starting at index i of string str    
---------------------------------------------------------------------------
FUNCTION str_by_index ( i:INTEGER; str: STRING)
RETURN STRING IS
         VARIABLE str_tmp : STRING(1 TO 1);
         BEGIN
            str_tmp := str(i TO i);
         RETURN str_tmp;
END str_by_index;

---------------------------------------------------------------------------
-- FUNCTION : hex_to_bin_str                  
-- Returns a binary representation of the HEX characters
-- Note : that the str input is flipped to produce  output.
-- Ex. 43 := 0011 0100
---------------------------------------------------------------------------
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

---------------------------------------------------------------------------
-- FUNCTION : flip_str                         
-- Flips the string.  Ex. if str=34 output is 43
---------------------------------------------------------------------------
FUNCTION flip_str(str: STRING; str_length: INTEGER)
RETURN STRING IS
          VARIABLE str_tmp   : STRING(1 TO str_length);
          BEGIN
             FOR i IN 1 TO str_length LOOP  
               str_tmp(i) := str(str_length-i+1);
             END LOOP;
          RETURN str_tmp;  
END flip_str;
   
---------------------------------------------------------------------------
-- FUNCTION : family_str_to_int                     
-- Takes string representation of family and converts 
-- it into an integer representation                
---------------------------------------------------------------------------
FUNCTION family_str_to_int (family : STRING)
RETURN INTEGER IS
       
       BEGIN

          IF (family(7) = '2') THEN
             RETURN 2;
          ELSE
             RETURN 1;
          END IF;          

END family_str_to_int;

---------------------------------------------------------------------------
-- FUNCTION : set_sinit                         
-- Returns a string of zeros if has_sinit = 0 otherwise returns orig_sinit  
---------------------------------------------------------------------------
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


END blkmemdp_pkg_v3_0;

