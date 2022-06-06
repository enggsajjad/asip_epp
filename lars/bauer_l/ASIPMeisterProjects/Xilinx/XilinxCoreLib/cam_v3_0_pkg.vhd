-------------------------------------------------------------------------------
-- $Id: cam_v3_0_pkg.vhd,v 1.2.80.3 2004/05/18 12:10:36 julian Exp $
-------------------------------------------------------------------------------
--
-- Content Addressable Memory Package for VHDL Behavioral Model
--
-------------------------------------------------------------------------------
--                                                                       
-- This file is owned and controlled by Xilinx and must be used solely   
-- for design, simulation, implementation and creation of design files   
-- limited to Xilinx devices or technologies. Use with non-Xilinx        
-- devices or technologies is expressly prohibited and immediately       
-- terminates your license.                                              
--                                                                       
-- Xilinx products are not intended for use in life support              
-- appliances, devices, or systems. Use in such applications is          
-- expressly prohibited.                                                 
--
--            **************************************
--            ** Copyright (C) 2000, Xilinx, Inc. **
--            ** All Rights Reserved.             **
--            **************************************
--
-------------------------------------------------------------------------------
--
-- Filename: cam_v3_0_pkg.vhd
--
-- Description: 
--  Package of functions and constants for the Content Addressable Memory
--  core behavioral model.
--                      
-------------------------------------------------------------------------------


-------------------------------------------------------------------------------
--
-- Content Addressable Memory - VHDL Behavioral Model Utilities Package
--
-------------------------------------------------------------------------------




-------------------------------------------------------------------------------
-- Library Declarations
-------------------------------------------------------------------------------
LIBRARY std;
USE std.textio.ALL;

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

LIBRARY XilinxCoreLib;

--Use int_2_std_logic_vector and std_logic_vector_2_posint from iputils_conv
USE XilinxCoreLib.iputils_conv.ALL;

--Use log2roundup, get_min, div4roundup from iputils_math
USE XilinxCoreLib.iputils_math.ALL;


PACKAGE cam_v3_0_pkg IS

  -------------------------------------------------------------------------------
  -- Contant Declarations
  -------------------------------------------------------------------------------

  CONSTANT const_srl_mem   : integer := 0;  --Constant for c_mem_type= SRL16
  CONSTANT const_block_mem : integer := 1;  --Constant for c_mem_type= Block Memory
  CONSTANT const_dist_mem  : integer := 2;  --Constant for c_mem_type= Distributed Memory

  CONSTANT const_bin_encoded  : integer := 0;  --Constant for c_addr_type= Binary Encoded
  CONSTANT const_sm_unencoded : integer := 1;  --Constant for c_addr_type= Single-Match Unencoded
  CONSTANT const_mm_unencoded : integer := 2;  --Constant for c_addr_type= Multiple-Match Unencoded

  CONSTANT const_lowest_match  : integer := 0;  --Constant for c_resolution_type= Lowest Match
  CONSTANT const_highest_match : integer := 1;  --Constant for c_resolution_type= Highest Match

  CONSTANT one  : std_logic := '1';
  CONSTANT zero : std_logic := '0';


  -------------------------------------------------------------------------------
  -- FUNCTION DECLARATION
  -------------------------------------------------------------------------------

  FUNCTION SLV_binary_encoder (vector : std_logic_vector)
    RETURN std_logic_vector;

  FUNCTION SLV_binary_encoder_of_width (vector : std_logic_vector; output_width : integer)
    RETURN std_logic_vector;

  FUNCTION one_hot (binval : std_logic_vector; one_hot_size : integer)
    RETURN std_logic_vector;

  FUNCTION set_bit (bit_to_set : integer; binval : std_logic_vector)
    RETURN std_logic_vector;

  FUNCTION ternary_value (mask : std_logic_vector; data : std_logic_vector) RETURN std_logic_vector;

  FUNCTION ternary_compare (maska : std_logic_vector; dataa : std_logic_vector; maskb : std_logic_vector; datab : std_logic_vector) RETURN boolean;

  FUNCTION ternary_compareX (dataa : std_logic_vector; datab : std_logic_vector) RETURN boolean;


  FUNCTION binary_compare (dataa : std_logic_vector; datab : std_logic_vector) RETURN boolean;


END cam_v3_0_pkg;


PACKAGE BODY cam_v3_0_pkg IS

  -------------------------------------------------------------------------------
  -- Function Declarations
  -------------------------------------------------------------------------------


  -----------------------------------------------------------------------------
  -- FUNCTION: SLV_binary_encoder
  --
  -- DESCRIPTION:       Returns a binary encoded std_logic_vector
  --                    (from a decoded one-hot value)
  --                    Note: An input of all-zeros produces a zero output
  --
  -- INPUTS:
  --   vector = one-hot encoded value (any width)
  --
  -- OUTPUT:    binary encoded equivalent
  -----------------------------------------------------------------------------
  FUNCTION SLV_binary_encoder (vector : std_logic_vector)
    RETURN std_logic_vector IS
    VARIABLE active_index             : integer := 0;
    VARIABLE output_width             : integer := log2roundup(vector'length);
  BEGIN
    FOR i IN 0 TO vector'length-1 LOOP
      IF (vector(i) = '1') THEN
        active_index                            := i;
      END IF;
    END LOOP;

    RETURN int_2_std_logic_vector(active_index, output_width);
  END SLV_binary_encoder;


  -----------------------------------------------------------------------------
  -- FUNCTION:  SLV_binary_encoder
  --
  -- DESCRIPTION:       Returns a binary encoded std_logic_vector
  --                    (from a decoded one-hot value)
  --
  -- INPUTS:
  --    vector       = one-hot encoded value
  --    output_width = width of "vector"
  --
  -- OUTPUT: binary encoded equivalent
  -----------------------------------------------------------------------------
  FUNCTION SLV_binary_encoder_of_width (vector : std_logic_vector; output_width : integer)
    RETURN std_logic_vector IS
    VARIABLE active_index                      : integer := 0;
  BEGIN
    FOR i IN 0 TO vector'length-1 LOOP
      IF (vector(i) = '1') THEN
        active_index                                     := i;
      END IF;
    END LOOP;

    RETURN int_2_std_logic_vector(active_index, output_width);
  END SLV_binary_encoder_of_width;




  -----------------------------------------------------------------------------
  -- Functions written for CAM
  -----------------------------------------------------------------------------

  -----------------------------------------------------------------------------
  -- FUNCTION:  one_hot
  --
  -- DESCRIPTION: This function converts a binary value into a one-hot encoded
  --    value of width one_hot_size.
  --
  -- INPUTS:
  --    binval       = binary value to convert to one-hot
  --    one_hot_size = width of the desired one-hot vector
  --
  -- OUTPUT: one-hot encoded equivalent of binval
  -----------------------------------------------------------------------------
  FUNCTION one_hot (binval  : std_logic_vector; one_hot_size : integer)
    RETURN std_logic_vector IS
    VARIABLE i              : integer                                   := 0;
    VARIABLE one_hot_result : std_logic_vector(one_hot_size-1 DOWNTO 0) := (OTHERS => '0');
  BEGIN
    FOR i IN 0 TO one_hot_size-1 LOOP
      IF i = std_logic_vector_2_posint(binval) THEN
        one_hot_result(i)                                               := '1';
      END IF;
    END LOOP;  -- i

    RETURN one_hot_result;
  END one_hot;


  -----------------------------------------------------------------------------
  -- FUNCTION:  set_bit
  --
  -- DESCRIPTION: 
  --    This function sets the bit bit_to_set of the input binary value. It
  --    returns the modified std_logic_vector of that binary value.
  --
  -- INPUTS:
  --    bit_to_set = integer index of the bit, in the slv, to set
  --    binval     = original vector
  -- OUTPUT:
  --    identical to binval, but with the bit_to_set bit set to '1'.
  -----------------------------------------------------------------------------
  FUNCTION set_bit (bit_to_set : integer; binval : std_logic_vector) RETURN std_logic_vector IS
    VARIABLE retval            : std_logic_vector(binval'high DOWNTO binval'low);
  BEGIN
    retval             := binval;
    retval(bit_to_set) := '1';
    RETURN retval;
  END set_bit;


  -----------------------------------------------------------------------------
  -- FUNCTION:  ternary_value
  --
  -- DESCRIPTION: 
  --   This function converts a mask and data vector into a single
  --   std_logic_vector using 1's 0's and X's.
  --
  -- INPUTS:
  --    mask : mask for data, if bit is '1', bit is considered an 'X'
  --    data : data
  --
  -- OUTPUT:
  --    the data and mask combined into a single std_logic_vector, where
  --    any bit masked out is assigned the value 'X'.
  -----------------------------------------------------------------------------
  FUNCTION ternary_value (mask : std_logic_vector; data : std_logic_vector) RETURN std_logic_vector IS
    VARIABLE retval            : std_logic_vector(data'high DOWNTO data'low) := (OTHERS => '0');
  BEGIN
    FOR i IN data'low TO data'high LOOP
      IF i <= mask'high AND i >= mask'low AND mask(i) = '1' THEN
        retval(i)                                                            := 'X';
      ELSE
        retval(i)                                                            := data(i);
      END IF;
    END LOOP;  -- i
    RETURN retval;
  END ternary_value;



  -----------------------------------------------------------------------------
  -- FUNCTION:  ternary_compare
  --
  -- DESCRIPTION: 
  -- This function compares two ternary values which are described using
  -- a combination of mask and data. When the mask bit = '1', the bit
  -- is considered an X, and will match either a 0 or a 1 bit.
  --
  -- INPUTS:
  --    maska = mask for dataa, a bit of '1' indicates an 'X' value
  --    dataa = first data input
  --    maskb = mask for datab, a bit of '1' indicates an 'X' value
  --    datab = second data input
  --
  -- OUTPUT:
  --    TRUE if A matches B. X's (mask 1's) are considered "don't cares".
  --    FALSE otherwise.
  -----------------------------------------------------------------------------
  FUNCTION ternary_compare (maska : std_logic_vector; dataa : std_logic_vector; maskb : std_logic_vector; datab : std_logic_vector) RETURN boolean IS
    VARIABLE equal                : boolean := true;
                                        -- vectors are considered equal until proven otherwise
  BEGIN
    FOR i IN dataa'low TO dataa'high LOOP
      IF (i >= datab'low AND i <= datab'high) THEN
        IF dataa(i) = 'U' OR datab(i) = 'U' THEN
          equal                             := false;
        END IF;
        IF maska(i) = '0' AND maskb(i) = '0' THEN
          IF dataa(i) = '1' AND datab(i) = '0' THEN
            equal                           := false;
          END IF;
          IF dataa(i) = '0' AND datab(i) = '1' THEN
            equal                           := false;
          END IF;
        END IF;


        --ternary_match_vector(i) := NOT (maska(i) OR maskb(i)) AND (dataa(i) XOR datab(i));
      END IF;
    END LOOP;  -- i

    RETURN equal;
  END ternary_compare;

  -----------------------------------------------------------------------------
  -- FUNCTION:  ternary_compareX
  --
  -- DESCRIPTION: 
  -- This function compares two std_logic_vectors which can include X's.
  -- Here, an X is considered to match both 1 and 0.
  -- A U matches nothing.
  --
  -- INPUTS:
  --    dataa = first data input (can include X's)
  --    datab = second data input (can include X's)
  --
  -- OUTPUT:
  --    TRUE if A matches B. X's are considered "don't cares".
  --    FALSE otherwise.
  -----------------------------------------------------------------------------
  FUNCTION ternary_compareX (dataa : std_logic_vector; datab : std_logic_vector)
    RETURN boolean IS
    VARIABLE equal                 : boolean := true;
  BEGIN
    FOR i IN dataa'low TO dataa'high LOOP
      IF (i >= datab'low AND i <= datab'high) THEN
        IF dataa(i) = 'U' OR datab(i) = 'U' THEN
          equal                              := false;
        END IF;
        IF dataa(i) = '1' AND datab(i) = '0' THEN
          equal                              := false;
        END IF;
        IF dataa(i) = '0' AND datab(i) = '1' THEN
          equal                              := false;
        END IF;
      END IF;
    END LOOP;  --i

    RETURN equal;
  END ternary_compareX;


  -----------------------------------------------------------------------------
  -- FUNCTION:  binary_compare
  --
  -- DESCRIPTION: 
  -- This function compares two std_logic_vectors (dataa and datab). It returns
  -- true if they are identical, false otherwise.
  -- If any bit is 'U', the vectors are considered to not match.
  --
  -- INPUTS:
  --    dataa = first data input (binary format)
  --    datab = second data input (binary format)
  --    
  -- OUTPUT:
  --    TRUE if the binary values match exactly,
  --    FALSE otherwise
  -----------------------------------------------------------------------------
  FUNCTION binary_compare (dataa : std_logic_vector; datab : std_logic_vector) RETURN boolean IS
    VARIABLE equal               : boolean := true;
  BEGIN
    FOR i IN dataa'low TO dataa'high LOOP
      IF i >= datab'low AND i <= datab'high THEN
        IF dataa(i) = 'U' OR datab(i) = 'U' THEN
          equal                            := false;
        END IF;
        IF dataa(i) = '1' AND datab(i) = '0' THEN
          equal                            := false;
        END IF;
        IF dataa(i) = '0' AND datab(i) = '1' THEN
          equal                            := false;
        END IF;
      END IF;
    END LOOP;  -- i

    RETURN equal;
  END binary_compare;


END cam_v3_0_pkg;



