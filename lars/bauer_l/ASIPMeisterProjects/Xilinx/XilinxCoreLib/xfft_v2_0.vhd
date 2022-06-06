--$Header: /devl/xcs/repo/env/Databases/ip/src/com/xilinx/ip/xfft_v2_0/simulation/xfft_v2_0.vhd,v 1.2.10.3 2004/05/18 12:12:05 julian Exp $
---------------------------------------------------------------

--  Copyright(C) 2003 by Xilinx, Inc. All rights reserved.
--  This text/file contains proprietary, confidential
--  information of Xilinx, Inc., is distributed under license
--  from Xilinx, Inc., and may be used, copied and/or
--  disclosed only pursuant to the terms of a valid license
--  agreement with Xilinx, Inc.  Xilinx hereby grants you
--  a license to use this text/file solely for design, simulation,
--  implementation and creation of design files limited
--  to Xilinx devices or technologies. Use with non-Xilinx
--  devices or technologies is expressly prohibited and
--  immediately terminates your license unless covered by
--  a separate agreement.
--
--  Xilinx is providing this design, code, or information
--  "as is" solely for use in developing programs and
--  solutions for Xilinx devices.  By providing this design,
--  code, or information as one possible implementation of
--  this feature, application or standard, Xilinx is making no
--  representation that this implementation is free from any
--  claims of infringement.  You are responsible for
--  obtaining any rights you may require for your implementation.
--  Xilinx expressly disclaims any warranty whatsoever with
--  respect to the adequacy of the implementation, including
--  but not limited to any warranties or representations that this
--  implementation is free from claims of infringement, implied
--  warranties of merchantability or fitness for a particular
--  purpose.
--
--  Xilinx products are not intended for use in life support
--  appliances, devices, or systems. Use in such applications are
--  expressly prohibited.
--
--  This copyright and support notice must be retained as part
--  of this text at all times. (c) Copyright 1995-2003 Xilinx, Inc.
--  All rights reserved.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.c_reg_fd_v6_0_comp.all;
USE XilinxCoreLib.c_mux_bus_v6_0_comp.all;
USE XilinxCoreLib.mult_gen_v6_0_comp.all;
USE XilinxCoreLib.c_gate_bus_v6_0_comp.all;
USE XilinxCoreLib.prims_comps_v6_0.all;
USE XilinxCoreLib.prims_utils_v6_0.all;
USE XilinxCoreLib.c_compare_v6_0_comp.all;
USE XilinxCoreLib.c_gate_bit_v6_0_comp.all;
USE XilinxCoreLib.c_gate_bit_bus_v6_0_comp.all;
USE XilinxCoreLib.c_addsub_v6_0_comp.all;
USE XilinxCoreLib.c_twos_comp_v6_0_comp.all;
USE Xilinxcorelib.c_shift_ram_v6_0_comp.all;
USE XilinxCoreLib.c_sin_cos_v4_2_comp.all;
USE XilinxCoreLib.blkmemdp_v5_0_comp.all;
USE XilinxCoreLib.c_accum_v6_0_comp.all;
USE XilinxCoreLib.c_dist_mem_v6_0_comp.all;

PACKAGE fft20_synth_pkg IS
	
	FUNCTION rat( value : std_logic )	                             RETURN std_logic;
  FUNCTION std_logic_vector_2_string(v : STD_LOGIC_VECTOR)       RETURN STRING;
  FUNCTION std_logic_2_string(v : STD_LOGIC)                     RETURN STRING; 
  FUNCTION std_logic_vector_2_int(vect : std_logic_vector)	     RETURN integer;
	FUNCTION two_comp(vect : std_logic_vector)                     RETURN std_logic_vector;
	FUNCTION int_2_std_logic_vector( value, bitwidth : integer )   RETURN std_logic_vector;
	FUNCTION std_logic_vector_2_posint(vect : std_logic_vector)    RETURN integer;
	FUNCTION scale_sch_init(nfft_max: integer) RETURN std_logic_vector;
	
END fft20_synth_pkg;

PACKAGE BODY fft20_synth_pkg IS
	
	
	FUNCTION rat( value : std_logic )
		RETURN std_logic IS
		
	BEGIN
		
		CASE value IS
			WHEN '0' | '1' => RETURN value;
			WHEN 'H'       => RETURN '1';
			WHEN 'L'       => RETURN '0';
			WHEN OTHERS    => RETURN 'X';
		END CASE;
		
	END rat;
	
  
  
  
  FUNCTION std_logic_vector_2_string(v : STD_LOGIC_VECTOR) RETURN STRING IS
    VARIABLE str                       : STRING(1 TO v'high+1);
    CONSTANT ss                        : STRING(1 TO 3) := "01X";
  BEGIN
    FOR i IN v'high DOWNTO v'low LOOP
      IF (v(i) = '0') THEN
        str(v'high-i+1)                                 := ss(1);
      ELSIF (v(i) = '1') THEN
        str(v'high-i+1)                                 := ss(2);
      ELSE
        str(v'high-i+1)                                 := ss(3);
      END IF;
    END LOOP;
    RETURN str;
  END std_logic_vector_2_string;

  
  
  
  FUNCTION std_logic_2_string(v : STD_LOGIC) RETURN STRING IS
    VARIABLE str                : STRING(1 TO 2) := "  ";
    CONSTANT ss                 : STRING(1 TO 3) := "01X";
  BEGIN
    IF (v = '0') THEN
      str(2)                                     := ss(1);
    ELSIF (v = '1') THEN
      str(2)                                     := ss(2);
    ELSE
      str(2)                                     := ss(3);
    END IF;
    RETURN str;
  END std_logic_2_string;
	
	
	
	FUNCTION std_logic_vector_2_int(vect : std_logic_vector)
		RETURN integer IS
		
		VARIABLE local_vect : std_logic_vector(vect'high DOWNTO 0);
		VARIABLE result     : integer := 0;
		
	BEGIN
		
		IF (rat(vect(vect'high)) = '1') THEN  
			local_vect := two_comp(vect);
		ELSE
			local_vect := vect;
		END IF;
		
		FOR i IN vect'high DOWNTO 0 LOOP
			result   := result * 2;
			IF (rat(local_vect(i)) = '1') THEN
				result := result + 1;
			ELSIF (rat(local_vect(i)) /= '0') THEN
				ASSERT false
				REPORT "Treating a non 0-1 std_logic_vector as 0 in std_logic_vector_2_int"
				SEVERITY warning;
			END IF;
		END LOOP;
		
		IF (rat(vect(vect'high)) = '1') THEN
			result := -1 * result;
		END IF;
		
		RETURN result;
		
	END std_logic_vector_2_int;
	
	FUNCTION two_comp(vect : std_logic_vector)
		RETURN std_logic_vector IS
		
		VARIABLE local_vect : std_logic_vector(vect'high DOWNTO 0);
		VARIABLE toggle     : integer := 0;
		
	BEGIN
		
		FOR i IN 0 TO vect'high LOOP
			IF (toggle = 1) THEN
				IF (vect(i) = '0') THEN
					local_vect(i) := '1';
				ELSE
					local_vect(i) := '0';
				END IF;
			ELSE
				local_vect(i)   := vect(i);
				IF (vect(i) = '1') THEN
					toggle        := 1;
				END IF;
			END IF;
		END LOOP;
		
		RETURN local_vect;
		
	END two_comp;
	
	FUNCTION int_2_std_logic_vector( value, bitwidth : integer )
		RETURN std_logic_vector IS
		
		VARIABLE running_value  : integer := value;
		VARIABLE running_result : std_logic_vector(bitwidth-1 DOWNTO 0);
		
	BEGIN
		
		IF (value < 0) THEN
			running_value := -1 * value;
		END IF;
		
		FOR i IN 0 TO bitwidth-1 LOOP
			
			IF running_value MOD 2 = 0 THEN
				running_result(i) := '0';
			ELSE
				running_result(i) := '1';
			END IF;
			running_value       := running_value/2;
		END LOOP;
		
		IF (value < 0) THEN                 
			RETURN two_comp(running_result);
		ELSE
			RETURN running_result;
		END IF;
		
	END int_2_std_logic_vector;
	
	FUNCTION std_logic_vector_2_posint(vect : std_logic_vector)
		RETURN integer IS
		
		VARIABLE result : integer := 0;
		
	BEGIN
		
		FOR i IN vect'high DOWNTO vect'low LOOP
			result   := result * 2;
			IF (rat(vect(i)) = '1') THEN
				result := result + 1;
			ELSIF (rat(vect(i)) /= '0') THEN
				ASSERT false
				REPORT "Treating a non 0-1 std_logic_vector as 0 in std_logic_vector_2_posint"
				SEVERITY warning;
			END IF;
		END LOOP;
		
		RETURN result;
		
	END std_logic_vector_2_posint;
		
  FUNCTION scale_sch_init(nfft_max: integer)
    RETURN std_logic_vector IS

    VARIABLE init : std_logic_vector(13 downto 0);

  BEGIN

    if nfft_max = 7 then
      init := "00000001101010";
    elsif nfft_max=9 then
      init := "00000110101010";
    elsif nfft_max=11 then
      init := "00011010101010";
    elsif nfft_max=13 then
      init := "01101010101010";
    else
      init := "10101010101010";
    end if;

    return init;

  END scale_sch_init;

END fft20_synth_pkg;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE fft20_pkg IS

CONSTANT DIST_ROM : integer := 0;
CONSTANT BLOCK_ROM : integer := 1;

FUNCTION get_scale_sch_width(NFFT_MAX, ARCH: integer) RETURN integer;
FUNCTION power2_LSB(C_WIDTH, INDEX: integer) RETURN integer;
FUNCTION power2_MSB(C_WIDTH, INDEX: integer) RETURN integer;
FUNCTION out_index(i, j, num_dibit: integer) RETURN integer;
FUNCTION log2_func(x: integer) RETURN integer;
FUNCTION eval( condition : boolean ) RETURN integer;
FUNCTION Arch_A_PE0_width(nfft_max, has_scaling, input_width: integer) RETURN integer;
FUNCTION mult_latency(IO_WIDTH, TW_WIDTH : INTEGER ) RETURN integer;
FUNCTION GET_SIN_COS_PIPE_STAGES(memType, thetaWidth, outputWidth : integer) return integer;
FUNCTION PE_latency(IO_WIDTH, TW_WIDTH, C_HAS_MULTS, C_HAS_SCALER, C_HAS_ROUNDER : INTEGER ) RETURN integer;
FUNCTION DEFAULT_SCALING_SCHEDULE(NFFT_MAX : INTEGER ) RETURN string;
function default_r2_scale_sch(C_NFFT_MAX : integer) return string;

FUNCTION OUTPUT_WIDTH(arch, scaling, nfft_max, in_bits : INTEGER ) RETURN INTEGER;
FUNCTION DPMs(arch, max_point_size, in_bits, tw_bits, scaling, data_ram, tw_ram : INTEGER ) RETURN INTEGER;
FUNCTION mults(arch, max_point_size, in_bits, tw_bits, scaling : INTEGER ) RETURN INTEGER;
FUNCTION slices(arch, max_point_size, in_bits, tw_bits, scaling, rounding, data_ram, tw_ram : INTEGER )  RETURN INTEGER;


END fft20_pkg;


PACKAGE BODY fft20_pkg IS

	FUNCTION get_scale_sch_width(NFFT_MAX, ARCH: integer) 
		RETURN integer IS

  	VARIABLE width : integer := 0;
		
	BEGIN
	
		if (ARCH = 0 or ARCH = 1) then
			width := (NFFT_MAX+1)/2*2;
		else
		  width := 2*NFFT_MAX;
		end if;
  	
		return width;
	
	END get_scale_sch_width;
  FUNCTION power2_LSB(C_WIDTH, INDEX: integer) 
		RETURN integer IS

  	VARIABLE LSB_value : integer := 0;
		
	BEGIN
	
		if (C_WIDTH > 2*INDEX+2) then
			LSB_value := C_WIDTH-2*(INDEX+1);
		else
		  LSB_value := 0;
		end if;
  	
		return LSB_value;
	
	END power2_LSB;
	FUNCTION power2_MSB(C_WIDTH, INDEX: integer) 
		RETURN integer IS

    VARIABLE MSB_value : integer := 0;

  BEGIN

    if (2*INDEX+1) > (C_WIDTH-1) then
      MSB_value := C_WIDTH-1;
		else
		  MSB_value := 2*INDEX+1;
    end if;

    return MSB_value;

  END power2_MSB;
	FUNCTION out_index(i, j, num_dibit: integer) 
		RETURN integer IS

		VARIABLE index : integer := 0;

	BEGIN

		if i=0 then
			index := j-1;
		elsif i=1 then
			index := num_dibit*1+j-3;
		elsif i=2 then
			index := num_dibit*2+j-6;
		elsif i=3 then
			index := num_dibit*3+j-10;	
		elsif i=4 then
			index := num_dibit*4+j-15;
		elsif i=5 then
		  index := num_dibit*5+j-21;
		elsif i=6 then
		  index := num_dibit*6+j-28;
		end if;

		return index;
	
	END out_index;
	FUNCTION log2_func(x: integer) 
		RETURN integer IS

  	VARIABLE log2_value : integer := 1;
		
	BEGIN
	
		if x < 3 then
			log2_value := 1;
		elsif x < 5 then
		  log2_value := 2;
		elsif x < 9 then
		  log2_value := 3;
		elsif x < 17 then
		  log2_value := 4;
		end if;
  	
		return log2_value;
	
	END log2_func;


   FUNCTION log2(data_value : integer)
		RETURN integer IS
		
		VARIABLE width       : integer := 0;
		VARIABLE cnt         : integer := 1;
		CONSTANT upper_limit : integer := 18;
		
	BEGIN
		IF (data_value <= 1) THEN width := 0;
		ELSE
			WHILE (cnt < data_value) and (width < upper_limit) LOOP
				width := width + 1;
				cnt   := cnt *2;
			END LOOP;
		END IF;
		
		RETURN width;
	END log2;


  FUNCTION eval(condition: boolean) 
		RETURN integer IS

  BEGIN

    if condition=TRUE then
      return 1;
    else
      return 0;
    end if;

  END eval;
  FUNCTION Arch_A_PE0_width(nfft_max, has_scaling, input_width: integer)
		RETURN integer IS
	
	  VARIABLE width : integer := 2;

	BEGIN

    if has_scaling=0 then
			if nfft_max < 11 then
				width := input_width+2;
			elsif nfft_max < 13 then
				width := input_width+2+3;
			elsif nfft_max < 15 then
				width := input_width+2+3+2;
			end if;
		else
		  width := input_width;
		end if;

		return width;
	
	END arch_a_pe0_width;
			

	function GET_SIN_COS_PIPE_STAGES(memType, thetaWidth, outputWidth : integer) return integer is  
		variable  result : integer := 0; 
		
	begin
		if memType=BLOCK_ROM then
			result :=1;
			if (thetaWidth>11) or
				(thetaWidth=11 and outputWidth>9) or
				(thetaWidth=10 and outputWidth>18) then
				result := 3;
			end if;
		elsif (thetaWidth>8) then	result := 2;
		end if;
		return result;
		
	end GET_SIN_COS_PIPE_STAGES;
	FUNCTION mult_latency(IO_WIDTH, TW_WIDTH : INTEGER ) RETURN integer IS
		VARIABLE latency : INTEGER := 2; 
		variable larger: integer;
		variable smaller: integer;
		BEGIN
			if (IO_WIDTH>TW_WIDTH) then
				larger := IO_WIDTH;
				smaller:= TW_WIDTH;
			else
				larger := TW_WIDTH;
				smaller:= IO_WIDTH;
				end if;

			if larger > 18 then 
				if smaller > 17 then latency := latency + 2; 
				else 						latency := latency + 1; 
					end if;						
				end if;	
         if larger  > 35 then latency := latency +1; end if; 
			if smaller > 35 then latency := latency +1; end if; 
			return latency; 
		END mult_latency;

	FUNCTION PE_latency(IO_WIDTH, TW_WIDTH, C_HAS_MULTS, C_HAS_SCALER, C_HAS_ROUNDER : INTEGER ) RETURN integer IS

		CONSTANT  DRAGONFLY_LATENCY: integer := 2;
		CONSTANT  SCALER_LATENCY: integer := 1;	
		CONSTANT  ROUNDER_LATENCY: integer := 2;	

		VARIABLE latency : INTEGER := DRAGONFLY_LATENCY;
		BEGIN

		if C_HAS_MULTS=1 then 
			latency := latency + MULT_LATENCY(IO_WIDTH+1, TW_WIDTH) + 2;	
			end if;

		if C_HAS_SCALER=1 then 
			latency := latency + SCALER_LATENCY; end if; 	

		if C_HAS_ROUNDER=1 then 
			latency := latency + ROUNDER_LATENCY; end if; 

		return latency;
	END PE_latency;


	FUNCTION DEFAULT_SCALING_SCHEDULE(NFFT_MAX : INTEGER ) RETURN string IS
		variable INIT_SCSCH	: string(16 downto 1); 
		begin

		case NFFT_MAX is
			when 5  => INIT_SCSCH	:= "0000000000001010"; 
			when 6  => INIT_SCSCH	:= "0000000000011010"; 
			when 7  => INIT_SCSCH	:= "0000000000101010"; 
			when 8  => INIT_SCSCH	:= "0000000001001010"; 
			when 9  => INIT_SCSCH	:= "0000000010101010"; 
			when 10 => INIT_SCSCH	:= "0000000110101010"; 
			when 11 => INIT_SCSCH	:= "0000001010101010"; 
			when 12 => INIT_SCSCH	:= "0000011010101010"; 
			when 13 => INIT_SCSCH	:= "0000101010101010"; 
			when 14 => INIT_SCSCH	:= "0001101010101010"; 
			when 15 => INIT_SCSCH	:= "0010101010101010"; 
			when 16 => INIT_SCSCH	:= "0110101010101010"; 
			when others  => INIT_SCSCH	:= "1010101010101010"; 
		   end case;
		return INIT_SCSCH(NFFT_MAX downto 1);
		END DEFAULT_SCALING_SCHEDULE;
        

    function default_r2_scale_sch(C_NFFT_MAX : integer) return string is
        variable init_sch : string(20 downto 1);
        begin
            case C_NFFT_MAX is
                when 4      => init_sch   := "00000000000001010101";
                when 5      => init_sch   := "00000000000101010101";
                when 6      => init_sch   := "00000000010101010101";
                when 7      => init_sch   := "00000001010101010101";
                when 8      => init_sch   := "00000101010101010101";
                when 9      => init_sch   := "00010101010101010101";
                when 10     => init_sch   := "01010101010101010101";
                when others => init_sch   := "01010101010101010101";
            end case;
        return init_sch(C_NFFT_MAX*2 downto 1);
    end default_r2_scale_sch;




FUNCTION BRAM(width, depth : INTEGER ) RETURN INTEGER IS
	variable prim_w	:  integer; 
  	variable prim_d	:  integer; 
   variable hsize : integer;
   variable vsize : integer;
	begin

	if (depth > 256) then 
      prim_w := (18*1024)/depth; 
      prim_d := depth;
   else 
      prim_w := 36;
   	prim_d := (18*1024)/prim_w;
      end if;

   vsize := depth/prim_d; 
   if (depth > vsize * prim_d) then vsize := vsize + 1; end if;
   hsize := width / prim_w;
   if (width > hsize * prim_w) then hsize := hsize + 1; end if;

	return( vsize*hsize );
   END BRAM;


FUNCTION OUTPUT_WIDTH(arch, scaling, NFFT_MAX, in_bits : INTEGER ) 
   RETURN INTEGER IS

	variable bits     :  integer  := in_bits;
	begin

	if (scaling = 0) then  bits := bits +  NFFT_MAX + 1; 
        end if;
     return bits;
   END OUTPUT_WIDTH;

FUNCTION DPMs(arch, max_point_size, in_bits, tw_bits, scaling, data_ram, tw_ram : INTEGER ) 
   RETURN INTEGER IS

	variable NFFT_MAX :  integer  := log2(max_point_size);
	variable RANKS    :  integer  :=  NFFT_MAX/2;
	variable RANKS4   :  integer  :=  NFFT_MAX/2;
   variable DPM      :  integer;
   variable RANKS1   :  integer  := 4;
	variable RANKS0   :  integer;
   variable med_bits :  integer;
   variable out_bits :  integer;
	begin

      if (RANKS*2 < NFFT_MAX) then RANKS := RANKS + 1; end if;
      if (RANKS <= 4) then RANKS1 := RANKS - 1; end if;
      RANKS0   := RANKS - RANKS1;
      med_bits := in_bits + 2 * RANKS0;
      if (RANKS0>0) then med_bits := med_bits + 1; end if;
   	out_bits := OUTPUT_WIDTH(arch, scaling, max_point_size, in_bits);

	case arch is
		when 0 => 
					DPM:=	  4*BRAM(in_bits*2, max_point_size/4)  +	
							  4*BRAM(med_bits*2, max_point_size/4) +	
							2*4*BRAM(out_bits*2, max_point_size/4) +	
							  3*BRAM(tw_bits,	 max_point_size/4)   ;  
               if (max_point_size>1024) then                   
                  DPM := DPM + 3*BRAM(tw_bits,	 max_point_size/(4**(1+RANKS1)));
                  end if;
		when 1 => 
					DPM:=	4*data_ram*BRAM(out_bits*2, max_point_size/4) +
							3*tw_ram*BRAM(tw_bits,	   max_point_size/4);
		when others => 
					DPM:= (data_ram)*2 + (tw_ram); 
      end case;
   return DPM;
   end DPMs;

FUNCTION mults(arch, max_point_size, in_bits, tw_bits, scaling : INTEGER ) 
   RETURN INTEGER IS

	variable NFFT_MAX :  integer  := log2(max_point_size);
	variable RANKS    :  integer  :=  NFFT_MAX/2;
	variable RANKS4   :  integer  :=  NFFT_MAX/2;
	variable mult     :  integer;
	variable RANKS1   :  integer  := 4;
	variable RANKS0   :  integer;
	variable med_bits :  integer;
	variable out_bits :  integer;
	begin

      if (RANKS*2 < NFFT_MAX) then RANKS := RANKS + 1; end if;
      if (RANKS <= 4) then RANKS1 := RANKS - 1; end if;
      RANKS0   := RANKS - RANKS1;
      med_bits := in_bits + 2 * RANKS0;
      if (RANKS0>0) then med_bits := med_bits + 1; end if;
   	out_bits := OUTPUT_WIDTH(arch, scaling, max_point_size, in_bits);

	case arch is
		when 0 => 
         mult := 9; if (tw_bits>18) then mult := mult * 2; end if;
         if (((scaling>0) and (out_bits>18)) or ((scaling<0) and (med_bits>18))) and (RANKS0>1) then 
            if (out_bits>18) then  mult := mult * 3; 
                             else  mult := mult * 2;
            end if;
         else if (out_bits>18) then  mult := mult * 2; end if;
         end if;
		when 1 => 
         mult := 9; 
         if (tw_bits>18)   then mult := mult * 2; end if;
         if (out_bits>18)  then mult := mult * 2; end if;
		when others => 
         mult := 3; 
         if (tw_bits>18)   then mult := mult * 2; end if;
         if (out_bits>18)  then mult := mult * 2;
            end if;
      end case;
   return mult;
   end mults;

FUNCTION slices(arch, max_point_size, in_bits, tw_bits, scaling, rounding, data_ram, tw_ram : INTEGER ) 
   RETURN INTEGER IS

	variable NFFT_MAX :  integer  := log2(max_point_size);
   variable slice    :  integer;
   variable med_bits :  integer;
   variable out_bits :  integer;
	begin
 
  	out_bits := OUTPUT_WIDTH(arch, scaling, max_point_size, in_bits);
	case arch is
		when 0 => 
         slice := 300 + 10*(out_bits+4)*4*2*2;
         if (max_point_size>1024) then slice := slice + 500; end if; 
			if (scaling > 0) then slice := slice + (out_bits+4)*4*2; end if; 
			if (scaling > 1) then slice := slice + 40; end if; 
			if (rounding >0) then slice := slice + (out_bits+4)*4*2*2; end if;
		when 1 => 
         slice := 300 + 10*(out_bits+4)*4*2 + (1-tw_ram)*(max_point_size/4)*tw_bits/16;
			if (scaling > 0) then slice := slice + (out_bits+4)*4; end if; 
			if (scaling > 1) then slice := slice + 20; end if;  
			if (rounding >0) then slice := slice + (out_bits+4)*4*2; end if; 
		when others => 
         slice := 200 + 10*(out_bits+4)*2*2 + (1-tw_ram)*(max_point_size/4)*tw_bits/16 + (1-data_ram)*out_bits*max_point_size*2/16; 
			if (scaling > 0) then slice := slice + (out_bits+4)*2*2; end if; 
			if (scaling > 1) then slice := slice + 20; end if; 
			if (rounding >0) then slice := slice + (out_bits+4)*2; end if;
      end case;
   return slice;
   end slices;
END fft20_pkg;

LIBRARY ieee; 
USE ieee.std_logic_1164.all; 

package fft20_bb_comps is 

COMPONENT fft20_flow_control_a
  GENERIC (
    c_has_nfft  : integer := 1;
    c_nfft_max  : integer := 10;
		flow_delay  : integer := 0);
  PORT (
    CLK           : IN  std_logic;
    CE            : IN  std_logic;
    SCLR          : IN  std_logic;
    START         : IN  std_logic;
    NFFT          : IN  std_logic_vector(3 downto 0);
    NFFT_WE       : IN  std_logic;
    FWD_INV       : IN  std_logic;
    FWD_INV_WE    : IN  std_logic;
    SCALE_SCH     : IN  std_logic_vector((c_nfft_max+1)/2*2-1 downto 0);
    SCALE_SCH_WE  : IN  std_logic;
    LOAD_CNT      : OUT std_logic_vector(c_nfft_max-1 downto 0);
    PROC0_CNT     : OUT std_logic_vector(c_nfft_max-3 downto 0);
    PROC1_CNT     : OUT std_logic_vector(c_nfft_max-3 downto 0);
    UNLOAD_CNT    : OUT std_logic_vector(c_nfft_max-1 downto 0);
    PROC0_RANK    : OUT std_logic_vector(2 downto 0);
    PROC1_RANK    : OUT std_logic_vector(2 downto 0);
    LAST_RANK     : OUT std_logic;
    PROC0_VALID   : OUT std_logic;
    PROC1_VALID   : OUT std_logic;
    PE0_START     : OUT std_logic;
    PE1_START     : OUT std_logic;
    PE0_1st_RANK  : OUT std_logic;
    PE1_1st_RANK  : OUT std_logic;
    PE1_BUSY      : OUT std_logic;
    NFFT_O        : OUT std_logic_vector(3 downto 0);
    FWD_INV_O     : OUT std_logic;
    SCALE_SCH_O   : OUT std_logic_vector((c_nfft_max+1)/2*2-1 downto 0);
    RFD_O         : OUT std_logic;
    DV_O          : OUT std_logic);
END COMPONENT;

component fft20_flow_control_b
   GENERIC (
	NFFT_MAX		: integer := 10;
	C_HAS_NFFT		: integer := 1;	   
	C_HAS_BFP 		: integer := 1;	   
	PE_LATENCY		: integer := 13);		
   PORT (
	clk			: IN std_logic;   
	ce			: IN std_logic;   
	sclr			: IN std_logic;   
	start			: IN std_logic;
	unload			: IN std_logic;
	NFFT			: IN std_logic_vector(3 DOWNTO 0);   
	NFFT_WE			: IN std_logic;   
	done			: OUT std_logic;   
	edone			: OUT std_logic;   
	ld_start		: OUT std_logic;   
	pr_start		: OUT std_logic;   
	RFD			: OUT std_logic;   
	BUSY			: OUT std_logic;   
	DV			: OUT std_logic;   
	IN_ADDR			: OUT std_logic_vector(NFFT_MAX-1 DOWNTO 0);   
	OUT_ADDR		: OUT std_logic_vector(NFFT_MAX-1 DOWNTO 0);   
	NFFT_out		: OUT std_logic_vector(3 DOWNTO 0);   
	ce_rank			: OUT std_logic;   
	ce_rn			: OUT std_logic;   
	rn_0			: OUT std_logic_vector(NFFT_MAX-3 DOWNTO 0);   
	rank_0			: OUT std_logic_vector(2 DOWNTO 0);
	second_rank		: OUT std_logic;
	last_rank		: OUT std_logic;
	recent_sclr		: OUT std_logic);   
END component;

component fft20_flow_control_c
    generic (
        C_HAS_BFP       : integer := 1;
        C_HAS_NFFT      : integer := 1;
        C_NFFT_MAX      : integer := 10;
        PE_LATENCY      : integer := 13 );
    port (
        CE              : in std_logic;
        CLK             : in std_logic;
        NFFT            : in std_logic_vector(3 downto 0);
        NFFT_WE         : in std_logic;
        SCLR            : in std_logic;
        START           : in std_logic;
        UNLOAD          : in std_logic;
        BUSY            : out std_logic;   
        CE_RANK         : out std_logic;   
        CE_RN           : out std_logic;   
        DONE            : out std_logic;   
        DV              : out std_logic;   
        EDONE           : out std_logic;   
        IN_ADDR         : out std_logic_vector(C_NFFT_MAX-1 downto 0);   
        LAST_RANK       : out std_logic;   
        LD_START        : out std_logic;   
        NFFT_OUT        : out std_logic_vector(3 downto 0);   
        OUT_ADDR        : out std_logic_vector(C_NFFT_MAX-1 downto 0);   
        PR_START        : out std_logic;   
        RANK_0          : out std_logic_vector(3 downto 0);
        RECENT_SCLR     : out std_logic;
        RFD             : out std_logic;   
        RN_0            : out std_logic_vector(C_NFFT_MAX-3 downto 0);   
        SECOND_RANK     : out std_logic );
end component;

end fft20_bb_comps;

LIBRARY ieee; 
USE ieee.std_logic_1164.all; 

package fft20_synth_comps is 

COMPONENT fft20_equ_rtl 
  generic (
 		WIDTH   : INTEGER);
	port (
		A			: IN std_logic_VECTOR(WIDTH-1 downto 0);
		B			: IN std_logic_VECTOR(WIDTH-1 downto 0);
		A_EQ_B	: OUT std_logic);
END COMPONENT;

COMPONENT fft20_fde_rtl
  port (
    D     : IN  std_logic;
    CLK   : IN  std_logic;
    CE    : IN  std_logic;
    Q     : OUT std_logic);
END COMPONENT;

COMPONENT fft20_fdre_rtl
  port (
    D     : IN  std_logic;
    CLK   : IN  std_logic;
		SCLR  : IN  std_logic;
    CE    : IN  std_logic;
    Q     : OUT std_logic);
END COMPONENT;

COMPONENT fft20_reg_rs_rtl
	port (
		r     : IN  std_logic;
		s     : IN  std_logic;
		CLK   : IN  std_logic;
		CE		: IN  std_logic;
		Q     : OUT std_logic);
END COMPONENT;

COMPONENT fft20_cnt_tc_rtl_a 
  GENERIC (
		WIDTH   : INTEGER := 4);
  PORT (
  	MAX	  : IN  std_logic_vector(WIDTH-1 DOWNTO 0);   
		CLK   : IN  std_logic;   
		CE		: IN  std_logic;   
		RESET : IN  std_logic;   
		Q 		: OUT std_logic_vector(WIDTH-1 downto 0);
		TC		: OUT std_logic); 
END COMPONENT;

COMPONENT fft20_cnt_tc_rtl 
  generic (
		WIDTH   : INTEGER := 4);
  port (
  		MAX	: IN  std_logic_vector(WIDTH-1 DOWNTO 0);   
		CLK   : IN  std_logic;   
		CE		: IN  std_logic;   
		SCLR  : IN  std_logic;   
		Q 		: OUT std_logic_vector(WIDTH-1 downto 0);
		TC		: OUT std_logic); 
END COMPONENT;

End;
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

PACKAGE fft20_comps IS

COMPONENT xfft_v2_0_a
	generic (
		C_NFFT_MAX 				 : integer := 10;
		C_TWIDDLE_MEM_TYPE : integer := 0; 
		C_DATA_MEM_TYPE		 : integer := 0; 
		C_HAS_BYPASS 			 : integer := 1;	
		C_HAS_NFFT  			 : integer := 1;	
		C_HAS_SCALING 		 : integer := 1;	
		C_HAS_BFP 				 : integer := 1;	
		C_HAS_ROUNDING 	 	 : integer := 1;	
		C_HAS_OVFLO 			 : integer := 0;	
		C_HAS_CE 					 : integer := 1;	
		C_HAS_SCLR 				 : integer := 1;	
		C_INPUT_WIDTH 		 : integer := 16;	
		C_TWIDDLE_WIDTH		 : integer := 16;	
		C_OUTPUT_WIDTH		 : integer := 16);	
	port (
		XN_RE				 : IN std_logic_vector(C_INPUT_WIDTH-1 DOWNTO 0);   
		XN_IM				 : IN std_logic_vector(C_INPUT_WIDTH-1 DOWNTO 0);   
		START				 : IN std_logic;   
		NFFT				 : IN std_logic_vector(3 DOWNTO 0);   
		NFFT_WE  		 : IN std_logic;   
		FWD_INV			 : IN std_logic;   
		FWD_INV_WE	 : IN std_logic;   
		SCALE_SCH		 : IN std_logic_vector(C_NFFT_MAX-1 DOWNTO 0);   
		SCALE_SCH_WE : IN std_logic;   
		SCLR				 : IN std_logic;   
		CE					 : IN std_logic;   
		CLK			 	   : IN std_logic;   
		XK_RE				 : OUT std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0);   
		XK_IM				 : OUT std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0);   
		XN_INDEX		 : OUT std_logic_vector(C_NFFT_MAX-1 DOWNTO 0);   
		XK_INDEX		 : OUT std_logic_vector(C_NFFT_MAX-1 DOWNTO 0);   
		RFD				   : OUT std_logic;   
		BUSY				 : OUT std_logic;   
		DV					 : OUT std_logic;   
		EDONE				 : OUT std_logic;   
		DONE				 : OUT std_logic;   
		OVFLO				 : OUT std_logic);   
END COMPONENT;

COMPONENT xfft_v2_0_b 
	generic (
		C_NFFT_MAX 				 : integer := 10;
		C_TWIDDLE_MEM_TYPE : integer := 0; 
		C_DATA_MEM_TYPE		 : integer := 0; 
		C_HAS_BYPASS		 	 : integer := 1;	
		C_HAS_NFFT 			   : integer := 1;	
		C_HAS_SCALING 		 : integer := 1;	
		C_HAS_BFP 				 : integer := 1;	
		C_HAS_ROUNDING 		 : integer := 1;	
		C_HAS_OVFLO		 		 : integer := 0;	
		C_HAS_CE 				   : integer := 1;	
		C_HAS_SCLR 				 : integer := 1;	
		C_INPUT_WIDTH 		 : integer := 16;	
		C_TWIDDLE_WIDTH		 : integer := 16;	
		C_OUTPUT_WIDTH		 : integer := 16);	
	port (
		XN_RE				 : IN std_logic_vector(C_INPUT_WIDTH-1 DOWNTO 0);   
		XN_IM				 : IN std_logic_vector(C_INPUT_WIDTH-1 DOWNTO 0);   
		START				 : IN std_logic;   
		UNLOAD			 : IN std_logic;   
		NFFT				 : IN std_logic_vector(3 DOWNTO 0);   
		NFFT_WE		   : IN std_logic;   
		FWD_INV			 : IN std_logic;   
		FWD_INV_WE	 : IN std_logic;   
		SCALE_SCH		 : IN std_logic_vector(C_NFFT_MAX-1 DOWNTO 0);   
		SCALE_SCH_WE : IN std_logic;   
		SCLR				 : IN std_logic;   
		CE					 : IN std_logic;   
		CLK				   : IN std_logic;   
		XK_RE				 : OUT std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0);   
		XK_IM				 : OUT std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0);   
		XN_INDEX		 : OUT std_logic_vector(C_NFFT_MAX-1 DOWNTO 0);   
		XK_INDEX		 : OUT std_logic_vector(C_NFFT_MAX-1 DOWNTO 0);   
		RFD				   : OUT std_logic;   
		BUSY				 : OUT std_logic;   
		DV					 : OUT std_logic;   
		EDONE				 : OUT std_logic;   
		DONE				 : OUT std_logic;   
		BLK_EXP			 : OUT std_logic_vector(3 DOWNTO 0);  
		OVFLO				 : OUT std_logic);   
END COMPONENT;	

COMPONENT xfft_v2_0_c 
	generic (
		C_NFFT_MAX 				 : integer := 10;
		C_TWIDDLE_MEM_TYPE : integer := 0; 
		C_DATA_MEM_TYPE		 : integer := 0; 
		C_HAS_NFFT 		  	 : integer := 1;	
		C_HAS_SCALING		 	 : integer := 1;	
		C_HAS_BFP 				 : integer := 1;	
		C_HAS_ROUNDING		 : integer := 1;	
		C_HAS_OVFLO			 	 : integer := 0;	
		C_HAS_CE 				   : integer := 1;	
		C_HAS_SCLR 				 : integer := 1;	
		C_INPUT_WIDTH 		 : integer := 16;	
		C_TWIDDLE_WIDTH		 : integer := 16;	
		C_OUTPUT_WIDTH		 : integer := 16);	
	port (               
		XN_RE				 : IN std_logic_vector(C_INPUT_WIDTH-1 DOWNTO 0);   
		XN_IM				 : IN std_logic_vector(C_INPUT_WIDTH-1 DOWNTO 0);   
		START				 : IN std_logic;   
		UNLOAD			 : IN std_logic;   
		NFFT				 : IN std_logic_vector(3 DOWNTO 0);   
		NFFT_WE		   : IN std_logic;   
		FWD_INV			 : IN std_logic;   
		FWD_INV_WE	 : IN std_logic;   
		SCALE_SCH		 : IN std_logic_vector(C_NFFT_MAX-1 DOWNTO 0);   
		SCALE_SCH_WE : IN std_logic;   
		SCLR				 : IN std_logic;   
		CE					 : IN std_logic;   
		CLK				   : IN std_logic;   
		XK_RE				 : OUT std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0);   
		XK_IM				 : OUT std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0);   
		XN_INDEX		 : OUT std_logic_vector(C_NFFT_MAX-1 DOWNTO 0);   
		XK_INDEX		 : OUT std_logic_vector(C_NFFT_MAX-1 DOWNTO 0);   
		RFD				   : OUT std_logic;   
		BUSY				 : OUT std_logic;   
		DV					 : OUT std_logic;   
		EDONE				 : OUT std_logic;   
		DONE				 : OUT std_logic;   
		BLK_EXP			 : OUT std_logic_vector(3 DOWNTO 0);  
		OVFLO				 : OUT std_logic);   
END COMPONENT;

COMPONENT fft20_reg_fde
  generic (
    data_width : INTEGER);
  port (
    D     : IN  std_logic_vector(data_width-1 downto 0);
    CLK   : IN  std_logic;
    CE    : IN  std_logic;
    Q     : OUT std_logic_vector(data_width-1 downto 0));
END COMPONENT;

COMPONENT fft20_reg_fde_sclr
  generic (
    data_width : INTEGER);
  port (
    D     : IN  std_logic_vector(data_width-1 downto 0);
    CLK   : IN  std_logic;
    CE    : IN  std_logic;
    SCLR  : IN  std_logic;
    Q     : OUT std_logic_vector(data_width-1 downto 0));
END COMPONENT;

COMPONENT fft20_reg_fde_sr_1
  port (
    D     : IN  std_logic;
    CLK   : IN  std_logic;
    CE    : IN  std_logic;
    SCLR  : IN  std_logic;
		SSET  : IN  std_logic;
    Q     : OUT std_logic);
END COMPONENT;

COMPONENT fft20_c_lut
  generic (
    eqn : STRING := "");
  port (
    I0 : IN  std_logic;
    I1 : IN  std_logic := '0';
    I2 : IN  std_logic := '0';
    I3 : IN  std_logic := '0';
    O  : OUT std_logic);
END COMPONENT;

COMPONENT fft20_mux_bus
  generic (
    C_WIDTH     : INTEGER;
    C_INPUTS    : INTEGER;
		C_SEL_WIDTH : INTEGER);
  port (
    MA  : IN std_logic_vector(C_WIDTH-1 downto 0);
    MB  : IN std_logic_vector(C_WIDTH-1 downto 0);
    MC  : IN std_logic_vector(C_WIDTH-1 downto 0);
    MD  : IN std_logic_vector(C_WIDTH-1 downto 0);
    S   : IN std_logic_vector(C_SEl_WIDTH-1 downto 0);
    CLK : IN std_logic;
    CE  : IN std_logic;
    Q   : OUT std_logic_vector(C_WIDTH-1 downto 0));
END COMPONENT;

COMPONENT fft20_mux_bus_sclr
  generic (
	C_WIDTH     : INTEGER;
	C_INPUTS    : INTEGER;
	C_SEL_WIDTH : INTEGER);
  port (
	MA  : IN std_logic_vector(C_WIDTH-1 downto 0);
	MB  : IN std_logic_vector(C_WIDTH-1 downto 0);
	MC  : IN std_logic_vector(C_WIDTH-1 downto 0);
	MD  : IN std_logic_vector(C_WIDTH-1 downto 0);
	S   : IN std_logic_vector(C_SEl_WIDTH-1 downto 0);
	CLK : IN std_logic;
	CE  : IN std_logic;
	SCLR: IN std_logic;
	Q   : OUT std_logic_vector(C_WIDTH-1 downto 0));
END COMPONENT;

COMPONENT fft20_compare
  generic (
    C_WIDTH   : INTEGER;
    C_B_VALUE : STRING);
  port (
    CLK     : IN  std_logic;   
    CE      : IN  std_logic;   
    SCLR    : IN  std_logic;   
    A       : IN  std_logic_vector(C_WIDTH-1 downto 0);   
    QA_EQ_B : OUT std_logic); 
END COMPONENT;

COMPONENT fft20_adder 
  generic  (
    C_A_WIDTH   : INTEGER;
    C_B_WIDTH   : INTEGER;
    C_OUT_WIDTH : INTEGER);
  port (
    CLK      : IN  std_logic;
    CE       : IN  std_logic;
    DIN_A    : IN  std_logic_vector(C_A_WIDTH-1 downto 0);
    DIN_B    : IN  std_logic_vector(C_B_WIDTH-1 downto 0);
    DOUT     : OUT std_logic_vector(C_OUT_WIDTH-1 downto 0));
END COMPONENT;

COMPONENT fft20_subtracter 
  generic  (
    C_A_WIDTH   : INTEGER;
    C_B_WIDTH   : INTEGER;
    C_OUT_WIDTH : INTEGER);
  port (
    CLK      : IN  std_logic;
    CE       : IN  std_logic;
    DIN_A    : IN  std_logic_vector(C_A_WIDTH-1 downto 0);
    DIN_B    : IN  std_logic_vector(C_B_WIDTH-1 downto 0);
    DOUT     : OUT std_logic_vector(C_OUT_WIDTH-1 downto 0));
END COMPONENT;

COMPONENT fft20_adder_bypass
  generic  (
    C_A_WIDTH   : INTEGER;
    C_B_WIDTH   : INTEGER;
    C_OUT_WIDTH : INTEGER);
  port (
    CLK      : IN  std_logic;
    CE       : IN  std_logic;
    BYPASS   : IN  std_logic;
    DIN_A    : IN  std_logic_vector(C_A_WIDTH-1 downto 0);
    DIN_B    : IN  std_logic_vector(C_B_WIDTH-1 downto 0);
    DOUT     : OUT std_logic_vector(C_OUT_WIDTH-1 downto 0));
END COMPONENT;

COMPONENT fft20_sub_byp 
  generic  (
    C_A_WIDTH   : INTEGER;
    C_B_WIDTH   : INTEGER;
    C_OUT_WIDTH : INTEGER);
  port (
    CLK      : IN  std_logic;
    CE       : IN  std_logic;
    BYPASS   : IN  std_logic;
    DIN_A    : IN  std_logic_vector(C_A_WIDTH-1 downto 0);
    DIN_B    : IN  std_logic_vector(C_B_WIDTH-1 downto 0);
    DOUT     : OUT std_logic_vector(C_OUT_WIDTH-1 downto 0));
END COMPONENT;

COMPONENT fft20_mult
	generic (
    a_width : INTEGER;
    b_width : INTEGER);
  port (
    clk : IN std_logic;
    ce  : IN std_logic;
    a   : IN std_logic_vector(a_width-1 downto 0);
    b   : IN std_logic_vector(b_width-1 downto 0);
    q   : OUT std_logic_vector(a_width+b_width-1 downto 0));
END COMPONENT;

COMPONENT fft20_butterfly
  generic  (
    data_width : INTEGER);
  port (
    CLK                     : IN std_logic;   
    CE                      : IN std_logic;   
    X0r, X0i, X1r, X1i      : IN std_logic_vector(data_width-1 downto 0);   
    Y0r, Y0i, Y1r, Y1i      : OUT std_logic_vector(data_width downto 0)); 
END COMPONENT;

COMPONENT fft20_butterfly_j
  generic  (
    data_width : INTEGER);
  port (
    CLK                     : IN std_logic;
    CE                      : IN std_logic;
    X0r, X0i, X1r, X1i      : IN std_logic_vector(data_width-1 downto 0);
    Y0r, Y0i, Y1r, Y1i      : OUT std_logic_vector(data_width downto 0));
END COMPONENT;

COMPONENT fft20_complex_mult3
  generic (
    a_width : INTEGER;
    b_width : INTEGER);
  port (
    clk   : IN std_logic;
    ce    : IN std_logic;
    ar    : IN std_logic_vector(a_width-1 downto 0);
    ai    : IN std_logic_vector(a_width-1 downto 0);
    br    : IN std_logic_vector(b_width-1 downto 0);
    bi    : IN std_logic_vector(b_width-1 downto 0);
    pr    : OUT std_logic_vector(a_width+b_width downto 0);
    pi    : OUT std_logic_vector(a_width+b_width downto 0));
END COMPONENT;

COMPONENT fft20_xor_bit_gate
  generic (
    C_INPUTS   : INTEGER);
  port (
    CLK      : IN  std_logic;   
    CE       : IN  std_logic;   
    I        : IN  std_logic_vector(C_INPUTS-1 downto 0);
    Q        : OUT std_logic); 
END COMPONENT;

COMPONENT fft20_and_bus_gate
	generic (
		C_WIDTH      : integer := 4);
	port (
		CLK      : IN  std_logic;
		CE       : IN  std_logic;
		IA       : IN  std_logic_vector(C_WIDTH-1 downto 0); 
		IB       : IN  std_logic_vector(C_WIDTH-1 downto 0);
		Q        : OUT std_logic_vector(C_WIDTH-1 downto 0));
END COMPONENT;

COMPONENT fft20_and2
  generic (
    C_INPUT_INV_MASK : STRING);
  port (
    CLK      : IN  std_logic;   
    CE       : IN  std_logic;   
    I        : IN  std_logic_vector(1 downto 0);
    O        : OUT std_logic); 
END COMPONENT;

COMPONENT fft20_and_gate
  generic (
    C_INPUTS : INTEGER;
    C_INPUT_INV_MASK : STRING);
  port (
    CLK      : IN  std_logic;
    CE       : IN  std_logic;
    I        : IN  std_logic_vector(C_INPUTS-1 downto 0);
    O        : OUT std_logic;
    Q        : OUT std_logic);
END COMPONENT;

COMPONENT fft20_sub_byp_j
  generic  (
	  C_WIDTH   : INTEGER;
    OUT_WIDTH : INTEGER);
  port (
    CLK      : IN  std_logic;   
    CE       : IN  std_logic;   
    BYPASS   : IN  std_logic;
    DIN_A    : IN  std_logic_vector(C_WIDTH-1 downto 0);   
    DIN_B_MA : IN  std_logic_vector(C_WIDTH-1 downto 0);   
    DIN_B_MB : IN  std_logic_vector(C_WIDTH-1 downto 0);   
    DOUT     : OUT std_logic_vector(OUT_WIDTH-1 downto 0)); 
END COMPONENT;

COMPONENT fft20_bfly_byp
  generic  (
    data_width : INTEGER);
  port (
    CLK                     : IN std_logic;   
    CE                      : IN std_logic;   
    BYPASS                  : IN std_logic;
    X0r, X0i, X1r, X1i      : IN std_logic_vector(data_width-1 downto 0);   
    Y0r, Y0i, Y1r, Y1i      : OUT std_logic_vector(data_width downto 0)); 
END COMPONENT;

COMPONENT fft20_bfly_byp_j
  generic  (
    data_width : INTEGER);
  port (
    CLK                     : IN std_logic;   
    CE                      : IN std_logic;  
    BYPASS                  : IN std_logic;
    X0r, X0i, X1r, X1i      : IN std_logic_vector(data_width-1 downto 0);   
    Y0r, Y0i, Y1r, Y1i      : OUT std_logic_vector(data_width downto 0)); 
END COMPONENT;

COMPONENT fft20_dragonfly 
  generic (
    data_width : INTEGER := 12);
  port (
    CLK          : IN  std_logic;
    CE           : IN  std_logic;
    X0r, X0i     : IN  std_logic_vector(data_width-1 downto 0);
    X1r, X1i     : IN  std_logic_vector(data_width-1 downto 0);
    X2r, X2i     : IN  std_logic_vector(data_width-1 downto 0);
    X3r, X3i     : IN  std_logic_vector(data_width-1 downto 0);
    Y0r, Y0i     : OUT std_logic_vector(data_width+1 downto 0);
    Y1r, Y1i     : OUT std_logic_vector(data_width+1 downto 0);
    Y2r, Y2i     : OUT std_logic_vector(data_width+1 downto 0);
    Y3r, Y3i     : OUT std_logic_vector(data_width+1 downto 0));
END COMPONENT;

COMPONENT fft20_dfly_byp
  generic (
    data_width : INTEGER := 12);
  port (
    CLK          : IN  std_logic;
    CE           : IN  std_logic;
    BYPASS       : IN  std_logic;
    X0r, X0i     : IN  std_logic_vector(data_width-1 downto 0);
    X1r, X1i     : IN  std_logic_vector(data_width-1 downto 0);
    X2r, X2i     : IN  std_logic_vector(data_width-1 downto 0);
    X3r, X3i     : IN  std_logic_vector(data_width-1 downto 0);
    Y0r, Y0i     : OUT std_logic_vector(data_width+1 downto 0);
    Y1r, Y1i     : OUT std_logic_vector(data_width+1 downto 0);
    Y2r, Y2i     : OUT std_logic_vector(data_width+1 downto 0);
    Y3r, Y3i     : OUT std_logic_vector(data_width+1 downto 0));
END COMPONENT;

COMPONENT fft20_mux_bus8
  generic (
    C_WIDTH     : INTEGER;
    C_INPUTS    : INTEGER;
    C_SEL_WIDTH : INTEGER);
  port (
    MA  : IN std_logic_vector(C_WIDTH-1 downto 0);
    MB  : IN std_logic_vector(C_WIDTH-1 downto 0);
    MC  : IN std_logic_vector(C_WIDTH-1 downto 0);
    MD  : IN std_logic_vector(C_WIDTH-1 downto 0);
    ME  : IN std_logic_vector(C_WIDTH-1 downto 0);
    MF  : IN std_logic_vector(C_WIDTH-1 downto 0);
    MG  : IN std_logic_vector(C_WIDTH-1 downto 0);
    MH  : IN std_logic_vector(C_WIDTH-1 downto 0);
    S   : IN std_logic_vector(C_SEl_WIDTH-1 downto 0);
    CLK : IN std_logic;
    CE  : IN std_logic;
    Q   : OUT std_logic_vector(C_WIDTH-1 downto 0));
END COMPONENT;

COMPONENT fft20_mux_bus16
  generic (
    C_WIDTH     : INTEGER;
    C_INPUTS    : INTEGER;
    C_SEL_WIDTH : INTEGER);
  port (
    MA  : IN std_logic_vector(C_WIDTH-1 downto 0);
    MB  : IN std_logic_vector(C_WIDTH-1 downto 0);
    MC  : IN std_logic_vector(C_WIDTH-1 downto 0);
    MD  : IN std_logic_vector(C_WIDTH-1 downto 0);
    ME  : IN std_logic_vector(C_WIDTH-1 downto 0);
    MF  : IN std_logic_vector(C_WIDTH-1 downto 0);
    MG  : IN std_logic_vector(C_WIDTH-1 downto 0);
    MH  : IN std_logic_vector(C_WIDTH-1 downto 0);
    MAA : IN std_logic_vector(C_WIDTH-1 downto 0);
    MAB : IN std_logic_vector(C_WIDTH-1 downto 0);
    MAC : IN std_logic_vector(C_WIDTH-1 downto 0);
    MAD : IN std_logic_vector(C_WIDTH-1 downto 0);
    MAE : IN std_logic_vector(C_WIDTH-1 downto 0);
    MAF : IN std_logic_vector(C_WIDTH-1 downto 0);
    MAG : IN std_logic_vector(C_WIDTH-1 downto 0);
    MAH : IN std_logic_vector(C_WIDTH-1 downto 0);
    S   : IN std_logic_vector(C_SEl_WIDTH-1 downto 0);
    CLK : IN std_logic;
    CE  : IN std_logic;
    O   : OUT std_logic_vector(C_WIDTH-1 downto 0);
    Q   : OUT std_logic_vector(C_WIDTH-1 downto 0));
END COMPONENT;

COMPONENT fft20_shift_ram
  generic (
    C_DEPTH      : INTEGER;
    C_WIDTH      : INTEGER);
  port (
    D   : IN std_logic_vector(C_WIDTH-1 downto 0);
    CLK : IN std_logic;
    CE  : IN std_logic;
    Q   : OUT std_logic_vector(C_WIDTH-1 downto 0));
END COMPONENT;

COMPONENT fft20_shift_ram_sclr
  generic (
    C_DEPTH      : INTEGER;
    C_WIDTH      : INTEGER);
  port (
    D   : IN std_logic_vector(C_WIDTH-1 downto 0);
    CLK : IN std_logic;
    CE  : IN std_logic;
    SCLR: IN std_logic;
    Q   : OUT std_logic_vector(C_WIDTH-1 downto 0));
END COMPONENT;

COMPONENT fft20_tw_gen_p4
  generic (
    nfft_max    : INTEGER := 10);
  port (
    CLK        : IN  std_logic;
    CE         : IN  std_logic;
    CNT_RN     : IN  std_logic_vector(nfft_max-3 downto 0);
    RANK       : IN  std_logic_vector(2 downto 0);
    POWER2     : IN  std_logic;
    LAST_RANK  : IN  std_logic;
    TW1_ADDR   : OUT std_logic_vector(nfft_max-1 downto 0);
    TW2_ADDR   : OUT std_logic_vector(nfft_max-1 downto 0);
    TW3_ADDR   : OUT std_logic_vector(nfft_max-1 downto 0));
END COMPONENT;

COMPONENT fft20_tw_gen_p2
  generic (
    nfft_max    : INTEGER := 9);
  port (
    CLK        : IN  std_logic;
    CE         : IN  std_logic;
    CNT_RN     : IN  std_logic_vector(nfft_max-3 downto 0);
    RANK       : IN  std_logic_vector(2 downto 0);
    POWER2     : IN  std_logic;
    LAST_RANK  : IN  std_logic;
    TW1_ADDR   : OUT std_logic_vector(nfft_max-1 downto 0);
    TW2_ADDR   : OUT std_logic_vector(nfft_max-1 downto 0);
    TW3_ADDR   : OUT std_logic_vector(nfft_max-1 downto 0));
END COMPONENT;

COMPONENT fft20_tw_addr_gen
  generic (
    nfft_max    : INTEGER := 10);
  port (
    CLK        : IN  std_logic;
    CE         : IN  std_logic;
    CNT_RN     : IN  std_logic_vector(nfft_max-3 downto 0);
    RANK       : IN  std_logic_vector(2 downto 0);
    FWD_INV    : IN  std_logic;  
    POWER2     : IN  std_logic;
    LAST_RANK  : IN  std_logic;
    TW1_ADDR   : OUT std_logic_vector(nfft_max-1 downto 0);
    TW2_ADDR   : OUT std_logic_vector(nfft_max-1 downto 0);
    TW3_ADDR   : OUT std_logic_vector(nfft_max-1 downto 0));
END COMPONENT;

COMPONENT fft20_tw_addr_gen_b
  generic (
    nfft_max    : INTEGER := 10);
  port (
    CLK        : IN  std_logic;
    CE         : IN  std_logic;
    CNT_RN     : IN  std_logic_vector(nfft_max-3 downto 0);
    RANK       : IN  std_logic_vector(2 downto 0);
    POWER2     : IN  std_logic;
    LAST_RANK  : IN  std_logic;
    TW1_ADDR   : OUT std_logic_vector(nfft_max-1 downto 0);
    TW2_ADDR   : OUT std_logic_vector(nfft_max-1 downto 0);
    TW3_ADDR   : OUT std_logic_vector(nfft_max-1 downto 0));
END COMPONENT;

COMPONENT fft20_rw_addr_gen_b
  generic (
    nfft_max : INTEGER := 8);
  port (
    CLK         : IN  std_logic;
    CE          : IN  std_logic;
    CNT_RN      : IN  std_logic_vector(nfft_max-3 downto 0);
    NFFT        : IN  std_logic_vector(3 downto 0);
    RANK        : IN  std_logic_vector(2 downto 0);
    LAST_RANK   : IN  std_logic;
    ADDR0       : OUT std_logic_vector(nfft_max-3 downto 0);
    ADDR1       : OUT std_logic_vector(nfft_max-3 downto 0);
    ADDR2       : OUT std_logic_vector(nfft_max-3 downto 0);
    ADDR3       : OUT std_logic_vector(nfft_max-3 downto 0);
    SWITCH_CTRL : OUT std_logic_vector(1 downto 0));
END COMPONENT;

COMPONENT fft20_rw_addr_gen
  generic (
    nfft_max : INTEGER := 8);
  port (
    CLK         : IN  std_logic;
    CE          : IN  std_logic;
    CNT_RN      : IN  std_logic_vector(nfft_max-3 downto 0);
    NFFT        : IN  std_logic_vector(3 downto 0);
    RANK        : IN  std_logic_vector(2 downto 0);
    LAST_RANK   : IN  std_logic;
    ADDR0       : OUT std_logic_vector(nfft_max-3 downto 0);
    ADDR1       : OUT std_logic_vector(nfft_max-3 downto 0);
    ADDR2       : OUT std_logic_vector(nfft_max-3 downto 0);
    ADDR3       : OUT std_logic_vector(nfft_max-3 downto 0);
    SWITCH_CTRL : OUT std_logic_vector(1 downto 0));
END COMPONENT;

COMPONENT fft20_out_addr_gen
	generic (
		nfft_max : INTEGER := 7);
	port (
		CLK     : IN  std_logic;
		CE      : IN  std_logic;
		NFFT    : IN  std_logic_vector(3 downto 0);
		CNT_RN  : IN  std_logic_vector(nfft_max-1 downto 0);
		ADDR  	: OUT std_logic_vector(nfft_max-3 downto 0);		
		SEL_CTRL: OUT std_logic_vector(1 downto 0));
END COMPONENT;

COMPONENT fft20_io_addr_gen 
	generic (
		nfft_max : INTEGER := 7);
	port (
		CLK			: IN  std_logic;
		CE 			: IN  std_logic;
		NFFT    : IN  std_logic_vector(3 downto 0);
		CNT_RN 	: IN  std_logic_vector(nfft_max-1 downto 0);
		ADDR 		: OUT std_logic_vector(nfft_max-3 downto 0);
		WE0			: OUT std_logic;
		WE1			: OUT std_logic;
		WE2			: OUT std_logic;
		WE3			: OUT std_logic;
		CTRL    : OUT std_logic_vector(1 downto 0));
END COMPONENT;

COMPONENT fft20_max2_2 
  PORT (
    a					: IN std_logic_vector(1 DOWNTO 0);   
    b					: IN std_logic_vector(1 DOWNTO 0);   
    o					: OUT std_logic_vector(1 DOWNTO 0));   
END COMPONENT;

COMPONENT fft20_ranger
	PORT (
		re			: IN std_logic_vector(3 DOWNTO 0);   
		im			: IN std_logic_vector(3 DOWNTO 0);   
  		CE			: IN std_logic;
		CLK		: IN std_logic;
		rang   	: OUT std_logic_vector(1 DOWNTO 0));
END COMPONENT;

COMPONENT fft20_ranger3
	PORT (
		ar			: IN std_logic_vector(3 DOWNTO 0);   
		ai			: IN std_logic_vector(3 DOWNTO 0);   
		br			: IN std_logic_vector(3 DOWNTO 0);   
		bi			: IN std_logic_vector(3 DOWNTO 0);   
		cr			: IN std_logic_vector(3 DOWNTO 0);   
		ci			: IN std_logic_vector(3 DOWNTO 0);   
		dr			: IN std_logic_vector(3 DOWNTO 0);   
		di			: IN std_logic_vector(3 DOWNTO 0); 
		o_range	: OUT std_logic_vector(1 DOWNTO 0);
		clk		: IN std_logic;   
		ce			: IN std_logic);
END COMPONENT;

COMPONENT fft20_arith_shift3
  GENERIC ( WIDTH :  integer :=16);
  PORT (
    x					: IN std_logic_vector(WIDTH - 1 DOWNTO 0);   
    shift			: IN std_logic_vector(1 DOWNTO 0);   
    q				: OUT std_logic_vector(WIDTH + 2 DOWNTO 0);
    clk				: IN std_logic;
    ce				: IN std_logic);   

END COMPONENT;

COMPONENT fft20_unbiased_round
	GENERIC (
	  IN_WIDTH 	: INTEGER := 24;
	  OUT_WIDTH	: INTEGER := 11);
  PORT (
	  clk                    : IN std_logic;   
	  ce                     : IN std_logic;   
	  D                      : IN std_logic_vector(IN_WIDTH-1 DOWNTO 0);   
	  Q                      : OUT std_logic_vector(OUT_WIDTH-1 DOWNTO 0));
END COMPONENT;

COMPONENT fft20_overflow_gen
	PORT (
		ar			: IN std_logic_vector(3 DOWNTO 0);   
		ai			: IN std_logic_vector(3 DOWNTO 0);   
		br			: IN std_logic_vector(3 DOWNTO 0);   
		bi			: IN std_logic_vector(3 DOWNTO 0);   
		cr			: IN std_logic_vector(3 DOWNTO 0);   
		ci			: IN std_logic_vector(3 DOWNTO 0);   
		dr			: IN std_logic_vector(3 DOWNTO 0);   
		di			: IN std_logic_vector(3 DOWNTO 0);   
		overflow	: OUT std_logic;
		clk		: IN std_logic;   
		ce			: IN std_logic);
END COMPONENT;

COMPONENT fft20_PE4
	GENERIC (
		IO_WIDTH		: integer := 16;
		DRFLY_WIDTH		: integer := 20;    
		TW_WIDTH		: integer := 12;    
		MULT_LATENCY	: integer := 4;		
		C_HAS_MULTS		: integer := 1;		
		C_HAS_BYPASS	: integer := 1;		
		C_HAS_SCALER	: integer := 1;		
		C_HAS_ROUNDER	: integer := 1;		
		C_HAS_OVERFLOW	: integer := 1);	
	PORT (
		I0_RE			: IN std_logic_vector(IO_WIDTH - 1 DOWNTO 0);   
		I0_IM			: IN std_logic_vector(IO_WIDTH - 1 DOWNTO 0);   
		I1_RE           : IN std_logic_vector(IO_WIDTH - 1 DOWNTO 0);   
		I1_IM			: IN std_logic_vector(IO_WIDTH - 1 DOWNTO 0);   
		I2_RE			: IN std_logic_vector(IO_WIDTH - 1 DOWNTO 0);   
		I2_IM			: IN std_logic_vector(IO_WIDTH - 1 DOWNTO 0);   
		I3_RE			: IN std_logic_vector(IO_WIDTH - 1 DOWNTO 0);   
		I3_IM			: IN std_logic_vector(IO_WIDTH - 1 DOWNTO 0);   
		TW1_RE			: IN std_logic_vector(TW_WIDTH - 1 DOWNTO 0);   
		TW1_IM			: IN std_logic_vector(TW_WIDTH - 1 DOWNTO 0);   
		TW2_RE			: IN std_logic_vector(TW_WIDTH - 1 DOWNTO 0);   
		TW2_IM			: IN std_logic_vector(TW_WIDTH - 1 DOWNTO 0);   
		TW3_RE			: IN std_logic_vector(TW_WIDTH - 1 DOWNTO 0);   
		TW3_IM			: IN std_logic_vector(TW_WIDTH - 1 DOWNTO 0);   
		SCALE			: IN std_logic_vector(1 DOWNTO 0);   
		BYPASS		: IN std_logic;   
		OVFLO			: OUT std_logic;   
		O0_RE			: OUT std_logic_vector(IO_WIDTH - 1 DOWNTO 0);   
		O0_IM			: OUT std_logic_vector(IO_WIDTH - 1 DOWNTO 0);   
		O1_RE			: OUT std_logic_vector(IO_WIDTH - 1 DOWNTO 0);   
		O1_IM			: OUT std_logic_vector(IO_WIDTH - 1 DOWNTO 0);   
		O2_RE			: OUT std_logic_vector(IO_WIDTH - 1 DOWNTO 0);   
		O2_IM			: OUT std_logic_vector(IO_WIDTH - 1 DOWNTO 0);   
		O3_RE			: OUT std_logic_vector(IO_WIDTH - 1 DOWNTO 0);   
		O3_IM			: OUT std_logic_vector(IO_WIDTH - 1 DOWNTO 0);
		CE				: IN std_logic;   
		CLK				: IN std_logic);   
END COMPONENT;

COMPONENT fft20_fde
  port (
    D     : IN  std_logic;
    CLK   : IN  std_logic;
    CE    : IN  std_logic;
    Q     : OUT std_logic);
END COMPONENT;

COMPONENT fft20_mux_bus2
  generic (
		C_WIDTH     : INTEGER);
  port (
		MA  : IN std_logic_vector(C_WIDTH-1 downto 0);
		MB  : IN std_logic_vector(C_WIDTH-1 downto 0);
		S   : IN std_logic;
		CLK : IN std_logic;
		CE  : IN std_logic;
		Q   : OUT std_logic_vector(C_WIDTH-1 downto 0));
END COMPONENT;

COMPONENT fft20_in_switch4 
	generic (WIDTH : integer := 16);
	port ( 
		i0	: in std_logic_vector(WIDTH-1 downto 0);
		i1 : in std_logic_vector(WIDTH-1 downto 0);
		i2 : in std_logic_vector(WIDTH-1 downto 0);
		i3 : in std_logic_vector(WIDTH-1 downto 0);
		o0 : out std_logic_vector(WIDTH-1 downto 0);
		o1 : out std_logic_vector(WIDTH-1 downto 0);
		o2 : out std_logic_vector(WIDTH-1 downto 0);
		o3 : out std_logic_vector(WIDTH-1 downto 0);
		s 	: in std_logic_vector(1 downto 0);
		clk: in std_logic;
		ce : in std_logic);
end COMPONENT;

COMPONENT fft20_out_switch4 
	generic (WIDTH : integer := 16);
	port ( 
		i0			: in std_logic_vector(WIDTH-1 downto 0);
		i1 		: in std_logic_vector(WIDTH-1 downto 0);
		i2 		: in std_logic_vector(WIDTH-1 downto 0);
		i3 		: in std_logic_vector(WIDTH-1 downto 0);
      o0 		: out std_logic_vector(WIDTH-1 downto 0);
      o1			: out std_logic_vector(WIDTH-1 downto 0);
      o2 		: out std_logic_vector(WIDTH-1 downto 0);
      o3 		: out std_logic_vector(WIDTH-1 downto 0);
      s 			: in std_logic_vector(1 downto 0);
		bypass	: in std_logic;
		dir		: in std_logic;
		clk: in std_logic;
      ce : in std_logic);
end COMPONENT;

COMPONENT fft20_dpm
	generic (
		width : integer := 16;
		depth	: integer := 10;
    delay : integer := 1);
	port (
		addra: IN std_logic_VECTOR(depth-1 downto 0);
		addrb: IN std_logic_VECTOR(depth-1 downto 0);
		clk: IN std_logic;
		wea: IN std_logic;
    ena: IN std_logic;
   	enb: IN std_logic;
		dina: IN std_logic_VECTOR(width-1 downto 0);
		doutb: OUT std_logic_VECTOR(width-1 downto 0));
END COMPONENT;

COMPONENT fft20_sin_cos
	generic ( 
		MEM_TYPE 		: integer := 1;
		THETA_WIDTH 	: integer := 10;
		TWIDDLE_WIDTH 	: integer := 16);
	port (
		THETA: IN std_logic_VECTOR(THETA_WIDTH-1 downto 0);
		CLK: IN std_logic;
		CE: IN std_logic;
		SINE: OUT std_logic_VECTOR(TWIDDLE_WIDTH-1 downto 0);
		COSINE: OUT std_logic_VECTOR(TWIDDLE_WIDTH-1 downto 0));
	END COMPONENT;

COMPONENT fft20_shift_ram_1
	generic (
		C_DEPTH      : INTEGER);
	port (
		D   	: IN std_logic;
		CLK 	: IN std_logic;
		CE  	: IN std_logic;
		Q   	: OUT std_logic);
END COMPONENT;

COMPONENT fft20_shift_ram_1_sclr
	generic (
		C_DEPTH      : INTEGER);
	port (
		D   	: IN std_logic;
		CLK 	: IN std_logic;
		CE  	: IN std_logic;
		SCLR  : IN std_logic;
		Q   	: OUT std_logic);
END COMPONENT;

COMPONENT fft20_c_lut_reg
	generic (
		eqn : STRING := "");
	port (
		I0		: IN  std_logic;
		I1		: IN  std_logic;
		I2		: IN  std_logic := '0';
		I3		: IN  std_logic := '0';
		CLK	: IN  std_logic := '0';
 		CE   	: IN  std_logic := '1';
		Q		: OUT std_logic);
END COMPONENT;

COMPONENT fft20_c_lut_reg_sclr
	generic (
		eqn : STRING := "");
	port (
		I0		: IN  std_logic;
		I1		: IN  std_logic;
		I2		: IN  std_logic := '0';
		I3		: IN  std_logic := '0';
		CLK	: IN  std_logic := '0';
 		CE   	: IN  std_logic := '1';
		SCLR	: IN std_logic := '0';
		Q		: OUT std_logic);
END COMPONENT;

COMPONENT fft20_exp_growth 
   PORT (
      second_rank		: IN std_logic;   
      last_rank		: IN std_logic;   
      radix_2  		: IN std_logic;   
      exp_growth     : OUT std_logic_vector(1 DOWNTO 0));   
END COMPONENT;

COMPONENT fft20_scale_logic
   PORT (
      exp_growth		: IN std_logic_vector(1 DOWNTO 0);   
      dyna_range		: IN std_logic_vector(1 DOWNTO 0);   
      first_data     : IN std_logic;
      CLK            : IN std_logic;
      CE             : IN std_logic;
      scale          : OUT std_logic_vector(1 DOWNTO 0));   

END COMPONENT;


component fft20_xnor_bit_gate  
    generic (
        C_INPUTS    : integer );
    port (
        CE          : in    std_logic;
        CLK         : in    std_logic;
        I           : in    std_logic_vector(C_INPUTS-1 downto 0);
        Q           : out   std_logic );
end component;

component fft20_r2_ovflo_gen  
    port (
        AI          : in std_logic_vector(2 downto 0);
        AR          : in std_logic_vector(2 downto 0);
        BI          : in std_logic_vector(2 downto 0);
        BR          : in std_logic_vector(2 downto 0);
        CE          : in std_logic;
        CLK         : in std_logic;
        OVERFLOW    : out std_logic );
end component;

component fft20_r2_pe  
    generic (
        BTRFLY_WIDTH    : integer := 20;
        C_HAS_OVERFLOW  : integer := 1;
        C_HAS_ROUNDING  : integer := 1;
        C_HAS_SCALING   : integer := 1;
        IO_WIDTH        : integer := 16;
        MULT_LATENCY    : integer := 4; 
        TW_WIDTH        : integer := 17 );
    port (
        CE              : in std_logic;
        CLK             : in std_logic;
        I0_IM           : in std_logic_vector(IO_WIDTH-1 downto 0);
        I0_RE           : in std_logic_vector(IO_WIDTH-1 downto 0);
        I1_IM           : in std_logic_vector(IO_WIDTH-1 downto 0);
        I1_RE           : in std_logic_vector(IO_WIDTH-1 downto 0);
        SCALE           : in std_logic_vector(1 downto 0);
        TW_IM           : in std_logic_vector(TW_WIDTH-1 downto 0);
        TW_RE           : in std_logic_vector(TW_WIDTH-1 downto 0);
        O0_IM           : out std_logic_vector(IO_WIDTH-1 downto 0);
        O0_RE           : out std_logic_vector(IO_WIDTH-1 downto 0);
        O1_IM           : out std_logic_vector(IO_WIDTH-1 downto 0);
        O1_RE           : out std_logic_vector(IO_WIDTH-1 downto 0);
        OVFLO           : out std_logic );
end component;

component fft20_r2_tw_addr  
    generic (
        C_NFFT_MAX  : integer := 10 );
    port (
        CE          : in  std_logic;
        CLK         : in  std_logic;
        FWD_INV     : in  std_logic;
        RANK        : in  std_logic_vector(3 downto 0);
        RN          : in  std_logic_vector(C_NFFT_MAX-2 downto 0);
        TW_ADDR     : out std_logic_vector(C_NFFT_MAX-1 downto 0) );
end component;

component fft20_r2_in_addr  
    generic (
        C_NFFT_MAX  : integer := 10 );
    port (
        CE          : in  std_logic;
        CLK         : in  std_logic;
        NFFT        : in  std_logic_vector(3 downto 0);
        RN          : in  std_logic_vector(C_NFFT_MAX-1 downto 0);
        ADDR        : out std_logic_vector(C_NFFT_MAX-2 downto 0);
        WE0         : out std_logic;
        WE1         : out std_logic );
end component;

component fft20_r2_rw_addr  
    generic (
        C_NFFT_MAX  : integer := 10 );
    port (
        CE          : in  std_logic;
        CLK         : in  std_logic;
        NFFT        : in  std_logic_vector(3 downto 0);
        RANK        : in  std_logic_vector(3 downto 0);
        RN          : in  std_logic_vector(C_NFFT_MAX-2 downto 0);
        ADDR0       : out std_logic_vector(C_NFFT_MAX-2 downto 0);
        ADDR1       : out std_logic_vector(C_NFFT_MAX-2 downto 0);
        EN0         : out std_logic;
        EN1         : out std_logic );
end component;

component fft20_r2_ranger
	port (
		AI	    : in std_logic_vector(2 downto 0);   
        AR	    : in std_logic_vector(2 downto 0);   
		BI	    : in std_logic_vector(2 downto 0);   
		BR	    : in std_logic_vector(2 downto 0);   
		O_RANGE : out std_logic_vector(1 downto 0);
		CE	    : in std_logic;
		CLK		: in std_logic);
end component;

component fft20_r2_scale_logic
    port (
        CE          : in std_logic;
        CLK         : in std_logic;
        DYNA_RANGE  : in std_logic_vector(1 downto 0);
        EXP_GROWTH  : in std_logic;
        FIRST_DATA  : in std_logic;
        SCALE       : out std_logic_vector(1 downto 0));
end component;

component fft20_dist_mem
    generic (
        DELAY	: integer := 1;
        DEPTH	: integer := 10;		
        WIDTH   : integer := 16 );
    port (
        ADDRA   : in std_logic_vector(DEPTH-1 downto 0);
        ADDRB   : in std_logic_vector(DEPTH-1 downto 0);
        CLK     : in std_logic;
        DINA    : in std_logic_vector(WIDTH-1 downto 0);
        ENA     : in std_logic;
        ENB     : in std_logic;
        WEA     : in std_logic;
        DOUTB   : out std_logic_vector(WIDTH-1 downto 0) );
end component;

END fft20_comps;


LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY fft20_equ_rtl IS
  generic (
 		WIDTH   : INTEGER :=4 );
	port (
		A			: IN std_logic_VECTOR(WIDTH-1 downto 0);
		B			: IN std_logic_VECTOR(WIDTH-1 downto 0);
		A_EQ_B	: OUT std_logic);
END fft20_equ_rtl;

ARCHITECTURE xilinx OF fft20_equ_rtl IS

	BEGIN

	fft20_equ_rtl_proc: process(A,B)
   	begin
			if (A=B) then A_EQ_B <='1';
						else A_EQ_B <='0';
				end if;
		end process;
END xilinx;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY fft20_fde_rtl IS
	port (
		D     : IN  std_logic;
		CLK   : IN  std_logic;
		CE    : IN  std_logic;
		Q     : OUT std_logic);
END fft20_fde_rtl;

ARCHITECTURE xilinx OF fft20_fde_rtl IS

BEGIN
	process (CLK)
	variable Q_I: std_logic := '0';
	    begin
	        if (CLK'event and CLK='1') then
					if (CE='1') then
	           		Q_I := D;
	            end if;
	        end if;
			  Q <= Q_I;
	end process;
END xilinx;
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY fft20_fdre_rtl IS
	port (
		D     : IN  std_logic;
		CLK   : IN  std_logic;
		SCLR  : IN  std_logic;
		CE    : IN  std_logic;
		Q     : OUT std_logic);
END fft20_fdre_rtl;

ARCHITECTURE xilinx OF fft20_fdre_rtl IS

BEGIN
	process (CLK)
	variable Q_I: std_logic := '0';
	  begin
		  if (CLK'event and CLK='1') then
				if (SCLR = '1') then
					Q_I := '0';
				elsif (CE='1') then
       		Q_I := D;
        end if;
      end if;
	  Q <= Q_I;
	end process;
END xilinx;

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.fft20_synth_comps.all;

ENTITY fft20_cnt_tc_rtl IS
  generic (
		WIDTH   : INTEGER := 9);
  port (
  		MAX	: IN  std_logic_vector(WIDTH-1 DOWNTO 0);   
		CLK   : IN  std_logic;   
		CE		: IN  std_logic;   
		SCLR  : IN  std_logic;   
		Q 		: OUT std_logic_vector(WIDTH-1 downto 0);
		TC		: OUT std_logic); 
END fft20_cnt_tc_rtl;

ARCHITECTURE xilinx OF fft20_cnt_tc_rtl IS
	signal Q_CNT:	std_logic_vector(WIDTH-1 downto 0);
	signal I_TC	:	std_logic;
 	signal I_TC_asy	:	std_logic;
   signal carry: std_logic_vector(WIDTH downto 0);

BEGIN
	cnt: process (CLK)
		variable COUNT: std_logic_vector(WIDTH-1 downto 0) := (others => '0');

		begin
		   if CLK='1' and CLK'event then
				if (SCLR='1') OR ((CE='1') and (I_TC='1'))then 
					COUNT := (others => '0');
				else 
					if CE='1' then 
	               for i in 0 to WIDTH-1 loop 
							COUNT(i) := COUNT(i) XOR carry(i);
							end loop;
            		end if;
         		end if;
				end if;
			Q_CNT <=  COUNT;
		end process;

   carry(0) <='1'; 
   carry_chain: for i in 0 to WIDTH-1 generate
      carry(i+1) <= Q_CNT(i) and carry(i);
      end generate;


	treshold: fft20_equ_rtl
	  generic map(
	 		WIDTH => WIDTH)
		port map(
			A			=> Q_CNT, 
			B			=> MAX,
			A_EQ_B	=> I_TC_asy);

   reg_tc: fft20_fdre_rtl port map (D=> I_TC_asy, CLK => CLK, SCLR => SCLR, CE => CE, Q => I_TC);

	TC <= I_TC;
	Q 	<= Q_CNT;

END xilinx;


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.fft20_synth_comps.all;

ENTITY fft20_cnt_tc_rtl_a IS
  generic (
		WIDTH   : INTEGER := 9);
  port (
  	MAX	  : IN  std_logic_vector(WIDTH-1 DOWNTO 0);   
		CLK   : IN  std_logic;   
		CE		: IN  std_logic;   
		RESET : IN  std_logic;   
		Q 		: OUT std_logic_vector(WIDTH-1 downto 0);
		TC		: OUT std_logic); 
END fft20_cnt_tc_rtl_a;

ARCHITECTURE xilinx OF fft20_cnt_tc_rtl_a IS
	signal Q_CNT:	std_logic_vector(WIDTH-1 downto 0);
	signal Q_CARRY:	std_logic_vector(WIDTH downto 0);
	signal I_TC	:	std_logic;

BEGIN
	cnt: process (CLK)
  	variable COUNT: std_logic_vector(WIDTH-1 downto 0) := (others => '0');
	  variable CARRY: std_logic_vector(16 downto 0) := (0 => '1', others => '0');
	begin
	  if CLK='1' and CLK'event then
		  if RESET='1' then
			  COUNT := (others => '0');
				CARRY := (0 => '1', others => '0');

			elsif CE='1' then
				if I_TC='1' then
			    COUNT := (others => '0');
					CARRY := (0 => '1', others => '0');
		  	else
					for i in 0 to WIDTH-1 loop
					  COUNT(i) := Q_CNT(i) xor Q_CARRY(i);
						CARRY(i+1) := COUNT(i) and CARRY(i);
					end loop;	
				end if;	
      end if;
    end if;
		Q_CARRY <= CARRY(WIDTH downto 0);
		Q_CNT <=  COUNT;
	end process;

	threshold: fft20_equ_rtl
	  generic map(
	 		WIDTH => WIDTH)
		port map(
			A			=> Q_CNT, 
			B			=> MAX,
			A_EQ_B	=> I_TC);

	TC <= I_TC;
	Q 	<= Q_CNT;
END xilinx;


LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY fft20_reg_rs_rtl IS
	port (
		r     : IN  std_logic;
		s     : IN  std_logic;
		CLK   : IN  std_logic;
		CE    : IN  std_logic;
		Q     : OUT std_logic);
END fft20_reg_rs_rtl;

ARCHITECTURE xilinx OF fft20_reg_rs_rtl IS

BEGIN
	process (CLK)
	variable ORS: std_logic := '0';
	   begin
			if (CLK'event and CLK='1' and CE='1') then
				if (R='1') 
					then ORS := '0';
					else if (S='1') then ORS := '1'; end if;
	            end if;
				end if;
		Q <= ORS;
	end process;

END xilinx;
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.fft20_synth_comps.all;
USE XilinxCoreLib.fft20_synth_pkg.all;

ENTITY fft20_flow_control_a IS
  GENERIC (
	  c_has_nfft  : integer := 1;
		c_nfft_max  : integer := 10;
		flow_delay  : integer := 0);
	PORT (
	  CLK           : IN  std_logic;
		CE            : IN  std_logic;
		SCLR          : IN  std_logic;
		START         : IN  std_logic;
		NFFT          : IN  std_logic_vector(3 downto 0);
		NFFT_WE       : IN  std_logic;
		FWD_INV       : IN  std_logic;
		FWD_INV_WE    : IN  std_logic;
		SCALE_SCH     : IN  std_logic_vector((c_nfft_max+1)/2*2-1 downto 0);
		SCALE_SCH_WE  : IN  std_logic;
    LOAD_CNT      : OUT std_logic_vector(c_nfft_max-1 downto 0);
    PROC0_CNT     : OUT std_logic_vector(c_nfft_max-3 downto 0);
    PROC1_CNT     : OUT std_logic_vector(c_nfft_max-3 downto 0);
		UNLOAD_CNT    : OUT std_logic_vector(c_nfft_max-1 downto 0);
		PROC0_RANK    : OUT std_logic_vector(2 downto 0);
		PROC1_RANK    : OUT std_logic_vector(2 downto 0);
		LAST_RANK     : OUT std_logic;
		PROC0_VALID   : OUT std_logic;
		PROC1_VALID   : OUT std_logic;
		PE0_START     : OUT std_logic;
		PE1_START     : OUT std_logic;
		PE0_1st_RANK  : OUT std_logic;
		PE1_1st_RANK  : OUT std_logic;
		PE1_BUSY      : OUT std_logic;
		NFFT_O        : OUT std_logic_vector(3 downto 0);
		FWD_INV_O     : OUT std_logic;
		SCALE_SCH_O   : OUT std_logic_vector((c_nfft_max+1)/2*2-1 downto 0);
		RFD_O         : OUT std_logic;
		DV_O          : OUT std_logic);
END fft20_flow_control_a;		

ARCHITECTURE xilinx OF fft20_flow_control_a IS

  signal NFFT_int      : std_logic_vector(3 downto 0);
  signal FWD_INV_int   : std_logic;
  signal SCALE_SCH_int : std_logic_vector((c_nfft_max+1)/2*2-1 downto 0);
	signal NFFT_valid_h  : std_logic;
	signal NFFT_valid_l  : std_logic;
  
  signal load_cnt_ce   : std_logic;
	signal proc0_cnt_ce  : std_logic;
	signal proc1_cnt_ce  : std_logic;
	signal unload_cnt_ce : std_logic;
	
  signal load_start           : std_logic;
	signal load_enable          : std_logic; 
	signal next_frame_load      : std_logic; 
	signal current_load_done    : std_logic; 
  signal load_cnt_int         : std_logic_vector(c_nfft_max-1 downto 0); 
  
  signal proc0_start          : std_logic; 
  signal proc0_enable         : std_logic; 
  signal current_proc0_done   : std_logic; 
  signal proc0_cnt_int        : std_logic_vector(c_nfft_max-1 downto 0); 
  signal proc1_cnt_int        : std_logic_vector(c_nfft_max-3 downto 0); 
	 
  signal proc1_pre_start      : std_logic_vector(9 downto 0); 
  signal proc1_start          : std_logic; 
  signal proc1_enable         : std_logic; 
  signal current_proc1_done   : std_logic; 
  signal current_proc1_rank_done  : std_logic; 
	
	signal unload_start         : std_logic; 
  signal unload_enable        : std_logic; 
  signal current_unload_done  : std_logic; 
  signal unload_cnt_int       : std_logic_vector(c_nfft_max-1 downto 0); 
	signal unload_start_enable : std_logic;
  
  signal core_reset : std_logic;
  signal pe0_rank_reset : std_logic;
  signal pe1_rank_reset : std_logic;
	signal pe0_rank_cnt_ce : std_logic;
	signal pe0_rank_cnt_incre : std_logic;
	signal pe1_rank_cnt_ce : std_logic;
	signal pe1_rank_cnt_int : std_logic_vector(1 downto 0);
  signal current_pe0_rank_max: std_logic;
	signal pe0_rank : std_logic_vector(2 downto 0);
	signal pe1_rank : std_logic_vector(2 downto 0);
	signal pe1_rank_00 : std_logic_vector(2 downto 0);
	signal pe1_rank_01 : std_logic_vector(2 downto 0);
	signal pe1_rank_02 : std_logic_vector(2 downto 0);
	signal pe1_rank_03 : std_logic_vector(2 downto 0);
	signal last_rank_int: std_logic;
  signal pe1_valid: std_logic;
	
	signal xn_thresh       : std_logic_vector(12 downto 0); 
	signal load_thresh     : std_logic_vector(12 downto 0); 
	signal proc1_thresh    : std_logic_vector(10 downto 0); 
	signal proc0_thresh    : std_logic_vector(12 downto 0); 
	signal max_n           : std_logic_vector(12 downto 0); 
	signal proc0_max_4MSB  : std_logic_vector(3 downto 0); 
	signal proc0_max       : std_logic_vector(12 downto 0);  
  signal rank_thresh     : std_logic_vector(2 downto 0);
	
	signal i_start         : std_logic;
	
BEGIN

  i_start <= start;  

  ctrl_signals: process(CLK)
	  
	  variable next_frame_load_tmp : std_logic := '0';
	  variable load_enable_tmp     : std_logic := '0';
		variable proc0_enable_tmp    : std_logic := '0';
	  variable proc1_enable_tmp    : std_logic := '0';
	  variable unload_enable_tmp   : std_logic := '0';
  begin
    if clk'event and clk='1' then
      if SCLR='1' or (NFFT_WE='1' and CE = '1') then
			  
        next_frame_load_tmp := '0';
        load_enable_tmp     := '0';
        proc0_enable_tmp    := '0';
        proc1_enable_tmp    := '0';
        unload_enable_tmp   := '0';
      elsif CE='1' and NFFT_WE /= '1' then  
				
				
				next_frame_load_tmp := (i_start and load_enable) or (next_frame_load and not current_load_done);
		  	
		  	load_enable_tmp := i_start or next_frame_load or (load_enable and not current_load_done);
				proc0_enable_tmp := proc0_start or (proc0_enable and not current_proc0_done);
				proc1_enable_tmp := proc1_start or (proc1_enable and not current_proc1_done);
      	unload_enable_tmp := unload_start or (unload_enable and not current_unload_done);
			end if;	
	  end if;
		
		next_frame_load <= next_frame_load_tmp;
		load_enable <= load_enable_tmp;
		proc0_enable <= proc0_enable_tmp;
		proc1_enable <= proc1_enable_tmp;
		unload_enable <= unload_enable_tmp;
  end process;

  load_cnt_ce <= load_enable and CE;
	core_reset <= SCLR or (NFFT_WE and CE); 
	
  load_counter: fft20_cnt_tc_rtl_a
    generic map (
      WIDTH   => c_nfft_max)
    port map (
      MAX   => max_n(c_nfft_max-1 downto 0),
      CLK   => CLK,
      CE    => load_cnt_ce,
      RESET => core_reset,
      Q     => load_cnt_int,
      TC    => current_load_done);

  xn_thresh <= "0000000000011";  
 
  load_start_signal: fft20_equ_rtl  
    generic map(
      WIDTH => c_nfft_max)
    port map(
      A     => xn_thresh(c_nfft_max-1 downto 0),
      B     => load_cnt_int,
      A_EQ_B  => load_start);

  proc0_start_signal: fft20_equ_rtl
    generic map(
      WIDTH => c_nfft_max)
    port map(
      A     => load_thresh(c_nfft_max-1 downto 0),
      B     => load_cnt_int,
      A_EQ_B  => proc0_start);

  proc0_cnt_ce <= proc0_enable and CE;
	
	proc0_counter: fft20_cnt_tc_rtl_a
    generic map (
      WIDTH   => c_nfft_max)
    port map (
      MAX   => proc0_max(c_nfft_max-1 downto 0),
      CLK   => CLK,
      CE    => proc0_cnt_ce,
      RESET => core_reset,
      Q     => proc0_cnt_int,
      TC    => current_proc0_done);

  proc1_start_signal: fft20_equ_rtl
    generic map(
      WIDTH => c_nfft_max)
    port map(
      A     => proc0_thresh(c_nfft_max-1 downto 0),
      B     => proc0_cnt_int,
      A_EQ_B  => proc1_pre_start(0));
      
			
  has_flow_delay: if flow_delay /= 0 generate
  	proc1_shift_start_signal: for i in 0 to flow_delay-1 generate  
			proc1_reg: fft20_fdre_rtl 
				port map(
					D   => proc1_pre_start(i), 
					CLK => CLK, 
					CE  => CE, 
					SCLR => core_reset, 
					Q   => proc1_pre_start(i+1));
		end generate;
	
		proc1_start <= proc1_pre_start(flow_delay) and CE;	
	end generate;

	no_flow_delay: if flow_delay = 0 generate
  	proc1_start <= proc1_pre_start(0) and CE;
	end generate;

  
  pe0_rank_cnt_ce_signal: fft20_equ_rtl
    generic map (
      WIDTH =>  c_nfft_max-2)
    port map (
      A     => max_n(c_nfft_max-1 downto 2),
      B     => proc0_cnt_int(c_nfft_max-3 downto 0),
      A_EQ_B  => pe0_rank_cnt_incre);

	pe0_rank_cnt_ce <= pe0_rank_cnt_incre and CE;  

  pe0_rank_reset <= proc0_start or SCLR or (NFFT_WE and CE); 

  pe0_rank_counter: fft20_cnt_tc_rtl_a
	  generic map (
		  WIDTH   => 3)
    port map (
      MAX   => rank_thresh, 
      CLK   => CLK,
      CE    => pe0_rank_cnt_ce,
      RESET => pe0_rank_reset,
      Q     => pe0_rank,
      TC    => current_pe0_rank_max);  

  proc1_cnt_ce <= proc1_enable and CE;
	
	proc1_counter: fft20_cnt_tc_rtl_a
    generic map (
      WIDTH   => c_nfft_max-2)
    port map (
      MAX   => max_n(c_nfft_max-1 downto 2),
      CLK   => CLK,
      CE    => proc1_cnt_ce,
      RESET => core_reset,
      Q     => proc1_cnt_int(c_nfft_max-3 downto 0),
      TC    => current_proc1_rank_done);
	
	unload_start_enable_signal: fft20_equ_rtl
    generic map (
      WIDTH =>  c_nfft_max-2)
    port map (
      A     => proc1_thresh(c_nfft_max-3 downto 0),
      B     => proc1_cnt_int(c_nfft_max-3 downto 0),
      A_EQ_B  => unload_start_enable);

  pe1_rank_reset <= proc1_start or SCLR or (NFFT_WE and CE); 
	pe1_rank_cnt_ce <= current_proc1_rank_done and (not proc1_start) and CE;

  pe1_rank_counter: fft20_cnt_tc_rtl_a
	  generic map (
		  WIDTH   => 2)
    port map (
      MAX   => rank_thresh(1 downto 0),
      CLK   => CLK,
      CE    => pe1_rank_cnt_ce,
      RESET  => pe1_rank_reset,
      Q     => pe1_rank_cnt_int,
      TC    => last_rank_int);

  current_proc1_done <= current_proc1_rank_done and last_rank_int;
  unload_start <= unload_start_enable and last_rank_int;
  unload_cnt_ce <= unload_enable and CE;

  unload_counter: fft20_cnt_tc_rtl_a
    generic map (
      WIDTH   => c_nfft_max)
    port map (
      MAX   => max_n(c_nfft_max-1 downto 0),
      CLK   => CLK,
      CE    => unload_cnt_ce,
      RESET => core_reset,
      Q     => unload_cnt_int,
      TC    => current_unload_done);

	PE0_1st_rank_signal: process(pe0_rank)
	begin
	  if (pe0_rank="000") then
		  PE0_1st_RANK <= '1';
		else
		  PE0_1st_RANK <= '0';
		end if;
  end process;

  PE1_1st_rank_signal: process(pe1_rank_cnt_int, NFFT_int) 
	begin
		if (pe1_rank_cnt_int="00" or (pe1_rank_cnt_int="01" and NFFT_int="0110")) then
      PE1_1st_RANK <= '1';
    else
      PE1_1st_RANK <= '0';
    end if;
	end process;	

  pe1_rank_00(2) <= '0';
  pe1_rank_00(1) <= (NFFT_int(3) and NFFT_int(2)) or (NFFT_int(3) and NFFT_int(1) and NFFT_int(0));
  pe1_rank_00(0) <= (not NFFT_int(3)) or ((not NFFT_int(2)) and (not NFFT_int(1))) or
	                  (NFFT_int(2) and NFFT_int(0)) or (NFFT_int(2) and NFFT_int(1)) or (NFFT_int(1) and (not NFFT_int(0)));

  pe1_rank_01(2) <= (NFFT_int(3) and NFFT_int(2) and NFFT_int(1)) or (NFFT_int(3) and NFFT_int(2) and NFFT_int(0));
  pe1_rank_01(1) <= (NFFT_int(3) and (not NFFT_int(2))) or (NFFT_int(3) and (not NFFT_int(1)) and (not NFFT_int(0)))
	                  or ((not NFFT_int(3)) and  NFFT_int(2) and NFFT_int(1) and NFFT_int(0));
  pe1_rank_01(0) <= ((not NFFT_int(3)) and  NFFT_int(2) and NFFT_int(1) and (not NFFT_int(0))) or 
	                  (NFFT_int(3) and  NFFT_int(2) and (not NFFT_int(1)) and (not NFFT_int(0))) or 
										(NFFT_int(3) and  (not NFFT_int(2)) and NFFT_int(1) and NFFT_int(0));

  pe1_rank_02(2) <= (NFFT_int(3) and NFFT_int(2)) or (NFFT_int(3) and NFFT_int(1) and NFFT_int(0));
  pe1_rank_02(1) <= (not NFFT_int(3)) or ((not NFFT_int(2)) and (not NFFT_int(1))) or ((not NFFT_int(2)) and (not NFFT_int(0)));
  pe1_rank_02(0) <= not pe1_rank_01(0);

  pe1_rank_03(2) <= (NFFT_int(3) and NFFT_int(2)) or (NFFT_int(3) and NFFT_int(0)) or (NFFT_int(3) and NFFT_int(1));
  pe1_rank_03(1) <= (NFFT_int(2) and NFFT_int(1)) or (NFFT_int(3) and NFFT_int(2) and NFFT_int(0)) or 
	                   (NFFT_int(3) and (not NFFT_int(2)) and (not NFFT_int(1)) and (not NFFT_int(0)));
  pe1_rank_03(0) <= (NFFT_int(3) and (not NFFT_int(1)) and (not NFFT_int(0))) or 
	                  ((not NFFT_int(3)) and  NFFT_int(2) and NFFT_int(1) and NFFT_int(0)) or
										(NFFT_int(3) and (not NFFT_int(2)) and NFFT_int(1) and NFFT_int(0));

  pe1_rank_mux: process (pe1_rank_cnt_int, pe1_rank_00, pe1_rank_01, pe1_rank_02, pe1_rank_03) 
  begin
    case pe1_rank_cnt_int is
 	 	  when "00" => pe1_rank <= pe1_rank_00;  
      when "01" => pe1_rank <= pe1_rank_01;  
 	 	  when "10" => pe1_rank <= pe1_rank_02;  
      when "11" => pe1_rank <= pe1_rank_03;  
			when others => pe1_rank <= pe1_rank_00;
 	  end case;	
  end process;

  pe1_valid_signal: process (proc1_start, pe1_rank_cnt_int, NFFT_int)  
	begin
    if (pe1_rank_cnt_int(0)='0' and NFFT_int="0110") or (pe1_rank_cnt_int="10" and (NFFT_int="0111" or NFFT_int="1000"))  then
      pe1_valid <= '0';
		else
		  pe1_valid <= '1';
    end if;
	end process;		

  counter_limit: process (NFFT_int)
  begin
    case NFFT_int is
 	 	  when "0111" => max_n <= "0000001111111";  
      when "1000" => max_n <= "0000011111111";  
 	 	  when "1001" => max_n <= "0000111111111";  
      when "1010" => max_n <= "0001111111111";  
 	 	  when "1011" => max_n <= "0011111111111";  
      when "1100" => max_n <= "0111111111111";  
 	 	  when "1101" => max_n <= "1111111111111";  
			when others => max_n <= "0000000111111";  
		end case;	
  end process;

  proc0_limit: process (NFFT_int)
  begin
    case NFFT_int is
 	 	  when "1011" => proc0_max_4MSB <= "0001";  
      when "1100" => proc0_max_4MSB <= "0011";  
 	 	  when "1101" => proc0_max_4MSB <= "1011";  
			when others => proc0_max_4MSB <= "0000";  
 	  end case;	
  end process;

  proc0_max(8 downto 0) <= max_n(10 downto 2);
	proc0_max(12 downto 9) <= proc0_max_4MSB;

  
  
	proc0_threshold: process (NFFT_int)
	begin
	  case NFFT_int is 
		  when "0110" => proc0_thresh(0) <= '1';  
			when others => proc0_thresh(0) <= '0';
		end case;
	end process;	
	
	proc0_thresh(3 downto 1) <= "000";
	proc0_thresh(12 downto 4) <= proc0_max(12 downto 4);

	
	
	proc1_thresh <= "00000001111";
	rank_thresh <= "011";

  load_limit: process (NFFT_int)
  begin
    case NFFT_int is
 	 	  when "0111" => load_thresh <= "0000001101110";  
      when "1000" => load_thresh <= "0000010111111";  
 	 	  when "1001" => load_thresh <= "0000110111110";  
      when "1010" => load_thresh <= "0001011111111";  
 	 	  when "1011" => load_thresh <= "0011011111110";  
      when "1100" => load_thresh <= "0101111111111";  
 	 	  when "1101" => load_thresh <= "1101111111110";  
			when others => load_thresh <= "0000000101111";  
 	  end case;	
  end process;
  
	
	NFFT_valid_l <= NFFT(3) or (NFFT(2) and NFFT(1));

	
  N_14: if c_nfft_max = 14 generate
	  NFFT_valid_h <= (not NFFT(1)) or (NFFT(3) and (not NFFT(2))) or (not NFFT(3)) or (NFFT(3) and (not NFFT(0))); 
  end generate;

  N_13: if c_nfft_max = 13 generate
	  NFFT_valid_h <= (not NFFT(1)) or (NFFT(3) and (not NFFT(2))) or (not NFFT(3));
  end generate;

  N_12: if c_nfft_max = 12 generate
    NFFT_valid_h <= ((not NFFT(1)) and (not NFFT(0))) or (not NFFT(2)) or (not NFFT(3));
  end generate;

  N_11: if c_nfft_max = 11 generate
    NFFT_valid_h <= (not NFFT(2)) or (not NFFT(3));
  end generate;

	N_10: if c_nfft_max = 10 generate
    NFFT_valid_h <= ((not NFFT(2)) and (not NFFT(1))) or (not NFFT(3)) or ((not NFFT(2)) and (not NFFT(0)));
  end generate;

  N_9: if c_nfft_max = 9 generate
    NFFT_valid_h <= ((not NFFT(2)) and (not NFFT(1))) or (not NFFT(3)); 
  end generate;

  N_8: if c_nfft_max = 8 generate
    NFFT_valid_h <= ((not NFFT(2)) and (not NFFT(1)) and (not NFFT(0))) or (not NFFT(3));
  end generate;

	N_7: if c_nfft_max = 7 generate
    NFFT_valid_h <= not NFFT(3);
  end generate;

  N_6: if c_nfft_max = 6 generate
    NFFT_valid_h <= (not NFFT(3)) and ((not NFFT(1)) or NFFT(0) or (not NFFT(2)));
  end generate;

  
  has_no_nfft: if c_has_nfft /= 1 generate
	  NFFT_int <= int_2_std_logic_vector(c_nfft_max, 4);
	end generate;	

  has_nfft: if c_has_nfft = 1 generate
	  nfft_value: process(CLK)
		variable NFFT_int_tmp : std_logic_vector(3 downto 0) :=	int_2_std_logic_vector(c_nfft_max, 4);
		begin
		  if CLK'event and CLK='1' then
			  if SCLR='1' then
				  NFFT_int_tmp := int_2_std_logic_vector(c_nfft_max, 4);
        elsif CE='1' then
				  if NFFT_WE='1' and NFFT_valid_h='0' then
					  NFFT_int_tmp := int_2_std_logic_vector(c_nfft_max, 4);
          elsif NFFT_WE='1' and NFFT_valid_l='0' then
					  NFFT_int_tmp := "0110";
					elsif NFFT_WE='1' and NFFT_valid_h='1' and NFFT_valid_l='1' then	
				  	NFFT_int_tmp := NFFT;
					end if;	
				end if;
			end if;
		NFFT_int <= NFFT_int_tmp;	
		end process;	
	end generate;		  

  
	
	fwd_inv_and_schle_sch_signal: process(CLK)
	  variable FWD_INV_int_tmp : std_logic := '1';
	  variable FWD_INV_O_tmp : std_logic := '1';
		variable SCALE_SCH_int_tmp : std_logic_vector(13 downto 0) :=	scale_sch_init(c_nfft_max);
		variable SCALE_SCH_O_tmp : std_logic_vector(13 downto 0) := scale_sch_init(c_nfft_max); 
	begin
	  if CLK'event and CLK='1' then
		  if SCLR='1' then
			  FWD_INV_int_tmp := '1';
				FWD_INV_O_tmp := '1';
				SCALE_SCH_int_tmp := scale_sch_init(c_nfft_max);
				SCALE_SCH_O_tmp := scale_sch_init(c_nfft_max);
			elsif CE='1' then
			  
			  if FWD_INV_WE='1' then
  	 			FWD_INV_int_tmp := FWD_INV;
				end if;
        
      	if SCALE_SCH_WE='1' then
        	SCALE_SCH_int_tmp((c_nfft_max+1)/2*2-1 downto 0) := SCALE_SCH;
      	end if;
        
				if load_start='1' then 
			  	FWD_INV_O_tmp := FWD_INV_int;
					SCALE_SCH_O_tmp((c_nfft_max+1)/2*2-1 downto 0) := SCALE_SCH_int;
				end if;	
			end if;	
		end if;
		FWD_INV_int <= FWD_INV_int_tmp;
		FWD_INV_O <= FWD_INV_O_tmp;
		SCALE_SCH_int <= SCALE_SCH_int_tmp((c_nfft_max+1)/2*2-1 downto 0);
		SCALE_SCH_O <= SCALE_SCH_O_tmp((c_nfft_max+1)/2*2-1 downto 0);
	end process;	

  NFFT_O <= NFFT_int;
  RFD_O <= load_enable;
	DV_O <= unload_enable;
	
  LOAD_CNT <= load_cnt_int;
	PROC0_CNT <= proc0_cnt_int(c_nfft_max-3 downto 0);
	PROC1_CNT <= proc1_cnt_int;
	UNLOAD_CNT <= unload_cnt_int;
	
	PE1_BUSY <= proc1_enable;
	LAST_RANK <= last_rank_int;
	
	PROC0_VALID <= proc0_enable;  
	PROC1_VALID <= pe1_valid;
	PE0_START <= proc0_start;
	PE1_START <= proc1_start;
	
	PROC0_RANK <= pe0_rank;
	PROC1_RANK <= pe1_rank;

END xilinx;



LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.fft20_synth_comps.all;
USE XilinxCoreLib.fft20_synth_pkg.all;

ENTITY fft20_flow_control_b IS
	GENERIC (
		NFFT_MAX			: integer := 10;
		C_HAS_NFFT		: integer := 1;		
		C_HAS_BFP 		: integer := 1;	   
		PE_LATENCY		: integer := 13);		
	PORT (
		clk				: IN std_logic;   
		ce					: IN std_logic;   
		sclr				: IN std_logic;   
		start				: IN std_logic;
		unload			: IN std_logic;
		NFFT				: IN std_logic_vector(3 DOWNTO 0);   
		NFFT_WE			: IN std_logic;   
		done				: OUT std_logic;   
		edone				: OUT std_logic;   
		ld_start			: OUT std_logic;   
		pr_start			: OUT std_logic;   
		RFD				: OUT std_logic;   
		BUSY				: OUT std_logic;   
		DV					: OUT std_logic;   
		IN_ADDR			: OUT std_logic_vector(NFFT_MAX-1 DOWNTO 0);   
		OUT_ADDR			: OUT std_logic_vector(NFFT_MAX-1 DOWNTO 0);   
		NFFT_out			: OUT std_logic_vector(3 DOWNTO 0);   
		ce_rank			: OUT std_logic;   
		ce_rn				: OUT std_logic;   
		rn_0				: OUT std_logic_vector(NFFT_MAX-3 DOWNTO 0);   
		rank_0			: OUT std_logic_vector(2 DOWNTO 0);
		second_rank		: OUT std_logic;
		last_rank		: OUT std_logic;
		recent_sclr		: OUT std_logic);   
END fft20_flow_control_b;

ARCHITECTURE xilinx OF fft20_flow_control_b IS

	constant DATA_VALID_DELAY	: integer	:= 5; 
	
	
	signal PE_padding_large	   : std_logic_vector(4 DOWNTO 0) := int_2_std_logic_vector( PE_LATENCY-1, 5 );
  	signal PE_padding_small	   : std_logic_vector(4 DOWNTO 0) := int_2_std_logic_vector( 4 , 5 );
   signal PE_padding          : std_logic_vector(4 DOWNTO 0);

	signal i_nfft 					: std_logic_vector(3 downto 0);
	signal NFFT_VALID			: std_logic;
	signal gnd						: std_logic := '0';
	signal max_N					: std_logic_vector(13 DOWNTO 0);
	signal max_rn					: std_logic_vector(11 DOWNTO 0);
	signal max_rank				: std_logic_vector(2 DOWNTO 0);
	signal max_N_asy				: std_logic_vector(13 DOWNTO 0);
  	signal max_rn_asy				: std_logic_vector(11 DOWNTO 0);
	signal max_rank_asy			: std_logic_vector(2 DOWNTO 0);
	signal DONE_IN					: std_logic;
	signal DONE_PR					: std_logic;
	signal DONE_OUT				: std_logic;
	signal UNLOAD_HIT				: std_logic;
	signal START_HIT				: std_logic;
	signal I_START					: std_logic;
	signal I_UNLOAD				: std_logic;
	signal WAITING					: std_logic;
	signal LOADING					: std_logic;
	signal UNLOADING				: std_logic;	
	signal PROCESSING				: std_logic;
	signal loading_state_s		: std_logic;
	signal loading_state_r		: std_logic;
	signal processing_state_s	: std_logic;
	signal processing_state_r	: std_logic;
	signal waiting_state_s		: std_logic;
	signal waiting_state_r		: std_logic;
	signal unloading_state_s	: std_logic;
	signal unloading_state_r	: std_logic;
	signal start_register_r		: std_logic;
	signal unload_register_r	: std_logic;
	signal I_last_rank			: std_logic;
	signal I_last_rank_d			: std_logic;
	signal CE_rncnt				: std_logic;
	signal TC_rncnt 				: std_logic;
	signal CE_PEdelay				: std_logic;
	signal pe_delay				: std_logic_vector(4 DOWNTO 0);
	signal TC_PEdelay 			: std_logic;
	signal end_rank				: std_logic;
	signal I_CE_rn					: std_logic;
	signal I_rn_0					: std_logic_vector(NFFT_MAX-3 DOWNTO 0);
	signal I_rank_0				: std_logic_vector(2 DOWNTO 0);
	signal LDONE_PR				: std_logic;
	signal CE_rankcnt				: std_logic;
	signal XN_INDEX_counter_CE : std_logic;
	signal XK_INDEX_counter_CE : std_logic;
	signal SCLR_rankcnt			: std_logic;
	signal set_rn_sm				: std_logic;
	signal res_rn_sm				: std_logic;
	signal valid_frame_asy		: std_logic;
	signal valid_frame  	     	: std_logic; 
	signal A_INIT					: std_logic := '1';
   signal dig_rev             : std_logic_vector(13 DOWNTO 0);   
   signal OUT_ADDR_raw        : std_logic_vector(NFFT_MAX-1 DOWNTO 0);   
   signal FW			         : std_logic_vector(13 DOWNTO 0);   
	signal cy						: std_logic_vector(DATA_VALID_DELAY downto 0);
	signal SCLR_before			: std_logic_vector(DATA_VALID_DELAY downto 0);
	signal SCLR_OR_NFFT_WE		: std_logic;
	signal SCLR_OR_CE				: std_logic;
	signal padd_select			: std_logic;   
   constant NFFT_MAX_std      : std_logic_vector(3 DOWNTO 0) := int_2_std_logic_vector( NFFT_MAX, 4 );

	BEGIN

	
	

	nfft_from_port: if c_has_NFFT =1	generate 
		FFT_REG: process(CLK)
			variable INFFT: std_logic_vector(3 downto 0) := NFFT_MAX_std;
	   	begin
				if CLK='1' and CLK'event and CE='1' then 				
					A_INIT <='0';
					if (SCLR='1') then 
						INFFT := NFFT_MAX_std;
					else 
						if NFFT_WE='1' then 
	                  if (NFFT < "0110") then INFFT := "0110";
	                  else
		     					if (NFFT > NFFT_MAX_std) then
								  INFFT := NFFT_MAX_std;
								else 
								  INFFT := NFFT;
	                     end if;
							end if;
						end if;
					end if;
				end if;
				I_NFFT <= INFFT;
			end process;
		end generate;

	SCLR_OR_NFFT_WE <= SCLR OR (NFFT_WE AND CE) OR A_INIT;
	SCLR_OR_CE <= SCLR OR CE;
	nfft_from_ip:	if c_has_NFFT /=1	generate 
		I_NFFT <= NFFT_MAX_std; 
	end generate;

	NFFT_out <= I_NFFT;

	
	start_register_r <= loading_state_s OR SCLR_OR_NFFT_WE;
	start_register: fft20_reg_rs_rtl
		port map(
			r		=> start_register_r,
			s 		=> START,
			CLK 	=> CLK,
			CE		=> SCLR_OR_CE,
			Q     => START_HIT);

	I_START <= START_HIT OR START;

	
	unload_register_r <= unloading_state_s OR SCLR_OR_NFFT_WE;
	unload_register: fft20_reg_rs_rtl 
		port map(
			r 		=> unload_register_r, 
			s 		=> UNLOAD,
			CLK 	=> CLK,
			CE		=> SCLR_OR_CE,
			Q     => UNLOAD_HIT);

	 I_UNLOAD <= (UNLOAD_HIT OR UNLOAD) and valid_frame;

	
	waiting_state_r <= (START OR (I_UNLOAD AND (NOT PROCESSING) AND (NOT I_START))) AND (NOT SCLR_OR_NFFT_WE);
	waiting_state_s <= SCLR_OR_NFFT_WE OR ((NOT I_START) AND ((UNLOADING AND DONE_OUT) OR (PROCESSING AND (NOT I_UNLOAD) AND DONE_PR)));
	waiting_state: fft20_reg_rs_rtl 
		port map(
			r 		=> waiting_state_r, 
			s 		=> waiting_state_s,
			CLK 	=> CLK,
			CE		=> SCLR_OR_CE,
			Q     => WAITING);

	loading_state_r <= DONE_IN OR SCLR_OR_NFFT_WE;
	loading_state_s <= I_START AND ((WAITING OR (UNLOADING AND DONE_OUT)) OR (PROCESSING AND DONE_PR AND (NOT I_UNLOAD)));
	loading_state: fft20_reg_rs_rtl 
		port map(
			r 		=> loading_state_r, 
			s 		=> loading_state_s,
			CLK 	=> CLK,
			CE		=> SCLR_OR_CE,
			Q     => LOADING);

	processing_state_r <= DONE_PR OR SCLR_OR_NFFT_WE;
	processing_state_s <= LOADING AND DONE_IN;
	processing_state: fft20_reg_rs_rtl 
		port map(
			r 		=> processing_state_r,
			s 		=> processing_state_s, 
			CLK 	=> CLK,
			CE		=> SCLR_OR_CE,
			Q     => PROCESSING);

	unloading_state_r <= DONE_OUT OR SCLR_OR_NFFT_WE;
	unloading_state_s <= I_UNLOAD AND ((PROCESSING AND DONE_PR) OR (WAITING AND (NOT I_START)));
	unloading_state: fft20_reg_rs_rtl 
		port map(
			r 		=> unloading_state_r,
			s 		=> unloading_state_s,
			CLK 	=> CLK,
			CE		=> SCLR_OR_CE,
			Q     => UNLOADING);

   with I_NFFT select
	max_n_asy <=	"00000000001110" when "0100",   
						"00000000011110" when "0101",   
				
						"00000001111110" when "0111",   
						"00000011111110" when "1000",   
						"00000111111110" when "1001",   
						"00001111111110" when "1010",   
						"00011111111110" when "1011",   
						"00111111111110" when "1100",   
						"01111111111110" when "1101",   
						"11111111111110" when "1110",   
						"00000000111110" when others;   

	max_n_reg: process(CLK)
   	begin
			if CLK='1' then 				
            max_n <= max_n_asy;
			end if;
		end process;

   with I_NFFT select
	max_rn_asy <=	"000000000010" when "0100",   
						"000000000110" when "0101",   
				
						"000000011110" when "0111",   
						"000000111110" when "1000",   
						"000001111110" when "1001",   
						"000011111110" when "1010",   
						"000111111110" when "1011",   
						"001111111110" when "1100",   
						"011111111110" when "1101",   
						"111111111110" when "1110",   
						"000000001110" when others;   

	max_rn_reg: process(CLK)
   	begin
			if CLK='1' then 				
            max_rn <= max_rn_asy;
			end if;
		end process;


   with I_NFFT select
	max_rank_asy <=
			   		
			   		
			   			"010" when "0111",  
			   			"010" when "1000",  
			   			"011" when "1001",  
				    		"011" when "1010",  
			   			"100" when "1011",  
			   			"100" when "1100",  
			   			"101" when "1101",  
			   			"101" when "1110",  
			   			"001" when others;	

   max_rank_reg: process(CLK)
   	begin
			if CLK='1' then 				
            max_rank <= max_rank_asy;
			end if;
		end process;

	
	XN_INDEX_counter_CE <= ((LOADING OR SCLR_OR_NFFT_WE) AND CE) OR SCLR ;
	XN_INDEX_counter: fft20_cnt_tc_rtl
		generic map(
			WIDTH   => NFFT_MAX)
		port map(
	  		MAX		=> max_N(NFFT_MAX-1 downto 0),   
			CLK  		=> CLK, 
			CE			=> XN_INDEX_counter_CE,
			SCLR  	=> start_register_r,
			Q 			=> FW(NFFT_MAX-1 downto 0),
			TC			=> DONE_IN); 

	
	XK_INDEX_counter_CE <= ((UNLOADING OR SCLR_OR_NFFT_WE) AND CE) OR SCLR ;
	XK_INDEX_counter: fft20_cnt_tc_rtl 
		generic map(
			WIDTH   => NFFT_MAX)
		port map(
	  		MAX		=> max_N(NFFT_MAX-1 downto 0),   
			CLK  		=> CLK, 
			CE			=> XK_INDEX_counter_CE,
			SCLR  	=> unload_register_r,
			Q 			=> OUT_ADDR_raw,
			TC			=> DONE_OUT); 

	rn_0_cnt: fft20_cnt_tc_rtl 
		generic map(
			WIDTH   => NFFT_MAX-2)
		port map(
	  		MAX		=> max_rn(NFFT_MAX-3 downto 0),   
			CLK  		=> CLK, 
			CE			=> CE_rncnt,
			SCLR  	=> SCLR,
			Q 			=> I_rn_0,
			TC			=> TC_rncnt); 

   PE_cnt: fft20_cnt_tc_rtl 
		generic map(
			WIDTH   => 5)
		port map(
	  		MAX		=> PE_padding,   
			CLK  		=> CLK, 
			CE			=> CE_PEdelay,
			SCLR  	=> SCLR,
			Q 			=> pe_delay,
			TC			=> TC_PEdelay); 

   	end_rank <= TC_PEdelay;

		padd_select <= I_last_rank_d OR (NOT I_NFFT(3));
		with padd_select select
           PE_padding <= PE_padding_small when '0',
                         PE_padding_large when others;  

      second_rank   <= (NOT I_rank_0(2)) AND (NOT I_rank_0(1)) AND I_rank_0(0);
   	set_rn_sm     <= TC_PEdelay OR SCLR_OR_NFFT_WE; 
	   res_rn_sm     <= TC_rncnt AND NOT (SCLR_OR_NFFT_WE); 


	
	
	
	rn_sm: fft20_reg_rs_rtl 
		port map(
			r 		=> res_rn_sm, 
			s 		=> set_rn_sm,
			CLK 	=> CLK,
			CE		=> CE,
			Q     => I_CE_rn);

	CE_rncnt 	<= (CE AND (processing AND I_CE_rn)) OR SCLR;
	CE_PEdelay 	<= (CE AND (processing AND (NOT I_CE_rn))) OR SCLR;
	CE_rankcnt	<= (CE AND (processing_state_s OR end_rank)) OR SCLR;
	SCLR_rankcnt<= processing_state_s OR SCLR_OR_NFFT_WE;

	rank_0_cnt: fft20_cnt_tc_rtl
		generic map(
			WIDTH   => 3)
		port map(
	  		MAX		=> max_rank,   
			CLK  		=> CLK, 
			CE			=> CE_rankcnt,
			SCLR  	=> SCLR_rankcnt,
			Q 			=> I_rank_0,
			TC			=> I_last_rank); 

   with I_NFFT select 
	dig_rev <=  '0'  & '0'  & '0'  & '0'  & '0'  & '0'  & '0'  &FW(0) &FW(2) &FW(1) &FW(4) &FW(3) &FW(6) &FW(5)	  when "0111",   
				   '0'  & '0'  & '0'  & '0'  & '0'  & '0'  &FW(1) &FW(0) &FW(3) &FW(2) &FW(5) &FW(4) &FW(7) &FW(6)	  when "1000",   
   			   '0'  & '0'  & '0'  & '0'  & '0'  &FW(0) &FW(2) &FW(1) &FW(4) &FW(3) &FW(6) &FW(5) &FW(8) &FW(7)   when "1001",   
				   '0'  & '0'  & '0'  & '0'  &FW(1) &FW(0) &FW(3) &FW(2) &FW(5) &FW(4) &FW(7) &FW(6) &FW(9) &FW(8)   when "1010",   
				   '0'  & '0'  & '0'  &FW(0) &FW(2) &FW(1) &FW(4) &FW(3) &FW(6) &FW(5) &FW(8) &FW(7) &FW(10)&FW(9)   when "1011",   
				   '0'  & '0'  &FW(1) &FW(0) &FW(3) &FW(2) &FW(5) &FW(4) &FW(7) &FW(6) &FW(9) &FW(8) &FW(11)&FW(10)  when "1100",   
				   '0'  &FW(0) &FW(2) &FW(1) &FW(4) &FW(3) &FW(6) &FW(5) &FW(8) &FW(7) &FW(10)&FW(9) &FW(12)&FW(11)  when "1101",   
				  FW(1) &FW(0) &FW(3) &FW(2) &FW(5) &FW(4) &FW(7) &FW(6) &FW(9) &FW(8) &FW(11)&FW(10)&FW(13)&FW(12)  when "1110",   
				   '0'  & '0'  & '0'  & '0'  & '0'  & '0'  & '0'  &'0'   &FW(1) &FW(0) &FW(3) &FW(2) &FW(5) &FW(4)   when others;   
	
   OUT_MUX: for i in 0 to NFFT_MAX-1 generate
      OUT_ADDR(i) <= (OUT_ADDR_raw(i) AND UNLOADING) OR 
                     (dig_rev(i) AND LOADING AND valid_frame);
      end generate;

   valid_frame_asy <= (VALID_FRAME OR PROCESSING) AND NOT (SCLR_OR_NFFT_WE);
	valid_frame_reg : fft20_fde_rtl port map(D=> valid_frame_asy, CLK=> CLK, CE=> SCLR_OR_CE, Q=>valid_frame);
	DONE_PR	 	<= I_last_rank_d AND end_rank;

	fdres: process (CLK)
	    begin
	        if (CLK'event and CLK='1') then
					if (SCLR_OR_NFFT_WE='1') then
						I_last_rank_d	<= '0';
						LDONE_PR			<= '0';
					else 
						if (CE='1') then 
							I_last_rank_d	<= I_last_rank;
							LDONE_PR			<= DONE_PR;
			            end if;
						end if;
		        end if;
	end process;

	cy(0) <= SCLR_OR_NFFT_WE;
	SCLR_before(0) <= SCLR_OR_NFFT_WE;

	SCLR_register: fft20_reg_rs_rtl 
	port map(
		r 		=> cy(DATA_VALID_DELAY), 
		s 		=> cy(0),
		CLK 	=> CLK,
		CE		=> SCLR_OR_CE,
		Q     => cy(1));

	delay_line: for i in 1 to DATA_VALID_DELAY-1 generate
		DELAY_i	: fft20_fde_rtl port map(D=> cy(i), CLK=> CLK, CE=> CE, Q=>cy(i+1));
   	end generate;

	or_network: for i in 0 to DATA_VALID_DELAY-1 generate
		OR_i		: SCLR_before(i+1) <= SCLR_before(i) OR cy(i+1);
   	end generate;

	recent_sclr <= SCLR_before(DATA_VALID_DELAY);

	
   done				<=	LDONE_PR;
   edone				<= DONE_PR;
   pr_start			<= processing_state_s;
   ld_start			<= loading_state_s;
   RFD				<= LOADING;
	BUSY				<= PROCESSING;	
	DV					<= UNLOADING OR (LOADING AND VALID_FRAME);
	NFFT_out		   <= I_NFFT;			
   ce_rank			<= CE_rankcnt;
   ce_rn				<= CE_rncnt;
   rn_0				<= I_rn_0;		
   rank_0			<= I_rank_0;
   last_rank		<= I_last_rank;
   IN_ADDR        <= FW(NFFT_MAX-1 downto 0);

END xilinx;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.fft20_synth_pkg.all;
USE XilinxCoreLib.fft20_synth_comps.all;

entity fft20_flow_control_c is
    generic (
        C_HAS_BFP       : integer := 0;
        C_HAS_NFFT      : integer := 1;
        C_NFFT_MAX      : integer := 10;
        PE_LATENCY      : integer := 13 );
    port (
        CE              : in std_logic;
        CLK             : in std_logic;
        NFFT            : in std_logic_vector(3 downto 0);
        NFFT_WE         : in std_logic;
        SCLR            : in std_logic;
        START           : in std_logic;
        UNLOAD          : in std_logic;
        BUSY            : out std_logic;   
        CE_RANK         : out std_logic;   
        CE_RN           : out std_logic;   
        DONE            : out std_logic;   
        DV              : out std_logic;   
        EDONE           : out std_logic;   
        IN_ADDR         : out std_logic_vector(C_NFFT_MAX-1 downto 0);   
        LAST_RANK       : out std_logic;   
        LD_START        : out std_logic;   
        NFFT_OUT        : out std_logic_vector(3 downto 0);   
        OUT_ADDR        : out std_logic_vector(C_NFFT_MAX-1 downto 0);   
        PR_START        : out std_logic;   
        RANK_0          : out std_logic_vector(3 downto 0);
        RECENT_SCLR     : out std_logic;
        RFD             : out std_logic;   
        RN_0            : out std_logic_vector(C_NFFT_MAX-2 downto 0);   
        SECOND_RANK     : out std_logic );
end fft20_flow_control_c;

architecture xilinx of fft20_flow_control_c is

    constant NFFT_MAX_STD           : std_logic_vector(3 downto 0) := int_2_std_logic_vector(C_NFFT_MAX, 4);
    constant NFFT_MIN_STD           : std_logic_vector(3 downto 0) := int_2_std_logic_vector(4, 4);
    constant DATA_VALID_DELAY       : integer := 5; 
    
    signal a_init                   : std_logic := '1';
    signal i_nfft                   : std_logic_vector(3 downto 0);
    signal loading_state_s          : std_logic;
    signal sclr_or_nfft_we          : std_logic;
    signal start_register_r         : std_logic;
    signal start_hit                : std_logic;
    signal i_start                  : std_logic;
    signal unload_register_r        : std_logic;
    signal unloading_state_s        : std_logic;
    signal unload_hit               : std_logic;
    signal i_unload                 : std_logic;
    signal waiting_state_r          : std_logic;
    signal waiting_state_s          : std_logic;
    signal unloading                : std_logic;    
    signal done_out                 : std_logic;
    signal processing               : std_logic;
    signal done_pr                  : std_logic;
    signal loading_state_r          : std_logic;
    signal waiting                  : std_logic;
    signal loading                  : std_logic;
    signal processing_state_r       : std_logic;
    signal processing_state_s       : std_logic;
    signal unloading_state_r        : std_logic;
    signal max_n_asy                : std_logic_vector(13 downto 0);
    signal max_n                    : std_logic_vector(13 downto 0);
    signal max_rn_asy               : std_logic_vector(11 downto 0);
    signal max_rn                   : std_logic_vector(11 downto 0);
    signal max_rank_asy             : std_logic_vector(3 downto 0);
    signal max_rank                 : std_logic_vector(3 downto 0);
    signal xn_index_counter_ce      : std_logic;
    signal fw                       : std_logic_vector(13 downto 0);
    signal done_in                  : std_logic;
    signal xk_index_counter_ce      : std_logic;
    signal out_addr_raw             : std_logic_vector(C_NFFT_MAX-1 downto 0);   
    signal ce_rncnt                 : std_logic;
    signal i_rn_0                   : std_logic_vector(C_NFFT_MAX-2 downto 0);
    signal tc_rncnt                 : std_logic;
    signal nfft_valid               : std_logic;
    signal pe_padding               : std_logic_vector(4 downto 0);
    signal ce_pedelay               : std_logic;
    signal pe_delay                 : std_logic_vector(4 downto 0);
    signal tc_pedelay               : std_logic;
    signal end_rank                 : std_logic;
    signal pe_padding_small         : std_logic_vector(4 downto 0) := int_2_std_logic_vector(4 , 5);
    signal pe_padding_large         : std_logic_vector(4 downto 0) := int_2_std_logic_vector(PE_LATENCY-1, 5);
    signal i_rank_0                 : std_logic_vector(3 downto 0);
    signal set_rn_sm                : std_logic;
    signal res_rn_sm                : std_logic;
    signal i_ce_rn                  : std_logic;
    signal ce_rankcnt               : std_logic;
    signal sclr_rankcnt             : std_logic;
    signal i_last_rank              : std_logic;
    signal I_last_rank_d            : std_logic;
    signal ldone_pr                 : std_logic;
    signal dig_rev                  : std_logic_vector(13 downto 0);   
    signal valid_frame              : std_logic; 
    signal valid_frame_asy          : std_logic;
    signal cy                       : std_logic_vector(DATA_VALID_DELAY downto 0);
    signal sclr_before              : std_logic_vector(DATA_VALID_DELAY downto 0);
    signal sclr_or_ce               : std_logic;
    signal padd_select              : std_logic;

    begin

    nfft_from_port: if (C_HAS_NFFT = 1) generate 
        fft_reg: process(clk)
            variable infft: std_logic_vector(3 downto 0) := NFFT_MAX_STD;
            begin
                if (clk='1' and clk'event and ce='1') then                 
                    a_init <= '0';
                    if (sclr = '1') then
                        infft := NFFT_MAX_STD;
                    else
                        if (nfft_we = '1') then 
                            if (nfft < "0100") then 
                                infft := NFFT_MIN_STD;
                            else
                                if (nfft > NFFT_MAX_STD) then 
                                    infft := NFFT_MAX_STD;
                                else 
                                    infft := nfft;
                                end if;
                            end if;
                        end if;
                    end if;
                end if;
                i_nfft <= infft;
        end process;
    end generate;

    nfft_from_ip: if (C_HAS_NFFT /= 1) generate 
        i_nfft <= NFFT_MAX_STD; 
    end generate;
    
    sclr_or_nfft_we <= sclr or (nfft_we and ce) or a_init;
    sclr_or_ce <= sclr or ce;

    
    start_register_r <= loading_state_s or sclr_or_nfft_we;
    start_register: fft20_reg_rs_rtl
        port map (
            r   => start_register_r,
            s   => start,
            clk => clk,
            ce  => sclr_or_ce,
            q   => start_hit );

    i_start <= start_hit or start;

    
    unload_register_r <= unloading_state_s or sclr_or_nfft_we;
    unload_register: fft20_reg_rs_rtl 
        port map (
            r   => unload_register_r, 
            s   => unload,
            clk => clk,
            ce  => sclr_or_ce,
            q   => unload_hit );

     i_unload <= (unload_hit or unload) and valid_frame;

    
    waiting_state_r <= (start or (i_unload and (not processing) and (not i_start))) and (not sclr_or_nfft_we);
    waiting_state_s <= sclr_or_nfft_we or ((not i_start) and ((unloading and done_out) or (processing and (not i_unload) and done_pr)));
    waiting_state: fft20_reg_rs_rtl 
        port map (
            r   => waiting_state_r, 
            s   => waiting_state_s,
            clk => clk,
            ce  => sclr_or_ce,
            q   => waiting );

    loading_state_r <= done_in or sclr_or_nfft_we;
    loading_state_s <= i_start and ((waiting or (unloading and done_out)) or (processing and done_pr and (not i_unload)));
    loading_state: fft20_reg_rs_rtl 
        port map (
            r   => loading_state_r, 
            s   => loading_state_s,
            clk => clk,
            ce  => sclr_or_ce,
            q   => loading );

    processing_state_r <= done_pr or sclr_or_nfft_we;
    processing_state_s <= loading and done_in;
    processing_state: fft20_reg_rs_rtl 
        port map (
            r   => processing_state_r,
            s   => processing_state_s, 
            clk => clk,
            ce  => sclr_or_ce,
            q   => processing );

    unloading_state_r <= done_out or sclr_or_nfft_we;
    unloading_state_s <= i_unload and ((processing and done_pr) or (waiting and (not i_start)));
    unloading_state: fft20_reg_rs_rtl 
        port map (
            r   => unloading_state_r,
            s   => unloading_state_s,
            clk => clk,
            ce  => sclr_or_ce,
            q   => unloading );

    with i_nfft select
        max_n_asy <=    
            "00000000001110" when "0100",   
            "00000000011110" when "0101",   
            "00000000111110" when "0110",   
            "00000001111110" when "0111",   
            "00000011111110" when "1000",   
            "00000111111110" when "1001",   
            "00001111111110" when "1010",   
            "00001111111110" when others;   

    max_n_reg: process(clk)
        begin
            if (clk = '1') then                 
                max_n <= max_n_asy;
            end if;
        end process;

    with i_nfft select
        max_rn_asy <=   
            "000000000110" when "0100",   
            "000000001110" when "0101",   
            "000000011110" when "0110",   
            "000000111110" when "0111",   
            "000001111110" when "1000",   
            "000011111110" when "1001",   
            "000111111110" when "1010",   
            "000111111110" when others;   

    max_rn_reg: process(clk)
        begin
            if (clk = '1') then                 
                max_rn <= max_rn_asy;
            end if;
        end process;

    with i_nfft select
        max_rank_asy <= 
            "0010" when "0100",  
            "0011" when "0101",  
            "0100" when "0110",  
            "0101" when "0111",  
            "0110" when "1000",  
            "0111" when "1001",  
            "1000" when "1010",  
            "1000" when others;  

    max_rank_reg: process(clk)
        begin
            if clk='1' then                 
                max_rank <= max_rank_asy;
            end if;
        end process;

    
    xn_index_counter_ce <= ((loading or sclr_or_nfft_we) and ce) or sclr;
    xn_index_counter: fft20_cnt_tc_rtl
        generic map (
            width => C_NFFT_MAX )
        port map (
            max     => max_n(C_NFFT_MAX-1 downto 0),   
            clk     => clk, 
            ce      => xn_index_counter_ce,
            sclr    => start_register_r,
            q       => fw(C_NFFT_MAX-1 downto 0),
            tc      => done_in ); 

    
    xk_index_counter_ce <= ((unloading or sclr_or_nfft_we) and ce) or sclr;
    xk_index_counter: fft20_cnt_tc_rtl 
        generic map (
            width => C_NFFT_MAX)
        port map (
            max     => max_n(C_NFFT_MAX-1 downto 0),   
            clk     => clk, 
            ce      => xk_index_counter_ce,
            sclr    => unload_register_r,
            q       => out_addr_raw,
            tc      => done_out ); 

    rn_0_cnt: fft20_cnt_tc_rtl 
        generic map (
            width => C_NFFT_MAX-1 )
        port map (
            max     => max_rn(C_NFFT_MAX-2 downto 0),   
            clk     => clk, 
            ce      => ce_rncnt,
            sclr    => sclr,
            q       => i_rn_0,
            tc      => tc_rncnt ); 

    pe_cnt: fft20_cnt_tc_rtl 
        generic map (
            width => 5 )
        port map (
            max     => pe_padding,   
            clk     => clk, 
            ce      => ce_pedelay,
            sclr    => sclr,
            q       => pe_delay,
            tc      => tc_pedelay ); 

        end_rank <= tc_pedelay;
        
        padd_select <= I_last_rank_d or (NOT I_NFFT(3));
        with padd_select select
            pe_padding <= 
                pe_padding_small when '0',
                pe_padding_large when others;  
        second_rank   <= (not i_rank_0(3)) and (not i_rank_0(2)) and (not i_rank_0(1)) and i_rank_0(0);
        set_rn_sm     <= tc_pedelay or sclr_or_nfft_we; 
        res_rn_sm     <= tc_rncnt and not (sclr_or_nfft_we); 

    
    
    
    rn_sm: fft20_reg_rs_rtl 
        port map (
            r   => res_rn_sm, 
            s   => set_rn_sm,
            clk => clk,
            ce  => ce,
            q   => i_ce_rn );
            
    ce_rncnt <= ce and ((processing and i_ce_rn) or sclr);
    ce_pedelay <= ce and ((processing and (not i_ce_rn)) or sclr);

    ce_rankcnt <= (ce and (processing_state_s or end_rank)) or sclr;
    sclr_rankcnt <= processing_state_s or sclr_or_nfft_we;
    rank_0_cnt: fft20_cnt_tc_rtl
        generic map (
            width => 4 )
        port map (
            max     => max_rank,   
            clk     => clk, 
            ce      => ce_rankcnt,
            sclr    => sclr_rankcnt,
            q       => i_rank_0,
            tc      => i_last_rank ); 

    with i_nfft select 
        dig_rev <=  
            '0'  & '0'  & '0'  & '0'  & '0'  & '0'  & '0'  &'0'   & '0'  & '0'  &fw(0) &fw(1) &fw(2) &fw(3)     when "0100",   
            '0'  & '0'  & '0'  & '0'  & '0'  & '0'  & '0'  &'0'   & '0'  &fw(0) &fw(1) &fw(2) &fw(3) &fw(4)     when "0101",   
            '0'  & '0'  & '0'  & '0'  & '0'  & '0'  & '0'  &'0'   &fw(0) &fw(1) &fw(2) &fw(3) &fw(4) &fw(5)     when "0110",   
            '0'  & '0'  & '0'  & '0'  & '0'  & '0'  & '0'  &fw(0) &fw(1) &fw(2) &fw(3) &fw(4) &fw(5) &fw(6)     when "0111",   
            '0'  & '0'  & '0'  & '0'  & '0'  & '0'  &fw(0) &fw(1) &fw(2) &fw(3) &fw(4) &fw(5) &fw(6) &fw(7)     when "1000",   
            '0'  & '0'  & '0'  & '0'  & '0'  &fw(0) &fw(1) &fw(2) &fw(3) &fw(4) &fw(5) &fw(6) &fw(7) &fw(8)     when "1001",   
            '0'  & '0'  & '0'  & '0'  &fw(0) &fw(1) &fw(2) &fw(3) &fw(4) &fw(5) &fw(6) &fw(7) &fw(8) &fw(9)     when "1010",   
            '0'  & '0'  & '0'  & '0'  &fw(0) &fw(1) &fw(2) &fw(3) &fw(4) &fw(5) &fw(6) &fw(7) &fw(8) &fw(9)     when others;   

    out_mux: for i in 0 to C_NFFT_MAX-1 generate
        out_addr(i) <= (out_addr_raw(i) and unloading) or (dig_rev(i) and loading and valid_frame);
    end generate;

    valid_frame_asy <= (valid_frame or processing) and not (sclr_or_nfft_we);
    valid_frame_reg: fft20_fde_rtl
        port map (
            d => valid_frame_asy,
            clk => clk,
            ce => sclr_or_ce,
            q => valid_frame );
    done_pr <= i_last_rank_d and end_rank;        

    fdres: process (clk)
        begin
            if (clk'event and clk='1') then
                if (sclr_or_nfft_we='1') then
                    i_last_rank_d   <= '0';
                    ldone_pr        <= '0';
                else
                    if (ce = '1') then
                        i_last_rank_d   <= i_last_rank;
                        ldone_pr        <= done_pr;
                    end if;    
                end if;
            end if;
    end process;

    cy(0) <= sclr_or_nfft_we;
    sclr_before(0) <= sclr_or_nfft_we;

    sclr_register: fft20_reg_rs_rtl 
        port map (
            r   => cy(DATA_VALID_DELAY), 
            s   => cy(0),
            clk => clk,
            ce  => sclr_or_ce,
            q   => cy(1) );

    delay_line: for i in 1 to DATA_VALID_DELAY-1 generate
    delay_i	: fft20_fde_rtl 
        port map (
            d   => cy(i), 
            clk => clk, 
            ce  => ce, 
            q   => cy(i+1) );
    end generate;

    or_network: for i in 0 to data_valid_delay-1 generate
    or_i: sclr_before(i+1) <= sclr_before(i) or cy(i+1);
    end generate;

    recent_sclr <= sclr_before(data_valid_delay);
    
    
    done        <= ldone_pr;
    edone       <= done_pr;
    pr_start    <= processing_state_s;
    ld_start    <= loading_state_s;
    rfd         <= loading;
    busy        <= processing;    
    dv          <= unloading or (loading and valid_frame);
    nfft_out    <= i_nfft;            
    ce_rank     <= ce_rankcnt;
    ce_rn       <= ce_rncnt;
    rn_0        <= i_rn_0;        
    rank_0      <= i_rank_0;
    last_rank   <= i_last_rank;
    in_addr     <= fw(C_NFFT_MAX-1 downto 0);

end xilinx;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.C_REG_FD_V6_0_comp.all;

ENTITY fft20_fde IS
	port (
		D     : IN  std_logic;
		CLK   : IN  std_logic;
		CE    : IN  std_logic;
		Q     : OUT std_logic);
END fft20_fde;

ARCHITECTURE xilinx OF fft20_fde IS

	signal gnd : std_logic;
	signal db: std_logic_vector(0 downto 0);
	signal qb: std_logic_vector(0 downto 0);

BEGIN

	gnd <= '0';
	q		<= qb(0);
	db(0)	<= d;

  reg: C_REG_FD_V6_0
		generic map (
			C_WIDTH => 1,
      C_AINIT_VAL => "0",
      C_SINIT_VAL => "0",
      C_SYNC_PRIORITY => 1,
      C_SYNC_ENABLE => 0,
      C_HAS_CE => 1,
      C_HAS_ACLR => 0,
      C_HAS_ASET => 0,
      C_HAS_AINIT => 0,
      C_HAS_SCLR => 0,
      C_HAS_SSET => 0,
      C_HAS_SINIT => 0,
      C_ENABLE_RLOCS => 1)
    port map (
      D => db,
      CLK => CLK,
      CE => CE,
      ACLR => gnd,
      ASET => gnd,
      AINIT => gnd,
      SCLR => gnd,
      SSET => gnd,
      SINIT => gnd,
      Q => qb);

END xilinx;
LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.C_REG_FD_V6_0_comp.all;

ENTITY fft20_reg_fde IS
	generic (
		data_width : INTEGER);	
	port (
		D     : IN  std_logic_vector(data_width-1 downto 0);
		CLK   : IN  std_logic;
		CE    : IN  std_logic;
		Q     : OUT std_logic_vector(data_width-1 downto 0));
END fft20_reg_fde;

ARCHITECTURE xilinx OF fft20_reg_fde IS

	signal gnd : std_logic;
	constant inits: string(64 downto 1) := "0000000000000000000000000000000000000000000000000000000000000000";
BEGIN
	gnd <= '0';
  reg: C_REG_FD_V6_0
		generic map (
			C_WIDTH => data_width,
			C_AINIT_VAL => "0",
			C_SINIT_VAL => inits(DATA_WIDTH downto 1),
			C_SYNC_PRIORITY => 1,
			C_SYNC_ENABLE => 0,
			C_HAS_CE => 1,
			C_HAS_ACLR => 0,
			C_HAS_ASET => 0,
			C_HAS_AINIT => 0,
			C_HAS_SCLR => 0,
			C_HAS_SSET => 0,
			C_HAS_SINIT => 0,
			C_ENABLE_RLOCS => 1)
		port map (
			D => D,
			CLK => CLK,
			CE => CE,
			ACLR => gnd,
			ASET => gnd,
			AINIT => gnd,
			SCLR => gnd,
			SSET => gnd,
			SINIT => gnd,
			Q => Q);

END xilinx;
LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.C_REG_FD_V6_0_comp.all;

ENTITY fft20_reg_fde_sclr IS
	generic (
		data_width : INTEGER);	
	port (
		D     : IN  std_logic_vector(data_width-1 downto 0);
		CLK   : IN  std_logic;
		CE    : IN  std_logic;
		SCLR  : IN  std_logic;
		Q     : OUT std_logic_vector(data_width-1 downto 0));
END fft20_reg_fde_sclr;

ARCHITECTURE xilinx OF fft20_reg_fde_sclr IS

	signal gnd : std_logic;
	constant inits: string(64 downto 1) := "0000000000000000000000000000000000000000000000000000000000000000";
BEGIN
	gnd <= '0';
  reg: C_REG_FD_V6_0
		generic map (
			C_WIDTH => data_width,
			C_AINIT_VAL => "0",
			C_SINIT_VAL => inits(DATA_WIDTH downto 1),
			C_SYNC_PRIORITY => 1,
			C_SYNC_ENABLE => 0,
			C_HAS_CE => 1,
			C_HAS_ACLR => 0,
			C_HAS_ASET => 0,
			C_HAS_AINIT => 1,
			C_HAS_SCLR => 1,
			C_HAS_SSET => 0,
			C_HAS_SINIT => 0,
			C_ENABLE_RLOCS => 1)
		port map (
			D => D,
			CLK => CLK,
			CE => CE,
			ACLR => gnd,
			ASET => gnd,
			AINIT => gnd,
			SCLR => SCLR,
			SSET => gnd,
			SINIT => gnd,
			Q => Q);

END xilinx;
LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.C_REG_FD_V6_0_comp.all;

ENTITY fft20_reg_fde_sr_1 IS
	port (
		D     : IN  std_logic;
		CLK   : IN  std_logic;
		CE    : IN  std_logic;
	  SCLR  : IN  std_logic;
    SSET  : IN  std_logic;
		Q     : OUT std_logic);
END fft20_reg_fde_sr_1;

ARCHITECTURE xilinx OF fft20_reg_fde_sr_1 IS

	signal gnd : std_logic;
	signal d_vec : std_logic_vector(0 downto 0);
	signal q_vec : std_logic_vector(0 downto 0);
	
BEGIN
	gnd <= '0';
	d_vec(0) <= D;
		
  reg: C_REG_FD_V6_0
		generic map (
			C_WIDTH => 1,
			C_AINIT_VAL => "0",
			C_SINIT_VAL => "0",
			C_SYNC_PRIORITY => 0,
			C_SYNC_ENABLE => 0,
			C_HAS_CE => 1,
			C_HAS_ACLR => 0,
			C_HAS_ASET => 0,
			C_HAS_AINIT => 0,
			C_HAS_SCLR => 1,
			C_HAS_SSET => 1,
			C_HAS_SINIT => 0,
			C_ENABLE_RLOCS => 0)
		port map (
			D => d_vec,
			CLK => CLK,
			CE => CE,
			ACLR => gnd,
			ASET => gnd,
			AINIT => gnd,
			SCLR => SCLR,
			SSET => SSET,
			SINIT => gnd,
			Q => q_vec);

  Q <= q_vec(0);

END xilinx;
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.c_mux_bus_v6_0_comp.all;

ENTITY fft20_mux_bus IS
	generic (
		C_WIDTH      : INTEGER;
		C_INPUTS     : INTEGER;
		C_SEL_WIDTH  : INTEGER);
	port (
		MA  : IN std_logic_vector(C_WIDTH-1 downto 0); 
		MB  : IN std_logic_vector(C_WIDTH-1 downto 0);
		MC  : IN std_logic_vector(C_WIDTH-1 downto 0) := (OTHERS => '0');
		MD  : IN std_logic_vector(C_WIDTH-1 downto 0) := (OTHERS => '0');
		S   : IN std_logic_vector(C_SEL_WIDTH-1 downto 0);
		CLK : IN std_logic;
		CE  : IN std_logic;
		Q   : OUT std_logic_vector(C_WIDTH-1 downto 0)); 
END fft20_mux_bus;
		
	
ARCHITECTURE xilinx of fft20_mux_bus IS	

	signal gnd: std_logic;
	signal gnd_vector: std_logic_vector(C_WIDTH-1 downto 0);
	signal open_o: std_logic_vector(C_WIDTH-1 downto 0);
	constant inits: string(72 downto 1) := "000000000000000000000000000000000000000000000000000000000000000000000000";
	
BEGIN	
	
   gnd <= '0';
   gnd_vector <= (OTHERS => '0');
	mux: C_MUX_BUS_V6_0
		generic map (
			C_WIDTH => C_WIDTH,
			C_INPUTS => C_INPUTS, 
			C_MUX_TYPE => 0,	
			C_SEL_WIDTH => C_SEL_WIDTH,
			C_AINIT_VAL => inits(C_WIDTH downto 1),
			C_SINIT_VAL => "",
			C_SYNC_PRIORITY => 0,
			C_SYNC_ENABLE => 0, 
			C_LATENCY => 1,
			C_HAS_O => 0,	
			C_HAS_Q => 1,  	
			C_HAS_CE => 1,  	
			C_HAS_EN => 0, 	
			C_HAS_ACLR => 0,
			C_HAS_ASET => 0,
			C_HAS_AINIT => 1,
			C_HAS_SCLR => 0,
			C_HAS_SSET => 0, 
			C_HAS_SINIT => 0,
			C_ENABLE_RLOCS => 0) 
		port map (
			MA => MA, 
			MB => MB, 
			MC => MC,
			MD => MD,
			ME => gnd_vector,
			MF => gnd_vector,
			MG => gnd_vector,
			MH => gnd_vector,
			S  => S,
			CLK => CLK,
			CE => CE,
			EN => gnd,
			ASET => gnd,
			ACLR => gnd,
			AINIT => gnd,
			SSET => gnd,
			SCLR => gnd,
			SINIT => gnd,
			O => open_o,
			Q => Q);

END xilinx;
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.c_mux_bus_v6_0_comp.all;

ENTITY fft20_mux_bus_sclr IS
	generic (
		C_WIDTH      : INTEGER;
		C_INPUTS     : INTEGER;
		C_SEL_WIDTH  : INTEGER);
	port (
		MA  : IN std_logic_vector(C_WIDTH-1 downto 0); 
		MB  : IN std_logic_vector(C_WIDTH-1 downto 0);
		MC  : IN std_logic_vector(C_WIDTH-1 downto 0) := (OTHERS => '0');
		MD  : IN std_logic_vector(C_WIDTH-1 downto 0) := (OTHERS => '0');
		S   : IN std_logic_vector(C_SEL_WIDTH-1 downto 0);
		CLK : IN std_logic;
		CE  : IN std_logic;
		SCLR: IN std_logic;
		Q   : OUT std_logic_vector(C_WIDTH-1 downto 0)); 
END fft20_mux_bus_sclr;
		
	
ARCHITECTURE xilinx of fft20_mux_bus_sclr IS	

	signal gnd: std_logic;
	signal gnd_vector: std_logic_vector(C_WIDTH-1 downto 0);
	signal open_o: std_logic_vector(C_WIDTH-1 downto 0);
	constant inits: string(64 downto 1) := "0000000000000000000000000000000000000000000000000000000000000000";
	
BEGIN	
	
   gnd <= '0';
   gnd_vector <= (OTHERS => '0');
	mux: C_MUX_BUS_V6_0
		generic map (
			C_WIDTH => C_WIDTH,
			C_INPUTS => C_INPUTS, 
			C_MUX_TYPE => 0,	
			C_SEL_WIDTH => C_SEL_WIDTH,
			C_AINIT_VAL => inits(C_WIDTH downto 1),
			C_SINIT_VAL => "",
			C_SYNC_PRIORITY => 0,
			C_SYNC_ENABLE => 0, 
			C_LATENCY => 1,
			C_HAS_O => 0,	
			C_HAS_Q => 1,  	
			C_HAS_CE => 1,  	
			C_HAS_EN => 0, 	
			C_HAS_ACLR => 0,
			C_HAS_ASET => 0,
			C_HAS_AINIT => 1,
			C_HAS_SCLR => 1,
			C_HAS_SSET => 0, 
			C_HAS_SINIT => 0,
			C_ENABLE_RLOCS => 1) 
		port map (
			MA => MA, 
			MB => MB, 
			MC => MC,
			MD => MD,
			ME => gnd_vector,
			MF => gnd_vector,
			MG => gnd_vector,
			MH => gnd_vector,
			S  => S,
			CLK => CLK,
			CE => CE,
			EN => gnd,
			ASET => gnd,
			ACLR => gnd,
			AINIT => gnd,
			SSET => gnd,
			SCLR => SCLR,
			SINIT => gnd,
			O => open_o,
			Q => Q);

END xilinx;
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.c_mux_bus_v6_0_comp.all;

ENTITY fft20_mux_bus2 IS
	generic (
		C_WIDTH      : INTEGER);
	port (
		MA  : IN std_logic_vector(C_WIDTH-1 downto 0); 
		MB  : IN std_logic_vector(C_WIDTH-1 downto 0);
		S   : IN std_logic;
		CLK : IN std_logic;
		CE  : IN std_logic;
		Q   : OUT std_logic_vector(C_WIDTH-1 downto 0)); 
END fft20_mux_bus2;
		
	
ARCHITECTURE xilinx of fft20_mux_bus2 IS	

	signal gnd		: std_logic;
	signal gnd_vec		: std_logic_vector(C_WIDTH-1 downto 0);
	signal open_o		: std_logic_vector(C_WIDTH-1 downto 0);
	signal s_vec		: std_logic_vector(0 downto 0);
	
BEGIN	

  gnd <= '0';
	gnd_vec <= (OTHERS => '0');	
	s_vec(0) <= s;
	
	mux: C_MUX_BUS_V6_0
		generic map (
			C_WIDTH => C_WIDTH,
			C_INPUTS => 2, 
			C_MUX_TYPE => 0,	
			C_SEL_WIDTH => 1,
			C_AINIT_VAL => "",
			C_SINIT_VAL => "",
			C_SYNC_PRIORITY => 0,
			C_SYNC_ENABLE => 0, 
			C_LATENCY => 1,
			C_HAS_O => 0,	
			C_HAS_Q => 1,  	
			C_HAS_CE => 1,  	
			C_HAS_EN => 0, 	
			C_HAS_ACLR => 0,
			C_HAS_ASET => 0,
			C_HAS_AINIT => 0,
			C_HAS_SCLR => 0,
			C_HAS_SSET => 0, 
			C_HAS_SINIT => 0,
			C_ENABLE_RLOCS => 1) 
		port map (
			MA => MA, 
			MB => MB, 
			MC => gnd_vec,
			MD => gnd_vec,
			ME => gnd_vec,
			MF => gnd_vec,
			MG => gnd_vec,
			MH => gnd_vec,
			S  => s_vec,
			CLK => CLK,
			CE => CE,
			EN => gnd,
			ASET => gnd,
			ACLR => gnd,
			AINIT => gnd,
			SSET => gnd,
			SCLR => gnd,
			SINIT => gnd,
			O => open_o,
			Q => Q);

END xilinx;
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.c_mux_bus_v6_0_comp.all;

ENTITY fft20_mux_bus16 IS
  generic (
    C_WIDTH      : INTEGER;
    C_INPUTS     : INTEGER;
    C_SEL_WIDTH  : INTEGER);
  port (
    MA  : IN std_logic_vector(C_WIDTH-1 downto 0); 
    MB  : IN std_logic_vector(C_WIDTH-1 downto 0);
    MC  : IN std_logic_vector(C_WIDTH-1 downto 0) := (OTHERS => '0');
    MD  : IN std_logic_vector(C_WIDTH-1 downto 0) := (OTHERS => '0');
    ME  : IN std_logic_vector(C_WIDTH-1 downto 0) := (OTHERS => '0');
    MF  : IN std_logic_vector(C_WIDTH-1 downto 0) := (OTHERS => '0');
    MG  : IN std_logic_vector(C_WIDTH-1 downto 0) := (OTHERS => '0');
    MH  : IN std_logic_vector(C_WIDTH-1 downto 0) := (OTHERS => '0');
    MAA : IN std_logic_vector(C_WIDTH-1 downto 0) := (OTHERS => '0'); 
    MAB : IN std_logic_vector(C_WIDTH-1 downto 0) := (OTHERS => '0');
    MAC : IN std_logic_vector(C_WIDTH-1 downto 0) := (OTHERS => '0');
    MAD : IN std_logic_vector(C_WIDTH-1 downto 0) := (OTHERS => '0');
    MAE : IN std_logic_vector(C_WIDTH-1 downto 0) := (OTHERS => '0');
    MAF : IN std_logic_vector(C_WIDTH-1 downto 0) := (OTHERS => '0');
    MAG : IN std_logic_vector(C_WIDTH-1 downto 0) := (OTHERS => '0');
    MAH : IN std_logic_vector(C_WIDTH-1 downto 0) := (OTHERS => '0');
    S   : IN std_logic_vector(C_SEL_WIDTH-1 downto 0);
    CLK : IN std_logic;
    CE  : IN std_logic;
	 O   : OUT std_logic_vector(C_WIDTH-1 downto 0);
    Q   : OUT std_logic_vector(C_WIDTH-1 downto 0)); 
END fft20_mux_bus16;
		
	
ARCHITECTURE xilinx of fft20_mux_bus16 IS	

  signal gnd: std_logic;
  signal gnd_vector: std_logic_vector(C_WIDTH-1 downto 0);
  signal open_o: std_logic_vector(C_WIDTH-1 downto 0);
	
BEGIN	
   gnd <= '0';
   gnd_vector <= (OTHERS => '0');	
  mux: C_MUX_BUS_V6_0
		generic map (
			C_WIDTH => C_WIDTH,
			C_INPUTS => C_INPUTS, 
			C_MUX_TYPE => 0,	
			C_SEL_WIDTH => C_SEL_WIDTH,
			C_AINIT_VAL => "",
			C_SINIT_VAL => "",
			C_SYNC_PRIORITY => 0,
			C_SYNC_ENABLE => 0, 
      C_LATENCY => 1,
		  C_HAS_O => 1,	
		  C_HAS_Q => 1,  	
		  C_HAS_CE => 1,  	
		  C_HAS_EN => 0, 	
		  C_HAS_ACLR => 0,
		  C_HAS_ASET => 0,
		  C_HAS_AINIT => 0,
		  C_HAS_SCLR => 0,
		  C_HAS_SSET => 0, 
		  C_HAS_SINIT => 0,
		  C_ENABLE_RLOCS => 1) 
		port map (
 		  MA => MA, 
		  MB => MB, 
		  MC => MC,
		  MD => MD,
		  ME => ME,
		  MF => MF,
		  MG => MG,
		  MH => MH,
		  MAA => MAA,
		  MAB => MAB,
		  MAC => MAC,
		  MAD => MAD,
		  MAE => MAE,
		  MAF => MAF,
		  MAG => MAG,
		  MAH => MAH,
		  S  => S,
		  CLK => CLK,
		  CE => CE,
		  EN => gnd,
		  ASET => gnd,
		  ACLR => gnd,
		  AINIT => gnd,
		  SSET => gnd,
		  SCLR => gnd,
		  SINIT => gnd,
		  O => O,
		  Q => Q);

END xilinx;
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.c_mux_bus_v6_0_comp.all;

ENTITY fft20_mux_bus8 IS
  generic (
    C_WIDTH      : INTEGER;
    C_INPUTS     : INTEGER;
    C_SEL_WIDTH  : INTEGER);
  port (
    MA  : IN std_logic_vector(C_WIDTH-1 downto 0); 
    MB  : IN std_logic_vector(C_WIDTH-1 downto 0);
    MC  : IN std_logic_vector(C_WIDTH-1 downto 0) := (OTHERS => '0');
    MD  : IN std_logic_vector(C_WIDTH-1 downto 0) := (OTHERS => '0');
    ME  : IN std_logic_vector(C_WIDTH-1 downto 0) := (OTHERS => '0');
    MF  : IN std_logic_vector(C_WIDTH-1 downto 0) := (OTHERS => '0');
    MG  : IN std_logic_vector(C_WIDTH-1 downto 0) := (OTHERS => '0');
    MH  : IN std_logic_vector(C_WIDTH-1 downto 0) := (OTHERS => '0');
    S   : IN std_logic_vector(C_SEL_WIDTH-1 downto 0);
    CLK : IN std_logic;
    CE  : IN std_logic;
    Q   : OUT std_logic_vector(C_WIDTH-1 downto 0)); 
END fft20_mux_bus8;
		
	
ARCHITECTURE xilinx of fft20_mux_bus8 IS	

  signal gnd: std_logic;
  signal open_o: std_logic_vector(C_WIDTH-1 downto 0);
	
BEGIN	
	gnd <='0';
	
  mux: C_MUX_BUS_V6_0
		generic map (
         C_WIDTH => C_WIDTH,
         C_INPUTS => C_INPUTS, 
         C_MUX_TYPE => 0,	
         C_SEL_WIDTH => C_SEL_WIDTH,
         C_AINIT_VAL => "",
         C_SINIT_VAL => "",
         C_SYNC_PRIORITY => 0,
         C_SYNC_ENABLE => 0, 
         C_LATENCY => 1,
         C_HAS_O => 1,	
         C_HAS_Q => 1,  	
         C_HAS_CE => 1,  	
         C_HAS_EN => 0, 	
         C_HAS_ACLR => 0,
         C_HAS_ASET => 0,
         C_HAS_AINIT => 0,
         C_HAS_SCLR => 0,
         C_HAS_SSET => 0, 
         C_HAS_SINIT => 0,
         C_ENABLE_RLOCS => 1) 
		port map (
         MA => MA, 
         MB => MB, 
         MC => MC,
         MD => MD,
         ME => ME,
         MF => MF,
         MG => MG,
         MH => MH,
         S  => S,
         CLK => CLK,
         CE => CE,
         EN => gnd,
         ASET => gnd,
         ACLR => gnd,
         AINIT => gnd,
         SSET => gnd,
         SCLR => gnd,
         SINIT => gnd,
         O => open_o,
         Q => Q);

END xilinx;
LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.c_addsub_v6_0_comp.all;

ENTITY fft20_adder IS
  generic (
		C_A_WIDTH   : INTEGER;
		C_B_WIDTH   : INTEGER;
		C_OUT_WIDTH : INTEGER);
  port (
    CLK      : IN  std_logic;   
    CE       : IN  std_logic;   
    DIN_A    : IN  std_logic_vector(C_A_WIDTH-1 downto 0);   
    DIN_B    : IN  std_logic_vector(C_B_WIDTH-1 downto 0);   
    DOUT     : OUT std_logic_vector(C_OUT_WIDTH-1 downto 0)); 
END fft20_adder;

ARCHITECTURE xilinx OF fft20_adder IS

	signal gnd: std_logic;
	signal vcc: std_logic;
	signal open_ovfl1: std_logic;
	signal open_c_out1: std_logic;
	signal open_b_out1: std_logic;
	signal open_q_ovfl1: std_logic;
	signal open_q_c_out1: std_logic;
	signal open_q_b_out1: std_logic;
	signal open_s1: std_logic_vector(C_OUT_WIDTH-1 downto 0);

BEGIN

  gnd <= '0';
  vcc <= '1';
	 
  add: C_ADDSUB_V6_0
    generic map (
      C_A_WIDTH => C_A_WIDTH,
      C_B_WIDTH => C_B_WIDTH,
      C_OUT_WIDTH => C_OUT_WIDTH,
      C_LOW_BIT => 0,
      C_HIGH_BIT => C_OUT_WIDTH-1,
      C_ADD_MODE => 0, 
      C_A_TYPE => 0, 
      C_B_TYPE => 0,
      C_B_CONSTANT => 0,
      C_B_VALUE => "",
      C_AINIT_VAL => "",
      C_SINIT_VAL => "",
      C_BYPASS_ENABLE => 0,
      C_BYPASS_LOW => 0,
      C_SYNC_ENABLE => 0,
      C_SYNC_PRIORITY => 0,
      C_PIPE_STAGES => 1,
      C_LATENCY => 1,
      C_HAS_S => 0,
      C_HAS_Q => 1,
      C_HAS_C_IN => 0,
      C_HAS_C_OUT => 0,
      C_HAS_Q_C_OUT => 0,
      C_HAS_B_IN => 1,
      C_HAS_B_OUT => 0,
      C_HAS_Q_B_OUT => 0,
      C_HAS_OVFL => 0,
      C_HAS_Q_OVFL => 0,
      C_HAS_CE => 1,
      C_HAS_ADD => 0,
      C_HAS_BYPASS => 0,
      C_HAS_A_SIGNED => 1,
      C_HAS_B_SIGNED => 1,
      C_HAS_ACLR => 0,
      C_HAS_ASET => 0,
      C_HAS_AINIT => 0,
      C_HAS_SCLR => 0,
      C_HAS_SSET => 0,
      C_HAS_SINIT => 0,
      C_ENABLE_RLOCS => 1,
      C_HAS_BYPASS_WITH_CIN => 0)
    port map (
      A => DIN_A,
      B => DIN_B,
      CLK => CLK,
      ADD => gnd,
      C_IN => gnd,
      B_IN => vcc,
      CE => CE,
      BYPASS => gnd,
      ACLR => gnd,
      ASET => gnd,
      AINIT => gnd,
      SCLR => gnd,
      SSET => gnd,
      SINIT => gnd,
      A_SIGNED => vcc,
      B_SIGNED => vcc,
      OVFL => open_ovfl1,
      C_OUT => open_c_out1,
      B_OUT => open_b_out1,
      Q_OVFL => open_q_ovfl1,
      Q_C_OUT => open_q_c_out1,
      Q_B_OUT => open_q_b_out1,
      S => open_s1,
      Q => DOUT);

END xilinx;
LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.c_addsub_v6_0_comp.all;

ENTITY fft20_adder_bypass IS
  generic (
		C_A_WIDTH   : INTEGER;
		C_B_WIDTH   : INTEGER;
		C_OUT_WIDTH : INTEGER);
  port (
    CLK      : IN  std_logic;   
    CE       : IN  std_logic;  
		BYPASS	 : IN  std_logic;	
    DIN_A    : IN  std_logic_vector(C_A_WIDTH-1 downto 0);   
    DIN_B    : IN  std_logic_vector(C_B_WIDTH-1 downto 0);   
    DOUT     : OUT std_logic_vector(C_OUT_WIDTH-1 downto 0)); 
END fft20_adder_bypass;

ARCHITECTURE xilinx OF fft20_adder_bypass IS

	signal gnd: std_logic;
	signal vcc: std_logic;
	signal open_ovfl1: std_logic;
	signal open_c_out1: std_logic;
	signal open_b_out1: std_logic;
	signal open_q_ovfl1: std_logic;
	signal open_q_c_out1: std_logic;
	signal open_q_b_out1: std_logic;
	signal open_s1: std_logic_vector(C_OUT_WIDTH-1 downto 0);

BEGIN

  gnd <= '0';
  vcc <= '1';
	 
  add: C_ADDSUB_V6_0
    generic map (
      C_A_WIDTH => C_A_WIDTH,
      C_B_WIDTH => C_B_WIDTH,
      C_OUT_WIDTH => C_OUT_WIDTH,
      C_LOW_BIT => 0,
      C_HIGH_BIT => C_OUT_WIDTH-1,
      C_ADD_MODE => 0, 
      C_A_TYPE => 0, 
      C_B_TYPE => 0,
      C_B_CONSTANT => 0,
      C_B_VALUE => "",
      C_AINIT_VAL => "",
      C_SINIT_VAL => "",
      C_BYPASS_ENABLE => 1,
      C_BYPASS_LOW => 1,
      C_SYNC_ENABLE => 0,
      C_SYNC_PRIORITY => 0,
      C_PIPE_STAGES => 1,
      C_LATENCY => 1,
      C_HAS_S => 0,
      C_HAS_Q => 1,
      C_HAS_C_IN => 0,
      C_HAS_C_OUT => 0,
      C_HAS_Q_C_OUT => 0,
      C_HAS_B_IN => 1,
      C_HAS_B_OUT => 0,
      C_HAS_Q_B_OUT => 0,
      C_HAS_OVFL => 0,
      C_HAS_Q_OVFL => 0,
      C_HAS_CE => 1,
      C_HAS_ADD => 0,
      C_HAS_BYPASS => 1,
      C_HAS_A_SIGNED => 1,
      C_HAS_B_SIGNED => 1,
      C_HAS_ACLR => 0,
      C_HAS_ASET => 0,
      C_HAS_AINIT => 0,
      C_HAS_SCLR => 0,
      C_HAS_SSET => 0,
      C_HAS_SINIT => 0,
      C_ENABLE_RLOCS => 1,
      C_HAS_BYPASS_WITH_CIN => 0)
    port map (
      A => DIN_A,
      B => DIN_B,
      CLK => CLK,
      ADD => gnd,
      C_IN => gnd,
      B_IN => vcc,
      CE => CE,
      BYPASS => BYPASS,
      ACLR => gnd,
      ASET => gnd,
      AINIT => gnd,
      SCLR => gnd,
      SSET => gnd,
      SINIT => gnd,
      A_SIGNED => vcc,
      B_SIGNED => vcc,
      OVFL => open_ovfl1,
      C_OUT => open_c_out1,
      B_OUT => open_b_out1,
      Q_OVFL => open_q_ovfl1,
      Q_C_OUT => open_q_c_out1,
      Q_B_OUT => open_q_b_out1,
      S => open_s1,
      Q => DOUT);

END xilinx;
LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.C_ADDSUB_V6_0_comp.all;

ENTITY fft20_subtracter IS
  generic  (
		C_A_WIDTH   : INTEGER;
		C_B_WIDTH   : INTEGER;
		C_OUT_WIDTH : INTEGER);
  port (
    CLK      : IN  std_logic;   
    CE       : IN  std_logic;   
    DIN_A    : IN  std_logic_vector(C_A_WIDTH-1 downto 0);   
    DIN_B    : IN  std_logic_vector(C_B_WIDTH-1 downto 0);   
    DOUT     : OUT std_logic_vector(C_OUT_WIDTH-1 downto 0)); 
END fft20_subtracter;

ARCHITECTURE xilinx OF fft20_subtracter IS

	signal gnd: std_logic;
	signal vcc: std_logic;
	signal open_ovfl1: std_logic;
	signal open_c_out1: std_logic;
	signal open_b_out1: std_logic;
	signal open_q_ovfl1: std_logic;
	signal open_q_c_out1: std_logic;
	signal open_q_b_out1: std_logic;
	signal open_s1: std_logic_vector(C_OUT_WIDTH-1 downto 0);

BEGIN

   gnd <='0';
   vcc <='1';
  sub: C_ADDSUB_V6_0
    generic map (
      C_A_WIDTH => C_A_WIDTH,
      C_B_WIDTH => C_B_WIDTH,
      C_OUT_WIDTH => C_OUT_WIDTH,
      C_LOW_BIT => 0,
      C_HIGH_BIT => C_OUT_WIDTH-1,
      C_ADD_MODE => 1, 
      C_A_TYPE => 0, 
      C_B_TYPE => 0,
      C_B_CONSTANT => 0,
      C_B_VALUE => "",
      C_AINIT_VAL => "",
      C_SINIT_VAL => "",
      C_BYPASS_ENABLE => 0,
      C_BYPASS_LOW => 0,
      C_SYNC_ENABLE => 0,
      C_SYNC_PRIORITY => 0,
      C_PIPE_STAGES => 1,
      C_LATENCY => 1,
      C_HAS_S => 0,
      C_HAS_Q => 1,
      C_HAS_C_IN => 0,
      C_HAS_C_OUT => 0,
      C_HAS_Q_C_OUT => 0,
      C_HAS_B_IN => 1,
      C_HAS_B_OUT => 0,
      C_HAS_Q_B_OUT => 0,
      C_HAS_OVFL => 0,
      C_HAS_Q_OVFL => 0,
      C_HAS_CE => 1,
      C_HAS_ADD => 0,
      C_HAS_BYPASS => 0,
      C_HAS_A_SIGNED => 1,
      C_HAS_B_SIGNED => 1,
      C_HAS_ACLR => 0,
      C_HAS_ASET => 0,
      C_HAS_AINIT => 0,
      C_HAS_SCLR => 0,
      C_HAS_SSET => 0,
      C_HAS_SINIT => 0,
      C_ENABLE_RLOCS => 1,
      C_HAS_BYPASS_WITH_CIN => 0)
    port map (
      A => DIN_A,
      B => DIN_B,
      CLK => CLK,
      ADD => gnd,
      C_IN => gnd,
      B_IN => vcc,
      CE => CE,
      BYPASS => gnd,
      ACLR => gnd,
      ASET => gnd,
      AINIT => gnd,
      SCLR => gnd,
      SSET => gnd,
      SINIT => gnd,
      A_SIGNED => vcc,
      B_SIGNED => vcc,
      OVFL => open_ovfl1,
      C_OUT => open_c_out1,
      B_OUT => open_b_out1,
      Q_OVFL => open_q_ovfl1,
      Q_C_OUT => open_q_c_out1,
      Q_B_OUT => open_q_b_out1,
      S => open_s1,
      Q => DOUT);

END xilinx;
LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.C_ADDSUB_V6_0_comp.all;

ENTITY fft20_sub_byp IS
  generic  (
		C_A_WIDTH   : INTEGER;
		C_B_WIDTH   : INTEGER;
		C_OUT_WIDTH : INTEGER);
  port (
    CLK      : IN  std_logic;   
    CE       : IN  std_logic;  
		BYPASS   : IN  std_logic;
    DIN_A    : IN  std_logic_vector(C_A_WIDTH-1 downto 0);   
    DIN_B    : IN  std_logic_vector(C_B_WIDTH-1 downto 0);   
    DOUT     : OUT std_logic_vector(C_OUT_WIDTH-1 downto 0)); 
END fft20_sub_byp;

ARCHITECTURE xilinx OF fft20_sub_byp IS

	signal gnd: std_logic;
	signal vcc: std_logic;
	signal open_ovfl1: std_logic;
	signal open_c_out1: std_logic;
	signal open_b_out1: std_logic;
	signal open_q_ovfl1: std_logic;
	signal open_q_c_out1: std_logic;
	signal open_q_b_out1: std_logic;
	signal open_s1: std_logic_vector(C_OUT_WIDTH-1 downto 0);

BEGIN
	gnd <= '0';
	vcc <= '1';

  sub: C_ADDSUB_V6_0
    generic map (
      C_A_WIDTH => C_A_WIDTH,
      C_B_WIDTH => C_B_WIDTH,
      C_OUT_WIDTH => C_OUT_WIDTH,
      C_LOW_BIT => 0,
      C_HIGH_BIT => C_OUT_WIDTH-1,
      C_ADD_MODE => 1, 
      C_A_TYPE => 0, 
      C_B_TYPE => 0,
      C_B_CONSTANT => 0,
      C_B_VALUE => "",
      C_AINIT_VAL => "",
      C_SINIT_VAL => "",
      C_BYPASS_ENABLE => 1,
      C_BYPASS_LOW => 1,
      C_SYNC_ENABLE => 0,
      C_SYNC_PRIORITY => 0,
      C_PIPE_STAGES => 1,
      C_LATENCY => 1,
      C_HAS_S => 0,
      C_HAS_Q => 1,
      C_HAS_C_IN => 0,
      C_HAS_C_OUT => 0,
      C_HAS_Q_C_OUT => 0,
      C_HAS_B_IN => 1,
      C_HAS_B_OUT => 0,
      C_HAS_Q_B_OUT => 0,
      C_HAS_OVFL => 0,
      C_HAS_Q_OVFL => 0,
      C_HAS_CE => 1,
      C_HAS_ADD => 0,
      C_HAS_BYPASS => 1,
      C_HAS_A_SIGNED => 1,
      C_HAS_B_SIGNED => 1,
      C_HAS_ACLR => 0,
      C_HAS_ASET => 0,
      C_HAS_AINIT => 0,
      C_HAS_SCLR => 0,
      C_HAS_SSET => 0,
      C_HAS_SINIT => 0,
      C_ENABLE_RLOCS => 1,
      C_HAS_BYPASS_WITH_CIN => 0)
    port map (
      A => DIN_A,
      B => DIN_B,
      CLK => CLK,
      ADD => gnd,
      C_IN => gnd,
      B_IN => vcc,
      CE => CE,
      BYPASS => BYPASS,
      ACLR => gnd,
      ASET => gnd,
      AINIT => gnd,
      SCLR => gnd,
      SSET => gnd,
      SINIT => gnd,
      A_SIGNED => vcc,
      B_SIGNED => vcc,
      OVFL => open_ovfl1,
      C_OUT => open_c_out1,
      B_OUT => open_b_out1,
      Q_OVFL => open_q_ovfl1,
      Q_C_OUT => open_q_c_out1,
      Q_B_OUT => open_q_b_out1,
      S => open_s1,
      Q => DOUT);

END xilinx;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.C_ADDSUB_V6_0_comp.all;
USE XilinxCoreLib.c_mux_bus_v6_0_comp.all;

ENTITY fft20_sub_byp_j IS
  generic  (
		C_WIDTH   : INTEGER;
		OUT_WIDTH : INTEGER);
  port (
    CLK      : IN  std_logic;   
    CE       : IN  std_logic;   
	 BYPASS   : IN  std_logic;
    DIN_A    : IN  std_logic_vector(C_WIDTH-1 downto 0);   
    DIN_B_MA : IN  std_logic_vector(C_WIDTH-1 downto 0);   
    DIN_B_MB : IN  std_logic_vector(C_WIDTH-1 downto 0);   
    DOUT     : OUT std_logic_vector(OUT_WIDTH-1 downto 0)); 
END fft20_sub_byp_j;

ARCHITECTURE xilinx OF fft20_sub_byp_j IS

	signal gnd: std_logic;
	signal gnd_vector: std_logic_vector(C_WIDTH-1 downto 0);
	signal vcc: std_logic;
	
	signal bypass_vec: std_logic_vector(0 downto 0);
	signal mux_out: std_logic_vector(C_WIDTH-1 downto 0);

	signal open_ovfl1: std_logic;
	signal open_c_out1: std_logic;
	signal open_b_out1: std_logic;
	signal open_q_ovfl1: std_logic;
	signal open_q_c_out1: std_logic;
	signal open_q_b_out1: std_logic;
	signal open_s1: std_logic_vector(OUT_WIDTH-1 downto 0);
	signal open_q: std_logic_vector(C_WIDTH-1 downto 0);

BEGIN
	gnd <= '0';
	gnd_vector <= (OTHERS => '0');
	vcc <= '1';

	bypass_vec(0) <= bypass;
	
  mux: C_MUX_BUS_V6_0
    generic map (
      C_WIDTH => C_WIDTH,
      C_INPUTS => 2,
      C_MUX_TYPE => 0,
      C_SEL_WIDTH => 1,
      C_AINIT_VAL => "",
      C_SINIT_VAL => "",
      C_SYNC_PRIORITY => 0,
      C_SYNC_ENABLE => 0,
      C_LATENCY => 0,
      C_HAS_O => 1,
      C_HAS_Q => 0,
      C_HAS_CE => 1,
      C_HAS_EN => 0,
      C_HAS_ACLR => 0,
      C_HAS_ASET => 0,
      C_HAS_AINIT => 0,
      C_HAS_SCLR => 0,
      C_HAS_SSET => 0,
      C_HAS_SINIT => 0,
      C_ENABLE_RLOCS => 1)
    port map (
      MA => DIN_B_MA,
      MB => DIN_B_MB,
      MC => gnd_vector,
      MD => gnd_vector,
      ME => gnd_vector,
      MF => gnd_vector,
      MG => gnd_vector,
      MH => gnd_vector,
      S  => bypass_vec,
      CLK => CLK,
      CE => CE,
      EN => gnd,
      ASET => gnd,
      ACLR => gnd,
      AINIT => gnd,
      SSET => gnd,
      SCLR => gnd,
      SINIT => gnd,
      O => mux_out,
      Q => open_q);

  sub: C_ADDSUB_V6_0
    generic map (
      C_A_WIDTH => C_WIDTH,
      C_B_WIDTH => C_WIDTH,
      C_OUT_WIDTH => OUT_WIDTH,
      C_LOW_BIT => 0,
      C_HIGH_BIT => OUT_WIDTH-1,
      C_ADD_MODE => 1, 
      C_A_TYPE => 0, 
      C_B_TYPE => 0,
      C_B_CONSTANT => 0,
      C_B_VALUE => "",
      C_AINIT_VAL => "",
      C_SINIT_VAL => "",
      C_BYPASS_ENABLE => 1,
      C_BYPASS_LOW => 1,
      C_SYNC_ENABLE => 0,
      C_SYNC_PRIORITY => 0,
      C_PIPE_STAGES => 1,
      C_LATENCY => 1,
      C_HAS_S => 0,
      C_HAS_Q => 1,
      C_HAS_C_IN => 0,
      C_HAS_C_OUT => 0,
      C_HAS_Q_C_OUT => 0,
      C_HAS_B_IN => 1,
      C_HAS_B_OUT => 0,
      C_HAS_Q_B_OUT => 0,
      C_HAS_OVFL => 0,
      C_HAS_Q_OVFL => 0,
      C_HAS_CE => 1,
      C_HAS_ADD => 0,
      C_HAS_BYPASS => 1,
      C_HAS_A_SIGNED => 1,
      C_HAS_B_SIGNED => 1,
      C_HAS_ACLR => 0,
      C_HAS_ASET => 0,
      C_HAS_AINIT => 0,
      C_HAS_SCLR => 0,
      C_HAS_SSET => 0,
      C_HAS_SINIT => 0,
      C_ENABLE_RLOCS => 1,
      C_HAS_BYPASS_WITH_CIN => 0)
    port map (
      A => DIN_A,
      B => mux_out,
      CLK => CLK,
      ADD => gnd,
      C_IN => gnd,
      B_IN => vcc,
      CE => CE,
      BYPASS => BYPASS,
      ACLR => gnd,
      ASET => gnd,
      AINIT => gnd,
      SCLR => gnd,
      SSET => gnd,
      SINIT => gnd,
      A_SIGNED => vcc,
      B_SIGNED => vcc,
      OVFL => open_ovfl1,
      C_OUT => open_c_out1,
      B_OUT => open_b_out1,
      Q_OVFL => open_q_ovfl1,
      Q_C_OUT => open_q_c_out1,
      Q_B_OUT => open_q_b_out1,
      S => open_s1,
      Q => DOUT);

END xilinx;
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.fft20_comps.all;

ENTITY fft20_butterfly IS
  generic  (
		data_width : INTEGER);
  port (
    CLK                     : IN std_logic;   
    CE                      : IN std_logic;   
    X0r, X0i, X1r, X1i      : IN std_logic_vector(data_width-1 downto 0);   
    Y0r, Y0i, Y1r, Y1i      : OUT std_logic_vector(data_width downto 0)); 
END fft20_butterfly;

ARCHITECTURE xilinx OF fft20_butterfly IS

SIGNAL gnd: std_logic;
SIGNAL vcc: std_logic;

BEGIN

   gnd <= '0';
   vcc <= '1';
  add_r: fft20_adder
    generic map (
      C_A_WIDTH => data_width,
			C_B_WIDTH => data_width,
			C_OUT_WIDTH => data_width+1)
    port map (
		  CLK => CLK,
			CE => CE,
      DIN_A => X0r,
      DIN_B => X1r,
      DOUT => Y0r);

	add_i: fft20_adder
    generic map ( 
			C_A_WIDTH => data_width,
      C_B_WIDTH => data_width,
      C_OUT_WIDTH => data_width+1)
    port map (
			CLK => CLK,
			CE => CE,
      DIN_A => X0i,
      DIN_B => X1i,
      DOUT => Y0i);

	sub_r: fft20_subtracter
    generic map (
	    C_A_WIDTH => data_width,
      C_B_WIDTH => data_width,
      C_OUT_WIDTH => data_width+1)
	  port map (
      CLK => CLK,
			CE => CE,
			DIN_A => X0r,
      DIN_B => X1r,
      DOUT => Y1r);

	sub_i: fft20_subtracter
	  generic map (
      C_A_WIDTH => data_width,
      C_B_WIDTH => data_width,
      C_OUT_WIDTH => data_width+1)
    port map (
			CLK => CLK,
			CE => CE,
      DIN_A => X0i,
      DIN_B => X1i,
      DOUT => Y1i);

END xilinx;


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.fft20_comps.all;

ENTITY fft20_bfly_byp IS
  generic  (
		data_width : INTEGER);
  port (
    CLK                     : IN std_logic;   
    CE                      : IN std_logic;   
		BYPASS 									: IN std_logic;
    X0r, X0i, X1r, X1i      : IN std_logic_vector(data_width-1 downto 0);   
    Y0r, Y0i, Y1r, Y1i      : OUT std_logic_vector(data_width downto 0)); 
END fft20_bfly_byp;

ARCHITECTURE xilinx OF fft20_bfly_byp IS

SIGNAL gnd: std_logic;
SIGNAL vcc: std_logic;
signal byp_ar: std_logic;
signal byp_ai: std_logic;
signal byp_sr: std_logic;
signal byp_si: std_logic;

BEGIN

  gnd <= '0';
  vcc <= '1';

   reg_ar: fft20_fde port map (D=> BYPASS, CLK=>CLK, CE=>CE, Q=> byp_ar);
   reg_ai: fft20_fde port map (D=> BYPASS, CLK=>CLK, CE=>CE, Q=> byp_ai);
   reg_sr: fft20_fde port map (D=> BYPASS, CLK=>CLK, CE=>CE, Q=> byp_sr);
   reg_si: fft20_fde port map (D=> BYPASS, CLK=>CLK, CE=>CE, Q=> byp_si);

  add_r: fft20_adder_bypass
    generic map (
      C_A_WIDTH => data_width,
      C_B_WIDTH => data_width,
      C_OUT_WIDTH => data_width+1)
    port map (
      CLK => CLK,
      CE => CE,
      BYPASS => BYP_ar,
      DIN_A => X1r,
      DIN_B => X0r,
      DOUT => Y0r);
      
	add_i: fft20_adder_bypass
    generic map ( 
      C_A_WIDTH => data_width,
      C_B_WIDTH => data_width,
      C_OUT_WIDTH => data_width+1)
    port map (
      CLK => CLK,
      CE => CE,
      BYPASS => BYP_ai,
      DIN_A => X1i,
      DIN_B => X0i,
      DOUT => Y0i);

	sub_r: fft20_sub_byp
    generic map (
      C_A_WIDTH => data_width,
      C_B_WIDTH => data_width,
      C_OUT_WIDTH => data_width+1)
	  port map (
      CLK => CLK,
      CE => CE,
      BYPASS => BYP_sr,
      DIN_A => X0r,
      DIN_B => X1r,
      DOUT => Y1r);

	sub_i: fft20_sub_byp
	  generic map (
      C_A_WIDTH => data_width,
      C_B_WIDTH => data_width,
      C_OUT_WIDTH => data_width+1)
    port map (
      CLK => CLK,
      CE => CE,
      BYPASS => BYP_si,
      DIN_A => X0i,
      DIN_B => X1i,
      DOUT => Y1i);

END xilinx;
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.fft20_comps.all;

ENTITY fft20_butterfly_j IS
  generic  (
		data_width : INTEGER);
  port (
    CLK                     : IN std_logic;   
    CE                      : IN std_logic;   
    X0r, X0i, X1r, X1i      : IN std_logic_vector(data_width-1 downto 0);   
    Y0r, Y0i, Y1r, Y1i      : OUT std_logic_vector(data_width downto 0)); 
END fft20_butterfly_j;

ARCHITECTURE xilinx OF fft20_butterfly_j IS

SIGNAL gnd: std_logic;
SIGNAL vcc: std_logic;

BEGIN
   gnd <= '0';
   vcc <= '1';
  add_r: fft20_adder
    generic map (
      C_A_WIDTH => data_width,
			C_B_WIDTH => data_width,
			C_OUT_WIDTH => data_width+1)
    port map (
		  CLK => CLK,
			CE => CE,
      DIN_A => X0r,
      DIN_B => X1r,
      DOUT => Y0r);

	add_i: fft20_adder
    generic map ( 
			C_A_WIDTH => data_width,
      C_B_WIDTH => data_width,
      C_OUT_WIDTH => data_width+1)
    port map (
			CLK => CLK,
			CE => CE,
      DIN_A => X0i,
      DIN_B => X1i,
      DOUT => Y0i);

	sub_r: fft20_subtracter
    generic map (
	    C_A_WIDTH => data_width,
      C_B_WIDTH => data_width,
      C_OUT_WIDTH => data_width+1)
	  port map (
      CLK => CLK,
			CE => CE,
			DIN_A => X0i,
      DIN_B => X1i,
      DOUT => Y1r);

	sub_i: fft20_subtracter
	  generic map (
      C_A_WIDTH => data_width,
      C_B_WIDTH => data_width,
      C_OUT_WIDTH => data_width+1)
    port map (
			CLK => CLK,
			CE => CE,
      DIN_A => X1r,
      DIN_B => X0r,
      DOUT => Y1i);

END xilinx;

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.fft20_comps.all;

ENTITY fft20_bfly_byp_j IS
  generic  (
		data_width : INTEGER := 10);
  port (
    CLK                     : IN std_logic;   
    CE                      : IN std_logic;  
		BYPASS									: IN std_logic;
    X0r, X0i, X1r, X1i      : IN std_logic_vector(data_width-1 downto 0);   
    Y0r, Y0i, Y1r, Y1i      : OUT std_logic_vector(data_width downto 0)); 
END fft20_bfly_byp_j;

ARCHITECTURE xilinx OF fft20_bfly_byp_j IS

SIGNAL gnd: std_logic;
SIGNAL gnd_vector: std_logic_vector(data_width-1 downto 0);

SIGNAL bypass_vector: std_logic_vector(0 downto 0);
SIGNAL X0r_int: std_logic_vector(data_width-1 downto 0);
SIGNAL X1i_int: std_logic_vector(data_width-1 downto 0);
SIGNAL open_q1: std_logic_vector(data_width-1 downto 0);
SIGNAL open_q2: std_logic_vector(data_width-1 downto 0);
signal byp_ar: std_logic;
signal byp_ai: std_logic;
signal byp_sr: std_logic;
signal byp_si: std_logic;

BEGIN


   gnd <= '0';
   gnd_vector <=  (OTHERS => '0');
   reg_ar: fft20_fde port map (D=> BYPASS, CLK=>CLK, CE=>CE, Q=> byp_ar);
   reg_ai: fft20_fde port map (D=> BYPASS, CLK=>CLK, CE=>CE, Q=> byp_ai);
   reg_sr: fft20_fde port map (D=> BYPASS, CLK=>CLK, CE=>CE, Q=> byp_sr);
   reg_si: fft20_fde port map (D=> BYPASS, CLK=>CLK, CE=>CE, Q=> byp_si);


  add_r: fft20_adder_bypass
    generic map (
      C_A_WIDTH => data_width,
      C_B_WIDTH => data_width,
      C_OUT_WIDTH => data_width+1)
    port map (
      CLK => CLK,
      CE => CE,
      BYPASS => byp_ar,
      DIN_A => X1r,
      DIN_B => X0r,
      DOUT => Y0r);

	add_i: fft20_adder_bypass
    generic map ( 
      C_A_WIDTH => data_width,
      C_B_WIDTH => data_width,
      C_OUT_WIDTH => data_width+1)
    port map (
      CLK => CLK,
      CE => CE,
      BYPASS => byp_ai,
      DIN_A => X1i,
      DIN_B => X0i,
      DOUT => Y0i);

	sub_r: fft20_sub_byp_j
  	generic map (
    	C_WIDTH => data_width,
    	OUT_WIDTH => data_width+1)
  	port map (
      CLK => CLK,
      CE => CE,
      BYPASS => byp_sr,
      DIN_A => X0i,
      DIN_B_MA => X1r,
      DIN_B_MB => X1i,
      DOUT => Y1r);

	sub_i: fft20_sub_byp_j
    generic map (
      C_WIDTH => data_width,
      OUT_WIDTH => data_width+1)
    port map (
      CLK => CLK,
      CE => CE,
      BYPASS => BYP_si,
      DIN_A => X1r,
      DIN_B_MA => X1i,
      DIN_B_MB => X0r,
      DOUT => Y1i);
	
END xilinx;
LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.mult_gen_v6_0_comp.all;

ENTITY fft20_mult IS
  generic (
    a_width : INTEGER;
		b_width : INTEGER);
  port (
    clk : IN std_logic;
    ce  : IN std_logic;
    a   : IN std_logic_vector(a_width-1 downto 0);
    b   : IN std_logic_vector(b_width-1 downto 0);
    q   : OUT std_logic_vector(a_width+b_width-1 downto 0));
END fft20_mult;

ARCHITECTURE xilinx of fft20_mult IS

SIGNAL gnd: std_logic;
SIGNAL open_o: std_logic_vector(a_width+b_width-1 downto 0);
SIGNAL open_load: std_logic;
SIGNAL open_rfd: std_logic;
SIGNAL open_rdy: std_logic;

BEGIN

  gnd <= '0';
	
	u1: mult_gen_v6_0
  	generic map (
    	c_a_width => a_width,
    	c_b_width => b_width,
    	c_out_width => a_width+b_width,
    	c_has_q => 1, 
    	c_has_o => 0, 
      c_reg_a_b_inputs => 0, 
      c_a_type => 0, 
      c_b_type => 0, 
      c_b_constant => 0, 
      c_b_value => "0000000000000001",
      c_has_aclr => 0,
      c_has_sclr => 0,
      c_has_ce => 1, 
      c_has_a_signed => 0,
      c_enable_rlocs => 1, 
      c_has_loadb => 0,
      c_mem_type => 0,
      c_mult_type => 1, 
      c_baat => a_width,
      c_has_swapb => 0,
      c_has_nd => 0,
      c_has_rdy => 0,
      c_has_rfd => 0,
      c_pipeline => 1,
      c_sync_enable => 1,
      c_has_load_done => 0,
      c_output_hold => 0,
      c_sqm_type => 0,
      c_has_b => 1,
      c_stack_adders => 1,
      bram_addr_width => 9,
      c_mem_init_prefix => "mem",
      c_standalone => 1,
      c_USE_luts => 0)
    port map (
      clk => clk,
      a => a,
      b => b,
      o => open_o,
      q => q,
      a_signed => gnd,
      loadb => gnd,
      load_done => open_load,
      swapb => gnd,
      ce => ce,
      aclr => gnd,
      sclr => gnd,
      rfd => open_rfd,
      nd => gnd,
      rdy => open_rdy);

END xilinx;
LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.fft20_comps.all;
USE XilinxCoreLib.fft20_pkg.all;

ENTITY fft20_complex_mult3 IS
  generic (
    a_width : INTEGER:=16;
    b_width : INTEGER:=17);
  port (
    clk   : IN std_logic;
    ce    : IN std_logic;
    ar    : IN std_logic_vector(a_width-1 downto 0);
    ai    : IN std_logic_vector(a_width-1 downto 0);
		br    : IN std_logic_vector(b_width-1 downto 0);
		bi    : IN std_logic_vector(b_width-1 downto 0);
    pr    : OUT std_logic_vector(a_width+b_width downto 0);
    pi    : OUT std_logic_vector(a_width+b_width downto 0));
END fft20_complex_mult3;

ARCHITECTURE xilinx of fft20_complex_mult3 IS

SIGNAL ai_reg : std_logic_vector(a_width-1 downto 0);
SIGNAL br_reg : std_logic_vector(b_width-1 downto 0);
SIGNAL bi_reg : std_logic_vector(b_width-1 downto 0);

SIGNAL arplusai  : std_logic_vector(a_width downto 0);
SIGNAL arminusai : std_logic_vector(a_width downto 0);
SIGNAL brplusbi  : std_logic_vector(b_width-1 downto 0);

SIGNAL arplusaixbr  : std_logic_vector(a_width+b_width downto 0);
SIGNAL arminusaixbi : std_logic_vector(a_width+b_width downto 0);
SIGNAL aixbrplusbi  : std_logic_vector(a_width+b_width-1 downto 0);
SIGNAL aixbrplusbi_raw  : std_logic_vector(a_width+b_width-1 downto 0);

BEGIN
	
	ar_plus_ai: fft20_adder
	  generic map (
			C_A_WIDTH => a_width,
			C_B_WIDTH => a_width,
			C_OUT_WIDTH => a_width+1)
    port map (
		  DIN_A => ar,
      DIN_B => ai,
      CLK => clk,
      CE => ce,      
      DOUT => arplusai);       
 
  br_plus_bi: fft20_adder
		generic map (
      C_A_WIDTH => b_width,
      C_B_WIDTH => b_width,
      C_OUT_WIDTH => b_width)
    port map (
		  DIN_A => br,
      DIN_B => bi,
      CLK => clk,
      CE => ce,
      DOUT => brplusbi);       
 
  ar_minus_ai: fft20_subtracter
	  generic map (
      C_A_WIDTH => a_width,
      C_B_WIDTH => a_width,
      C_OUT_WIDTH => a_width+1)
    port map (
		  DIN_A => ar,
      DIN_B => ai,
      CLK => clk,
      CE => ce,     
      DOUT => arminusai);       

	br_balancer: fft20_reg_fde
		generic map (
			data_width => b_width)
		port map (
			D   => br,
			CLK => CLK,
			CE  => CE,
			Q   => br_reg);

	bi_balancer: fft20_reg_fde
    generic map (
      data_width => b_width)
    port map (
      D   => bi,
      CLK => CLK,
      CE  => CE,
      Q   => bi_reg);
		
 	ai_balancer: fft20_reg_fde
    generic map (
      data_width => a_width)
    port map (
      D   => ai,
      CLK => CLK,
      CE  => CE,
      Q   => ai_reg);

	arplusai_x_br: fft20_mult  
		generic map (
    	a_width => a_width+1,
    	b_width => b_width)
		port map (
    	clk => clk,
    	a => arplusai,
    	b => br_reg,
			q => arplusaixbr,
			ce => ce);

	arminusai_x_bi: fft20_mult 
		generic map (
    	a_width => a_width+1,
    	b_width => b_width)
  	port map (
    	clk => clk,
    	a => arminusai,
    	b => bi_reg,
			q => arminusaixbi,
			ce => ce);

	ai_x_brplusbi: fft20_mult 
		generic map (
			a_width => a_width,
			b_width => b_width)
		port map (
			clk => clk,
			a => ai_reg,
			b => brplusbi,
			q => aixbrplusbi_raw,
			ce => ce);

	insert_delay: if mult_latency(a_width+1, b_width) > mult_latency(a_width, b_width) generate
		mult_balancer: fft20_reg_fde
			generic map (
				data_width => a_width+b_width)
			port map (
				D   => aixbrplusbi_raw,
				CLK => CLK,
				CE  => CE,
				Q   => aixbrplusbi);
		end generate;

	do_not_insert_delay: if mult_latency(a_width+1, b_width) = mult_latency(a_width, b_width) generate
		aixbrplusbi <= aixbrplusbi_raw;
		end generate;

  re: fft20_subtracter
	  generic map (
			C_A_WIDTH => a_width+b_width+1,
			C_B_WIDTH => a_width+b_width,  
      C_OUT_WIDTH => a_width+b_width+1)
    port map (
		  DIN_A => arplusaixbr,
      DIN_B => aixbrplusbi,
      CLK => clk,
      CE => ce,      
      DOUT => pr);       
	
  im: fft20_adder
	  generic map (
			C_A_WIDTH => a_width+b_width+1,
			C_B_WIDTH => a_width+b_width,  
      C_OUT_WIDTH => a_width+b_width+1)
    port map (
		  DIN_A => arminusaixbi,
      DIN_B => aixbrplusbi,
      CLK => clk,
      CE => ce,
      DOUT => pi);       
 
END xilinx;
	
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

LIBRARY XilinxCoreLib;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.fft20_comps.all;

ENTITY fft20_dragonfly IS 
	generic (
		data_width : INTEGER := 12);
	port (
		CLK          : IN  std_logic;
		CE           : IN  std_logic;
    X0r, X0i     : IN  std_logic_vector(data_width-1 downto 0);
    X1r, X1i     : IN  std_logic_vector(data_width-1 downto 0);
    X2r, X2i     : IN  std_logic_vector(data_width-1 downto 0);
    X3r, X3i     : IN  std_logic_vector(data_width-1 downto 0);
    Y0r, Y0i     : OUT std_logic_vector(data_width+1 downto 0);
    Y1r, Y1i     : OUT std_logic_vector(data_width+1 downto 0);
    Y2r, Y2i     : OUT std_logic_vector(data_width+1 downto 0);
    Y3r, Y3i     : OUT std_logic_vector(data_width+1 downto 0));
END fft20_dragonfly;

ARCHITECTURE xilinx OF fft20_dragonfly IS

  SIGNAL t0r, t0i	: std_logic_vector(data_width DOWNTO 0);   
  SIGNAL t1r, t1i	: std_logic_vector(data_width DOWNTO 0);   
  SIGNAL t2r, t2i : std_logic_vector(data_width DOWNTO 0);   
  SIGNAL t3r, t3i	: std_logic_vector(data_width DOWNTO 0);   

BEGIN
	
	BF_0 : fft20_butterfly
		generic map (
			data_width => data_width) 
    port map (
       CLK => CLK,
       CE => CE,
       X0r => X0r,
       X0i => X0i,
       X1r => X2r,
       X1i => X2i,
       Y0r => t0r,
       Y0i => t0i,
       Y1r => t2r,
       Y1i => t2i);   
   
	BF_1 : fft20_butterfly_j
		generic map (
			data_width => data_width)
    port map (
      CLK => CLK,
      CE => CE,
      X0r => X1r,
      X0i => X1i,
      X1r => X3r,
      X1i => X3i,
      Y0r => t1r,
      Y0i => t1i,
      Y1r => t3r,
      Y1i => t3i);   
  
  BF_2 : fft20_butterfly
		generic map (
			data_width => data_width+1)
		port map (
      CLK => CLK,
      CE => CE,
      X0r => t0r,
      X0i => t0i,
      X1r => t1r,
      X1i => t1i,
      Y0r => Y0r,
      Y0i => Y0i,
      Y1r => Y1r,
      Y1i => Y1i);   
   
  BF_3 : fft20_butterfly
		generic map (
			data_width => data_width+1)
    port map (
      CLK => CLK,
      CE => CE,
      X0r => t2r,
      X0i => t2i,
      X1r => t3r,
      X1i => t3i,
      Y0r => Y2r,
      Y0i => Y2i,
      Y1r => Y3r,
      Y1i => Y3i);   
   
END xilinx;

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

LIBRARY XilinxCoreLib;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.fft20_comps.all;

ENTITY fft20_dfly_byp IS 
	generic (
		data_width : INTEGER := 12);
	port (
		CLK          : IN  std_logic;
		CE           : IN  std_logic;
		BYPASS       : IN  std_logic;
    X0r, X0i     : IN  std_logic_vector(data_width-1 downto 0);
    X1r, X1i     : IN  std_logic_vector(data_width-1 downto 0);
    X2r, X2i     : IN  std_logic_vector(data_width-1 downto 0);
    X3r, X3i     : IN  std_logic_vector(data_width-1 downto 0);
    Y0r, Y0i     : OUT std_logic_vector(data_width+1 downto 0);
    Y1r, Y1i     : OUT std_logic_vector(data_width+1 downto 0);
    Y2r, Y2i     : OUT std_logic_vector(data_width+1 downto 0);
    Y3r, Y3i     : OUT std_logic_vector(data_width+1 downto 0));
END fft20_dfly_byp;

ARCHITECTURE xilinx OF fft20_dfly_byp IS

  SIGNAL t0r, t0i	: std_logic_vector(data_width DOWNTO 0);   
  SIGNAL t1r, t1i	: std_logic_vector(data_width DOWNTO 0);   
  SIGNAL t2r, t2i : std_logic_vector(data_width DOWNTO 0);   
  SIGNAL t3r, t3i	: std_logic_vector(data_width DOWNTO 0);   

BEGIN
	
	BF_0 : fft20_bfly_byp
		generic map (
			data_width => data_width) 
    port map (
       CLK => CLK,
       CE => CE,
			 BYPASS => BYPASS,
       X0r => X0r,
       X0i => X0i,
       X1r => X2r,
       X1i => X2i,
       Y0r => t0r,
       Y0i => t0i,
       Y1r => t2r,
       Y1i => t2i);   
   
	BF_1 : fft20_bfly_byp_j
		generic map (
			data_width => data_width)
    port map (
      CLK => CLK,
      CE => CE,
			BYPASS => BYPASS,
      X0r => X1r,
      X0i => X1i,
      X1r => X3r,
      X1i => X3i,
      Y0r => t1r,
      Y0i => t1i,
      Y1r => t3r,
      Y1i => t3i);   
  
  BF_2 : fft20_butterfly
		generic map (
			data_width => data_width+1)
		port map (
      CLK => CLK,
      CE => CE,
      X0r => t0r,
      X0i => t0i,
      X1r => t1r,
      X1i => t1i,
      Y0r => Y0r,
      Y0i => Y0i,
      Y1r => Y1r,
      Y1i => Y1i);   
   
  BF_3 : fft20_butterfly
		generic map (
			data_width => data_width+1)
    port map (
      CLK => CLK,
      CE => CE,
      X0r => t2r,
      X0i => t2i,
      X1r => t3r,
      X1i => t3i,
      Y0r => Y2r,
      Y0i => Y2i,
      Y1r => Y3r,
      Y1i => Y3i);   
   
END xilinx;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.c_gate_bit_v6_0_comp.all;

ENTITY fft20_and2 IS
  generic (
		C_INPUT_INV_MASK : STRING);
  port (
		CLK      : IN  std_logic;   
		CE       : IN  std_logic;   
		I				 : IN  std_logic_vector(1 downto 0);
		O        : OUT std_logic); 
END fft20_and2;

ARCHITECTURE xilinx OF fft20_and2 IS

	signal gnd: std_logic;
	signal open_q: std_logic;

BEGIN
   gnd <= '0';

	u1: C_GATE_BIT_V6_0
  	generic map (
      C_GATE_TYPE => 0,  
      C_INPUTS => 2,
      C_INPUT_INV_MASK => C_INPUT_INV_MASK,
      C_PIPE_STAGES => 1,
      C_AINIT_VAL => "0",
      C_SINIT_VAL => "0",
      C_SYNC_PRIORITY => 1,
      C_SYNC_ENABLE => 0,
      C_HAS_O => 1,
      C_HAS_Q => 0,
      C_HAS_CE => 1,
      C_HAS_ACLR => 0,
      C_HAS_ASET => 0,
      C_HAS_AINIT => 0,
      C_HAS_SCLR => 0,
      C_HAS_SSET => 0,
      C_HAS_SINIT => 0,
      C_ENABLE_RLOCS => 1)
    port map (
			I => I,
      CLK => CLK,
      CE  => CE,
      ACLR => gnd,
      ASET => gnd,
      AINIT => gnd,
      SCLR => gnd,
      SSET => gnd,
      SINIT => gnd,
      O => O,
      Q => open_q);

END xilinx;
LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.c_gate_bit_v6_0_comp.all;

ENTITY fft20_and_gate IS
  generic (
		C_INPUTS : INTEGER;
		C_INPUT_INV_MASK : STRING);
  port (
		CLK      : IN  std_logic;   
		CE       : IN  std_logic;   
		I				 : IN  std_logic_vector(C_INPUTS-1 downto 0);
		O        : OUT std_logic; 
		Q        : OUT std_logic); 
END fft20_and_gate;

ARCHITECTURE xilinx OF fft20_and_gate IS

	signal dummy_in: std_logic;

BEGIN
	dummy_in <='0';
	u1: C_GATE_BIT_V6_0
  	generic map (
      C_GATE_TYPE => 0,  
      C_INPUTS => C_INPUTS,
      C_INPUT_INV_MASK => C_INPUT_INV_MASK,
      C_PIPE_STAGES => 1,
      C_AINIT_VAL => "0",
      C_SINIT_VAL => "0",
      C_SYNC_PRIORITY => 1,
      C_SYNC_ENABLE => 0,
      C_HAS_O => 1,
      C_HAS_Q => 1,
      C_HAS_CE => 1,
      C_HAS_ACLR => 0,
      C_HAS_ASET => 0,
      C_HAS_AINIT => 0,
      C_HAS_SCLR => 0,
      C_HAS_SSET => 0,
      C_HAS_SINIT => 0,
      C_ENABLE_RLOCS => 1)
    port map (
			I => I,
      CLK => CLK,
      CE  => CE,
      ACLR => dummy_in,
      ASET => dummy_in,
      AINIT => dummy_in,
      SCLR => dummy_in,
      SSET => dummy_in,
      SINIT => dummy_in,
      O => O,
      Q => Q);

END xilinx;
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.c_gate_bus_v6_0_comp.all;

ENTITY fft20_and_bus_gate IS
  generic (
	  C_WIDTH      : integer := 4);
  port (
	  CLK      : IN  std_logic;
    CE       : IN  std_logic;
    IA       : IN  std_logic_vector(C_WIDTH-1 downto 0); 
		IB       : IN  std_logic_vector(C_WIDTH-1 downto 0);
		Q        : OUT std_logic_vector(C_WIDTH-1 downto 0));
END fft20_and_bus_gate;

ARCHITECTURE xilinx OF fft20_and_bus_gate IS

   signal gnd_vec: std_logic_vector(C_WIDTH-1 downto 0);
	signal open_aclr: std_logic;
	signal open_aset: std_logic;
	signal open_ainit: std_logic;
	signal open_sclr: std_logic;
	signal open_sset: std_logic;
	signal open_sinit: std_logic;
	signal open_o: std_logic_vector(C_WIDTH-1 downto 0);
	
BEGIN
   gnd_vec <= (OTHERS => '0');
  comp1: C_GATE_BUS_V6_0
    generic map (
       C_GATE_TYPE => 0, 
       C_WIDTH  => C_WIDTH,
       C_INPUTS => 2,
       C_INPUT_A_INV_MASK => "",
       C_INPUT_B_INV_MASK => "",
       C_INPUT_C_INV_MASK => "",
       C_INPUT_D_INV_MASK => "",
       C_AINIT_VAL => "0",
       C_SINIT_VAL => "0",
       C_SYNC_PRIORITY => 0,
       C_SYNC_ENABLE   => 0,
       C_HAS_O      => 0,
       C_HAS_Q      => 1,
       C_HAS_CE     => 1,
       C_HAS_ACLR   => 0,
       C_HAS_ASET   => 0,
       C_HAS_AINIT  => 0,
       C_HAS_SCLR   => 0,
       C_HAS_SSET   => 0,
       C_HAS_SINIT  => 0,
       C_ENABLE_RLOCS => 1)
    port map (
		  IA => IA,
      IB => IB,
      IC => gnd_vec,
      ID => gnd_vec,
      CLK => CLK,
      CE => CE, 
      ACLR => open_aclr, 
      ASET => open_aset, 
      AINIT => open_ainit,
      SCLR => open_sclr, 
      SSET => open_sset, 
      SINIT => open_sinit,
      O => open_o,
      Q => Q);

END xilinx;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.c_shift_ram_v6_0_comp.all;

ENTITY fft20_shift_ram IS
	generic (
		C_DEPTH      : INTEGER;
		C_WIDTH      : INTEGER);
	port (
		D   : IN std_logic_vector(C_WIDTH-1 downto 0); 
		CLK : IN std_logic;
		CE  : IN std_logic;
		Q   : OUT std_logic_vector(C_WIDTH-1 downto 0)); 
END fft20_shift_ram;
		
	
ARCHITECTURE xilinx of fft20_shift_ram IS	

	signal gnd: std_logic;
	signal open_a: std_logic_vector(3 downto 0);
	
BEGIN	
   gnd <= '0';

	delay_signal: if C_DEPTH > 0 generate
	
		shift_reg: C_SHIFT_RAM_V6_0
			generic map (
				C_ADDR_WIDTH         => 4,
				C_AINIT_VAL          => "",
				C_DEFAULT_DATA       => "0",
				C_DEFAULT_DATA_RADIX => 1,
				C_DEPTH              => C_DEPTH,
				C_ENABLE_RLOCS       => 0,
				C_GENERATE_MIF       => 0,  
				C_HAS_ACLR           => 0,
				C_HAS_A              => 0,
				C_HAS_AINIT          => 0,
				C_HAS_ASET           => 0,
				C_HAS_CE             => 1,
				C_HAS_SCLR           => 0,
				C_HAS_SINIT          => 0,
				C_HAS_SSET           => 0,
				C_MEM_INIT_FILE      => "xfft_v2_0_null.mif",
				C_MEM_INIT_RADIX     => 1,  
				C_READ_MIF           => 0,
				C_REG_LAST_BIT       => 0,
				C_SHIFT_TYPE         => 0, 
				C_SINIT_VAL          => "",
				C_SYNC_PRIORITY      => 0,
				C_SYNC_ENABLE        => 0,
				C_WIDTH              => C_WIDTH)
	    port map (
	      A     => open_a,
	      D     => D,
	      CLK   => CLK,
	      CE    => CE,
	      ACLR  => gnd,
	      ASET  => gnd,
	      AINIT => gnd,
	      SCLR  => gnd,
	      SSET  => gnd,
	      SINIT => gnd,
	      Q     => Q);
	end generate;

	do_not_delay_signal: if C_DEPTH<1 generate
		Q <= D;
	end generate;
	
END xilinx;
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.c_shift_ram_v6_0_comp.all;

ENTITY fft20_shift_ram_1 IS
	generic (
		C_DEPTH      : INTEGER);
	port (
		D   : IN std_logic; 
		CLK : IN std_logic;
		CE  : IN std_logic;
		Q   : OUT std_logic); 
END fft20_shift_ram_1;
	
ARCHITECTURE xilinx of fft20_shift_ram_1 IS	

	signal I_d: std_logic_vector(0 downto 0);	
	signal I_q: std_logic_vector(0 downto 0);	
	signal gnd: std_logic;
	signal open_a: std_logic_vector(3 downto 0);
	constant inits: string(48 downto 1) := "000000000000000000000000000000000000000000000000";
	
BEGIN	
   
     gnd <= '0';
     delay_signal: if C_DEPTH>0 generate

	  shift_reg: C_SHIFT_RAM_V6_0
	    generic map (
	      C_ADDR_WIDTH         => 4,
	      C_AINIT_VAL          => inits(C_DEPTH downto 1),
	      C_DEFAULT_DATA       => "0",
	      C_DEFAULT_DATA_RADIX => 1,
	      C_DEPTH              => C_DEPTH,
	      C_ENABLE_RLOCS       => 0,
	      C_GENERATE_MIF       => 0,  
	      C_HAS_ACLR           => 0,
	      C_HAS_A              => 0,
	      C_HAS_AINIT          => 0,
	      C_HAS_ASET           => 0,
	      C_HAS_CE             => 1,
	      C_HAS_SCLR           => 0,
	      C_HAS_SINIT          => 0,
	      C_HAS_SSET           => 0,
	      C_MEM_INIT_FILE      => "xfft_v2_0_null.mif",
	      C_MEM_INIT_RADIX     => 1,  
	      C_READ_MIF           => 0,
	      C_REG_LAST_BIT       => 0,
	      C_SHIFT_TYPE         => 0, 
	      C_SINIT_VAL          => inits(C_DEPTH downto 1),
	      C_SYNC_PRIORITY      => 0,
	      C_SYNC_ENABLE        => 0,
	      C_WIDTH              => 1)
	    port map (
	      A     => open_a,
	      D     => I_D,
	      CLK   => CLK,
	      CE    => CE,
	      ACLR  => gnd,
	      ASET  => gnd,
	      AINIT => gnd,
	      SCLR  => gnd,
	      SSET  => gnd,
	      SINIT => gnd,
	      Q     => I_Q);
	
			Q <= I_Q(0);
			I_D(0) <= D;

		end generate;

	do_not_delay_signal: if C_DEPTH<1 generate
		Q <= D;
		end generate;

END xilinx;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.c_shift_ram_v6_0_comp.all;

ENTITY fft20_shift_ram_sclr IS
	generic (
		C_DEPTH      : INTEGER := 8;
		C_WIDTH      : INTEGER := 4);
	port (
		D   : IN std_logic_vector(C_WIDTH-1 downto 0); 
		CLK : IN std_logic;
		CE  : IN std_logic;
		SCLR: IN std_logic;
		Q   : OUT std_logic_vector(C_WIDTH-1 downto 0)); 
END fft20_shift_ram_sclr;
		
	
ARCHITECTURE xilinx of fft20_shift_ram_sclr IS	

	signal gnd: std_logic;
	signal open_a: std_logic_vector(3 downto 0);
	
BEGIN	
   gnd <= '0';

	delay_signal: if C_DEPTH > 0 generate
	
		shift_reg: C_SHIFT_RAM_V6_0
			generic map (
				C_ADDR_WIDTH         => 4,
				C_AINIT_VAL          => "",
				C_DEFAULT_DATA       => "0",
				C_DEFAULT_DATA_RADIX => 1,
				C_DEPTH              => C_DEPTH,
				C_ENABLE_RLOCS       => 0,
				C_GENERATE_MIF       => 0,  
				C_HAS_ACLR           => 0,
				C_HAS_A              => 0,
				C_HAS_AINIT          => 0,
				C_HAS_ASET           => 0,
				C_HAS_CE             => 1,
				C_HAS_SCLR           => 1,
				C_HAS_SINIT          => 0,
				C_HAS_SSET           => 0,
				C_MEM_INIT_FILE      => "xfft_v2_0_null.mif",
				C_MEM_INIT_RADIX     => 1,  
				C_READ_MIF           => 0,
				C_REG_LAST_BIT       => 1,
				C_SHIFT_TYPE         => 0, 
				C_SINIT_VAL          => "",
				C_SYNC_PRIORITY      => 0,
				C_SYNC_ENABLE        => 0,
				C_WIDTH              => C_WIDTH)
	    port map (
	      A     => open_a,
	      D     => D,
	      CLK   => CLK,
	      CE    => CE,
	      ACLR  => gnd,
	      ASET  => gnd,
	      AINIT => gnd,
	      SCLR  => SCLR,
	      SSET  => gnd,
	      SINIT => gnd,
	      Q     => Q);
	end generate;

	do_not_delay_signal: if C_DEPTH<1 generate
		Q <= D;
	end generate;
	
END xilinx;
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.c_shift_ram_v6_0_comp.all;

ENTITY fft20_shift_ram_1_sclr IS
	generic (
		C_DEPTH      : INTEGER := 6);
	port (
		D    : IN std_logic; 
		CLK  : IN std_logic;
		SCLR : IN std_logic;
		CE   : IN std_logic;
		Q    : OUT std_logic); 
END fft20_shift_ram_1_sclr;
	
ARCHITECTURE xilinx of fft20_shift_ram_1_sclr IS	

	signal I_d: std_logic_vector(0 downto 0);	
	signal I_q: std_logic_vector(0 downto 0);	
	signal gnd: std_logic;
	signal open_a: std_logic_vector(3 downto 0);
	constant inits: string(48 downto 1) := "000000000000000000000000000000000000000000000000";
	
BEGIN	
   
     gnd <= '0';
     delay_signal: if C_DEPTH>0 generate

	  shift_reg: C_SHIFT_RAM_V6_0
	    generic map (
	      C_ADDR_WIDTH         => 4,
	      C_DEFAULT_DATA       => "0",
	      C_DEFAULT_DATA_RADIX => 1,
	      C_DEPTH              => C_DEPTH,
	      C_ENABLE_RLOCS       => 0,
	      C_GENERATE_MIF       => 0,  
	      C_HAS_ACLR           => 0,
	      C_HAS_A              => 0,
	      C_HAS_AINIT          => 0,
	      C_HAS_ASET           => 0,
	      C_HAS_CE             => 1,
	      C_HAS_SCLR           => 1,
	      C_HAS_SINIT          => 0,
	      C_HAS_SSET           => 0,
	      C_MEM_INIT_FILE      => "xfft_v2_0_null.mif",
	      C_MEM_INIT_RADIX     => 1,  
	      C_READ_MIF           => 0,
	      C_REG_LAST_BIT       => 1,
	      C_SHIFT_TYPE         => 0, 
	      C_SYNC_PRIORITY      => 0,
	      C_SYNC_ENABLE        => 0,
	      C_WIDTH              => 1)
	    port map (
	      A     => open_a,
	      D     => I_D,
	      CLK   => CLK,
	      CE    => CE,
	      ACLR  => gnd,
	      ASET  => gnd,
	      AINIT => gnd,
	      SCLR  => SCLR,
	      SSET  => gnd,
	      SINIT => gnd,
	      Q     => I_Q);
	
			Q <= I_Q(0);
			I_D(0) <= D;

		end generate;

	do_not_delay_signal: if C_DEPTH<1 generate
		Q <= D;
		end generate;

END xilinx;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.prims_comps_v6_0.all;
use XilinxCoreLib.prims_utils_v6_0.all;

ENTITY fft20_c_lut IS
   generic (
      init : integer := 0;
      eqn  : string  := "";
      c_enable_rlocs : in boolean := false
      );
   port( I0         : in  std_logic;
         I1, I2, I3 : in  std_logic := '0';
         O          : out std_logic
         );
END fft20_c_lut;

ARCHITECTURE xilinx OF fft20_c_lut IS

   signal initsig : std_logic_vector(15 downto 0);
   signal once    : std_logic := '0';
begin

   one : process
      variable init4eqn : std_logic_vector( 15 downto 0);
   begin
      if( once = '0' ) then
         if ( eqn = "" ) then
            assert init /= 0
               report ("Constant 0 output. Use init or eqn generics to set xlut function.")
               severity warning;
            initsig <= std_logic_vector(to_unsigned(init, 16));
         else
            assert init = 0
               report ("Both eqn and init generics set. Using eqn.")
               severity warning;
            assert checkEQN(eqn) = "" 
               report checkEQN(eqn)
               severity failure;
            init4eqn := pfeqn2init( postfixeqn(eqn) );
            assert not Is_X( init4eqn )
               severity failure;
            initsig <= init4eqn;
         end if;
         once <= '1';
      end if;
      wait;
   end process one;

   p : process
      variable addr_slv            : std_logic_vector(3 downto 0);
      variable addr                : integer range 0 to 15;
      variable poss_addrs0         : std_logic_vector(0 to 15) := (others => '0');  
      variable poss_addrs1         : std_logic_vector(0 to 15) := (others => '0');  
      variable poss_addrs2         : std_logic_vector(0 to 15) := (others => '0');  
      variable poss_addrs3         : std_logic_vector(0 to 15) := (others => '0');  
      variable poss_addrs_combined : std_logic_vector(0 to 15) := (others => '0');  
      variable tmpsig              : std_logic                 := '0';
      variable i, j                : integer;
   begin
      if( once = '0') then
         wait on initsig;
      end if;
      addr_slv := (I3, I2, I1, I0);
      if((I0 /= '1' and I0 /= '0') or
         (I1 /= '1' and I1 /= '0') or
         (I2 /= '1' and I2 /= '0') or
         (I3 /= '1' and I3 /= '0')) then
         
         

         
         

         case I0 is
            when '0'    => poss_addrs0 := (0|2|4|6|8|10|12|14 => '1', others => '0');
            when '1'    => poss_addrs0 := (1|3|5|7|9|11|13|15 => '1', others => '0');
            when others => poss_addrs0 := (others => '1');
         end case;
         case I1 is
            when '0'    => poss_addrs1 := (0|1|4|5|8|9|12|13 => '1', others => '0');
            when '1'    => poss_addrs1 := (2|3|6|7|10|11|14|15 => '1', others => '0');
            when others => poss_addrs1 := (others => '1');
         end case;
         case I2 is
            when '0'    => poss_addrs2 := (0|1|2|3|8|9|10|11 => '1', others => '0');
            when '1'    => poss_addrs2 := (4|5|6|7|12|13|14|15 => '1', others => '0');
            when others => poss_addrs2 := (others => '1');
         end case;
         case I3 is
            when '0'    => poss_addrs3 := (0|1|2|3|4|5|6|7 => '1', others => '0');
            when '1'    => poss_addrs3 := (8|9|10|11|12|13|14|15 => '1', others => '0');
            when others => poss_addrs3 := (others => '1');
         end case;
         
         for i in 0 to 15 loop
            if(poss_addrs0(i) = '1' and poss_addrs1(i) = '1' and poss_addrs2(i) = '1' and poss_addrs3(i) = '1') then
               poss_addrs_combined(i) := '1';
            else
               poss_addrs_combined(i) := '0';
            end if;
         end loop;
         
         i := 0;
         while poss_addrs_combined(i) /= '1' loop
            i := i + 1;
         end loop;
         
         tmpsig := initsig(i);
         j      := i;
         
         for i in j+1 to 15 loop
            if poss_addrs_combined(i) = '1' then
               if(tmpsig /= initsig(i)) then
                  tmpsig := 'X';
               end if;
            end if;
         end loop;
         O <= tmpsig;
         
      else
         addr := to_integer(unsigned('0' & addr_slv));
         O    <= initsig(addr) after 1 ns;
      end if;
      wait on I0, I1, I2, I3;
   end process;
END xilinx;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.fft20_comps.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.C_REG_FD_V6_0_comp.all;

ENTITY fft20_c_lut_reg IS
	generic (
		eqn : STRING := "");
	port (
		I0	: IN  std_logic;   
		I1	: IN  std_logic;
		I2	: IN  std_logic;   
		I3 : IN  std_logic;
		CLK: IN  std_logic;
  		CE : IN  std_logic;
		Q	: OUT std_logic);
END fft20_c_lut_reg;

ARCHITECTURE xilinx OF fft20_c_lut_reg IS

	signal gnd: std_logic;
	signal ob: std_logic_vector(0 downto 0);
	signal qb: std_logic_vector(0 downto 0);

BEGIN
	gnd <= '0';
  
	u1: fft20_c_lut
	 	generic map (
      eqn  => eqn)
		port map (
      i0 => i0,
      i1 => i1,
      i2 => i2,
      i3 => i3,
      o  => ob(0));

  reg: C_REG_FD_V6_0
		generic map (
         C_WIDTH => 1,
         C_AINIT_VAL => "0",
         C_SINIT_VAL => "0",
         C_SYNC_PRIORITY => 1,
         C_SYNC_ENABLE => 0,
         C_HAS_CE => 1,
         C_HAS_ACLR => 0,
         C_HAS_ASET => 0,
         C_HAS_AINIT => 0,
         C_HAS_SCLR => 0,
         C_HAS_SSET => 0,
         C_HAS_SINIT => 0,
         C_ENABLE_RLOCS => 0)
       port map (
         D => ob,
         CLK => CLK,
         CE => CE,
         ACLR => gnd,
         ASET => gnd,
         AINIT => gnd,
         SCLR => gnd,
         SSET => gnd,
         SINIT => gnd,
         Q => qb);

	Q <= qb(0);

END xilinx;
LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.fft20_comps.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.C_REG_FD_V6_0_comp.all;

ENTITY fft20_c_lut_reg_sclr IS
	generic (
		eqn : STRING := "");
	port (
		I0	: IN  std_logic;   
		I1	: IN  std_logic;
		I2	: IN  std_logic;   
		I3 : IN  std_logic;
		CLK: IN  std_logic;
 		CE : IN  std_logic;
		SCLR : IN std_logic;
		Q	: OUT std_logic);
END fft20_c_lut_reg_sclr;

ARCHITECTURE xilinx OF fft20_c_lut_reg_sclr IS

	signal gnd: std_logic;
	signal ob: std_logic_vector(0 downto 0);
	signal qb: std_logic_vector(0 downto 0);

BEGIN
	gnd <= '0';
  
	u1: fft20_c_lut
	 	generic map (
      eqn  => eqn)
		port map (
      i0 => i0,
      i1 => i1,
      i2 => i2,
      i3 => i3,
      o  => ob(0));

  reg: C_REG_FD_V6_0
		generic map (
         C_WIDTH => 1,
         C_AINIT_VAL => "0",
         C_SINIT_VAL => "0",
         C_SYNC_PRIORITY => 1,
         C_SYNC_ENABLE => 0,
         C_HAS_CE => 1,
         C_HAS_ACLR => 0,
         C_HAS_ASET => 0,
         C_HAS_AINIT => 0,
         C_HAS_SCLR => 1,
         C_HAS_SSET => 0,
         C_HAS_SINIT => 0,
         C_ENABLE_RLOCS => 0)
       port map (
         D => ob,
         CLK => CLK,
         CE => CE,
         ACLR => gnd,
         ASET => gnd,
         AINIT => gnd,
         SCLR => SCLR,
         SSET => gnd,
         SINIT => gnd,
         Q => qb);

	Q <= qb(0);

END xilinx;
LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.c_compare_v6_0_comp.all;

ENTITY fft20_compare IS
  generic (
		C_WIDTH   : INTEGER;
		C_B_VALUE : STRING);
  port (
    CLK     : IN  std_logic;   
    CE      : IN  std_logic;   
		SCLR    : IN  std_logic;
    A       : IN  std_logic_vector(C_WIDTH-1 downto 0);   
    QA_EQ_B : OUT std_logic); 
END fft20_compare;

ARCHITECTURE xilinx OF fft20_compare IS

BEGIN

  equ: C_COMPARE_V6_0
    generic map (
      C_HAS_QA_GE_B => 0,
      C_HAS_QA_NE_B => 0,
      C_HAS_QA_LT_B => 0,
      C_HAS_ASET => 0,
      C_HAS_A_GT_B => 0,
      C_HAS_A_EQ_B => 0,
      C_DATA_TYPE => 0,  
      C_SYNC_PRIORITY => 1,
      C_HAS_SCLR => 1,
      C_HAS_QA_GT_B => 0,
      C_WIDTH => C_WIDTH,
      C_HAS_QA_EQ_B => 1,
      C_ENABLE_RLOCS => 1,
      C_HAS_A_LE_B => 0,
      C_AINIT_VAL => "0",
      C_PIPE_STAGES => 0,
      C_HAS_CE => 1,
      C_HAS_ACLR => 0,
      C_SYNC_ENABLE => 0,
      C_HAS_SSET => 0,
      C_HAS_QA_LE_B => 0,
      C_B_CONSTANT => 1,
      C_HAS_A_GE_B => 0,
      C_HAS_A_NE_B => 0,
      C_HAS_A_LT_B => 0,
      C_B_VALUE => C_B_VALUE)
		port map (
      A => A,
      CLK => CLK,
      CE => CE,
			SCLR => SCLR,
      QA_EQ_B => QA_EQ_B);

END xilinx;
LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.c_gate_bit_v6_0_comp.all;

ENTITY fft20_xor_bit_gate IS
  generic (
		C_INPUTS   : INTEGER);
  port (
    CLK      : IN  std_logic;   
    CE       : IN  std_logic;   
		I				 : IN  std_logic_vector(C_INPUTS-1 downto 0);
    Q        : OUT std_logic); 
END fft20_xor_bit_gate;

ARCHITECTURE xilinx OF fft20_xor_bit_gate IS

	signal gnd: std_logic;
	signal open_o: std_logic;

BEGIN
   gnd <='0';
	u1: C_GATE_BIT_V6_0
  	generic map (
      C_GATE_TYPE => 4,  
      C_INPUTS => C_INPUTS,
      C_INPUT_INV_MASK => "",
      C_PIPE_STAGES => 1,
      C_AINIT_VAL => "0",
      C_SINIT_VAL => "0",
      C_SYNC_PRIORITY => 1,
      C_SYNC_ENABLE => 0,
      C_HAS_O => 0,
      C_HAS_Q => 1,
      C_HAS_CE => 1,
      C_HAS_ACLR => 0,
      C_HAS_ASET => 0,
      C_HAS_AINIT => 0,
      C_HAS_SCLR => 0,
      C_HAS_SSET => 0,
      C_HAS_SINIT => 0,
      C_ENABLE_RLOCS => 1)
    port map (
			I => I,
      CLK => CLK,
      CE  => CE,
      ACLR => gnd,
      ASET => gnd,
      AINIT => gnd,
      SCLR => gnd,
      SSET => gnd,
      SINIT => gnd,
      O => open_o,
      Q => Q);

END xilinx;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY xilinxcorelib;
USE xilinxcorelib.c_gate_bit_v6_0_comp.all;

entity fft20_xnor_bit_gate is
    generic (
        C_INPUTS    : integer );
    port (
        CE          : in    std_logic;
        CLK         : in    std_logic;
        I           : in    std_logic_vector(C_INPUTS-1 downto 0);
        Q           : out   std_logic );
end fft20_xnor_bit_gate;

architecture xilinx of fft20_xnor_bit_gate is

    signal gnd      : std_logic;
    signal open_o   : std_logic;

begin

    gnd <='0';
    
    xnor_gate: c_gate_bit_v6_0
        generic map (
            c_gate_type => 5,  
            c_inputs => C_INPUTS,
            c_input_inv_mask => "",
            c_pipe_stages => 1,
            c_ainit_val => "0",
            c_sinit_val => "0",
            c_sync_priority => 1,
            c_sync_enable => 0,
            c_has_o => 0,
            c_has_q => 1,
            c_has_ce => 1,
            c_has_aclr => 0,
            c_has_aset => 0,
            c_has_ainit => 0,
            c_has_sclr => 0,
            c_has_sset => 0,
            c_has_sinit => 0,
            c_enable_rlocs => 1 )
        port map (
            i => i,
            clk => clk,
            ce  => ce,
            aclr => gnd,
            aset => gnd,
            ainit => gnd,
            sclr => gnd,
            sset => gnd,
            sinit => gnd,
            o => open_o,
            q => q );

end xilinx;

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.C_ADDSUB_V6_0_comp.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.fft20_comps.all;
USE XilinxCoreLib.fft20_pkg.all;

ENTITY fft20_io_addr_gen IS 
	generic (
		nfft_max : INTEGER := 7);
	port (
		CLK		: IN  std_logic;
		CE			: IN  std_logic;
		NFFT		: IN  std_logic_vector(3 downto 0);
		CNT_RN	: IN  std_logic_vector(nfft_max-1 downto 0);
		ADDR		: OUT std_logic_vector(nfft_max-3 downto 0);
		WE0		: OUT std_logic;
		WE1		: OUT std_logic;
		WE2		: OUT std_logic;
		WE3		: OUT std_logic;
		CTRL		: OUT std_logic_vector(1 downto 0));
END fft20_io_addr_gen;

ARCHITECTURE xilinx OF fft20_io_addr_gen IS

	CONSTANT num_dibit   : integer := (nfft_max+1)/2;  
	CONSTANT num_logic   : integer := (((nfft_max+1)/2) * ((nfft_max+1)/2-1))/2 + num_dibit;
	CONSTANT power2      : integer := num_dibit - (nfft_max/2);
	
	SIGNAL cnt_reg       : std_logic_vector(13 downto 0);
	SIGNAL cnt_int       : std_logic_vector(nfft_max downto 0);
	SIGNAL cnt_p2        : std_logic_vector(nfft_max-1 downto 0);
	
	SIGNAL I_ctrl          : std_logic_vector(1 downto 0);
	SIGNAL sel           : std_logic_vector(3 downto 0);
	
	SIGNAL d_low         : std_logic_vector(num_dibit-1 downto 0);
	SIGNAL d_high        : std_logic_vector(num_logic-1 downto 0);
	        
	SIGNAl six           : std_logic_vector(3 downto 0) := "0110";				 
	SIGNAL vcc           : std_logic;
	SIGNAL gnd           : std_logic;
	SIGNAL zero_vector2  : std_logic_vector(1 downto 0) := (OTHERS => '0');
	SIGNAL zero_vector3  : std_logic_vector(2 downto 0) := (OTHERS => '0');
	SIGNAL zero_vector4  : std_logic_vector(3 downto 0) := (OTHERS => '0');
	SIGNAL zero_vector5  : std_logic_vector(4 downto 0) := (OTHERS => '0');
	SIGNAL zero_vector6  : std_logic_vector(5 downto 0) := (OTHERS => '0');
	SIGNAL zero_vector7  : std_logic_vector(6 downto 0) := (OTHERS => '0');
	SIGNAL zero_vector8  : std_logic_vector(7 downto 0) := (OTHERS => '0');
	SIGNAL zero_vector_n : std_logic_vector(nfft_max-1 downto 0) := (OTHERS => '0');
	SIGNAL zero_vector_n3: std_logic_vector(nfft_max-3 downto 0) := (OTHERS => '0');
	SIGNAL zero_vector_x : std_logic_vector(13-nfft_max downto 0) := (OTHERS => '0');
	
	SIGNAL digit_rev_64    : std_logic_vector(11 downto 0);
	SIGNAL digit_rev_128   : std_logic_vector(11 downto 0);
	SIGNAL digit_rev_256   : std_logic_vector(11 downto 0);
	SIGNAL digit_rev_512   : std_logic_vector(11 downto 0);
	SIGNAL digit_rev_1024  : std_logic_vector(11 downto 0);
	SIGNAL digit_rev_2048  : std_logic_vector(11 downto 0);
	SIGNAL digit_rev_4096  : std_logic_vector(11 downto 0);
	SIGNAL digit_rev_8192  : std_logic_vector(11 downto 0);
	SIGNAL digit_rev_16384 : std_logic_vector(11 downto 0);
	
	SIGNAL open_ovfl    : std_logic;
	SIGNAL open_c_out   : std_logic;
	SIGNAL open_b_out   : std_logic;
	SIGNAL open_q_ovfl  : std_logic;
	SIGNAL open_q_c_out : std_logic;
	SIGNAL open_q_b_out : std_logic;
	SIGNAL open_s       : std_logic_vector(3 downto 0);

BEGIN

   gnd <= '0';
   vcc <= '1';
  reg_cnt0: fft20_reg_fde
    generic map (
      data_width => nfft_max)
    port map (
      D     => CNT_RN,
      CLK   => CLK,
      CE    => CE,
      Q     => cnt_reg(nfft_max-1 downto 0));
	
	not_16K:
	if nfft_max /= 14 generate
    cnt_reg(13 downto nfft_max) <= zero_vector_x;
	end generate;	

 sub:fft20_subtracter 
  generic map (
    C_A_WIDTH   => 4,
    C_B_WIDTH   => 4,
    C_OUT_WIDTH => 4)
  port map (
    CLK    => CLK,   
    CE     => CE,   
    DIN_A  => NFFT,   
    DIN_B  => six,   
    DOUT   => sel); 

  N_64_or_128:
	for index in 0 to 1 generate
		digit_rev_64(2*index+1 downto 2*index) <= cnt_reg(6-2*index-1 downto 6-2*index-2);
		digit_rev_128(2*index+1 downto 2*index) <= cnt_reg(6-2*index downto 6-2*index-1);
	end generate;
	digit_rev_128(4) <= cnt_reg(0);
	
	N_256_or_512:
	for index in 0 to 2 generate
		digit_rev_256(2*index+1 downto 2*index) <= cnt_reg(8-2*index-1 downto 8-2*index-2);
		digit_rev_512(2*index+1 downto 2*index) <= cnt_reg(8-2*index downto 8-2*index-1);
	end generate;	
	digit_rev_512(6) <= cnt_reg(0);  

	N_1024_or_2048:
	for index in 0 to 3 generate
	  digit_rev_1024(2*index+1 downto 2*index) <= cnt_reg(10-2*index-1 downto 10-2*index-2);
		digit_rev_2048(2*index+1 downto 2*index) <= cnt_reg(10-2*index downto 10-2*index-1);
	end generate;	
	digit_rev_2048(8) <= cnt_reg(0);

  N_4096_or_8192:
  for index in 0 to 4 generate
    digit_rev_4096(2*index+1 downto 2*index) <= cnt_reg(12-2*index-1 downto 12-2*index-2);
    digit_rev_8192(2*index+1 downto 2*index) <= cnt_reg(12-2*index downto 12-2*index-1);
  end generate;
  digit_rev_8192(10) <= cnt_reg(0);

	N_16384:
	for index in 0 to 5 generate
		digit_rev_16384(2*index+1 downto 2*index) <= cnt_reg(14-2*index-1 downto 14-2*index-2);
	end generate;

	digit_rev_64(11 downto 4) <= zero_vector8;
	digit_rev_128(11 downto 5) <= zero_vector7;
	digit_rev_256(11 downto 6) <= zero_vector6;
	digit_rev_512(11 downto 7) <= zero_vector5;
	digit_rev_1024(11 downto 8) <= zero_vector4;
	digit_rev_2048(11 downto 9) <= zero_vector3;
	digit_rev_4096(11 downto 10) <= zero_vector2;
	digit_rev_8192(11) <= gnd;
	
	no_mux:
	if nfft_max=6 generate
	  reg_64: fft20_reg_fde
    generic map (
      data_width => nfft_max-2)
    port map (
      D     => digit_rev_64(nfft_max-3 downto 0),
      CLK   => CLK,
      CE    => CE,
      Q     => ADDR(nfft_max-3 downto 0));
	end generate;

  has_mux:
	if nfft_max /=6 generate
    digit_rev_mux: fft20_mux_bus16
      generic map (
        C_WIDTH => nfft_max-2,
        C_INPUTS => nfft_max-5,
        C_SEL_WIDTH => log2_func(nfft_max-5))
      port map (
        MA  => digit_rev_64(nfft_max-3 downto 0),
        MB  => digit_rev_128(nfft_max-3 downto 0),
        MC  => digit_rev_256(nfft_max-3 downto 0),
        MD  => digit_rev_512(nfft_max-3 downto 0),
        ME  => digit_rev_1024(nfft_max-3 downto 0),
        MF  => digit_rev_2048(nfft_max-3 downto 0),
        MG  => digit_rev_4096(nfft_max-3 downto 0),
        MH  => digit_rev_8192(nfft_max-3 downto 0), 
        MAA => digit_rev_16384(nfft_max-3 downto 0),
        MAB => zero_vector_n3,
        MAC => zero_vector_n3,
        MAD => zero_vector_n3,
        MAE => zero_vector_n3,
        MAF => zero_vector_n3,
        MAG => zero_vector_n3,
        MAH => zero_vector_n3,
        S   => sel(log2_func(nfft_max-5)-1 downto 0),
        CLK => CLK,
        CE  => CE,
        Q   => ADDR(nfft_max-3 downto 0));
	end generate;		
			
  
	p4:
	if power2 = 0 generate
	  cnt_p2(nfft_max-3 downto 0) <= CNT_RN(nfft_max-2 downto 1);
    cnt_p2(nfft_max-2) <= CNT_RN(0);
		cnt_p2(nfft_max-1) <= CNT_RN(nfft_max-1);
	end generate;
  
	p2:
	if power2 = 1 generate
	  cnt_p2(nfft_max-2 downto 0) <= CNT_RN(nfft_max-1 downto 1);
    cnt_p2(nfft_max-1) <= CNT_RN(0);
	end generate;
  
  p2_mux: fft20_mux_bus
    generic map (
      C_WIDTH => nfft_max,
      C_INPUTS => 2,
      C_SEL_WIDTH => 1)
    port map (
      MA  => CNT_RN(nfft_max-1 downto 0),
      MB  => cnt_p2(nfft_max-1 downto 0),
      MC  => zero_vector_n,
      MD  => zero_vector_n,
      S   => NFFT(0 downto 0),
      CLK => CLK,
      CE  => CE,
      Q   => cnt_int(nfft_max-1 downto 0));

	cnt_int(nfft_max) <= '0';

	xor_in: 
	for index in 0 to num_dibit-1 generate
    d_low(index) <= cnt_int(2*index);
    d_high(index) <= cnt_int(2*index+1);
	end generate;

	and_row: 
	for i in 0 to num_dibit-1 generate
		and_column: 
		for j in i+1 to num_dibit-1 generate
			u0: fft20_c_lut
    		generic map (
      		eqn => "i0*i1")
    		port map (
      		I0 => cnt_int(2*i),
					I1 => cnt_int(2*j),
					I2 => gnd,
					I3 => gnd,
      		O  => d_high(out_index(i,j,num_dibit)+num_dibit));
   	end generate;
	end generate;
		
  u1: fft20_xor_bit_gate
	  generic map (
			C_INPUTS => num_dibit)
	  port map (
		CLK => CLK,   
		CE  => CE,   
		I => d_low,
		Q => I_CTRL(0)); 
		
	u2: fft20_xor_bit_gate
	  generic map (
			C_INPUTS => num_logic)
	  port map (
			CLK => CLK,   
			CE  => CE,   
			I => d_high, 
			Q => I_CTRL(1)); 

  w0: fft20_and2
    generic map (
      C_INPUT_INV_MASK => "11")
    port map (
      CLK    => CLK,
      CE     => CE,
      I      => I_CTRL,
      O      => WE0);

  w1: fft20_and2
    generic map (
      C_INPUT_INV_MASK => "10")
    port map (
      CLK    => CLK,
      CE     => CE,
      I      => I_CTRL,
      O      => WE1);

  w2: fft20_and2
    generic map (
      C_INPUT_INV_MASK => "01")
    port map (
      CLK    => CLK,
      CE     => CE,
      I      => I_CTRL,
      O      => WE2);

  w3: fft20_and2
    generic map (
      C_INPUT_INV_MASK => "00")
    port map (
      CLK    => CLK,
      CE     => CE,
      I      => I_CTRL,
      O      => WE3);

	CTRL <= I_CTRL;
END xilinx;


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

LIBRARY XilinxCoreLib;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.fft20_comps.all;
USE XilinxCoreLib.fft20_pkg.all;

ENTITY fft20_out_addr_gen IS 
	generic (
		nfft_max : INTEGER := 7);
	port (
		CLK     : IN  std_logic;
		CE      : IN  std_logic;
		NFFT    : IN  std_logic_vector(3 downto 0);
		CNT_RN  : IN  std_logic_vector(nfft_max-1 downto 0);
		ADDR  	: OUT std_logic_vector(nfft_max-3 downto 0);		
		SEL_CTRL: OUT std_logic_vector(1 downto 0));
END fft20_out_addr_gen;

ARCHITECTURE xilinx OF fft20_out_addr_gen IS

	CONSTANT num_dibit   : integer := (nfft_max+1)/2;  
	CONSTANT num_logic   : integer := (((nfft_max+1)/2) * ((nfft_max+1)/2-1))/2 + num_dibit;
	
	SIGNAL nfft_reg      : std_logic_vector(3 downto 0);
	SIGNAL cnt_rn_reg    : std_logic_vector(nfft_max downto 0);
	SIGNAL cnt_int       : std_logic_vector(nfft_max-1 downto 0);
	SIGNAL cnt_p2        : std_logic_vector(nfft_max-1 downto 0);
	
	SIGNAL bit_valid     : std_logic_vector(nfft_max-3 downto 0);
	SIGNAL p2            : std_logic_vector(5 downto 0);
	
	SIGNAL d_low         : std_logic_vector(num_dibit-1 downto 0);
	SIGNAL d_high        : std_logic_vector(num_logic-1 downto 0);
           
	SIGNAL vcc           : std_logic;
	SIGNAL gnd           : std_logic;
	SIGNAL zero_vector_n : std_logic_vector(nfft_max-1 downto 0);

BEGIN

   gnd <= '0';
   vcc <= '1';
   zero_vector_n <= (OTHERS => '0');
 reg_nfft: fft20_reg_fde
    generic map (
      data_width => 4)
    port map (
      D     => NFFT,
      CLK   => CLK,
      CE    => CE,
      Q     => nfft_reg);

  reg_cnt_rn: fft20_reg_fde
    generic map (
      data_width => nfft_max)
    port map (
      D     => CNT_RN,
      CLK   => CLK,
      CE    => CE,
      Q     => cnt_rn_reg(nfft_max-1 downto 0));
			
	cnt_rn_reg(nfft_max) <= gnd;		

  cnt_p2(1 downto 0) <= CNT_RN(1 downto 0);
  cnt_p2(nfft_max-2) <= CNT_RN(nfft_max-2);
  cnt_p2(nfft_max-1) <= CNT_RN(nfft_max-1);
		
  N32: fft20_c_lut  
    generic map (
      eqn => "~i0*i1*~i2*i3")
    port map (
      I0 => NFFT(3),
      I1 => NFFT(2),
      I2 => NFFT(1),
      I3 => NFFT(0),
      O  => p2(0));
 
  t1: if nfft_max > 6 generate
    N128: fft20_c_lut  
      generic map (
        eqn => "~i0*i1*i2*i3")
      port map (
        I0 => NFFT(3),
        I1 => NFFT(2),
        I2 => NFFT(1),
        I3 => NFFT(0),
        O  => p2(1));
	end generate;		
 
  t2: if nfft_max > 8 generate
    N512: fft20_c_lut  
      generic map (
        eqn => "i0*~i1*~i2*i3")
      port map (
        I0 => NFFT(3),
        I1 => NFFT(2),
        I2 => NFFT(1),
        I3 => NFFT(0),
        O  => p2(2));
	end generate;		
			
	t3: if nfft_max > 10 generate		
    N2048: fft20_c_lut  
      generic map (
        eqn => "i0*~i1*i2*i3")
      port map (
        I0 => NFFT(3),
        I1 => NFFT(2),
        I2 => NFFT(1),
        I3 => NFFT(0),
        O  => p2(3));
	end generate;		
	
	t4: if nfft_max > 12 generate
    N8192: fft20_c_lut  
      generic map (
        eqn => "i0*i1*~i2*i3")
      port map (
        I0 => NFFT(3),
        I1 => NFFT(2),
        I2 => NFFT(1),
        I3 => NFFT(0),
        O  => p2(4));
	end generate;		

  t5: if nfft_max > 14 generate
    N8192: fft20_c_lut  
      generic map (
        eqn => "i0*i1*i2*i3")
      port map (
        I0 => NFFT(3),
        I1 => NFFT(2),
        I2 => NFFT(1),
        I3 => NFFT(0),
        O  => p2(5));
  end generate;

  p2_case: 
	for index in 1 to (nfft_max+1)/2-2 generate
    c1: fft20_c_lut  
      generic map (
        eqn => "i0*i1+~i0*i2")
      port map (
        I0 => p2(index-1),
        I1 => CNT_RN(2*index+2),
        I2 => CNT_RN(2*index),
        I3 => gnd,
        O  => cnt_p2(2*index));
		
		cnt_p2(2*index+1) <= CNT_RN(2*index+1);
	end generate;		

  
  p2_mux: fft20_mux_bus
    generic map (
      C_WIDTH => nfft_max,
      C_INPUTS => 2,
      C_SEL_WIDTH => 1)
    port map (
      MA  => CNT_RN(nfft_max-1 downto 0),
      MB  => cnt_p2(nfft_max-1 downto 0),
      MC  => zero_vector_n,
      MD  => zero_vector_n,
      S   => NFFT(0 downto 0),
      CLK => CLK,
      CE  => CE,
      Q   => cnt_int(nfft_max-1 downto 0));

  b1: if nfft_max > 13 generate
    bit11: fft20_c_lut
      generic map (
        eqn => "i0*i1*i2*~i3") 
      port map (
        I0 => nfft_reg(3),
        I1 => nfft_reg(2),
        I2 => nfft_reg(1),
        I3 => nfft_reg(0),
        O  => bit_valid(11));
	end generate;		

  b2: if nfft_max > 12 generate
    bit10: fft20_c_lut
      generic map (
        eqn => "i0*i1*(i2*~i3+~i2*i3)") 
      port map (
        I0 => nfft_reg(3),
        I1 => nfft_reg(2),
        I2 => nfft_reg(1),
        I3 => nfft_reg(0),
        O  => bit_valid(10));
	end generate;		

  b3: if nfft_max > 11 generate
    bit9: fft20_c_lut
      generic map (
        eqn => "i0*i1")  
      port map (
        I0 => nfft_reg(3),
        I1 => nfft_reg(2),
        I2 => nfft_reg(1),
        I3 => nfft_reg(0),
        O  => bit_valid(9));
	end generate;		

  b4: if nfft_max > 10 generate
    bit8: fft20_c_lut
      generic map (
        eqn => "(i0*i1)+(i0*i2*i3)") 
      port map (
        I0 => nfft_reg(3),
        I1 => nfft_reg(2),
        I2 => nfft_reg(1),
        I3 => nfft_reg(0),
        O  => bit_valid(8));
	end generate;		

  b5: if nfft_max > 9 generate
    bit7: fft20_c_lut
      generic map (
        eqn => "(i0*i1)+(i0*i2)") 
      port map (
        I0 => nfft_reg(3),
        I1 => nfft_reg(2),
        I2 => nfft_reg(1),
        I3 => nfft_reg(0),
        O  => bit_valid(7));
	end generate;		

  b6: if nfft_max > 8 generate
    bit6: fft20_c_lut
      generic map (
        eqn => "(i0*i1)+(i0*i2)+(i0*i3)") 
      port map (
        I0 => nfft_reg(3),
        I1 => nfft_reg(2),
        I2 => nfft_reg(1),
        I3 => nfft_reg(0),
    	  O  => bit_valid(6));
	end generate;		

  b7: if nfft_max > 7 generate
    bit5: fft20_c_lut
      generic map (
        eqn => "i0") 
      port map (
        I0 => nfft_reg(3),
        I1 => nfft_reg(2),
        I2 => nfft_reg(1),
        I3 => nfft_reg(0),
        O  => bit_valid(5));
	end generate;		

  b8: if nfft_max > 6 generate
    bit4: fft20_c_lut
      generic map (
        eqn => "i0+(i1*i2*i3)") 
      port map (
        I0 => nfft_reg(3),
        I1 => nfft_reg(2),
        I2 => nfft_reg(1),
        I3 => nfft_reg(0),
        O  => bit_valid(4));
	end generate;		

  b9: if nfft_max > 5 generate
    bit3: fft20_c_lut
      generic map (
        eqn => "i0+(i1*i2)") 
      port map (
        I0 => nfft_reg(3),
        I1 => nfft_reg(2),
        I2 => nfft_reg(1),
        I3 => nfft_reg(0),
        O  => bit_valid(3));
	end generate;		

  b10: if nfft_max > 4 generate
    bit2: fft20_c_lut
      generic map (
        eqn => "i0+(i1*i2)+(i1*i3)") 
      port map (
        I0 => nfft_reg(3),
        I1 => nfft_reg(2),
        I2 => nfft_reg(1),
        I3 => nfft_reg(0),
        O  => bit_valid(2));
	end generate;		

  bit_valid(1) <= vcc;
	bit_valid(0) <= vcc;

  mask: fft20_and_bus_gate
    generic map (
      C_WIDTH => nfft_max-2)
    port map (
      CLK => CLK,
      CE  => CE, 
      IA  => cnt_int(nfft_max-3 downto 0),
      IB  => bit_valid(nfft_max-3 downto 0),
      Q   => ADDR);

  
	xor_in: 
	for index in 0 to num_dibit-1 generate
    d_low(index) <= cnt_rn_reg(2*index);
    d_high(index) <= cnt_rn_reg(2*index+1);
	end generate;

	and_row: 
	for i in 0 to num_dibit-1 generate
		and_column: 
		for j in i+1 to num_dibit-1 generate
			u0: fft20_c_lut
    		generic map (
      		eqn => "i0*i1")
    		port map (
      		I0 => cnt_rn_reg(2*i),
					I1 => cnt_rn_reg(2*j),
					I2 => gnd,
					I3 => gnd,
      		O  => d_high(out_index(i,j,num_dibit)+num_dibit));
   	end generate;
	end generate;
		
  u1: fft20_xor_bit_gate
	  generic map (
			C_INPUTS => num_dibit)
	  port map (
  	  CLK => CLK,   
    	CE  => CE,   
      I => d_low,
	    Q => SEL_CTRL(0)); 
  
	u2: fft20_xor_bit_gate
	  generic map (
			C_INPUTS => num_logic)
	  port map (
  	  CLK => CLK,   
    	CE  => CE,   
      I => d_high, 
	    Q => SEL_CTRL(1)); 

END xilinx;

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

LIBRARY XilinxCoreLib;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.fft20_comps.all;
USE XilinxCoreLib.fft20_pkg.all;

ENTITY fft20_rw_addr_gen IS 
	generic (
		nfft_max : INTEGER := 8);
	port (
		CLK         : IN  std_logic;
		CE          : IN  std_logic;
		CNT_RN      : IN  std_logic_vector(nfft_max-3 downto 0);
		NFFT        : IN  std_logic_vector(3 downto 0);
		RANK        : IN  std_logic_vector(2 downto 0);
		LAST_RANK   : IN  std_logic;
		ADDR0  	    : OUT std_logic_vector(nfft_max-3 downto 0);
		ADDR1  	    : OUT std_logic_vector(nfft_max-3 downto 0);
		ADDR2  	    : OUT std_logic_vector(nfft_max-3 downto 0);
		ADDR3  	    : OUT std_logic_vector(nfft_max-3 downto 0);
		SWITCH_CTRL : OUT std_logic_vector(1 downto 0));
END fft20_rw_addr_gen;

ARCHITECTURE xilinx OF fft20_rw_addr_gen IS

	CONSTANT num_dibit         : integer := (nfft_max+1)/2;  
	CONSTANT num_logic         : integer := (((nfft_max-1)/2) * ((nfft_max-1)/2-1))/2 + (num_dibit-1);
	CONSTANT power2            : integer := (nfft_max+1)/2 - (nfft_max/2);

	SIGNAL last_rank_reg       : std_logic_vector(0 downto 0);
	SIGNAL last_rank_vec       : std_logic_vector(0 downto 0);
	SIGNAL nfft_reg            : std_logic_vector(3 downto 0);
	SIGNAL cnt_reg             : std_logic_vector(nfft_max-3 downto 0);
	SIGNAL cnt_reg2            : std_logic_vector(nfft_max-3 downto 0);
	SIGNAL rank_reg            : std_logic_vector(2 downto 0);
	
	SIGNAL one_hot_rank        : std_logic_vector((nfft_max-1)/2-1 downto 0);
	SIGNAL one_hot_rank_reg    : std_logic_vector((nfft_max-1)/2-1 downto 0);
	
	SIGNAL n_128               : std_logic_vector(0 downto 0);
	SIGNAL n_512               : std_logic_vector(0 downto 0);
	SIGNAL n_2048              : std_logic_vector(0 downto 0);
	SIGNAL n_8192              : std_logic_vector(0 downto 0);
	                           
	SIGNAL n_128_reg           : std_logic_vector(0 downto 0);
	SIGNAL n_512_reg           : std_logic_vector(0 downto 0);
	SIGNAL n_2048_reg          : std_logic_vector(0 downto 0);
	SIGNAL n_8192_reg          : std_logic_vector(0 downto 0);
	                           
	SIGNAL n_128_reg2          : std_logic_vector(0 downto 0);
	SIGNAL n_512_reg2          : std_logic_vector(0 downto 0);
	SIGNAL n_2048_reg2         : std_logic_vector(0 downto 0);
	SIGNAL n_8192_reg2         : std_logic_vector(0 downto 0);
	
	SIGNAL cnt_2               : std_logic_vector(nfft_max-2 downto 0);
	SIGNAL signed_one          : std_logic_vector(1 downto 0);

	SIGNAL bypass              : std_logic_vector(0 downto 0);
	SIGNAL bypass_in           : std_logic_vector(1 downto 0);
	SIGNAL bypass_reg          : std_logic_vector(0 downto 0);
	                     
	SIGNAl addr_tmp            : std_logic_vector(nfft_max-3 downto 0);
	SIGNAl addr_mask           : std_logic_vector(nfft_max-3 downto 0);
	SIGNAl addr_base           : std_logic_vector(nfft_max-3 downto 0);
	SIGNAl addr_p2_last_rk     : std_logic_vector(nfft_max-2 downto 0);
	SIGNAl addr_p2_last_rk_reg : std_logic_vector(nfft_max-3 downto 0);
	
	SIGNAL addr0_bypass        : std_logic_vector(nfft_max-3 downto 0);
	SIGNAL addr1_bypass        : std_logic_vector(nfft_max-3 downto 0);
	SIGNAL addr2_bypass        : std_logic_vector(nfft_max-3 downto 0);
	SIGNAL addr3_bypass        : std_logic_vector(nfft_max-3 downto 0);
                             
	SIGNAL addr0_no_bypass     : std_logic_vector(nfft_max-3 downto 0);
	SIGNAL addr1_no_bypass     : std_logic_vector(nfft_max-3 downto 0);
	SIGNAL addr2_no_bypass     : std_logic_vector(nfft_max-3 downto 0);
	SIGNAL addr3_no_bypass     : std_logic_vector(nfft_max-3 downto 0);

	SIGNAL ctrl                : std_logic_vector(1 downto 0);
	SIGNAL ctrl_reg2           : std_logic_vector(1 downto 0);
	SIGNAL ctrl_bypass         : std_logic_vector(1 downto 0);

	SIGNAL sw_ctrl_no_bypass   : std_logic_vector(1 downto 0);
	SIGNAL sw_ctrl_bypass      : std_logic_vector(1 downto 0);

	SIGNAL d_low_bypass        : std_logic_vector(num_dibit-2 downto 0);
	SIGNAL d_high_bypass       : std_logic_vector(num_logic+num_dibit-2 downto 0);
	SIGNAL d_low               : std_logic_vector(num_dibit-2 downto 0);
	SIGNAL d_high              : std_logic_vector(num_logic+num_dibit-2-power2 downto 0);

	SIGNAL gnd                 : std_logic;
	SIGNAL gnd_vector          : std_logic_vector(0 downto 0);
	SIGNAL zero_vector2        : std_logic_vector(1 downto 0);
	SIGNAL zero_vector4        : std_logic_vector(3 downto 0);
	SIGNAL zero_vector6        : std_logic_vector(5 downto 0);
	SIGNAL zero_vector8        : std_logic_vector(7 downto 0);
	SIGNAL zero_vector10       : std_logic_vector(9 downto 0);
	SIGNAL zero_string         : std_logic_vector(nfft_max-3 downto 0);
	SIGNAL zero_string_p2      : std_logic_vector(nfft_max-3-power2 downto 0);

	SIGNAL rk0_a               : std_logic_vector(nfft_max-5-power2 downto 0);
	SIGNAL rk0_b               : std_logic_vector(nfft_max-5-power2 downto 0);
	SIGNAL rk0_c               : std_logic_vector(nfft_max-5-power2 downto 0);
	SIGNAL rk0_d               : std_logic_vector(nfft_max-5-power2 downto 0);
	SIGNAL rk0_e               : std_logic_vector(nfft_max-5-power2 downto 0);
	SIGNAL rk0_seq             : std_logic_vector(nfft_max-5-power2 downto 0);
 
	SIGNAL mux_in_a            : std_logic_vector(nfft_max-3-power2 downto 0);
	SIGNAL mux_in_b            : std_logic_vector(nfft_max-3-power2 downto 0);
	SIGNAL mux_in_c            : std_logic_vector(nfft_max-3-power2 downto 0);
	SIGNAL mux_in_d            : std_logic_vector(nfft_max-3-power2 downto 0);
	SIGNAL mux_in_e            : std_logic_vector(nfft_max-3-power2 downto 0);
	SIGNAL mux_in_f            : std_logic_vector(nfft_max-3-power2 downto 0);
	SIGNAL mux_in_g            : std_logic_vector(nfft_max-3-power2 downto 0);
  
	
	SIGNAL open_o1			       : std_logic;
BEGIN

	gnd             <= '0';
	gnd_vector      <= (OTHERS => '0');
	zero_vector2    <= (OTHERS => '0');
	zero_vector4    <= (OTHERS => '0');
	zero_vector6    <= (OTHERS => '0');
	zero_vector8    <= (OTHERS => '0');
	zero_vector10   <= (OTHERS => '0');
	zero_string     <= (OTHERS => '0');
	zero_string_p2  <= (OTHERS => '0');

  reg_cnt0: fft20_reg_fde
    generic map (
      data_width => nfft_max-2)
    port map (
      D     => CNT_RN,
      CLK   => CLK,
      CE    => CE,
      Q     => cnt_reg);

  reg_cnt1: fft20_reg_fde
    generic map (
      data_width => nfft_max-2)
    port map (
      D     => cnt_reg,
      CLK   => CLK,
      CE    => CE,
      Q     => cnt_reg2);

	reg_rank0: fft20_reg_fde
    generic map (
      data_width => 3)
    port map (
      D     => RANK,
      CLK   => CLK,
      CE    => CE,
      Q     => rank_reg);

	bypass_in(0) <= NFFT(0);
	bypass_in(1) <= LAST_RANK;
	
	
  gate1: fft20_and_gate
    generic map (
      C_INPUTS => 2,
      C_INPUT_INV_MASK => "00") 
    port map (
      CLK      => CLK,
      CE       => CE,
      I        => bypass_in,
      O        => open_o1,
      Q        => bypass(0));
			
	shift_reg_bypass: fft20_shift_ram
    generic map (
      C_DEPTH => 2,
      C_WIDTH => 1)
    port map (
      D   => bypass,
      CLK => CLK, 
      CE  => CE,
      Q   => bypass_reg);

  
  shift_reg: fft20_shift_ram
    generic map (
      C_DEPTH => 2,
      C_WIDTH => 4)
    port map (
      D   => NFFT,
      CLK => CLK, 
      CE  => CE,
      Q   => nfft_reg);

  
	
	
	
  rank_info_0: fft20_c_lut
	  generic map (
      eqn => "~i0*~i1*~i2")
    port map (
      I0 => RANK(2),
      I1 => RANK(1),
      I2 => RANK(0),
      I3 => gnd,
      O  => one_hot_rank(0));

  rank_info_1: fft20_c_lut
    generic map (
      eqn => "~i0*~i1*i2")
    port map (
      I0 => RANK(2),
      I1 => RANK(1),
      I2 => RANK(0),
      I3 => gnd,
      O  => one_hot_rank(1));

  h2:
	if nfft_max > 6 generate
	  rank_info_2: fft20_c_lut
      generic map (
        eqn => "~i0*i1*~i2*~i3")
      port map (
        I0 => RANK(2),
        I1 => RANK(1),
        I2 => RANK(0),
        I3 => n_128(0),
        O  => one_hot_rank(2));
	end generate;			

  h3:
  if nfft_max > 8 generate
    rank_info_3: fft20_c_lut
      generic map (
        eqn => "~i0*i1*i2*~i3")
      port map (
        I0 => RANK(2),
        I1 => RANK(1),
        I2 => RANK(0),
        I3 => n_512(0),
        O  => one_hot_rank(3));
	end generate;		

  h4:
  if nfft_max > 10 generate
    rank_info_4: fft20_c_lut
      generic map (
        eqn => "i0*~i1*~i2*~i3")
      port map (
        I0 => RANK(2),
        I1 => RANK(1),
        I2 => RANK(0),
        I3 => n_2048(0),
        O  => one_hot_rank(4));
	end generate;		
 
  h5:
  if nfft_max > 12 generate
	  rank_info_5: fft20_c_lut
      generic map (
        eqn => "i0*~i1*i2*~i3")
      port map (
        I0 => RANK(2),
        I1 => RANK(1),
        I2 => RANK(0),
        I3 => n_8192(0),
        O  => one_hot_rank(5));
	end generate;		
	
	h6:
	if nfft_max > 14 generate
	  rank_info_6: fft20_c_lut
      generic map (
        eqn => "i0*i1*~i2")
      port map (
        I0 => RANK(2),
        I1 => RANK(1),
        I2 => RANK(0),
        I3 => gnd,
      O  => one_hot_rank(6));
	end generate;		
		
  shift_reg_one_hot: fft20_shift_ram
    generic map (
      C_DEPTH => 3,
      C_WIDTH => (nfft_max-1)/2)
    port map (
      D   => one_hot_rank,
      CLK => CLK, 
      CE  => CE,
      Q   => one_hot_rank_reg);
	
	last_rank_vec(0) <= LAST_RANK;
	
	last_rk_reg: fft20_shift_ram
    generic map (
      C_DEPTH => 3,
      C_WIDTH => 1)
    port map (
      D   => last_rank_vec,
      CLK => CLK, 
      CE  => CE,
      Q   => last_rank_reg);
	
  
	n1:
	if nfft_max > 6 generate
	  N128: fft20_c_lut
      generic map (
        eqn => "~i0*i1*i2*i3")
      port map (
        I0 => NFFT(3),
        I1 => NFFT(2),
        I2 => NFFT(1),
        I3 => NFFT(0),
        O  => n_128(0));
  
    shift_reg_n_128: fft20_shift_ram
      generic map (
        C_DEPTH => 2,
        C_WIDTH => 1)
      port map (
        D   => n_128,
        CLK => CLK, 
        CE  => CE,
        Q   => n_128_reg);
	
    reg_n_128: fft20_reg_fde
      generic map (
        data_width => 1)
      port map (
        D     => n_128_reg,
        CLK   => CLK,
        CE    => CE,
        Q     => n_128_reg2);
	end generate;		
	
  
	n2: 
	if nfft_max > 8 generate
    N512: fft20_c_lut
      generic map (
        eqn => "i0*~i1*~i2*i3")
      port map (
        I0 => NFFT(3),
        I1 => NFFT(2),
        I2 => NFFT(1),
        I3 => NFFT(0),
        O  => n_512(0));
	  		
    shift_reg_n_512: fft20_shift_ram
      generic map (
        C_DEPTH => 2,
        C_WIDTH => 1)
      port map (
        D   => n_512,
        CLK => CLK, 
        CE  => CE,
        Q   => n_512_reg);
  
    reg_n_512: fft20_reg_fde
      generic map (
        data_width => 1)
      port map (
        D     => n_512_reg,
        CLK   => CLK,
        CE    => CE,
        Q     => n_512_reg2);
	end generate;		
  
  
	n3:
	if nfft_max > 10 generate
    N2048: fft20_c_lut
      generic map (
        eqn => "i0*~i1*i2*i3")
      port map (
        I0 => NFFT(3),
        I1 => NFFT(2),
        I2 => NFFT(1),
        I3 => NFFT(0),
        O  => n_2048(0));
 
    shift_reg_n_2048: fft20_shift_ram
      generic map (
        C_DEPTH => 2,
        C_WIDTH => 1)
      port map (
        D   => n_2048,
        CLK => CLK, 
        CE  => CE,
        Q   => n_2048_reg);
 
    reg_n_2048: fft20_reg_fde
      generic map (
        data_width => 1)
      port map (
        D     => n_2048_reg,
        CLK   => CLK,
        CE    => CE,
        Q     => n_2048_reg2);
	end generate;		

  
	n4: 
	if nfft_max > 12 generate
    N8192: fft20_c_lut
      generic map (
        eqn => "i0*i1*~i2*i3")
      port map (
        I0 => NFFT(3),
        I1 => NFFT(2),
        I2 => NFFT(1),
        I3 => NFFT(0),
        O  => n_8192(0));
 
    shift_reg_n_8192: fft20_shift_ram
      generic map (
        C_DEPTH => 2,
        C_WIDTH => 1)
      port map (
        D   => n_8192,
        CLK => CLK, 
        CE  => CE,
        Q   => n_8192_reg);
 
    reg_n_8192: fft20_reg_fde
      generic map (
        data_width => 1)
      port map (
        D     => n_8192_reg,
        CLK   => CLK,
        CE    => CE,
        Q     => n_8192_reg2);
	end generate;		

	xor_in: 
	for index in 0 to num_dibit-2 generate
		not_power_2:
		if (power2 = 0 or index /= num_dibit-2) generate
    	d_high(index) <= CNT_RN(2*index+1);
		end generate;	
    d_low(index) <= CNT_RN(2*index);
	end generate;

  and_row: 
	for i in 0 to num_dibit-2 generate
		and_column: 
		for j in i+1 to num_dibit-2 generate
			l0: fft20_c_lut
    		generic map (
      		eqn => "i0*i1")
    		port map (
      		I0 => CNT_RN(2*i),
	  			I1 => CNT_RN(2*j),
					I2 => gnd,
					I3 => gnd,
      		O  => d_high(out_index(i,j,num_dibit-1)+num_dibit-1-power2));
   	end generate;
	end generate;
		
  u0: fft20_xor_bit_gate
	  generic map (
			C_INPUTS => num_dibit-1)
	  port map (
  	  CLK => CLK,   
    	CE  => CE,   
      I => d_low,
      Q => ctrl(0)); 
  
  d_high(num_logic+num_dibit-2-power2 downto num_logic-power2) <= d_low;
	
  u1: fft20_xor_bit_gate
	  generic map (
			C_INPUTS => num_logic+num_dibit-1-power2)
	  port map (
  	  CLK => CLK,   
    	CE  => CE,   
      I => d_high, 
      Q => ctrl(1)); 

  shift_reg_ctrl: fft20_shift_ram
    generic map (
      C_DEPTH => 2,
      C_WIDTH => 2)
    port map (
      D   => ctrl,
      CLK => CLK,
      CE  => CE,
      Q   => ctrl_reg2);
		
  cnt_2(nfft_max-2 downto 1) <= cnt_reg(nfft_max-3 downto 0);
  cnt_2(0) <= '0';
 
  signed_one(1) <= '0';
  signed_one(0) <= cnt_reg(0);
 
  sub: fft20_subtracter
    generic map (
 	 	  C_A_WIDTH   => nfft_max-1,
      C_B_WIDTH   => 2,
      C_OUT_WIDTH => nfft_max-1)
    port map (
      CLK    => CLK,
      CE     => CE,
      DIN_A  => cnt_2,
      DIN_B  => signed_one,
      DOUT   => addr_p2_last_rk);

  reg_p2_last_rk: fft20_reg_fde
    generic map (
      data_width => nfft_max-2)
    port map (
      D     => addr_p2_last_rk(nfft_max-3 downto 0),
      CLK   => CLK,
      CE    => CE,
      Q     => addr_p2_last_rk_reg(nfft_max-3 downto 0));
		
  
  xor_in_bypass:
  for index in 0 to num_dibit-2 generate
   	d_low_bypass(index) <= addr_p2_last_rk(2*index);
  	d_high_bypass(index) <= addr_p2_last_rk(2*index+1);
  end generate;
   
  and_row_bypass:
   	for i in 0 to num_dibit-2 generate
   	  and_column_bypass:
    	for j in i+1 to num_dibit-2 generate
       	l2: fft20_c_lut
 	      	generic map (
 	         	eqn => "i0*i1")
 	        port map (
 	 	        I0 => addr_p2_last_rk(2*i),
 	   	      I1 => addr_p2_last_rk(2*j),
 	     	    I2 => gnd,
 	 					I3 => gnd,
           	O  => d_high_bypass(out_index(i,j,num_dibit-1)+num_dibit-1));
   		end generate;
   	end generate;
   
  u1_bypass: fft20_xor_bit_gate
    generic map (
   	  C_INPUTS => num_dibit-1)
   	port map (
     	CLK => CLK,
     	CE  => CE,
     	I   => d_low_bypass,
     	Q   => ctrl_bypass(0));
 	
 	d_high_bypass(num_logic+num_dibit-2 downto num_logic) <= d_low_bypass;
   	
  u2_bypass: fft20_xor_bit_gate
   	generic map (
   		C_INPUTS => num_logic+num_dibit-1)
   	port map (
   		CLK => CLK,
     	CE  => CE,
     	I   => d_high_bypass,
     	Q   => ctrl_bypass(1));

  NFFT_64_or_128:
  if (nfft_max=6 or nfft_max=7) generate
    mux_in_a(1 downto 0) <= ctrl(1 downto 0);    
    mux_in_a(3 downto 2) <= cnt_reg(3 downto 2);      
    mux_in_b(1 downto 0) <= cnt_reg(1 downto 0); 
    mux_in_b(3 downto 2) <= ctrl(1 downto 0);     
    mux_in_c(3 downto 0) <= cnt_reg(3 downto 0); 
 
    mux1: fft20_mux_bus
      generic map (
        C_WIDTH => 4,
        C_INPUTS => 4,
        C_SEL_WIDTH => 2)
      port map (
        MA  => mux_in_a,
        MB  => mux_in_b,
        MC  => mux_in_c,
        MD  => zero_string_p2,
        S   => rank_reg(1 downto 0),
        CLK => CLK,
        CE  => CE,
        Q   => addr_tmp(3 downto 0));

         NFFT_128: if (nfft_max= 7) generate
         addr_tmp(4) <= gnd;
        end generate;

  end generate; 

  NFFT_256:
  if (nfft_max=8 or nfft_max=9) generate
    rk0_a(1 downto 0) <= CNT_RN(5 downto 4);   
    rk0_a(3 downto 2) <= CNT_RN(3 downto 2);
    rk0_b(1 downto 0) <= CNT_RN(3 downto 2);   
    rk0_b(3 downto 2) <= zero_vector2;
	
	  rk0: fft20_mux_bus
      generic map (
        C_WIDTH => 4,
        C_INPUTS => 2,
        C_SEL_WIDTH => 1)
      port map (
        MA  => rk0_a,
        MB  => rk0_b,
        MC  => zero_vector4,
        MD  => zero_vector4,
        S   => NFFT(1 downto 1),
        CLK => CLK,
        CE  => CE,
        Q   => rk0_seq(3 downto 0));

    mux_in_a(1 downto 0) <= ctrl(1 downto 0);    
    mux_in_a(5 downto 2) <= rk0_seq(3 downto 0);          
    mux_in_b(1 downto 0) <= cnt_reg(1 downto 0); 
    mux_in_b(3 downto 2) <= ctrl(1 downto 0);         
    mux_in_b(5 downto 4) <= cnt_reg(3 downto 2);  
    mux_in_c(3 downto 0) <= cnt_reg(3 downto 0); 
    mux_in_c(5 downto 4) <= ctrl(1 downto 0);     
    mux_in_d(5 downto 0) <= cnt_reg(5 downto 0); 
 	 
 	  mux1: fft20_mux_bus
      generic map (
        C_WIDTH => 6,
        C_INPUTS => 4,
        C_SEL_WIDTH => 2)
      port map (
        MA  => mux_in_a,
        MB  => mux_in_b,
        MC  => mux_in_c,
        MD  => mux_in_d,
        S   => rank_reg(1 downto 0),
        CLK => CLK,
        CE  => CE,
        Q   => addr_tmp(5 downto 0));

        NFFT_512: if (nfft_max= 9) generate
         addr_tmp(6) <= gnd;
        end generate;

  end generate;

  NFFT_1024:
  if (nfft_max=10 or nfft_max=11) generate
    rk0_a(1 downto 0) <= CNT_RN(5 downto 4);   
    rk0_a(3 downto 2) <= CNT_RN(3 downto 2);
    rk0_a(5 downto 4) <= zero_vector2;
    rk0_b(1 downto 0) <= CNT_RN(7 downto 6);   
    rk0_b(3 downto 2) <= CNT_RN(5 downto 4);
    rk0_b(5 downto 4) <= CNT_RN(3 downto 2);
	  rk0_c(1 downto 0) <= CNT_RN(3 downto 2);   
    rk0_c(5 downto 2) <= zero_vector4;
	
	  rk0: fft20_mux_bus
      generic map (
        C_WIDTH => 6,
        C_INPUTS => 4,
        C_SEL_WIDTH => 2)
      port map (
        MA  => rk0_a, 
        MB  => rk0_b, 
        MC  => zero_vector6,
        MD  => rk0_c, 
        S   => NFFT(2 downto 1),
        CLK => CLK,
        CE  => CE,
        Q   => rk0_seq(5 downto 0));

    mux_in_a(1 downto 0) <= ctrl(1 downto 0);    
    mux_in_a(7 downto 2) <= rk0_seq(5 downto 0);              
    mux_in_b(1 downto 0) <= cnt_reg(1 downto 0); 
    mux_in_b(3 downto 2) <= ctrl(1 downto 0);             
    mux_in_b(7 downto 4) <= cnt_reg(5 downto 2);
    mux_in_c(3 downto 0) <= cnt_reg(3 downto 0); 
    mux_in_c(5 downto 4) <= ctrl(1 downto 0);         
    mux_in_c(7 downto 6) <= cnt_reg(5 downto 4); 
    mux_in_d(5 downto 0) <= cnt_reg(5 downto 0); 
    mux_in_d(7 downto 6) <= ctrl(1 downto 0); 
    mux_in_e(7 downto 0) <= cnt_reg(7 downto 0); 
 
    mux1: fft20_mux_bus8
      generic map (
        C_WIDTH => 8,
        C_INPUTS => 8,
        C_SEL_WIDTH => 3)
      port map (
        MA  => mux_in_a,
        MB  => mux_in_b,
        MC  => mux_in_c,
        MD  => mux_in_d,
        ME  => mux_in_e,
        MF  => zero_string_p2,
        MG  => zero_string_p2,
        MH  => zero_string_p2,
        S   => rank_reg(2 downto 0),
        CLK => CLK,
        CE  => CE,
        Q   => addr_tmp(7 downto 0));

        NFFT_2048: if (nfft_max=11) generate
         addr_tmp(8) <= gnd;
        end generate;

  end generate;
  
	NFFT_4096:
	if (nfft_max=12 or nfft_max=13) generate
    rk0_a(1 downto 0) <= CNT_RN(5 downto 4);   
    rk0_a(3 downto 2) <= CNT_RN(3 downto 2);
    rk0_a(7 downto 4) <= zero_vector4;
    rk0_b(1 downto 0) <= CNT_RN(7 downto 6);   
    rk0_b(3 downto 2) <= CNT_RN(5 downto 4);
    rk0_b(5 downto 4) <= CNT_RN(3 downto 2);
    rk0_b(7 downto 6) <= zero_vector2;
		rk0_c(1 downto 0) <= CNT_RN(9 downto 8);   
    rk0_c(3 downto 2) <= CNT_RN(7 downto 6);
    rk0_c(5 downto 4) <= CNT_RN(5 downto 4);
    rk0_c(7 downto 6) <= CNT_RN(3 downto 2);
		rk0_d(1 downto 0) <= CNT_RN(3 downto 2);   
    rk0_d(7 downto 2) <= zero_vector6;
	
	  rk0: fft20_mux_bus
      generic map (
        C_WIDTH => 8,
        C_INPUTS => 4,
        C_SEL_WIDTH => 2)
      port map (
        MA  => rk0_a, 
        MB  => rk0_b, 
        MC  => rk0_c, 
        MD  => rk0_d, 
        S   => NFFT(2 downto 1),
        CLK => CLK,
        CE  => CE,
        Q   => rk0_seq(7 downto 0));

    mux_in_a(1 downto 0) <= ctrl(1 downto 0);    
    mux_in_a(9 downto 2) <= rk0_seq(7 downto 0);
    mux_in_b(1 downto 0) <= cnt_reg(1 downto 0); 
    mux_in_b(3 downto 2) <= ctrl(1 downto 0);
    mux_in_b(9 downto 4) <= cnt_reg(7 downto 2);
    mux_in_c(3 downto 0) <= cnt_reg(3 downto 0); 
    mux_in_c(5 downto 4) <= ctrl(1 downto 0);
    mux_in_c(9 downto 6) <= cnt_reg(7 downto 4);
    mux_in_d(5 downto 0) <= cnt_reg(5 downto 0); 
    mux_in_d(7 downto 6) <= ctrl(1 downto 0);
    mux_in_d(9 downto 8) <= cnt_reg(7 downto 6);
    mux_in_e(7 downto 0) <= cnt_reg(7 downto 0); 
    mux_in_e(9 downto 8) <= ctrl(1 downto 0); 
    mux_in_f(9 downto 0) <= cnt_reg(9 downto 0); 
 
    mux1: fft20_mux_bus8
      generic map (
        C_WIDTH => 10,
        C_INPUTS => 8,
        C_SEL_WIDTH => 3)
      port map (
        MA  => mux_in_a,
        MB  => mux_in_b,
        MC  => mux_in_c,
        MD  => mux_in_d,
        ME  => mux_in_e,
        MF  => mux_in_f,
        MG  => zero_string_p2,
        MH  => zero_string_p2,
        S   => rank_reg(2 downto 0),
        CLK => CLK,
        CE  => CE,
        Q   => addr_tmp(9 downto 0));

        NFFT_8192: if (nfft_max=13) generate
         addr_tmp(10) <= gnd;
        end generate;

  end generate;

  NFFT_16384:
  if (nfft_max=14 or nfft_max=15) generate
    rk0_a(1 downto 0) <= CNT_RN(3 downto 2);   
    rk0_a(9 downto 2) <= zero_vector8;
	  rk0_b(1 downto 0) <= CNT_RN(5 downto 4);   
    rk0_b(3 downto 2) <= CNT_RN(3 downto 2);
    rk0_b(9 downto 4) <= zero_vector6;
    rk0_c(1 downto 0) <= CNT_RN(7 downto 6);   
    rk0_c(3 downto 2) <= CNT_RN(5 downto 4);
    rk0_c(5 downto 4) <= CNT_RN(3 downto 2);
    rk0_c(9 downto 6) <= zero_vector4;
		rk0_d(1 downto 0) <= CNT_RN(9 downto 8);   
    rk0_d(3 downto 2) <= CNT_RN(7 downto 6);
    rk0_d(5 downto 4) <= CNT_RN(5 downto 4);
    rk0_d(7 downto 6) <= CNT_RN(3 downto 2);
    rk0_d(9 downto 8) <= zero_vector2;
		rk0_e(1 downto 0) <= CNT_RN(11 downto 10);   
    rk0_e(3 downto 2) <= CNT_RN(9 downto 8);
    rk0_e(5 downto 4) <= CNT_RN(7 downto 6);
    rk0_e(7 downto 6) <= CNT_RN(5 downto 4);
    rk0_e(9 downto 8) <= CNT_RN(3 downto 2);
		
	  rk0: fft20_mux_bus8
      generic map (
        C_WIDTH => 10,
        C_INPUTS => 8,
        C_SEL_WIDTH => 3)
      port map (
        MA  => zero_vector10, 
        MB  => zero_vector10, 
        MC  => zero_vector10, 
        MD  => rk0_a, 
        ME  => rk0_b, 
        MF  => rk0_c, 
        MG  => rk0_d, 
        MH  => rk0_e, 
        S   => NFFT(3 downto 1),
        CLK => CLK,
        CE  => CE,
        Q   => rk0_seq(9 downto 0));

    mux_in_a(1 downto 0) <= ctrl(1 downto 0);    
    mux_in_a(11 downto 2) <= rk0_seq(9 downto 0);
    mux_in_b(1 downto 0) <= cnt_reg(1 downto 0); 
    mux_in_b(3 downto 2) <= ctrl(1 downto 0);
    mux_in_b(11 downto 4) <= cnt_reg(9 downto 2);
    mux_in_c(3 downto 0) <= cnt_reg(3 downto 0); 
    mux_in_c(5 downto 4) <= ctrl(1 downto 0);
    mux_in_c(11 downto 6) <= cnt_reg(9 downto 4);
    mux_in_d(5 downto 0) <= cnt_reg(5 downto 0); 
    mux_in_d(7 downto 6) <= ctrl(1 downto 0);
    mux_in_d(11 downto 8) <= cnt_reg(9 downto 6);
    mux_in_e(7 downto 0) <= cnt_reg(7 downto 0); 
    mux_in_e(9 downto 8) <= ctrl(1 downto 0);
    mux_in_e(11 downto 10) <= cnt_reg(9 downto 8);
    mux_in_f(9 downto 0) <= cnt_reg(9 downto 0); 
    mux_in_f(11 downto 10) <= ctrl(1 downto 0); 
    mux_in_g(11 downto 0) <= cnt_reg(11 downto 0); 
 
 	  mux1: fft20_mux_bus8
      generic map (
        C_WIDTH => 12,
        C_INPUTS => 8,
        C_SEL_WIDTH => 3)
      port map (
        MA  => mux_in_a,
        MB  => mux_in_b,
        MC  => mux_in_c,
        MD  => mux_in_d,
        ME  => mux_in_e,
        MF  => mux_in_f,
        MG  => mux_in_g,
        MH  => zero_string_p2,
        S   => rank_reg(2 downto 0),
        CLK => CLK,
        CE  => CE,
        Q   => addr_tmp(11 downto 0));

  end generate;

  addr_mask(3 downto 0) <= addr_tmp(3 downto 0);
	
	greater_than_64:
  if nfft_max > 6 generate
    mask0: fft20_c_lut
      generic map (
        eqn => "i0*i1")
      port map (
        I0 => addr_tmp(4),
        I1 => nfft_reg(3),
        I2 => gnd,
        I3 => gnd,
        O  => addr_mask(4));
	end generate;		
		
 	greater_than_128:
  if nfft_max > 7 generate
    mask1: fft20_c_lut
      generic map (
        eqn => "i0*i1")
      port map (
        I0 => addr_tmp(5),
        I1 => nfft_reg(3),
        I2 => gnd,
        I3 => gnd,
        O  => addr_mask(5));
	end generate;		

  greater_than_256:
  if nfft_max > 8 generate
    mask0: fft20_c_lut
      generic map (
        eqn => "i0*i1*(i2+i3)")
      port map (
        I0 => addr_tmp(6),
        I1 => nfft_reg(3),
        I2 => nfft_reg(2),
        I3 => nfft_reg(1),
        O  => addr_mask(6));
	end generate;			
  	
	greater_than_512:
	if nfft_max > 9 generate
    mask1: fft20_c_lut
      generic map (
        eqn => "i0*i1*(i2+i3)")
      port map (
        I0 => addr_tmp(7),
        I1 => nfft_reg(3),
        I2 => nfft_reg(2),
        I3 => nfft_reg(1),
        O  => addr_mask(7));
	end generate;		

  greater_than_1024:
	if nfft_max > 10 generate
    mask0: fft20_c_lut
      generic map (
        eqn => "i0*i1*i2")
      port map (
        I0 => addr_tmp(8),
        I1 => nfft_reg(3),
        I2 => nfft_reg(2),
        I3 => gnd,
        O  => addr_mask(8));
	end generate;			
   
	greater_than_2048:
	if nfft_max > 11 generate
	  mask1: fft20_c_lut
      generic map (
        eqn => "i0*i1*i2")
      port map (
        I0 => addr_tmp(9),
        I1 => nfft_reg(3),
        I2 => nfft_reg(2),
        I3 => gnd,
        O  => addr_mask(9));
  end generate;		

  greater_than_4096:
	if nfft_max > 12 generate
    mask0: fft20_c_lut
      generic map (
        eqn => "i0*i1*i2*i3")
      port map (
        I0 => addr_tmp(10),
        I1 => nfft_reg(3),
        I2 => nfft_reg(2),
        I3 => nfft_reg(1),
        O  => addr_mask(10));
	end generate;			
  
	greater_than_8192:
	if nfft_max > 13 generate
    mask1: fft20_c_lut
      generic map (
        eqn => "i0*i1*i2*i3")
      port map (
        I0 => addr_tmp(11),
        I1 => nfft_reg(3),
        I2 => nfft_reg(2),
        I3 => nfft_reg(1),
        O  => addr_mask(11));
	end generate;		

	reg_addr: fft20_reg_fde
    generic map (
      data_width => 4)
    port map (
      D     => addr_mask(3 downto 0),
      CLK   => CLK,
      CE    => CE,
      Q     => addr_base(3 downto 0));

	odd_address:
	for index in 2 to nfft_max/2-2 generate
	  reg: fft20_reg_fde
    generic map (
      data_width => 1)
    port map (
      D     => addr_mask(2*index+1 downto 2*index+1),
      CLK   => CLK,
      CE    => CE,
      Q     => addr_base(2*index+1 downto 2*index+1));
	end generate;	

  m1:
	if nfft_max > 6 generate
    mux_n_128: fft20_mux_bus
      generic map (
        C_WIDTH => 1,
        C_INPUTS => 2,
        C_SEL_WIDTH => 1)
      port map (
        MA  => addr_mask(4 downto 4),
        MB  => cnt_reg2(4 downto 4),
        MC  => gnd_vector,
        MD  => gnd_vector,
        S   => n_128_reg,
        CLK => CLK,
        CE  => CE,
        Q   => addr_base(4 downto 4));
	end generate;			
  
	m2:
	if nfft_max > 8 generate 
	  mux_n_512: fft20_mux_bus
			generic map (
        C_WIDTH => 1,
        C_INPUTS => 2,
        C_SEL_WIDTH => 1)
      port map (
        MA  => addr_mask(6 downto 6),
        MB  => cnt_reg2(6 downto 6),
        MC  => gnd_vector,
        MD  => gnd_vector,
        S   => n_512_reg,
        CLK => CLK,
        CE  => CE,
        Q   => addr_base(6 downto 6));
	end generate;			
  	
	m3:	
	if nfft_max > 10 generate	
    mux_n_2048: fft20_mux_bus
      generic map (
        C_WIDTH => 1,
        C_INPUTS => 2,
        C_SEL_WIDTH => 1)
      port map (
        MA  => addr_mask(8 downto 8),
        MB  => cnt_reg2(8 downto 8),
        MC  => gnd_vector,
        MD  => gnd_vector,
        S   => n_2048_reg,
        CLK => CLK,
        CE  => CE,
        Q   => addr_base(8 downto 8));
	end generate;			
  
	m4:
	if nfft_max > 12 generate
	  mux_n_8192: fft20_mux_bus
      generic map (
        C_WIDTH => 1,
        C_INPUTS => 2,
        C_SEL_WIDTH => 1)
      port map (
        MA  => addr_mask(10 downto 10),
        MB  => cnt_reg2(10 downto 10),
        MC  => gnd_vector,
        MD  => gnd_vector,
        S   => n_8192_reg,
        CLK => CLK,
        CE  => CE,
        Q   => addr_base(10 downto 10));
	end generate;			
	
  
	
 
  msb:
  if power2=0 generate
 	  addr0_bypass(nfft_max-3) <= gnd;
    addr1_bypass(nfft_max-3) <= gnd;
    addr2_bypass(nfft_max-3) <= gnd;
    addr3_bypass(nfft_max-3) <= gnd;
	end generate;

  
	addr0_bypass(0) <= addr_p2_last_rk_reg(0);
	addr1_bypass(0) <= addr_p2_last_rk_reg(0);
	addr2_bypass(0) <= addr_p2_last_rk_reg(0);
	addr3_bypass(0) <= addr_p2_last_rk_reg(0);
	
	
	d0_1: fft20_c_lut
    generic map (
      eqn => "i0@i1")
    port map (
      I0 => addr_p2_last_rk_reg(1),
      I1 => ctrl_bypass(1),
      I2 => gnd,
      I3 => gnd,
      O  => addr0_bypass(1));

  d1_1: fft20_c_lut
    generic map (
      eqn => "i0@(i1@i2)")
    port map (
      I0 => addr_p2_last_rk_reg(1),
      I1 => ctrl_bypass(1),
      I2 => ctrl_bypass(0),
      I3 => gnd,
      O  => addr1_bypass(1));

  d2_1: fft20_c_lut
    generic map (
      eqn => "i0@~i1")
    port map (
      I0 => addr_p2_last_rk_reg(1),
      I1 => ctrl_bypass(1),
      I2 => gnd,
      I3 => gnd,
      O  => addr2_bypass(1));

  d3_1: fft20_c_lut
    generic map (
      eqn => "i0@(i1@~i2)")
    port map (
      I0 => addr_p2_last_rk_reg(1),
      I1 => ctrl_bypass(1),
      I2 => ctrl_bypass(0),
      I3 => gnd,
      O  => addr3_bypass(1));

  
	addr0_bypass(2) <= addr_p2_last_rk_reg(2);
	addr1_bypass(2) <= addr_p2_last_rk_reg(2);
	addr2_bypass(2) <= addr_p2_last_rk_reg(2);
	addr3_bypass(2) <= addr_p2_last_rk_reg(2);

  
	addr_4:
	if nfft_max > 6 generate

    addr0_bypass(3) <= addr_p2_last_rk_reg(3);
    addr1_bypass(3) <= addr_p2_last_rk_reg(3);
    addr2_bypass(3) <= addr_p2_last_rk_reg(3);
    addr3_bypass(3) <= addr_p2_last_rk_reg(3);
	
    d0_4: fft20_c_lut
      generic map (
        
        eqn => "(i1*i2)+(i0*~i2)")
      port map (
        I0 => addr_p2_last_rk_reg(4),
        
        I1 => ctrl_bypass(0),
        I2 => n_128_reg2(0),
        I3 => gnd,
        O  => addr0_bypass(4));
  
    d1_4: fft20_c_lut
      generic map (
        
        eqn => "(~i1*i2)+(i0*~i2)")
			port map (
        I0 => addr_p2_last_rk_reg(4),
        
        I1 => ctrl_bypass(0),
        I2 => n_128_reg2(0),
        I3 => gnd,
        O  => addr1_bypass(4));
  
    addr2_bypass(4) <= addr0_bypass(4);
    addr3_bypass(4) <= addr1_bypass(4);

   	end generate;	
  
  
	addr_6:
	if nfft_max > 8 generate
    
		d0_5: fft20_c_lut
      generic map (
        eqn => "i0*~i1")
      port map (
        I0 => addr_p2_last_rk_reg(5),
        I1 => n_128_reg2(0),
        I2 => gnd,
        I3 => gnd,
        O  => addr0_bypass(5));
		
		addr1_bypass(5) <= addr0_bypass(5);
		addr2_bypass(5) <= addr0_bypass(5);
		addr3_bypass(5) <= addr0_bypass(5);
    

    d0_6: fft20_c_lut
      generic map (
        
        eqn => "i1*i2+i0*~i2")
      port map (
        I0 => addr_p2_last_rk_reg(6),
        
        I1 => ctrl_bypass(0),
        I2 => n_512_reg2(0),
        I3 => gnd,
        O  => addr0_bypass(6));
  
    d1_6: fft20_c_lut
      generic map (
        eqn => "~i1*i2+i0*~i2")
      port map (
        I0 => addr_p2_last_rk_reg(6),
        
        I1 => ctrl_bypass(0),
        I2 => n_512_reg2(0),
        I3 => gnd,
        O  => addr1_bypass(6));
  
    addr2_bypass(6) <= addr0_bypass(6);
    addr3_bypass(6) <= addr1_bypass(6);

	end generate;	

	
	addr_8:
	if nfft_max > 10 generate
    
    d0_7: fft20_c_lut
      generic map (
        eqn => "i0*~i1")
      port map (
        I0 => addr_p2_last_rk_reg(7),
        I1 => n_512_reg2(0),
        I2 => gnd,
        I3 => gnd,
        O  => addr0_bypass(7));

    addr1_bypass(7) <= addr0_bypass(7);
    addr2_bypass(7) <= addr0_bypass(7);
    addr3_bypass(7) <= addr0_bypass(7);
    
	
    d0_8: fft20_c_lut
      generic map (
        eqn => "i1*i2+i0*~i2")
      port map (
        I0 => addr_p2_last_rk_reg(8),
        
        I1 => ctrl_bypass(0),
        I2 => n_2048_reg2(0),
        I3 => gnd,
        O  => addr0_bypass(8));
  
    d1_8: fft20_c_lut
      generic map (
        eqn => "~i1*i2+i0*~i2")
      port map (
        I0 => addr_p2_last_rk_reg(8),
        
        I1 => ctrl_bypass(0),
        I2 => n_2048_reg2(0),
        I3 => gnd,
        O  => addr1_bypass(8));
  
    addr2_bypass(8) <= addr0_bypass(8);
    addr3_bypass(8) <= addr1_bypass(8);

   
  end generate;
	
  
  addr_10:
	if nfft_max > 12 generate
    
    d0_9: fft20_c_lut
      generic map (
        eqn => "i0*~i1")
      port map (
        I0 => addr_p2_last_rk_reg(9),
        I1 => n_2048_reg2(0),
        I2 => gnd,
        I3 => gnd,
        O  => addr0_bypass(9));

    addr1_bypass(9) <= addr0_bypass(9);
    addr2_bypass(9) <= addr0_bypass(9);
    addr3_bypass(9) <= addr0_bypass(9);
    
		
    d0_10: fft20_c_lut
      generic map (
        eqn => "i1*i2+i0*~i2")
      port map (
        I0 => addr_p2_last_rk_reg(10),
        
        I1 => ctrl_bypass(0),
        I2 => n_8192_reg2(0),
        I3 => gnd,
        O  => addr0_bypass(10));
  
    d1_10: fft20_c_lut
      generic map (
        eqn => "~i1*i2+i0*~i2")
      port map (
        I0 => addr_p2_last_rk_reg(10),
        
        I1 => ctrl_bypass(0),
        I2 => n_8192_reg2(0),
        I3 => gnd,
        O  => addr1_bypass(10));
  
    addr2_bypass(10) <= addr0_bypass(10);
    addr3_bypass(10) <= addr1_bypass(10);

	end generate;	
  
  addr_no_bypass_signals:
  for index in 0 to (nfft_max+1)/2-2 generate
    addr0_no_bypass(2*index) <= addr_base(2*index);
		c1:
		if (power2 = 0 or index /= num_dibit-2) generate
	    addr0_no_bypass(2*index+1) <= addr_base(2*index+1);
		end generate;	
		
    d1_even: fft20_c_lut
      generic map (
        eqn => "i0@(i1*~i2)")
      port map (
        I0 => addr_base(2*index),
        I1 => one_hot_rank_reg(index),
        I2 => last_rank_reg(0),
        I3 => gnd,
        O  => addr1_no_bypass(2*index));

    c2:
    if (power2 = 0 or index /= num_dibit-2) generate
      d1_odd: fft20_c_lut
        generic map (
          eqn => "~i0*i1+i1*~i2+i0*~i1*i2")
        port map (
          I0 => addr_base(2*index),
          I1 => addr_base(2*index+1),
          I2 => one_hot_rank_reg(index),
          I3 => gnd,
          O  => addr1_no_bypass(2*index+1));
		end generate;		
       
		addr2_no_bypass(2*index) <= addr_base(2*index);
		
		c3:
		if (power2 = 0 or index /= num_dibit-2) generate  
		  d2_odd: fft20_c_lut
        generic map (
          eqn => "i0@(i1*~i2)")
        port map (
          I0 => addr_base(2*index+1),
          I1 => one_hot_rank_reg(index),
          I2 => last_rank_reg(0),
          I3 => gnd,
          O  => addr2_no_bypass(2*index+1));
		end generate;		
				
    addr3_no_bypass(2*index) <= addr1_no_bypass(2*index);
		
		c4:
		if (power2 = 0 or index /= num_dibit-2) generate
      d3_odd: fft20_c_lut
        generic map (
          eqn => "i0*i1+i1*~(i2*~i3)+~i0*~i1*(i2*~i3)")
        port map (
          I0 => addr_base(2*index),
          I1 => addr_base(2*index+1),
          I2 => one_hot_rank_reg(index),
          I3 => last_rank_reg(0),
          O  => addr3_no_bypass(2*index+1));
		end generate;		
	end generate;			

	
	mux_addr0: fft20_mux_bus
    generic map (
      C_WIDTH => nfft_max-2,
      C_INPUTS => 2,
      C_SEL_WIDTH => 1)
    port map (
      MA  => addr0_no_bypass,
      MB  => addr0_bypass,
      MC  => zero_string,
      MD  => zero_string,
      S   => bypass_reg,
      CLK => CLK,
      CE  => CE,
      Q   => ADDR0(nfft_max-3 downto 0));
			
  
  mux_addr1: fft20_mux_bus
    generic map (
      C_WIDTH => nfft_max-2,
      C_INPUTS => 2,
      C_SEL_WIDTH => 1)
    port map (
      MA  => addr1_no_bypass,
      MB  => addr1_bypass,
      MC  => zero_string,
      MD  => zero_string,
      S   => bypass_reg,
      CLK => CLK,
      CE  => CE,
      Q   => ADDR1(nfft_max-3 downto 0));

  
  mux_addr2: fft20_mux_bus
    generic map (
      C_WIDTH => nfft_max-2,
      C_INPUTS => 2,
      C_SEL_WIDTH => 1)
    port map (
      MA  => addr2_no_bypass,
      MB  => addr2_bypass,
      MC  => zero_string,
      MD  => zero_string,
      S   => bypass_reg,
      CLK => CLK,
      CE  => CE,
      Q   => ADDR2(nfft_max-3 downto 0));

  
  mux_addr3: fft20_mux_bus
    generic map (
      C_WIDTH => nfft_max-2,
      C_INPUTS => 2,
      C_SEL_WIDTH => 1)
    port map (
      MA  => addr3_no_bypass,
      MB  => addr3_bypass,
      MC  => zero_string,
      MD  => zero_string,
      S   => bypass_reg,
      CLK => CLK,
      CE  => CE,
      Q   => ADDR3(nfft_max-3 downto 0));

  sw_ctrl_no_bypass(0) <= ctrl_reg2(0);
  sw_ctrl_bypass(0) <= ctrl_bypass(0);

  sw1: fft20_c_lut
    generic map (
      eqn => "i0@i1")
    port map (
      I0 => ctrl_reg2(1),
      I1 => ctrl_reg2(0),
      I2 => gnd,
      I3 => gnd,
      O  => sw_ctrl_no_bypass(1));

  sw2: fft20_c_lut
    generic map (
      eqn => "i0@i1")
    port map (
      I0 => ctrl_bypass(1),
      I1 => ctrl_bypass(0),
      I2 => gnd,
      I3 => gnd,
      O  => sw_ctrl_bypass(1));

  switch: fft20_mux_bus
    generic map (
      C_WIDTH => 2,
      C_INPUTS => 2,
      C_SEL_WIDTH => 1)
    port map (
      MA  => sw_ctrl_no_bypass,
      MB  => sw_ctrl_bypass,
      MC  => zero_vector2,
      MD  => zero_vector2,
      S   => bypass_reg,
      CLK => CLK,
      CE  => CE,
      Q   => SWITCH_CTRL);

END xilinx;



LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.c_gate_bit_bus_v6_0_comp.all;
USE XilinxCoreLib.c_addsub_v6_0_comp.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.fft20_comps.all;

ENTITY fft20_tw_gen_p2 IS
	generic (
		nfft_max    : INTEGER := 9);
  port (
   CLK        : IN  std_logic;   
   CE         : IN  std_logic;   
   CNT_RN     : IN  std_logic_vector(nfft_max-3 downto 0);
   RANK       : IN  std_logic_vector(2 downto 0);
   POWER2     : IN  std_logic;   
   LAST_RANK  : IN  std_logic;  
   TW1_ADDR   : OUT std_logic_vector(nfft_max-1 downto 0);
   TW2_ADDR   : OUT std_logic_vector(nfft_max-1 downto 0);
   TW3_ADDR   : OUT std_logic_vector(nfft_max-1 downto 0));
END fft20_tw_gen_p2;

ARCHITECTURE xilinx OF fft20_tw_gen_p2 IS
	

   signal m_0: std_logic_vector(nfft_max-3 downto 0);
   signal m_1: std_logic_vector(nfft_max-3 downto 0);
   signal m_2: std_logic_vector(nfft_max-3 downto 0);
   signal m_3: std_logic_vector(nfft_max-3 downto 0);
   signal m_4: std_logic_vector(nfft_max-3 downto 0);
   signal m_5: std_logic_vector(nfft_max-3 downto 0);
   signal m_6: std_logic_vector(nfft_max-3 downto 0);
   signal m_7: std_logic_vector(nfft_max-3 downto 0);
   
   signal tw_base   : std_logic_vector(nfft_max-3 downto 0);
   signal tw_p4     : std_logic_vector(nfft_max-2 downto 0);
   signal tw_p2_1: std_logic_vector(nfft_max-2 downto 0);
   signal tw_p2_2: std_logic_vector(nfft_max-2 downto 0);
   signal tw_p2_3: std_logic_vector(nfft_max-2 downto 0);
   signal tw_p2_4: std_logic_vector(nfft_max-2 downto 0);
   signal tw_p2_5: std_logic_vector(nfft_max-2 downto 0);
   
   signal tw2_tmp, tw3_tmp: std_logic_vector(nfft_max-2 downto 0);
   signal pre_tw1, pre_tw2         : std_logic_vector(nfft_max-2 downto 0);
   
   signal cnt_rn_delay: std_logic_vector(nfft_max-3 downto 0);
   signal rank_delay  : std_logic_vector(2 downto 0);
   signal rank_2delay : std_logic_vector(2 downto 0);
   signal mux_sel     : std_logic_vector(2 downto 0);
   
   signal ctrl                      : std_logic_vector(4 downto 0);
   signal p2_last_rk_vec            : std_logic_vector(0 downto 0);
   signal p2_last_rk_vec_delay      : std_logic_vector(0 downto 0);
   signal p2_last_rk_vec_delay_32768: std_logic_vector(0 downto 0);
   
   signal open_tmp    : std_logic_vector(nfft_max-2 downto 0);
   signal open_aclr   : std_logic;
   signal open_aset   : std_logic;
   signal open_ainit  : std_logic;
   signal open_sclr   : std_logic;
   signal open_sset   : std_logic;
   signal open_sinit  : std_logic;
   signal open_out    : std_logic_vector(nfft_max-2 downto 0);
   signal open_o      : std_logic_vector(nfft_max-3 downto 0);
   signal open_ovfl   : std_logic;
   signal open_c_out  : std_logic;
   signal open_b_out  : std_logic;
   signal open_q_ovfl : std_logic;
   signal open_q_c_out: std_logic;
   signal open_q_b_out: std_logic;
   signal open_and_o1 : std_logic;
   signal open_and_o2 : std_logic;
   signal open_and_o3 : std_logic;
   signal open_and_o4 : std_logic;
   signal open_s      : std_logic_vector(nfft_max-1 downto 0);
   
   signal zero_vec15: std_logic_vector(14 downto 0);
   signal zero_vec14: std_logic_vector(13 downto 0);
   signal zero_vec13: std_logic_vector(12 downto 0);
   signal zero_vec12: std_logic_vector(11 downto 0);
   signal zero_vec11: std_logic_vector(10 downto 0);
   signal zero_vec10: std_logic_vector(9 downto 0);
   signal zero_vec9: std_logic_vector(8 downto 0);
   signal zero_vec8: std_logic_vector(7 downto 0);
   signal zero_vec7: std_logic_vector(6 downto 0);
   signal zero_vec6: std_logic_vector(5 downto 0);
   signal zero_vec5: std_logic_vector(4 downto 0);
   signal zero_vec4: std_logic_vector(3 downto 0);
   signal zero_vec3: std_logic_vector(2 downto 0);
   signal zero_vec2: std_logic_vector(1 downto 0);
   signal zero_vec1: std_logic_vector(0 downto 0);
   signal zero     : std_logic;
   signal vcc      : std_logic;
BEGIN

   zero_vec15 <= (OTHERS => '0');
   zero_vec14 <= (OTHERS => '0');
	zero_vec13 <= (OTHERS => '0');
	zero_vec12 <= (OTHERS => '0');
	zero_vec11 <= (OTHERS => '0');
	zero_vec10 <= (OTHERS => '0');
	zero_vec9 <= (OTHERS => '0');
	zero_vec8 <= (OTHERS => '0');
	zero_vec7 <= (OTHERS => '0');
	zero_vec6 <= (OTHERS => '0');
	zero_vec5 <= (OTHERS => '0');
	zero_vec4 <= (OTHERS => '0');
	zero_vec3 <= (OTHERS => '0');
	zero_vec2 <= (OTHERS => '0');
	zero_vec1 <= (OTHERS => '0');
	zero      <= '0';
	vcc       <= '1';

	ctrl(4) <= rank(1);
	ctrl(3) <= rank(2);
	ctrl(2) <= POWER2;
	ctrl(1) <= LAST_RANK;
	ctrl(0) <= rank(0);
	
  fft20_and2: fft20_and_gate
    generic map (
      C_INPUTS => 2,
      C_INPUT_INV_MASK => "00")
    port map (
      CLK => CLK,   
      CE  => CE,   
      I => ctrl(2 downto 1),
			O => open_and_o1,
      Q => p2_last_rk_vec(0));
	
	delay_p2_last_rk_vec: fft20_reg_fde 
	  generic map (
      data_width => 1)
    port map (
      D   => p2_last_rk_vec,
      CLK => CLK,
      CE  => CE,
      Q   => p2_last_rk_vec_delay);

  SEL_SIGNAL:
  if nfft_max>7 generate
    mux_sel_0: fft20_and_gate
      generic map (
        C_INPUTS => 3,
        C_INPUT_INV_MASK => "000")
      port map (
        CLK => CLK,
        CE  => CE,
        I => ctrl(2 downto 0),
        O => open_and_o2,
        Q => mux_sel(0));
 
    mux_sel_1: fft20_and_gate
      generic map (
        C_INPUTS => 3,
        C_INPUT_INV_MASK => "000")
      port map (
        CLK => CLK,
        CE  => CE,
        I => ctrl(3 downto 1),
        O => open_and_o3,
        Q => mux_sel(1));
    
		GREATER_THAN_2048:
    if nfft_max>11 generate
    	mux_sel_2: fft20_and_gate
        generic map (
          C_INPUTS => 4,
          C_INPUT_INV_MASK => "0000")
        port map (
          CLK => CLK,
          CE  => CE,
          I => ctrl(4 downto 1),
          O => open_and_o4,
          Q => mux_sel(2));
 	 	end generate;		
	end generate;		

	N_MAX_128:
  if nfft_max=7 generate
 	  m_0 <= zero_vec5;
 	 	m_1(2 downto 0) <= zero_vec3;
 	 	m_1(4 downto 3) <= CNT_RN(1 downto 0);
 	 	m_2(0 downto 0) <= zero_vec1;
 	 	m_2(4 downto 1) <= CNT_RN(3 downto 0);
 	 	m_3 <= CNT_RN(4 downto 0);
     
 	  mux1: fft20_mux_bus8
      generic map (
        C_WIDTH => 5,
        C_INPUTS => 4,
        C_SEL_WIDTH => 2)
      port map (
        MA  => m_0,
        MB  => m_1,
        MC  => m_2,
        MD  => m_3,
 	   		ME  => zero_vec5,
 	 			MF  => zero_vec5,
 	 			MG  => zero_vec5,
 	 			MH  => zero_vec5,
        S   => RANK(1 downto 0),
        CLK => CLK,
        CE  => CE,
        Q   => tw_base); 
	end generate;		
  
  N_MAX_512:
  if nfft_max=9 generate
 	  m_0 <= zero_vec7;
 	 	m_1(4 downto 0) <= zero_vec5;
 	 	m_1(6 downto 5) <= CNT_RN(1 downto 0);
 	 	m_2(2 downto 0) <= zero_vec3;
 	 	m_2(6 downto 3) <= CNT_RN(3 downto 0);
 	 	m_3(0 downto 0) <= zero_vec1;
 	 	m_3(6 downto 1) <= CNT_RN(5 downto 0);
    m_4 <= CNT_RN(6 downto 0);
     
 	  mux1: fft20_mux_bus8
      generic map (
        C_WIDTH => 7,
        C_INPUTS => 5,
        C_SEL_WIDTH => 3)
      port map (
        MA  => m_0,
        MB  => m_1,
        MC  => m_2,
        MD  => m_3,
 	   		ME  => m_4,
 	 			MF  => zero_vec7,
 	 			MG  => zero_vec7,
 	 			MH  => zero_vec7,
        S   => RANK,
        CLK => CLK,
        CE  => CE,
        Q   => tw_base); 
	end generate;		
  
	N_MAX_2048:
  if nfft_max=11 generate
 	  m_0 <= zero_vec9;
 	 	m_1(6 downto 0) <= zero_vec7;
 	 	m_1(8 downto 7) <= CNT_RN(1 downto 0);
 	 	m_2(4 downto 0) <= zero_vec5;
 	 	m_2(8 downto 5) <= CNT_RN(3 downto 0);
 	 	m_3(2 downto 0) <= zero_vec3;
 	 	m_3(8 downto 3) <= CNT_RN(5 downto 0);
    m_4(0 downto 0) <= zero_vec1;
    m_4(8 downto 1) <= CNT_RN(7 downto 0);
		m_5 <= CNT_RN(8 downto 0);
     
 	  mux1: fft20_mux_bus8
      generic map (
        C_WIDTH => 9,
        C_INPUTS => 6,
        C_SEL_WIDTH => 3)
      port map (
        MA  => m_0,
        MB  => m_1,
        MC  => m_2,
        MD  => m_3,
 	   		ME  => m_4,
 	 			MF  => m_5,
 	 			MG  => zero_vec9,
 	 			MH  => zero_vec9,
        S   => RANK,
        CLK => CLK,
        CE  => CE,
        Q   => tw_base); 
	end generate;		
  
	N_MAX_8192:
  if nfft_max=13 generate
 	  m_0 <= zero_vec11;
 	 	m_1(8 downto 0) <= zero_vec9;
 	 	m_1(10 downto 9) <= CNT_RN(1 downto 0);
 	 	m_2(6 downto 0) <= zero_vec7;
 	 	m_2(10 downto 7) <= CNT_RN(3 downto 0);
 	 	m_3(4 downto 0) <= zero_vec5;
 	 	m_3(10 downto 5) <= CNT_RN(5 downto 0);
    m_4(2 downto 0) <= zero_vec3;
    m_4(10 downto 3) <= CNT_RN(7 downto 0);
		m_5(0 downto 0) <= zero_vec1;
		m_5(10 downto 1) <= CNT_RN(9 downto 0);
		m_6 <= CNT_RN(10 downto 0);
     
 	  mux1: fft20_mux_bus8
      generic map (
        C_WIDTH => 11,
        C_INPUTS => 7,
        C_SEL_WIDTH => 3)
      port map (
        MA  => m_0,
        MB  => m_1,
        MC  => m_2,
        MD  => m_3,
 	   		ME  => m_4,
 	 			MF  => m_5,
 	 			MG  => m_6,
 	 			MH  => zero_vec11,
        S   => RANK,
        CLK => CLK,
        CE  => CE,
        Q   => tw_base); 
	end generate;		
	
  N_MAX_32768:
  if nfft_max=15 generate
 	  m_0 <= zero_vec13;
 	 	m_1(10 downto 0) <= zero_vec11;
 	 	m_1(12 downto 11) <= CNT_RN(1 downto 0);
 	 	m_2(8 downto 0) <= zero_vec9;
 	 	m_2(12 downto 9) <= CNT_RN(3 downto 0);
 	 	m_3(6 downto 0) <= zero_vec7;
 	 	m_3(12 downto 7) <= CNT_RN(5 downto 0);
    m_4(4 downto 0) <= zero_vec5;
    m_4(12 downto 5) <= CNT_RN(7 downto 0);
		m_5(2 downto 0) <= zero_vec3;
		m_5(12 downto 3) <= CNT_RN(9 downto 0);
		m_6(0 downto 0) <= zero_vec1;
		m_6(12 downto 1) <= CNT_RN(11 downto 0);
		m_7 <= CNT_RN(12 downto 0);
     
 	  mux1: fft20_mux_bus8
      generic map (
        C_WIDTH => 13,
        C_INPUTS => 8,
        C_SEL_WIDTH => 3)
      port map (
        MA  => m_0,
        MB  => m_1,
        MC  => m_2,
        MD  => m_3,
 	   		ME  => m_4,
 	 			MF  => m_5,
 	 			MG  => m_6,
 	 			MH  => m_7,
        S   => RANK,
        CLK => CLK,
        CE  => CE,
        Q   => tw_base); 
	end generate;		
  
	cnt_w_delay: fft20_reg_fde 
	  generic map (
      data_width => nfft_max-2)
    port map (
      D   => CNT_RN,
      CLK => CLK,
      CE  => CE,
      Q   => cnt_rn_delay);

	N_MAX_128_or_512:
    if nfft_max<11 generate
    rank_w_delay: fft20_reg_fde 
 	   generic map (
        data_width => 1)
      port map (
        D   => RANK(2 downto 2),
        CLK => CLK,
        CE  => CE,
        Q   => rank_delay(2 downto 2));
 
    rank_delay_reg: fft20_reg_fde 
 	   generic map (
        data_width => 1)
      port map (
        D   => rank_delay(2 downto 2),
        CLK => CLK,
        CE  => CE,
        Q   => rank_2delay(2 downto 2));
	end generate;			

  N_MAX_greater_than_512:
    if nfft_max>=11 generate
    rank_w_delay: fft20_reg_fde 
 	   generic map (
        data_width => 3)
      port map (
        D   => RANK,
        CLK => CLK,
        CE  => CE,
        Q   => rank_delay);
 
    rank_delay_reg: fft20_reg_fde 
 	   generic map (
        data_width => 3)
      port map (
        D   => rank_delay(2 downto 0),
        CLK => CLK,
        CE  => CE,
        Q   => rank_2delay(2 downto 0));
	end generate;			

	tw_p4(nfft_max-3 downto 0) <= tw_base(nfft_max-3 downto 0);
	tw_p4(nfft_max-2) <= '0';
  
  N_MAX_128_MUX_FOR_P2:
  if nfft_max=7 generate
	  tw_p2_1(0) <= cnt_rn_delay(0);
    tw_p2_1(1) <= '0';
    tw_p2_1(5 downto 2) <= cnt_rn_delay(4 downto 1);
	
		mux: fft20_mux_bus8
      generic map (
        C_WIDTH => 6,
        C_INPUTS => 2,
        C_SEL_WIDTH => 1)
      port map (
        MA  => tw_p4,
        MB  => tw_p2_1,
        MC  => zero_vec6,
        MD  => zero_vec6,
        ME  => zero_vec6,
        MF  => zero_vec6,
        MG  => zero_vec6,
        MH  => zero_vec6,
        S   => p2_last_rk_vec,
        CLK => CLK,
        CE  => CE,
        Q   => pre_tw1);

		tw3_tmp(0 downto 0) <= pre_tw1(0 downto 0);
  	tw3_tmp(5 downto 2) <= pre_tw1(5 downto 2);
		
		invert_2nd: fft20_c_lut
    generic map (
      eqn => "i0@(i1*~i2)")
    port map (
      I0 => pre_tw1(1),
      I1 => p2_last_rk_vec_delay(0),
      I2 => rank_2delay(2),
      I3 => zero,
      O  => tw3_tmp(1));
	end generate;

  N_MAX_512_MUX_FOR_P2:
	if nfft_max=9 generate
	  tw_p2_1(1 downto 0) <= "00";
    tw_p2_1(2) <= cnt_rn_delay(0);
    tw_p2_1(3) <= '0';
    tw_p2_1(7 downto 4) <= cnt_rn_delay(4 downto 1);
	
    tw_p2_2(0) <= cnt_rn_delay(0);
    tw_p2_2(1) <= '0';
    tw_p2_2(7 downto 2) <= cnt_rn_delay(6 downto 1);
	
		mux: fft20_mux_bus8
      generic map (
        C_WIDTH => 8,
        C_INPUTS => 3,
        C_SEL_WIDTH => 2)
      port map (
        MA  => tw_p4,
        MB  => tw_p2_1,
        MC  => tw_p2_2,
        MD  => zero_vec8,
        ME  => zero_vec8,
        MF  => zero_vec8,
        MG  => zero_vec8,
        MH  => zero_vec8,
        S   => mux_sel(1 downto 0),
        CLK => CLK,
        CE  => CE,
        Q   => pre_tw1);

		tw3_tmp(0 downto 0) <= pre_tw1(0 downto 0);
  	tw3_tmp(2) <= pre_tw1(2);
		tw3_tmp(7 downto 4) <= pre_tw1(7 downto 4);
	
		invert_2nd: fft20_c_lut
    generic map (
      eqn => "i0@(i1*i2)")
    port map (
      I0 => pre_tw1(1),
      I1 => p2_last_rk_vec_delay(0),
      I2 => rank_2delay(2),
      I3 => zero,
      O  => tw3_tmp(1));

		invert_4th: fft20_c_lut
    generic map (
      eqn => "i0@(i1*~i2)")
    port map (
      I0 => pre_tw1(3),
      I1 => p2_last_rk_vec_delay(0),
      I2 => rank_2delay(2),
      I3 => zero,
      O  => tw3_tmp(3));		
	end generate;

  N_MAX_2048_MUX_FOR_P2:
	if nfft_max=11 generate
	  tw_p2_1(3 downto 0) <= "0000";
    tw_p2_1(4) <= cnt_rn_delay(0);
    tw_p2_1(5) <= '0';
    tw_p2_1(9 downto 6) <= cnt_rn_delay(4 downto 1);
	
    tw_p2_2(1 downto 0) <= "00";
    tw_p2_2(2) <= cnt_rn_delay(0);
    tw_p2_2(3) <= '0';
    tw_p2_2(9 downto 4) <= cnt_rn_delay(6 downto 1);
	
    tw_p2_3(0) <= cnt_rn_delay(0);
    tw_p2_3(1) <= '0';
    tw_p2_3(9 downto 2) <= cnt_rn_delay(8 downto 1);
	
		mux: fft20_mux_bus8
      generic map (
        C_WIDTH => 10,
        C_INPUTS => 4,
        C_SEL_WIDTH => 2)
      port map (
        MA  => tw_p4,
        MB  => tw_p2_1,
        MC  => tw_p2_2,
        MD  => tw_p2_3,
        ME  => zero_vec10,
        MF  => zero_vec10,
        MG  => zero_vec10,
        MH  => zero_vec10,
        S   => mux_sel(1 downto 0),
        CLK => CLK,
        CE  => CE,
        Q   => pre_tw1);

		tw3_tmp(0 downto 0) <= pre_tw1(0 downto 0);
  	tw3_tmp(2) <= pre_tw1(2);
  	tw3_tmp(4) <= pre_tw1(4);
		tw3_tmp(9 downto 6) <= pre_tw1(9 downto 6);
	
		invert_2nd: fft20_c_lut
    generic map (
      eqn => "i0@(i1*i2*i3)")
    port map (
      I0 => pre_tw1(1),
      I1 => p2_last_rk_vec_delay(0),
      I2 => rank_2delay(2),
      I3 => rank_2delay(0),
      O  => tw3_tmp(1));

		invert_4th: fft20_c_lut
    generic map (
      eqn => "i0@(i1*i2*~i3)")
    port map (
      I0 => pre_tw1(3),
      I1 => p2_last_rk_vec_delay(0),
      I2 => rank_2delay(2),
      I3 => rank_2delay(0),
      O  => tw3_tmp(3));		
			
		invert_6th: fft20_c_lut
    generic map (
      eqn => "i0@(i1*i2*i3)")
    port map (
      I0 => pre_tw1(5),
      I1 => p2_last_rk_vec_delay(0),
      I2 => rank_2delay(1),
      I3 => rank_2delay(0),
      O  => tw3_tmp(5));			
	end generate;

  N_MAX_8192_MUX_FOR_P2:
	if nfft_max=13 generate
	  tw_p2_1(5 downto 0) <= "000000";
    tw_p2_1(6) <= cnt_rn_delay(0);
    tw_p2_1(7) <= '0';
    tw_p2_1(11 downto 8) <= cnt_rn_delay(4 downto 1);
	
    tw_p2_2(3 downto 0) <= "0000";
    tw_p2_2(4) <= cnt_rn_delay(0);
    tw_p2_2(5) <= '0';
    tw_p2_2(11 downto 6) <= cnt_rn_delay(6 downto 1);
	
    tw_p2_3(1 downto 0) <= "00";
    tw_p2_3(2) <= cnt_rn_delay(0);
    tw_p2_3(3) <= '0';
    tw_p2_3(11 downto 4) <= cnt_rn_delay(8 downto 1);
	
    tw_p2_4(0) <= cnt_rn_delay(0);
    tw_p2_4(1) <= '0';
    tw_p2_4(11 downto 2) <= cnt_rn_delay(10 downto 1);
	
		mux: fft20_mux_bus8
      generic map (
        C_WIDTH => 12,
        C_INPUTS => 8,
        C_SEL_WIDTH => 3)
      port map (
        MA  => tw_p4,
        MB  => tw_p2_1,
        MC  => tw_p2_2,
        MD  => tw_p2_3,
        ME  => zero_vec12,
        MF  => zero_vec12,
        MG  => tw_p2_4,
        MH  => zero_vec12,
        S   => mux_sel,
        CLK => CLK,
        CE  => CE,
        Q   => pre_tw1);

		tw3_tmp(0 downto 0) <= pre_tw1(0 downto 0);
  	tw3_tmp(2) <= pre_tw1(2);
  	tw3_tmp(4) <= pre_tw1(4);
  	tw3_tmp(6) <= pre_tw1(6);
		tw3_tmp(11 downto 8) <= pre_tw1(11 downto 8);
	
		invert_2nd: fft20_c_lut
    generic map (
      eqn => "i0@(i1*i2*i3)")
    port map (
      I0 => pre_tw1(1),
      I1 => p2_last_rk_vec_delay(0),
      I2 => rank_2delay(2),
      I3 => rank_2delay(1),
      O  => tw3_tmp(1));

		invert_4th: fft20_c_lut
    generic map (
      eqn => "i0@(i1*i2*i3)")
    port map (
      I0 => pre_tw1(3),
      I1 => p2_last_rk_vec_delay(0),
      I2 => rank_2delay(2),
      I3 => rank_2delay(0),
      O  => tw3_tmp(3));		
				
		invert_6th: fft20_c_lut
    generic map (
      eqn => "i0@(i1*~i2*~i3)")
    port map (
      I0 => pre_tw1(5),
      I1 => p2_last_rk_vec_delay(0),
      I2 => rank_2delay(1),
      I3 => rank_2delay(0),
      O  => tw3_tmp(5));			

		invert_8th: fft20_c_lut
    generic map (
      eqn => "i0@(i1*i2*i3)")
    port map (
      I0 => pre_tw1(7),
      I1 => p2_last_rk_vec_delay(0),
      I2 => rank_2delay(1),
      I3 => rank_2delay(0),
      O  => tw3_tmp(7));					
	end generate;

  N_MAX_32768_MUX_FOR_P2:
	if nfft_max=15 generate
	  tw_p2_1(7 downto 0) <= "00000000";
    tw_p2_1(8) <= cnt_rn_delay(0);
    tw_p2_1(9) <= '0';
    tw_p2_1(13 downto 10) <= cnt_rn_delay(4 downto 1);
	
		tw_p2_2(5 downto 0) <= "000000";
    tw_p2_2(6) <= cnt_rn_delay(0);
    tw_p2_2(7) <= '0';
    tw_p2_2(13 downto 8) <= cnt_rn_delay(6 downto 1);
	
    tw_p2_3(3 downto 0) <= "0000";
    tw_p2_3(4) <= cnt_rn_delay(0);
    tw_p2_3(5) <= '0';
    tw_p2_3(13 downto 6) <= cnt_rn_delay(8 downto 1);
	
    tw_p2_4(1 downto 0) <= "00";
    tw_p2_4(2) <= cnt_rn_delay(0);
    tw_p2_4(3) <= '0';
    tw_p2_4(13 downto 4) <= cnt_rn_delay(10 downto 1);
	
    tw_p2_5(0) <= cnt_rn_delay(0);
    tw_p2_5(1) <= '0';
    tw_p2_5(13 downto 2) <= cnt_rn_delay(12 downto 1);
	
		mux: fft20_mux_bus8
      generic map (
        C_WIDTH => 14,
        C_INPUTS => 8,
        C_SEL_WIDTH => 3)
      port map (
        MA  => tw_p4,
        MB  => tw_p2_1,
        MC  => tw_p2_2,
        MD  => tw_p2_3,
        ME  => zero_vec14,
        MF  => zero_vec14,
        MG  => tw_p2_4,
        MH  => tw_p2_5,
        S   => mux_sel,
        CLK => CLK,
        CE  => CE,
        Q   => pre_tw1);

		tw3_tmp(0 downto 0) <= pre_tw1(0 downto 0);
  	tw3_tmp(2) <= pre_tw1(2);
  	tw3_tmp(4) <= pre_tw1(4);
  	tw3_tmp(6) <= pre_tw1(6);
  	tw3_tmp(8) <= pre_tw1(8);
		tw3_tmp(13 downto 10) <= pre_tw1(13 downto 10);

		rank_w_delay_32768: fft20_reg_fde
    generic map (
      data_width => 1)
    port map (
      D   => mux_sel(1 downto 1),
      CLK => CLK,
      CE  => CE,
      Q   => p2_last_rk_vec_delay_32768);

		invert_2nd: fft20_c_lut 
    generic map (
      eqn => "i0@(i1*i2*i3)")
    port map (
      I0 => pre_tw1(1),
      I1 => p2_last_rk_vec_delay_32768(0),
      I2 => rank_2delay(1),
      I3 => rank_2delay(0),
      O  => tw3_tmp(1));

		invert_4th: fft20_c_lut
    generic map (
      eqn => "i0@(i1*i2*~i3)")
    port map (
      I0 => pre_tw1(3),
      I1 => p2_last_rk_vec_delay(0),
      I2 => rank_2delay(1),
      I3 => rank_2delay(0),
      O  => tw3_tmp(3));		
				
		invert_6th: fft20_c_lut
    generic map (
      eqn => "i0@(i1*~i2*i3)")
    port map (
      I0 => pre_tw1(5),
      I1 => p2_last_rk_vec_delay(0),
      I2 => rank_2delay(1),
      I3 => rank_2delay(0),
      O  => tw3_tmp(5));			

		invert_8th: fft20_c_lut
    generic map (
      eqn => "i0@(i1*~i2*~i3)")
    port map (
      I0 => pre_tw1(7),
      I1 => p2_last_rk_vec_delay(0),
      I2 => rank_2delay(1),
      I3 => rank_2delay(0),
      O  => tw3_tmp(7));					
		
		invert_10th: fft20_c_lut
    generic map (
      eqn => "i0@(i1*~i2)")
    port map (
      I0 => pre_tw1(9),
      I1 => p2_last_rk_vec_delay(0),
      I2 => rank_2delay(2),
      I3 => zero,
      O  => tw3_tmp(9));					
	end generate;

  tw2_tmp(0) <= '0';
  tw2_tmp(nfft_max-2 downto 1)<= tw_base(nfft_max-3 downto 0);
		
  nor_gate: C_GATE_BIT_BUS_V6_0
    generic map (
      C_GATE_TYPE => 3, 
      C_WIDTH => nfft_max-1,
      C_INPUT_INV_MASK => "1111111111111111",
      C_AINIT_VAL => "",
      C_SINIT_VAL => "",
      C_SYNC_PRIORITY => 0,
      C_SYNC_ENABLE   => 0,
      C_HAS_O => 0,    
      C_HAS_Q => 1,    
      C_HAS_CE => 1,   
      C_HAS_ACLR => 0, 
      C_HAS_ASET => 0, 
      C_HAS_AINIT => 0,
      C_HAS_SCLR => 0, 
      C_HAS_SSET => 0, 
      C_HAS_SINIT => 0,
      C_ENABLE_RLOCS => 1)
    port map (
		  I => tw2_tmp, 
      CTRL => p2_last_rk_vec(0),
      CLK => CLK,
      CE => CE,
      ACLR => open_aclr,
      ASET => open_aset,
      AINIT => open_ainit,
      SCLR => open_sclr,
      SSET => open_sset,
      SINIT => open_sinit,
      O => open_out,
      Q => pre_tw2);
			
  tw1_reg: fft20_reg_fde 
    generic map (
      data_width => nfft_max-1)
    port map (
      D   => pre_tw1,
      CLK => CLK,
      CE  => CE,
      Q   => TW1_ADDR(nfft_max-2 downto 0));
	
	TW1_ADDR(nfft_max-1) <= '0';

  tw2_reg: fft20_reg_fde 
    generic map (
      data_width => nfft_max-1)
    port map (
      D   => pre_tw2,
      CLK => CLK,
      CE  => CE,
      Q   => TW2_ADDR(nfft_max-2 downto 0));
	
	TW2_ADDR(nfft_max-1) <= '0';

  tw3_add: C_ADDSUB_V6_0
    generic map (
      C_A_WIDTH => nfft_max-1,
      C_B_WIDTH => nfft_max-1,
      C_OUT_WIDTH => nfft_max,
      C_LOW_BIT => 0,
      C_HIGH_BIT => nfft_max-1,
      C_ADD_MODE => 0, 
      C_A_TYPE => 1, 
      C_B_TYPE => 1, 
      C_B_CONSTANT => 0,
      C_B_VALUE => "",
      C_AINIT_VAL => "",
      C_SINIT_VAL => "",
      C_BYPASS_ENABLE => 0,
      C_BYPASS_LOW => 0,
      C_SYNC_ENABLE => 0,
      C_SYNC_PRIORITY => 0,
      C_PIPE_STAGES => 1,
      C_LATENCY => 1,
      C_HAS_S => 0,
      C_HAS_Q => 1,
      C_HAS_C_IN => 0,
      C_HAS_C_OUT => 0,
      C_HAS_Q_C_OUT => 0,
      C_HAS_B_IN => 1,
      C_HAS_B_OUT => 0,
      C_HAS_Q_B_OUT => 0,
      C_HAS_OVFL => 0,
      C_HAS_Q_OVFL => 0,
      C_HAS_CE => 1,
      C_HAS_ADD => 0,
      C_HAS_BYPASS => 0,
      C_HAS_A_SIGNED => 1,
      C_HAS_B_SIGNED => 1,
      C_HAS_ACLR => 0,
      C_HAS_ASET => 0,
      C_HAS_AINIT => 0,
      C_HAS_SCLR => 0,
      C_HAS_SSET => 0,
      C_HAS_SINIT => 0,
      C_ENABLE_RLOCS => 1,
      C_HAS_BYPASS_WITH_CIN => 0)
    port map (
      A => tw3_tmp,
      B => pre_tw2,
      CLK => CLK,
      ADD => zero,
      C_IN => zero,
      B_IN => vcc,
      CE => CE,
      BYPASS => zero,
      ACLR => zero,
      ASET => zero,
      AINIT => zero,
      SCLR => zero,
      SSET => zero,
      SINIT => zero,
      A_SIGNED => zero,
      B_SIGNED => zero,
      OVFL => open_ovfl,
      C_OUT => open_c_out,
      B_OUT => open_b_out,
      Q_OVFL => open_q_ovfl,
      Q_C_OUT => open_q_c_out,
      Q_B_OUT => open_q_b_out,
      S => open_s,
      Q => TW3_ADDR);

END xilinx;
LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.c_gate_bit_bus_v6_0_comp.all;
USE XilinxCoreLib.c_addsub_v6_0_comp.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.fft20_comps.all;

ENTITY fft20_tw_gen_p4 IS
	generic (
		nfft_max    : INTEGER := 10);
  port (
   CLK        : IN  std_logic;   
   CE         : IN  std_logic;   
   CNT_RN     : IN  std_logic_vector(nfft_max-3 downto 0);
   RANK       : IN  std_logic_vector(2 downto 0);
   POWER2     : IN  std_logic;   
   LAST_RANK  : IN  std_logic;  
   TW1_ADDR   : OUT std_logic_vector(nfft_max-1 downto 0);
   TW2_ADDR   : OUT std_logic_vector(nfft_max-1 downto 0);
   TW3_ADDR   : OUT std_logic_vector(nfft_max-1 downto 0));
END fft20_tw_gen_p4;

ARCHITECTURE xilinx OF fft20_tw_gen_p4 IS
	
   signal m_0: std_logic_vector(nfft_max-3 downto 0);
   signal m_1: std_logic_vector(nfft_max-3 downto 0);
   signal m_2: std_logic_vector(nfft_max-3 downto 0);
   signal m_3: std_logic_vector(nfft_max-3 downto 0);
   signal m_4: std_logic_vector(nfft_max-3 downto 0);
   signal m_5: std_logic_vector(nfft_max-3 downto 0);
   signal m_6: std_logic_vector(nfft_max-3 downto 0);
   signal m_7: std_logic_vector(nfft_max-3 downto 0);
   
   signal tw_base                 : std_logic_vector(nfft_max-3 downto 0);
   signal tw_p4                   : std_logic_vector(nfft_max-2 downto 0);
   signal tw_p2_1: std_logic_vector(nfft_max-2 downto 0);
   signal tw_p2_2: std_logic_vector(nfft_max-2 downto 0);
   signal tw_p2_3: std_logic_vector(nfft_max-2 downto 0);
   signal tw_p2_4: std_logic_vector(nfft_max-2 downto 0);
   signal tw_p2_5: std_logic_vector(nfft_max-2 downto 0);
   
   signal tw2_tmp, tw3_tmp: std_logic_vector(nfft_max-2 downto 0);
   signal pre_tw1, pre_tw2         : std_logic_vector(nfft_max-2 downto 0);
   
   signal cnt_rn_delay: std_logic_vector(nfft_max-4 downto 0);
   signal rank_delay  : std_logic_vector(2 downto 0);
   signal rank_2delay : std_logic_vector(2 downto 0);
   signal mux_sel     : std_logic_vector(2 downto 0);
   
   signal ctrl                : std_logic_vector(4 downto 0);
   signal p2_last_rk_vec      : std_logic_vector(0 downto 0);
   signal p2_last_rk_vec_delay: std_logic_vector(0 downto 0);
   
   signal open_tmp    : std_logic_vector(nfft_max-2 downto 0);
   signal open_aclr   : std_logic;
   signal open_aset   : std_logic;
   signal open_ainit  : std_logic;
   signal open_sclr   : std_logic;
   signal open_sset   : std_logic;
   signal open_sinit  : std_logic;
   signal open_out    : std_logic_vector(nfft_max-2 downto 0);
   signal open_o      : std_logic_vector(nfft_max-3 downto 0);
   signal open_ovfl   : std_logic;
   signal open_c_out  : std_logic;
   signal open_b_out  : std_logic;
   signal open_q_ovfl : std_logic;
   signal open_q_c_out: std_logic;
   signal open_q_b_out: std_logic;
   signal open_and_o1 : std_logic;
   signal open_and_o2 : std_logic;
   signal open_and_o3 : std_logic;
   signal open_and_o4 : std_logic;
   signal open_s      : std_logic_vector(nfft_max-1 downto 0);

   signal zero_vec15: std_logic_vector(14 downto 0);
   signal zero_vec14: std_logic_vector(13 downto 0);
   signal zero_vec13: std_logic_vector(12 downto 0);
   signal zero_vec12: std_logic_vector(11 downto 0);
   signal zero_vec11: std_logic_vector(10 downto 0);
   signal zero_vec10: std_logic_vector(9 downto 0);
   signal zero_vec9: std_logic_vector(8 downto 0);
   signal zero_vec8: std_logic_vector(7 downto 0);
   signal zero_vec7: std_logic_vector(6 downto 0);
   signal zero_vec6: std_logic_vector(5 downto 0);
   signal zero_vec5: std_logic_vector(4 downto 0);
   signal zero_vec4: std_logic_vector(3 downto 0);
   signal zero_vec3: std_logic_vector(2 downto 0);
   signal zero_vec2: std_logic_vector(1 downto 0);
   signal zero_vec1: std_logic_vector(0 downto 0);
   signal zero     : std_logic;
   signal vcc      : std_logic;
BEGIN

   zero_vec15 <= (OTHERS => '0');
   zero_vec14 <= (OTHERS => '0');
	zero_vec13 <= (OTHERS => '0');
	zero_vec12 <= (OTHERS => '0');
	zero_vec11 <= (OTHERS => '0');
	zero_vec10 <= (OTHERS => '0');
	zero_vec9 <= (OTHERS => '0');
	zero_vec8 <= (OTHERS => '0');
	zero_vec7 <= (OTHERS => '0');
	zero_vec6 <= (OTHERS => '0');
	zero_vec5 <= (OTHERS => '0');
	zero_vec4 <= (OTHERS => '0');
	zero_vec3 <= (OTHERS => '0');
	zero_vec2 <= (OTHERS => '0');
	zero_vec1 <= (OTHERS => '0');
	zero      <= '0';
	vcc       <= '1';
 
	
	ctrl(4) <= rank(1);
	ctrl(3) <= rank(2);
	ctrl(2) <= POWER2;
	ctrl(1) <= LAST_RANK;
	ctrl(0) <= rank(0);
	
  fft20_and2: fft20_and_gate
    generic map (
      C_INPUTS => 2,
      C_INPUT_INV_MASK => "00")
    port map (
      CLK => CLK,   
      CE  => CE,   
      I => ctrl(2 downto 1),
			O => open_and_o1,
      Q => p2_last_rk_vec(0));

  greater_than_64:
  if nfft_max>6 generate
		delay_p2_last_rk_vec: fft20_reg_fde 
	  	generic map (
      	data_width => 1)
    	port map (
      	D   => p2_last_rk_vec,
      	CLK => CLK,
      	CE  => CE,
      	Q   => p2_last_rk_vec_delay);
		
		greater_than_256:
		if nfft_max>8 generate
      mux_sel_0: fft20_and_gate
        generic map (
          C_INPUTS => 3,
          C_INPUT_INV_MASK => "000")
        port map (
          CLK => CLK,
          CE  => CE,
          I => ctrl(2 downto 0),
          O => open_and_o2,
          Q => mux_sel(0));
  
      mux_sel_1: fft20_and_gate
        generic map (
          C_INPUTS => 3,
          C_INPUT_INV_MASK => "000")
        port map (
          CLK => CLK,
          CE  => CE,
          I => ctrl(3 downto 1),
          O => open_and_o3,
          Q => mux_sel(1));
      
			greater_than_4096:
			if nfft_max>12 generate
			 	mux_sel_2: fft20_and_gate
        	generic map (
          	C_INPUTS => 4,
          	C_INPUT_INV_MASK => "0000")
        	port map (
          	CLK => CLK,
          	CE  => CE,
          	I => ctrl(4 downto 1),
          	O => open_and_o4,
          	Q => mux_sel(2));
				end generate;	
			end generate;	
	end generate;		

	N_MAX_64:
  if nfft_max=6 generate
 	  m_0 <= zero_vec4;
 	 	m_1(1 downto 0) <= zero_vec2;
 	 	m_1(3 downto 2) <= CNT_RN(1 downto 0);
 	 	m_2 <= CNT_RN(3 downto 0);
     
 	  mux1: fft20_mux_bus8
      generic map (
        C_WIDTH => 4,
        C_INPUTS => 3,
        C_SEL_WIDTH => 2)
      port map (
        MA  => m_0,
        MB  => m_1,
        MC  => m_2,
        MD  => zero_vec4,
 	   		ME  => zero_vec4,
 	 			MF  => zero_vec4,
 	 			MG  => zero_vec4,
 	 			MH  => zero_vec4,
        S   => RANK(1 downto 0),
        CLK => CLK,
        CE  => CE,
        Q   => tw_base); 
	end generate;		
  
	N_MAX_256:
  if nfft_max=8 generate
 	  m_0 <= zero_vec6;
 	 	m_1(3 downto 0) <= zero_vec4;
 	 	m_1(5 downto 4) <= CNT_RN(1 downto 0);
 	 	m_2(1 downto 0) <= zero_vec2;
 	 	m_2(5 downto 2) <= CNT_RN(3 downto 0);
 	 	m_3 <= CNT_RN(5 downto 0);
     
 	  mux1: fft20_mux_bus8
      generic map (
        C_WIDTH => 6,
        C_INPUTS => 4,
        C_SEL_WIDTH => 2)
      port map (
        MA  => m_0,
        MB  => m_1,
        MC  => m_2,
        MD  => m_3,
 	   		ME  => zero_vec6,
 	 			MF  => zero_vec6,
 	 			MG  => zero_vec6,
 	 			MH  => zero_vec6,
        S   => RANK(1 downto 0),
        CLK => CLK,
        CE  => CE,
        Q   => tw_base); 
	end generate;		
  
  N_MAX_1024:
  if nfft_max=10 generate
 	  m_0 <= zero_vec8;
 	 	m_1(5 downto 0) <= zero_vec6;
 	 	m_1(7 downto 6) <= CNT_RN(1 downto 0);
 	 	m_2(3 downto 0) <= zero_vec4;
 	 	m_2(7 downto 4) <= CNT_RN(3 downto 0);
 	 	m_3(1 downto 0) <= zero_vec2;
 	 	m_3(7 downto 2) <= CNT_RN(5 downto 0);
    m_4 <= CNT_RN(7 downto 0);
     
 	  mux1: fft20_mux_bus8
      generic map (
        C_WIDTH => 8,
        C_INPUTS => 5,
        C_SEL_WIDTH => 3)
      port map (
        MA  => m_0,
        MB  => m_1,
        MC  => m_2,
        MD  => m_3,
 	   		ME  => m_4,
 	 			MF  => zero_vec8,
 	 			MG  => zero_vec8,
 	 			MH  => zero_vec8,
        S   => RANK,
        CLK => CLK,
        CE  => CE,
        Q   => tw_base); 
	end generate;		
  
	N_MAX_4096:
  if nfft_max=12 generate
 	  m_0 <= zero_vec10;
 	 	m_1(7 downto 0) <= zero_vec8;
 	 	m_1(9 downto 8) <= CNT_RN(1 downto 0);
 	 	m_2(5 downto 0) <= zero_vec6;
 	 	m_2(9 downto 6) <= CNT_RN(3 downto 0);
 	 	m_3(3 downto 0) <= zero_vec4;
 	 	m_3(9 downto 4) <= CNT_RN(5 downto 0);
    m_4(1 downto 0) <= zero_vec2;
    m_4(9 downto 2) <= CNT_RN(7 downto 0);
		m_5 <= CNT_RN(9 downto 0);
     
 	  mux1: fft20_mux_bus8
      generic map (
        C_WIDTH => 10,
        C_INPUTS => 6,
        C_SEL_WIDTH => 3)
      port map (
        MA  => m_0,
        MB  => m_1,
        MC  => m_2,
        MD  => m_3,
 	   		ME  => m_4,
 	 			MF  => m_5,
 	 			MG  => zero_vec10,
 	 			MH  => zero_vec10,
        S   => RANK,
        CLK => CLK,
        CE  => CE,
        Q   => tw_base); 
	end generate;		
  
	N_MAX_16384:
  if nfft_max=14 generate
 	  m_0 <= zero_vec12;
 	 	m_1(9 downto 0) <= zero_vec10;
 	 	m_1(11 downto 10) <= CNT_RN(1 downto 0);
 	 	m_2(7 downto 0) <= zero_vec8;
 	 	m_2(11 downto 8) <= CNT_RN(3 downto 0);
 	 	m_3(5 downto 0) <= zero_vec6;
 	 	m_3(11 downto 6) <= CNT_RN(5 downto 0);
    m_4(3 downto 0) <= zero_vec4;
    m_4(11 downto 4) <= CNT_RN(7 downto 0);
		m_5(1 downto 0) <= zero_vec2;
		m_5(11 downto 2) <= CNT_RN(9 downto 0);
		m_6 <= CNT_RN(11 downto 0);
     
 	  mux1: fft20_mux_bus8
      generic map (
        C_WIDTH => 12,
        C_INPUTS => 7,
        C_SEL_WIDTH => 3)
      port map (
        MA  => m_0,
        MB  => m_1,
        MC  => m_2,
        MD  => m_3,
 	   		ME  => m_4,
 	 			MF  => m_5,
 	 			MG  => m_6,
 	 			MH  => zero_vec12,
        S   => RANK,
        CLK => CLK,
        CE  => CE,
        Q   => tw_base); 
	end generate;		
	
  N_MAX_65536:
  if nfft_max=16 generate
 	  m_0 <= zero_vec14;
 	 	m_1(11 downto 0) <= zero_vec12;
 	 	m_1(13 downto 12) <= CNT_RN(1 downto 0);
 	 	m_2(9 downto 0) <= zero_vec10;
 	 	m_2(13 downto 10) <= CNT_RN(3 downto 0);
 	 	m_3(7 downto 0) <= zero_vec8;
 	 	m_3(13 downto 8) <= CNT_RN(5 downto 0);
    m_4(5 downto 0) <= zero_vec6;
    m_4(13 downto 6) <= CNT_RN(7 downto 0);
		m_5(3 downto 0) <= zero_vec4;
		m_5(13 downto 4) <= CNT_RN(9 downto 0);
		m_6(1 downto 0) <= zero_vec2;
		m_6(13 downto 2) <= CNT_RN(11 downto 0);
		m_7 <= CNT_RN(13 downto 0);
     
 	  mux1: fft20_mux_bus8
      generic map (
        C_WIDTH => 14,
        C_INPUTS => 8,
        C_SEL_WIDTH => 3)
      port map (
        MA  => m_0,
        MB  => m_1,
        MC  => m_2,
        MD  => m_3,
 	   		ME  => m_4,
 	 			MF  => m_5,
 	 			MG  => m_6,
 	 			MH  => m_7,
        S   => RANK,
        CLK => CLK,
        CE  => CE,
        Q   => tw_base); 
	end generate;		
  
	cnt_rank_signal:
	if nfft_max>6 generate
		cnt_w_delay: fft20_reg_fde 
		  generic map (
        data_width => nfft_max-3)
      port map (
        D   => CNT_RN(nfft_max-4 downto 0),
        CLK => CLK,
        CE  => CE,
        Q   => cnt_rn_delay);
    
		N_256_or_1024:
		if nfft_max<12 generate
      rank_w_delay: fft20_reg_fde 
 	 	  	generic map (
          data_width => 1)
        port map (
          D   => RANK(2 downto 2),
          CLK => CLK,
          CE  => CE,
          Q   => rank_delay(2 downto 2));
    
 	 		rank_delay_reg: fft20_reg_fde 
 	 	  	generic map (
          data_width => 1)
        port map (
          D   => rank_delay(2 downto 2),
          CLK => CLK,
          CE  => CE,
          Q   => rank_2delay(2 downto 2));
 	 	end generate;		

    N_greater_than_1024:
		if nfft_max>10 generate
      rank_w_delay: fft20_reg_fde 
 	 	  	generic map (
          data_width => 3)
        port map (
          D   => RANK,
          CLK => CLK,
          CE  => CE,
          Q   => rank_delay);
    
 	 		rank_delay_reg: fft20_reg_fde 
 	 	  	generic map (
          data_width => 3)
        port map (
          D   => rank_delay(2 downto 0),
          CLK => CLK,
          CE  => CE,
          Q   => rank_2delay(2 downto 0));
 	 	end generate;		
	end generate;			

	tw_p4(nfft_max-3 downto 0) <= tw_base(nfft_max-3 downto 0);
	tw_p4(nfft_max-2) <= '0';
  
	N_MAX_64_MUX_FOR_P2:
  if nfft_max=6 generate
	  delay_p4: fft20_reg_fde 
	    generic map (
        data_width => 5)
      port map (
        D   => tw_p4,
        CLK => CLK,
        CE  => CE,
        Q   => pre_tw1);
		
		tw3_tmp <= pre_tw1;		
	end generate;

  N_MAX_256_MUX_FOR_P2:
  if nfft_max=8 generate
	  tw_p2_1(0) <= '0';
    tw_p2_1(1) <= cnt_rn_delay(0);
    tw_p2_1(2) <= '0';
    tw_p2_1(6 downto 3) <= cnt_rn_delay(4 downto 1);
	
		mux: fft20_mux_bus8
      generic map (
        C_WIDTH => 7,
        C_INPUTS => 2,
        C_SEL_WIDTH => 1)
      port map (
        MA  => tw_p4,
        MB  => tw_p2_1,
        MC  => zero_vec7,
        MD  => zero_vec7,
        ME  => zero_vec7,
        MF  => zero_vec7,
        MG  => zero_vec7,
        MH  => zero_vec7,
        S   => p2_last_rk_vec,
        CLK => CLK,
        CE  => CE,
        Q   => pre_tw1);

		tw3_tmp(1 downto 0) <= pre_tw1(1 downto 0);
  	tw3_tmp(6 downto 3) <= pre_tw1(6 downto 3);
		
		invert_3rd: fft20_c_lut
    generic map (
      eqn => "i0@(i1*~i2)")
    port map (
      I0 => pre_tw1(2),
      I1 => p2_last_rk_vec_delay(0),
      I2 => rank_2delay(2),
      I3 => zero,
      O  => tw3_tmp(2));
	end generate;

  N_MAX_1024_MUX_FOR_P2:
	if nfft_max=10 generate
	  tw_p2_1(2 downto 0) <= "000";
    tw_p2_1(3) <= cnt_rn_delay(0);
    tw_p2_1(4) <= '0';
    tw_p2_1(8 downto 5) <= cnt_rn_delay(4 downto 1);
	
    tw_p2_2(0) <= '0';
    tw_p2_2(1) <= cnt_rn_delay(0);
    tw_p2_2(2) <= '0';
    tw_p2_2(8 downto 3) <= cnt_rn_delay(6 downto 1);
	
		mux: fft20_mux_bus8
      generic map (
        C_WIDTH => 9,
        C_INPUTS => 3,
        C_SEL_WIDTH => 2)
      port map (
        MA  => tw_p4,
        MB  => tw_p2_1,
        MC  => tw_p2_2,
        MD  => zero_vec9,
        ME  => zero_vec9,
        MF  => zero_vec9,
        MG  => zero_vec9,
        MH  => zero_vec9,
        S   => mux_sel(1 downto 0),
        CLK => CLK,
        CE  => CE,
        Q   => pre_tw1);

		tw3_tmp(1 downto 0) <= pre_tw1(1 downto 0);
  	tw3_tmp(3) <= pre_tw1(3);
		tw3_tmp(8 downto 5) <= pre_tw1(8 downto 5);
	
		invert_3rd: fft20_c_lut
    generic map (
      eqn => "i0@(i1*i2)")
    port map (
      I0 => pre_tw1(2),
      I1 => p2_last_rk_vec_delay(0),
      I2 => rank_2delay(2),
      I3 => zero,
      O  => tw3_tmp(2));

		invert_5th: fft20_c_lut
    generic map (
      eqn => "i0@(i1*~i2)")
    port map (
      I0 => pre_tw1(4),
      I1 => p2_last_rk_vec_delay(0),
      I2 => rank_2delay(2),
      I3 => zero,
      O  => tw3_tmp(4));		
	end generate;

  N_MAX_4096_MUX_FOR_P2:
	if nfft_max=12 generate
	  tw_p2_1(4 downto 0) <= "00000";
    tw_p2_1(5) <= cnt_rn_delay(0);
    tw_p2_1(6) <= '0';
    tw_p2_1(10 downto 7) <= cnt_rn_delay(4 downto 1);
	
    tw_p2_2(2 downto 0) <= "000";
    tw_p2_2(3) <= cnt_rn_delay(0);
    tw_p2_2(4) <= '0';
    tw_p2_2(10 downto 5) <= cnt_rn_delay(6 downto 1);
	
    tw_p2_3(0) <= '0';
    tw_p2_3(1) <= cnt_rn_delay(0);
    tw_p2_3(2) <= '0';
    tw_p2_3(10 downto 3) <= cnt_rn_delay(8 downto 1);
	
		mux: fft20_mux_bus8
      generic map (
        C_WIDTH => 11,
        C_INPUTS => 4,
        C_SEL_WIDTH => 2)
      port map (
        MA  => tw_p4,
        MB  => tw_p2_1,
        MC  => tw_p2_2,
        MD  => tw_p2_3,
        ME  => zero_vec11,
        MF  => zero_vec11,
        MG  => zero_vec11,
        MH  => zero_vec11,
        S   => mux_sel(1 downto 0),
        CLK => CLK,
        CE  => CE,
        Q   => pre_tw1);

		tw3_tmp(1 downto 0) <= pre_tw1(1 downto 0);
  	tw3_tmp(3) <= pre_tw1(3);
  	tw3_tmp(5) <= pre_tw1(5);
		tw3_tmp(10 downto 7) <= pre_tw1(10 downto 7);
	
		invert_3rd: fft20_c_lut
    generic map (
      eqn => "i0@(i1*i2*i3)")
    port map (
      I0 => pre_tw1(2),
      I1 => p2_last_rk_vec_delay(0),
      I2 => rank_2delay(2),
      I3 => rank_2delay(0),
      O  => tw3_tmp(2));

		invert_5th: fft20_c_lut
    generic map (
      eqn => "i0@(i1*i2*~i3)")
    port map (
      I0 => pre_tw1(4),
      I1 => p2_last_rk_vec_delay(0),
      I2 => rank_2delay(2),
      I3 => rank_2delay(0),
      O  => tw3_tmp(4));		
			
		invert_7th: fft20_c_lut
    generic map (
      eqn => "i0@(i1*i2*i3)")
    port map (
      I0 => pre_tw1(6),
      I1 => p2_last_rk_vec_delay(0),
      I2 => rank_2delay(1),
      I3 => rank_2delay(0),
      O  => tw3_tmp(6));			
	end generate;

  N_MAX_16384_MUX_FOR_P2:
	if nfft_max=14 generate
	  tw_p2_1(6 downto 0) <= "0000000";
    tw_p2_1(7) <= cnt_rn_delay(0);
    tw_p2_1(8) <= '0';
    tw_p2_1(12 downto 9) <= cnt_rn_delay(4 downto 1);
	
    tw_p2_2(4 downto 0) <= "00000";
    tw_p2_2(5) <= cnt_rn_delay(0);
    tw_p2_2(6) <= '0';
    tw_p2_2(12 downto 7) <= cnt_rn_delay(6 downto 1);
	
    tw_p2_3(2 downto 0) <= "000";
    tw_p2_3(3) <= cnt_rn_delay(0);
    tw_p2_3(4) <= '0';
    tw_p2_3(12 downto 5) <= cnt_rn_delay(8 downto 1);
	
    tw_p2_4(0) <= '0';
    tw_p2_4(1) <= cnt_rn_delay(0);
    tw_p2_4(2) <= '0';
    tw_p2_4(12 downto 3) <= cnt_rn_delay(10 downto 1);
	
		mux: fft20_mux_bus8
      generic map (
        C_WIDTH => 13,
        C_INPUTS => 8,
        C_SEL_WIDTH => 3)
      port map (
        MA  => tw_p4,
        MB  => tw_p2_1,
        MC  => tw_p2_2,
        MD  => tw_p2_3,
        ME  => zero_vec13,
        MF  => zero_vec13,
        MG  => tw_p2_4,
        MH  => zero_vec13,
        S   => mux_sel,
        CLK => CLK,
        CE  => CE,
        Q   => pre_tw1);

		tw3_tmp(1 downto 0) <= pre_tw1(1 downto 0);
  	tw3_tmp(3) <= pre_tw1(3);
  	tw3_tmp(5) <= pre_tw1(5);
  	tw3_tmp(7) <= pre_tw1(7);
		tw3_tmp(12 downto 9) <= pre_tw1(12 downto 9);
	
		invert_3rd: fft20_c_lut
    generic map (
      eqn => "i0@(i1*i2*i3)")
    port map (
      I0 => pre_tw1(2),
      I1 => p2_last_rk_vec_delay(0),
      I2 => rank_2delay(2),
      I3 => rank_2delay(1),
      O  => tw3_tmp(2));

		invert_5th: fft20_c_lut
    generic map (
      eqn => "i0@(i1*i2*i3)")
    port map (
      I0 => pre_tw1(4),
      I1 => p2_last_rk_vec_delay(0),
      I2 => rank_2delay(2),
      I3 => rank_2delay(0),
      O  => tw3_tmp(4));		
				
		invert_7th: fft20_c_lut
    generic map (
      eqn => "i0@(i1*~i2*~i3)")
    port map (
      I0 => pre_tw1(6),
      I1 => p2_last_rk_vec_delay(0),
      I2 => rank_2delay(1),
      I3 => rank_2delay(0),
      O  => tw3_tmp(6));			

		invert_9th: fft20_c_lut
    generic map (
      eqn => "i0@(i1*i2*i3)")
    port map (
      I0 => pre_tw1(8),
      I1 => p2_last_rk_vec_delay(0),
      I2 => rank_2delay(1),
      I3 => rank_2delay(0),
      O  => tw3_tmp(8));					
	end generate;

  N_MAX_65536_MUX_FOR_P2:
	if nfft_max=16 generate
	  tw_p2_1(8 downto 0) <= "000000000";
    tw_p2_1(9) <= cnt_rn_delay(0);
    tw_p2_1(10) <= '0';
    tw_p2_1(14 downto 11) <= cnt_rn_delay(4 downto 1);
	
		tw_p2_2(6 downto 0) <= "0000000";
    tw_p2_2(7) <= cnt_rn_delay(0);
    tw_p2_2(8) <= '0';
    tw_p2_2(14 downto 9) <= cnt_rn_delay(6 downto 1);
	
    tw_p2_3(4 downto 0) <= "00000";
    tw_p2_3(5) <= cnt_rn_delay(0);
    tw_p2_3(6) <= '0';
    tw_p2_3(14 downto 7) <= cnt_rn_delay(8 downto 1);
	
    tw_p2_4(2 downto 0) <= "000";
    tw_p2_4(3) <= cnt_rn_delay(0);
    tw_p2_4(4) <= '0';
    tw_p2_4(14 downto 5) <= cnt_rn_delay(10 downto 1);
	
    tw_p2_5(0) <= '0';
    tw_p2_5(1) <= cnt_rn_delay(0);
    tw_p2_5(2) <= '0';
    tw_p2_5(14 downto 3) <= cnt_rn_delay(12 downto 1);
	
		mux: fft20_mux_bus8
      generic map (
        C_WIDTH => 15,
        C_INPUTS => 8,
        C_SEL_WIDTH => 3)
      port map (
        MA  => tw_p4,
        MB  => tw_p2_1,
        MC  => tw_p2_2,
        MD  => tw_p2_3,
        ME  => zero_vec15,
        MF  => zero_vec15,
        MG  => tw_p2_4,
        MH  => tw_p2_5,
        S   => mux_sel,
        CLK => CLK,
        CE  => CE,
        Q   => pre_tw1);

		tw3_tmp(1 downto 0) <= pre_tw1(1 downto 0);
  	tw3_tmp(3) <= pre_tw1(3);
  	tw3_tmp(5) <= pre_tw1(5);
  	tw3_tmp(7) <= pre_tw1(7);
  	tw3_tmp(9) <= pre_tw1(9);
		tw3_tmp(14 downto 11) <= pre_tw1(14 downto 11);
	
		invert_3rd: fft20_c_lut
    generic map (
      eqn => "i0@(i1*i2*i3)")
    port map (
      I0 => pre_tw1(2),
      I1 => p2_last_rk_vec_delay(0),
      I2 => rank_2delay(1),
      I3 => rank_2delay(0),
      O  => tw3_tmp(2));

		invert_5th: fft20_c_lut
    generic map (
      eqn => "i0@(i1*i2*~i3)")
    port map (
      I0 => pre_tw1(4),
      I1 => p2_last_rk_vec_delay(0),
      I2 => rank_2delay(1),
      I3 => rank_2delay(0),
      O  => tw3_tmp(4));		
				
		invert_7th: fft20_c_lut
    generic map (
      eqn => "i0@(i1*~i2*i3)")
    port map (
      I0 => pre_tw1(6),
      I1 => p2_last_rk_vec_delay(0),
      I2 => rank_2delay(1),
      I3 => rank_2delay(0),
      O  => tw3_tmp(6));			

		invert_9th: fft20_c_lut
    generic map (
      eqn => "i0@(i1*~i2*~i3)")
    port map (
      I0 => pre_tw1(8),
      I1 => p2_last_rk_vec_delay(0),
      I2 => rank_2delay(1),
      I3 => rank_2delay(0),
      O  => tw3_tmp(8));					
		
		invert_11th: fft20_c_lut
    generic map (
      eqn => "i0@(i1*~i2)")
    port map (
      I0 => pre_tw1(10),
      I1 => p2_last_rk_vec_delay(0),
      I2 => rank_2delay(2),
      I3 => zero,
      O  => tw3_tmp(10));					
	end generate;

  tw2_tmp(0) <= '0';
  tw2_tmp(nfft_max-2 downto 1)<= tw_base(nfft_max-3 downto 0);
		
  nor_gate: C_GATE_BIT_BUS_V6_0
    generic map (
      C_GATE_TYPE => 3, 
      C_WIDTH => nfft_max-1,
      C_INPUT_INV_MASK => "1111111111111111",
      C_AINIT_VAL => "",
      C_SINIT_VAL => "",
      C_SYNC_PRIORITY => 0,
      C_SYNC_ENABLE   => 0,
      C_HAS_O => 0,    
      C_HAS_Q => 1,    
      C_HAS_CE => 1,   
      C_HAS_ACLR => 0, 
      C_HAS_ASET => 0, 
      C_HAS_AINIT => 0,
      C_HAS_SCLR => 0, 
      C_HAS_SSET => 0, 
      C_HAS_SINIT => 0,
      C_ENABLE_RLOCS => 1)
    port map (
		  I => tw2_tmp, 
      CTRL => p2_last_rk_vec(0),
      CLK => CLK,
      CE => CE,
      ACLR => open_aclr,
      ASET => open_aset,
      AINIT => open_ainit,
      SCLR => open_sclr,
      SSET => open_sset,
      SINIT => open_sinit,
      O => open_out,
      Q => pre_tw2);
			
  tw1_reg: fft20_reg_fde 
    generic map (
      data_width => nfft_max-1)
    port map (
      D   => pre_tw1,
      CLK => CLK,
      CE  => CE,
      Q   => TW1_ADDR(nfft_max-2 downto 0));
	
	TW1_ADDR(nfft_max-1) <= '0';

  tw2_reg: fft20_reg_fde 
    generic map (
      data_width => nfft_max-1)
    port map (
      D   => pre_tw2,
      CLK => CLK,
      CE  => CE,
      Q   => TW2_ADDR(nfft_max-2 downto 0));
	
	TW2_ADDR(nfft_max-1) <= '0';

  tw3_add: C_ADDSUB_V6_0
    generic map (
      C_A_WIDTH => nfft_max-1,
      C_B_WIDTH => nfft_max-1,
      C_OUT_WIDTH => nfft_max,
      C_LOW_BIT => 0,
      C_HIGH_BIT => nfft_max-1,
      C_ADD_MODE => 0, 
      C_A_TYPE => 1, 
      C_B_TYPE => 1, 
      C_B_CONSTANT => 0,
      C_B_VALUE => "",
      C_AINIT_VAL => "",
      C_SINIT_VAL => "",
      C_BYPASS_ENABLE => 0,
      C_BYPASS_LOW => 0,
      C_SYNC_ENABLE => 0,
      C_SYNC_PRIORITY => 0,
      C_PIPE_STAGES => 1,
      C_LATENCY => 1,
      C_HAS_S => 0,
      C_HAS_Q => 1,
      C_HAS_C_IN => 0,
      C_HAS_C_OUT => 0,
      C_HAS_Q_C_OUT => 0,
      C_HAS_B_IN => 1,
      C_HAS_B_OUT => 0,
      C_HAS_Q_B_OUT => 0,
      C_HAS_OVFL => 0,
      C_HAS_Q_OVFL => 0,
      C_HAS_CE => 1,
      C_HAS_ADD => 0,
      C_HAS_BYPASS => 0,
      C_HAS_A_SIGNED => 1,
      C_HAS_B_SIGNED => 1,
      C_HAS_ACLR => 0,
      C_HAS_ASET => 0,
      C_HAS_AINIT => 0,
      C_HAS_SCLR => 0,
      C_HAS_SSET => 0,
      C_HAS_SINIT => 0,
      C_ENABLE_RLOCS => 1,
      C_HAS_BYPASS_WITH_CIN => 0)
    port map (
      A => tw3_tmp,
      B => pre_tw2,
      CLK => CLK,
      ADD => zero,
      C_IN => zero,
      B_IN => vcc,
      CE => CE,
      BYPASS => zero,
      ACLR => zero,
      ASET => zero,
      AINIT => zero,
      SCLR => zero,
      SSET => zero,
      SINIT => zero,
      A_SIGNED => zero,
      B_SIGNED => zero,
      OVFL => open_ovfl,
      C_OUT => open_c_out,
      B_OUT => open_b_out,
      Q_OVFL => open_q_ovfl,
      Q_C_OUT => open_q_c_out,
      Q_B_OUT => open_q_b_out,
      S => open_s,
      Q => TW3_ADDR);

END xilinx;
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.fft20_comps.all;

entity fft20_in_switch4 is
	generic (WIDTH : integer := 16);
	port ( 
		i0	: in std_logic_vector(WIDTH-1 downto 0);
		i1 : in std_logic_vector(WIDTH-1 downto 0);
		i2 : in std_logic_vector(WIDTH-1 downto 0);
		i3 : in std_logic_vector(WIDTH-1 downto 0);
      o0 : out std_logic_vector(WIDTH-1 downto 0);
      o1 : out std_logic_vector(WIDTH-1 downto 0);
      o2 : out std_logic_vector(WIDTH-1 downto 0);
      o3 : out std_logic_vector(WIDTH-1 downto 0);
      s 	: in std_logic_vector(1 downto 0);
		clk: in std_logic;
      ce : in std_logic);
end fft20_in_switch4;

architecture xilinx of fft20_in_switch4 is

begin

	o0_gen: fft20_mux_bus 
		generic map (
			C_WIDTH		=> WIDTH,
			C_INPUTS		=> 4,
			C_SEL_WIDTH	=> 2)
		port map(
			MA		=> i0,
			MB		=> i1,  
			MC		=> i2,
			MD		=> i3,
			S		=> s,
			CLK	=> clk, 
			CE  	=> ce, 
			Q   	=> o0);

	o1_gen: fft20_mux_bus 
		generic map (
			C_WIDTH		=> WIDTH,
			C_INPUTS		=> 4,
			C_SEL_WIDTH	=> 2)
		port map(
			MA		=> i1,
			MB		=> i2,  
			MC		=> i3,
			MD		=> i0,
			S		=> s,
			CLK	=> clk, 
			CE  	=> ce, 
			Q   	=> o1);

	o2_gen: fft20_mux_bus 
		generic map (
			C_WIDTH		=> WIDTH,
			C_INPUTS		=> 4,
			C_SEL_WIDTH	=> 2)
		port map(
			MA		=> i2,
			MB		=> i3,  
			MC		=> i0,
			MD		=> i1,
			S		=> s,
			CLK	=> clk, 
			CE  	=> ce, 
			Q   	=> o2);

	o3_gen: fft20_mux_bus 
		generic map (
			C_WIDTH		=> WIDTH,
			C_INPUTS		=> 4,
			C_SEL_WIDTH	=> 2)
		port map(
			MA		=> i3,
			MB		=> i0,  
			MC		=> i1,
			MD		=> i2,
			S		=> s,
			CLK	=> clk, 
			CE  	=> ce, 
			Q   	=> o3);

end xilinx;




LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.c_shift_ram_v6_0_comp.all;
USE XilinxCoreLib.c_twos_comp_v6_0_comp.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.fft20_comps.all;

ENTITY fft20_tw_addr_gen IS
	generic (
		nfft_max    : INTEGER := 9);
  port (
      CLK        : IN  std_logic;   
      CE         : IN  std_logic;   
      CNT_RN     : IN  std_logic_vector(nfft_max-3 downto 0);
      RANK       : IN  std_logic_vector(2 downto 0);
      FWD_INV    : IN  std_logic;  
      POWER2     : IN  std_logic;   
      LAST_RANK  : IN  std_logic;  
      TW1_ADDR   : OUT std_logic_vector(nfft_max-1 downto 0);
      TW2_ADDR   : OUT std_logic_vector(nfft_max-1 downto 0);
      TW3_ADDR   : OUT std_logic_vector(nfft_max-1 downto 0));
END fft20_tw_addr_gen;

ARCHITECTURE xilinx OF fft20_tw_addr_gen IS

  CONSTANT nfft_max_power2: integer := (nfft_max+1)/2 - nfft_max/2; 

	SIGNAL tw1, tw2, tw3: std_logic_vector(nfft_max-1 downto 0);
	SIGNAL tw1_addr_full, tw2_addr_full, tw3_addr_full: std_logic_vector(nfft_max downto 0);
	SIGNAL fwd_inv_vec, fwd_inv_delay: std_logic_vector(0 downto 0);

  SIGNAL gnd: std_logic;
	SIGNAL open_s1, open_s2, open_s3: std_logic_vector(nfft_max downto 0);
	SIGNAL open_a: std_logic_vector(1 downto 0);

BEGIN

   gnd <= '0';
  fwd_inv_vec(0) <= FWD_INV;	

  shift_reg: C_SHIFT_RAM_V6_0
    generic map (
      C_ADDR_WIDTH         => 2,
      C_AINIT_VAL          => "",
      C_DEFAULT_DATA       => "0",
      C_DEFAULT_DATA_RADIX => 1,
      C_DEPTH              => 3,
      C_ENABLE_RLOCS       => 0,
      C_GENERATE_MIF       => 0,  
      C_HAS_ACLR           => 0,
      C_HAS_A              => 0,
      C_HAS_AINIT          => 0,
      C_HAS_ASET           => 0,
      C_HAS_CE             => 1,
      C_HAS_SCLR           => 0,
      C_HAS_SINIT          => 0,
      C_HAS_SSET           => 0,
      C_MEM_INIT_FILE      => "xfft_v2_0_null.mif",
      C_MEM_INIT_RADIX     => 1,  
      C_READ_MIF           => 0,
      C_REG_LAST_BIT       => 0,
      C_SHIFT_TYPE         => 0, 
      C_SINIT_VAL          => "",
      C_SYNC_PRIORITY      => 0,
      C_SYNC_ENABLE        => 0,
      C_WIDTH              => 1)
    port map (
      A     => open_a,
      D     => fwd_inv_vec,
      CLK   => CLK,    
      CE    => CE,     
      ACLR  => gnd,
      ASET  => gnd,
      AINIT => gnd,
      SCLR  => gnd,
      SSET  => gnd,
      SINIT => gnd,
      Q     => fwd_inv_delay);

	N_MAX_P2:
  if nfft_max_power2=1 generate
    p2: fft20_tw_gen_p2
    generic map (
      nfft_max => nfft_max)
    port map (
      CLK       => CLK,   
      CE        => CE,   
      CNT_RN    => CNT_RN,
      RANK      => RANK,
		  POWER2    => POWER2,   
      LAST_RANK => LAST_RANK,
      TW1_ADDR  => tw1, 
      TW2_ADDR  => tw2, 
      TW3_ADDR  => tw3);
	end generate;	

  N_MAX_P4:
  if nfft_max_power2=0 generate
    p4: fft20_tw_gen_p4
    generic map (
      nfft_max => nfft_max)
    port map (
      CLK       => CLK,   
      CE        => CE,   
      CNT_RN    => CNT_RN,
      RANK      => RANK,
      POWER2    => POWER2,   
      LAST_RANK => LAST_RANK,
      TW1_ADDR  => tw1, 
      TW2_ADDR  => tw2, 
      TW3_ADDR  => tw3);
	end generate;	

  u1: C_TWOS_COMP_V6_0
    generic map (
      C_WIDTH => nfft_max,
      C_AINIT_VAL => "",
      C_SINIT_VAL => "",
      C_BYPASS_ENABLE => 1,
      C_BYPASS_LOW  => 1, 
      C_SYNC_PRIORITY => 0,
      C_SYNC_ENABLE => 0,
      C_PIPE_STAGES =>  0,
      C_HAS_BYPASS  => 1,
      C_HAS_CE => 1,
      C_HAS_ACLR => 0,
      C_HAS_ASET => 0,
      C_HAS_AINIT => 0,
      C_HAS_SCLR => 0,
      C_HAS_SSET => 0,
      C_HAS_SINIT => 0,
      C_HAS_S => 0,
      C_HAS_Q => 1,
      C_ENABLE_RLOCS => 1)
    port map (
      A => tw1,
      BYPASS => fwd_inv_delay(0),
      CLK => CLK,
      CE => CE,
      ACLR => gnd,
      ASET => gnd,
      AINIT => gnd,
      SCLR => gnd,
      SSET => gnd,
      SINIT => gnd,
      S => open_s1,
      Q => tw1_addr_full);

  u2: C_TWOS_COMP_V6_0
    generic map (
      C_WIDTH => nfft_max,
      C_AINIT_VAL => "",
      C_SINIT_VAL => "",
      C_BYPASS_ENABLE => 1,
      C_BYPASS_LOW  => 1, 
      C_SYNC_PRIORITY => 0,
      C_SYNC_ENABLE => 0,
      C_PIPE_STAGES =>  0,
      C_HAS_BYPASS  => 1,
      C_HAS_CE => 1,
      C_HAS_ACLR => 0,
      C_HAS_ASET => 0,
      C_HAS_AINIT => 0,
      C_HAS_SCLR => 0,
      C_HAS_SSET => 0,
      C_HAS_SINIT => 0,
      C_HAS_S => 0,
      C_HAS_Q => 1,
      C_ENABLE_RLOCS => 1)
    port map (
      A => tw2,
      BYPASS => fwd_inv_delay(0),
      CLK => CLK,
      CE => CE,
      ACLR => gnd,
      ASET => gnd,
      AINIT => gnd,
      SCLR => gnd,
      SSET => gnd,
      SINIT => gnd,
      S => open_s2,
      Q => tw2_addr_full);

  u3: C_TWOS_COMP_V6_0
    generic map (
      C_WIDTH => nfft_max,
      C_AINIT_VAL => "",
      C_SINIT_VAL => "",
      C_BYPASS_ENABLE => 1,
      C_BYPASS_LOW  => 1, 
      C_SYNC_PRIORITY => 0,
      C_SYNC_ENABLE => 0,
      C_PIPE_STAGES =>  0,
      C_HAS_BYPASS  => 1,
      C_HAS_CE => 1,
      C_HAS_ACLR => 0,
      C_HAS_ASET => 0,
      C_HAS_AINIT => 0,
      C_HAS_SCLR => 0,
      C_HAS_SSET => 0,
      C_HAS_SINIT => 0,
      C_HAS_S => 0,
      C_HAS_Q => 1,
      C_ENABLE_RLOCS => 1)
    port map (
      A => tw3,
      BYPASS => fwd_inv_delay(0),
      CLK => CLK,
      CE => CE,
      ACLR => gnd,
      ASET => gnd,
      AINIT => gnd,
      SCLR => gnd,
      SSET => gnd,
      SINIT => gnd,
      S => open_s3,
      Q => tw3_addr_full);

	TW1_ADDR <= tw1_addr_full(nfft_max-1 downto 0);
	TW2_ADDR <= tw2_addr_full(nfft_max-1 downto 0);
	TW3_ADDR <= tw3_addr_full(nfft_max-1 downto 0);

END xilinx;

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.fft20_comps.all;

entity fft20_out_switch4 is
	generic (WIDTH : integer := 16);
	port ( 
		i0			: in std_logic_vector(WIDTH-1 downto 0);
		i1 		: in std_logic_vector(WIDTH-1 downto 0);
		I2			: in std_logic_vector(WIDTH-1 downto 0);
		i3 		: in std_logic_vector(WIDTH-1 downto 0);
      o0 		: out std_logic_vector(WIDTH-1 downto 0);
      o1			: out std_logic_vector(WIDTH-1 downto 0);
      o2 		: out std_logic_vector(WIDTH-1 downto 0);
      o3 		: out std_logic_vector(WIDTH-1 downto 0);
      s 			: in std_logic_vector(1 downto 0);
		bypass	: in std_logic;
		dir		: in std_logic;
		clk: in std_logic;
      ce : in std_logic);
end fft20_out_switch4;

architecture xilinx of fft20_out_switch4 is

signal sel0		: std_logic_vector(1 downto 0);
signal sel1		: std_logic_vector(1 downto 0);
signal sel2		: std_logic_vector(1 downto 0);
signal sel3		: std_logic_vector(1 downto 0);
signal sel0_asy: std_logic_vector(1 downto 0);
signal sel1_asy: std_logic_vector(1 downto 0);
signal sel2_asy: std_logic_vector(1 downto 0);
signal sel3_asy: std_logic_vector(1 downto 0);

begin

	sel0_0_gen: fft20_c_lut
		generic map( eqn => "I0*(~I1)+I0*I2+(~I0)*I1*(~I2)")
		port map(
			I0			=> s(0),
			I1			=> s(1),
			I2			=> bypass,	
			I3			=> dir, 
			O			=> sel0_asy(0));

	sel0_1_gen: fft20_c_lut
		generic map( eqn => "I0*(~I2)+I1*I2*(~I3)+(~I0)*I1*I2+I0*(~I1)*I3")
		port map(
			I0			=> s(0),
			I1			=> s(1),
			I2			=> bypass,	
			I3			=> dir, 
			O			=> sel0_asy(1));

	sel0_reg: fft20_reg_fde
		generic map (	data_width => 2)
		port map(
			D     	=> sel0_asy,
			CLK   	=> CLK, 
			CE    	=> CE, 
			Q     	=> sel0);
			
	o0_gen: fft20_mux_bus 
		generic map (
			C_WIDTH		=> WIDTH,
			C_INPUTS		=> 4,
			C_SEL_WIDTH	=> 2)
		port map(
			MA		=> i0,
			MB		=> i1,  
			MC		=> i2,
			MD		=> i3,
			S		=> sel0,
			CLK	=> clk, 
			CE  	=> ce, 
			Q   	=> o0);

	sel1_0_gen: fft20_c_lut
		generic map( eqn => "(~I0)*I2+I1*(~I2)")
		port map(
			I0			=> s(0),
			I1			=> s(1),
			I2			=> bypass,	
			I3			=> dir, 
			O			=> sel1_asy(0));

	sel1_1_gen: fft20_c_lut
		generic map( eqn => "(~I0)*(~I2)+I1*I2*I3+I0*I1*I2*(~I3)+(~(I0+I1+(~I2)+I3))")
		port map(
			I0			=> s(0),
			I1			=> s(1),
			I2			=> bypass,	
			I3			=> dir, 
			O			=> sel1_asy(1));

	sel1_reg: fft20_reg_fde
		generic map (	data_width => 2)
		port map(
			D     	=> sel1_asy,
			CLK   	=> CLK, 
			CE    	=> CE, 
			Q     	=>	sel1);

	o1_gen: fft20_mux_bus 
		generic map (
			C_WIDTH		=> WIDTH,
			C_INPUTS		=> 4,
			C_SEL_WIDTH	=> 2)
		port map(
			MA		=> i0,
			MB		=> i1,  
			MC		=> i2,
			MD		=> i3,
			S		=> sel1,
			CLK	=> clk, 
			CE  	=> ce, 
			Q   	=> o1);

	sel2_0_gen: fft20_c_lut
		generic map( eqn => "I0*I1+I0*I2+(~I0)*(~I1)*(~I2)")
		port map(
			I0			=> s(0),
			I1			=> s(1),
			I2			=> bypass,	
			I3			=> dir, 
			O			=> sel2_asy(0));

	sel2_1_gen: fft20_c_lut
		generic map( eqn => "I0*(~I2)+(~I1)*I2*(~I3)+I0*I1*I3+(~I0)*(~I1)*I2*I3")
		port map(
			I0			=> s(0),
			I1			=> s(1),
			I2			=> bypass,	
			I3			=> dir, 
			O			=> sel2_asy(1));

	sel2_reg: fft20_reg_fde
		generic map (	data_width => 2)
		port map(
			D     	=> sel2_asy,
			CLK   	=> CLK, 
			CE    	=> CE, 
			Q     	=> sel2);

	o2_gen: fft20_mux_bus 
		generic map (
			C_WIDTH		=> WIDTH,
			C_INPUTS		=> 4,
			C_SEL_WIDTH	=> 2)
		port map(
			MA		=> i0,
			MB		=> i1,  
			MC		=> i2,
			MD		=> i3,
			S		=> sel2,
			CLK	=> clk, 
			CE  	=> ce, 
			Q   	=> o2);

	sel3_0_gen: fft20_c_lut
		generic map( eqn => "(~I0)*I2+(~I1)*(~I2)")
		port map(
			I0			=> s(0),
			I1			=> s(1),
			I2			=> bypass,	
			I3			=> dir, 
			O			=> sel3_asy(0));

	sel3_1_gen: fft20_c_lut
		generic map( eqn => "(~I0)*(~I2)+(~I1)*I2*I3+(~I0)*I1*(~I3)+I0*(~I1)*I2*(~I3)")
		port map(
			I0			=> s(0),
			I1			=> s(1),
			I2			=> bypass,	
			I3			=> dir, 
			O			=> sel3_asy(1));

	sel3_reg: fft20_reg_fde
		generic map (	data_width => 2)
		port map(
			D     	=> sel3_asy,
			CLK   	=> CLK, 
			CE    	=> CE, 
			Q     	=> sel3);

	o3_gen: fft20_mux_bus 
		generic map (
			C_WIDTH		=> WIDTH,
			C_INPUTS		=> 4,
			C_SEL_WIDTH	=> 2)
		port map(
			MA		=> i0,
			MB		=> i1,  
			MC		=> i2,
			MD		=> i3,
			S		=> sel3,
			CLK	=> clk, 
			CE  	=> ce, 
			Q   	=> o3);

end xilinx;
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.fft20_comps.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.prims_comps_v6_0.all;

ENTITY fft20_max2_2 IS
   PORT (
      a					: IN std_logic_vector(1 DOWNTO 0);   
      b					: IN std_logic_vector(1 DOWNTO 0);   
      o					: OUT std_logic_vector(1 DOWNTO 0));   

END fft20_max2_2;

ARCHITECTURE xilinx OF fft20_max2_2 IS

	SIGNAL gnd:  std_logic;

BEGIN
   gnd <= '0';
	max_h_generator: fft20_c_lut
		generic map (eqn => "i0+i1")
		port map (
			I0 => a(1),
			I1 => b(1), 
			I2 => gnd,
			I3 => gnd,
			O  => o(1));

	max_l_a_generator: fft20_c_lut
		generic map (eqn => "i0*i1+i2*i3+((~i1)*(~i3)*(i0+i2))")
		port map (
			I3 => a(1),
			I2 => a(0), 
			I1 => b(1),
			I0 => b(0),
			O  => o(0));


END xilinx;
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.fft20_comps.all;

ENTITY fft20_arith_shift3 IS
   GENERIC (WIDTH :  integer := 16);
   PORT (
      x				: IN std_logic_vector(WIDTH - 1 DOWNTO 0);   
      shift			: IN std_logic_vector(1 DOWNTO 0);   
      q				: OUT std_logic_vector(WIDTH + 2 DOWNTO 0);
      ce				: IN std_logic;
      clk			: IN std_logic);   

END fft20_arith_shift3;

ARCHITECTURE xilinx OF fft20_arith_shift3 IS

	SIGNAL xa               :  std_logic_vector(WIDTH+2 DOWNTO 0);   
	SIGNAL xb               :  std_logic_vector(WIDTH+2 DOWNTO 0);   
	SIGNAL xc               :  std_logic_vector(WIDTH+2 DOWNTO 0);   
	SIGNAL xd               :  std_logic_vector(WIDTH+2 DOWNTO 0);   

BEGIN

   xa(WIDTH+2 downto 3) <= x(WIDTH-1 downto 0);
   xa(2 downto 0) <= "000";

	xb(WIDTH+2) <= xa(WIDTH+2);
	xb(WIDTH+1 downto 0) <= xa(WIDTH+2 downto 1);
	
	xc(WIDTH+2) <= xb(WIDTH+2);
	xc(WIDTH+1 downto 0) <= xb(WIDTH+2 downto 1);

	xd(WIDTH+2) <= xc(WIDTH+2);
	xd(WIDTH+1 downto 0) <= xc(WIDTH+2 downto 1);
	
	scale_mux: fft20_mux_bus 
	generic map(
		C_WIDTH      => WIDTH+3,
		C_INPUTS     => 4,
		C_SEL_WIDTH  => 2)
	port map(
		MA  => xa,
		MB  => xb, 
		MC  => xc, 
		MD  => xd, 
		S   => shift,
		CLK => clk,
		CE  => ce,
		Q   => q);

END xilinx;

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.fft20_comps.all;

ENTITY fft20_ranger IS
	PORT (
		re			: IN std_logic_vector(3 DOWNTO 0);   
		im			: IN std_logic_vector(3 DOWNTO 0);   
  		CE			: IN std_logic;
		CLK		: IN std_logic;
		rang   	: OUT std_logic_vector(1 DOWNTO 0));
END fft20_ranger;

ARCHITECTURE xilinx OF fft20_ranger IS

	SIGNAL range_re			:  std_logic_vector(1 DOWNTO 0);   
	SIGNAL range_im			:  std_logic_vector(1 DOWNTO 0);   
  	SIGNAL o_range 			:  std_logic_vector(1 DOWNTO 0);   

BEGIN

	range_re_h_generator: fft20_c_lut
		generic map (	eqn => "(i3@i2)+(i3@i1)")
		port map (
			I3 => re(3),
			I2 => re(2), 
			I1 => re(1),
			I0 => re(0),
			O  => range_re(1));

	range_im_h_generator: fft20_c_lut
		generic map (	eqn => "(i3@i2)+(i3@i1)")
		port map (
			I3 => im(3),
			I2 => im(2), 
			I1 => im(1),
			I0 => im(0),
			O  => range_im(1));

	range_re_l_generator: fft20_c_lut
		generic map (	eqn => "(i3@i2)+((~i1)*i0*(~i3))+(i1*(~i0)*i3)")
		port map (
			I3 => re(3),
			I2 => re(2), 
			I1 => re(1),
			I0 => re(0),
			O  => range_re(0));

	range_im_l_generator: fft20_c_lut
		generic map (	eqn => "(i3@i2)+((~i1)*i0*(~i3))+(i1*(~i0)*i3)")
		port map (
			I3 => im(3),
			I2 => im(2), 
			I1 => im(1),
			I0 => im(0),
			O  => range_im(0));

	max_finder: fft20_max2_2 
	PORT MAP(
      a => range_re,	  
      b => range_im,	  
      o => o_range);   

	oreg: fft20_reg_fde 
	generic map(data_width=>2)
	port map(
		D 		=> o_range,
		CLK 	=> clk,
		CE 	=> CE,		
		Q 		=> rang);

END xilinx;
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.fft20_comps.all;

ENTITY fft20_ranger3 IS
	PORT (
		ar			: IN std_logic_vector(3 DOWNTO 0);   
		ai			: IN std_logic_vector(3 DOWNTO 0);   
		br			: IN std_logic_vector(3 DOWNTO 0);   
		bi			: IN std_logic_vector(3 DOWNTO 0);   
		cr			: IN std_logic_vector(3 DOWNTO 0);   
		ci			: IN std_logic_vector(3 DOWNTO 0);   
		dr			: IN std_logic_vector(3 DOWNTO 0);   
		di			: IN std_logic_vector(3 DOWNTO 0);   
		o_range	: OUT std_logic_vector(1 DOWNTO 0);
		CE			: IN std_logic	;
		CLK		: IN std_logic);
END fft20_ranger3;

ARCHITECTURE xilinx OF fft20_ranger3 IS

	SIGNAL a_range				:  std_logic_vector(1 DOWNTO 0);   
	SIGNAL b_range				:  std_logic_vector(1 DOWNTO 0);   
	SIGNAL c_range				:  std_logic_vector(1 DOWNTO 0);   
	SIGNAL d_range				:  std_logic_vector(1 DOWNTO 0);   
	SIGNAL ab_range			:  std_logic_vector(1 DOWNTO 0);   
	SIGNAL cd_range			:  std_logic_vector(1 DOWNTO 0);   
	SIGNAL abcd_range			:  std_logic_vector(1 DOWNTO 0);   

BEGIN

	fft20_ranger_a: fft20_ranger
		port map (
			re	   => ar,
			im    => ai,
         CLK   => CLK,
         CE    => CE,
			rang  => a_range);

	fft20_ranger_b: fft20_ranger
		port map (
			re	   => br,
			im    => bi,
         CLK   => CLK,
         CE    => CE,
			rang  => b_range);

	fft20_ranger_c: fft20_ranger
		port map (
			re	   => cr,
			im    => ci,
         CLK   => CLK,
         CE    => CE,
			rang  => c_range);

	fft20_ranger_d: fft20_ranger
		port map (
			re	   => dr,
			im    => di,
         CLK   => CLK,
         CE    => CE,
			rang  => d_range);

	max_finder4: fft20_max2_2 
	PORT MAP(
      a => a_range,	  
      b => b_range,	  
      o => ab_range);   

	max_finder5: fft20_max2_2 
	PORT MAP(
      a => c_range,	  
      b => d_range,	  
      o => cd_range);   

	max_finder6: fft20_max2_2 
	PORT MAP(
      a => ab_range,	  
      b => cd_range,	  
      o => abcd_range);   

	oreg: fft20_reg_fde 
	generic map(data_width=>2)
	port map(
		D 		=> abcd_range,
		CLK 	=> clk,
		CE 	=> CE,		
		Q 		=> o_range);

END xilinx;


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.prims_comps_v6_0.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.fft20_comps.all;

ENTITY fft20_overflow_gen IS
	PORT (
		ar			: IN std_logic_vector(3 DOWNTO 0);   
		ai			: IN std_logic_vector(3 DOWNTO 0);   
		br			: IN std_logic_vector(3 DOWNTO 0);   
		bi			: IN std_logic_vector(3 DOWNTO 0);   
		cr			: IN std_logic_vector(3 DOWNTO 0);   
		ci			: IN std_logic_vector(3 DOWNTO 0);   
		dr			: IN std_logic_vector(3 DOWNTO 0);   
		di			: IN std_logic_vector(3 DOWNTO 0);   
		overflow	: OUT std_logic;
		CE			: IN std_logic	;
		CLK		: IN std_logic);
END fft20_overflow_gen;

ARCHITECTURE xilinx OF fft20_overflow_gen IS

	SIGNAL ovflow0r         :  std_logic;   
	SIGNAL ovflow0i         :  std_logic;   
	SIGNAL ovflow1r         :  std_logic;   
	SIGNAL ovflow1i         :  std_logic;   
	SIGNAL ovflow2r         :  std_logic;   
	SIGNAL ovflow2i         :  std_logic;   
	SIGNAL ovflow3r         :  std_logic;   
	SIGNAL ovflow3i         :  std_logic;   
	SIGNAL ovflow0123r		:  std_logic;   
	SIGNAL ovflow0123i		:  std_logic;   
	SIGNAL gnd					:  std_logic;
	SIGNAL ovflo				:	std_logic_vector(0 downto 0);   
	SIGNAL ovflow				:	std_logic_vector(0 downto 0);   


BEGIN

      gnd <= '0';

		overflow0r_generator: fft20_c_lut
		generic map (
			eqn => "(~(I0*I1*I2*I3))*(I0+I1+I2+I3)") 
		port map (
			I3 => ar(3),		
			I2 => ar(2), 		
			I1 => ar(1),
			I0 => ar(0),
			O  => ovflow0r);

		overflow0i_generator: fft20_c_lut
		generic map (
			eqn => "(~(I0*I1*I2*I3))*(I0+I1+I2+I3)") 
		port map (
			I3 => ai(3),		
			I2 => ai(2), 		
			I1 => ai(1),
			I0 => ai(0),
			O  => ovflow0i);


		overflow1r_generator: fft20_c_lut
		generic map (
			eqn => "(~(I0*I1*I2*I3))*(I0+I1+I2+I3)") 
		port map (
			I3 => br(3),		
			I2 => br(2), 		
			I1 => br(1),
			I0 => br(0),
			O  => ovflow1r);

		overflow1i_generator: fft20_c_lut
		generic map (
			eqn => "(~(I0*I1*I2*I3))*(I0+I1+I2+I3)") 
		port map (
			I3 => bi(3),		
			I2 => bi(2), 		
			I1 => bi(1),
			I0 => bi(0),
			O  => ovflow1i);


		overflow2r_generator: fft20_c_lut
		generic map (
			eqn => "(~(I0*I1*I2*I3))*(I0+I1+I2+I3)") 
		port map (
			I3 => cr(3),		
			I2 => cr(2), 		
			I1 => cr(1),
			I0 => cr(0),
			O  => ovflow2r);

		overflow2i_generator: fft20_c_lut
		generic map (
			eqn => "(~(I0*I1*I2*I3))*(I0+I1+I2+I3)") 
		port map (
			I3 => ci(3),		
			I2 => ci(2), 		
			I1 => ci(1),
			I0 => ci(0),
			O  => ovflow2i);

		overflow3r_generator: fft20_c_lut
		generic map (
			eqn => "(~(I0*I1*I2*I3))*(I0+I1+I2+I3)") 
		port map (
			I3 => dr(3),		
			I2 => dr(2), 		
			I1 => dr(1),
			I0 => dr(0),
			O  => ovflow3r);

		overflow3i_generator: fft20_c_lut
		generic map (
			eqn => "(~(I0*I1*I2*I3))*(I0+I1+I2+I3)") 
		port map (
			I3 => di(3),		
			I2 => di(2), 		
			I1 => di(1),
			I0 => di(0),
			O  => ovflow3i);


		overflow0123r_generator: fft20_c_lut
		generic map (
			eqn => "i0+i1+i2+i3")
		port map (
			I3 => ovflow0r,		
			I2 => ovflow1r,		
			I1 => ovflow2r,
			I0 => ovflow3r,
			O  => ovflow0123r);

		overflow0123i_generator: fft20_c_lut
		generic map (
			eqn => "i0+i1+i2+i3")
		port map (
			I3 => ovflow0i,		
			I2 => ovflow1i,		
			I1 => ovflow2i,
			I0 => ovflow3i,
			O  => ovflow0123i);

		fft20_overflow_generator: fft20_c_lut
		generic map (
			eqn => "i2+i3")
		port map (
			I3 => ovflow0123i,		
			I2 => ovflow0123r,		
			I1 => gnd,
			I0 => gnd,
			O  => ovflo(0));

		oreg: fft20_reg_fde 
			generic map(data_width=>1)
			port map(
				D 		=> ovflo,
				Q 		=> ovflow, 
				CLK 	=>clk,
				CE 	=> CE);

		overflow <= ovflow(0);

END xilinx;


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

LIBRARY XilinxCoreLib;
USE xilinxcorelib.c_gate_bit_v6_0_comp.all;
USE xilinxcorelib.C_ADDSUB_V6_0_comp.all;
LIBRARY XilinxCoreLib;
USE XilinxCoreLib.fft20_comps.all;

ENTITY fft20_unbiased_round IS
	GENERIC (
		IN_WIDTH 	: INTEGER := 24;
		OUT_WIDTH	: INTEGER := 11);
      PORT (
		clk                    : IN std_logic;   
		ce                     : IN std_logic;   
		D                      : IN std_logic_vector(IN_WIDTH-1 DOWNTO 0);   
		Q                      : OUT std_logic_vector(OUT_WIDTH-1 DOWNTO 0));   
END fft20_unbiased_round;


ARCHITECTURE xilinx OF fft20_unbiased_round IS

	SIGNAL first_fract_bit    	: std_logic;   
	SIGNAL point_five         	: std_logic;   
	SIGNAL integer_part_odd   	: std_logic;   
	SIGNAL pos_fullscale      	: std_logic;   
	SIGNAL carry            	: std_logic;   
	SIGNAL D_delayed			: std_logic_VECTOR(OUT_WIDTH downto 0);
	CONSTANT zeros				: string(1 to 75) :="100000000000000000000000000000000000000000000000000000000000000000000000000";
	CONSTANT pos_full			: string(1 to 75) :="011111111111111111111111111111111111111111111111111111111111111111111111111";
	
BEGIN
	 
	first_fract_bit <= D_delayed(0) ;
	integer_part_odd <= D_delayed(1) ;

	point_five_detect: C_GATE_BIT_V6_0
		generic map(
			c_has_ainit => 0,
			c_input_inv_mask => pos_full(1 to IN_WIDTH-OUT_WIDTH),
			c_sync_enable => 1,
			c_has_sinit => 0,
			c_has_q => 1,
			c_gate_type => 0,
			c_has_sset => 0,
			c_has_o => 0,
			c_inputs => IN_WIDTH-OUT_WIDTH,
			c_has_sclr => 0,
			c_sinit_val => "0",
			c_has_aset => 0,
			c_has_aclr => 0,
			c_pipe_stages => 0,
			c_sync_priority => 1,
			c_enable_rlocs => 1,
			c_has_ce => 1,
			c_ainit_val => "0")
		port map (
			I => D(IN_WIDTH-OUT_WIDTH-1 downto 0), 
			Q => point_five, 
			CLK => CLK, 
			CE => CE);

	delay_reg: fft20_reg_fde
		generic map( data_width => OUT_WIDTH+1)
		port map( 
			D => D(IN_WIDTH-1 downto IN_WIDTH-OUT_WIDTH-1), 
			Q => D_delayed, 
			CLK => clk, 
			CE => ce);

	pos_fullscale_detect: C_GATE_BIT_V6_0
		generic map(
			c_has_ainit => 0,
			c_input_inv_mask => zeros(1 to OUT_WIDTH),
			c_sync_enable => 1,
			c_has_sinit => 0,
			c_has_q => 1,
			c_gate_type => 0,
			c_has_sset => 0,
			c_has_o => 0,
			c_inputs => OUT_WIDTH,
			c_has_sclr => 0,
			c_sinit_val => "0",
			c_has_aset => 0,
			c_has_aclr => 0,
			c_pipe_stages => 0,
			c_sync_priority => 1,
			c_enable_rlocs => 1,
			c_has_ce => 1,
			c_ainit_val => "0")
		port map(
			I => D(IN_WIDTH-1 downto IN_WIDTH-OUT_WIDTH), 
			Q => pos_fullscale, 
			CLK => CLK, 
			CE => CE);

	carry_generator: fft20_c_lut
		generic map (
			eqn => "i0*(i1+~i2)*~i3")
		port map (
			I0 => first_fract_bit,
			I1 => integer_part_odd, 
			I2 => point_five,
			I3 => pos_fullscale,
			O  => carry);

   

	gated_incrementer : C_ADDSUB_V6_0
		generic map(
			c_has_ainit => 0,
			c_has_s => 0,
			c_sync_enable => 0,
			c_has_q => 1,
			c_has_sinit => 0,
			c_has_bypass_with_cin => 0,
			c_has_sset => 0,
			c_has_add => 0,
			c_has_ovfl => 0,
			c_has_q_b_out => 0,
			c_has_sclr => 0,
			c_out_width => OUT_WIDTH,
			c_sinit_val => "0",
			c_bypass_low => 0,
			c_has_b_signed => 0,
			c_b_constant => 1,
			c_has_bypass => 0,
			c_low_bit => 0,
			c_a_type => 1,
			c_has_aset => 0,
			c_has_q_c_out => 0,
			c_b_type => 1,
			c_add_mode => 0,
			c_has_q_ovfl => 0,
			c_has_aclr => 0,
			c_has_b_in => 0,
			c_has_c_in => 1,
			c_has_b_out => 0,
			c_latency => 1,
			c_pipe_stages => 1,
			c_sync_priority => 1,
			c_b_width => 1,
			c_b_value => "0",
			c_bypass_enable => 0,
			c_has_a_signed => 0,
			c_has_c_out => 0,
			c_enable_rlocs => 1,
			c_a_width => OUT_WIDTH,
			c_has_ce => 1,
			c_high_bit => OUT_WIDTH-1,
			c_ainit_val => "0")
		port map (
			A => D_delayed(OUT_WIDTH downto 1),
			C_IN => carry,
			Q => Q,
			CLK => CLK,
			CE => CE);

END xilinx;

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.fft20_comps.all;

LIBRARY XilinxCoreLib;
USE Xilinxcorelib.C_SHIFT_RAM_V6_0_comp.all;

ENTITY fft20_PE4 IS
	GENERIC (
		IO_WIDTH			: integer := 16;
		DRFLY_WIDTH		: integer := 20;		
		TW_WIDTH			: integer := 12;		
		MULT_LATENCY	: integer := 4;		
		C_HAS_MULTS		: integer := 0;		
		C_HAS_BYPASS	: integer := 1;		
		C_HAS_SCALER	: integer := 1;		
		C_HAS_ROUNDER	: integer := 1;		
		C_HAS_OVERFLOW	: integer := 1);		
	PORT (
		I0_RE			: IN std_logic_vector(IO_WIDTH - 1 DOWNTO 0);   
		I0_IM			: IN std_logic_vector(IO_WIDTH - 1 DOWNTO 0);   
		I1_RE     : IN std_logic_vector(IO_WIDTH - 1 DOWNTO 0);   
		I1_IM			: IN std_logic_vector(IO_WIDTH - 1 DOWNTO 0);   
		I2_RE			: IN std_logic_vector(IO_WIDTH - 1 DOWNTO 0);   
		I2_IM			: IN std_logic_vector(IO_WIDTH - 1 DOWNTO 0);   
		I3_RE			: IN std_logic_vector(IO_WIDTH - 1 DOWNTO 0);   
		I3_IM			: IN std_logic_vector(IO_WIDTH - 1 DOWNTO 0);   
		TW1_RE		: IN std_logic_vector(TW_WIDTH - 1 DOWNTO 0);   
		TW1_IM		: IN std_logic_vector(TW_WIDTH - 1 DOWNTO 0);   
		TW2_RE		: IN std_logic_vector(TW_WIDTH - 1 DOWNTO 0);   
		TW2_IM		: IN std_logic_vector(TW_WIDTH - 1 DOWNTO 0);   
		TW3_RE		: IN std_logic_vector(TW_WIDTH - 1 DOWNTO 0);   
		TW3_IM		: IN std_logic_vector(TW_WIDTH - 1 DOWNTO 0);   
		SCALE			: IN std_logic_vector(1 DOWNTO 0) ;   
		BYPASS		: IN std_logic;   
		OVFLO			: OUT std_logic;   
		O0_RE			: OUT std_logic_vector(IO_WIDTH - 1 DOWNTO 0);   
		O0_IM			: OUT std_logic_vector(IO_WIDTH - 1 DOWNTO 0);   
		O1_RE			: OUT std_logic_vector(IO_WIDTH - 1 DOWNTO 0);   
		O1_IM			: OUT std_logic_vector(IO_WIDTH - 1 DOWNTO 0);   
		O2_RE			: OUT std_logic_vector(IO_WIDTH - 1 DOWNTO 0);   
		O2_IM			: OUT std_logic_vector(IO_WIDTH - 1 DOWNTO 0);   
		O3_RE			: OUT std_logic_vector(IO_WIDTH - 1 DOWNTO 0);   
		O3_IM			: OUT std_logic_vector(IO_WIDTH - 1 DOWNTO 0);
		CE				: IN std_logic;   
		CLK			  : IN std_logic);   
END fft20_PE4;

ARCHITECTURE xilinx OF fft20_PE4 IS

    
	CONSTANT  MULT_DIFF			  : integer := DRFLY_WIDTH - IO_WIDTH;

	
	CONSTANT  MULT_OUT_WIDTH	: integer := IO_WIDTH + TW_WIDTH + 1;

	
	CONSTANT  UNSCALED_WIDTH	: integer := IO_WIDTH + MULT_DIFF*C_HAS_MULTS + 2;
	CONSTANT  SCALED_WIDTH		: integer := UNSCALED_WIDTH + 3;
	
	SIGNAL I0_RE_DELAYED	: std_logic_vector(DRFLY_WIDTH-1 DOWNTO 0) 	;	
	SIGNAL I0_IM_DELAYED	: std_logic_vector(DRFLY_WIDTH-1 DOWNTO 0) 	;	
	SIGNAL mlplied1_re		: std_logic_vector(MULT_OUT_WIDTH-1 DOWNTO 0);	
	SIGNAL mlplied1_im		: std_logic_vector(MULT_OUT_WIDTH-1 DOWNTO 0); 
	SIGNAL mlplied2_re		: std_logic_vector(MULT_OUT_WIDTH-1 DOWNTO 0);   
	SIGNAL mlplied2_im		: std_logic_vector(MULT_OUT_WIDTH-1 DOWNTO 0);   
	SIGNAL mlplied3_re		: std_logic_vector(MULT_OUT_WIDTH-1 DOWNTO 0);   
	SIGNAL mlplied3_im		: std_logic_vector(MULT_OUT_WIDTH-1 DOWNTO 0);   
  SIGNAL drfly_o0_re		: std_logic_vector(UNSCALED_WIDTH-1 DOWNTO 0);
  SIGNAL drfly_o0_im		: std_logic_vector(UNSCALED_WIDTH-1 DOWNTO 0);
  SIGNAL drfly_o1_re		: std_logic_vector(UNSCALED_WIDTH-1 DOWNTO 0);
  SIGNAL drfly_o1_im		: std_logic_vector(UNSCALED_WIDTH-1 DOWNTO 0);
  SIGNAL drfly_o2_re		: std_logic_vector(UNSCALED_WIDTH-1	DOWNTO 0);
  SIGNAL drfly_o2_im		: std_logic_vector(UNSCALED_WIDTH-1	DOWNTO 0);
  SIGNAL drfly_o3_re		: std_logic_vector(UNSCALED_WIDTH-1 DOWNTO 0);
  SIGNAL drfly_o3_im		: std_logic_vector(UNSCALED_WIDTH-1 DOWNTO 0);
  SIGNAL scaled0_re			: std_logic_vector(SCALED_WIDTH-1 DOWNTO 0);
  SIGNAL scaled0_im			: std_logic_vector(SCALED_WIDTH-1 DOWNTO 0);
  SIGNAL scaled1_re     : std_logic_vector(SCALED_WIDTH-1 DOWNTO 0);
  SIGNAL scaled1_im			: std_logic_vector(SCALED_WIDTH-1 DOWNTO 0);
  SIGNAL scaled2_re			: std_logic_vector(SCALED_WIDTH-1 DOWNTO 0);
  SIGNAL scaled2_im			: std_logic_vector(SCALED_WIDTH-1 DOWNTO 0);
  SIGNAL scaled3_re			: std_logic_vector(SCALED_WIDTH-1 DOWNTO 0);
  SIGNAL scaled3_im			: std_logic_vector(SCALED_WIDTH-1 DOWNTO 0);
  SIGNAL no_mult_scaled0_re : std_logic_vector(3 downto 0);
  SIGNAL no_mult_scaled0_im : std_logic_vector(3 downto 0);
  SIGNAL no_mult_scaled1_re : std_logic_vector(3 downto 0);
  SIGNAL no_mult_scaled1_im : std_logic_vector(3 downto 0);
  SIGNAL no_mult_scaled2_re : std_logic_vector(3 downto 0);
  SIGNAL no_mult_scaled2_im : std_logic_vector(3 downto 0);
  SIGNAL no_mult_scaled3_re : std_logic_vector(3 downto 0);
  SIGNAL no_mult_scaled3_im : std_logic_vector(3 downto 0);

BEGIN 

	
	mult_gen: if c_has_mults=1 generate

		pipeline_balancer_re: C_SHIFT_RAM_V6_0
		GENERIC MAP(
			c_has_ainit => 0,
			c_shift_type => 0,
			c_addr_width => 3,
			c_read_mif => 0,
			c_sync_enable => 0,
			c_has_sinit => 0,
			c_has_sset => 0,
			c_width => IO_WIDTH,
			c_has_sclr => 0,
			c_has_a => 0,
			c_has_aset => 0,
			c_generate_mif => 0,
			c_default_data_radix => 1,
			c_has_aclr => 0,
			c_depth => MULT_LATENCY,
			c_default_data => "0",
			c_reg_last_bit => 0,
			c_sync_priority => 1,
			c_enable_rlocs => 1,
			c_has_ce => 1)
		PORT MAP (
			CLK => CLK,
			D => I0_RE,
			Q => I0_RE_DELAYED(DRFLY_WIDTH-2 downto DRFLY_WIDTH-1-IO_WIDTH),
			CE => CE);

	  	pipeline_balancer_im: C_SHIFT_RAM_V6_0
		GENERIC MAP(
			c_has_ainit => 0,
			c_shift_type => 0,
			c_addr_width => 3,
			c_read_mif => 0,
			c_sync_enable => 0,
			c_has_sinit => 0,
			c_has_sset => 0,
			c_width => IO_WIDTH,
			c_has_sclr => 0,
			c_has_a => 0,
			c_has_aset => 0,
			c_generate_mif => 0,
			c_default_data_radix => 1,
			c_has_aclr => 0,
			c_depth => MULT_LATENCY,
			c_default_data => "0",
			c_reg_last_bit => 0,
			c_sync_priority => 1,
			c_enable_rlocs => 1,
			c_has_ce => 1)
		PORT MAP (
			CLK => CLK,
			D => I0_IM,
			Q => I0_IM_DELAYED(DRFLY_WIDTH-2 downto DRFLY_WIDTH-1-IO_WIDTH),
			CE => CE);
	
		I0_RE_DELAYED(DRFLY_WIDTH-1) <= I0_RE_DELAYED(DRFLY_WIDTH-2);
		I0_IM_DELAYED(DRFLY_WIDTH-1) <= I0_IM_DELAYED(DRFLY_WIDTH-2);
		padd_I0_with_zeros: if (DRFLY_WIDTH-IO_WIDTH>1) generate
			I0_RE_DELAYED(DRFLY_WIDTH-2-IO_WIDTH downto 0) <= (others => '0');
			I0_IM_DELAYED(DRFLY_WIDTH-2-IO_WIDTH downto 0) <= (others => '0');
			end generate;
	
		
		Mult1 : fft20_complex_mult3 
		GENERIC MAP(
			a_width => IO_WIDTH,
			b_width => TW_WIDTH)
		PORT MAP(
			clk=> clk, 
			ce => ce,
			ar => I1_RE, 
			ai => I1_IM,
			br => TW1_RE,
			bi => TW1_IM,
			pr => mlplied1_re,
			pi => mlplied1_im);

		
		Mult2 : fft20_complex_mult3 
		GENERIC MAP(
			a_width => IO_WIDTH,
			b_width => TW_WIDTH)
		PORT MAP(
			clk=> clk, 
			ce => ce,
			ar => I2_RE, 
			ai => I2_IM,
			br => TW2_RE,
			bi => TW2_IM,
			pr => mlplied2_re,
			pi => mlplied2_im);

		
		Mult3 : fft20_complex_mult3 
		GENERIC MAP(
			a_width => IO_WIDTH,
			b_width => TW_WIDTH)
		PORT MAP(
			clk=> clk, 
			ce => ce,
			ar => I3_RE, 
			ai => I3_IM,
			br => TW3_RE,
			bi => TW3_IM,
			pr => mlplied3_re,
			pi => mlplied3_im);
			
	dragonfly_without_bypass: if (C_HAS_BYPASS /= 1) generate
		
		dragonfly_inst: fft20_dragonfly 
		GENERIC MAP( data_width => DRFLY_WIDTH)
		PORT MAP(
			CLK => clk, 
			CE  => ce, 
			X0r => I0_RE_DELAYED,
			X0i => I0_IM_DELAYED,
			X1r => mlplied1_re(MULT_OUT_WIDTH-3 downto MULT_OUT_WIDTH-DRFLY_WIDTH-2),
			X1i => mlplied1_im(MULT_OUT_WIDTH-3 downto MULT_OUT_WIDTH-DRFLY_WIDTH-2),
			X2r => mlplied2_re(MULT_OUT_WIDTH-3 downto MULT_OUT_WIDTH-DRFLY_WIDTH-2),
			X2i => mlplied2_im(MULT_OUT_WIDTH-3 downto MULT_OUT_WIDTH-DRFLY_WIDTH-2),
			X3r => mlplied3_re(MULT_OUT_WIDTH-3 downto MULT_OUT_WIDTH-DRFLY_WIDTH-2),
			X3i => mlplied3_im(MULT_OUT_WIDTH-3 downto MULT_OUT_WIDTH-DRFLY_WIDTH-2),
			Y0r => drfly_o0_re,
			Y0i => drfly_o0_im,
			Y1r => drfly_o2_re,
			Y1i => drfly_o2_im,
			Y2r => drfly_o1_re,
			Y2i => drfly_o1_im,
			Y3r => drfly_o3_re,
			Y3i => drfly_o3_im);
	end generate;

	dragonfly_with_bypass: if (C_HAS_BYPASS = 1) generate
		
		dragonfly_inst: fft20_dfly_byp
		GENERIC MAP( data_width => DRFLY_WIDTH)
		PORT MAP(
			CLK => clk, 
			CE  => ce, 
			BYPASS => bypass,
			X0r => I0_RE_DELAYED,
			X0i => I0_IM_DELAYED,
			X1r => mlplied1_re(MULT_OUT_WIDTH-3 downto MULT_OUT_WIDTH-DRFLY_WIDTH-2),
			X1i => mlplied1_im(MULT_OUT_WIDTH-3 downto MULT_OUT_WIDTH-DRFLY_WIDTH-2),
			X2r => mlplied2_re(MULT_OUT_WIDTH-3 downto MULT_OUT_WIDTH-DRFLY_WIDTH-2),
			X2i => mlplied2_im(MULT_OUT_WIDTH-3 downto MULT_OUT_WIDTH-DRFLY_WIDTH-2),
			X3r => mlplied3_re(MULT_OUT_WIDTH-3 downto MULT_OUT_WIDTH-DRFLY_WIDTH-2),
			X3i => mlplied3_im(MULT_OUT_WIDTH-3 downto MULT_OUT_WIDTH-DRFLY_WIDTH-2),
			Y0r => drfly_o0_re,
			Y0i => drfly_o0_im,
			Y1r => drfly_o2_re,
			Y1i => drfly_o2_im,
			Y2r => drfly_o1_re,
			Y2i => drfly_o1_im,
			Y3r => drfly_o3_re,
			Y3i => drfly_o3_im);
		end generate;

	end generate;

	no_mults_gen: if c_has_mults /=1 generate
		dragonfly_without_bypass: if (C_HAS_BYPASS /= 1) generate
		
		dragonfly_inst: fft20_dragonfly 
		GENERIC MAP( data_width => IO_WIDTH)
		PORT MAP(
			CLK => clk, 
			CE  => ce, 
			X0r => I0_RE,
			X0i => I0_IM,
			X1r => I1_RE,
			X1i => I1_IM,
			X2r => I2_RE,
			X2i => I2_IM,
			X3r => I3_RE,
			X3i => I3_IM,
			Y0r => drfly_o0_re,
			Y0i => drfly_o0_im,
			Y1r => drfly_o2_re,
			Y1i => drfly_o2_im,
			Y2r => drfly_o1_re,
			Y2i => drfly_o1_im,
			Y3r => drfly_o3_re,
			Y3i => drfly_o3_im);
	end generate;

	dragonfly_with_bypass: if (C_HAS_BYPASS = 1) generate
		
		dragonfly_inst: fft20_dfly_byp
		GENERIC MAP( data_width => IO_WIDTH)
		PORT MAP(
			CLK => clk, 
			CE  => ce, 
			BYPASS => bypass,
			X0r => I0_RE,
			X0i => I0_IM,
			X1r => I1_RE,
			X1i => I1_IM,
			X2r => I2_RE,
			X2i => I2_IM,
			X3r => I3_RE,
			X3i => I3_IM,
			Y0r => drfly_o0_re,
			Y0i => drfly_o0_im,
			Y1r => drfly_o2_re,
			Y1i => drfly_o2_im,
			Y2r => drfly_o1_re,
			Y2i => drfly_o1_im,
			Y3r => drfly_o3_re,
			Y3i => drfly_o3_im);
		end generate;
	end generate;  

	scaler_gen: if (C_HAS_SCALER = 1) generate

		
		scaler_0r: fft20_arith_shift3 
		GENERIC MAP(width => UNSCALED_WIDTH)
		PORT MAP(
			CLK 	=> clk, 
			CE  	=> ce, 
			x		=> drfly_o0_re,
			shift	=> scale,
			q		=> scaled0_re);

		scaler_0i: fft20_arith_shift3 
		GENERIC MAP(width => UNSCALED_WIDTH)
		PORT MAP(
			CLK 	=> clk, 
			CE  	=> ce, 
			x		=> drfly_o0_im,
			shift	=> scale,
			q		=> scaled0_im);

		
		scaler_1r: fft20_arith_shift3 
		GENERIC MAP(width => UNSCALED_WIDTH)
		PORT MAP(
			CLK 	=> clk, 
			CE  	=> ce, 
			x		=> drfly_o1_re,
			shift	=> scale,
			q		=> scaled1_re);

		scaler_1i: fft20_arith_shift3 
		GENERIC MAP(width => UNSCALED_WIDTH)
		PORT MAP(
			CLK 	=> clk, 
			CE  	=> ce, 
			x		=> drfly_o1_im,
			shift	=> scale,
			q		=> scaled1_im);

		
		scaler_2r: fft20_arith_shift3 
		GENERIC MAP(width => UNSCALED_WIDTH)
		PORT MAP(
			CLK 	=> clk, 
			CE  	=> ce, 
			x		=> drfly_o2_re,
			shift	=> scale,
			q		=> scaled2_re);

		scaler_2i: fft20_arith_shift3 
		GENERIC MAP(width => UNSCALED_WIDTH)
		PORT MAP(
			CLK 	=> clk, 
			CE  	=> ce, 
			x		=> drfly_o2_im,
			shift	=> scale,
			q		=> scaled2_im);

		
		scaler_3r: fft20_arith_shift3 
		GENERIC MAP(width => UNSCALED_WIDTH)
		PORT MAP(
			CLK 	=> clk, 
			CE  	=> ce, 
			x		=> drfly_o3_re,
			shift	=> scale,
			q		=> scaled3_re);

		scaler_3i: fft20_arith_shift3 
		GENERIC MAP(width => UNSCALED_WIDTH)
		PORT MAP(
			CLK 	=> clk, 
			CE  	=> ce, 
			x		=> drfly_o3_im,
			shift	=> scale,
			q		=> scaled3_im);
	end generate;

	no_scaler_gen: if (C_HAS_SCALER = 0) generate
	   scaled0_re(SCALED_WIDTH-1 downto 3) <=  drfly_o0_re;
	   scaled0_im(SCALED_WIDTH-1 downto 3) <=  drfly_o0_im;
	   scaled1_re(SCALED_WIDTH-1 downto 3) <=  drfly_o1_re;
	   scaled1_im(SCALED_WIDTH-1 downto 3) <=  drfly_o1_im;
	   scaled2_re(SCALED_WIDTH-1 downto 3) <=  drfly_o2_re;
	   scaled2_im(SCALED_WIDTH-1 downto 3) <=  drfly_o2_im;
	   scaled3_re(SCALED_WIDTH-1 downto 3) <=  drfly_o3_re;
	   scaled3_im(SCALED_WIDTH-1 downto 3) <=  drfly_o3_im;

     scaled0_re(2 downto 0) <= "000";
	   scaled0_im(2 downto 0) <= "000";
	   scaled1_re(2 downto 0) <= "000";
	   scaled1_im(2 downto 0) <= "000";
	   scaled2_re(2 downto 0) <= "000";
	   scaled2_im(2 downto 0) <= "000";
	   scaled3_re(2 downto 0) <= "000"; 
	   scaled3_im(2 downto 0) <= "000";
	end generate;

	overflow_generator: if (C_HAS_OVERFLOW = 1) generate

    with_mults_overflow: if (C_HAS_MULTS = 1) generate
		  overflow_gen_inst: fft20_overflow_gen
			  PORT MAP(
				  ar => scaled0_re(SCALED_WIDTH-1 downto SCALED_WIDTH-4),		    
				  ai => scaled0_im(SCALED_WIDTH-1 downto SCALED_WIDTH-4),
				  br => scaled1_re(SCALED_WIDTH-1 downto SCALED_WIDTH-4),
				  bi => scaled1_im(SCALED_WIDTH-1 downto SCALED_WIDTH-4),
				  cr => scaled2_re(SCALED_WIDTH-1 downto SCALED_WIDTH-4),
				  ci => scaled2_im(SCALED_WIDTH-1 downto SCALED_WIDTH-4),
				  dr => scaled3_re(SCALED_WIDTH-1 downto SCALED_WIDTH-4),
				  di => scaled3_im(SCALED_WIDTH-1 downto SCALED_WIDTH-4),
				  overflow => OVFLO,
				  clk => clk,
				  ce => ce);
		end generate;			
		
		without_mults_overflow: if (C_HAS_MULTS /= 1) generate

      no_mult_scaled0_re(3) <= scaled0_re(SCALED_WIDTH-1);
      no_mult_scaled0_im(3) <= scaled0_im(SCALED_WIDTH-1);
      no_mult_scaled1_re(3) <= scaled1_re(SCALED_WIDTH-1);
      no_mult_scaled1_im(3) <= scaled1_im(SCALED_WIDTH-1);
      no_mult_scaled2_re(3) <= scaled2_re(SCALED_WIDTH-1);
      no_mult_scaled2_im(3) <= scaled2_im(SCALED_WIDTH-1);
      no_mult_scaled3_re(3) <= scaled3_re(SCALED_WIDTH-1);
      no_mult_scaled3_im(3) <= scaled3_im(SCALED_WIDTH-1);
			
			no_mult_scaled0_re(2 downto 0) <= scaled0_re(SCALED_WIDTH-1 downto SCALED_WIDTH-3);
      no_mult_scaled0_im(2 downto 0) <= scaled0_im(SCALED_WIDTH-1 downto SCALED_WIDTH-3);
      no_mult_scaled1_re(2 downto 0) <= scaled1_re(SCALED_WIDTH-1 downto SCALED_WIDTH-3);
      no_mult_scaled1_im(2 downto 0) <= scaled1_im(SCALED_WIDTH-1 downto SCALED_WIDTH-3);
      no_mult_scaled2_re(2 downto 0) <= scaled2_re(SCALED_WIDTH-1 downto SCALED_WIDTH-3);
      no_mult_scaled2_im(2 downto 0) <= scaled2_im(SCALED_WIDTH-1 downto SCALED_WIDTH-3);
      no_mult_scaled3_re(2 downto 0) <= scaled3_re(SCALED_WIDTH-1 downto SCALED_WIDTH-3);
      no_mult_scaled3_im(2 downto 0) <= scaled3_im(SCALED_WIDTH-1 downto SCALED_WIDTH-3);
		
		  overflow_gen_inst: fft20_overflow_gen
			  PORT MAP(
				  ar => no_mult_scaled0_re,		    
				  ai => no_mult_scaled0_im,
				  br => no_mult_scaled1_re,
				  bi => no_mult_scaled1_im,
				  cr => no_mult_scaled2_re,
				  ci => no_mult_scaled2_im,
				  dr => no_mult_scaled3_re,
				  di => no_mult_scaled3_im,
				  overflow => OVFLO,
				  clk => clk,
				  ce => ce);
	  end generate;			
					
	end generate;

	no_overflow: if (C_HAS_OVERFLOW = 0) generate
	  OVFLO <= '0';
	end generate;	

	rounder_inst: if (C_HAS_ROUNDER = 1) generate

	  with_mults: if (C_HAS_MULTS = 1) generate
			
		  rounder_0r: fft20_unbiased_round
			GENERIC MAP(
				IN_WIDTH 	=> SCALED_WIDTH-3,
				OUT_WIDTH	=> IO_WIDTH)
      PORT MAP (
				clk => clk,
				ce  => ce, 
				D   => scaled0_re(SCALED_WIDTH-4 downto 0),
				Q   => O0_RE);   
  
			rounder_0i: fft20_unbiased_round
			GENERIC MAP(
				IN_WIDTH 	=> SCALED_WIDTH-3,
				OUT_WIDTH	=> IO_WIDTH)
		  PORT MAP (
				clk => clk,
				ce  => ce, 
				D   => scaled0_im(SCALED_WIDTH-4 downto 0),
				Q   => O0_im);   
  
			
			rounder_1r: fft20_unbiased_round
			GENERIC MAP(
				IN_WIDTH 	=> SCALED_WIDTH-3,
				OUT_WIDTH	=> IO_WIDTH)
		  PORT MAP (
				clk => clk,
				ce  => ce, 
				D   => scaled1_re(SCALED_WIDTH-4 downto 0),
				Q   => O1_RE);   
  
			rounder_1i: fft20_unbiased_round
			GENERIC MAP(
				IN_WIDTH 	=> SCALED_WIDTH-3,
				OUT_WIDTH	=> IO_WIDTH)
      PORT MAP (
				clk => clk,
				ce  => ce, 
				D   => scaled1_im(SCALED_WIDTH-4 downto 0),
				Q   => O1_im);   
  
			
			rounder_2r: fft20_unbiased_round
			GENERIC MAP(
				IN_WIDTH 	=> SCALED_WIDTH-3,
				OUT_WIDTH	=> IO_WIDTH)
      PORT MAP (
				clk => clk,
				ce  => ce, 
				D   => scaled2_re(SCALED_WIDTH-4 downto 0),
				Q   => O2_RE);   
  
			rounder_2i: fft20_unbiased_round
			GENERIC MAP(
				IN_WIDTH 	=> SCALED_WIDTH-3,
				OUT_WIDTH	=> IO_WIDTH)
      PORT MAP (
				clk => clk,
				ce  => ce, 
				D   => scaled2_im(SCALED_WIDTH-4 downto 0),
				Q   => O2_im);   
  
			
			rounder_3r: fft20_unbiased_round
			GENERIC MAP(
				IN_WIDTH 	=> SCALED_WIDTH-3,
				OUT_WIDTH	=> IO_WIDTH)
      PORT MAP (
				clk => clk,
				ce  => ce, 
				D   => scaled3_re(SCALED_WIDTH-4 downto 0),
				Q   => O3_RE);   
  
			rounder_3i: fft20_unbiased_round
			GENERIC MAP(
				IN_WIDTH 	=> SCALED_WIDTH-3,
				OUT_WIDTH	=> IO_WIDTH)
      PORT MAP (
				clk => clk,
				ce  => ce, 
				D   => scaled3_im(SCALED_WIDTH-4 downto 0),
				Q   => O3_im);   
		end generate;
		
    without_mults: if (C_HAS_MULTS /= 1) generate  
			
			rounder_0r: fft20_unbiased_round
			GENERIC MAP(
				IN_WIDTH 	=> SCALED_WIDTH-2,
				OUT_WIDTH	=> IO_WIDTH)
      PORT MAP (
				clk => clk,
				ce  => ce, 
				D   => scaled0_re(SCALED_WIDTH-3 downto 0),
				Q   => O0_RE);   
  
			rounder_0i: fft20_unbiased_round
			GENERIC MAP(
				IN_WIDTH 	=> SCALED_WIDTH-2,
				OUT_WIDTH	=> IO_WIDTH)
		  PORT MAP (
				clk => clk,
				ce  => ce, 
				D   => scaled0_im(SCALED_WIDTH-3 downto 0),
				Q   => O0_im);   
  
			
			rounder_1r: fft20_unbiased_round
			GENERIC MAP(
				IN_WIDTH 	=> SCALED_WIDTH-2,
				OUT_WIDTH	=> IO_WIDTH)
		  PORT MAP (
				clk => clk,
				ce  => ce, 
				D   => scaled1_re(SCALED_WIDTH-3 downto 0),
				Q   => O1_RE);   
  
			rounder_1i: fft20_unbiased_round
			GENERIC MAP(
				IN_WIDTH 	=> SCALED_WIDTH-2,
				OUT_WIDTH	=> IO_WIDTH)
      PORT MAP (
				clk => clk,
				ce  => ce, 
				D   => scaled1_im(SCALED_WIDTH-3 downto 0),
				Q   => O1_im);   
  
			
			rounder_2r: fft20_unbiased_round
			GENERIC MAP(
				IN_WIDTH 	=> SCALED_WIDTH-2,
				OUT_WIDTH	=> IO_WIDTH)
      PORT MAP (
				clk => clk,
				ce  => ce, 
				D   => scaled2_re(SCALED_WIDTH-3 downto 0),
				Q   => O2_RE);   
  
			rounder_2i: fft20_unbiased_round
			GENERIC MAP(
				IN_WIDTH 	=> SCALED_WIDTH-2,
				OUT_WIDTH	=> IO_WIDTH)
      PORT MAP (
				clk => clk,
				ce  => ce, 
				D   => scaled2_im(SCALED_WIDTH-3 downto 0),
				Q   => O2_im);   
  
			
			rounder_3r: fft20_unbiased_round
			GENERIC MAP(
				IN_WIDTH 	=> SCALED_WIDTH-2,
				OUT_WIDTH	=> IO_WIDTH)
      PORT MAP (
				clk => clk,
				ce  => ce, 
				D   => scaled3_re(SCALED_WIDTH-3 downto 0),
				Q   => O3_RE);   
  
			rounder_3i: fft20_unbiased_round
			GENERIC MAP(
				IN_WIDTH 	=> SCALED_WIDTH-2,
				OUT_WIDTH	=> IO_WIDTH)
      PORT MAP (
				clk => clk,
				ce  => ce, 
				D   => scaled3_im(SCALED_WIDTH-3 downto 0),
				Q   => O3_im);   
		end generate;	
	end generate;

	truncate: if (C_HAS_ROUNDER = 0) generate
	
	  with_mults_truncate: if (C_HAS_MULTS = 1) generate
		  O0_re <= scaled0_re(SCALED_WIDTH-4 downto SCALED_WIDTH-3-IO_WIDTH);
		  O0_im <= scaled0_im(SCALED_WIDTH-4 downto SCALED_WIDTH-3-IO_WIDTH);
		  O1_re <= scaled1_re(SCALED_WIDTH-4 downto SCALED_WIDTH-3-IO_WIDTH);
		  O1_im <= scaled1_im(SCALED_WIDTH-4 downto SCALED_WIDTH-3-IO_WIDTH);
		  O2_re <= scaled2_re(SCALED_WIDTH-4 downto SCALED_WIDTH-3-IO_WIDTH);
		  O2_im <= scaled2_im(SCALED_WIDTH-4 downto SCALED_WIDTH-3-IO_WIDTH);
		  O3_re <= scaled3_re(SCALED_WIDTH-4 downto SCALED_WIDTH-3-IO_WIDTH);
		  O3_im <= scaled3_im(SCALED_WIDTH-4 downto SCALED_WIDTH-3-IO_WIDTH);
		end generate;
		
    without_mults_truncate: if (C_HAS_MULTS /= 1) generate  
		  O0_re <= scaled0_re(SCALED_WIDTH-3 downto SCALED_WIDTH-2-IO_WIDTH);
		  O0_im <= scaled0_im(SCALED_WIDTH-3 downto SCALED_WIDTH-2-IO_WIDTH);
		  O1_re <= scaled1_re(SCALED_WIDTH-3 downto SCALED_WIDTH-2-IO_WIDTH);
		  O1_im <= scaled1_im(SCALED_WIDTH-3 downto SCALED_WIDTH-2-IO_WIDTH);
		  O2_re <= scaled2_re(SCALED_WIDTH-3 downto SCALED_WIDTH-2-IO_WIDTH);
		  O2_im <= scaled2_im(SCALED_WIDTH-3 downto SCALED_WIDTH-2-IO_WIDTH);
		  O3_re <= scaled3_re(SCALED_WIDTH-3 downto SCALED_WIDTH-2-IO_WIDTH);
		  O3_im <= scaled3_im(SCALED_WIDTH-3 downto SCALED_WIDTH-2-IO_WIDTH);
		end generate;
	end generate;

END xilinx;

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.c_sin_cos_v4_2_comp.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.fft20_pkg.all;

ENTITY fft20_sin_cos IS
	generic ( 
		MEM_TYPE 		: integer := 1;
		THETA_WIDTH 	: integer := 10;
		TWIDDLE_WIDTH 	: integer := 16);
	port (
		THETA  : IN std_logic_VECTOR(THETA_WIDTH-1 downto 0);
		CLK    : IN std_logic;
		CE     : IN std_logic;
		SINE   : OUT std_logic_VECTOR(TWIDDLE_WIDTH-1 downto 0);
		COSINE : OUT std_logic_VECTOR(TWIDDLE_WIDTH-1 downto 0));
END fft20_sin_cos;

ARCHITECTURE xilinx OF fft20_sin_cos IS

	signal gnd 	: std_logic;
	signal open_rdy	: std_logic;
	signal open_rfd	: std_logic;
	
begin 
	gnd <='0';
	wrapped_fft20_sin_cos: C_SIN_COS_V4_2
		generic map (
			c_reg_input => 0,
			c_has_rdy => 0,
			c_has_sclr => 0,
			c_symmetric => 1,
			c_reg_output => 1,
			c_has_nd => 0,
			c_enable_rlocs => 1,
			c_has_rfd => 0,
			c_negative_sine => 0,
			c_latency => 1+GET_SIN_COS_PIPE_STAGES(MEM_TYPE, THETA_WIDTH, TWIDDLE_WIDTH),
			c_has_ce => 1,
			c_pipe_stages => GET_SIN_COS_PIPE_STAGES(MEM_TYPE, THETA_WIDTH, TWIDDLE_WIDTH),
			c_has_aclr => 0,
			c_outputs_required => 2,
			c_theta_width => THETA_WIDTH,
			c_mem_type => MEM_TYPE,
			c_negative_cosine => 0,
			c_output_width => TWIDDLE_WIDTH)
		port map (
			aclr  => gnd,
			ce    => CE,
			clk   => CLK,
			nd    => gnd,
			sclr  => gnd,
			theta => THETA,
			rdy   => open_rdy,
			rfd   => open_rfd,
			cosine => COSINE,
			sine  => SINE);
			
END xilinx;



LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.blkmemdp_v5_0_comp.all;

ENTITY fft20_dpm IS
	generic (
		width : integer := 10;
		depth	: integer := 6;		
    delay	: integer := 1);
	port (
		addra: IN std_logic_VECTOR(depth-1 downto 0);
		addrb: IN std_logic_VECTOR(depth-1 downto 0);
		clk: IN std_logic;
		wea: IN std_logic;
    ena: IN std_logic := '1';
   	enb: IN std_logic;
		dina: IN std_logic_VECTOR(width-1 downto 0);
		doutb: OUT std_logic_VECTOR(width-1 downto 0));
END fft20_dpm;

ARCHITECTURE xilinx OF fft20_dpm IS

	signal dinb : std_logic_vector(width-1 downto 0) := (others => '0');
	constant i_depth : integer := 2**depth;
	constant reg_stages : integer := delay-1;
begin

  DPM_inst : blkmemdp_v5_0
		generic map(
		  c_family => "virtex2",
			c_reg_inputsb => 0,
			c_reg_inputsa => 0,
			c_has_ndb => 0,
			c_has_nda => 0,
			c_ytop_addr => "65536",
			c_has_rfdb => 0,
			c_has_rfda => 0,
			c_yena_is_high => 1,
			c_ywea_is_high => 1,
			c_yclka_is_rising => 1,
			c_yhierarchy => "hierarchy1",
			c_ysinita_is_high => 1,
			c_ybottom_addr => "0",
			c_width_b => width,
			c_width_a => width,
			c_sinita_value => "0",
			c_sinitb_value => "0",
			c_limit_data_pitch => 18,
			c_write_modeb => 1,
			c_write_modea => 1,
			c_has_rdyb => 0,
			c_has_rdya => 0,
			c_yUSE_single_primitive => 0,
			c_addra_width => depth,
			c_addrb_width => depth,
			c_has_limit_data_pitch => 0,
			c_default_data => "0",
			c_pipe_stages_b => reg_stages,
			c_yweb_is_high => 1,
			c_yenb_is_high => 1,
			c_pipe_stages_a => 0,
			c_yclkb_is_rising => 1,
			c_enable_rlocs => 0,
			c_ysinitb_is_high => 1,
			c_has_web => 0,
			c_has_default_data => 1,
			c_has_sinitb => 0,
			c_has_wea => 1,
			c_has_sinita => 0,
			c_has_dinb => 0,
			c_has_dina => 1,
			c_ymake_bmm => 0,
			c_has_enb => 1,
			c_has_ena => 1,
			c_depth_b => i_depth,
			c_mem_init_file => "xfft_v2_0_null.mif",
			c_depth_a => i_depth,
			c_has_doutb => 1,
			c_has_douta => 0)
		port map (
			addra => addra,
			addrb => addrb,
			clka => clk,
			clkb => clk,
			dinb => dinb,
			dina => dina,
			doutb => doutb,
			ena => ena,
  			enb => enb,
			wea => wea);

END xilinx;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY xilinxcorelib;
USE xilinxcorelib.c_dist_mem_v6_0_comp.all;

entity fft20_dist_mem is
    generic (
        DELAY	: integer := 1;
        DEPTH	: integer := 9;		
        WIDTH   : integer := 32 );
    port (
        ADDRA   : in std_logic_vector(DEPTH-1 downto 0);
        ADDRB   : in std_logic_vector(DEPTH-1 downto 0);
        CLK     : in std_logic;
        DINA    : in std_logic_vector(WIDTH-1 downto 0);
        ENA     : in std_logic;
        ENB     : in std_logic;
        WEA     : in std_logic;
        DOUTB   : out std_logic_vector(WIDTH-1 downto 0) );
end fft20_dist_mem;

architecture xilinx of fft20_dist_mem is

    constant I_DEPTH    : integer := 2**DEPTH;
	constant REG_STAGES : integer := DELAY-1;
	
    signal  open_o      : std_logic_vector(WIDTH-1 downto 0);
    signal  addra_x     : std_logic_vector(3 downto 0);
    signal  addrb_x     : std_logic_vector(3 downto 0);
    
begin

    depth_of_8: if (DEPTH < 4) generate
    
        addra_x(2 downto 0) <= addra;
        addra_x(3 downto 3) <= (others => '0');
        addrb_x(2 downto 0) <= addrb;
        addrb_x(3 downto 3) <= (others => '0');
        
        dist_mem_inst: c_dist_mem_v6_0
		    generic map (
			    c_qualify_we => 0,
			    c_mem_type => 2,
			    c_has_qdpo_rst => 0,
			    c_has_qspo => 1,
			    c_has_qspo_rst => 0,
			    c_has_dpo => 0,
			    c_has_qdpo_clk => 0,
			    c_has_d => 1,
			    c_qce_joined => 0,
			    c_width => WIDTH,
			    c_reg_a_d_inputs => 0,
			    c_latency => 1,
			    c_has_we => 1,
			    c_has_spo => 0,
			    c_depth => 16,
			    c_has_i_ce => 0,
			    c_default_data => "0",
			    c_default_data_radix => 1,
			    c_has_dpra => 1,
			    c_has_clk => 1,
			    c_enable_rlocs => 0,
			    c_generate_mif => 0,
			    c_has_qspo_ce => 1,
			    c_addr_width => 4,
			    c_has_qdpo_srst => 0,
			    c_mux_type => 0,
			    c_has_spra => 0,
			    c_has_qdpo => 1,
			    c_mem_init_file => "xfft_v2_0_null.mif",
			    c_reg_dpra_input => 0,
			    c_has_rd_en => 0,
			    c_has_qspo_srst => 0,
			    c_read_mif => 0,
			    c_sync_enable => 0,
			    c_has_qdpo_ce => 1 )
		    port map (
			    A => addra_x,
			    CLK => clk,
			    D => dina,
			    WE => wea,
			    QSPO_CE => ena,
			    DPRA => addrb_x,
			    QDPO_CE => enb,
			    QDPO => doutb,
			    QSPO => open_o );
                
    end generate;    

    larger_than_8: if (DEPTH > 3) generate
    
        dist_mem_inst: c_dist_mem_v6_0
		    generic map (
			    c_qualify_we => 0,
			    c_mem_type => 2,
			    c_has_qdpo_rst => 0,
			    c_has_qspo => 1,
			    c_has_qspo_rst => 0,
			    c_has_dpo => 0,
			    c_has_qdpo_clk => 0,
			    c_has_d => 1,
			    c_qce_joined => 0,
			    c_width => WIDTH,
			    c_reg_a_d_inputs => 0,
			    c_latency => 1,
			    c_has_we => 1,
			    c_has_spo => 0,
			    c_depth => I_DEPTH,
			    c_has_i_ce => 0,
			    c_default_data => "0",
			    c_default_data_radix => 1,
			    c_has_dpra => 1,
			    c_has_clk => 1,
			    c_enable_rlocs => 0,
			    c_generate_mif => 0,
			    c_has_qspo_ce => 1,
			    c_addr_width => DEPTH,
			    c_has_qdpo_srst => 0,
			    c_mux_type => 0,
			    c_has_spra => 0,
			    c_has_qdpo => 1,
			    c_mem_init_file => "xfft_v2_0_null.mif",
			    c_reg_dpra_input => 0,
			    c_has_rd_en => 0,
			    c_has_qspo_srst => 0,
			    c_read_mif => 0,
			    c_sync_enable => 0,
			    c_has_qdpo_ce => 1 )
		    port map (
			    A => addra,
			    CLK => clk,
			    D => dina,
			    WE => wea,
			    QSPO_CE => ena,
			    DPRA => addrb,
			    QDPO_CE => enb,
			    QDPO => doutb,
			    QSPO => open_o );
                
    end generate;                

end xilinx;
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.fft20_comps.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.prims_comps_v6_0.all;

ENTITY fft20_exp_growth IS
   PORT (
      second_rank		: IN std_logic;   
      last_rank		: IN std_logic;   
      radix_2  		: IN std_logic;   
      exp_growth     : OUT std_logic_vector(1 DOWNTO 0));   

END fft20_exp_growth;

ARCHITECTURE xilinx OF fft20_exp_growth IS

	SIGNAL gnd:  std_logic;

BEGIN

   gnd <='0';
	exp_h_generator: fft20_c_lut
		generic map (eqn => "~(~(I3)*I2*I1)")
		port map (
			I3 => second_rank,
			I2 => last_rank, 
			I1 => radix_2,
			I0 => gnd,
			O  => exp_growth(1));

	exp_l_generator: fft20_c_lut
		generic map (eqn => "I3@(I1*I2)")
		port map (
			I3 => second_rank,
			I2 => last_rank, 
			I1 => radix_2,
			I0 => gnd,
			O  => exp_growth(0));

END xilinx;
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.fft20_comps.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.prims_comps_v6_0.all;

ENTITY fft20_scale_logic IS
   PORT (
      exp_growth		: IN std_logic_vector(1 DOWNTO 0);   
      dyna_range		: IN std_logic_vector(1 DOWNTO 0);   
      first_data     : IN std_logic;
      CLK            : IN std_logic;
      CE             : IN std_logic;
      scale          : OUT std_logic_vector(1 DOWNTO 0));   

END fft20_scale_logic;

ARCHITECTURE xilinx OF fft20_scale_logic IS

	SIGNAL gnd                 : std_logic;
   SIGNAL current_max         : std_logic_vector(1 DOWNTO 0);
   SIGNAL max_range           : std_logic_vector(1 DOWNTO 0);
   SIGNAL first_data_AND_CE   : std_logic;

BEGIN
   gnd <='0';
   CE_gen: fft20_c_lut
		generic map (eqn => "I0*I1")
		port map (
			I0 => CE,
			I1 => first_data, 
			I2 => gnd,
			I3 => gnd,
			O  => first_data_AND_CE);

   max_dynarange: fft20_max2_2
   PORT MAP(
      a => dyna_range,
      b => max_range,
      o => current_max);

   max_reg0: fft20_c_lut_reg
		generic map (eqn => "(~I0)*I1")
		port map (
			I0 => first_data,
			I1 => current_max(0), 
			I2 => gnd,
			I3 => gnd,
         CLK=> CLK,
         CE => CE,
			Q  => max_range(0));

   max_reg1: fft20_c_lut_reg
		generic map (eqn => "(~I0)*I1")
		port map (
			I0 => first_data,
			I1 => current_max(1), 
			I2 => gnd,
			I3 => gnd,
         CLK=> CLK,
         CE => CE,
			Q  => max_range(1));


   scale_h_gen: fft20_c_lut_reg
		generic map (eqn => "I3*I1*(I2+I0)")
		port map (
			I3 => max_range(1),
			I2 => max_range(0), 
			I1 => exp_growth(1),
			I0 => exp_growth(0),
         CLK=> CLK,
         CE => first_data_AND_CE,
			Q  => scale(1));

   scale_l_gen: fft20_c_lut_reg
		generic map (eqn => "I2*I0*(i1+I3)+(~I2)*(~I0)*I3")
		port map (
			I3 => max_range(1),
			I2 => max_range(0), 
			I1 => exp_growth(1),
			I0 => exp_growth(0),
         CLK=> CLK,
         CE => first_data_AND_CE,
			Q  => scale(0));

END xilinx;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.fft20_pkg.all;
USE XilinxCoreLib.fft20_comps.all;

LIBRARY xilinxcorelib;

entity fft20_r2_in_addr is
    generic (
        C_NFFT_MAX  : integer := 10 );
    port (
        CE          : in  std_logic;
        CLK         : in  std_logic;
        NFFT        : in  std_logic_vector(3 downto 0);
        RN          : in  std_logic_vector(C_NFFT_MAX-1 downto 0);
        ADDR        : out std_logic_vector(C_NFFT_MAX-2 downto 0);
        WE0         : out std_logic;
        WE1         : out std_logic );
end fft20_r2_in_addr;

architecture xilinx of fft20_r2_in_addr is

    signal rn_x         : std_logic_vector(8 downto 0);
    signal rev_16       : std_logic_vector(8 downto 0);
    signal rev_32       : std_logic_vector(8 downto 0);
    signal rev_64       : std_logic_vector(8 downto 0);
    signal rev_128      : std_logic_vector(8 downto 0);
    signal rev_256      : std_logic_vector(8 downto 0);
    signal rev_512      : std_logic_vector(8 downto 0);
    signal rev_1024     : std_logic_vector(8 downto 0);
    
    signal zero_vec     : std_logic_vector(C_NFFT_MAX-2 downto 0);
    
    signal sel          : std_logic_vector(3 downto 0);

begin

    zero_vec(C_NFFT_MAX-2 downto 0) <= (others => '0');
    
    rn_x(C_NFFT_MAX-2 downto 0) <= rn(C_NFFT_MAX-2 downto 0);
    pad_rn: if (C_NFFT_MAX /= 10) generate
        rn_x(8 downto C_NFFT_MAX-1) <= (others => '0');
    end generate;    
    
    N_16: for index in 0 to 2 generate
        rev_16(2-index downto 2-index) <= rn_x(index downto index);
    end generate;    
    rev_16(8 downto 3) <= (others => '0');
      
    N_32: for index in 0 to 3 generate
        rev_32(3-index downto 3-index) <= rn_x(index downto index);
    end generate;
    rev_32(8 downto 4) <= (others => '0');
      
    N_64: for index in 0 to 4 generate
        rev_64(4-index downto 4-index) <= rn_x(index downto index);
    end generate;
    rev_64(8 downto 5) <= (others => '0');
      
    N_128: for index in 0 to 5 generate
        rev_128(5-index downto 5-index) <= rn_x(index downto index);
    end generate;
    rev_128(8 downto 6) <= (others => '0');
            
    N_256: for index in 0 to 6 generate
        rev_256(6-index downto 6-index) <= rn_x(index downto index);
    end generate;
    rev_256(8 downto 7) <= (others => '0');
    
    N_512: for index in 0 to 7 generate
        rev_512(7-index downto 7-index) <= rn_x(index downto index);
    end generate;
    rev_512(8 downto 8) <= (others => '0');
      
    N_1024: for index in 0 to 8 generate
        rev_1024(8-index downto 8-index) <= rn_x(index downto index);
    end generate;
      
    no_addr_mux: if (C_NFFT_MAX = 4) generate
        addr_16_reg: fft20_reg_fde
            generic map (
                data_width => 3 )
            port map (
                d => rev_16(2 downto 0),
                clk => clk,
                ce => ce,
                q => addr );
    end generate;
                
    with_addr_mux: if (C_NFFT_MAX > 4) generate
    
        addr_mux: fft20_mux_bus8
            generic map (
                c_width => C_NFFT_MAX-1,
                c_inputs => C_NFFT_MAX-3,
                c_sel_width => log2_func(C_NFFT_MAX-3) )
            port map (
                ma => rev_16(c_nfft_max-2 downto 0),
                mb => rev_32(c_nfft_max-2 downto 0),
                mc => rev_64(c_nfft_max-2 downto 0),
                md => rev_128(c_nfft_max-2 downto 0),
                me => rev_256(c_nfft_max-2 downto 0),
                mf => rev_512(c_nfft_max-2 downto 0),
                mg => rev_1024(c_nfft_max-2 downto 0),
                mh => zero_vec(c_nfft_max-2 downto 0),
                s => sel(log2_func(C_NFFT_MAX-3)-1 downto 0),
                clk => clk,
                ce => ce,
                q => addr );
                
        sel(1 downto 0) <= nfft(1 downto 0);
        sel(2 downto 2) <= nfft(3 downto 3);
        sel(3 downto 3) <= (others => '0');                

    end generate;

    mem0_we: fft20_xnor_bit_gate
        generic map (
            c_inputs => C_NFFT_MAX )
        port map (
            clk => clk,
            ce  => ce,
            i   => rn,
            q   => we0 );
    
    mem1_we: fft20_xor_bit_gate
        generic map (
            c_inputs => C_NFFT_MAX )
        port map (
            clk => clk,
            ce  => ce,
            i   => rn,
            q   => we1 );
            
end xilinx;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.fft20_comps.all;

entity fft20_r2_ovflo_gen is
    port (
        AI          : in std_logic_vector(2 downto 0);
        AR          : in std_logic_vector(2 downto 0);
        BI          : in std_logic_vector(2 downto 0);
        BR          : in std_logic_vector(2 downto 0);
        CE          : in std_logic;
        CLK         : in std_logic;
        OVERFLOW    : out std_logic );
end fft20_r2_ovflo_gen;

architecture xilinx of fft20_r2_ovflo_gen is

    signal ovflow0r : std_logic;
    signal ovflow0i : std_logic;
    signal ovflow1r : std_logic;
    signal ovflow1i : std_logic;
    signal ovflo    : std_logic_vector(0 downto 0);
    signal ovflow   : std_logic_vector(0 downto 0);
    signal vcc      : std_logic;

begin

    vcc <= '1';
    
    overflow0r_generator: fft20_c_lut
        generic map (
            eqn => "(~(i0*i1*i2))*(i0+i1+i2)" )
        port map (
            i3 => vcc,
            i2 => ar(2),
            i1 => ar(1),
            i0 => ar(0),
            o  => ovflow0r );

    overflow0i_generator: fft20_c_lut
        generic map (
            eqn => "(~(i0*i1*i2))*(i0+i1+i2)" )
        port map (
            i3 => vcc,
            i2 => ai(2),
            i1 => ai(1),
            i0 => ai(0),
            o  => ovflow0i );

    overflow1r_generator: fft20_c_lut
        generic map (
            eqn => "(~(i0*i1*i2))*(i0+i1+i2)" )
        port map (
            i3 => vcc,
            i2 => br(2),
            i1 => br(1),
            i0 => br(0),
            o  => ovflow1r );

    overflow1i_generator: fft20_c_lut
        generic map (
            eqn => "(~(i0*i1*i2))*(i0+i1+i2)" )
        port map (
            i3 => vcc,
            i2 => bi(2),
            i1 => bi(1),
            i0 => bi(0),
            o  => ovflow1i );

    overflow_generator: fft20_c_lut
        generic map (
            eqn => "i0+i1+i2+i3" )
        port map (
            i3 => ovflow0r,
            i2 => ovflow0i,
            i1 => ovflow1r,
            i0 => ovflow1i,
            o  => ovflo(0) );

    o_reg: fft20_reg_fde
        generic map (
            data_width => 1 )
        port map (
            d => ovflo,
            q => ovflow,
            clk => clk,
            ce => ce );

    overflow <= ovflow(0);

end xilinx;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.fft20_comps.all;

LIBRARY xilinxcorelib;
USE xilinxcorelib.C_SHIFT_RAM_V6_0_COMP.all;

entity fft20_r2_pe is
    generic (
        BTRFLY_WIDTH    : integer := 20;
        C_HAS_OVERFLOW  : integer := 1;
        C_HAS_ROUNDING  : integer := 1;
        C_HAS_SCALING   : integer := 1;
        IO_WIDTH        : integer := 16;
        MULT_LATENCY    : integer := 4; 
        TW_WIDTH        : integer := 17 );
    port (
        CE              : in std_logic;
        CLK             : in std_logic;
        I0_IM           : in std_logic_vector(IO_WIDTH-1 downto 0);
        I0_RE           : in std_logic_vector(IO_WIDTH-1 downto 0);
        I1_IM           : in std_logic_vector(IO_WIDTH-1 downto 0);
        I1_RE           : in std_logic_vector(IO_WIDTH-1 downto 0);
        SCALE           : in std_logic_vector(1 downto 0);
        TW_IM           : in std_logic_vector(TW_WIDTH-1 downto 0);
        TW_RE           : in std_logic_vector(TW_WIDTH-1 downto 0);
        O0_IM           : out std_logic_vector(IO_WIDTH-1 downto 0);
        O0_RE           : out std_logic_vector(IO_WIDTH-1 downto 0);
        O1_IM           : out std_logic_vector(IO_WIDTH-1 downto 0);
        O1_RE           : out std_logic_vector(IO_WIDTH-1 downto 0);
        OVFLO           : out std_logic );
end fft20_r2_pe;

architecture xilinx of fft20_r2_pe is

    constant POSTMULT_WIDTH     : integer   := IO_WIDTH+TW_WIDTH+1;
    constant PRESCALED_WIDTH    : integer   := BTRFLY_WIDTH+1;
    constant SCALED_WIDTH       : integer   := PRESCALED_WIDTH+3;

    signal i0_re_delayed        : std_logic_vector(BTRFLY_WIDTH-1 downto 0);
    signal i0_im_delayed        : std_logic_vector(BTRFLY_WIDTH-1 downto 0);
    signal mlplied_re           : std_logic_vector(POSTMULT_WIDTH-1 downto 0);
    signal mlplied_im           : std_logic_vector(POSTMULT_WIDTH-1 downto 0);
    signal btrfly_o0_re         : std_logic_vector(PRESCALED_WIDTH-1 downto 0);
    signal btrfly_o0_im         : std_logic_vector(PRESCALED_WIDTH-1 downto 0);
    signal btrfly_o1_re         : std_logic_vector(PRESCALED_WIDTH-1 downto 0);
    signal btrfly_o1_im         : std_logic_vector(PRESCALED_WIDTH-1 downto 0);
    signal scaled0_re           : std_logic_vector(SCALED_WIDTH-1 downto 0);
    signal scaled0_im           : std_logic_vector(SCALED_WIDTH-1 downto 0);
    signal scaled1_re           : std_logic_vector(SCALED_WIDTH-1 downto 0);
    signal scaled1_im           : std_logic_vector(SCALED_WIDTH-1 downto 0);

begin

    pipeline_balancer_re: C_SHIFT_RAM_V6_0
        generic map (
            c_has_ainit => 0,
            c_shift_type => 0,
            c_addr_width => 3,
            c_read_mif => 0,
            c_sync_enable => 0,
            c_has_sinit => 0,
            c_has_sset => 0,
            c_width => IO_WIDTH,
            c_has_sclr => 0,
            c_has_a => 0,
            c_has_aset => 0,
            c_generate_mif => 0,
            c_default_data_radix => 1,
            c_has_aclr => 0,
            c_depth => MULT_LATENCY,
            c_default_data => "0",
            c_reg_last_bit => 0,
            c_sync_priority => 1,
            c_enable_rlocs => 1,
            c_has_ce => 1 )
        port map (
            clk => clk,
            d => i0_re,
            q => i0_re_delayed(BTRFLY_WIDTH-2 downto BTRFLY_WIDTH-1-IO_WIDTH),
            ce => ce );

    pipeline_balancer_im: C_SHIFT_RAM_V6_0
        generic map (
            c_has_ainit => 0,
            c_shift_type => 0,
            c_addr_width => 3,
            c_read_mif => 0,
            c_sync_enable => 0,
            c_has_sinit => 0,
            c_has_sset => 0,
            c_width => IO_WIDTH,
            c_has_sclr => 0,
            c_has_a => 0,
            c_has_aset => 0,
            c_generate_mif => 0,
            c_default_data_radix => 1,
            c_has_aclr => 0,
            c_depth => MULT_LATENCY,
            c_default_data => "0",
            c_reg_last_bit => 0,
            c_sync_priority => 1,
            c_enable_rlocs => 1,
            c_has_ce => 1 )
        port map (
            clk => clk,
            d => i0_im,
            q => i0_im_delayed(BTRFLY_WIDTH-2 downto BTRFLY_WIDTH-1-IO_WIDTH),
            ce => ce );

    i0_re_delayed(BTRFLY_WIDTH-1) <= i0_re_delayed(BTRFLY_WIDTH-2);
    i0_im_delayed(BTRFLY_WIDTH-1) <= i0_im_delayed(BTRFLY_WIDTH-2);
    pad_with_zeros: if (BTRFLY_WIDTH-IO_WIDTH > 1) generate
        i0_re_delayed(BTRFLY_WIDTH-2-IO_WIDTH downto 0) <= (others => '0');
        i0_im_delayed(BTRFLY_WIDTH-2-IO_WIDTH downto 0) <= (others => '0');
    end generate;

    mult: fft20_complex_mult3
        generic map (
            a_width => IO_WIDTH,
            b_width => TW_WIDTH )
        port map (
            clk => clk,
            ce => ce,
            ar => i1_re,
            ai => i1_im,
            br => tw_re,
            bi => tw_im,
            pr => mlplied_re,
            pi => mlplied_im );

    butterfly: fft20_butterfly
        generic map (
            data_width => BTRFLY_WIDTH )
        port map (
            clk => clk,
            ce => ce,
            x0r => i0_re_delayed,
            x0i => i0_im_delayed,
            x1r => mlplied_re(POSTMULT_WIDTH-3 downto POSTMULT_WIDTH-BTRFLY_WIDTH-2),
            x1i => mlplied_im(POSTMULT_WIDTH-3 downto POSTMULT_WIDTH-BTRFLY_WIDTH-2),
            y0r => btrfly_o0_re,
            y0i => btrfly_o0_im,
            y1r => btrfly_o1_re,
            y1i => btrfly_o1_im );

    scale_gen: if (C_HAS_SCALING = 1) generate

        scaler_0r: fft20_arith_shift3
            generic map (
                width => PRESCALED_WIDTH )
            port map (
                clk => clk,
                ce => ce,
                x => btrfly_o0_re,
                shift => scale,
                q => scaled0_re );

        scaler_0i: fft20_arith_shift3
            generic map (
                width => PRESCALED_WIDTH )
            port map (
                clk => clk,
                ce => ce,
                x => btrfly_o0_im,
                shift => scale,
                q => scaled0_im );

        scaler_1r: fft20_arith_shift3
            generic map (
                width => PRESCALED_WIDTH )
            port map (
                clk => clk,
                ce => ce,
                x => btrfly_o1_re,
                shift => scale,
                q => scaled1_re );

        scaler_1i: fft20_arith_shift3
            generic map (
                width => PRESCALED_WIDTH )
            port map (
                clk => clk,
                ce => ce,
                x => btrfly_o1_im,
                shift => scale,
                q => scaled1_im );

    end generate;

    no_scale: if (C_HAS_SCALING = 0) generate
    
        scaled0_re(SCALED_WIDTH-1 downto 3) <= btrfly_o0_re(PRESCALED_WIDTH-1 downto 0);
        scaled0_im(SCALED_WIDTH-1 downto 3) <= btrfly_o0_im(PRESCALED_WIDTH-1 downto 0);
        scaled1_re(SCALED_WIDTH-1 downto 3) <= btrfly_o1_re(PRESCALED_WIDTH-1 downto 0);
        scaled1_im(SCALED_WIDTH-1 downto 3) <= btrfly_o1_im(PRESCALED_WIDTH-1 downto 0);
        
        scaled0_re(2 downto 0) <= (others => '0');
        scaled0_im(2 downto 0) <= (others => '0');
        scaled1_re(2 downto 0) <= (others => '0');
        scaled1_im(2 downto 0) <= (others => '0');
        
    end generate;
    
    overflow_gen: if (C_HAS_OVERFLOW = 1) generate
        overflow_inst: fft20_r2_ovflo_gen
	        port map (
		        ar => scaled0_re(SCALED_WIDTH-1 downto SCALED_WIDTH-3),
		        ai => scaled0_im(SCALED_WIDTH-1 downto SCALED_WIDTH-3),
		        br => scaled1_re(SCALED_WIDTH-1 downto SCALED_WIDTH-3),
		        bi => scaled1_im(SCALED_WIDTH-1 downto SCALED_WIDTH-3),
                overflow => ovflo,
                clk => clk,
                ce => ce );
    end generate;
    
    no_overflow: if (C_HAS_OVERFLOW = 0) generate
        ovflo <= '0';
    end generate;

    round: if (C_HAS_ROUNDING = 1) generate

        rounder_0r: fft20_unbiased_round
            generic map (
                in_width => SCALED_WIDTH-2,
                out_width => IO_WIDTH )
            port map (
                clk => clk,
                ce  => ce,
                d   => scaled0_re(SCALED_WIDTH-3 downto 0),
                q   => o0_re );

        rounder_0i: fft20_unbiased_round
            generic map (
                in_width => SCALED_WIDTH-2,
                out_width => IO_WIDTH )
            port map (
                clk => clk,
                ce  => ce,
                d   => scaled0_im(SCALED_WIDTH-3 downto 0),
                q   => o0_im );

        rounder_1r: fft20_unbiased_round
            generic map (
                in_width => SCALED_WIDTH-2,
                out_width => IO_WIDTH )
            port map (
                clk => clk,
                ce  => ce,
                d   => scaled1_re(SCALED_WIDTH-3 downto 0),
                q   => o1_re );

        rounder_1i: fft20_unbiased_round
            generic map (
                in_width => SCALED_WIDTH-2,
                out_width => IO_WIDTH )
            port map (
                clk => clk,
                ce  => ce,
                d   => scaled1_im(SCALED_WIDTH-3 downto 0),
                q   => o1_im );

    end generate;

    truncate: if (C_HAS_ROUNDING = 0) generate
        o0_re <= scaled0_re(SCALED_WIDTH-3 downto SCALED_WIDTH-2-IO_WIDTH);
        o0_im <= scaled0_im(SCALED_WIDTH-3 downto SCALED_WIDTH-2-IO_WIDTH);
        o1_re <= scaled1_re(SCALED_WIDTH-3 downto SCALED_WIDTH-2-IO_WIDTH);
        o1_im <= scaled1_im(SCALED_WIDTH-3 downto SCALED_WIDTH-2-IO_WIDTH);
    end generate;

end xilinx;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.fft20_comps.all;

entity fft20_r2_ranger is
	port (
		AI	    : in std_logic_vector(2 downto 0);   
        AR	    : in std_logic_vector(2 downto 0);   
		BI	    : in std_logic_vector(2 downto 0);   
		BR	    : in std_logic_vector(2 downto 0);   
		O_RANGE : out std_logic_vector(1 downto 0);
		CE	    : in std_logic;
		CLK		: in std_logic);
end fft20_r2_ranger;

architecture xilinx of fft20_r2_ranger is

	signal a_range  : std_logic_vector(1 downto 0);   
	signal b_range  : std_logic_vector(1 downto 0);   
	signal ab_range : std_logic_vector(1 downto 0);   
    signal ar_x     : std_logic_vector(3 downto 0);       
    signal ai_x     : std_logic_vector(3 downto 0);       
    signal br_x     : std_logic_vector(3 downto 0);       
    signal bi_x     : std_logic_vector(3 downto 0);       

begin

    ar_x(2 downto 0) <= ar;
    ar_x(3) <= ar(2);
    ai_x(2 downto 0) <= ai;
    ai_x(3) <= ai(2);
    br_x(2 downto 0) <= br;
    br_x(3) <= br(2);
    bi_x(2 downto 0) <= bi;
    bi_x(3) <= bi(2);

    fft20_ranger_a: fft20_ranger
        port map (
            re	    => ar_x,
            im      => ai_x,
            clk     => clk,
            ce      => ce,
            rang    => a_range );

	fft20_ranger_b: fft20_ranger
		port map (
			re	    => br_x,
			im      => bi_x,
            clk     => clk,
            ce      => ce,
			rang    => b_range );

	max_finder: fft20_max2_2 
	    port map (
            a => a_range,	  
            b => b_range,	  
            o => ab_range );   


	oreg: fft20_reg_fde 
	    generic map(
            data_width => 2 )
	    port map(
		    d 		=> ab_range,
		    clk 	=> clk,
		    ce 	    => ce,		
		    q 		=> o_range );

end xilinx;

library ieee;
use ieee.std_logic_1164.all;

library xilinxcorelib;
use xilinxcorelib.fft20_comps.all;

library xilinxcorelib;
use xilinxcorelib.prims_comps_v6_0.all;

entity fft20_r2_scale_logic is
    port (
        CE          : in std_logic;
        CLK         : in std_logic;
        DYNA_RANGE  : in std_logic_vector(1 downto 0);
        EXP_GROWTH  : in std_logic;
        FIRST_DATA  : in std_logic;
        SCALE       : out std_logic_vector(1 downto 0));
end fft20_r2_scale_logic;

architecture xilinx of fft20_r2_scale_logic is

    signal gnd                  : std_logic;
    signal current_max          : std_logic_vector(1 downto 0);
    signal max_range            : std_logic_vector(1 downto 0);
    signal first_data_and_ce    : std_logic;

begin

    gnd <='0';
    
    ce_gen: fft20_c_lut
        generic map (
            eqn => "i0*i1" )
        port map (
            i0 => ce,
            i1 => first_data, 
            i2 => gnd,
            i3 => gnd,
            o  => first_data_and_ce );

    max_dynarange: fft20_max2_2
        port map (
            a => dyna_range,
            b => max_range,
            o => current_max );

    max_reg0: fft20_c_lut_reg
        generic map (
            eqn => "(~i0)*i1" )
        port map (
            i0 => first_data,
            i1 => current_max(0), 
            i2 => gnd,
            i3 => gnd,
            clk=> clk,
            ce => ce,
            q  => max_range(0) );

    max_reg1: fft20_c_lut_reg
        generic map (
            eqn => "(~i0)*i1" )
        port map (
            i0 => first_data,
            i1 => current_max(1), 
            i2 => gnd,
            i3 => gnd,
            clk=> clk,
            ce => ce,
            q  => max_range(1) );

    scale_l_gen: fft20_c_lut_reg
        generic map (
            eqn => "(i0*i1*(~i2)*i3)+((~i0)*(~i1)*i2*(~i3))" )
        port map (
            i3 => max_range(0),
            i2 => max_range(1), 
            i1 => exp_growth,
            i0 => exp_growth,
            clk=> clk,
            ce => first_data_and_ce,
            q  => scale(0) );

    scale_h_gen: fft20_c_lut_reg
        generic map (
            eqn => "i0*i1*i2*(~i3)" )
        port map (
            i3 => max_range(0),
            i2 => max_range(1), 
            i1 => exp_growth,
            i0 => exp_growth,
            clk=> clk,
            ce => first_data_and_ce,
            q  => scale(1) );

end xilinx;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.fft20_comps.all;

LIBRARY xilinxcorelib;

entity fft20_r2_rw_addr is
    generic (
        C_NFFT_MAX  : integer := 10 );
    port (
        CE          : in  std_logic;
        CLK         : in  std_logic;
        NFFT        : in  std_logic_vector(3 downto 0);
        RANK        : in  std_logic_vector(3 downto 0);
        RN          : in  std_logic_vector(C_NFFT_MAX-2 downto 0);
        ADDR0       : out std_logic_vector(C_NFFT_MAX-2 downto 0);
        ADDR1       : out std_logic_vector(C_NFFT_MAX-2 downto 0);
        EN0         : out std_logic;
        EN1         : out std_logic );
end fft20_r2_rw_addr;

architecture xilinx of fft20_r2_rw_addr is

    signal i_sum        : std_logic;
    signal i_sum_bar    : std_logic;
    signal i_bus        : std_logic_vector(0 downto 0);
    signal i_bar_bus    : std_logic_vector(0 downto 0);
    signal d_rank       : std_logic_vector(C_NFFT_MAX-1 downto 0);
    signal rn_d         : std_logic_vector(C_NFFT_MAX-2 downto 0);
    signal rn_x         : std_logic_vector(C_NFFT_MAX-1 downto 0);
    signal zero_vec     : std_logic_vector(0 downto 0);
    signal vcc          : std_logic;

begin

    zero_vec <= (others => '0');
    vcc <= '1';

    decod0: fft20_c_lut_reg
        generic map (
            eqn => "(~i3*~i2*~i1*~i0)" )
        port map (
            i0  => rank(0),
            i1  => rank(1),
            i2  => rank(2),
            i3  => rank(3),
            clk => clk,
            q   => d_rank(0) );
            
    decod1: fft20_c_lut_reg
        generic map (
            eqn => "(~i3*~i2*~i1)" )
        port map (
            i0  => zero_vec(0),
            i1  => rank(1),
            i2  => rank(2),
            i3  => rank(3),
            clk => clk,
            q   => d_rank(1) );
            
    decod2: fft20_c_lut_reg
        generic map (
            eqn => "(~i3*~i2)*(~i1+~i0)" )
        port map (
            i0  => rank(0),
            i1  => rank(1),
            i2  => rank(2),
            i3  => rank(3),
            clk => clk,
            q   => d_rank(2) );
            
    decod3: fft20_c_lut_reg
        generic map (
            eqn => "(~i3*~i2)" )
        port map (
            i0  => zero_vec(0),
            i1  => zero_vec(0),
            i2  => rank(2),
            i3  => rank(3),
            clk => clk,
            q   => d_rank(3) );
            
    d4: if C_NFFT_MAX > 4 generate
        decod4: fft20_c_lut_reg
            generic map (
                eqn => "(~i3*(~i2+~i1*~i0))" )
            port map (
                i0  => rank(0),
                i1  => rank(1),
                i2  => rank(2),
                i3  => rank(3),
                clk => clk,
                q   => d_rank(4) );
    end generate;
    
    d5: if (C_NFFT_MAX > 5) generate
        decod5: fft20_c_lut_reg
            generic map (
                eqn => "(~i3*(~i2+~i1))" )
            port map (
                i0  => zero_vec(0),
                i1  => rank(1),
                i2  => rank(2),
                i3  => rank(3),
                clk => clk,
                q   => d_rank(5) );
    end generate;
    
    d6: if (C_NFFT_MAX > 6) generate
        decod6: fft20_c_lut_reg
            generic map (
                eqn => "(~i3*~i2)+(~i3*~i1)+(i1*~i0)" )
            port map (
                i0  => rank(0),
                i1  => rank(1),
                i2  => rank(2),
                i3  => rank(3),
                clk => clk,
                q   => d_rank(6) );
    end generate;
    
    d7: if (C_NFFT_MAX > 7) generate
        decod7: fft20_c_lut_reg
            generic map (
                eqn => "(~i3)" )
            port map (
                i0  => zero_vec(0),
                i1  => zero_vec(0),
                i2  => zero_vec(0),
                i3  => rank(3),
                clk => clk,
                q   => d_rank(7) );
    end generate;
    
    d8: if (C_NFFT_MAX > 8) generate
        decod8: fft20_c_lut_reg
            generic map (
                eqn => "(~i3)+(~i1*~i0)" )
            port map (
                i0  => rank(0),
                i1  => rank(1),
                i2  => zero_vec(0),
                i3  => rank(3),
                clk => clk,
                q   => d_rank(8) );
    end generate;
    
    d9: if (C_NFFT_MAX > 9) generate
        
        delay_drank_9: fft20_fde
            port map (
                d   => vcc,
                clk => clk,
                ce  => ce,
                q   => d_rank(9) );    
    end generate;    
    
    xor_rn: fft20_xor_bit_gate
        generic map (
            c_inputs => C_NFFT_MAX-1 )
        port map (
            clk => clk,
            ce  => ce,
            i   => rn,
            q   => i_sum );
            
    i_bus(0) <= i_sum;
    
    delay_en0: fft20_fde
        port map (
            d   => i_sum,
            clk => clk,
            ce  => ce,
            q   => en0 );    
    
    xnor_rn: fft20_xnor_bit_gate
        generic map (
            c_inputs => C_NFFT_MAX-1 )
        port map (
            clk => clk,
            ce  => ce,
            i   => rn,
            q   => i_sum_bar );
    
    i_bar_bus(0) <= i_sum_bar;
            
    delay_en1: fft20_fde
        port map (
            d   => i_sum_bar,
            clk => clk,
            ce  => ce,
            q   => en1 );    

    delay_rn: fft20_reg_fde
        generic map (
            data_width => C_NFFT_MAX-1 )
        port map (
            d   => rn,
            clk => clk,
            ce  => ce,
            q   => rn_d );    

    rn_x(C_NFFT_MAX-2 downto 0) <= rn_d(C_NFFT_MAX-2 downto 0);
    rn_x(C_NFFT_MAX-1 downto C_NFFT_MAX-1) <= (others=> '0'); 
            
    addr0_gen: for index in 0 to 8 generate
        a0: if (C_NFFT_MAX > index+1) generate
            addr0_index: fft20_mux_bus
                generic map (
                    c_width => 1,
                    c_inputs => 4,
                    c_sel_width => 2 )
                port map (
                    ma  => rn_x(index+1 downto index+1),
                    mb  => zero_vec,
                    mc  => i_bus,
                    md  => rn_d(index downto index),
                    s   => d_rank(index+1 downto index),
                    clk => clk,
                    ce  => ce,
                    q   => addr0(index downto index) );
        end generate;
    end generate;    
        
    addr1_gen: for index in 0 to 8 generate
        a1: if (C_NFFT_MAX > index+1) generate
            addr1_index: fft20_mux_bus
                generic map (
                    c_width => 1,
                    c_inputs => 4,
                    c_sel_width => 2 )
                port map (
                    ma  => rn_x(index+1 downto index+1),
                    mb  => zero_vec,
                    mc  => i_bar_bus,
                    md  => rn_d(index downto index),
                    s   => d_rank(index+1 downto index),
                    clk => clk,
                    ce  => ce,
                    q   => addr1(index downto index) );
        end generate;
    end generate;    
    
end xilinx;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.fft20_comps.all;

LIBRARY xilinxcorelib;
USE xilinxcorelib.c_twos_comp_v6_0_comp.all;

entity fft20_r2_tw_addr is
    generic (
        C_NFFT_MAX  : integer := 10 );
    port (
        CE          : in  std_logic;
        CLK         : in  std_logic;
        FWD_INV     : in  std_logic;
        RANK        : in  std_logic_vector(3 downto 0);
        RN          : in  std_logic_vector(C_NFFT_MAX-2 downto 0);
        TW_ADDR     : out std_logic_vector(C_NFFT_MAX-1 downto 0) );
end fft20_r2_tw_addr;

architecture xilinx of fft20_r2_tw_addr is

    signal m_0          : std_logic_vector(C_NFFT_MAX-1 downto 0);
    signal m_1          : std_logic_vector(C_NFFT_MAX-1 downto 0);
    signal m_2          : std_logic_vector(C_NFFT_MAX-1 downto 0);
    signal m_3          : std_logic_vector(C_NFFT_MAX-1 downto 0);
    signal m_4          : std_logic_vector(C_NFFT_MAX-1 downto 0);
    signal m_5          : std_logic_vector(C_NFFT_MAX-1 downto 0);
    signal m_6          : std_logic_vector(C_NFFT_MAX-1 downto 0);
    signal m_7          : std_logic_vector(C_NFFT_MAX-1 downto 0);
    signal m_8          : std_logic_vector(C_NFFT_MAX-1 downto 0);
    signal m_9          : std_logic_vector(C_NFFT_MAX-1 downto 0);
    signal zero_vec10   : std_logic_vector(9 downto 0);
    signal zero_vec9    : std_logic_vector(8 downto 0);    
    signal zero_vec8    : std_logic_vector(7 downto 0);
    signal zero_vec7    : std_logic_vector(6 downto 0);
    signal zero_vec6    : std_logic_vector(5 downto 0);
    signal zero_vec5    : std_logic_vector(4 downto 0);
    signal zero_vec4    : std_logic_vector(3 downto 0);
    signal zero_vec3    : std_logic_vector(2 downto 0);
    signal zero_vec2    : std_logic_vector(1 downto 0);
    signal zero_vec1    : std_logic_vector(0 downto 0);
    signal zero_vec     : std_logic_vector(0 downto 0);
    signal gnd          : std_logic;
    signal open_vec     : std_logic_vector(C_NFFT_MAX downto 0);
    signal tw_addr_base : std_logic_vector(C_NFFT_MAX-1 downto 0);
    signal tw_addr_full : std_logic_vector(C_NFFT_MAX downto 0);

begin

    gnd <= '0';
    
    zero_vec10 <= (others => '0');
    zero_vec9 <= (others => '0');
    zero_vec8 <= (others => '0');
    zero_vec7 <= (others => '0');
    zero_vec6 <= (others => '0');
    zero_vec5 <= (others => '0');
    zero_vec4 <= (others => '0');
    zero_vec3 <= (others => '0');
    zero_vec2 <= (others => '0');
    zero_vec1 <= (others => '0');
    zero_vec <= (others => '0');

    n16: if (C_NFFT_MAX = 4) generate
    
        m_0             <= zero_vec4;
        m_1(1 downto 0) <= zero_vec2;
        m_1(2 downto 2) <= rn(0 downto 0);
        m_1(3 downto 3) <= zero_vec;
        m_2(0 downto 0) <= zero_vec1;
        m_2(2 downto 1) <= rn(1 downto 0);
        m_2(3 downto 3) <= zero_vec;
        m_3(2 downto 0) <= rn;
        m_3(3 downto 3) <= zero_vec;

        mux4: fft20_mux_bus
            generic map (
                c_width     => 4,
                c_inputs    => 4,
                c_sel_width => 2 )
            port map (
                ma  => m_0,
                mb  => m_1,
                mc  => m_2,
                md  => m_3,
                s   => rank(1 downto 0),
                clk => clk,
                ce  => ce,
                q   => tw_addr_base );
                
    end generate;

    n32: if (C_NFFT_MAX = 5) generate
    
        m_0             <= zero_vec5;
        m_1(2 downto 0) <= zero_vec3;
        m_1(3 downto 3) <= rn(0 downto 0);
        m_1(4 downto 4) <= zero_vec;
        m_2(1 downto 0) <= zero_vec2;
        m_2(3 downto 2) <= rn(1 downto 0);
        m_2(4 downto 4) <= zero_vec;
        m_3(0 downto 0) <= zero_vec1;
        m_3(3 downto 1) <= rn(2 downto 0);
        m_3(4 downto 4) <= zero_vec;
        m_4(3 downto 0) <= rn;
        m_4(4 downto 4) <= zero_vec;

        mux5: fft20_mux_bus8
            generic map (
                c_width     => 5,
                c_inputs    => 5,
                c_sel_width => 3 )
            port map (
                ma  => m_0,
                mb  => m_1,
                mc  => m_2,
                md  => m_3,
                me  => m_4,
                mf  => zero_vec5,
                mg  => zero_vec5,
                mh  => zero_vec5,
                s   => rank(2 downto 0),
                clk => clk,
                ce  => ce,
                q   => tw_addr_base );
                
    end generate;

    n64: if (C_NFFT_MAX = 6) generate
        m_0             <= zero_vec6;
        m_1(3 downto 0) <= zero_vec4;
        m_1(4 downto 4) <= rn(0 downto 0);
        m_1(5 downto 5) <= zero_vec;
        m_2(2 downto 0) <= zero_vec3;
        m_2(4 downto 3) <= rn(1 downto 0);
        m_2(5 downto 5) <= zero_vec;
        m_3(1 downto 0) <= zero_vec2;
        m_3(4 downto 2) <= rn(2 downto 0);
        m_3(5 downto 5) <= zero_vec;
        m_4(0 downto 0) <= zero_vec1;
        m_4(4 downto 1) <= rn(3 downto 0);
        m_4(5 downto 5) <= zero_vec;
        m_5(4 downto 0) <= rn;
        m_5(5 downto 5) <= zero_vec;

        mux6: fft20_mux_bus8
            generic map (
                c_width     => 6,
                c_inputs    => 6,
                c_sel_width => 3 )
            port map (
                ma  => m_0,
                mb  => m_1,
                mc  => m_2,
                md  => m_3,
                me  => m_4,
                mf  => m_5,
                mg  => zero_vec6,
                mh  => zero_vec6,
                s   => rank(2 downto 0),
                clk => clk,
                ce  => ce,
                q   => tw_addr_base );
                
    end generate;            

    n128: if (C_NFFT_MAX = 7) generate
    
        m_0             <= zero_vec7;
        m_1(4 downto 0) <= zero_vec5;
        m_1(5 downto 5) <= rn(0 downto 0);
        m_1(6 downto 6) <= zero_vec;
        m_2(3 downto 0) <= zero_vec4;
        m_2(5 downto 4) <= rn(1 downto 0);
        m_2(6 downto 6) <= zero_vec;
        m_3(2 downto 0) <= zero_vec3;
        m_3(5 downto 3) <= rn(2 downto 0);
        m_3(6 downto 6) <= zero_vec;
        m_4(1 downto 0) <= zero_vec2;
        m_4(5 downto 2) <= rn(3 downto 0);
        m_4(6 downto 6) <= zero_vec;
        m_5(0 downto 0) <= zero_vec1;
        m_5(5 downto 1) <= rn(4 downto 0);
        m_5(6 downto 6) <= zero_vec;
        m_6(5 downto 0) <= rn;
        m_6(6 downto 6) <= zero_vec;

        mux7: fft20_mux_bus8
            generic map (
                c_width     => 7,
                c_inputs    => 7,
                c_sel_width => 3 )
            port map (
                ma  => m_0,
                mb  => m_1,
                mc  => m_2,
                md  => m_3,
                me  => m_4,
                mf  => m_5,
                mg  => m_6,
                mh  => zero_vec7,
                s   => rank(2 downto 0),
                clk => clk,
                ce  => ce,
                q   => tw_addr_base );
                
    end generate;

    n256: if (C_NFFT_MAX = 8) generate
        m_0             <= zero_vec8;
        m_1(5 downto 0) <= zero_vec6;
        m_1(6 downto 6) <= rn(0 downto 0);
        m_1(7 downto 7) <= zero_vec;
        m_2(4 downto 0) <= zero_vec5;
        m_2(6 downto 5) <= rn(1 downto 0);
        m_2(7 downto 7) <= zero_vec;
        m_3(3 downto 0) <= zero_vec4;
        m_3(6 downto 4) <= rn(2 downto 0);
        m_3(7 downto 7) <= zero_vec;
        m_4(2 downto 0) <= zero_vec3;
        m_4(6 downto 3) <= rn(3 downto 0);
        m_4(7 downto 7) <= zero_vec;
        m_5(1 downto 0) <= zero_vec2;
        m_5(6 downto 2) <= rn(4 downto 0);
        m_5(7 downto 7) <= zero_vec;
        m_6(0 downto 0) <= zero_vec1;
        m_6(6 downto 1) <= rn(5 downto 0);
        m_6(7 downto 7) <= zero_vec;
        m_7(6 downto 0) <= rn;
        m_7(7 downto 7) <= zero_vec;

        mux8: fft20_mux_bus8
            generic map (
                c_width     => 8,
                c_inputs    => 8,
                c_sel_width => 3 )
            port map (
                ma  => m_0,
                mb  => m_1,
                mc  => m_2,
                md  => m_3,
                me  => m_4,
                mf  => m_5,
                mg  => m_6,
                mh  => m_7,
                s   => rank(2 downto 0),
                clk => clk,
                ce  => ce,
                q   => tw_addr_base );
                
    end generate;
    
    n512: if (C_NFFT_MAX = 9) generate
        m_0             <= zero_vec9;
        m_1(6 downto 0) <= zero_vec7;
        m_1(7 downto 7) <= rn(0 downto 0);
        m_1(8 downto 8) <= zero_vec;
        m_2(5 downto 0) <= zero_vec6;
        m_2(7 downto 6) <= rn(1 downto 0);
        m_2(8 downto 8) <= zero_vec;
        m_3(4 downto 0) <= zero_vec5;
        m_3(7 downto 5) <= rn(2 downto 0);
        m_3(8 downto 8) <= zero_vec;
        m_4(3 downto 0) <= zero_vec4;
        m_4(7 downto 4) <= rn(3 downto 0);
        m_4(8 downto 8) <= zero_vec;
        m_5(2 downto 0) <= zero_vec3;
        m_5(7 downto 3) <= rn(4 downto 0);
        m_5(8 downto 8) <= zero_vec;
        m_6(1 downto 0) <= zero_vec2;
        m_6(7 downto 2) <= rn(5 downto 0);
        m_6(8 downto 8) <= zero_vec;
        m_7(0 downto 0) <= zero_vec1;
        m_7(7 downto 1) <= rn(6 downto 0);
        m_7(8 downto 8) <= zero_vec;
        m_8(7 downto 0) <= rn;
        m_8(8 downto 8) <= zero_vec;

        mux9: fft20_mux_bus16
            generic map (
                c_width     => 9,
                c_inputs    => 9,
                c_sel_width => 4 )
            port map (
                ma  => m_0,
                mb  => m_1,
                mc  => m_2,
                md  => m_3,
                me  => m_4,
                mf  => m_5,
                mg  => m_6,
                mh  => m_7,
                maa => m_8,
                mab => zero_vec9,
                mac => zero_vec9,
                mad => zero_vec9,
                mae => zero_vec9,
                maf => zero_vec9,
                mag => zero_vec9,
                mah => zero_vec9,
                s   => rank,
                clk => clk,
                ce  => ce,
                q   => tw_addr_base );
    end generate;            
                
    n1024: if (C_NFFT_MAX=10) generate
        m_0             <= zero_vec10;
        m_1(7 downto 0) <= zero_vec8;
        m_1(8 downto 8) <= rn(0 downto 0);
        m_1(9 downto 9) <= zero_vec;
        m_2(6 downto 0) <= zero_vec7;
        m_2(8 downto 7) <= rn(1 downto 0);
        m_2(9 downto 9) <= zero_vec;
        m_3(5 downto 0) <= zero_vec6;
        m_3(8 downto 6) <= rn(2 downto 0);
        m_3(9 downto 9) <= zero_vec;
        m_4(4 downto 0) <= zero_vec5;
        m_4(8 downto 5) <= rn(3 downto 0);
        m_4(9 downto 9) <= zero_vec;
        m_5(3 downto 0) <= zero_vec4;
        m_5(8 downto 4) <= rn(4 downto 0);
        m_5(9 downto 9) <= zero_vec;
        m_6(2 downto 0) <= zero_vec3;
        m_6(8 downto 3) <= rn(5 downto 0);
        m_6(9 downto 9) <= zero_vec;
        m_7(1 downto 0) <= zero_vec2;
        m_7(8 downto 2) <= rn(6 downto 0);
        m_7(9 downto 9) <= zero_vec;
        m_8(0 downto 0) <= zero_vec1;
        m_8(8 downto 1) <= rn(7 downto 0);
        m_8(9 downto 9) <= zero_vec;
        m_9(8 downto 0) <= rn;
        m_9(9 downto 9) <= zero_vec;

        mux10: fft20_mux_bus16
            generic map (
                c_width     => 10,
                c_inputs    => 10,
                c_sel_width => 4 )
            port map (
                ma  => m_0,
                mb  => m_1,
                mc  => m_2,
                md  => m_3,
                me  => m_4,
                mf  => m_5,
                mg  => m_6,
                mh  => m_7,
                maa => m_8,
                mab => m_9,
                mac => zero_vec10,
                mad => zero_vec10,
                mae => zero_vec10,
                maf => zero_vec10,
                mag => zero_vec10,
                mah => zero_vec10,
                s   => rank,
                clk => clk,
                ce  => ce,
                q   => tw_addr_base );
                
    end generate;

    conjugate : c_twos_comp_v6_0
        generic map (
            c_width => C_NFFT_MAX,
            c_ainit_val => "",
            c_sinit_val => "",
            c_bypass_enable => 1,
            c_bypass_low  => 1, 
            c_sync_priority => 0,
            c_sync_enable => 0,
            c_pipe_stages =>  0,
            c_has_bypass  => 1,
            c_has_ce => 1,
            c_has_aclr => 0,
            c_has_aset => 0,
            c_has_ainit => 0,
            c_has_sclr => 0,
            c_has_sset => 0,
            c_has_sinit => 0,
            c_has_s => 0,
            c_has_q => 1,
            c_enable_rlocs => 1 )
        port map (
            a => tw_addr_base,
            bypass => fwd_inv,
            clk => clk,
            ce => ce,
            aclr => gnd,
            aset => gnd,
            ainit => gnd,
            sclr => gnd,
            sset => gnd,
            sinit => gnd,
            s => open_vec,
            q => tw_addr_full );
            
    tw_addr <= tw_addr_full(C_NFFT_MAX-1 downto 0);            

end xilinx;
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.fft20_comps.all;
USE XilinxCoreLib.fft20_bb_comps.all;
USE XilinxCoreLib.fft20_pkg.all;

ENTITY xfft_v2_0_a IS
	generic (
		C_NFFT_MAX 		     : integer := 12;
		C_TWIDDLE_MEM_TYPE : integer := 1;
		C_DATA_MEM_TYPE    : integer := 1;
		C_HAS_BYPASS 	     : integer := 1;	
		C_HAS_NFFT 	       : integer := 1;	
		C_HAS_SCALING      : integer := 1;	
		C_HAS_BFP 		     : integer := 0;	
		C_HAS_ROUNDING     : integer := 1;	
		C_HAS_OVFLO 	     : integer := 1;	
		C_HAS_CE 		       : integer := 1;	
		C_HAS_SCLR 		     : integer := 1;	
		C_INPUT_WIDTH 	   : integer := 16;	
		C_TWIDDLE_WIDTH	   : integer := 16;	
		C_OUTPUT_WIDTH	   : integer := 16);	
	port (
		XN_RE				 : IN std_logic_vector(C_INPUT_WIDTH-1 DOWNTO 0);   
		XN_IM				 : IN std_logic_vector(C_INPUT_WIDTH-1 DOWNTO 0);   
		START				 : IN std_logic;   
		NFFT				 : IN std_logic_vector(3 DOWNTO 0);   
		NFFT_WE		   : IN std_logic;   
		FWD_INV			 : IN std_logic;   
		FWD_INV_WE	 : IN std_logic;   
		SCALE_SCH		 : IN std_logic_vector((C_NFFT_MAX+1)/2*2-1 DOWNTO 0);   
		SCALE_SCH_WE : IN std_logic;   
		SCLR				 : IN std_logic;   
		CE					 : IN std_logic;   
		CLK				   : IN std_logic;   
		XK_RE				 : OUT std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0);   
		XK_IM				 : OUT std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0);   
		XN_INDEX		 : OUT std_logic_vector(C_NFFT_MAX-1 DOWNTO 0);   
		XK_INDEX		 : OUT std_logic_vector(C_NFFT_MAX-1 DOWNTO 0);   
		RFD				   : OUT std_logic;   
		BUSY				 : OUT std_logic;   
		DV					 : OUT std_logic;   
		EDONE				 : OUT std_logic;   
		DONE				 : OUT std_logic;   
		OVFLO				 : OUT std_logic);   
END xfft_v2_0_a;

ARCHITECTURE xilinx OF xfft_v2_0_a IS
  
	constant nfft_max_equ_8192         : integer := eval(c_nfft_max=13); 
  constant nfft_max_greater_than_256 : integer := eval(c_nfft_max>8);
  constant has_mults                 : integer := eval(c_nfft_max>10);  
  
  
  constant PE0_width       : integer := Arch_A_PE0_width(C_NFFT_MAX, C_HAS_SCALING, C_INPUT_WIDTH);
	constant twiddle_width   : integer := C_TWIDDLE_WIDTH+1;
  
  constant PE0_delay			 : integer := PE_latency(PE0_width, twiddle_width, has_mults, C_HAS_SCALING, C_HAS_ROUNDING);
	constant PE1_delay			 : integer := PE_latency(C_OUTPUT_WIDTH, twiddle_width, 1, C_HAS_SCALING, C_HAS_ROUNDING);
	constant flow_delay			 : integer := PE_latency(24, 24, 1, 1, 1)-PE_latency(PE0_width, twiddle_width, has_mults, C_HAS_SCALING, C_HAS_ROUNDING);  
	constant PE0_mult_delay	 : integer := has_mults*(mult_latency(PE0_width+1, twiddle_width)+2);
	constant PE1_mult_delay	 : integer := mult_latency(C_OUTPUT_WIDTH+1, twiddle_width)+2;
	constant dragonfly_delay : integer := 2;
  constant addr_mux_delay  : integer := 1;
  constant data_mux_delay  : integer := 1;
  constant mem_rd_delay    : integer := 1;
  constant in_sw_delay     : integer := 1;
  constant out_sw_delay    : integer := 1;
  constant io_cnt_delay    : integer := 1;
  constant rw_gen_delay    : integer := 4;
  constant tw_gen_delay    : integer := 4;
  constant sincos_delay    : integer :=	1+get_sin_cos_pipe_stages(C_TWIDDLE_MEM_TYPE, C_NFFT_MAX, twiddle_width);
	constant out_gen_delay   : integer := 2;
  
  
	signal CLK_EN 						: std_logic;
	signal RESET              : std_logic;
	signal XN                 : std_logic_vector(2*C_INPUT_WIDTH-1 downto 0);
	signal XK                 : std_logic_vector(2*C_OUTPUT_WIDTH-1 downto 0);
 	signal nfft_int           : std_logic_vector(3 downto 0);
	signal edone_int          : std_logic_vector(0 downto 0);
	signal edone_int_ce       : std_logic_vector(0 downto 0);
	signal done_int           : std_logic_vector(0 downto 0);
	signal done_int_ce        : std_logic_vector(0 downto 0);
	signal fwd_inv_int        : std_logic;
	signal fwd_inv_pe0        : std_logic;
	signal fwd_inv_pe1        : std_logic;
	signal fwd_inv_pe0_tw     : std_logic;
	signal fwd_inv_pe1_tw     : std_logic;
	signal fwd_inv_pe0_outsw  : std_logic;
	signal fwd_inv_pe1_outsw  : std_logic;
	signal scale_sch_int      : std_logic_vector(13 downto 0);  
	signal scale_sch_pe0      : std_logic_vector(13 downto 0);  
	signal scale_sch_pe1      : std_logic_vector(13 downto 0);  
	signal scale_sch_o        : std_logic_vector((c_nfft_max+1)/2*2-1 downto 0);  
	 
	signal proc0_valid_in_dpm_ce : std_logic;
	signal proc1_valid_pe_dpm_ce : std_logic;
	signal dv_int_delay_ce       : std_logic;
  signal PE0_1st_rank       : std_logic;
  signal PE1_1st_rank       : std_logic;
  signal PE0_1st_rank_delay : std_logic;
  signal PE1_1st_rank_delay : std_logic;
  signal proc0_valid        : std_logic;
  signal proc1_valid        : std_logic;
	signal proc0_valid_pe_dpm : std_logic;
	signal proc0_valid_in_dpm : std_logic;
	signal proc0_valid_ovflo  : std_logic;
	signal proc1_valid_pe_dpm : std_logic;
  signal proc1_valid_ovflo  : std_logic;
  signal proc0_rank         : std_logic_vector(2 downto 0);
  signal proc1_rank         : std_logic_vector(2 downto 0);
  signal proc0_rank_tw      : std_logic_vector(2 downto 0);
  signal proc1_rank_data    : std_logic_vector(2 downto 0);
  signal proc1_rank_tw      : std_logic_vector(2 downto 0);
 	signal last_rank          : std_logic;
	signal last_rank_data     : std_logic;
	signal last_rank_tw       : std_logic;
	signal PE0_scale          : std_logic_vector(1 downto 0);
	signal PE0_scale_delay    : std_logic_vector(1 downto 0);
	signal PE1_scale          : std_logic_vector(1 downto 0);
	signal PE1_scale_delay    : std_logic_vector(1 downto 0);
  signal bypass             : std_logic; 
  signal bypass_delay       : std_logic; 
  signal bypass_pre         : std_logic; 
  signal dv_int             : std_logic;
  signal dv_int_delay       : std_logic;
  signal PE0_start          : std_logic;
  signal PE0_start_ovflo    : std_logic;
  signal PE1_start_ovflo_ce : std_logic;
  signal PE1_start          : std_logic;
  signal PE1_start_ovflo    : std_logic;
  signal PE1_busy           : std_logic;
	signal PE1_busy_delay     : std_logic;
  signal rfd_int            : std_logic;
	signal PE1_mux_sel        : std_logic;
  signal PE1_pre_mux_sel    : std_logic;
	signal PE0_overflow		 	  : std_logic;
	signal PE1_overflow		 	  : std_logic;
	signal ovflo_pre0         : std_logic_vector(0 downto 0);
	signal ovflo_pre1         : std_logic_vector(0 downto 0);
	signal ovflo_vec         : std_logic_vector(0 downto 0);
	signal PE1_ovflo_and_ovflo0   : std_logic;
	signal PE0_CE          : std_logic;
	signal PE1_CE          : std_logic;
	signal ovflo_0            : std_logic_vector(0 downto 0);
	signal ovflo_1            : std_logic_vector(0 downto 0);
	
	signal gnd                : std_logic;
  signal logic1             : std_logic;
  
  signal input_cnt          : std_logic_vector(c_nfft_max-1 downto 0);
  signal input_cnt_delay    : std_logic_vector(c_nfft_max-1 downto 0);
  signal PE0_data_cnt       : std_logic_vector(c_nfft_max-3 downto 0);
  signal PE0_data_cnt_tw    : std_logic_vector(c_nfft_max-3 downto 0);
  signal PE1_data_cnt       : std_logic_vector(c_nfft_max-3 downto 0);
  signal PE1_data_cnt_data  : std_logic_vector(c_nfft_max-3 downto 0);
  signal PE1_data_cnt_tw    : std_logic_vector(c_nfft_max-3 downto 0);
  signal output_cnt         : std_logic_vector(c_nfft_max-1 downto 0);
  signal output_cnt_delay      : std_logic_vector(c_nfft_max-1 downto 0);
	
	
  signal input_wr_addr      : std_logic_vector(c_nfft_max-3 downto 0);
 	signal input_we_0		      : std_logic;
	signal input_we_1		      : std_logic;
	signal input_we_2		      : std_logic;
	signal input_we_3		      : std_logic;
  signal PE0_dpm_we		      : std_logic;
  signal PE1_dpm_we		      : std_logic;
  signal output_dpm_we      : std_logic;
  
  signal PE0_data_rd_addr_0    : std_logic_vector(c_nfft_max-3 downto 0);
  signal PE0_data_rd_addr_1    : std_logic_vector(c_nfft_max-3 downto 0);
  signal PE0_data_rd_addr_2    : std_logic_vector(c_nfft_max-3 downto 0);
  signal PE0_data_rd_addr_3    : std_logic_vector(c_nfft_max-3 downto 0);
  signal PE0_data_rd_addr_0_d1 : std_logic_vector(c_nfft_max-3 downto 0);
  signal PE0_data_rd_addr_1_d1 : std_logic_vector(c_nfft_max-3 downto 0);
  signal PE0_data_rd_addr_2_d1 : std_logic_vector(c_nfft_max-3 downto 0);
  signal PE0_data_rd_addr_3_d1 : std_logic_vector(c_nfft_max-3 downto 0);
  signal PE0_data_wr_addr_0    : std_logic_vector(c_nfft_max-3 downto 0);
  signal PE0_data_wr_addr_1    : std_logic_vector(c_nfft_max-3 downto 0);
  signal PE0_data_wr_addr_2    : std_logic_vector(c_nfft_max-3 downto 0);
  signal PE0_data_wr_addr_3    : std_logic_vector(c_nfft_max-3 downto 0);
 	signal PE0_dpm0_data_rd_addr : std_logic_vector(c_nfft_max-3 downto 0);
  signal PE0_dpm1_data_rd_addr : std_logic_vector(c_nfft_max-3 downto 0);
  signal PE0_dpm2_data_rd_addr : std_logic_vector(c_nfft_max-3 downto 0);
  signal PE0_dpm3_data_rd_addr : std_logic_vector(c_nfft_max-3 downto 0);
  
  signal PE1_data_rd_addr_0    : std_logic_vector(c_nfft_max-3 downto 0);
  signal PE1_data_rd_addr_1    : std_logic_vector(c_nfft_max-3 downto 0);
  signal PE1_data_rd_addr_2    : std_logic_vector(c_nfft_max-3 downto 0);
  signal PE1_data_rd_addr_3    : std_logic_vector(c_nfft_max-3 downto 0);
  signal PE1_data_rd_addr_0_d1 : std_logic_vector(c_nfft_max-3 downto 0);
  signal PE1_data_rd_addr_1_d1 : std_logic_vector(c_nfft_max-3 downto 0);
  signal PE1_data_rd_addr_2_d1 : std_logic_vector(c_nfft_max-3 downto 0);
  signal PE1_data_rd_addr_3_d1 : std_logic_vector(c_nfft_max-3 downto 0);
  signal PE1_data_wr_addr_0    : std_logic_vector(c_nfft_max-3 downto 0);
  signal PE1_data_wr_addr_1    : std_logic_vector(c_nfft_max-3 downto 0);
  signal PE1_data_wr_addr_2    : std_logic_vector(c_nfft_max-3 downto 0);
  signal PE1_data_wr_addr_3    : std_logic_vector(c_nfft_max-3 downto 0);
  signal PE1_mux0_data_wr_addr : std_logic_vector(c_nfft_max-3 downto 0);
  signal PE1_mux1_data_wr_addr : std_logic_vector(c_nfft_max-3 downto 0);
  signal PE1_mux2_data_wr_addr : std_logic_vector(c_nfft_max-3 downto 0);
  signal PE1_mux3_data_wr_addr : std_logic_vector(c_nfft_max-3 downto 0);
  
  signal PE0_twiddle1_addr     : std_logic_vector(c_nfft_max-1 downto 0);
  signal PE0_twiddle2_addr     : std_logic_vector(c_nfft_max-1 downto 0);
  signal PE0_twiddle3_addr     : std_logic_vector(c_nfft_max-1 downto 0);
  signal PE1_twiddle1_addr     : std_logic_vector(c_nfft_max-1 downto 0);
  signal PE1_twiddle2_addr     : std_logic_vector(c_nfft_max-1 downto 0);
  signal PE1_twiddle3_addr     : std_logic_vector(c_nfft_max-1 downto 0);
  
  signal output_rd_addr        : std_logic_vector(c_nfft_max-3 downto 0);
	
	
  signal PE0_in_switch_ctrl_pr : std_logic_vector(1 downto 0);
  signal PE0_in_switch_ctrl    : std_logic_vector(1 downto 0);
  signal PE0_out_switch_ctrl   : std_logic_vector(1 downto 0);
	
  signal PE1_in_switch_ctrl_pr : std_logic_vector(1 downto 0);
  signal PE1_in_switch_ctrl    : std_logic_vector(1 downto 0);
  signal PE1_out_switch_ctrl   : std_logic_vector(1 downto 0);
	
  signal output_ctrl           : std_logic_vector(1 downto 0);
  signal output_ctrl_d1        : std_logic_vector(1 downto 0);
	
	
  signal input_dpm0_data       : std_logic_vector(2*C_INPUT_WIDTH-1 downto 0);
  signal input_dpm1_data       : std_logic_vector(2*C_INPUT_WIDTH-1 downto 0);
  signal input_dpm2_data       : std_logic_vector(2*C_INPUT_WIDTH-1 downto 0);
  signal input_dpm3_data       : std_logic_vector(2*C_INPUT_WIDTH-1 downto 0);
 	signal PE0_dpm0_data         : std_logic_vector(2*PE0_width-1 downto 0);
  signal PE0_dpm1_data         : std_logic_vector(2*PE0_width-1 downto 0);
  signal PE0_dpm2_data         : std_logic_vector(2*PE0_width-1 downto 0);
  signal PE0_dpm3_data         : std_logic_vector(2*PE0_width-1 downto 0);
	signal PE1_dpm0_data         : std_logic_vector(2*C_OUTPUT_WIDTH-1 downto 0);
  signal PE1_dpm1_data         : std_logic_vector(2*C_OUTPUT_WIDTH-1 downto 0);
  signal PE1_dpm2_data         : std_logic_vector(2*C_OUTPUT_WIDTH-1 downto 0);
  signal PE1_dpm3_data         : std_logic_vector(2*C_OUTPUT_WIDTH-1 downto 0);
  
  signal PE1_mux0_data         : std_logic_vector(2*C_OUTPUT_WIDTH-1 downto 0);
  signal PE1_mux1_data         : std_logic_vector(2*C_OUTPUT_WIDTH-1 downto 0);
  signal PE1_mux2_data         : std_logic_vector(2*C_OUTPUT_WIDTH-1 downto 0);
  signal PE1_mux3_data         : std_logic_vector(2*C_OUTPUT_WIDTH-1 downto 0);
  
	signal PE0_out_sw0_data      : std_logic_vector(2*PE0_width-1 downto 0);
  signal PE0_out_sw1_data      : std_logic_vector(2*PE0_width-1 downto 0);
  signal PE0_out_sw2_data      : std_logic_vector(2*PE0_width-1 downto 0);
  signal PE0_out_sw3_data      : std_logic_vector(2*PE0_width-1 downto 0);
	signal PE1_out_sw0_data      : std_logic_vector(2*C_OUTPUT_WIDTH-1 downto 0);
  signal PE1_out_sw1_data      : std_logic_vector(2*C_OUTPUT_WIDTH-1 downto 0);
  signal PE1_out_sw2_data      : std_logic_vector(2*C_OUTPUT_WIDTH-1 downto 0);
  signal PE1_out_sw3_data      : std_logic_vector(2*C_OUTPUT_WIDTH-1 downto 0);
  
	signal dout_0                : std_logic_vector(2*C_OUTPUT_WIDTH-1 downto 0);
  signal dout_1                : std_logic_vector(2*C_OUTPUT_WIDTH-1 downto 0);
  signal dout_2                : std_logic_vector(2*C_OUTPUT_WIDTH-1 downto 0);
  signal dout_3                : std_logic_vector(2*C_OUTPUT_WIDTH-1 downto 0);
  
  signal PE0_twiddle1_re       : std_logic_vector(twiddle_width-1 downto 0);
  signal PE0_twiddle1_im       : std_logic_vector(twiddle_width-1 downto 0);
  signal PE0_twiddle2_re       : std_logic_vector(twiddle_width-1 downto 0);
  signal PE0_twiddle2_im       : std_logic_vector(twiddle_width-1 downto 0);
  signal PE0_twiddle3_re       : std_logic_vector(twiddle_width-1 downto 0);
  signal PE0_twiddle3_im       : std_logic_vector(twiddle_width-1 downto 0);
	signal PE1_twiddle1_re       : std_logic_vector(twiddle_width-1 downto 0);
  signal PE1_twiddle1_im       : std_logic_vector(twiddle_width-1 downto 0);
  signal PE1_twiddle2_re       : std_logic_vector(twiddle_width-1 downto 0);
  signal PE1_twiddle2_im       : std_logic_vector(twiddle_width-1 downto 0);
  signal PE1_twiddle3_re       : std_logic_vector(twiddle_width-1 downto 0);
  signal PE1_twiddle3_im       : std_logic_vector(twiddle_width-1 downto 0);
  
  signal input_dpm0_data_re      : std_logic_vector(PE0_width-1 downto 0);
  signal input_dpm0_data_im      : std_logic_vector(PE0_width-1 downto 0);
  signal input_dpm1_data_re      : std_logic_vector(PE0_width-1 downto 0);
  signal input_dpm1_data_im      : std_logic_vector(PE0_width-1 downto 0);
  signal input_dpm2_data_re      : std_logic_vector(PE0_width-1 downto 0);
  signal input_dpm2_data_im      : std_logic_vector(PE0_width-1 downto 0);
  signal input_dpm3_data_re      : std_logic_vector(PE0_width-1 downto 0);
  signal input_dpm3_data_im      : std_logic_vector(PE0_width-1 downto 0);
	signal PE0_dpm0_padded_data_re : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
  signal PE0_dpm0_padded_data_im : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
  signal PE0_dpm1_padded_data_re : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
  signal PE0_dpm1_padded_data_im : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
  signal PE0_dpm2_padded_data_re : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
  signal PE0_dpm2_padded_data_im : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
  signal PE0_dpm3_padded_data_re : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
  signal PE0_dpm3_padded_data_im : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
	signal PE1_dpm0_data_re        : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
  signal PE1_dpm0_data_im        : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
  signal PE1_dpm1_data_re        : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
  signal PE1_dpm1_data_im        : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
  signal PE1_dpm2_data_re        : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
  signal PE1_dpm2_data_im        : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
  signal PE1_dpm3_data_re        : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
  signal PE1_dpm3_data_im        : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
	
	signal PE0_mux0_data_re        : std_logic_vector(PE0_width-1 downto 0);
	signal PE0_mux0_data_im        : std_logic_vector(PE0_width-1 downto 0);
  signal PE0_mux1_data_re        : std_logic_vector(PE0_width-1 downto 0);
  signal PE0_mux1_data_im        : std_logic_vector(PE0_width-1 downto 0);
  signal PE0_mux2_data_re        : std_logic_vector(PE0_width-1 downto 0);
  signal PE0_mux2_data_im        : std_logic_vector(PE0_width-1 downto 0);
  signal PE0_mux3_data_re        : std_logic_vector(PE0_width-1 downto 0);
  signal PE0_mux3_data_im        : std_logic_vector(PE0_width-1 downto 0);
	signal PE1_mux0_data_re        : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
	signal PE1_mux0_data_im        : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
  signal PE1_mux1_data_re        : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
  signal PE1_mux1_data_im        : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
  signal PE1_mux2_data_re        : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
  signal PE1_mux2_data_im        : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
  signal PE1_mux3_data_re        : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
  signal PE1_mux3_data_im        : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
  
	signal PE0_in_sw0_data_re      : std_logic_vector(PE0_width-1 downto 0);
	signal PE0_in_sw0_data_im      : std_logic_vector(PE0_width-1 downto 0);
  signal PE0_in_sw1_data_re      : std_logic_vector(PE0_width-1 downto 0);
  signal PE0_in_sw1_data_im      : std_logic_vector(PE0_width-1 downto 0);
  signal PE0_in_sw2_data_re      : std_logic_vector(PE0_width-1 downto 0);
  signal PE0_in_sw2_data_im      : std_logic_vector(PE0_width-1 downto 0);
  signal PE0_in_sw3_data_re      : std_logic_vector(PE0_width-1 downto 0);
  signal PE0_in_sw3_data_im      : std_logic_vector(PE0_width-1 downto 0);
	signal PE1_in_sw0_data_re      : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
	signal PE1_in_sw0_data_im      : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
  signal PE1_in_sw1_data_re      : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
  signal PE1_in_sw1_data_im      : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
  signal PE1_in_sw2_data_re      : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
  signal PE1_in_sw2_data_im      : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
  signal PE1_in_sw3_data_re      : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
  signal PE1_in_sw3_data_im      : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
	
	signal PE0_out0_data_re        : std_logic_vector(PE0_width-1 downto 0);
  signal PE0_out0_data_im        : std_logic_vector(PE0_width-1 downto 0);
  signal PE0_out1_data_re        : std_logic_vector(PE0_width-1 downto 0);
  signal PE0_out1_data_im        : std_logic_vector(PE0_width-1 downto 0);
  signal PE0_out2_data_re        : std_logic_vector(PE0_width-1 downto 0);
  signal PE0_out2_data_im        : std_logic_vector(PE0_width-1 downto 0);
  signal PE0_out3_data_re        : std_logic_vector(PE0_width-1 downto 0);
  signal PE0_out3_data_im        : std_logic_vector(PE0_width-1 downto 0);
	signal PE1_out0_data_re        : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
  signal PE1_out0_data_im        : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
  signal PE1_out1_data_re        : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
  signal PE1_out1_data_im        : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
  signal PE1_out2_data_re        : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
  signal PE1_out2_data_im        : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
  signal PE1_out3_data_re        : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
  signal PE1_out3_data_im        : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
  
  signal PE0_out_sw0_data_re     : std_logic_vector(PE0_width-1 downto 0);
	signal PE0_out_sw0_data_im     : std_logic_vector(PE0_width-1 downto 0);
  signal PE0_out_sw1_data_re     : std_logic_vector(PE0_width-1 downto 0);
  signal PE0_out_sw1_data_im     : std_logic_vector(PE0_width-1 downto 0);
  signal PE0_out_sw2_data_re     : std_logic_vector(PE0_width-1 downto 0);
  signal PE0_out_sw2_data_im     : std_logic_vector(PE0_width-1 downto 0);
  signal PE0_out_sw3_data_re     : std_logic_vector(PE0_width-1 downto 0);
  signal PE0_out_sw3_data_im     : std_logic_vector(PE0_width-1 downto 0);
	signal PE1_out_sw0_data_re     : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
	signal PE1_out_sw0_data_im     : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
  signal PE1_out_sw1_data_re     : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
  signal PE1_out_sw1_data_im     : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
  signal PE1_out_sw2_data_re     : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
  signal PE1_out_sw2_data_im     : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
  signal PE1_out_sw3_data_re     : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
  signal PE1_out_sw3_data_im     : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);

	signal RESET_int : std_logic;
	signal RESET_DS : std_logic;
	signal RESET_DL : std_logic;
	
	signal RESET_CONT_S : std_logic;
	signal RESET_CONT_L : std_logic;
	signal RESET_CONT_S_int : std_logic;
	signal RESET_CONT_L_int : std_logic;
	
BEGIN

  gnd <= '0';
	logic1 <= '1';
	
  has_no_ce: if c_has_ce /= 1 generate 
    CLK_EN <= '1'; 
  end generate;
  
  has_ce: if c_has_ce = 1 generate 
    CLK_EN <= CE; 
  end generate;

  has_no_sclr: if c_has_sclr /= 1 generate
    RESET <= '0'; 
  end generate;
  
  has_sclr: if c_has_sclr = 1 generate 
    RESET <= SCLR;
	end generate;	

  lut_for_reset_int: fft20_c_lut
		generic map (
		  eqn => "i0+(i1*i2)")
		port map (
		  I0 => RESET,
			I1 => NFFT_WE,
			I2 => CLK_EN,
			I3 => logic1,
			O  =>	RESET_int);
   
  lut_for_reset_l: fft20_c_lut
		generic map (
		  eqn => "i0+i1")
		port map (
		  I0 => RESET_int,
			I1 => RESET_CONT_L_int,
			I2 => logic1,
			I3 => logic1,
			O  =>	RESET_CONT_L);
			
	lut_for_reset_s: fft20_c_lut
		generic map (
		  eqn => "i0+i1")
		port map (
		  I0 => RESET_int,
			I1 => RESET_CONT_S_int,
			I2 => logic1,
			I3 => logic1,
			O  =>	RESET_CONT_S);
	
  sr_for_sclr_ds: fft20_shift_ram_1
	  generic map (
    	C_DEPTH => 4)
	  port map (
      
      D   => RESET_CONT_S_int,
   	  CLK => CLK,
     	CE  => CLK_EN,
     	Q   => RESET_DS);

  sr_for_sclr_dl: fft20_shift_ram_1
   	generic map (
     	C_DEPTH => rw_gen_delay+addr_mux_delay+2*(mem_rd_delay+data_mux_delay+in_sw_delay+out_sw_delay)+PE0_delay+PE1_delay)
   	port map (
     	
     	D   => RESET_CONT_L_int,
     	CLK => CLK,
     	CE  => CLK_EN,
     	Q   => RESET_DL);

  reg_sr_for_sclr_s: fft20_reg_fde_sr_1
    port map (
      D   => RESET_CONT_S_int,
      CLK => CLK,
      
      CE  => logic1,
			SCLR => RESET_DS,
			SSET => RESET_int, 
      Q   => RESET_CONT_S_int);
			
	reg_sr_for_sclr_l: fft20_reg_fde_sr_1
    port map (
      D   => RESET_CONT_L_int,
      CLK => CLK,
      
      CE  => logic1,
			SCLR => RESET_DL,
			SSET => RESET_int, 
      Q   => RESET_CONT_L_int);
		
	input_dpm0_data_re(C_INPUT_WIDTH-1 downto 0) <= input_dpm0_data(2*C_INPUT_WIDTH-1 downto	C_INPUT_WIDTH);
	input_dpm0_data_im(C_INPUT_WIDTH-1 downto 0) <= input_dpm0_data(C_INPUT_WIDTH-1 downto	0);
  input_dpm1_data_re(C_INPUT_WIDTH-1 downto 0) <= input_dpm1_data(2*C_INPUT_WIDTH-1 downto	C_INPUT_WIDTH);
  input_dpm1_data_im(C_INPUT_WIDTH-1 downto 0) <= input_dpm1_data(C_INPUT_WIDTH-1 downto	0);
  input_dpm2_data_re(C_INPUT_WIDTH-1 downto 0) <= input_dpm2_data(2*C_INPUT_WIDTH-1 downto	C_INPUT_WIDTH);
  input_dpm2_data_im(C_INPUT_WIDTH-1 downto 0) <= input_dpm2_data(C_INPUT_WIDTH-1 downto	0);
  input_dpm3_data_re(C_INPUT_WIDTH-1 downto 0) <= input_dpm3_data(2*C_INPUT_WIDTH-1 downto	C_INPUT_WIDTH);
  input_dpm3_data_im(C_INPUT_WIDTH-1 downto 0) <= input_dpm3_data(C_INPUT_WIDTH-1 downto	0);
  
  PE0_dpm0_padded_data_re(PE0_width-1 downto 0) <= PE0_dpm0_data(2*PE0_width-1 downto	PE0_width);
  PE0_dpm0_padded_data_im(PE0_width-1 downto 0) <= PE0_dpm0_data(PE0_width-1 downto	0);
  PE0_dpm1_padded_data_re(PE0_width-1 downto 0) <= PE0_dpm1_data(2*PE0_width-1 downto	PE0_width);
  PE0_dpm1_padded_data_im(PE0_width-1 downto 0) <= PE0_dpm1_data(PE0_width-1 downto	0);
  PE0_dpm2_padded_data_re(PE0_width-1 downto 0) <= PE0_dpm2_data(2*PE0_width-1 downto	PE0_width);
  PE0_dpm2_padded_data_im(PE0_width-1 downto 0) <= PE0_dpm2_data(PE0_width-1 downto	0);
  PE0_dpm3_padded_data_re(PE0_width-1 downto 0) <= PE0_dpm3_data(2*PE0_width-1 downto	PE0_width);
  PE0_dpm3_padded_data_im(PE0_width-1 downto 0) <= PE0_dpm3_data(PE0_width-1 downto	0);

  pad_w_sign_bit: if c_has_scaling = 0 generate  
	  padding_iteration_1: for i in PE0_width-1 downto C_INPUT_WIDTH generate
		  input_dpm0_data_re(i) <= input_dpm0_data_re(C_INPUT_WIDTH-1);
      input_dpm0_data_im(i) <= input_dpm0_data_im(C_INPUT_WIDTH-1);
      input_dpm1_data_re(i) <= input_dpm1_data_re(C_INPUT_WIDTH-1);
      input_dpm1_data_im(i) <= input_dpm1_data_im(C_INPUT_WIDTH-1);
      input_dpm2_data_re(i) <= input_dpm2_data_re(C_INPUT_WIDTH-1);
      input_dpm2_data_im(i) <= input_dpm2_data_im(C_INPUT_WIDTH-1);
      input_dpm3_data_re(i) <= input_dpm3_data_re(C_INPUT_WIDTH-1);
      input_dpm3_data_im(i) <= input_dpm3_data_im(C_INPUT_WIDTH-1);
		end generate;	
	
	  padding_iteration_2: for i in C_OUTPUT_WIDTH-1 downto PE0_width generate 
	    PE0_dpm0_padded_data_re(i) <= PE0_dpm0_data(2*PE0_width-1);
      PE0_dpm0_padded_data_im(i) <= PE0_dpm0_data(PE0_width-1);
      PE0_dpm1_padded_data_re(i) <= PE0_dpm1_data(2*PE0_width-1);
      PE0_dpm1_padded_data_im(i) <= PE0_dpm1_data(PE0_width-1);
      PE0_dpm2_padded_data_re(i) <= PE0_dpm2_data(2*PE0_width-1);
      PE0_dpm2_padded_data_im(i) <= PE0_dpm2_data(PE0_width-1);
      PE0_dpm3_padded_data_re(i) <= PE0_dpm3_data(2*PE0_width-1);
      PE0_dpm3_padded_data_im(i) <= PE0_dpm3_data(PE0_width-1);
		end generate;	
	end generate;

  PE0_out_sw0_data(2*PE0_width-1 downto	PE0_width) <= PE0_out_sw0_data_re;
	PE0_out_sw0_data(PE0_width-1 downto	0) <= PE0_out_sw0_data_im;
  PE0_out_sw1_data(2*PE0_width-1 downto	PE0_width) <= PE0_out_sw1_data_re;
  PE0_out_sw1_data(PE0_width-1 downto	0) <= PE0_out_sw1_data_im;
  PE0_out_sw2_data(2*PE0_width-1 downto	PE0_width) <= PE0_out_sw2_data_re;
  PE0_out_sw2_data(PE0_width-1 downto	0) <= PE0_out_sw2_data_im;
  PE0_out_sw3_data(2*PE0_width-1 downto	PE0_width) <= PE0_out_sw3_data_re;
  PE0_out_sw3_data(PE0_width-1 downto	0) <= PE0_out_sw3_data_im;

  PE1_mux0_data(2*C_OUTPUT_WIDTH-1 downto	C_OUTPUT_WIDTH) <= PE1_mux0_data_re;
	PE1_mux0_data(C_OUTPUT_WIDTH-1 downto	0) <= PE1_mux0_data_im;
  PE1_mux1_data(2*C_OUTPUT_WIDTH-1 downto	C_OUTPUT_WIDTH) <= PE1_mux1_data_re;
  PE1_mux1_data(C_OUTPUT_WIDTH-1 downto	0) <= PE1_mux1_data_im;
  PE1_mux2_data(2*C_OUTPUT_WIDTH-1 downto	C_OUTPUT_WIDTH) <= PE1_mux2_data_re;
  PE1_mux2_data(C_OUTPUT_WIDTH-1 downto	0) <= PE1_mux2_data_im;
  PE1_mux3_data(2*C_OUTPUT_WIDTH-1 downto	C_OUTPUT_WIDTH) <= PE1_mux3_data_re;
  PE1_mux3_data(C_OUTPUT_WIDTH-1 downto	0) <= PE1_mux3_data_im;

  PE1_out_sw0_data(2*C_OUTPUT_WIDTH-1 downto	C_OUTPUT_WIDTH) <= PE1_out_sw0_data_re;
	PE1_out_sw0_data(C_OUTPUT_WIDTH-1 downto	0) <= PE1_out_sw0_data_im;
  PE1_out_sw1_data(2*C_OUTPUT_WIDTH-1 downto	C_OUTPUT_WIDTH) <= PE1_out_sw1_data_re;
  PE1_out_sw1_data(C_OUTPUT_WIDTH-1 downto	0) <= PE1_out_sw1_data_im;
  PE1_out_sw2_data(2*C_OUTPUT_WIDTH-1 downto	C_OUTPUT_WIDTH) <= PE1_out_sw2_data_re;
  PE1_out_sw2_data(C_OUTPUT_WIDTH-1 downto	0) <= PE1_out_sw2_data_im;
  PE1_out_sw3_data(2*C_OUTPUT_WIDTH-1 downto	C_OUTPUT_WIDTH) <= PE1_out_sw3_data_re;
  PE1_out_sw3_data(C_OUTPUT_WIDTH-1 downto	0) <= PE1_out_sw3_data_im;

  PE1_dpm0_data_re <= PE1_dpm0_data(2*C_OUTPUT_WIDTH-1 downto	C_OUTPUT_WIDTH);
  PE1_dpm0_data_im <= PE1_dpm0_data(C_OUTPUT_WIDTH-1 downto	0);
  PE1_dpm1_data_re <= PE1_dpm1_data(2*C_OUTPUT_WIDTH-1 downto	C_OUTPUT_WIDTH);
  PE1_dpm1_data_im <= PE1_dpm1_data(C_OUTPUT_WIDTH-1 downto	0);
  PE1_dpm2_data_re <= PE1_dpm2_data(2*C_OUTPUT_WIDTH-1 downto	C_OUTPUT_WIDTH);
  PE1_dpm2_data_im <= PE1_dpm2_data(C_OUTPUT_WIDTH-1 downto	0);
  PE1_dpm3_data_re <= PE1_dpm3_data(2*C_OUTPUT_WIDTH-1 downto	C_OUTPUT_WIDTH);
  PE1_dpm3_data_im <= PE1_dpm3_data(C_OUTPUT_WIDTH-1 downto	0);

  XK_RE <= XK(2*C_OUTPUT_WIDTH-1 downto	C_OUTPUT_WIDTH);
  XK_IM <= XK(C_OUTPUT_WIDTH-1 downto	0);
  XK_RE <= XK(2*C_OUTPUT_WIDTH-1 downto	C_OUTPUT_WIDTH);
  XK_IM <= XK(C_OUTPUT_WIDTH-1 downto	0);
  XK_RE <= XK(2*C_OUTPUT_WIDTH-1 downto	C_OUTPUT_WIDTH);
  XK_IM <= XK(C_OUTPUT_WIDTH-1 downto	0);
  XK_RE <= XK(2*C_OUTPUT_WIDTH-1 downto	C_OUTPUT_WIDTH);
  XK_IM <= XK(C_OUTPUT_WIDTH-1 downto	0);

  
  scale_sch_int((c_nfft_max+1)/2*2-1 downto 0) <= scale_sch_o;  
	padded_with_0: for i in 13 downto (c_nfft_max+1)/2*2 generate 
	  scale_sch_int(i) <= gnd;
	end generate;	
	
	flow_ctrl: fft20_flow_control_a
    generic map (
      c_has_nfft => c_has_nfft,
      c_nfft_max => c_nfft_max,
			flow_delay => flow_delay) 
    port map (
      CLK           => CLK,
      CE            => CLK_EN,
      SCLR          => RESET,
      START         => START,
      NFFT          => NFFT,
      NFFT_WE       => NFFT_WE,
      FWD_INV       => FWD_INV,
      FWD_INV_WE    => FWD_INV_WE,
      SCALE_SCH     => SCALE_SCH,
      SCALE_SCH_WE  => SCALE_SCH_WE,
			LOAD_CNT      => input_cnt, 
      PROC0_CNT     => PE0_data_cnt,  
      PROC1_CNT     => PE1_data_cnt,  
      UNLOAD_CNT    => output_cnt,
			PROC0_RANK    => proc0_rank,
			PROC1_RANK    => proc1_rank,
			LAST_RANK     => last_rank,
			PROC0_VALID   => proc0_valid,
			PROC1_VALID   => proc1_valid,
			PE0_START     => PE0_start,
			PE1_START     => PE1_start,
			PE0_1st_RANK  => PE0_1st_rank,
			PE1_1st_RANK  => PE1_1st_rank,
			PE1_BUSY      => PE1_busy,
			NFFT_O        => nfft_int,
      FWD_INV_O     => fwd_inv_int,
      SCALE_SCH_O   => scale_sch_o,
      RFD_O         => rfd_int,
      DV_O          => dv_int);		

  XN_INDEX <= input_cnt;
	RFD <= rfd_int;

  reg_for_fwd_inv_pe0: fft20_shift_ram_1
    generic map (
      C_DEPTH => 1)
    port map (
      D   => fwd_inv_int,
      CLK => CLK,
      CE  => PE0_CE,
      Q   => fwd_inv_pe0);

	reg_for_fwd_inv_pe1: fft20_shift_ram_1
    generic map (
      C_DEPTH => 1)
    port map (
      D   => fwd_inv_pe0,
      CLK => CLK,
      CE  => PE1_CE,
      Q   => fwd_inv_pe1);
	
	
  sr_fwd_inv_pe0_tw: fft20_shift_ram_1
    generic map (
      C_DEPTH => (rw_gen_delay+addr_mux_delay+mem_rd_delay+data_mux_delay+in_sw_delay)-(tw_gen_delay+sincos_delay))
    port map (
      D   => fwd_inv_pe0,
      CLK => CLK,
      CE  => CLK_EN,
      Q   => fwd_inv_pe0_tw);

	sr_fwd_inv_pe0_outsw: fft20_shift_ram_1
 	  generic map (
   	  C_DEPTH => tw_gen_delay+sincos_delay+PE0_delay-1)
    port map (
 	    D   => fwd_inv_pe0_tw,
   	  CLK => CLK,
     	CE  => CLK_EN,
     	Q   => fwd_inv_pe0_outsw);
  
	sr_fwd_inv_pe1_tw: fft20_shift_ram_1
 	  generic map (
   	  C_DEPTH => rw_gen_delay+addr_mux_delay+2*(mem_rd_delay+data_mux_delay+in_sw_delay)-(tw_gen_delay+sincos_delay)+PE0_delay+out_sw_delay)			
    port map (
 	    D   => fwd_inv_pe1,
   	  CLK => CLK,
     	CE  => CLK_EN,
     	Q   => fwd_inv_pe1_tw);

  sr_fwd_inv_pe1_outsw: fft20_shift_ram_1
 	  generic map (
   	  C_DEPTH => tw_gen_delay+sincos_delay+PE1_delay-1)
    port map (
 	    D   => fwd_inv_pe1_tw,
   	  CLK => CLK,
     	CE  => CLK_EN,
     	Q   => fwd_inv_pe1_outsw);			

  scaling: if c_has_scaling = 1  and c_has_bfp = 0 generate 
  
  
  
  
  
  
  
  
  

	  reg_for_scale_sch_pe0: fft20_reg_fde
  	  generic map (
    	  data_width => 14)
    	port map (
      	D   => scale_sch_int,
      	CLK => CLK,
      	CE  => PE0_CE,
      	Q   => scale_sch_pe0);

  
  
  
  
  
  
  
  
  

	  reg_for_scale_sch_pe1: fft20_reg_fde
  	  generic map (
    	  data_width => 14)
    	port map (
      	D   => scale_sch_pe0,
      	CLK => CLK,
      	CE  => PE1_CE,
      	Q   => scale_sch_pe1);

	  has_PE0_mux: if c_nfft_max >= 11 generate
			PE0_scale_mux: fft20_mux_bus
    	  generic map (
      	  C_WIDTH     => 2,
       		C_INPUTS    => 2+2*nfft_max_equ_8192,
        	C_SEL_WIDTH => 1+nfft_max_equ_8192)
	      port map (
  	      MA  => scale_sch_pe0(1 downto 0),
    	    MB  => scale_sch_pe0(3 downto 2),
      	  MC  => scale_sch_pe0(5 downto 4),
        	MD  => scale_sch_pe0(5 downto 4),
	        S   => proc0_rank(nfft_max_equ_8192 downto 0),
  	      CLK => CLK,
    	    CE  => CLK_EN,
      	  Q   => PE0_scale);
		end generate;		

		no_PE0_mux: if c_nfft_max < 11 generate
  		PE0_scale_reg: fft20_shift_ram
      	generic map (
        	C_DEPTH => data_mux_delay, 
        	C_WIDTH => 2)
	      port map (
  	      D   => scale_sch_pe0(1 downto 0),
    	    CLK => CLK,
      	  CE  => CLK_EN,
        	Q   => PE0_scale);
		end generate;	

	  PE1_scale_mux: fft20_mux_bus8
  	  generic map (
    	  C_WIDTH     => 2,
      	C_INPUTS    => 4+2*nfft_max_greater_than_256+2*nfft_max_equ_8192,
      	C_SEL_WIDTH => 2+nfft_max_greater_than_256)
	    port map (
  	    MA  => scale_sch_pe1(1 downto 0),
    	  MB  => scale_sch_pe1(3 downto 2),
      	MC  => scale_sch_pe1(5 downto 4),
	      MD  => scale_sch_pe1(7 downto 6),
  	    ME  => scale_sch_pe1(9 downto 8),
    	  MF  => scale_sch_pe1(11 downto 10),
      	MG  => scale_sch_pe1(13 downto 12),
	      MH  => scale_sch_pe1(13 downto 12),
  	    S   => proc1_rank(1+nfft_max_greater_than_256 downto 0),
    	  CLK => CLK,
      	CE  => CLK_EN,
      	Q   => PE1_scale);
  
		sr_pe0_scale: fft20_shift_ram
  	  generic map (
    	  C_DEPTH => rw_gen_delay+mem_rd_delay+data_mux_delay+in_sw_delay+PE0_mult_delay+dragonfly_delay, 
      	C_WIDTH => 2)
    	port map (
      	D   => PE0_scale,
      	CLK => CLK,
      	CE  => CLK_EN,
      	Q   => PE0_scale_delay);

	  sr_pe1_scale: fft20_shift_ram
  	  generic map (
    	  C_DEPTH => rw_gen_delay+2*(mem_rd_delay+data_mux_delay+in_sw_delay)+PE0_delay+out_sw_delay+PE1_mult_delay+dragonfly_delay,
				C_WIDTH => 2)
	    port map (
  	    D   => PE1_scale,
    	  CLK => CLK,
      	CE  => CLK_EN,
      	Q   => PE1_scale_delay);
	end generate;			

  sr_proc1_rank_data: fft20_shift_ram
    generic map (
      C_DEPTH => mem_rd_delay+data_mux_delay+in_sw_delay+PE0_delay+out_sw_delay,
      C_WIDTH => 3)
    port map (
      D   => proc1_rank,
      CLK => CLK,
      CE  => CLK_EN,
      Q   => proc1_rank_data);

  sr_proc1_rank_tw: fft20_shift_ram
    generic map (
      C_DEPTH => (rw_gen_delay+addr_mux_delay+mem_rd_delay+data_mux_delay+in_sw_delay)-(tw_gen_delay+sincos_delay),
      C_WIDTH => 3)
    port map (
      D   => proc1_rank_data,
      CLK => CLK,
      CE  => CLK_EN,
      Q   => proc1_rank_tw);

  sr_last_rank_data: fft20_shift_ram_1
    generic map (
      C_DEPTH => mem_rd_delay+data_mux_delay+in_sw_delay+PE0_delay+out_sw_delay)
    port map (
      D   => last_rank,
      CLK => CLK,
      CE  => CLK_EN,
      Q   => last_rank_data);

  sr_last_rank: fft20_shift_ram_1
    generic map (
      C_DEPTH => (rw_gen_delay+addr_mux_delay+mem_rd_delay+data_mux_delay+in_sw_delay)-(tw_gen_delay+sincos_delay))
    port map (
      D   => last_rank_data,
      CLK => CLK,
      CE  => CLK_EN,
      Q   => last_rank_tw);

  sr_last_rank_signal: fft20_shift_ram_1
    generic map (
      C_DEPTH => tw_gen_delay+sincos_delay+PE1_delay+out_sw_delay)
    port map (
      D   => last_rank_tw,
      CLK => CLK,
      CE  => CLK_EN,
      Q   => output_dpm_we);

  pre_bypass_signal: fft20_c_lut
		generic map (
		  eqn => "~(i0*i1)")
		port map (
		  I0 => last_rank_tw,
			I1 => nfft_int(0),
			I2 => gnd,
			I3 => gnd,
			O  =>	bypass_pre);
	
	bypass_signal: fft20_shift_ram_1
    generic map (
      
      C_DEPTH => tw_gen_delay+sincos_delay+PE1_mult_delay-1) 
    port map (
      D   => bypass_pre,
      CLK => CLK,
      CE  => CLK_EN,
      Q   => bypass);

  sr_bypass_signal: fft20_shift_ram_1
    generic map (
      
      C_DEPTH => PE1_delay-PE1_mult_delay) 
    port map (
      D   => bypass,
      CLK => CLK,
      CE  => CLK_EN,
      Q   => bypass_delay);

  sr_PE1_data_cnt_data: fft20_shift_ram
    generic map (
      C_DEPTH => mem_rd_delay+data_mux_delay+in_sw_delay+PE0_delay+out_sw_delay,
      C_WIDTH => c_nfft_max-2)
    port map (
      D   => PE1_data_cnt,
      CLK => CLK,
      CE  => CLK_EN,
      Q   => PE1_data_cnt_data);

  sr_PE1_data_cnt_tw: fft20_shift_ram
    generic map (
      C_DEPTH => (rw_gen_delay+addr_mux_delay+mem_rd_delay+data_mux_delay+in_sw_delay)-(tw_gen_delay+sincos_delay),
      C_WIDTH => c_nfft_max-2)
    port map (
      D   => PE1_data_cnt_data,
      CLK => CLK,
      CE  => CLK_EN,
      Q   => PE1_data_cnt_tw);

  sr_proc0_valid_pe_dpm_signal: fft20_shift_ram_1_sclr
    generic map (
      C_DEPTH => rw_gen_delay)
    port map (
      D   => proc0_valid,
      CLK => CLK,
      CE  => CLK_EN,
			SCLR => RESET,
      Q   => proc0_valid_pe_dpm);

  sr_proc0_valid_in_dpm_signal: fft20_shift_ram_1
    generic map (
      C_DEPTH => addr_mux_delay)
    port map (
      D   => proc0_valid_pe_dpm,
      CLK => CLK,
      CE  => CLK_EN,
      Q   => proc0_valid_in_dpm);

  sr_proc1_valid_pe_dpm_signal: fft20_shift_ram_1
    generic map (
      C_DEPTH => rw_gen_delay+addr_mux_delay+mem_rd_delay+data_mux_delay+in_sw_delay+PE0_delay+out_sw_delay)
    port map (
      D   => proc1_valid,
      CLK => CLK,
      CE  => CLK_EN,
      Q   => proc1_valid_pe_dpm);

  sr_PE0_1st_rank_signal: fft20_shift_ram_1
    generic map (
      C_DEPTH => rw_gen_delay+addr_mux_delay+mem_rd_delay)
    port map (
      D   => PE0_1st_rank,
      CLK => CLK,
      CE  => CLK_EN,
      Q   => PE0_1st_rank_delay);

  sr_PE1_1st_rank_signal: fft20_shift_ram_1
    generic map (
      C_DEPTH => rw_gen_delay+addr_mux_delay+mem_rd_delay+data_mux_delay+in_sw_delay+PE0_delay+out_sw_delay)
    port map (
      D   => PE1_1st_rank,
      CLK => CLK,
      CE  => CLK_EN,
      Q   => PE1_1st_rank_delay);

  pe1_pre_mux_sel_signal: fft20_c_lut
		generic map (
		  eqn => "i0*i1")
		port map (
		  I0 => proc1_valid_pe_dpm,
			I1 => PE1_1st_rank_delay,
			I2 => gnd,
			I3 => gnd,
			O  =>	PE1_pre_mux_sel);
	
  pe1_mux_sel_signal: fft20_shift_ram_1
    generic map (
      C_DEPTH => addr_mux_delay)
    port map (
      D   => PE1_pre_mux_sel,
      CLK => CLK,
      CE  => CLK_EN,
      Q   => PE1_mux_sel);

	sr_PE0_switch_ctrl_signal: fft20_shift_ram
    generic map (
      C_DEPTH => addr_mux_delay+mem_rd_delay+data_mux_delay,
      C_WIDTH => 2)
    port map (
      D   => PE0_in_switch_ctrl_pr,
      CLK => CLK,
      CE  => CLK_EN,
      Q   => PE0_in_switch_ctrl);

  sr_PE1_switch_ctrl_signal: fft20_shift_ram
    generic map (
      C_DEPTH => addr_mux_delay+mem_rd_delay+data_mux_delay,
      C_WIDTH => 2)
    port map (
      D   => PE1_in_switch_ctrl_pr,
      CLK => CLK,
      CE  => CLK_EN,
      Q   => PE1_in_switch_ctrl);

  sr_output_cnt_signal: fft20_shift_ram_sclr
    generic map (
      
      C_DEPTH => rw_gen_delay+addr_mux_delay+2*(mem_rd_delay+data_mux_delay+in_sw_delay+out_sw_delay)+PE0_delay+PE1_delay-out_gen_delay, 
      C_WIDTH => c_nfft_max)
    port map (
      D   => output_cnt,
      CLK => CLK,
      CE  => CLK_EN,
			SCLR => RESET_CONT_L,
      Q   => output_cnt_delay);

  XK_INDEX_signal: fft20_shift_ram_sclr
    generic map (
      C_DEPTH => out_gen_delay+mem_rd_delay+data_mux_delay,
      C_WIDTH => c_nfft_max)
    port map (
      D   => output_cnt_delay,
      CLK => CLK,
      CE  => CLK_EN,
			SCLR => RESET_CONT_S,
      Q   => XK_INDEX);

  outcnt_eq_1: fft20_compare
    generic map (
      C_WIDTH   => c_nfft_max,
      C_B_VALUE => "000001")
    port map (
      CLK => CLK,
      CE => CLK_EN,
			SCLR => RESET,
      A  => output_cnt_delay,
      QA_EQ_B => edone_int(0));

  outcnt_eq_2: fft20_reg_fde_sclr
    generic map (
      data_width => 1)
    port map (
      D   => edone_int,
      CLK => CLK,
      CE  => CLK_EN,
			SCLR => RESET,
      Q   => done_int);

  EDONE <= edone_int(0);
  DONE <= done_int(0);

  sr_dv_signal: fft20_shift_ram_1_sclr
    generic map (
      
      C_DEPTH => rw_gen_delay+addr_mux_delay+2*(mem_rd_delay+data_mux_delay+in_sw_delay+out_sw_delay)+PE0_delay+PE1_delay)
    port map (
      D   => dv_int,
      CLK => CLK,
      CE  => CLK_EN,
			
			SCLR => RESET_CONT_L,
      Q   => dv_int_delay);

  DV_signal: fft20_shift_ram_1_sclr
    generic map (
      C_DEPTH => mem_rd_delay+data_mux_delay)
    port map (
      D   => dv_int_delay,
      CLK => CLK,
      CE  => CLK_EN,
			
			SCLR => RESET_CONT_S,
      Q   => DV);

  
	
	
	
	
	
	
	
	
	
	
	

  busy_int_signal: fft20_c_lut
		generic map (
		  eqn => "i0+i1")
		port map (
		  I0 => proc0_valid,
			I1 => PE1_busy,
			I2 => logic1,
			I3 => logic1,
			O  =>	BUSY);

  has_scaling: if c_has_scaling = 1 generate 
   	
		sr_proc0_valid_ovflo_signal: fft20_shift_ram_1
    	generic map (
      	C_DEPTH => mem_rd_delay+data_mux_delay+in_sw_delay+PE0_delay+io_cnt_delay) 
    	port map (
      	D   => proc0_valid_in_dpm,
      	CLK => CLK,
      	CE  => CLK_EN,
      	Q   => proc0_valid_ovflo);
				
	  sr_proc1_valid_ovflo_signal: fft20_shift_ram_1
  	  generic map (
    	  C_DEPTH => mem_rd_delay+data_mux_delay+in_sw_delay+PE1_delay-1)
    	port map (
      	D   => proc1_valid_pe_dpm,
      	CLK => CLK,
      	CE  => CLK_EN,
      	Q   => proc1_valid_ovflo);

	  sr_pe0_start_ovflo: fft20_shift_ram_1
  	  generic map (
    	  C_DEPTH => io_cnt_delay+rw_gen_delay+addr_mux_delay+mem_rd_delay+data_mux_delay+in_sw_delay+PE_latency(PE0_width, twiddle_width, has_mults, 1, 0)) 
    	port map (
      	D   => PE0_start,
      	CLK => CLK,
      	CE  => CLK_EN,
      	Q   => PE0_start_ovflo);

	  sr_pe1_start_ovflo: fft20_shift_ram_1
  	  generic map (
      	C_DEPTH => io_cnt_delay+rw_gen_delay+addr_mux_delay+2*(mem_rd_delay+data_mux_delay+in_sw_delay)+PE0_delay+out_sw_delay+PE1_delay) 
    	port map (
      	D   => PE1_start,
      	CLK => CLK,
      	CE  => CLK_EN,
      	Q   => PE1_start_ovflo);

	  ovflo0_signal: fft20_c_lut_reg_sclr
  	  generic map (
    	  eqn => "(i0*i3*~i1+i1)*~i2")
    	port map (
     		I0 => PE0_overflow,
      	I1 => ovflo_0(0),
      	I2 => PE0_start_ovflo,
      	I3 => proc0_valid_ovflo,
				CLK => CLK,
				CE => CLK_EN,
				SCLR => SCLR, 
      	Q  => ovflo_0(0));
 
    pe1_ovflo_and_ovflo_0: fft20_c_lut  
    	generic map (
      	eqn => "i0+i1")
    	port map (
      	I0 => ovflo_pre0(0),
      	I1 => PE1_overflow,
      	I2 => gnd,
      	I3 => gnd,
      	O  => PE1_ovflo_and_ovflo0);
 
		ovflo1_signal: fft20_c_lut_reg_sclr
  	  generic map (
    	  eqn => "(i0*i3*~i1+i1)*~i2")
    	port map (
      	
      	I0 => PE1_ovflo_and_ovflo0,
      	I1 => ovflo_1(0),
      	I2 => PE1_start_ovflo,
      	I3 => proc1_valid_ovflo,
				CLK => CLK,
				CE => CLK_EN,
				SCLR => RESET, 
      	Q  => ovflo_1(0));

    PE1_start_ovflow_ce_signal: fft20_c_lut  
    	generic map (
      	eqn => "i0*i1")
    	port map (
      	I0 => CLK_EN,
      	I1 => PE1_start_ovflo,
      	I2 => gnd,
      	I3 => gnd,
      	O  => PE1_start_ovflo_ce);

  	overflow0: fft20_reg_fde  
    	generic map (
      	data_width => 1)
   		port map (
      	D   => ovflo_0,
      	CLK => CLK,
      	CE  => PE1_start_ovflo_ce,  
      	Q   => ovflo_pre0);

    edone_ce_signal: fft20_c_lut  
    	generic map (
      	eqn => "i0*i1")
    	port map (
      	I0 => CLK_EN,
      	I1 => edone_int(0),
      	I2 => gnd,
      	I3 => gnd,
      	O  => edone_int_ce(0));

      	
 		overflow1: fft20_shift_ram_1
      generic map (
        C_DEPTH => 2)
      port map (
        D   => ovflo_1(0),
        CLK => CLK,
        CE  => CLK_EN,
        Q   => ovflo_pre1(0));

	
    done_ce_signal: fft20_c_lut  
    	generic map (
      	eqn => "i0*i1")
    	port map (
      	I0 => CLK_EN,
      	I1 => done_int(0),
      	I2 => gnd,
      	I3 => gnd,
      	O  => done_int_ce(0));

    ovflo_final: fft20_reg_fde  
  	  generic map (
    	  data_width => 1)
    	port map (
      	D   => ovflo_pre1,
      	CLK => CLK,
      	CE  => done_int_ce(0),
      	Q   => ovflo_vec);

		OVFLO <= ovflo_vec(0);		
	
	end generate;			

  PE0_ce_signal: fft20_c_lut
    generic map (
      eqn => "i0*i1")
    port map (
      I0 => CLK_EN,
      I1 => PE0_start,
      I2 => gnd,
      I3 => gnd,
      O  => PE0_CE);

  PE1_ce_signal: fft20_c_lut
    generic map (
      eqn => "i0*i1")
    port map (
      I0 => CLK_EN,
      I1 => PE1_start,
      I2 => gnd,
      I3 => gnd,
      O  => PE1_CE);



  input_cnt_signal: fft20_reg_fde
    generic map (
      data_width => c_nfft_max)
    port map (
      D   => input_cnt,
      CLK => CLK,
      CE  => CLK_EN,
      Q   => input_cnt_delay);
		
	input_address: fft20_io_addr_gen 
		generic map (
		  nfft_max => c_nfft_max)
		port map (
			CLK 	 => CLK, 
			CE 	   => CLK_EN, 
			NFFT	 => nfft_int,
			CNT_RN => input_cnt_delay,
			ADDR 	 => input_wr_addr, 
			WE0	   => input_we_0, 	
			WE1	   => input_we_1, 	
			WE2	   => input_we_2, 
			WE3	   => input_we_3);

	PE0_data_address: fft20_rw_addr_gen
		generic map (
			nfft_max => c_nfft_max)
		port map (
			CLK  			  => CLK, 
			CE      	  => CLK_EN, 
			CNT_RN  	  => PE0_data_cnt,
			NFFT    	  => nfft_int,
			RANK    	  => proc0_rank,
			LAST_RANK	  => gnd, 
			ADDR0   	  => PE0_data_rd_addr_0,  
			ADDR1  		  => PE0_data_rd_addr_1,  
			ADDR2			  => PE0_data_rd_addr_2,  
			ADDR3			  => PE0_data_rd_addr_3,  
			SWITCH_CTRL	=> PE0_in_switch_ctrl_pr); 
	
	PE1_data_address: fft20_rw_addr_gen
		generic map (
			nfft_max => c_nfft_max)
		port map (
			CLK  			  => CLK, 
			CE      	  => CLK_EN, 
			CNT_RN  	  => PE1_data_cnt_data,
			NFFT    	  => nfft_int,
			RANK    	  => proc1_rank_data,
			LAST_RANK	  => last_rank_data, 
			ADDR0   	  => PE1_data_rd_addr_0,  
			ADDR1  		  => PE1_data_rd_addr_1,  
			ADDR2			  => PE1_data_rd_addr_2,  
			ADDR3			  => PE1_data_rd_addr_3,  
			SWITCH_CTRL	=> PE1_in_switch_ctrl_pr);
			
  output_address: fft20_out_addr_gen
    generic map (
      nfft_max => c_nfft_max)
    port map (
      CLK      => CLK,
      CE       => CLK_EN,
      NFFT     => nfft_int, 
			CNT_RN   => output_cnt_delay,
      ADDR     => output_rd_addr,
      SEL_CTRL => output_ctrl);
	
	PE0_with_mult: if has_mults=1 generate
	
	  sr_PE0_data_cnt_tw: fft20_shift_ram
      generic map (
      	C_DEPTH => (rw_gen_delay+addr_mux_delay+mem_rd_delay+data_mux_delay+in_sw_delay)-(tw_gen_delay+sincos_delay),
      	C_WIDTH => c_nfft_max-2)
    	port map (
      	D   => PE0_data_cnt,
      	CLK => CLK,
      	CE  => CLK_EN,
      	Q   => PE0_data_cnt_tw);

		sr_proc0_rank_tw: fft20_shift_ram
    	generic map (
      	C_DEPTH => (rw_gen_delay+addr_mux_delay+mem_rd_delay+data_mux_delay+in_sw_delay)-(tw_gen_delay+sincos_delay),
      	C_WIDTH => 3)
    	port map (
      	D   => proc0_rank,
      	CLK => CLK,
      	CE  => CLK_EN,
      	Q   => proc0_rank_tw);

    PE0_twiddle_address: fft20_tw_addr_gen
 	 		generic map (
 	 			nfft_max => c_nfft_max)
 	 		port map (
 	 			CLK			  => CLK, 
 	 			CE				=> CLK_EN, 
 	 			CNT_RN		=> PE0_data_cnt_tw, 
 	 			RANK			=> proc0_rank_tw,      
 	 			FWD_INV		=> fwd_inv_pe0_tw,
 	 			POWER2		=> nfft_int(0),    
 	 			LAST_RANK	=> gnd,  
 	 			TW1_ADDR	=> PE0_twiddle1_addr,
 	 			TW2_ADDR	=> PE0_twiddle2_addr,
 	 			TW3_ADDR	=> PE0_twiddle3_addr);
 
    PE0_sincos_1: fft20_sin_cos
 	    generic map ( 
 	 	  	MEM_TYPE => C_TWIDDLE_MEM_TYPE,  
 	 	  	THETA_WIDTH => c_nfft_max,  
 	 	   	TWIDDLE_WIDTH => twiddle_width)
 	 		port map (
 	 			THETA  => PE0_twiddle1_addr, 
 	 			CLK		 => CLK, 	
 	 			CE		 => CLK_EN, 
 	 			SINE	 => PE0_twiddle1_im, 
 	 			COSINE => PE0_twiddle1_re);
 
 	  PE0_sincos_2: fft20_sin_cos
 	 		generic map ( 
			  MEM_TYPE => C_TWIDDLE_MEM_TYPE,
 	 			THETA_WIDTH => c_nfft_max,  
 	 			TWIDDLE_WIDTH => twiddle_width)
 	 		port map (
 	 			THETA  => PE0_twiddle2_addr, 
 	 			CLK		 => CLK, 	
 	 			CE		 => CLK_EN, 
 	 			SINE	 => PE0_twiddle2_im, 
 	 			COSINE => PE0_twiddle2_re);
 
 	 	PE0_sincos_3: fft20_sin_cos
 	 		generic map ( 
			  MEM_TYPE => C_TWIDDLE_MEM_TYPE,
 	 			THETA_WIDTH => c_nfft_max,  
 	 			TWIDDLE_WIDTH => twiddle_width)
 	 		port map (
 	 			THETA  => PE0_twiddle3_addr, 
 	 			CLK		 => CLK, 	
 	 			CE		 => CLK_EN, 
 	 			SINE	 => PE0_twiddle3_im, 
 	 			COSINE => PE0_twiddle3_re);
	end generate;	
		
  PE1_twiddle_address: fft20_tw_addr_gen
		generic map (
			nfft_max => c_nfft_max)
		port map (
			CLK			  => CLK, 
			CE				=> CLK_EN, 
			CNT_RN		=> PE1_data_cnt_tw, 
			RANK			=> proc1_rank_tw,      
			FWD_INV		=> fwd_inv_pe1_tw,
			POWER2		=> nfft_int(0),    
			LAST_RANK	=> last_rank_tw, 
			TW1_ADDR	=> PE1_twiddle1_addr,
			TW2_ADDR	=> PE1_twiddle2_addr,
			TW3_ADDR	=> PE1_twiddle3_addr);

  PE1_sincos_1: fft20_sin_cos
	  generic map ( 
		  MEM_TYPE => C_TWIDDLE_MEM_TYPE,
		  THETA_WIDTH => c_nfft_max,  
		  TWIDDLE_WIDTH => twiddle_width)
		port map (
			THETA  => PE1_twiddle1_addr, 
			CLK		 => CLK, 	
			CE		 => CLK_EN, 
			SINE	 => PE1_twiddle1_im, 
			COSINE => PE1_twiddle1_re);

	PE1_sincos_2: fft20_sin_cos
		generic map ( 
		  MEM_TYPE => C_TWIDDLE_MEM_TYPE,
			THETA_WIDTH => c_nfft_max,  
			TWIDDLE_WIDTH => twiddle_width)
		port map (
			THETA  => PE1_twiddle2_addr, 
			CLK		 => CLK, 	
			CE		 => CLK_EN, 
			SINE	 => PE1_twiddle2_im, 
			COSINE => PE1_twiddle2_re);

	PE1_sincos_3: fft20_sin_cos
		generic map ( 
		  MEM_TYPE => C_TWIDDLE_MEM_TYPE,
			THETA_WIDTH => c_nfft_max,  
			TWIDDLE_WIDTH => twiddle_width)
		port map (
			THETA  => PE1_twiddle3_addr, 
			CLK		 => CLK, 	
			CE		 => CLK_EN, 
			SINE	 => PE1_twiddle3_im, 
			COSINE => PE1_twiddle3_re);
		
  XN(2*C_INPUT_WIDTH-1 downto C_INPUT_WIDTH) <= XN_RE;
	XN(C_INPUT_WIDTH-1 downto 0) <= XN_IM;

  input_dpm_ce: fft20_c_lut   
		generic map (
		  eqn => "i0*i1")
		port map (
		  I0 => proc0_valid_in_dpm,
			I1 => CLK_EN,
			I2 => logic1,
			I3 => logic1,
			O  => proc0_valid_in_dpm_ce);
 
  input_dpm0: fft20_dpm 
		generic map ( 
		  width => 2*C_INPUT_WIDTH, 
		  depth	=> c_nfft_max-2)
    port map (
			addra	=> input_wr_addr, 
			addrb	=> PE0_data_rd_addr_0_d1, 
			clk		=> CLK, 
			ena		=> CLK_EN, 
			enb		=> proc0_valid_in_dpm_ce,   
			wea		=> input_we_0, 
			dina	=> XN, 
			doutb	=> input_dpm0_data);

  input_dpm1: fft20_dpm 
	  generic map ( 
		  width => 2*C_INPUT_WIDTH, 
		  depth	=> c_nfft_max-2)
    port map (
			addra	=> input_wr_addr, 
			addrb	=> PE0_data_rd_addr_1_d1, 
			clk		=> CLK, 
			ena		=> CLK_EN, 
			enb		=> proc0_valid_in_dpm_ce, 
			wea		=> input_we_1, 
			dina	=> XN, 
			doutb	=> input_dpm1_data);

  input_dpm2: fft20_dpm 
	  generic map ( 
		  width => 2*C_INPUT_WIDTH, 
		  depth	=> c_nfft_max-2)
    port map (
			addra	=> input_wr_addr, 
			addrb	=> PE0_data_rd_addr_2_d1, 
			clk		=> CLK, 
			ena		=> CLK_EN, 
			enb		=> proc0_valid_in_dpm_ce, 
			wea		=> input_we_2, 
			dina	=> XN, 
			doutb	=> input_dpm2_data);

  input_dpm3: fft20_dpm 
	  generic map ( 
		  width => 2*C_INPUT_WIDTH, 
		  depth	=> c_nfft_max-2)
    port map (
			addra	=> input_wr_addr, 
			addrb	=> PE0_data_rd_addr_3_d1, 
			clk		=> CLK, 
			ena		=> CLK_EN, 
			enb		=> proc0_valid_in_dpm_ce, 
			wea		=> input_we_3, 
			dina	=> XN, 
			doutb	=> input_dpm3_data);

  sr_pe0_data_rd_addr_0: fft20_shift_ram
	  generic map (
      C_DEPTH => addr_mux_delay,
      C_WIDTH => c_nfft_max-2)
    port map (
      D   => PE0_data_rd_addr_0,
      CLK => CLK,
      CE  => CLK_EN,
      Q   => PE0_data_rd_addr_0_d1);

  sr_pe0_data_rd_addr_1: fft20_shift_ram
    generic map (
      C_DEPTH => addr_mux_delay,
      C_WIDTH => c_nfft_max-2)
    port map (
      D   => PE0_data_rd_addr_1,
      CLK => CLK,
      CE  => CLK_EN,
      Q   => PE0_data_rd_addr_1_d1);

  sr_pe0_data_rd_addr_2: fft20_shift_ram
    generic map (
      C_DEPTH => addr_mux_delay,
      C_WIDTH => c_nfft_max-2)
    port map (
      D   => PE0_data_rd_addr_2,
      CLK => CLK,
      CE  => CLK_EN,
      Q   => PE0_data_rd_addr_2_d1);

  sr_pe0_data_rd_addr_3: fft20_shift_ram
    generic map (
      C_DEPTH => addr_mux_delay,
      C_WIDTH => c_nfft_max-2)
    port map (
      D   => PE0_data_rd_addr_3,
      CLK => CLK,
      CE  => CLK_EN,
      Q   => PE0_data_rd_addr_3_d1);

  sr_pe1_data_rd_addr_0: fft20_shift_ram
    generic map (
      C_DEPTH => addr_mux_delay,
      C_WIDTH => c_nfft_max-2)
    port map (
      D   => PE1_data_rd_addr_0,
      CLK => CLK,
      CE  => CLK_EN,
      Q   => PE1_data_rd_addr_0_d1);

  sr_pe1_data_rd_addr_1: fft20_shift_ram
    generic map (
      C_DEPTH => addr_mux_delay,
      C_WIDTH => c_nfft_max-2)
    port map (
      D   => PE1_data_rd_addr_1,
      CLK => CLK,
      CE  => CLK_EN,
      Q   => PE1_data_rd_addr_1_d1);

  sr_pe1_data_rd_addr_2: fft20_shift_ram
    generic map (
      C_DEPTH => addr_mux_delay,
      C_WIDTH => c_nfft_max-2)
    port map (
      D   => PE1_data_rd_addr_2,
      CLK => CLK,
      CE  => CLK_EN,
      Q   => PE1_data_rd_addr_2_d1);

  sr_pe1_data_rd_addr_3: fft20_shift_ram
    generic map (
      C_DEPTH => addr_mux_delay,
      C_WIDTH => c_nfft_max-2)
    port map (
      D   => PE1_data_rd_addr_3,
      CLK => CLK,
      CE  => CLK_EN,
      Q   => PE1_data_rd_addr_3_d1);

  addr_connect_for_PE0_dpm: if has_mults /= 1 generate  
    addr_connect_0: fft20_shift_ram
		  generic map (
        C_DEPTH => 1,
        C_WIDTH => c_nfft_max-2)
      port map (
        D   => PE1_data_rd_addr_0,
        CLK => CLK,
        CE  => CLK_EN,
        Q   => PE0_dpm0_data_rd_addr);
				
    addr_connect_1: fft20_shift_ram
		  generic map (
        C_DEPTH => 1,
        C_WIDTH => c_nfft_max-2)
      port map (
        D   => PE1_data_rd_addr_1,
        CLK => CLK,
        CE  => CLK_EN,
        Q   => PE0_dpm1_data_rd_addr);

    addr_connect_2: fft20_shift_ram
      generic map (
        C_DEPTH => 1,
        C_WIDTH => c_nfft_max-2)
      port map (
        D   => PE1_data_rd_addr_2,
        CLK => CLK,
        CE  => CLK_EN,
        Q   => PE0_dpm2_data_rd_addr);

    addr_connect_3: fft20_shift_ram
      generic map (
        C_DEPTH => 1,
        C_WIDTH => c_nfft_max-2)
      port map (
        D   => PE1_data_rd_addr_3,
        CLK => CLK,
        CE  => CLK_EN,
        Q   => PE0_dpm3_data_rd_addr);
	end generate;	

  addr_for_PE0_dpm: if has_mults = 1 generate
    PE0_dpm0_rd_addr: fft20_mux_bus2
      generic map (
        C_WIDTH => c_nfft_max-2)
      port map (
        MA  => PE1_data_rd_addr_0,
        MB  => PE0_data_rd_addr_0, 
        S   => proc0_valid_pe_dpm,  
        
        CLK => CLK,
        CE  => CLK_EN,
        Q   => PE0_dpm0_data_rd_addr);
 
    PE0_dpm1_rd_addr: fft20_mux_bus2
      generic map (
        C_WIDTH => c_nfft_max-2)
      port map (
        MA  => PE1_data_rd_addr_1,
        MB  => PE0_data_rd_addr_1, 
        S   => proc0_valid_pe_dpm,  
        
        CLK => CLK,
        CE  => CLK_EN,
        Q   => PE0_dpm1_data_rd_addr);
 
    PE0_dpm2_rd_addr: fft20_mux_bus2
      generic map (
        C_WIDTH => c_nfft_max-2)
      port map (
        MA  => PE1_data_rd_addr_2,
        MB  => PE0_data_rd_addr_2, 
        S   => proc0_valid_pe_dpm,  
        
        CLK => CLK,
        CE  => CLK_EN,
        Q   => PE0_dpm2_data_rd_addr);
 
    PE0_dpm3_rd_addr: fft20_mux_bus2
      generic map (
        C_WIDTH => c_nfft_max-2)
      port map (
        MA  => PE1_data_rd_addr_3,
        MB  => PE0_data_rd_addr_3, 
        S   => proc0_valid_pe_dpm,  
        
        CLK => CLK,
        CE  => CLK_EN,
        Q   => PE0_dpm3_data_rd_addr);
	end generate;		

  sr_PE0_data_rd_addr0: fft20_shift_ram
    generic map (
      C_DEPTH => mem_rd_delay+data_mux_delay+in_sw_delay+PE0_delay+out_sw_delay,
      C_WIDTH => c_nfft_max-2)
    port map (
      D   => PE0_data_rd_addr_0_d1,
      CLK => CLK,
      CE  => CLK_EN,
      Q   => PE0_data_wr_addr_0);

  sr_PE0_data_rd_addr1: fft20_shift_ram
    generic map (
      C_DEPTH => mem_rd_delay+data_mux_delay+in_sw_delay+PE0_delay+out_sw_delay,
      C_WIDTH => c_nfft_max-2)
    port map (
      D   => PE0_data_rd_addr_1_d1,
      CLK => CLK,
      CE  => CLK_EN,
      Q   => PE0_data_wr_addr_1);

  sr_PE0_data_rd_addr2: fft20_shift_ram
    generic map (
      C_DEPTH => mem_rd_delay+data_mux_delay+in_sw_delay+PE0_delay+out_sw_delay,
      C_WIDTH => c_nfft_max-2)
    port map (
      D   => PE0_data_rd_addr_2_d1,
      CLK => CLK,
      CE  => CLK_EN,
      Q   => PE0_data_wr_addr_2);

  sr_PE0_data_rd_addr3: fft20_shift_ram
    generic map (
      C_DEPTH => mem_rd_delay+data_mux_delay+in_sw_delay+PE0_delay+out_sw_delay,
      C_WIDTH => c_nfft_max-2)
    port map (
      D   => PE0_data_rd_addr_3_d1,
      CLK => CLK,
      CE  => CLK_EN,
      Q   => PE0_data_wr_addr_3);

  sr_PE0_dpm_write_enable: fft20_shift_ram_1
    generic map (
      C_DEPTH => mem_rd_delay+data_mux_delay+in_sw_delay+PE0_delay+out_sw_delay)
    port map (
      D   => proc0_valid_in_dpm,
      CLK => CLK,
      CE  => CLK_EN,
      Q   => PE0_dpm_we);

  PE0_data_mux0_re: fft20_mux_bus2
    generic map (
      C_WIDTH => PE0_width)
    port map (
      MA  => PE0_dpm0_padded_data_re(PE0_width-1 downto 0), 
      MB  => input_dpm0_data_re,
      S   => PE0_1st_rank_delay, 
      CLK => CLK,
      CE  => CLK_EN,
      Q   => PE0_mux0_data_re);

  PE0_data_mux0_im: fft20_mux_bus2
    generic map (
      C_WIDTH => PE0_width)
    port map (
      MA  => PE0_dpm0_padded_data_im(PE0_width-1 downto 0), 
      MB  => input_dpm0_data_im,
      S   => PE0_1st_rank_delay,  
      CLK => CLK,
      CE  => CLK_EN,
      Q   => PE0_mux0_data_im);

  PE0_data_mux1_re: fft20_mux_bus2
    generic map (
      C_WIDTH => PE0_width)
    port map (
      MA  => PE0_dpm1_padded_data_re(PE0_width-1 downto 0), 
      MB  => input_dpm1_data_re,
      S   => PE0_1st_rank_delay, 
      CLK => CLK,
      CE  => CLK_EN,
      Q   => PE0_mux1_data_re);

  PE0_data_mux1_im: fft20_mux_bus2
    generic map (
      C_WIDTH => PE0_width)
    port map (
      MA  => PE0_dpm1_padded_data_im(PE0_width-1 downto 0), 
			MB  => input_dpm1_data_im,
      S   => PE0_1st_rank_delay,  
      CLK => CLK,
      CE  => CLK_EN,
      Q   => PE0_mux1_data_im);

  PE0_data_mux2_re: fft20_mux_bus2
    generic map (
      C_WIDTH => PE0_width)
    port map (
      MA  => PE0_dpm2_padded_data_re(PE0_width-1 downto 0),
			MB  => input_dpm2_data_re,
      S   => PE0_1st_rank_delay,  
      CLK => CLK,
      CE  => CLK_EN,
      Q   => PE0_mux2_data_re);
			
  PE0_data_mux2_im: fft20_mux_bus2
    generic map (
      C_WIDTH => PE0_width)
    port map (
      MA  => PE0_dpm2_padded_data_im(PE0_width-1 downto 0),
			MB  => input_dpm2_data_im,
      S   => PE0_1st_rank_delay,  
      CLK => CLK,
      CE  => CLK_EN,
      Q   => PE0_mux2_data_im);

  PE0_data_mux3_re: fft20_mux_bus2
    generic map (
      C_WIDTH => PE0_width)
    port map (
      MA  => PE0_dpm3_padded_data_re(PE0_width-1 downto 0),
			MB  => input_dpm3_data_re,
			S   => PE0_1st_rank_delay,  
      CLK => CLK,
      CE  => CLK_EN,
      Q   => PE0_mux3_data_re);

  PE0_data_mux3_im: fft20_mux_bus2
    generic map (
      C_WIDTH => PE0_width)
    port map (
      MA  => PE0_dpm3_padded_data_im(PE0_width-1 downto 0),
			MB  => input_dpm3_data_im,
      S   => PE0_1st_rank_delay,  
      CLK => CLK,
      CE  => CLK_EN,
      Q   => PE0_mux3_data_im);

	PE0_in_switch_re: fft20_in_switch4
	  generic map (
		  WIDTH => PE0_width)
	  port map( 
		  i0	=> PE0_mux0_data_re,
		  i1 	=> PE0_mux1_data_re,
		  i2 	=> PE0_mux2_data_re,
		  i3 	=> PE0_mux3_data_re,
      o0 	=> PE0_in_sw0_data_re,	
      o1 	=> PE0_in_sw1_data_re,		
      o2 	=> PE0_in_sw2_data_re,
      o3 	=> PE0_in_sw3_data_re,		
      s 	=> PE0_in_switch_ctrl,
		  clk => CLK,
      ce 	=> CLK_EN);

	PE0_in_switch_im: fft20_in_switch4
	  generic map (
		  WIDTH => PE0_width)
	  port map( 
		  i0	=> PE0_mux0_data_im,
		  i1 	=> PE0_mux1_data_im,
		  i2 	=> PE0_mux2_data_im,
		  i3 	=> PE0_mux3_data_im,
      o0 	=> PE0_in_sw0_data_im,	
      o1 	=> PE0_in_sw1_data_im,		
      o2 	=> PE0_in_sw2_data_im,
      o3 	=> PE0_in_sw3_data_im,		
      s 	=> PE0_in_switch_ctrl,
		  clk => CLK,
      ce 	=> CLK_EN);
  
  PE_0: fft20_pe4 
		generic map (
			IO_WIDTH			 => PE0_width,
			DRFLY_WIDTH		 => PE0_width+4,		
			TW_WIDTH			 => twiddle_width,		
			MULT_LATENCY	 => mult_latency(PE0_width+1, twiddle_width)+2, 		
			C_HAS_MULTS		 => has_mults,			  
			C_HAS_BYPASS	 => C_HAS_BYPASS,		  
			C_HAS_SCALER	 => C_HAS_SCALING,		
			C_HAS_ROUNDER	 => C_HAS_ROUNDING,		
			C_HAS_OVERFLOW => C_HAS_SCALING*(1-C_HAS_BFP))	
	  port map (
			I0_RE				=> PE0_in_sw0_data_re, 
			I0_IM				=> PE0_in_sw0_data_im, 
			I1_RE				=> PE0_in_sw1_data_re, 
			I1_IM				=> PE0_in_sw1_data_im, 
			I2_RE				=> PE0_in_sw2_data_re, 
			I2_IM				=> PE0_in_sw2_data_im, 
			I3_RE				=> PE0_in_sw3_data_re, 
			I3_IM				=> PE0_in_sw3_data_im, 
			TW1_RE			=> PE0_twiddle1_re, 
			TW1_IM			=> PE0_twiddle1_im, 
			TW2_RE			=> PE0_twiddle2_re, 
			TW2_IM			=> PE0_twiddle2_im, 
			TW3_RE			=> PE0_twiddle3_re, 
			TW3_IM			=> PE0_twiddle3_im, 
			SCALE				=> PE0_scale_delay,
			BYPASS			=> logic1,
			OVFLO				=> PE0_overflow,
			O0_RE				=> PE0_out0_data_re, 
			O0_IM				=> PE0_out0_data_im,
			O1_RE				=> PE0_out1_data_re, 
			O1_IM				=> PE0_out1_data_im,
			O2_RE				=> PE0_out2_data_re, 
			O2_IM				=> PE0_out2_data_im,
			O3_RE				=> PE0_out3_data_re, 
			O3_IM				=> PE0_out3_data_im,
			CE					=> CLK_EN,
			CLK				  => CLK);  

  sr_PE0_input_switch_ctrl: fft20_shift_ram
		generic map (
			C_DEPTH	=> PE0_delay,
			C_WIDTH	=> 2)
		port map (
			D  	=> PE0_in_switch_ctrl,
			CLK => CLK,
			CE  => CLK_EN,
			Q   => PE0_out_switch_ctrl);

  PE0_out_switch_re: fft20_out_switch4
		generic map (
		  WIDTH => PE0_width)
		port map ( 
			i0	=> PE0_out0_data_re,
			i1 	=> PE0_out1_data_re,
			i2 	=> PE0_out2_data_re,
			i3 	=> PE0_out3_data_re,
			o0 	=> PE0_out_sw0_data_re,
			o1 	=> PE0_out_sw1_data_re,
			o2 	=> PE0_out_sw2_data_re,
			o3 	=> PE0_out_sw3_data_re,
			s 	=> PE0_out_switch_ctrl,
			bypass => logic1,
			dir => fwd_inv_pe0_outsw,
			clk => CLK,
			ce 	=> CLK_EN);

  PE0_out_switch_im: fft20_out_switch4
		generic map (
		  WIDTH => PE0_width)
		port map( 
			i0	=> PE0_out0_data_im,
			i1 	=> PE0_out1_data_im,
			i2 	=> PE0_out2_data_im,
			i3 	=> PE0_out3_data_im,
			o0 	=> PE0_out_sw0_data_im,
			o1 	=> PE0_out_sw1_data_im,
			o2 	=> PE0_out_sw2_data_im,
			o3 	=> PE0_out_sw3_data_im,
			s 	=> PE0_out_switch_ctrl,
			bypass => logic1,
			dir => fwd_inv_pe0_outsw,
			clk => CLK,
			ce 	=> CLK_EN);
			
  PE0_dpm0: fft20_dpm
    generic map (
      width => 2*PE0_width,
      depth => c_nfft_max-2)
    port map (
      addra => PE0_data_wr_addr_0,
      addrb => PE0_dpm0_data_rd_addr,
      clk   => CLK,
      ena   => CLK_EN,
      enb   => CLK_EN,
      wea   => PE0_dpm_we,
      dina  => PE0_out_sw0_data,
			doutb => PE0_dpm0_data);

  PE0_dpm1: fft20_dpm
    generic map (
      width => 2*PE0_width,
      depth => c_nfft_max-2)
    port map (
      addra => PE0_data_wr_addr_1,
      addrb => PE0_dpm1_data_rd_addr,
      clk   => CLK,
      ena   => CLK_EN,
      enb   => CLK_EN,
      wea   => PE0_dpm_we,
      dina  => PE0_out_sw1_data,
      doutb => PE0_dpm1_data);

  PE0_dpm2: fft20_dpm
    generic map (
      width => 2*PE0_width,
      depth => c_nfft_max-2)
    port map (
      addra => PE0_data_wr_addr_2,
      addrb => PE0_dpm2_data_rd_addr,
      clk   => CLK,
      ena   => CLK_EN,
      enb   => CLK_EN,
      wea   => PE0_dpm_we,
      dina  => PE0_out_sw2_data,
      doutb => PE0_dpm2_data);

  PE0_dpm3: fft20_dpm
    generic map (
      width => 2*PE0_width,
      depth => c_nfft_max-2)
    port map (
      addra => PE0_data_wr_addr_3,
      addrb => PE0_dpm3_data_rd_addr,
      clk   => CLK,
      ena   => CLK_EN,
      enb   => CLK_EN,
      wea   => PE0_dpm_we,
      dina  => PE0_out_sw3_data,
      doutb => PE0_dpm3_data);

  sr_PE1_data_rd_addr0: fft20_shift_ram
    generic map (
      C_DEPTH => mem_rd_delay+data_mux_delay+in_sw_delay+PE1_delay+out_sw_delay,
      C_WIDTH => c_nfft_max-2)
    port map (
      D   => PE1_data_rd_addr_0_d1,
      CLK => CLK,
      CE  => CLK_EN,
      Q   => PE1_data_wr_addr_0);

  sr_PE1_data_rd_addr1: fft20_shift_ram
    generic map (
      C_DEPTH => mem_rd_delay+data_mux_delay+in_sw_delay+PE1_delay+out_sw_delay,
      C_WIDTH => c_nfft_max-2)
    port map (
      D   => PE1_data_rd_addr_1_d1,
      CLK => CLK,
      CE  => CLK_EN,
      Q   => PE1_data_wr_addr_1);

  sr_PE1_data_rd_addr2: fft20_shift_ram
    generic map (
      C_DEPTH => mem_rd_delay+data_mux_delay+in_sw_delay+PE1_delay+out_sw_delay,
      C_WIDTH => c_nfft_max-2)
    port map (
      D   => PE1_data_rd_addr_2_d1,
      CLK => CLK,
      CE  => CLK_EN,
      Q   => PE1_data_wr_addr_2);

  sr_PE1_data_rd_addr3: fft20_shift_ram
    generic map (
      C_DEPTH => mem_rd_delay+data_mux_delay+in_sw_delay+PE1_delay+out_sw_delay,
      C_WIDTH => c_nfft_max-2)
    port map (
      D   => PE1_data_rd_addr_3_d1,
      CLK => CLK,
      CE  => CLK_EN,
      Q   => PE1_data_wr_addr_3);

  sr_PE1_dpm_write_enable: fft20_shift_ram_1
    generic map (
      C_DEPTH => mem_rd_delay+data_mux_delay+in_sw_delay+PE1_delay+out_sw_delay)
    port map (
      D   => proc1_valid_pe_dpm,
      CLK => CLK,
      CE  => CLK_EN,
      Q   => PE1_dpm_we);

  PE1_busy_signal: fft20_shift_ram_1
    generic map (
      C_DEPTH => rw_gen_delay+addr_mux_delay+mem_rd_delay+data_mux_delay+in_sw_delay+PE0_delay+out_sw_delay+PE1_delay)
    port map (
      D   => PE1_busy,
      CLK => CLK,
      CE  => CLK_EN,
      Q   => PE1_busy_delay);

  PE1_data_wr_addr_mux0: fft20_mux_bus2 
		generic map (
		  C_WIDTH	=> c_nfft_max-2)
		port map (
			MA	=> PE1_data_wr_addr_0,  
			MB	=> PE0_data_wr_addr_0,
			S		=> PE1_mux_sel, 
			CLK	=> CLK, 
			CE  => CLK_EN, 
			Q   => PE1_mux0_data_wr_addr);

  PE1_data_wr_addr_mux1: fft20_mux_bus2 
		generic map (
		  C_WIDTH	=> c_nfft_max-2)
		port map (
			MA	=> PE1_data_wr_addr_1,  
			MB	=> PE0_data_wr_addr_1,
			S		=> PE1_mux_sel, 
			CLK	=> CLK, 
			CE  => CLK_EN, 
			Q   => PE1_mux1_data_wr_addr);

  PE1_data_wr_addr_mux2: fft20_mux_bus2 
		generic map (
		  C_WIDTH	=> c_nfft_max-2)
		port map (
			MA	=> PE1_data_wr_addr_2,  
			MB	=> PE0_data_wr_addr_2,
			S		=> PE1_mux_sel, 
			CLK	=> CLK, 
			CE  => CLK_EN, 
			Q   => PE1_mux2_data_wr_addr);

  PE1_data_wr_addr_mux3: fft20_mux_bus2 
		generic map (
		  C_WIDTH	=> c_nfft_max-2)
		port map (
			MA	=> PE1_data_wr_addr_3,  
			MB	=> PE0_data_wr_addr_3,
			S		=> PE1_mux_sel, 
			CLK	=> CLK, 
			CE  => CLK_EN, 
			Q   => PE1_mux3_data_wr_addr);

 	PE1_data_mux0_re: fft20_mux_bus2 
		generic map (
		  C_WIDTH	=> C_OUTPUT_WIDTH)
		port map (
			MA	=> PE1_dpm0_data_re,
	    MB	=> PE0_dpm0_padded_data_re,  
			S		=> PE1_mux_sel,  
			CLK	=> CLK, 
			CE  => CLK_EN, 
			Q   => PE1_mux0_data_re);

  PE1_data_mux0_im: fft20_mux_bus2 
		generic map (
		  C_WIDTH	=> C_OUTPUT_WIDTH)
		port map (
			MA	=> PE1_dpm0_data_im,   
      MB	=> PE0_dpm0_padded_data_im,  
			S		=> PE1_mux_sel,  
			CLK	=> CLK, 
			CE  => CLK_EN, 
			Q   => PE1_mux0_data_im);
						
	PE1_data_mux1_re: fft20_mux_bus2 
		generic map (
		  C_WIDTH	=> C_OUTPUT_WIDTH)
		port map (
			MA	=> PE1_dpm1_data_re, 
			MB	=> PE0_dpm1_padded_data_re, 
			S		=> PE1_mux_sel,  
			CLK	=> CLK, 
			CE  => CLK_EN, 
			Q   => PE1_mux1_data_re);
			
  PE1_data_mux1_im: fft20_mux_bus2 
		generic map (
		  C_WIDTH	=> C_OUTPUT_WIDTH)
		port map (
			MA	=> PE1_dpm1_data_im,
			MB	=> PE0_dpm1_padded_data_im, 
			S		=> PE1_mux_sel,  
			CLK	=> CLK, 
			CE  => CLK_EN, 
			Q   => PE1_mux1_data_im);
			
  PE1_data_mux2_re: fft20_mux_bus2 
		generic map (
		  C_WIDTH	=> C_OUTPUT_WIDTH)
		port map (
			MA	=> PE1_dpm2_data_re,
			MB	=> PE0_dpm2_padded_data_re, 
			S		=> PE1_mux_sel,  
			CLK	=> CLK, 
			CE  => CLK_EN, 
			Q   => PE1_mux2_data_re);
			
  PE1_data_mux2_im: fft20_mux_bus2 
		generic map (
		  C_WIDTH	=> C_OUTPUT_WIDTH)
		port map (
			MA	=> PE1_dpm2_data_im, 
			MB	=> PE0_dpm2_padded_data_im, 
			S		=> PE1_mux_sel,  
			CLK	=> CLK, 
			CE  => CLK_EN, 
			Q   => PE1_mux2_data_im);
			
  PE1_data_mux3_re: fft20_mux_bus2 
		generic map (
		  C_WIDTH	=> C_OUTPUT_WIDTH)
		port map (
			MA	=> PE1_dpm3_data_re,
			MB	=> PE0_dpm3_padded_data_re,
			S		=> PE1_mux_sel,  
			CLK	=> CLK, 
			CE  => CLK_EN, 
			Q   => PE1_mux3_data_re);
			
  PE1_data_mux3_im: fft20_mux_bus2 
		generic map (
		  C_WIDTH	=> C_OUTPUT_WIDTH)
		port map (
			MA	=> PE1_dpm3_data_im, 
			MB	=> PE0_dpm3_padded_data_im,
			S		=> PE1_mux_sel,  
			CLK	=> CLK, 
			CE  => CLK_EN, 
			Q   => PE1_mux3_data_im);

	PE1_in_switch_re: fft20_in_switch4
	  generic map (
		  WIDTH => C_OUTPUT_WIDTH)
	  port map( 
      i0	=> PE1_mux0_data_re,
		  i1 	=> PE1_mux1_data_re,
		  i2 	=> PE1_mux2_data_re,
		  i3 	=> PE1_mux3_data_re,
      o0 	=> PE1_in_sw0_data_re,	
      o1 	=> PE1_in_sw1_data_re,		
      o2 	=> PE1_in_sw2_data_re,
      o3 	=> PE1_in_sw3_data_re,		
      s 	=> PE1_in_switch_ctrl,
		  clk => CLK,
      ce 	=> CLK_EN);

	PE1_in_switch_im: fft20_in_switch4
	  generic map (
		  WIDTH => C_OUTPUT_WIDTH)
	  port map( 
      i0	=> PE1_mux0_data_im,
		  i1 	=> PE1_mux1_data_im,
		  i2 	=> PE1_mux2_data_im,
		  i3 	=> PE1_mux3_data_im,
      o0 	=> PE1_in_sw0_data_im,	
      o1 	=> PE1_in_sw1_data_im,		
      o2 	=> PE1_in_sw2_data_im,
      o3 	=> PE1_in_sw3_data_im,		
      s 	=> PE1_in_switch_ctrl,
		  clk => CLK,
      ce 	=> CLK_EN);
	
	PE_1: fft20_pe4 
		generic map (
			IO_WIDTH			 => C_OUTPUT_WIDTH,
			DRFLY_WIDTH		 => C_OUTPUT_WIDTH+4,		
			TW_WIDTH			 => twiddle_width,		
			MULT_LATENCY	 => mult_latency(C_OUTPUT_WIDTH+1, twiddle_width)+2, 		
			C_HAS_MULTS		 => 1,						    
			C_HAS_BYPASS	 => C_HAS_BYPASS,		  
			C_HAS_SCALER	 => C_HAS_SCALING,		
			C_HAS_ROUNDER	 => C_HAS_ROUNDING,		
			C_HAS_OVERFLOW => C_HAS_SCALING*(1-C_HAS_BFP))	
	  port map (
			I0_RE				=> PE1_in_sw0_data_re, 
			I0_IM				=> PE1_in_sw0_data_im, 
			I1_RE				=> PE1_in_sw1_data_re, 
			I1_IM				=> PE1_in_sw1_data_im, 
			I2_RE				=> PE1_in_sw2_data_re, 
			I2_IM				=> PE1_in_sw2_data_im, 
			I3_RE				=> PE1_in_sw3_data_re, 
			I3_IM				=> PE1_in_sw3_data_im, 
			TW1_RE			=> PE1_twiddle1_re, 
			TW1_IM			=> PE1_twiddle1_im, 
			TW2_RE			=> PE1_twiddle2_re, 
			TW2_IM			=> PE1_twiddle2_im, 
			TW3_RE			=> PE1_twiddle3_re, 
			TW3_IM			=> PE1_twiddle3_im, 
			SCALE				=> PE1_scale_delay,
			BYPASS			=> bypass,
			OVFLO				=> PE1_overflow,
			O0_RE				=> PE1_out0_data_re, 
			O0_IM				=> PE1_out0_data_im,
			O1_RE				=> PE1_out1_data_re, 
			O1_IM				=> PE1_out1_data_im,
			O2_RE				=> PE1_out2_data_re, 
			O2_IM				=> PE1_out2_data_im,
			O3_RE				=> PE1_out3_data_re, 
			O3_IM				=> PE1_out3_data_im,
			CE					=> CLK_EN,
			CLK				  => CLK);   

  sr_PE1_input_switch_ctrl: fft20_shift_ram
		generic map (
			C_DEPTH	=> PE1_delay,
			C_WIDTH	=> 2)
		port map (
			D  	=> PE1_in_switch_ctrl,
			CLK => CLK,
			CE  => CLK_EN,
			Q   => PE1_out_switch_ctrl);

  PE1_out_switch_re: fft20_out_switch4
		generic map (
		  WIDTH => C_OUTPUT_WIDTH)
		port map ( 
			i0	=> PE1_out0_data_re,
			i1 	=> PE1_out1_data_re,
			i2 	=> PE1_out2_data_re,
			i3 	=> PE1_out3_data_re,
			o0 	=> PE1_out_sw0_data_re,
			o1 	=> PE1_out_sw1_data_re,
			o2 	=> PE1_out_sw2_data_re,
			o3 	=> PE1_out_sw3_data_re,
			s 	=> PE1_out_switch_ctrl,
			bypass => bypass_delay, 
			dir => fwd_inv_pe1_outsw, 
			clk => CLK,
			ce 	=> CLK_EN);

  PE1_out_switch_im: fft20_out_switch4
		generic map (
		  WIDTH => C_OUTPUT_WIDTH)
		port map( 
			i0	=> PE1_out0_data_im,
			i1 	=> PE1_out1_data_im,
			i2 	=> PE1_out2_data_im,
			i3 	=> PE1_out3_data_im,
			o0 	=> PE1_out_sw0_data_im,
			o1 	=> PE1_out_sw1_data_im,
			o2 	=> PE1_out_sw2_data_im,
			o3 	=> PE1_out_sw3_data_im,
			s 	=> PE1_out_switch_ctrl,
			bypass => bypass_delay,
			dir => fwd_inv_pe1_outsw,
			clk => CLK,
			ce 	=> CLK_EN);

  PE1_dpm_ce: fft20_c_lut   
		generic map (
		  eqn => "i0*i1")
		port map (
		  I0 => proc1_valid_pe_dpm,
			I1 => CLK_EN,
			I2 => logic1,
			I3 => logic1,
			O  => proc1_valid_pe_dpm_ce);
 
	PE1_dpm0: fft20_dpm 
	  generic map ( 
		  width => 2*C_OUTPUT_WIDTH, 
		  depth	=> c_nfft_max-2)
    port map (
			addra	=> PE1_data_wr_addr_0,
			addrb	=> PE1_data_rd_addr_0_d1,
			clk		=> CLK, 
			ena		=> CLK_EN, 
			enb		=> proc1_valid_pe_dpm_ce,  
			wea   => PE1_dpm_we,
			dina	=> PE1_out_sw0_data, 
			doutb	=> PE1_dpm0_data);

  PE1_dpm1: fft20_dpm 
	  generic map ( 
		  width => 2*C_OUTPUT_WIDTH, 
		  depth	=> c_nfft_max-2)
    port map (
			addra	=> PE1_data_wr_addr_1, 
			addrb	=> PE1_data_rd_addr_1_d1, 
			clk		=> CLK, 
			ena		=> CLK_EN, 
			enb		=> proc1_valid_pe_dpm_ce,  
			wea   => PE1_dpm_we,
			dina	=> PE1_out_sw1_data, 
			doutb	=> PE1_dpm1_data);

  PE1_dpm2: fft20_dpm 
	  generic map ( 
		  width => 2*C_OUTPUT_WIDTH, 
		  depth	=> c_nfft_max-2)
    port map (
			addra	=> PE1_data_wr_addr_2, 
			addrb	=> PE1_data_rd_addr_2_d1, 
			clk		=> CLK, 
			ena		=> CLK_EN, 
			enb		=> proc1_valid_pe_dpm_ce,  
			wea   => PE1_dpm_we,
			dina	=> PE1_out_sw2_data, 
			doutb	=> PE1_dpm2_data);

  PE1_dpm3: fft20_dpm 
	  generic map ( 
		  width => 2*C_OUTPUT_WIDTH, 
		  depth	=> c_nfft_max-2)
    port map (
			addra	=> PE1_data_wr_addr_3, 
			addrb	=> PE1_data_rd_addr_3_d1, 
			clk		=> CLK, 
			ena		=> CLK_EN, 
			enb		=> proc1_valid_pe_dpm_ce,  
			wea   => PE1_dpm_we,
			dina	=> PE1_out_sw3_data, 
			doutb	=> PE1_dpm3_data);

  sr_output_ctrl_signal: fft20_shift_ram
    generic map (
      C_DEPTH => data_mux_delay,
      C_WIDTH => 2)
    port map (
      D   => output_ctrl,
      CLK => CLK,
      CE  => CLK_EN,
      Q   => output_ctrl_d1);
			
  output_dpm_ce: fft20_c_lut   
		generic map (
		  eqn => "i0*i1")
		port map (
		  I0 => dv_int_delay,
			I1 => CLK_EN,
			I2 => logic1,
			I3 => logic1,
			O  => dv_int_delay_ce);
 
	output_dpm0: fft20_dpm 
		generic map ( 
			width => 2*C_OUTPUT_WIDTH, 
			depth => c_nfft_max-2)
		port map (
			addra	=> PE1_data_wr_addr_0,
			addrb	=> output_rd_addr, 
			clk		=> CLK, 
			ena		=> CLK_EN, 
			enb		=> dv_int_delay_ce,  
			wea		=> output_dpm_we, 
			dina	=> PE1_out_sw0_data,
			doutb	=> dout_0);

  output_dpm1: fft20_dpm 
  	generic map ( 
  		width => 2*C_OUTPUT_WIDTH, 
  		depth	=> c_nfft_max-2)
  	port map (
  		addra	=> PE1_data_wr_addr_1, 
  		addrb	=> output_rd_addr, 
  		clk		=> CLK, 
  	  ena   => CLK_EN,
  		enb		=> dv_int_delay_ce,  
  		wea		=> output_dpm_we, 
  		dina	=> PE1_out_sw1_data, 
  		doutb	=> dout_1);
                                
  output_dpm2: fft20_dpm
  	generic map ( 
  		width => 2*C_OUTPUT_WIDTH, 
  		depth	=> c_nfft_max-2)
  	port map (
  		addra	=> PE1_data_wr_addr_2, 
  		addrb	=> output_rd_addr, 
  		clk		=> CLK, 
      ena   => CLK_EN,
  		enb		=> dv_int_delay_ce,   
  		wea		=> output_dpm_we, 
  		dina	=> PE1_out_sw2_data, 
  		doutb	=> dout_2);
                                
  output_dpm3: fft20_dpm 
  	generic map ( 
  		width => 2*C_OUTPUT_WIDTH, 
  		depth	=> c_nfft_max-2)
  	port map (
  		addra	=> PE1_data_wr_addr_3, 
  		addrb	=> output_rd_addr, 
  		clk		=> CLK, 
      ena   => CLK_EN,
  		enb		=> dv_int_delay_ce,  
  		wea		=> output_dpm_we, 
  		dina	=> PE1_out_sw3_data, 
  		doutb	=> dout_3);

	final_result_mux: fft20_mux_bus
		generic map (
		  C_WIDTH	    => 2*C_OUTPUT_WIDTH,
			C_INPUTS    => 4,
			C_SEL_WIDTH => 2)
		port map (
			MA	=> dout_0,
			MB	=> dout_1,  
			MC  => dout_2,
			MD  => dout_3,
			S		=> output_ctrl_d1,
			CLK	=> CLK, 
			CE  => CLK_EN, 
			Q   => XK);

END xilinx;


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.fft20_comps.all;
USE XilinxCoreLib.fft20_bb_comps.all;
USE XilinxCoreLib.fft20_pkg.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.C_REG_FD_V6_0_comp.all;
USE XilinxCoreLib.C_ACCUM_V6_0_comp.all;

ENTITY xfft_v2_0_b IS
	generic (
		C_NFFT_MAX 				: integer := 10;
		C_HAS_BYPASS 			: integer := 1;	
		C_TWIDDLE_MEM_TYPE	: integer := 1; 
		C_DATA_MEM_TYPE		: integer := 1; 
		C_HAS_NFFT 			: integer := 1;	
		C_HAS_SCALING 			: integer := 1;	
		C_HAS_BFP 				: integer := 1;	
		C_HAS_ROUNDING 		: integer := 1;	
		C_HAS_OVFLO 			: integer := 0;	
		C_HAS_CE 				: integer := 1;	
		C_HAS_SCLR 				: integer := 1;	
		C_INPUT_WIDTH 			: integer := 16;	
		C_TWIDDLE_WIDTH		: integer := 17;	
		C_OUTPUT_WIDTH			: integer := 16);	
	port (
		XN_RE				: IN std_logic_vector(C_INPUT_WIDTH-1 DOWNTO 0);   
		XN_IM				: IN std_logic_vector(C_INPUT_WIDTH-1 DOWNTO 0);   
		START				: IN std_logic;   
		UNLOAD			: IN std_logic;   
		NFFT				: IN std_logic_vector(3 DOWNTO 0);   
		NFFT_WE			: IN std_logic;   
		FWD_INV			: IN std_logic;   
		FWD_INV_WE		: IN std_logic;   
		SCALE_SCH		: IN std_logic_vector(get_scale_sch_width(C_NFFT_MAX, 1)-1 DOWNTO 0);      
		SCALE_SCH_WE	: IN std_logic;   
		SCLR				: IN std_logic;   
		CE					: IN std_logic;   
		CLK				: IN std_logic;   
		XK_RE				: OUT std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0);   
		XK_IM				: OUT std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0);   
		XN_INDEX			: OUT std_logic_vector(C_NFFT_MAX-1 DOWNTO 0);   
		XK_INDEX			: OUT std_logic_vector(C_NFFT_MAX-1 DOWNTO 0);   
		RFD				: OUT std_logic;   
		BUSY				: OUT std_logic;   
		DV					: OUT std_logic;   
		EDONE				: OUT std_logic;   
		DONE				: OUT std_logic;   
		BLK_EXP			: OUT std_logic_vector(3 DOWNTO 0);  
		OVFLO				: OUT std_logic);   
END xfft_v2_0_b;

ARCHITECTURE xilinx OF xfft_v2_0_b IS

	constant PE_DELAY					: integer := PE_latency(C_OUTPUT_WIDTH, C_TWIDDLE_WIDTH, 1, C_HAS_SCALING, C_HAS_ROUNDING) ;
   constant SIN_COS_DELAY        : integer := 1 +  GET_SIN_COS_PIPE_STAGES( C_TWIDDLE_MEM_TYPE, C_NFFT_MAX, C_TWIDDLE_WIDTH);
   constant MULT_DELAY           : integer := MULT_LATENCY(C_OUTPUT_WIDTH+1, C_TWIDDLE_WIDTH) +2; 
	constant SWITCH_DELAY		   : integer := 1;
	constant MUX_DELAY				: integer := 1;
	constant MEM_DELAY				: integer := 2;
	constant RW_ADDR_GEN_DELAY 	: integer := 4; 
	constant IO_ADDR_GEN_DELAY 	: integer := 2;
	constant TW_ADDR_GEN_DELAY 	: integer := 4; 
	constant OUT_ADDR_GEN_DELAY 	: integer := 2;

   constant INPUT_MEM_WR_DELAY         : integer := RW_ADDR_GEN_DELAY-1;
   constant INPUT_RANGER_DELAY         : integer := 4;
   constant IN_ADDR_GEN_DELAY          : integer := 3+MUX_DELAY-MUX_DELAY-IO_ADDR_GEN_DELAY;
   constant BYPASS_DELAY               : integer := RW_ADDR_GEN_DELAY+MUX_DELAY+MEM_DELAY+SWITCH_DELAY+MULT_DELAY-1; 
   constant CE_RANK_4_SCALE_DELAY      : integer := RW_ADDR_GEN_DELAY+MUX_DELAY+MEM_DELAY+SWITCH_DELAY+MULT_DELAY+2;
   constant RANGING_EN_PROCESS_DELAY   : integer := RW_ADDR_GEN_DELAY+MUX_DELAY+MEM_DELAY+SWITCH_DELAY+PE_DELAY+2;
   constant O_SW_BYPASS_DELAY          : integer := RW_ADDR_GEN_DELAY+MUX_DELAY+MEM_DELAY+SWITCH_DELAY+PE_DELAY-1;
   constant SCALE_DELAY                : integer := RW_ADDR_GEN_DELAY+MUX_DELAY+MEM_DELAY+SWITCH_DELAY+PE_DELAY-4;
   constant OUT_MUX_SELECT_DELAY       : integer := RW_ADDR_GEN_DELAY-MUX_DELAY;
   constant OVERFLOW_DELAY             : integer := RW_ADDR_GEN_DELAY+MUX_DELAY+MEM_DELAY+SWITCH_DELAY+PE_DELAY-1;
  	constant TWIDDLE_GEN_DELAY 	      : integer := RW_ADDR_GEN_DELAY+MUX_DELAY+MEM_DELAY+SWITCH_DELAY-TW_ADDR_GEN_DELAY-SIN_COS_DELAY;
   constant WE_PROCESS_DELAY           : integer := RW_ADDR_GEN_DELAY+MUX_DELAY+MEM_DELAY+SWITCH_DELAY+PE_DELAY+SWITCH_DELAY; 
   constant I_SW_CONTROL_DELAY         : integer := MEM_DELAY+MUX_DELAY;
   constant WR_ADDR_DELAY              : integer := MEM_DELAY+SWITCH_DELAY+PE_DELAY+SWITCH_DELAY+MUX_DELAY;
   constant DATA_VALID_DELAY           : integer := OUT_ADDR_GEN_DELAY + MEM_DELAY + MUX_DELAY + 2; 
   constant OUT_MUX_SEL_DELAY          : integer := OUT_ADDR_GEN_DELAY + MEM_DELAY + MUX_DELAY + 1;
   constant RD_ENABLE_DELAY            : integer := OUT_ADDR_GEN_DELAY + MEM_DELAY + MUX_DELAY;
   constant RD_ADDR_MUX_CONTROL_DELAY  : integer := OUT_ADDR_GEN_DELAY + MEM_DELAY ;
   constant XK_ADDR_DELAY              : integer := OUT_ADDR_GEN_DELAY + MEM_DELAY + MUX_DELAY + 2; 

   constant scale_sch_width				: integer := get_scale_sch_width(C_NFFT_MAX, 1);
	constant zeros								: std_logic_vector(15 downto 0) := "0000000000000000";

   signal XN_RE_padded				: std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
	signal XN_IM_padded				: std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
	signal I_NFFT 						: std_logic_vector(3 downto 0);
	signal I_CE 						: std_logic;
	signal I_SCLR 						: std_logic;
	signal I_CE_AND_SCALE_SCH_WE	: std_logic;
	signal pr_start					: std_logic;
	signal pr_start_d					: std_logic;
	signal gnd							: std_logic;
	signal vcc							: std_logic;
	signal ce_rank_0					: std_logic;
	signal ce_rn_0						: std_logic;
	signal rn_0							: std_logic_vector(C_NFFT_MAX-3 DOWNTO 0);  
	signal rn_tw						: std_logic_vector(C_NFFT_MAX-3 DOWNTO 0);  
	signal rank_0						: std_logic_vector(2 DOWNTO 0);  
	signal rank_scale					: std_logic_vector(2 DOWNTO 0);  
	signal rank_tw		 			   : std_logic_vector(2 DOWNTO 0);  
	signal last_rank   				: std_logic;
   signal second_rank            : std_logic;
  	signal last_rank_4_tw_gen		: std_logic;
	signal I_SCALE_SCH			   : std_logic_vector(15 DOWNTO 0);     
	signal I_SCALE_SCH_reg			: std_logic_vector(SCALE_SCH_WIDTH-1 DOWNTO 0);     
	signal I_SCALE_SCH_tmp			: std_logic_vector(SCALE_SCH_WIDTH-1 downto 0);   
	signal I_CE_AND_FWD_INV_WE		: std_logic;
	signal I_FWD_INV					: std_logic;
	signal FWD_INV_V					: std_logic_vector(0 downto 0);
	signal I_FWD_INV_V				: std_logic_vector(0 downto 0);
	signal SW_CONTROL					: std_logic_vector(1 downto 0);
	signal I_SW_CONTROL				: std_logic_vector(1 downto 0);
	signal O_SW_CONTROL				: std_logic_vector(1 downto 0);
	signal OUT_MUX_CONTROL			: std_logic_vector(1 downto 0);
	signal OUT_MUX_CONTROL_D		: std_logic_vector(1 downto 0);
	signal O_MUX_CONTROL				: std_logic_vector(1 downto 0);
	signal IO_MUX_CONTROL			: std_logic_vector(1 downto 0);
	signal RFD_4_out_mux_selector	: std_logic;
	signal RFD_4_wr_mux	      	: std_logic;
	signal RFD_4_ranger_mux    	: std_logic;
	signal OUT_ADDR					: std_logic_vector(C_NFFT_MAX-1 DOWNTO 0); 
	signal OUT_ADDR_del_mux	      : std_logic_vector(C_NFFT_MAX-1 DOWNTO 0); 	
	signal OUT_ADDR_del_XK			: std_logic_vector(C_NFFT_MAX-1 DOWNTO 0); 	
	signal IN_ADDR					   : std_logic_vector(C_NFFT_MAX-1 DOWNTO 0); 
	signal INP_ADDR					: std_logic_vector(C_NFFT_MAX-1 DOWNTO 0); 
	signal IN_WR_ADDR					: std_logic_vector(C_NFFT_MAX-3 DOWNTO 0); 
	signal OUT_RD_ADDR				: std_logic_vector(C_NFFT_MAX-3 DOWNTO 0); 
	signal WE0							: std_logic;
	signal WE1							: std_logic;
	signal WE2							: std_logic;
	signal WE3							: std_logic;
	signal WE_PROCESS					: std_logic;
	signal WE_DPM_0					: std_logic;
	signal WE_DPM_1					: std_logic;
	signal WE_DPM_2					: std_logic;
	signal WE_DPM_3					: std_logic;
	signal RD_EN						: std_logic;
	signal RD_EN_PROCESS				: std_logic;
	signal SCALING						: std_logic_vector(1 DOWNTO 0); 
	signal PE_overflow				: std_logic;
	signal out_dibit_sum				: std_logic_vector(1 DOWNTO 0);
	signal I_CE_AND_DV				: std_logic;
	signal I_CE_AND_start_pr		: std_logic;
	signal I_CE_AND_rank_CE_4_expgen	: std_logic;
	signal data_range					: std_logic_vector(1 DOWNTO 0);
  	signal in_range					: std_logic_vector(1 DOWNTO 0);
	signal scaling_necessarry		: std_logic_vector(1 DOWNTO 0);
	signal rd_addr_mux_control		: std_logic_vector(1 DOWNTO 0);	
	signal exp_grow     				: std_logic_vector(1 DOWNTO 0);
	signal muxed_range  		      : std_logic_vector(1 DOWNTO 0);
   signal pe_ranger_enabled      : std_logic;
	signal bypass						: std_logic;
	signal bypass_d					: std_logic;
	signal bypass_o_sw				: std_logic;
	signal I_RFD						: std_logic;
	signal I_BUSY						: std_logic;
	signal I_OVFLO						: std_logic;
	signal I_DV						   : std_logic;
   signal rank_CE_4_ranger       : std_logic;
   signal rank_CE_4_expgen       : std_logic;
	signal DV_to_rd_enable			: std_logic;
	signal DV_to_out_mux_select	: std_logic;
	signal I_DATA_VALID				: std_logic;
	signal I_CE_AND_I_DV_delayed	: std_logic;
	signal pr_start_d_ovflo       : std_logic;
	signal I_BUSY_d_ovflo	      : std_logic;
   signal I_FWD_INV_tmp          : std_logic;
	signal GND_VECTOR					: std_logic_vector(C_NFFT_MAX-1 downto 0);

	
	signal RD_ADDR_0					: std_logic_vector(C_NFFT_MAX-3 DOWNTO 0); 
	signal RD_ADDR_1					: std_logic_vector(C_NFFT_MAX-3 DOWNTO 0); 
	signal RD_ADDR_2					: std_logic_vector(C_NFFT_MAX-3 DOWNTO 0); 
	signal RD_ADDR_3					: std_logic_vector(C_NFFT_MAX-3 DOWNTO 0); 
	
	signal WR_ADDR_0					: std_logic_vector(C_NFFT_MAX-3 DOWNTO 0); 
	signal WR_ADDR_1					: std_logic_vector(C_NFFT_MAX-3 DOWNTO 0); 
	signal WR_ADDR_2					: std_logic_vector(C_NFFT_MAX-3 DOWNTO 0); 
	signal WR_ADDR_3					: std_logic_vector(C_NFFT_MAX-3 DOWNTO 0); 
	
	signal muxed_wr_addr_0			: std_logic_vector(C_NFFT_MAX-3 DOWNTO 0); 
	signal muxed_wr_addr_1			: std_logic_vector(C_NFFT_MAX-3 DOWNTO 0); 
	signal muxed_wr_addr_2			: std_logic_vector(C_NFFT_MAX-3 DOWNTO 0); 
	signal muxed_wr_addr_3			: std_logic_vector(C_NFFT_MAX-3 DOWNTO 0); 
	signal muxed_rd_addr_0			: std_logic_vector(C_NFFT_MAX-3 DOWNTO 0); 
	signal muxed_rd_addr_1			: std_logic_vector(C_NFFT_MAX-3 DOWNTO 0); 
	signal muxed_rd_addr_2			: std_logic_vector(C_NFFT_MAX-3 DOWNTO 0); 
	signal muxed_rd_addr_3			: std_logic_vector(C_NFFT_MAX-3 DOWNTO 0); 
	
	signal muxed_wr_data_re_0		: std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0); 
	signal muxed_wr_data_re_1		: std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0); 
	signal muxed_wr_data_re_2		: std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0); 
	signal muxed_wr_data_re_3		: std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0); 
	signal muxed_wr_data_im_0		: std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0); 
	signal muxed_wr_data_im_1		: std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0); 
	signal muxed_wr_data_im_2		: std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0); 
	signal muxed_wr_data_im_3		: std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0); 
	
	signal switched_in_data_0_re	: std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0); 
	signal switched_in_data_1_re	: std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0); 
	signal switched_in_data_2_re	: std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0); 
	signal switched_in_data_3_re	: std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0); 
	signal switched_in_data_0_im	: std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0); 
	signal switched_in_data_1_im	: std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0); 
	signal switched_in_data_2_im	: std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0); 
	signal switched_in_data_3_im	: std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0); 
	
	signal switched_out_data_0_re	: std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0); 
	signal switched_out_data_1_re	: std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0); 
	signal switched_out_data_2_re	: std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0); 
	signal switched_out_data_3_re	: std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0); 
	signal switched_out_data_0_im	: std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0); 
	signal switched_out_data_1_im	: std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0); 
	signal switched_out_data_2_im	: std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0); 
	signal switched_out_data_3_im	: std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0); 
	
	signal DPM0_wr_data				: std_logic_vector(2*C_OUTPUT_WIDTH-1 DOWNTO 0); 
	signal DPM1_wr_data				: std_logic_vector(2*C_OUTPUT_WIDTH-1 DOWNTO 0); 
	signal DPM2_wr_data				: std_logic_vector(2*C_OUTPUT_WIDTH-1 DOWNTO 0); 
	signal DPM3_wr_data				: std_logic_vector(2*C_OUTPUT_WIDTH-1 DOWNTO 0); 
	
	signal DPM0_rd_data				: std_logic_vector(2*C_OUTPUT_WIDTH-1 DOWNTO 0); 
	signal DPM1_rd_data				: std_logic_vector(2*C_OUTPUT_WIDTH-1 DOWNTO 0); 
	signal DPM2_rd_data				: std_logic_vector(2*C_OUTPUT_WIDTH-1 DOWNTO 0); 
	signal DPM3_rd_data				: std_logic_vector(2*C_OUTPUT_WIDTH-1 DOWNTO 0); 
	
	signal twiddle_1_re				: std_logic_vector(C_TWIDDLE_WIDTH-1 DOWNTO 0); 
	signal twiddle_1_im				: std_logic_vector(C_TWIDDLE_WIDTH-1 DOWNTO 0); 
	signal twiddle_2_re				: std_logic_vector(C_TWIDDLE_WIDTH-1 DOWNTO 0); 
	signal twiddle_2_im				: std_logic_vector(C_TWIDDLE_WIDTH-1 DOWNTO 0); 
	signal twiddle_3_re				: std_logic_vector(C_TWIDDLE_WIDTH-1 DOWNTO 0); 
	signal twiddle_3_im				: std_logic_vector(C_TWIDDLE_WIDTH-1 DOWNTO 0); 
	
	signal twiddle_1_addr			: std_logic_vector(C_NFFT_MAX-1 DOWNTO 0); 
	signal twiddle_2_addr			: std_logic_vector(C_NFFT_MAX-1 DOWNTO 0);
	signal twiddle_3_addr			: std_logic_vector(C_NFFT_MAX-1 DOWNTO 0);  
	
	signal PE_out0_RE					: std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0); 
	signal PE_out0_IM					: std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0); 
	signal PE_out1_RE					: std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0); 
	signal PE_out1_IM					: std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0); 
	signal PE_out2_RE					: std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0); 
	signal PE_out2_IM					: std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0); 
	signal PE_out3_RE					: std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0); 
	signal PE_out3_IM					: std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0); 
   signal XN_RE_MSB					: std_logic; 
   signal XN_IM_MSB					: std_logic; 
   signal LD_START               : std_logic; 
   signal I_CE_AND_ld_start_delayed : std_logic; 
   signal ld_start_delayed       : std_logic; 
   signal was_SCLR    			   : std_logic; 
	
	BEGIN

	
	I_CE_CE: 		if c_has_ce =1		generate I_CE <= CE; end generate;
	I_CE_1: 			if c_has_ce /=1	generate I_CE <= '1'; end generate;

	
	I_SCLR_SCLR:	if c_has_sclr =1	generate I_SCLR <= SCLR; end generate;
	I_SCLR_0: 		if c_has_sclr /=1	generate I_SCLR <= '0'; end generate;

   gnd <= '0';
   vcc <= '1';
   gnd_vector <= zeros(C_NFFT_MAX-1 downto 0);

	control: fft20_flow_control_b 
		GENERIC MAP(
			NFFT_MAX		=> C_NFFT_MAX,
			C_HAS_NFFT	=> C_HAS_NFFT,	
			C_HAS_BFP 	=> C_HAS_BFP,
			PE_LATENCY	=> PE_DELAY+MEM_DELAY+2*MUX_DELAY+2*SWITCH_DELAY)
	   PORT MAP(
	      clk			=> CLK,
	      ce				=> I_CE,
	      sclr			=> I_SCLR,
	      start			=> START,
	      unload		=> UNLOAD,
	      NFFT			=> NFFT,
	      NFFT_WE		=> NFFT_WE,
	      done			=> DONE,		
	      edone			=> EDONE,	
	      pr_start		=> pr_start,	
  	      ld_start		=> ld_start,	
	      RFD			=> I_RFD,	
			BUSY			=> I_BUSY,	
			DV				=> I_DV,	
	      IN_ADDR		=> IN_ADDR,	
	      OUT_ADDR		=> OUT_ADDR,	
			NFFT_out	   => I_NFFT,	
	      ce_rank		=> ce_rank_0,	
	      ce_rn			=> ce_rn_0,	
	      rn_0			=> rn_0,	
	      rank_0		=> rank_0,
         second_rank => second_rank,
	      last_rank	=> last_rank,
			recent_sclr	=> was_SCLR); 

	DELAY_line_for_last_rankd: fft20_shift_ram_1
		generic map(
			C_DEPTH		=> TWIDDLE_GEN_DELAY) 
		port map(
			D  		 	=> last_rank,
			CLK 			=> CLK,
			CE  			=> I_CE,
			Q   			=> last_rank_4_tw_gen);
	
	bypass_gen: fft20_c_lut
		generic map (eqn => "~(I0*I1)")
		port map(
			I0 => last_rank, 
			I1 => I_NFFT(0), 
			I2 => vcc, 
			I3 => vcc, 
			O  => bypass);

	DELAY_line_for_bypass_d: fft20_shift_ram_1
		generic map(
			C_DEPTH		=> BYPASS_DELAY) 
		port map(
			D  		 	=> bypass,
			CLK 			=> CLK,
			CE  			=> I_CE,
			Q   			=> bypass_d);

	DELAY_line_for_bypass_d2: fft20_shift_ram_1
		generic map(
			C_DEPTH		=> O_SW_BYPASS_DELAY)
		port map(
			D  		 	=> bypass,
			CLK 			=> CLK,
			CE  			=> I_CE,
			Q   			=> bypass_o_sw);


	DELAY_line2_for_RFD: fft20_shift_ram_1
		generic map(
			C_DEPTH		=> INPUT_MEM_WR_DELAY)
		port map(
			D  		 	=> I_RFD,
			CLK 			=> CLK,
			CE  			=> I_CE,
			Q   			=> RFD_4_wr_mux);

	DELAY_line3_for_RFD: fft20_shift_ram_1
		generic map(
			C_DEPTH		=> OUT_MUX_SELECT_DELAY)
		port map(
			D  		 	=> I_RFD,
			CLK 			=> CLK,
			CE  			=> I_CE,
			Q   			=> RFD_4_out_mux_selector);

	DELAY_line_for_rank_scale: fft20_shift_ram
		generic map(
			C_DEPTH		=> SCALE_DELAY,
			C_WIDTH		=> 3)
		port map(
			D  		 	=> rank_0,
			CLK 			=> CLK,
			CE  			=> I_CE,
			Q   			=> rank_scale);

	sch_scedule_from_port: if (C_HAS_SCALING=1) and (C_HAS_BFP=0)	generate 

		I_CE_AND_SCALE_SCH_WE_gen: fft20_c_lut
			generic map (eqn => "I0*I1")
			port map(
				I0 => I_CE, 
				I1 => SCALE_SCH_WE,
				I2 => vcc, 
				I3 => vcc, 
				O  => I_CE_AND_SCALE_SCH_WE);

		DELAY_line_for_pr_start_d_ovflo: fft20_shift_ram_1
			generic map(
				C_DEPTH		=> OVERFLOW_DELAY)
			port map(
				D  		 	=> pr_start,
				CLK 			=> CLK,
				CE  			=> I_CE,
				Q   			=> pr_start_d_ovflo);

		DELAY_line_for_I_BUSY_d_ovflo: fft20_shift_ram_1
			generic map(
				C_DEPTH		=> OVERFLOW_DELAY)
			port map(
				D  		 	=> I_BUSY,
				CLK 			=> CLK,
				CE  			=> I_CE,
				Q   			=> I_BUSY_d_ovflo);

		ovflow_register: fft20_c_lut_reg_sclr
			generic map (eqn => "(I0+(I3*I2))*(~I1)")
			port map(
	         I0 	=> I_OVFLO,
	         I1 	=> pr_start_d_ovflo, 
	         I2 	=> I_BUSY_d_ovflo,
	         I3 	=> PE_overflow, 
	         CLK	=> CLK, 
	         CE    => I_CE,
				SCLR	=> was_SCLR,
	         Q  	=> I_OVFLO);
		
			OVFLO <= I_OVFLO;

			SCALE_SCH_REG: C_REG_FD_V6_0
				generic map (
					C_WIDTH => SCALE_SCH_WIDTH,  
			      C_AINIT_VAL => DEFAULT_SCALING_SCHEDULE(SCALE_SCH_WIDTH), 
			      C_SINIT_VAL => DEFAULT_SCALING_SCHEDULE(SCALE_SCH_WIDTH),
			      C_SYNC_PRIORITY => 1,
			      C_SYNC_ENABLE => 0,
			      C_HAS_CE => 1,
			      C_HAS_ACLR => 0,
			      C_HAS_ASET => 0,
			      C_HAS_AINIT => 1,
			      C_HAS_SCLR => 0,
			      C_HAS_SSET => 0,
			      C_HAS_SINIT => 1,
			      C_ENABLE_RLOCS => 1)
			    port map (
			      D => SCALE_SCH,
			      CLK => CLK,
			      CE => I_CE_AND_SCALE_SCH_WE,
			      ACLR => gnd,
			      ASET => gnd,
			      AINIT => gnd,
			      SCLR => gnd,
			      SSET => gnd,
			      SINIT => I_SCLR,
			      Q => I_SCALE_SCH_tmp);

         double_buffer_scale_sch: fft20_reg_fde
         generic map (data_width => SCALE_SCH_WIDTH)
         port map(
            CLK => CLK,
            CE => I_CE_AND_ld_start_delayed,
            D => I_SCALE_SCH_tmp,
            Q => I_SCALE_SCH_reg);

			I_SCALE_SCH(SCALE_SCH_WIDTH-1 downto 0) <= I_SCALE_SCH_reg;

         padd_I_SCALE_SCH: if (C_NFFT_MAX<16) generate
				bit_by_bit: for i in SCALE_SCH_WIDTH to 15 generate
	            I_SCALE_SCH(i) <= zeros(i);
					end generate;
            end generate;
            

			
			sch_scale_mux: fft20_mux_bus8
				generic map (
					C_WIDTH		=> 2,
					C_INPUTS    => 8,
					C_SEL_WIDTH => 3)
				port map(
					MA		=> I_SCALE_SCH(1 downto 0),
					MB		=> I_SCALE_SCH(3 downto 2),  
					MC		=> I_SCALE_SCH(5 downto 4),
					MD		=> I_SCALE_SCH(7 downto 6),  
					ME		=> I_SCALE_SCH(9 downto 8),
					MF		=> I_SCALE_SCH(11 downto 10),  
					MG		=> I_SCALE_SCH(13 downto 12),
					MH		=> I_SCALE_SCH(15 downto 14),  
					S		=> rank_scale,
					CLK	=> clk, 
					CE  	=> I_CE, 
					Q   	=> SCALING);
			end generate;

	BFP_scaling: if (C_HAS_BFP=1)	generate 
	

		
		fft20_input_ranger_inst: fft20_ranger
		PORT MAP(
			re       => XN_RE_padded(C_OUTPUT_WIDTH-1 downto C_OUTPUT_WIDTH-4),
			im       => XN_IM_padded(C_OUTPUT_WIDTH-1 downto C_OUTPUT_WIDTH-4),
			rang     => in_range,
			clk      => clk,
			ce       => I_ce);

		
		fft20_PE_ranger_inst: fft20_ranger3
		PORT MAP(
			ar => PE_out0_RE(C_OUTPUT_WIDTH-1 downto C_OUTPUT_WIDTH-4),
			ai => PE_out0_IM(C_OUTPUT_WIDTH-1 downto C_OUTPUT_WIDTH-4),
			br => PE_out1_RE(C_OUTPUT_WIDTH-1 downto C_OUTPUT_WIDTH-4),
			bi => PE_out1_IM(C_OUTPUT_WIDTH-1 downto C_OUTPUT_WIDTH-4),
			cr => PE_out2_RE(C_OUTPUT_WIDTH-1 downto C_OUTPUT_WIDTH-4),
			ci => PE_out2_IM(C_OUTPUT_WIDTH-1 downto C_OUTPUT_WIDTH-4),
			dr => PE_out3_RE(C_OUTPUT_WIDTH-1 downto C_OUTPUT_WIDTH-4),
			di => PE_out3_IM(C_OUTPUT_WIDTH-1 downto C_OUTPUT_WIDTH-4),
			o_range => data_range,
			clk=> clk,
			ce => I_ce);
   	DELAY_line_for_RFD: fft20_shift_ram_1
		generic map(
			C_DEPTH		=> INPUT_RANGER_DELAY)
		port map(
			D  		 	=> I_RFD,
			CLK 			=> CLK,
			CE  			=> I_CE,
			Q   			=> RFD_4_ranger_mux);

      DELAY_line_4_PROCESS_SCALE: fft20_shift_ram_1
  		generic map(
  			C_DEPTH		=> RANGING_EN_PROCESS_DELAY) 
  		port map(												
  			D  		 	=> CE_RN_0,
  			CLK 			=> CLK,
  			CE  			=> I_CE,
  			Q   			=> pe_ranger_enabled);

      range_mux_h: fft20_c_lut            
		generic map (eqn => "I0*I1+I2*I3*(~I1)")
		port map(
	    I0 	=> in_range(1),
	    I1 	=> RFD_4_ranger_mux,
	    I2 	=> data_range(1),
	    I3 	=> pe_ranger_enabled, 
	    O  	=> muxed_range(1));
      
      range_mux_l: fft20_c_lut            
		generic map (eqn => "I0*I1+I2*I3*(~I1)")
		port map(
			I0 	=> in_range(0),
			I1 	=> RFD_4_ranger_mux, 
			I2 	=> data_range(0),
			I3 	=> pe_ranger_enabled, 
			O  	=> muxed_range(0));

      expected_growth_calc: fft20_exp_growth 
      PORT MAP(
         second_rank	=> second_rank,
         last_rank	=> last_rank,
         radix_2  	=> I_NFFT(0),
         exp_growth  => exp_grow);

   	DELAY_line_for_CE_rank_4scale: fft20_shift_ram_1
		generic map(
			C_DEPTH		=> CE_RANK_4_SCALE_DELAY) 
		port map(
			D  		 	=> CE_rank_0,
			CLK 			=> CLK,
			CE  			=> I_CE,
			Q   			=> rank_CE_4_ranger);

   	DELAY_line_for_pr_start_d: fft20_shift_ram_1
		generic map(
			C_DEPTH		=> CE_RANK_4_SCALE_DELAY) 
		port map(
			D  		 	=> pr_start,
			CLK 			=> CLK,
			CE  			=> I_CE,
			Q           => pr_start_d);

   	DELAY_line_for_CE_rank_4expgen: fft20_shift_ram_1
		generic map(
			C_DEPTH		=> CE_RANK_4_SCALE_DELAY+1) 
		port map(
			D  		 	=> CE_rank_0,
			CLK 			=> CLK,
			CE  			=> I_CE,
			Q   			=> rank_CE_4_expgen);

      scale_calc: fft20_scale_logic
      PORT MAP(
         exp_growth  => exp_grow,
         dyna_range  => muxed_range,
         first_data  => rank_CE_4_ranger,
         CLK         => CLK,
         CE          => I_CE,
         scale       => scaling);

		I_CE_AND_start_pr_gen: fft20_c_lut
		generic map (eqn => "I0*I1+I2")
		port map(
			I0 => I_CE, 
			I1 => pr_start_d,
			I2 => was_SCLR, 
			I3 => vcc, 
			O  => I_CE_AND_start_pr);

		I_CE_AND_rank_CE_4_exp_gen: fft20_c_lut
		generic map (eqn => "I0*(I1*I2+I3)")
		port map(
			I0 => I_CE, 
			I1 => rank_CE_4_expgen,
			I2 => I_BUSY, 
			I3 => I_CE_AND_start_pr, 
			O  => I_CE_AND_rank_CE_4_expgen);

		exponent_generator : C_ACCUM_V6_0
		generic map(
			c_has_ainit => 0,
			c_saturate => 0,
			c_has_s => 0,
			c_scale => 0,
			c_sync_enable => 0,
			c_has_sinit => 0,
			c_has_bypass_with_cin => 0,
			c_has_sset => 0,
			c_has_add => 0,
			c_has_ovfl => 0,
			c_has_q_b_out => 0,
			c_has_sclr => 1,
			c_out_width => 4,
			c_sinit_val => "0",
			c_bypass_low => 0,
			c_has_b_signed => 0,
			c_b_constant => 0,
			c_has_bypass => 0,
			c_low_bit => 0,
			c_has_aset => 0,
			c_has_q_c_out => 0,
			c_b_type => 1,
			c_add_mode => 0,
			c_has_q_ovfl => 0,
			c_has_aclr => 0,
			c_has_b_in => 0,
			c_has_c_in => 0,
			c_has_b_out => 0,
			c_pipe_stages => 0,
			c_sync_priority => 1,
			c_b_width => 2,
			c_b_value => "0",
			c_bypass_enable => 1,
			c_has_c_out => 0,
			c_enable_rlocs => 1,
			c_has_ce => 1,
			c_high_bit => 3,
			c_ainit_val => "0000")
		port map (
			B 			=> SCALING,
			Q 			=> BLK_EXP,
			CLK 		=> CLK,
			CE 		=> I_CE_AND_rank_CE_4_expgen,
			SCLR 		=> I_CE_AND_start_pr);
	end generate;

	NO_scaling: if (C_HAS_SCALING=0)	generate
      SCALING <= "00";
   end generate;

    DELAY_line_for_inp_addd: fft20_shift_ram
		generic map(
			C_DEPTH		=> IN_ADDR_GEN_DELAY,
			C_WIDTH		=> C_NFFT_MAX)
		port map (
			D  		 	=> in_addr,
			CLK 			=> CLK,
			CE  			=> I_CE,
			Q   			=> inp_addr);

	DELAY_line_for_I_SW_CONTROL: fft20_shift_ram
		generic map(
			C_DEPTH		=> I_SW_CONTROL_DELAY,
			C_WIDTH		=> 2)
		port map (
			D  		 	=> SW_CONTROL,
			CLK 			=> CLK,
			CE  			=> I_CE,
			Q   			=> I_SW_CONTROL);

	DELAY_line_for_fft20_twiddle_rn: fft20_shift_ram
		generic map(
			C_DEPTH		=> TWIDDLE_GEN_DELAY,
			C_WIDTH		=> C_NFFT_MAX-2)
		port map (
			D  		 	=> rn_0,
			CLK 			=> CLK,
			CE  			=> I_CE,
			Q   			=> rn_tw);

	DELAY_line_for_fft20_twiddle_rank: fft20_shift_ram
		generic map(
			C_DEPTH		=> TWIDDLE_GEN_DELAY,
			C_WIDTH		=> 3)
		port map (
			D  		 	=> rank_0,
			CLK 			=> CLK,
			CE  			=> I_CE,
			Q   			=> rank_tw);	

	DELAY_line_for_wr_addr_0: fft20_shift_ram
		generic map(
			C_DEPTH		=> WR_ADDR_DELAY,
			C_WIDTH		=> C_NFFT_MAX-2)							  
		port map (
			D  		 	=> RD_ADDR_0,
			CLK 			=> CLK,
			CE  			=> I_CE,
			Q   			=> WR_ADDR_0);

	DELAY_line_for_wr_addr_1: fft20_shift_ram
		generic map(
			C_DEPTH		=> WR_ADDR_DELAY,
			C_WIDTH		=> C_NFFT_MAX-2)
		port map (
			D  		 	=> RD_ADDR_1,
			CLK 			=> CLK,
			CE  			=> I_CE,
			Q   			=> WR_ADDR_1);

	DELAY_line_for_wr_addr_2: fft20_shift_ram
		generic map(
			C_DEPTH		=> WR_ADDR_DELAY,
			C_WIDTH		=> C_NFFT_MAX-2)
		port map (
			D  		 	=> RD_ADDR_2,
			CLK 			=> CLK,
			CE  			=> I_CE,
			Q   			=> WR_ADDR_2);

	DELAY_line_for_wr_addr_3: fft20_shift_ram
		generic map(
			C_DEPTH		=> WR_ADDR_DELAY,
			C_WIDTH		=> C_NFFT_MAX-2)
		port map (
			D  		 	=> RD_ADDR_3,
			CLK 			=> CLK,
			CE  			=> I_CE,
			Q   			=> WR_ADDR_3);


	DELAY_line_for_WE_PROCESS: fft20_shift_ram_1
		generic map(
			C_DEPTH		=> WE_PROCESS_DELAY)
		port map(												
			D  		 	=> CE_RN_0,							
			CLK 			=> CLK,
			CE  			=> I_CE,
			Q   			=> WE_PROCESS);


	DELAY_line_for_RD_EN_PROCESS: fft20_shift_ram_1
		generic map(
			C_DEPTH		=> RD_ENABLE_DELAY + MEM_DELAY) 
		port map(												
			D  		 	=> CE_RN_0,							
			CLK 			=> CLK,
			CE  			=> I_CE,
			Q   			=> RD_EN_PROCESS);


	DELAY_line_for_DV3: fft20_shift_ram_1_sclr
		generic map(
			C_DEPTH		=> DATA_VALID_DELAY)
		port map(
			D  		 	=> I_DV,
			CLK 			=> CLK,
			CE  			=> I_CE,
			SCLR			=> was_SCLR,
			Q   			=> I_DATA_VALID);

	DELAY_line_for_DV2: fft20_shift_ram_1
		generic map(
			C_DEPTH		=> OUT_MUX_SEL_DELAY)
		port map(
			D  		 	=> I_DV,
			CLK 			=> CLK,
			CE  			=> I_CE,
			Q   			=> DV_to_out_mux_select);

	DELAY_line_for_DV1: fft20_shift_ram_1
		generic map(
			C_DEPTH		=> RD_ENABLE_DELAY)
		port map(
			D  		 	=> I_DV,
			CLK 			=> CLK,
			CE  			=> I_CE,
			Q   			=> DV_to_rd_enable);

	DELAY_line_for_RD_addr_mux_control_0: fft20_shift_ram_1
		generic map(
			C_DEPTH		=> RD_ADDR_MUX_CONTROL_DELAY)
		port map(
			D  		 	=> I_RFD,
			CLK 			=> CLK,
			CE  			=> I_CE,
			Q   			=> rd_addr_mux_control(0));

	DELAY_line_for_RD_addr_mux_control_1: fft20_shift_ram_1
		generic map(
			C_DEPTH		=> RD_ADDR_MUX_CONTROL_DELAY)
		port map(
			D  		 	=> I_DV,
			CLK 			=> CLK,
			CE  			=> I_CE,
			Q   			=> rd_addr_mux_control(1));

	DELAY_line_for_O_SW_CONTROL : fft20_shift_ram
		generic map(
			C_DEPTH		=> PE_DELAY, 
			C_WIDTH		=> 2)
		port map (
			D  		 	=> I_SW_CONTROL,
			CLK 			=> CLK,
			CE  			=> I_CE,
			Q   			=> O_SW_CONTROL);

	DELAY_line_for_XK_index: fft20_shift_ram_sclr
		generic map(
			C_DEPTH		=> XK_ADDR_DELAY,
			C_WIDTH		=> C_NFFT_MAX)
		port map(
			D  		 	=> OUT_ADDR,
			CLK 			=> CLK,
			CE  			=> I_CE,
			SCLR			=> was_SCLR,
			Q   			=> OUT_ADDR_del_XK);

	DELAY_line_for_out_mux: fft20_shift_ram
		generic map(
			C_DEPTH		=> 1, 
			C_WIDTH		=> C_NFFT_MAX)
		port map(
			D  		 	=> OUT_ADDR,
			CLK 			=> CLK,
			CE  			=> I_CE,
			Q   			=> OUT_ADDR_del_mux);

	FWD_INV_V(0) <= FWD_INV;
	I_FWD_INV_tmp <= I_FWD_INV_V(0);

	I_CE_AND_FWD_INV_WE_gen: fft20_c_lut
		generic map (eqn => "I0*I1")
		port map(
			I0 => I_CE, 
			I1 => FWD_INV_WE,
			I2 => vcc, 
			I3 => vcc, 
			O  => I_CE_AND_FWD_INV_WE);

	FWD_INV_reg1: C_REG_FD_V6_0
		generic map (
			C_WIDTH => 1,
	      C_AINIT_VAL => "1",		
	      C_SINIT_VAL => "1",
	      C_SYNC_PRIORITY => 1,
	      C_SYNC_ENABLE => 0,
	      C_HAS_CE => 1,
	      C_HAS_ACLR => 0,
	      C_HAS_ASET => 0,
	      C_HAS_AINIT => 0,
	      C_HAS_SCLR => 0,
	      C_HAS_SSET => 0,
	      C_HAS_SINIT => 1,
	      C_ENABLE_RLOCS => 1)
	    port map (
	      D => FWD_INV_V,
	      CLK => CLK,
	      CE => I_CE_AND_FWD_INV_WE,
	      ACLR => gnd,
	      ASET => gnd,
	      AINIT => gnd,
	      SCLR => gnd,
	      SSET => gnd,
	      SINIT => I_SCLR,
	      Q => I_FWD_INV_V);

   DELAY_line_for_ld_start: fft20_shift_ram_1
		generic map(
			C_DEPTH		=> 4)
		port map(
			D  		 	=> ld_start,
			CLK 			=> CLK,
			CE  			=> I_CE,
			Q           => ld_start_delayed); 

   I_CE_AND_ld_start_delayed_gen: fft20_c_lut
		generic map (eqn => "I0*I1")
	port map(
			I0 => I_CE, 
			I1 => ld_start_delayed,
			I2 => vcc, 
			I3 => vcc, 
			O  => I_CE_AND_ld_start_delayed);

   double_buffer_fwd_inv: fft20_fde 
      port map(
         D=> I_FWD_INV_tmp, 
         CLK=> CLK, 
         CE=> I_CE_AND_ld_start_delayed, 
         Q=>I_FWD_INV);

	io_address_gen: fft20_io_addr_gen 
		generic map (NFFT_MAX => C_NFFT_MAX)
		port map (
			CLK 	=> CLK, 
			CE 	=> I_CE, 
			NFFT	=> I_NFFT,
			CNT_RN=> INP_ADDR,
			ADDR 	=> IN_WR_ADDR, 
			WE0	=> WE0, 	
			WE1	=> WE1, 	
			WE2	=> WE2, 
			WE3	=> WE3,
			CTRL	=> IO_MUX_CONTROL);

	processing_address_generator: fft20_rw_addr_gen
		generic map (
			NFFT_max 	=> C_NFFT_MAX)
		port map(
			CLK  			=> CLK, 
			CE      		=> I_CE, 
			CNT_RN  		=> rn_0,
			NFFT    		=> I_NFFT,
			RANK    		=> rank_0,
			LAST_RANK	=> last_rank,
			ADDR0   		=> RD_ADDR_0, 
			ADDR1   		=> RD_ADDR_1, 
			ADDR2			=> RD_ADDR_2, 
			ADDR3			=> RD_ADDR_3, 
			SWITCH_CTRL	=> SW_CONTROL);

	out_address_gen: fft20_out_addr_gen 
	generic map(
			NFFT_max 	=> C_NFFT_MAX)
	port map(
			CLK  			=> CLK, 
			CE      		=> I_CE, 
			CNT_RN  		=> out_addr_del_mux,
			NFFT    		=> I_NFFT,
			ADDR			=> OUT_RD_ADDR,
			SEL_CTRL		=> O_MUX_CONTROL);

	twiddle_address_generator:	fft20_tw_addr_gen
		generic map(
			nfft_max		=> C_NFFT_MAX)
		port map (
			CLK			=> CLK, 
			CE				=> I_CE, 
			CNT_RN		=> rn_tw, 
			RANK			=> rank_tw,
			POWER2		=> I_NFFT(0),
         FWD_INV     => I_FWD_INV,
			LAST_RANK	=> last_rank_4_tw_gen,
			TW1_ADDR		=> twiddle_1_addr,
			TW2_ADDR		=> twiddle_2_addr,
			TW3_ADDR		=> twiddle_3_addr);

	write_addr_mux0: fft20_mux_bus2
		generic map (C_WIDTH		=> C_NFFT_MAX-2)
		port map(
			MA		=> WR_ADDR_0,
			MB		=> IN_WR_ADDR,  
			S		=> RFD_4_wr_mux,
			CLK	=> clk, 
			CE  	=> I_CE, 
			Q   	=> muxed_wr_addr_0);

	write_addr_mux1: fft20_mux_bus2 
		generic map (C_WIDTH		=> C_NFFT_MAX-2)
		port map(
			MA		=> WR_ADDR_1,
			MB		=> IN_WR_ADDR,  
			S		=> RFD_4_wr_mux,
			CLK	=> clk, 
			CE  	=> I_CE, 
			Q   	=> muxed_wr_addr_1);

	write_addr_mux2: fft20_mux_bus2
		generic map (C_WIDTH		=> C_NFFT_MAX-2)
		port map(
			MA		=> WR_ADDR_2,
			MB		=> IN_WR_ADDR,  
			S		=> RFD_4_wr_mux,
			CLK	=> clk, 
			CE  	=> I_CE, 
			Q   	=> muxed_wr_addr_2);

	write_addr_mux3: fft20_mux_bus2 
		generic map (C_WIDTH		=> C_NFFT_MAX-2)
		port map(
			MA		=> WR_ADDR_3,
			MB		=> IN_WR_ADDR,  
			S		=> RFD_4_wr_mux,
			CLK	=> clk, 
			CE  	=> I_CE, 
			Q   	=> muxed_wr_addr_3);


	read_addr_mux0: fft20_mux_bus
		generic map (C_WIDTH		=> C_NFFT_MAX-2,
					    C_INPUTS   => 4,
						 C_SEL_WIDTH=> 2)
		port map(
			MA		=> RD_ADDR_0,
			MB		=> IN_WR_ADDR,  
			MC		=> OUT_RD_ADDR,  
			MD		=> IN_WR_ADDR,  
			S		=> rd_addr_mux_control,
			CLK	=> clk, 
			CE  	=> I_CE, 
			Q   	=> muxed_rd_addr_0);

	read_addr_mux1: fft20_mux_bus
		generic map (C_WIDTH		=> C_NFFT_MAX-2,
					    C_INPUTS   => 4,
						 C_SEL_WIDTH=> 2)
		port map(
			MA		=> RD_ADDR_1,
			MB		=> IN_WR_ADDR,  
			MC		=> OUT_RD_ADDR,  
			MD		=> IN_WR_ADDR,  
			S		=> rd_addr_mux_control,
			CLK	=> clk, 
			CE  	=> I_CE, 
			Q   	=> muxed_rd_addr_1);

	read_addr_mux2: fft20_mux_bus
		generic map (C_WIDTH		=> C_NFFT_MAX-2,
					    C_INPUTS   => 4,
						 C_SEL_WIDTH=> 2)
		port map(
			MA		=> RD_ADDR_2,
			MB		=> IN_WR_ADDR,  
			MC		=> OUT_RD_ADDR,  
			MD		=> IN_WR_ADDR,  
			S		=> rd_addr_mux_control,
			CLK	=> clk, 
			CE  	=> I_CE, 
			Q   	=> muxed_rd_addr_2);

	read_addr_mux3: fft20_mux_bus
		generic map (C_WIDTH		=> C_NFFT_MAX-2,
					    C_INPUTS   => 4,
						 C_SEL_WIDTH=> 2)
		port map(
			MA		=> RD_ADDR_3,
			MB		=> IN_WR_ADDR,  
			MC		=> OUT_RD_ADDR,  
			MD		=> IN_WR_ADDR,  
			S		=> rd_addr_mux_control,
			CLK	=> clk, 
			CE  	=> I_CE, 
			Q   	=> muxed_rd_addr_3);

   XN_RE_MSB <= XN_RE(C_INPUT_WIDTH-1);
   XN_IM_MSB <= XN_IM(C_INPUT_WIDTH-1);
	XN_RE_padded(C_INPUT_WIDTH-1 downto 0) <= XN_RE;
	XN_IM_padded(C_INPUT_WIDTH-1 downto 0) <= XN_IM;
	padding_XN: if (C_INPUT_WIDTH < C_OUTPUT_WIDTH) generate
      padding_with_MSB: for i in C_OUTPUT_WIDTH-1 downto C_INPUT_WIDTH generate
   	  XN_RE_padded(i) <= XN_RE_MSB;
     	  XN_IM_padded(i) <= XN_IM_MSB;
   	  end generate;
	end generate;

	write_data_re_mux0: fft20_mux_bus2 
		generic map (C_WIDTH		=> C_OUTPUT_WIDTH)
		port map(
			MA		=> switched_out_data_0_re,
			MB		=> XN_RE_padded,  
			S		=> RFD_4_wr_mux,
			CLK	=> clk, 
			CE  	=> I_CE, 
			Q   	=> muxed_wr_data_re_0);

	write_data_im_mux0: fft20_mux_bus2 
		generic map (C_WIDTH		=> C_OUTPUT_WIDTH)
		port map(
			MA		=> switched_out_data_0_im,
			MB		=> XN_IM_padded,  
			S		=> RFD_4_wr_mux,
			CLK	=> clk, 
			CE  	=> I_CE, 
			Q   	=> muxed_wr_data_im_0);


	write_data_re_mux1: fft20_mux_bus2 
		generic map (C_WIDTH		=> C_OUTPUT_WIDTH)
		port map(
			MA		=> switched_out_data_1_re,
			MB		=> XN_RE_padded,  
			S		=> RFD_4_wr_mux,
			CLK	=> clk, 
			CE  	=> I_CE, 
			Q   	=> muxed_wr_data_re_1);

	write_data_im_mux1: fft20_mux_bus2 
		generic map (C_WIDTH		=> C_OUTPUT_WIDTH)
		port map(
			MA		=> switched_out_data_1_im,
			MB		=> XN_IM_padded,  
			S		=> RFD_4_wr_mux,
			CLK	=> clk, 
			CE  	=> I_CE, 
			Q   	=> muxed_wr_data_im_1);

	write_data_re_mux2: fft20_mux_bus2 
		generic map (C_WIDTH		=> C_OUTPUT_WIDTH)
		port map(
			MA		=> switched_out_data_2_re,
			MB		=> XN_RE_padded,  
			S		=> RFD_4_wr_mux,
			CLK	=> clk, 
			CE  	=> I_CE, 
			Q   	=> muxed_wr_data_re_2);

	write_data_im_mux2: fft20_mux_bus2 
		generic map (C_WIDTH		=> C_OUTPUT_WIDTH)
		port map(
			MA		=> switched_out_data_2_im,
			MB		=> XN_IM_padded,  
			S		=> RFD_4_wr_mux,
			CLK	=> clk, 
			CE  	=> I_CE, 
			Q   	=> muxed_wr_data_im_2);

	write_data_re_mux3: fft20_mux_bus2 
		generic map (C_WIDTH		=> C_OUTPUT_WIDTH)
		port map(
			MA		=> switched_out_data_3_re,
			MB		=> XN_RE_padded,  
			S		=> RFD_4_wr_mux,
			CLK	=> clk, 
			CE  	=> I_CE, 
			Q   	=> muxed_wr_data_re_3);

	write_data_im_mux3: fft20_mux_bus2 
		generic map (C_WIDTH		=> C_OUTPUT_WIDTH)
		port map(
			MA		=> switched_out_data_3_im,
			MB		=> XN_IM_padded,  
			S		=> RFD_4_wr_mux,
			CLK	=> clk, 
			CE  	=> I_CE, 
			Q   	=> muxed_wr_data_im_3);

	DPM0_wr_data(2*C_OUTPUT_WIDTH-1 downto C_OUTPUT_WIDTH)	<= muxed_wr_data_re_0;
	DPM0_wr_data(C_OUTPUT_WIDTH-1 downto 0)					<= muxed_wr_data_im_0;
	DPM1_wr_data(2*C_OUTPUT_WIDTH-1 downto C_OUTPUT_WIDTH)	<= muxed_wr_data_re_1;
	DPM1_wr_data(C_OUTPUT_WIDTH-1 downto 0)					<= muxed_wr_data_im_1;
	DPM2_wr_data(2*C_OUTPUT_WIDTH-1 downto C_OUTPUT_WIDTH)	<= muxed_wr_data_re_2;
	DPM2_wr_data(C_OUTPUT_WIDTH-1 downto 0)					<= muxed_wr_data_im_2;
	DPM3_wr_data(2*C_OUTPUT_WIDTH-1 downto C_OUTPUT_WIDTH)	<= muxed_wr_data_re_3;
	DPM3_wr_data(C_OUTPUT_WIDTH-1 downto 0)					<= muxed_wr_data_im_3;

	RD_EN_gen: fft20_c_lut
		generic map (eqn => "I0*I1") 
		port map(
			I0 	=> RD_EN_PROCESS,
			I1 	=> I_CE, 
			I2 	=> vcc,	 
			I3 	=> vcc,	 
			O  	=> RD_EN);
	
	WE_DPM_0_gen: fft20_c_lut_reg
	  generic map (eqn => "I0*I2+I1*(~I2)")
	  port map(
	    I0 	=> WE0,
	    I1 	=> WE_PROCESS, 
	    I2 	=> RFD_4_wr_mux,
	    I3 	=> vcc, 
		 CLK	=> CLK, 
       CE   => I_CE,
	    Q  	=> WE_DPM_0);

	WE_DPM_1_gen: fft20_c_lut_reg
	  generic map (eqn => "I0*I2+I1*(~I2)")
	  port map(
	    I0	=> WE1,
	    I1	=> WE_PROCESS, 
	    I2	=> RFD_4_wr_mux,
	    I3 	=> vcc, 
		 CLK	=> CLK, 
       CE   => I_CE,
	    Q  	=> WE_DPM_1);

 	WE_DPM_2_gen: fft20_c_lut_reg
	  generic map (eqn => "I0*I2+I1*(~I2)")
	  port map(
	    I0	=> WE2,
	    I1	=> WE_PROCESS, 
	    I2	=> RFD_4_wr_mux,
	    I3 	=> vcc, 
		 CLK	=> CLK, 
       CE   => I_CE,
	    Q 	=> WE_DPM_2);

 	WE_DPM_3_gen: fft20_c_lut_reg
	  generic map (eqn => "I0*I2+I1*(~I2)")
	  port map(
	    I0	=> WE3,
	    I1	=> WE_PROCESS, 
	    I2	=> RFD_4_wr_mux,
	    I3 	=> vcc, 
		 CLK	=> CLK, 
       CE   => I_CE,
	    Q		=> WE_DPM_3);

  	dpm0: fft20_dpm 
	generic map( 
		width 	=> 2*C_OUTPUT_WIDTH, 
		depth		=> C_NFFT_MAX-2,
      delay    => MEM_DELAY)
	port map(
		addra		=> muxed_wr_addr_0, 
		addrb		=> muxed_rd_addr_0, 
		clk		=> CLK, 
      ena      => I_CE,
		enb		=> I_CE, 
		wea		=> WE_DPM_0, 
		dina		=> DPM0_wr_data, 
		doutb		=> DPM0_rd_data);

 	dpm1: fft20_dpm 
	generic map( 
		width 	=> 2*C_OUTPUT_WIDTH, 
		depth		=> C_NFFT_MAX-2,
      delay    => MEM_DELAY)
	port map(
		addra		=> muxed_wr_addr_1, 
		addrb		=> muxed_rd_addr_1, 
		clk		=> CLK, 
      ena      => I_CE,
		enb		=> I_CE, 
		wea		=> WE_DPM_1, 
		dina		=> DPM1_wr_data, 
		doutb		=> DPM1_rd_data);

 	dpm2: fft20_dpm
	generic map( 
		width 	=> 2*C_OUTPUT_WIDTH, 
		depth		=> C_NFFT_MAX-2,
      delay    => MEM_DELAY)
	port map(
		addra		=> muxed_wr_addr_2, 
		addrb		=> muxed_rd_addr_2, 
		clk		=> CLK, 
      ena      => I_CE,
		enb		=> I_CE, 
		wea		=> WE_DPM_2, 
		dina		=> DPM2_wr_data, 
		doutb		=> DPM2_rd_data);

 	dpm3: fft20_dpm 
	generic map( 
		width 	=> 2*C_OUTPUT_WIDTH, 
		depth		=> C_NFFT_MAX-2,
      delay    => MEM_DELAY)
	port map(
		addra		=> muxed_wr_addr_3, 
		addrb		=> muxed_rd_addr_3, 
		clk		=> CLK, 
      ena      => I_CE,
		enb		=> I_CE, 
		wea		=> WE_DPM_3, 
		dina		=> DPM3_wr_data, 
		doutb		=> DPM3_rd_data);

	i_switch_re: fft20_in_switch4
	generic map (WIDTH => C_OUTPUT_WIDTH)
	port map( 
		i0		=> DPM0_rd_data(2*C_OUTPUT_WIDTH-1 downto C_OUTPUT_WIDTH),
		i1 	=> DPM1_rd_data(2*C_OUTPUT_WIDTH-1 downto C_OUTPUT_WIDTH),
		i2 	=> DPM2_rd_data(2*C_OUTPUT_WIDTH-1 downto C_OUTPUT_WIDTH),
		i3 	=> DPM3_rd_data(2*C_OUTPUT_WIDTH-1 downto C_OUTPUT_WIDTH),
      o0 	=> switched_in_data_0_re,	
      o1 	=> switched_in_data_1_re,		
      o2 	=> switched_in_data_2_re,
      o3 	=> switched_in_data_3_re,		
      s 		=> I_SW_CONTROL,
		clk 	=> clk,
      ce 	=> RD_EN);

	i_switch_im: fft20_in_switch4
	generic map (WIDTH => C_OUTPUT_WIDTH)
	port map( 
		i0		=> DPM0_rd_data(C_OUTPUT_WIDTH-1 downto 0),
		i1 	=> DPM1_rd_data(C_OUTPUT_WIDTH-1 downto 0),
		i2 	=> DPM2_rd_data(C_OUTPUT_WIDTH-1 downto 0),
		i3 	=> DPM3_rd_data(C_OUTPUT_WIDTH-1 downto 0),
      o0 	=> switched_in_data_0_im,	
      o1 	=> switched_in_data_1_im,		
      o2 	=> switched_in_data_2_im,
      o3 	=> switched_in_data_3_im,		
      s 		=> I_SW_CONTROL,
		clk 	=> clk,
      ce 	=> RD_EN);

	twiddle_generator1: fft20_sin_cos
	generic map ( 
		MEM_TYPE 		=> C_TWIDDLE_MEM_TYPE,
		THETA_WIDTH 	=> C_NFFT_MAX,
		TWIDDLE_WIDTH 	=> C_TWIDDLE_WIDTH)
	port map (
		THETA 	=> twiddle_1_addr, 
		CLK		=> CLK, 	
		CE			=> I_CE, 
		SINE		=> twiddle_1_im, 
		COSINE	=> twiddle_1_re);

	twiddle_generator2: fft20_sin_cos
	generic map ( 
		MEM_TYPE 		=> C_TWIDDLE_MEM_TYPE,
		THETA_WIDTH 	=> C_NFFT_MAX,
		TWIDDLE_WIDTH 	=> C_TWIDDLE_WIDTH)
	port map (
		THETA 	=> twiddle_2_addr, 
		CLK		=> CLK, 	
		CE			=> I_CE, 
		SINE		=> twiddle_2_im, 
		COSINE	=> twiddle_2_re);

	twiddle_generator3: fft20_sin_cos
	generic map ( 
		MEM_TYPE 		=> C_TWIDDLE_MEM_TYPE,
		THETA_WIDTH 	=> C_NFFT_MAX,
		TWIDDLE_WIDTH 	=> C_TWIDDLE_WIDTH)
	port map (
		THETA 	=> twiddle_3_addr, 
		CLK		=> CLK, 	
		CE			=> I_CE, 
		SINE		=> twiddle_3_im, 
		COSINE	=> twiddle_3_re);

	PE: fft20_PE4
	GENERIC MAP(
		IO_WIDTH			=> C_OUTPUT_WIDTH,
		DRFLY_WIDTH		=> C_OUTPUT_WIDTH+4,	
		TW_WIDTH			=> C_TWIDDLE_WIDTH,		
		MULT_LATENCY	=> MULT_DELAY, 		
		C_HAS_MULTS		=> 1,						
		C_HAS_BYPASS	=> C_HAS_BYPASS,		
		C_HAS_SCALER	=> C_HAS_SCALING,		
		C_HAS_ROUNDER	=> C_HAS_ROUNDING,		
		C_HAS_OVERFLOW	=> C_HAS_SCALING*(1-C_HAS_BFP))	
	PORT MAP(
		I0_RE				=> switched_in_data_0_re, 
		I0_IM				=> switched_in_data_0_im, 
		I1_RE				=> switched_in_data_1_re, 
		I1_IM				=> switched_in_data_1_im, 
		I2_RE				=> switched_in_data_2_re, 
		I2_IM				=> switched_in_data_2_im, 
		I3_RE				=> switched_in_data_3_re, 
		I3_IM				=> switched_in_data_3_im, 
		TW1_RE			=> twiddle_1_re, 
		TW1_IM			=> twiddle_1_im, 
		TW2_RE			=> twiddle_2_re, 
		TW2_IM			=> twiddle_2_im, 
		TW3_RE			=> twiddle_3_re, 
		TW3_IM			=> twiddle_3_im, 
		SCALE				=> SCALING,
		BYPASS			=> bypass_d,
		OVFLO				=> PE_overflow,
		O0_RE				=> PE_out0_RE, 
		O0_IM				=> PE_out0_IM,
		O1_RE				=> PE_out1_RE, 
		O1_IM				=> PE_out1_IM,
		O2_RE				=> PE_out2_RE, 
		O2_IM				=> PE_out2_IM,
		O3_RE				=> PE_out3_RE, 
		O3_IM				=> PE_out3_IM,
		CE					=> I_CE,
		CLK				=> CLK);   

	o_switch_re: fft20_out_switch4
		generic map (WIDTH => C_OUTPUT_WIDTH)
		port map( 
			i0		=> PE_out0_RE,
			i1 	=> PE_out1_RE,
			i2 	=> PE_out2_RE,
			i3 	=> PE_out3_RE,
			o0 	=> switched_out_data_0_re,
			o1 	=> switched_out_data_1_re,
			o2 	=> switched_out_data_2_re,
			o3 	=> switched_out_data_3_re,
			s 		=> O_SW_CONTROL,
			bypass=> bypass_o_sw,
			dir	=> I_FWD_INV, 
			clk 	=> clk,
			ce 	=> I_CE);

	o_switch_im: fft20_out_switch4
		generic map (WIDTH => C_OUTPUT_WIDTH)
		port map( 
			i0		=> PE_out0_im,
			i1 	=> PE_out1_im,
			i2 	=> PE_out2_im,
			i3 	=> PE_out3_im,
			o0 	=> switched_out_data_0_im,
			o1 	=> switched_out_data_1_im,
			o2 	=> switched_out_data_2_im,
			o3 	=> switched_out_data_3_im,
			s 		=> O_SW_CONTROL,
			bypass=> bypass_o_sw,
			dir	=> I_FWD_INV, 
			clk 	=> clk,
			ce 	=> I_CE);

	I_CE_AND_DV_gen: fft20_c_lut
	  generic map (eqn => "I0*I1")
	  port map(
	    I0 => I_CE,
	    I1 => I_DV, 
	    I2 => vcc,
	    I3 => vcc, 
	    O  => I_CE_AND_DV);

	out_mux_control_selector: fft20_mux_bus2
		generic map (C_WIDTH		=> 2)
		port map(
			MA		=> O_MUX_CONTROL,
			MB		=> IO_MUX_CONTROL,  
			S		=> RFD_4_out_mux_selector,
			CLK	=> clk, 
			CE  	=> I_CE, 
			Q   	=> OUT_MUX_CONTROL);

	OUT_MUX_CONTROL_delay: fft20_shift_ram
		generic map(
			C_DEPTH		=> MEM_DELAY,
			C_WIDTH		=> 2)
		PORT MAP (
			D		=> OUT_MUX_CONTROL, 
			CLK 	=> CLK, 
			CE		=> I_CE, 
			Q		=> OUT_MUX_CONTROL_D);

	output_EN_gen: fft20_c_lut
		generic map (eqn => "I0*I1")
		port map(
	    I0 	=> I_CE,
	    I1 	=> DV_to_out_mux_select, 
	    I2 	=> vcc,
	    I3 	=> vcc, 
	    O  	=> I_CE_AND_I_DV_delayed);

	output_selector_re: fft20_mux_bus_sclr
		generic map (
			C_WIDTH    	=> C_OUTPUT_WIDTH,
			C_INPUTS   	=> 4,
			C_SEL_WIDTH	=> 2)
		port map (
			MA 	=> DPM0_rd_data(2*C_OUTPUT_WIDTH-1 downto C_OUTPUT_WIDTH),
			MB   	=> DPM1_rd_data(2*C_OUTPUT_WIDTH-1 downto C_OUTPUT_WIDTH),
			MC   	=> DPM2_rd_data(2*C_OUTPUT_WIDTH-1 downto C_OUTPUT_WIDTH), 
			MD   	=> DPM3_rd_data(2*C_OUTPUT_WIDTH-1 downto C_OUTPUT_WIDTH), 
			S    	=> OUT_MUX_CONTROL_D, 
			SCLR	=> was_SCLR,
			CLK  	=> clk, 
			CE   	=> I_CE_AND_I_DV_delayed, 
			Q    	=> XK_RE);

	output_selector_im: fft20_mux_bus_sclr
		generic map(
			C_WIDTH    	=> C_OUTPUT_WIDTH,
			C_INPUTS   	=> 4,
			C_SEL_WIDTH	=> 2)
		port map(
			MA 	=> DPM0_rd_data(C_OUTPUT_WIDTH-1 downto 0),
			MB   	=> DPM1_rd_data(C_OUTPUT_WIDTH-1 downto 0),
			MC   	=> DPM2_rd_data(C_OUTPUT_WIDTH-1 downto 0), 
			MD   	=> DPM3_rd_data(C_OUTPUT_WIDTH-1 downto 0), 
			S    	=> OUT_MUX_CONTROL_D, 
			SCLR	=> was_SCLR,
			CLK  	=> clk, 
			CE   	=> I_CE_AND_I_DV_delayed, 
			Q    	=> XK_IM);


	XN_index		<= IN_ADDR;
	XK_index		<= OUT_ADDR_del_XK;
	RFD			<= I_RFD;
	BUSY			<= I_BUSY;	
	DV				<= I_DATA_VALID;

END xilinx;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.fft20_pkg.all;
USE XilinxCoreLib.fft20_comps.all;
USE XilinxCoreLib.fft20_bb_comps.all;

LIBRARY xilinxcorelib;
USE xilinxcorelib.c_reg_fd_v6_0_comp.all;
USE xilinxcorelib.c_accum_v6_0_comp.all;

entity xfft_v2_0_c is
    generic (
        C_DATA_MEM_TYPE     : integer := 1;
        C_HAS_BFP           : integer := 0;
        C_HAS_CE            : integer := 0;
        C_HAS_NFFT          : integer := 1;
        C_HAS_OVFLO         : integer := 1;
        C_HAS_ROUNDING      : integer := 1;
        C_HAS_SCALING       : integer := 1;
        C_HAS_SCLR          : integer := 0;
        C_INPUT_WIDTH       : integer := 16;
        C_NFFT_MAX          : integer := 10;
        C_OUTPUT_WIDTH      : integer := 16;
        C_TWIDDLE_MEM_TYPE  : integer := 1;
        C_TWIDDLE_WIDTH     : integer := 17 );
    port (
        CE              : in std_logic;   
        CLK             : in std_logic;   
        FWD_INV         : in std_logic;   
        FWD_INV_WE      : in std_logic;   
        NFFT            : in std_logic_vector(3 downto 0);   
        NFFT_WE         : in std_logic;   
        SCALE_SCH       : in std_logic_vector(get_scale_sch_width(C_NFFT_MAX, 2)-1 downto 0);   
        SCALE_SCH_WE    : in std_logic;   
        SCLR            : in std_logic;   
        START           : in std_logic;   
        UNLOAD          : in std_logic;   
        XN_RE           : in std_logic_vector(C_INPUT_WIDTH-1 downto 0);   
        XN_IM           : in std_logic_vector(C_INPUT_WIDTH-1 downto 0);   
        BLK_EXP         : out std_logic_vector(3 downto 0);  
        BUSY            : out std_logic;   
        DONE            : out std_logic;   
        DV              : out std_logic;   
        EDONE           : out std_logic;   
        OVFLO           : out std_logic;   
        RFD             : out std_logic;   
        XK_IM           : out std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);   
        XN_INDEX        : out std_logic_vector(C_NFFT_MAX-1 downto 0);   
        XK_INDEX        : out std_logic_vector(C_NFFT_MAX-1 downto 0);   
        XK_RE           : out std_logic_vector(C_OUTPUT_WIDTH-1 downto 0) );   
end xfft_v2_0_c;

architecture xilinx of xfft_v2_0_c is

    constant C_HAS_OVERFLOW             : integer := C_HAS_SCALING*(1-C_HAS_BFP);
    
    
    constant SIN_COS_DELAY              : integer := 1+ get_sin_cos_pipe_stages(C_TWIDDLE_MEM_TYPE, C_NFFT_MAX, C_TWIDDLE_WIDTH);
    constant PE_DELAY                   : integer := pe_latency(C_OUTPUT_WIDTH, C_TWIDDLE_WIDTH, 1, C_HAS_SCALING, C_HAS_ROUNDING)-1;
    constant MULT_DELAY                 : integer := mult_latency(C_OUTPUT_WIDTH+1, C_TWIDDLE_WIDTH)+2;
    constant SWITCH_DELAY               : integer := 1;
    constant MUX_DELAY                  : integer := 1;
    constant MEM_DELAY                  : integer := 1; 
    constant RW_ADDR_GEN_DELAY          : integer := 2;
    constant IO_ADDR_GEN_DELAY          : integer := 1; 
    constant TW_ADDR_GEN_DELAY          : integer := 2; 
    constant OUT_ADDR_GEN_DELAY         : integer := 0;
    constant INPUT_MEM_WR_DELAY         : integer := 3;
    

    
    constant IN_ADDR_GEN_DELAY          : integer := INPUT_MEM_WR_DELAY-IO_ADDR_GEN_DELAY;
    constant WR_ADDR_DELAY              : integer := MUX_DELAY+MEM_DELAY+SWITCH_DELAY+PE_DELAY+SWITCH_DELAY;
    constant WE_PROCESS_DELAY           : integer := RW_ADDR_GEN_DELAY+MUX_DELAY+MEM_DELAY+SWITCH_DELAY+PE_DELAY+SWITCH_DELAY;
    constant I_SW_CONTROL_DELAY         : integer := MUX_DELAY+MEM_DELAY;
    constant TWIDDLE_GEN_DELAY          : integer := RW_ADDR_GEN_DELAY+MUX_DELAY+MEM_DELAY+SWITCH_DELAY-TW_ADDR_GEN_DELAY-SIN_COS_DELAY;
    constant O_SW_CONTROL_DELAY         : integer := SWITCH_DELAY+PE_DELAY;
    constant SCALE_DELAY                : integer := RW_ADDR_GEN_DELAY+MUX_DELAY+MEM_DELAY+SWITCH_DELAY+MULT_DELAY;
    constant OVERFLOW_DELAY             : integer := RW_ADDR_GEN_DELAY+MUX_DELAY+MEM_DELAY+SWITCH_DELAY+MULT_DELAY+1;
    constant INPUT_RANGER_DELAY         : integer := INPUT_MEM_WR_DELAY+1;
    constant RANGING_EN_PROCESS_DELAY   : integer := RW_ADDR_GEN_DELAY+MUX_DELAY+MEM_DELAY+SWITCH_DELAY+PE_DELAY+2;
    
    
    constant CE_RANK_4_SCALE_DELAY      : integer := RW_ADDR_GEN_DELAY+MUX_DELAY+MEM_DELAY+SWITCH_DELAY+MULT_DELAY+1; 
    constant OUT_MUX_SELECT_DELAY       : integer := RW_ADDR_GEN_DELAY-MUX_DELAY-1;
    constant OUT_MUX_SEL_DELAY          : integer := OUT_ADDR_GEN_DELAY+MEM_DELAY+MUX_DELAY+1;
    constant XK_ADDR_DELAY              : integer := OUT_ADDR_GEN_DELAY+MEM_DELAY+MUX_DELAY+2;
    constant OUT_RD_ADDR_DELAY          : integer := OUT_ADDR_GEN_DELAY+1; 
    constant RD_ADDR_MUX_CONTROL_DELAY  : integer := OUT_ADDR_GEN_DELAY+MEM_DELAY;
    constant DATA_VALID_DELAY           : integer := OUT_ADDR_GEN_DELAY+MEM_DELAY+MUX_DELAY+2;

    constant SCALE_SCH_WIDTH            : integer := get_scale_sch_width(C_NFFT_MAX, 2);
    constant ZEROS                      : std_logic_vector(19 downto 0) := "00000000000000000000";
   
    signal xn_re_padded                 : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
    signal xn_im_padded                 : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
    signal i_nfft                       : std_logic_vector(3 downto 0);
    signal i_ce                         : std_logic;
    signal i_sclr                       : std_logic;
    signal i_ce_and_scale_sch_we        : std_logic;
    signal pr_start                     : std_logic;
    signal pr_start_d                   : std_logic;
    signal gnd                          : std_logic;
    signal vcc                          : std_logic;
    signal ce_rank_0                    : std_logic;
    signal ce_rn_0                      : std_logic;
    signal rn_0                         : std_logic_vector(C_NFFT_MAX-2 downto 0);  
    signal rn_tw                        : std_logic_vector(C_NFFT_MAX-2 downto 0);  
    signal rank_0                       : std_logic_vector(3 downto 0);  
    signal rank_scale                   : std_logic_vector(3 downto 0);  
    signal rank_tw                      : std_logic_vector(3 downto 0);  
    signal last_rank                    : std_logic;
    signal second_rank                  : std_logic;
    signal i_scale_sch                  : std_logic_vector(19 downto 0);
    signal i_scale_sch_reg              : std_logic_vector(SCALE_SCH_WIDTH-1 downto 0);
    signal i_scale_sch_tmp              : std_logic_vector(SCALE_SCH_WIDTH-1 downto 0);   
    signal i_ce_and_fwd_inv_we          : std_logic;
    signal i_fwd_inv                    : std_logic;
    signal fwd_inv_v                    : std_logic_vector(0 downto 0);
    signal i_fwd_inv_v                  : std_logic_vector(0 downto 0);
    signal switch_en0                   : std_logic;
    signal switch_en1                   : std_logic;
    signal i_switch_en0                 : std_logic;
    signal i_switch_en1                 : std_logic;
    signal o_switch_en0                 : std_logic;
    signal o_switch_en1                 : std_logic;
    signal out_mux_control              : std_logic_vector(0 downto 0);
    signal out_mux_control_d            : std_logic_vector(0 downto 0);
    signal o_mux_control                : std_logic_vector(0 downto 0);
    signal io_mux_control               : std_logic_vector(0 downto 0);
    signal rfd_4_out_mux_selector       : std_logic;
    signal rfd_4_wr_mux                 : std_logic;
    signal rfd_4_ranger_mux             : std_logic;
    signal xor_out_addr                 : std_logic;
    signal out_addr                     : std_logic_vector(C_NFFT_MAX-1 downto 0); 
    signal out_addr_del_xk              : std_logic_vector(C_NFFT_MAX-1 downto 0);     
    signal in_addr                      : std_logic_vector(C_NFFT_MAX-1 downto 0); 
    signal inp_addr                     : std_logic_vector(C_NFFT_MAX-1 downto 0); 
    signal in_wr_addr                   : std_logic_vector(C_NFFT_MAX-2 downto 0); 
    signal out_rd_addr                  : std_logic_vector(C_NFFT_MAX-2 downto 0); 
    signal we0                          : std_logic;
    signal we1                          : std_logic;
    signal we_process                   : std_logic;
    signal we_mem_0                     : std_logic;
    signal we_mem_1                     : std_logic;
    signal rd_en                        : std_logic;
    signal scaling                      : std_logic_vector(1 downto 0); 
    signal pe_overflow                  : std_logic;
    signal i_ce_and_start_pr            : std_logic;
    signal i_ce_and_rank_ce_4_expgen    : std_logic;
    signal data_range                   : std_logic_vector(1 downto 0);
    signal in_range                     : std_logic_vector(1 downto 0);
    signal scaling_necessarry           : std_logic_vector(1 downto 0);
    signal rd_addr_mux_control          : std_logic_vector(1 downto 0);    
    signal exp_grow                     : std_logic_vector(1 downto 0);
    signal muxed_range                  : std_logic_vector(1 downto 0);
    signal pe_ranger_enabled            : std_logic;
    signal i_rfd                        : std_logic;
    signal i_busy                       : std_logic;
    signal i_ovflo                      : std_logic;
    signal i_dv                         : std_logic;
    signal rank_ce_4_ranger             : std_logic;
    signal rank_ce_4_expgen             : std_logic;
    signal dv_to_out_mux_select         : std_logic;
    signal i_data_valid                 : std_logic;
    signal i_ce_and_i_dv_delayed        : std_logic;
    signal pr_start_d_ovflo             : std_logic;
    signal i_busy_d_ovflo               : std_logic;
    signal i_fwd_inv_tmp                : std_logic;
    signal gnd_vector                   : std_logic_vector(C_NFFT_MAX-1 downto 0);
    signal zero_vec_output              : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
    signal zero_vec_scale               : std_logic_vector(19 downto 0);

    
    signal rd_addr_0                    : std_logic_vector(C_NFFT_MAX-2 downto 0); 
    signal rd_addr_1                    : std_logic_vector(C_NFFT_MAX-2 downto 0); 
    
    signal wr_addr_0                    : std_logic_vector(C_NFFT_MAX-2 downto 0); 
    signal wr_addr_1                    : std_logic_vector(C_NFFT_MAX-2 downto 0); 
    
    signal muxed_wr_addr_0              : std_logic_vector(C_NFFT_MAX-2 downto 0); 
    signal muxed_wr_addr_1              : std_logic_vector(C_NFFT_MAX-2 downto 0); 
    signal muxed_rd_addr_0              : std_logic_vector(C_NFFT_MAX-2 downto 0); 
    signal muxed_rd_addr_1              : std_logic_vector(C_NFFT_MAX-2 downto 0); 
    
    signal muxed_wr_data_re_0           : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0); 
    signal muxed_wr_data_re_1           : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0); 
    signal muxed_wr_data_im_0           : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0); 
    signal muxed_wr_data_im_1           : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0); 
    
    signal switched_in_data_0_re        : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0); 
    signal switched_in_data_1_re        : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0); 
    signal switched_in_data_0_im        : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0); 
    signal switched_in_data_1_im        : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0); 
    
    signal switched_out_data_0_re       : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0); 
    signal switched_out_data_1_re       : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0); 
    signal switched_out_data_0_im       : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0); 
    signal switched_out_data_1_im       : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0); 
    
    signal mem0_wr_data                 : std_logic_vector(2*C_OUTPUT_WIDTH-1 downto 0); 
    signal mem1_wr_data                 : std_logic_vector(2*C_OUTPUT_WIDTH-1 downto 0); 
    
    signal mem0_rd_data                 : std_logic_vector(2*C_OUTPUT_WIDTH-1 downto 0); 
    signal mem1_rd_data                 : std_logic_vector(2*C_OUTPUT_WIDTH-1 downto 0); 
    
    signal twiddle_re                   : std_logic_vector(C_TWIDDLE_WIDTH-1 downto 0); 
    signal twiddle_im                   : std_logic_vector(C_TWIDDLE_WIDTH-1 downto 0); 
    
    signal twiddle_addr                 : std_logic_vector(C_NFFT_MAX-1 downto 0); 
    
    signal pe_out0_re                   : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0); 
    signal pe_out0_im                   : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0); 
    signal pe_out1_re                   : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0); 
    signal pe_out1_im                   : std_logic_vector(C_OUTPUT_WIDTH-1 downto 0); 
    signal xn_re_msb                    : std_logic; 
    signal xn_im_msb                    : std_logic; 
    signal ld_start                     : std_logic; 
    signal i_ce_and_ld_start_delayed    : std_logic; 
    signal ld_start_delayed             : std_logic;
    signal was_sclr                     : std_logic;
    signal xn_re_in_range               : std_logic_vector(3 downto 0);
    signal xn_im_in_range               : std_logic_vector(3 downto 0);
     
begin

    gnd <= '0';
    vcc <= '1';
    gnd_vector <= (others => '0');
    zero_vec_output <= (others => '0');
    zero_vec_scale <= (others => '0');

    xn_re_msb <= xn_re(C_INPUT_WIDTH-1);
    xn_im_msb <= xn_im(C_INPUT_WIDTH-1);
    xn_re_padded(C_INPUT_WIDTH-1 downto 0) <= xn_re;
    xn_im_padded(C_INPUT_WIDTH-1 downto 0) <= xn_im;
    padding_xn: if (C_INPUT_WIDTH < C_OUTPUT_WIDTH) generate
        padding_with_msb: for i in C_OUTPUT_WIDTH-1 downto C_INPUT_WIDTH generate
            xn_re_padded(i) <= xn_re_msb;
            xn_im_padded(i) <= xn_im_msb;
        end generate;
    end generate;

    write_data_mux_re0: fft20_mux_bus2 
        generic map (
            c_width => C_OUTPUT_WIDTH )
        port map (
            ma      => switched_out_data_0_re,
            mb      => xn_re_padded,  
            s       => rfd_4_wr_mux,
            clk     => clk, 
            ce      => i_ce, 
            q       => muxed_wr_data_re_0 );

    write_data_mux_im0: fft20_mux_bus2 
        generic map (
            c_width => C_OUTPUT_WIDTH )
        port map (
            ma      => switched_out_data_0_im,
            mb      => xn_im_padded,  
            s       => rfd_4_wr_mux,
            clk     => clk, 
            ce      => i_ce, 
            q       => muxed_wr_data_im_0 );

    write_data_mux_re1: fft20_mux_bus2 
        generic map (
            c_width => C_OUTPUT_WIDTH )
        port map (
            ma      => switched_out_data_1_re,
            mb      => xn_re_padded,  
            s       => rfd_4_wr_mux,
            clk     => clk, 
            ce      => i_ce, 
            q       => muxed_wr_data_re_1 );

    write_data_mux_im1: fft20_mux_bus2 
        generic map (
            c_width => C_OUTPUT_WIDTH )
        port map (
            ma      => switched_out_data_1_im,
            mb      => xn_im_padded,  
            s       => rfd_4_wr_mux,
            clk     => clk, 
            ce      => i_ce, 
            q       => muxed_wr_data_im_1 );
            
    delay_line2_for_rfd: fft20_shift_ram_1
        generic map (
            c_depth => INPUT_MEM_WR_DELAY )
        port map (
            d       => i_rfd,
            clk     => clk,
            ce      => i_ce,
            q       => rfd_4_wr_mux );

    mem0_wr_data(2*C_OUTPUT_WIDTH-1 downto C_OUTPUT_WIDTH)  <= muxed_wr_data_re_0;
    mem0_wr_data(C_OUTPUT_WIDTH-1 downto 0)                 <= muxed_wr_data_im_0;
    mem1_wr_data(2*C_OUTPUT_WIDTH-1 downto C_OUTPUT_WIDTH)  <= muxed_wr_data_re_1;
    mem1_wr_data(C_OUTPUT_WIDTH-1 downto 0)                 <= muxed_wr_data_im_1;

    blkmem_gen: if (C_DATA_MEM_TYPE = 1) generate

        dpm0: fft20_dpm 
            generic map ( 
                width   => 2*C_OUTPUT_WIDTH, 
                depth   => C_NFFT_MAX-1,
                delay   => MEM_DELAY )
            port map (
                addra   => muxed_wr_addr_0, 
                addrb   => muxed_rd_addr_0, 
                clk     => clk, 
                ena     => i_ce,
                enb     => rd_en, 
                wea     => we_mem_0, 
                dina    => mem0_wr_data, 
                doutb   => mem0_rd_data );

        dpm1: fft20_dpm 
            generic map ( 
                width   => 2*C_OUTPUT_WIDTH, 
                depth   => C_NFFT_MAX-1,
                delay   => MEM_DELAY )
            port map (
                addra   => muxed_wr_addr_1, 
                addrb   => muxed_rd_addr_1, 
                clk     => clk, 
                ena     => i_ce,
                enb     => rd_en, 
                wea     => we_mem_1, 
                dina    => mem1_wr_data, 
                doutb   => mem1_rd_data );

    end generate;            

    distmem_gen: if (C_DATA_MEM_TYPE = 0) generate

        distmem0: fft20_dist_mem
            generic map(
                delay	=> MEM_DELAY,
                depth	=> C_NFFT_MAX-1,		
                width   => 2*C_OUTPUT_WIDTH )
            port map(
                addra   => muxed_wr_addr_0,
                addrb   => muxed_rd_addr_0,
                clk     => clk,
                dina    => mem0_wr_data,
                ena     => i_ce,
                enb     => rd_en,
                wea     => we_mem_0,
                doutb   => mem0_rd_data );
    
        distmem1: fft20_dist_mem
            generic map(
                delay	=> MEM_DELAY,
                depth	=> C_NFFT_MAX-1,		
                width   => 2*C_OUTPUT_WIDTH )
            port map(
                addra   => muxed_wr_addr_1,
                addrb   => muxed_rd_addr_1,
                clk     => clk,
                dina    => mem1_wr_data,
                ena     => i_ce,
                enb     => rd_en,
                wea     => we_mem_1,
                doutb   => mem1_rd_data );
    
    end generate;

    io_address_gen: fft20_r2_in_addr
        generic map (
            c_nfft_max    => C_NFFT_MAX )
        port map (
            ce          => i_ce, 
            clk         => clk, 
            nfft        => i_nfft,
            rn          => inp_addr,
            addr        => in_wr_addr,
            we0         => we0,
            we1         => we1 ); 

    delay_line_for_inp_add: fft20_shift_ram
        generic map (
            c_depth => IN_ADDR_GEN_DELAY,
            c_width => C_NFFT_MAX )
        port map (
            d       => in_addr,
            clk     => clk,
            ce      => i_ce,
            q       => inp_addr );

    processing_address_generator: fft20_r2_rw_addr
        generic map(
            c_nfft_max  => C_NFFT_MAX )
        port map (
            ce          => i_ce,
            clk         => clk,
            nfft        => i_nfft,
            rank        => rank_0,
            rn          => rn_0,
            addr0       => rd_addr_0,
            addr1       => rd_addr_1,
            en0         => switch_en0,
            en1         => switch_en1 );

    delay_line_for_wr_addr_0: fft20_shift_ram
        generic map (
            c_depth => WR_ADDR_DELAY,
            c_width => C_NFFT_MAX-1 )                              
        port map (
            d       => rd_addr_0,
            clk     => clk,
            ce      => i_ce,
            q       => wr_addr_0 );

    delay_line_for_wr_addr_1: fft20_shift_ram
        generic map (
            c_depth => WR_ADDR_DELAY,
            c_width => C_NFFT_MAX-1 )
        port map (
            d       => rd_addr_1,
            clk     => clk,
            ce      => i_ce,
            q       => wr_addr_1 );

    write_addr_mux0: fft20_mux_bus2
        generic map (
            c_width => C_NFFT_MAX-1 )
        port map (
            ma      => wr_addr_0,
            mb      => in_wr_addr,  
            s       => rfd_4_wr_mux,
            clk     => clk, 
            ce      => i_ce, 
            q       => muxed_wr_addr_0 );

    write_addr_mux1: fft20_mux_bus2 
        generic map (
            c_width => C_NFFT_MAX-1 )
        port map (
            ma      => wr_addr_1,
            mb      => in_wr_addr,  
            s       => rfd_4_wr_mux,
            clk     => clk, 
            ce      => i_ce, 
            q       => muxed_wr_addr_1 );

    delay_line_for_we_process: fft20_shift_ram_1
        generic map (
            c_depth => WE_PROCESS_DELAY )
        port map (                                                
            d       => ce_rn_0,                            
            clk     => clk,
            ce      => i_ce,
            q       => we_process );

    we_mem_0_gen: fft20_c_lut_reg
        generic map (
            eqn => "i0*i2+i1*(~i2)" )
        port map (
            i0  => we0,
            i1  => we_process, 
            i2  => rfd_4_wr_mux,
            i3  => vcc, 
            clk => clk, 
            ce  => i_ce,
            q   => we_mem_0 );

    we_mem_1_gen: fft20_c_lut_reg
        generic map (
            eqn => "i0*i2+i1*(~i2)" )
        port map (
            i0  => we1,
            i1  => we_process, 
            i2  => rfd_4_wr_mux,
            i3  => vcc, 
            clk => clk, 
            ce  => i_ce,
            q   => we_mem_1 );

    read_addr_mux0: fft20_mux_bus
        generic map (
            c_width     => C_NFFT_MAX-1,
            c_inputs    => 4,
            c_sel_width => 2 )
        port map (
            ma          => rd_addr_0,
            mb          => in_wr_addr,  
            mc          => out_rd_addr,  
            md          => out_rd_addr,  
            s           => rd_addr_mux_control,
            clk         => clk, 
            ce          => i_ce, 
            q           => muxed_rd_addr_0 );

    read_addr_mux1: fft20_mux_bus
        generic map (
            c_width     => C_NFFT_MAX-1,
            c_inputs    => 4,
            c_sel_width => 2 )
        port map (
            ma          => rd_addr_1,
            mb          => in_wr_addr,  
            mc          => out_rd_addr,  
            md          => out_rd_addr,  
            s           => rd_addr_mux_control,
            clk         => clk, 
            ce          => i_ce, 
            q           => muxed_rd_addr_1 );

    delay_line_for_rd_addr_mux_control_0: fft20_shift_ram_1
        generic map (
            c_depth => RD_ADDR_MUX_CONTROL_DELAY )
        port map (
            d       => i_rfd,
            clk     => clk,
            ce      => i_ce,
            q       => rd_addr_mux_control(0) );
            
    delay_line_for_rd_addr_mux_control_1: fft20_shift_ram_1
        generic map (
            c_depth => RD_ADDR_MUX_CONTROL_DELAY )
        port map (
            d       => i_dv,
            clk     => clk,
            ce      => i_ce,
            q       => rd_addr_mux_control(1) );

    rd_en <= i_ce;
    
    i_switch_re0: fft20_mux_bus2
	    generic map (
		    c_width => C_OUTPUT_WIDTH )
	    port map (
		    ma  => mem0_rd_data(2*C_OUTPUT_WIDTH-1 downto C_OUTPUT_WIDTH), 
		    mb  => mem1_rd_data(2*C_OUTPUT_WIDTH-1 downto C_OUTPUT_WIDTH),
		    s   => i_switch_en0,
		    clk => clk,
		    ce  => i_ce,
		    q   => switched_in_data_0_re ); 

    i_switch_im0: fft20_mux_bus2
	    generic map (
		    c_width => C_OUTPUT_WIDTH )
	    port map (
		    ma  => mem0_rd_data(C_OUTPUT_WIDTH-1 downto 0), 
		    mb  => mem1_rd_data(C_OUTPUT_WIDTH-1 downto 0),
		    s   => i_switch_en0,
		    clk => clk,
		    ce  => i_ce,
		    q   => switched_in_data_0_im ); 

    i_switch_re1: fft20_mux_bus2
	    generic map (
		    c_width => C_OUTPUT_WIDTH )
	    port map(
		    ma  => mem0_rd_data(2*C_OUTPUT_WIDTH-1 downto C_OUTPUT_WIDTH), 
		    mb  => mem1_rd_data(2*C_OUTPUT_WIDTH-1 downto C_OUTPUT_WIDTH),
		    s   => i_switch_en1,
		    clk => clk,
		    ce  => i_ce,
		    q   => switched_in_data_1_re ); 

    i_switch_im1: fft20_mux_bus2
	    generic map (
		    c_width => C_OUTPUT_WIDTH )
	    port map (
		    ma  => mem0_rd_data(C_OUTPUT_WIDTH-1 downto 0), 
		    mb  => mem1_rd_data(C_OUTPUT_WIDTH-1 downto 0),
		    s   => i_switch_en1,
		    clk => clk,
		    ce  => i_ce,
		    q   => switched_in_data_1_im ); 

     delay_line_for_i_sw_control_0: fft20_shift_ram_1
         generic map (
             c_depth => I_SW_CONTROL_DELAY )
         port map (
             d       => switch_en0,
             clk     => clk,
             ce      => i_ce,
             q       => i_switch_en0 );

     delay_line_for_i_sw_control_1: fft20_shift_ram_1
         generic map (
             c_depth => I_SW_CONTROL_DELAY )
         port map (
             d       => switch_en1,
             clk     => clk,
             ce      => i_ce,
             q       => i_switch_en1 );

    pe: fft20_r2_pe
        generic map (
            btrfly_width    => C_OUTPUT_WIDTH+4,
            c_has_overflow  => C_HAS_OVERFLOW,
            c_has_rounding  => C_HAS_ROUNDING,
            c_has_scaling   => C_HAS_SCALING,
            io_width        => C_OUTPUT_WIDTH,
            mult_latency    => MULT_DELAY, 
            tw_width        => C_TWIDDLE_WIDTH )
        port map (
            ce              => i_ce,
            clk             => clk,
            i0_im           => switched_in_data_0_im,
            i0_re           => switched_in_data_0_re,
            i1_im           => switched_in_data_1_im,
            i1_re           => switched_in_data_1_re,
            scale           => scaling,
            tw_im           => twiddle_im,
            tw_re           => twiddle_re,
            o0_im           => pe_out0_im,
            o0_re           => pe_out0_re,
            o1_im           => pe_out1_im,
            o1_re           => pe_out1_re,
            ovflo           => pe_overflow );

    twiddle_generator: fft20_sin_cos
        generic map ( 
            mem_type        => C_TWIDDLE_MEM_TYPE,
            theta_width     => C_NFFT_MAX,
            twiddle_width   => C_TWIDDLE_WIDTH )
        port map (
            theta   => twiddle_addr, 
            clk     => clk,     
            ce      => i_ce, 
            sine    => twiddle_im, 
            cosine  => twiddle_re );

    twiddle_address_generator: fft20_r2_tw_addr
        generic map (
            c_nfft_max  => C_NFFT_MAX )
        port map (
            ce          => i_ce,
            clk         => clk,
            fwd_inv     => i_fwd_inv,
            rank        => rank_tw,
            rn          => rn_tw,
            tw_addr     => twiddle_addr );

    delay_line_for_fft20_twiddle_rn: fft20_shift_ram
        generic map (
            c_depth => TWIDDLE_GEN_DELAY,
            c_width => C_NFFT_MAX-1 )
        port map (
            d       => rn_0,
            clk     => clk,
            ce      => i_ce,
            q       => rn_tw );

    delay_line_for_fft20_twiddle_rank: fft20_shift_ram
        generic map (
            c_depth => TWIDDLE_GEN_DELAY,
            c_width => 4 )
        port map (
            d       => rank_0,
            clk     => clk,
            ce      => i_ce,
            q       => rank_tw  );    

    no_scaling: if (C_HAS_SCALING = 0) generate
        scaling <= "00";
    end generate;

    sch_schedule_from_port: if (C_HAS_SCALING = 1) and (C_HAS_BFP = 0) generate 

        delay_line_for_pr_start_d_ovflo: fft20_shift_ram_1
            generic map (
                c_depth => OVERFLOW_DELAY )
            port map (
                d       => pr_start,
                clk     => clk,
                ce      => i_ce,
                q       => pr_start_d_ovflo );

        delay_line_for_i_busy_d_ovflo: fft20_shift_ram_1
            generic map (
                c_depth => OVERFLOW_DELAY )
            port map (
                d       => i_busy,
                clk     => clk,
                ce      => i_ce,
                q       => i_busy_d_ovflo );

        ovflow_register: fft20_c_lut_reg_sclr
            generic map (
                eqn => "(i0+(i3*i2))*(~i1)" )
            port map (
             i0     => i_ovflo,
             i1     => pr_start_d_ovflo, 
             i2     => i_busy_d_ovflo,
             i3     => pe_overflow, 
             clk    => clk, 
             ce     => i_ce,
             sclr   => was_sclr,
             q      => i_ovflo );
        
        ovflo <= i_ovflo;

        scale_sch_reg: c_reg_fd_v6_0
            generic map (
                c_width         => SCALE_SCH_WIDTH,
                c_ainit_val     => default_r2_scale_sch(C_NFFT_MAX),
                c_sinit_val     => default_r2_scale_sch(C_NFFT_MAX),
                c_sync_priority => 1,
                c_sync_enable   => 0,
                c_has_ce        => 1,
                c_has_aclr      => 0,
                c_has_aset      => 0,
                c_has_ainit     => 1,
                c_has_sclr      => 0,
                c_has_sset      => 0,
                c_has_sinit     => 1,
                c_enable_rlocs  => 1 )
            port map (
                d       => scale_sch,
                clk     => clk,
                ce      => i_ce_and_scale_sch_we,
                aclr    => gnd,
                aset    => gnd,
                ainit   => gnd,
                sclr    => gnd,
                sset    => gnd,
                sinit   => i_sclr,
                q       => i_scale_sch_tmp );
                
        i_ce_and_scale_sch_we_gen: fft20_c_lut
            generic map (
                eqn => "i0*i1" )
            port map (
                i0  => i_ce, 
                i1  => scale_sch_we,
                i2  => vcc, 
                i3  => vcc, 
                o   => i_ce_and_scale_sch_we );


         double_buffer_scale_sch: fft20_reg_fde
             generic map (
                data_width  => SCALE_SCH_WIDTH )
             port map (
                clk         => clk,
                ce          => i_ce_and_ld_start_delayed,
                d           => i_scale_sch_tmp,
                q           => i_scale_sch_reg );
        
        i_scale_sch(SCALE_SCH_WIDTH-1 downto 0) <= i_scale_sch_reg;        

        padd_i_scale_sch: if (C_NFFT_MAX < 10) generate
            bit_by_bit: for i in SCALE_SCH_WIDTH to 19 generate
                i_scale_sch(i) <= zero_vec_scale(i);
            end generate;    
        end generate;

        delay_line_for_rank_scale: fft20_shift_ram
            generic map (
                c_depth => SCALE_DELAY,
                c_width => 4 )
            port map (
                d       => rank_0,
                clk     => clk,
                ce      => i_ce,
                q       => rank_scale );

        sch_scale_mux: fft20_mux_bus16
            generic map (
                c_width     => 2,
                c_inputs    => 10,
                c_sel_width => 4)
            port map (
                ma          => i_scale_sch(1 downto 0),
                mb          => i_scale_sch(3 downto 2),  
                mc          => i_scale_sch(5 downto 4),
                md          => i_scale_sch(7 downto 6),  
                me          => i_scale_sch(9 downto 8),
                mf          => i_scale_sch(11 downto 10),  
                mg          => i_scale_sch(13 downto 12),
                mh          => i_scale_sch(15 downto 14),  
                maa         => i_scale_sch(17 downto 16),  
                mab         => i_scale_sch(19 downto 18),
                mac         => gnd_vector(1 downto 0),
                mad         => gnd_vector(1 downto 0),
                mae         => gnd_vector(1 downto 0),
                maf         => gnd_vector(1 downto 0),
                mag         => gnd_vector(1 downto 0),
                mah         => gnd_vector(1 downto 0),
                s           => rank_scale,
                clk         => clk, 
                ce          => i_ce, 
                q           => scaling );
    end generate;

    bfp_scaling: if (C_HAS_BFP = 1) generate 

        xn_re_in_range(2 downto 0) <= xn_re_padded(C_OUTPUT_WIDTH-1 downto C_OUTPUT_WIDTH-3);
        xn_re_in_range(3) <= xn_re_padded(C_OUTPUT_WIDTH-1); 
        xn_im_in_range(2 downto 0) <= xn_im_padded(C_OUTPUT_WIDTH-1 downto C_OUTPUT_WIDTH-3);
        xn_im_in_range(3) <= xn_im_padded(C_OUTPUT_WIDTH-1); 
        
        fft20_input_ranger_inst: fft20_ranger
            port map (
                re      => xn_re_in_range,
                im      => xn_im_in_range,
                rang    => in_range,
                clk     => clk,
                ce      => i_ce );

        pe_ranger_inst: fft20_r2_ranger
	        port map (
                ai => pe_out0_im(C_OUTPUT_WIDTH-1 downto C_OUTPUT_WIDTH-3),
                ar => pe_out0_re(C_OUTPUT_WIDTH-1 downto C_OUTPUT_WIDTH-3),
                bi => pe_out1_im(C_OUTPUT_WIDTH-1 downto C_OUTPUT_WIDTH-3),
                br => pe_out1_re(C_OUTPUT_WIDTH-1 downto C_OUTPUT_WIDTH-3),
                o_range => data_range,
                ce => i_ce,
                clk => clk );
                    
        delay_line_for_rfd: fft20_shift_ram_1
            generic map (
                c_depth => INPUT_RANGER_DELAY )
            port map (
                d       => i_rfd,
                clk     => clk,
                ce      => i_ce,
                q       => rfd_4_ranger_mux );

        delay_line_4_process_scale: fft20_shift_ram_1
            generic map (
                c_depth   => RANGING_EN_PROCESS_DELAY) 
            port map (                                                
                d         => ce_rn_0,
                clk       => clk,
                ce        => i_ce,
                q         => pe_ranger_enabled );
              
        range_mux_h: fft20_c_lut            
            generic map (
                eqn => "i0*i1+(i2*i3*(~i1))" )
            port map (
                i0  => in_range(1),
                i1  => rfd_4_ranger_mux,
                i2  => data_range(1),
                i3  => pe_ranger_enabled, 
                o   => muxed_range(1) );
      
        range_mux_l: fft20_c_lut            
            generic map (
                eqn => "i0*i1+(i2*i3*(~i1))" )
            port map (
                i0  => in_range(0),
                i1  => rfd_4_ranger_mux, 
                i2  => data_range(0),
                i3  => pe_ranger_enabled, 
                o   => muxed_range(0) );

        delay_line_for_ce_rank_4_scale: fft20_shift_ram_1
            generic map (
                c_depth => CE_RANK_4_SCALE_DELAY ) 
            port map (
                d       => ce_rank_0,
                clk     => clk,
                ce      => i_ce,
                q       => rank_ce_4_ranger );

        scale_calc: fft20_r2_scale_logic
            port map (
                ce          => i_ce,
                clk         => clk,
                dyna_range  => muxed_range,
                exp_growth  => second_rank,
                first_data  => rank_ce_4_ranger,
                scale       => scaling );

        delay_line_for_pr_start_d: fft20_shift_ram_1
            generic map (
                c_depth => CE_RANK_4_SCALE_DELAY ) 
            port map (
                d       => pr_start,
                clk     => clk,
                ce      => i_ce,
                q       => pr_start_d );

        delay_line_for_ce_rank_4expgen: fft20_shift_ram_1
            generic map (
                c_depth => CE_RANK_4_SCALE_DELAY+1 ) 
            port map (
                d       => ce_rank_0,
                clk     => clk,
                ce      => i_ce,
                q       => rank_ce_4_expgen );

        i_ce_and_start_pr_gen: fft20_c_lut
            generic map (
                eqn => "i0*i1+i2" )
            port map (
                i0  => i_ce, 
                i1  => pr_start_d,
                i2  => was_sclr, 
                i3  => vcc, 
                o   => i_ce_and_start_pr );

        i_ce_and_rank_ce_4_exp_gen: fft20_c_lut
            generic map (
                eqn => "i0*(i1*i2+i3)" )
            port map (
                i0  => i_ce, 
                i1  => rank_ce_4_expgen,
                i2  => i_busy, 
                i3  => i_ce_and_start_pr, 
                o   => i_ce_and_rank_ce_4_expgen );

        exponent_generator : c_accum_v6_0
            generic map (
                c_has_ainit => 0,
                c_saturate => 0,
                c_has_s => 0,
                c_scale => 0,
                c_sync_enable => 0,
                c_has_sinit => 0,
                c_has_bypass_with_cin => 0,
                c_has_sset => 0,
                c_has_add => 0,
                c_has_ovfl => 0,
                c_has_q_b_out => 0,
                c_has_sclr => 1,
                c_out_width => 4,
                c_sinit_val => "0",
                c_bypass_low => 0,
                c_has_b_signed => 0,
                c_b_constant => 0,
                c_has_bypass => 0,
                c_low_bit => 0,
                c_has_aset => 0,
                c_has_q_c_out => 0,
                c_b_type => 1,
                c_add_mode => 0,
                c_has_q_ovfl => 0,
                c_has_aclr => 0,
                c_has_b_in => 0,
                c_has_c_in => 0,
                c_has_b_out => 0,
                c_pipe_stages => 0,
                c_sync_priority => 1,
                c_b_width => 2,
                c_b_value => "0",
                c_bypass_enable => 1,
                c_has_c_out => 0,
                c_enable_rlocs => 1,
                c_has_ce => 1,
                c_high_bit => 3,
                c_ainit_val => "0000" )
            port map (
                b       => scaling,
                q       => blk_exp,
                clk     => clk,
                ce      => i_ce_and_rank_ce_4_expgen,
                sclr    => i_ce_and_start_pr );
    end generate;

    o_switch_re0: fft20_mux_bus2
	    generic map (
		    c_width => C_OUTPUT_WIDTH )
	    port map (
		    ma  => pe_out0_re, 
		    mb  => pe_out1_re,
		    s   => o_switch_en0,
		    clk => clk,
		    ce  => i_ce,
		    q   => switched_out_data_0_re ); 
    
    o_switch_im0: fft20_mux_bus2
	    generic map (
		    c_width => C_OUTPUT_WIDTH )
	    port  map (
		    ma  => pe_out0_im, 
		    mb  => pe_out1_im,
		    s   => o_switch_en0,
		    clk => clk,
		    ce  => i_ce,
		    q   => switched_out_data_0_im ); 

    o_switch_re1: fft20_mux_bus2
	    generic map (
		    c_width => C_OUTPUT_WIDTH )
	    port map (
		    ma  => pe_out0_re, 
		    mb  => pe_out1_re,
		    s   => o_switch_en1,
		    clk => clk,
		    ce  => i_ce,
		    q   => switched_out_data_1_re ); 

    o_switch_im1: fft20_mux_bus2
	    generic map (
		    c_width => C_OUTPUT_WIDTH )
	    port map (
		    ma  => pe_out0_im, 
		    mb  => pe_out1_im,
		    s   => o_switch_en1,
		    clk => clk,
		    ce  => i_ce,
		    q   => switched_out_data_1_im ); 

     delay_line_for_o_sw_control0 : fft20_shift_ram_1
         generic map (
             c_depth => O_SW_CONTROL_DELAY )
         port map (
             d       => i_switch_en0,
             clk     => clk,
             ce      => i_ce,
             q       => o_switch_en0 );

     delay_line_for_o_sw_control1 : fft20_shift_ram_1
         generic map (
             c_depth => O_SW_CONTROL_DELAY )
         port map (
             d       => i_switch_en1,
             clk     => clk,
             ce      => i_ce,
             q       => o_switch_en1 );

    output_selector_re: fft20_mux_bus_sclr
        generic map (
            c_width     => C_OUTPUT_WIDTH,
            c_inputs    => 2,
            c_sel_width => 1 )
        port map (
            ma      => mem0_rd_data(2*C_OUTPUT_WIDTH-1 downto C_OUTPUT_WIDTH),
            mb      => mem1_rd_data(2*C_OUTPUT_WIDTH-1 downto C_OUTPUT_WIDTH),
            mc      => zero_vec_output(C_OUTPUT_WIDTH-1 downto 0),
            md      => zero_vec_output(C_OUTPUT_WIDTH-1 downto 0), 
            s       => out_mux_control_d,
            sclr    => was_sclr, 
            clk     => clk, 
            ce      => i_ce_and_i_dv_delayed, 
            q       => xk_re );

    output_selector_im: fft20_mux_bus_sclr
        generic map (
            c_width     => C_OUTPUT_WIDTH,
            c_inputs    => 2,
            c_sel_width => 1 )
        port map (
            ma      => mem0_rd_data(C_OUTPUT_WIDTH-1 downto 0),
            mb      => mem1_rd_data(C_OUTPUT_WIDTH-1 downto 0),
            mc      => zero_vec_output(C_OUTPUT_WIDTH-1 downto 0), 
            md      => zero_vec_output(C_OUTPUT_WIDTH-1 downto 0), 
            s       => out_mux_control_d,
            sclr    => was_sclr, 
            clk     => clk, 
            ce      => i_ce_and_i_dv_delayed, 
            q       => xk_im );

    output_addr: fft20_shift_ram
        generic map (
            c_depth => OUT_RD_ADDR_DELAY,
            c_width => C_NFFT_MAX-1 )
        port map (
            d       => out_addr(C_NFFT_MAX-1 downto 1),
            clk     => clk,
            ce      => i_ce,
            q       => out_rd_addr(C_NFFT_MAX-2 downto 0) );
                

    out_mux_sel: fft20_xor_bit_gate
        generic map (
            c_inputs => C_NFFT_MAX )
        port map (
            clk => clk,
            ce  => ce,
            i   => out_addr,
            q   => xor_out_addr );
            
    o_mux_control(0) <= xor_out_addr;
    
    out_mux_control_delay: fft20_shift_ram
        generic map (
            c_depth => MEM_DELAY+1,
            c_width => 1)
        port map (
            d       => o_mux_control, 
            clk     => clk, 
            ce      => i_ce, 
            q       => out_mux_control_d );

    delay_line_for_dv2: fft20_shift_ram_1
        generic map (
            c_depth => OUT_MUX_SEL_DELAY )
        port map (
            d       => i_dv,
            clk     => clk,
            ce      => i_ce,
            q       => dv_to_out_mux_select );

    output_en_gen: fft20_c_lut
        generic map (
            eqn => "i0*i1" )
        port map (
            i0  => i_ce,
            i1  => dv_to_out_mux_select, 
            i2  => vcc,
            i3  => vcc, 
            o   => i_ce_and_i_dv_delayed );

    cntrl: fft20_flow_control_c
        generic map (
            c_has_bfp   => C_HAS_BFP,
            c_has_nfft  => C_HAS_NFFT,
            c_nfft_max  => C_NFFT_MAX,
            pe_latency  => PE_DELAY+MEM_DELAY+2*MUX_DELAY+2*SWITCH_DELAY ) 
        port map (
            ce          => i_ce,
            clk         => clk,
            nfft        => nfft,
            nfft_we     => nfft_we,
            sclr        => i_sclr,
            start       => start,
            unload      => unload,
            busy        => i_busy,   
            ce_rank     => ce_rank_0,   
            ce_rn       => ce_rn_0,   
            done        => done,   
            dv          => i_dv,   
            edone       => edone,   
            in_addr     => in_addr,   
            last_rank   => last_rank,   
            ld_start    => ld_start,   
            nfft_out    => i_nfft,   
            out_addr    => out_addr,   
            pr_start    => pr_start,   
            rank_0      => rank_0,
            recent_sclr => was_sclr,
            rfd         => i_rfd,   
            rn_0        => rn_0,   
            second_rank => second_rank );

    i_ce_ce:    if (C_HAS_CE = 1)   generate i_ce <= ce; end generate;
    i_ce_1:     if (C_HAS_CE /= 1)  generate i_ce <= '1'; end generate;

    i_sclr_sclr:    if (C_HAS_SCLR = 1)     generate i_sclr <= sclr; end generate;
    i_sclr_0:       if (C_HAS_SCLR /= 1)    generate i_sclr <= '0'; end generate;

    fwd_inv_v(0) <= fwd_inv;

    fwd_inv_reg1: c_reg_fd_v6_0
        generic map (
            c_width         => 1,
            c_ainit_val     => "1",        
            c_sinit_val     => "1",
            c_sync_priority => 1,
            c_sync_enable   => 0,
            c_has_ce        => 1,
            c_has_aclr      => 0,
            c_has_aset      => 0,
            c_has_ainit     => 0,
            c_has_sclr      => 0,
            c_has_sset      => 0,
            c_has_sinit     => 1,
            c_enable_rlocs  => 1 )
        port map (
            d       => fwd_inv_v,
            clk     => clk,
            ce      => i_ce_and_fwd_inv_we,
            aclr    => gnd,
            aset    => gnd,
            ainit   => gnd,
            sclr    => gnd,
            sset    => gnd,
            sinit   => i_sclr,
            q       => i_fwd_inv_v );

    i_ce_and_fwd_inv_we_gen: fft20_c_lut
        generic map (
            eqn => "i0*i1" )
        port map (
            i0  => i_ce, 
            i1  => fwd_inv_we,
            i2  => vcc, 
            i3  => vcc, 
            o   => i_ce_and_fwd_inv_we );

    i_fwd_inv_tmp   <= i_fwd_inv_v(0);

    double_buffer_fwd_inv: fft20_fde 
        port map (
             d      => i_fwd_inv_tmp, 
             clk    => clk, 
             ce     => i_ce_and_ld_start_delayed, 
             q      => i_fwd_inv );

    delay_line_for_ld_start: fft20_shift_ram_1
        generic map (
            c_depth => 4 )
        port map (
            d       => ld_start,
            clk     => clk,
            ce      => i_ce,
            q       => ld_start_delayed ); 

    i_ce_and_ld_start_delayed_gen: fft20_c_lut
        generic map (
            eqn => "i0*i1" )
        port map (
            i0  => i_ce, 
            i1  => ld_start_delayed,
            i2  => vcc, 
            i3  => vcc, 
            o   => i_ce_and_ld_start_delayed );

    xn_index <= in_addr;
    
    delay_line_for_xk_index: fft20_shift_ram_sclr
        generic map (
            c_depth => XK_ADDR_DELAY,
            c_width => C_NFFT_MAX )
        port map (
            d       => out_addr,
            clk     => clk,
            ce      => i_ce,
            sclr    => was_sclr,
            q       => out_addr_del_xk );

    xk_index <= out_addr_del_xk;
    
    rfd <= i_rfd;
    busy <= i_busy;
        
    delay_line_for_dv3: fft20_shift_ram_1_sclr
        generic map (
            c_depth => DATA_VALID_DELAY )
        port map (
            d       => i_dv,
            clk     => clk,
            ce      => i_ce,
            sclr    => was_sclr,
            q       => i_data_valid );
            
    dv <= i_data_valid;

end xilinx;


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.fft20_comps.all;
USE XilinxCoreLib.fft20_pkg.all;

ENTITY xfft_v2_0 IS
	generic (
		C_ARCH					: integer := 1; 
		C_TWIDDLE_MEM_TYPE	: integer := 1; 
		C_DATA_MEM_TYPE		: integer := 1; 
		C_NFFT_MAX 				: integer := 10;	
		C_HAS_BYPASS 			: integer := 1;	
		C_HAS_NFFT 			   : integer := 1;	
		C_HAS_SCALING 			: integer := 1;	
		C_HAS_BFP 				: integer := 1;	
		C_HAS_ROUNDING			: integer := 1;	
		C_HAS_OVFLO 			: integer := 0;	
		C_HAS_CE 				: integer := 1;	
		C_HAS_SCLR 				: integer := 1;	
		C_INPUT_WIDTH 			: integer := 16;	
		C_TWIDDLE_WIDTH		: integer := 16;	
		C_OUTPUT_WIDTH			: integer := 16);	
	port (
		XN_RE				: IN std_logic_vector(C_INPUT_WIDTH-1 DOWNTO 0);   
		XN_IM				: IN std_logic_vector(C_INPUT_WIDTH-1 DOWNTO 0);   
		START				: IN std_logic;   
		UNLOAD			: IN std_logic := '0';   
		NFFT				: IN std_logic_vector(3 DOWNTO 0) := (others => '0');   
		NFFT_WE			: IN std_logic := '0';   
		FWD_INV			: IN std_logic := '1';   
		FWD_INV_WE	: IN std_logic := '0';   
		SCALE_SCH		: IN std_logic_vector(get_scale_sch_width(C_NFFT_MAX, C_ARCH)-1 DOWNTO 0) := (others => '0');   
		SCALE_SCH_WE: IN std_logic := '0';   
		SCLR				: IN std_logic := '0';   
		CE					: IN std_logic := '1';   
		CLK				  : IN std_logic;   
		XK_RE				: OUT std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0);   
		XK_IM				: OUT std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0);   
		XN_INDEX		: OUT std_logic_vector(C_NFFT_MAX-1 DOWNTO 0);   
		XK_INDEX		: OUT std_logic_vector(C_NFFT_MAX-1 DOWNTO 0);   
		RFD				  : OUT std_logic;   
		BUSY				: OUT std_logic;   
		DV					: OUT std_logic;   
		EDONE				: OUT std_logic;   
		DONE				: OUT std_logic;   
		BLK_EXP			: OUT std_logic_vector(3 DOWNTO 0);  
		OVFLO				: OUT std_logic);   

END xfft_v2_0;

ARCHITECTURE behavioral OF xfft_v2_0 IS

signal I_XN_RE				: std_logic_vector(C_INPUT_WIDTH-1 DOWNTO 0);   
signal I_XN_IM				: std_logic_vector(C_INPUT_WIDTH-1 DOWNTO 0);   
signal I_START				: std_logic;   
signal I_UNLOAD 			: std_logic;   
signal I_NFFT		  		: std_logic_vector(3 DOWNTO 0);   
signal I_NFFT_WE			: std_logic;   
signal I_FWD_INV			: std_logic;   
signal I_FWD_INV_WE		: std_logic;   
signal I_SCALE_SCH		: std_logic_vector(get_scale_sch_width(C_NFFT_MAX, C_ARCH)-1 DOWNTO 0);   
signal I_SCALE_SCH_WE	: std_logic;   
signal I_SCLR			  	: std_logic;   
signal I_CE					  : std_logic;   
signal I_CLK				  : std_logic;   
signal I_XK_RE				: std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0);   
signal I_XK_IM				: std_logic_vector(C_OUTPUT_WIDTH-1 DOWNTO 0);   
signal I_XN_INDEX			: std_logic_vector(C_NFFT_MAX-1 DOWNTO 0);   
signal I_XK_INDEX			: std_logic_vector(C_NFFT_MAX-1 DOWNTO 0);   
signal I_RFD				  : std_logic;   
signal I_BUSY				  : std_logic;   
signal I_DV					  : std_logic;   
signal I_EDONE				: std_logic;   
signal I_DONE				: std_logic;   
signal I_BLK_EXP			: std_logic_vector(3 DOWNTO 0);  
signal I_OVFLO				: std_logic;   

BEGIN

	ARCH_A: if (C_ARCH=0) generate 
	
		xfft_inst : xfft_v2_0_a
			GENERIC MAP (
				C_NFFT_MAX 			=> C_NFFT_MAX,
				C_HAS_BYPASS 		=> 1, 
				C_TWIDDLE_MEM_TYPE	=> C_TWIDDLE_MEM_TYPE,
				C_DATA_MEM_TYPE	=> C_DATA_MEM_TYPE,
				C_HAS_NFFT			=> 1, 
				C_HAS_SCALING 	=> C_HAS_SCALING,
				C_HAS_BFP 			=> 0, 
				C_HAS_ROUNDING 	=> C_HAS_ROUNDING,
				C_HAS_OVFLO 		=> C_HAS_OVFLO,
				C_HAS_CE 				=> C_HAS_CE,
				C_HAS_SCLR 			=> C_HAS_SCLR,
				C_INPUT_WIDTH 	=> C_INPUT_WIDTH,
				C_TWIDDLE_WIDTH	=> C_TWIDDLE_WIDTH,
				C_OUTPUT_WIDTH	=> C_OUTPUT_WIDTH)
	    PORT MAP (
				XN_RE 			=> I_XN_RE,
				XN_IM 			=> I_XN_IM,
				XN_INDEX 		=> I_XN_INDEX,
				START 			=> I_START,
				NFFT 			  => I_NFFT,
				NFFT_WE 		=> I_NFFT_WE,
				FWD_INV 		=> I_FWD_INV,
				FWD_INV_WE 	=> I_FWD_INV_WE,
				SCALE_SCH		=> I_SCALE_SCH,
				SCALE_SCH_WE => I_SCALE_SCH_WE,
				CLK 				=> I_CLK,
				CE					=> I_CE,
				SCLR 				=> I_SCLR,
				XK_RE				=> I_XK_RE,
				XK_IM				=> I_XK_IM,
				XK_INDEX		=> I_XK_INDEX,
				RFD				  => I_RFD, 
				BUSY				=> I_BUSY,
				DV					=> I_DV, 
				EDONE				=> I_EDONE,
				DONE				=> I_DONE,
				OVFLO				=> I_OVFLO);   
	end generate;

	ARCH_B: if (C_ARCH=1) generate
	
		xfft_inst : xfft_v2_0_b
			GENERIC MAP (
				C_NFFT_MAX 				=> C_NFFT_MAX,
				C_HAS_BYPASS 			=> 1, 
				C_TWIDDLE_MEM_TYPE	=> C_TWIDDLE_MEM_TYPE,
				C_DATA_MEM_TYPE		=> C_DATA_MEM_TYPE,
				C_HAS_NFFT			 	=> 1, 
				C_HAS_SCALING 		=> C_HAS_SCALING,
				C_HAS_BFP 				=> C_HAS_BFP,
				C_HAS_ROUNDING 		=> C_HAS_ROUNDING,
				C_HAS_OVFLO 			=> C_HAS_OVFLO,
				C_HAS_CE 				  => C_HAS_CE,
				C_HAS_SCLR 				=> C_HAS_SCLR,
				C_INPUT_WIDTH 		=> C_INPUT_WIDTH,
				C_TWIDDLE_WIDTH		=> C_TWIDDLE_WIDTH+1,
				C_OUTPUT_WIDTH		=> C_OUTPUT_WIDTH)
	      PORT MAP (
				XN_RE 			=> I_XN_RE,
				XN_IM 			=> I_XN_IM,
				XN_INDEX 		=> I_XN_INDEX,
				START 			=> I_START,
				UNLOAD 			=> I_UNLOAD,
				NFFT 			   => I_NFFT,
				NFFT_WE 		   => I_NFFT_WE,
				FWD_INV 			=> I_FWD_INV,
				FWD_INV_WE 		=> I_FWD_INV_WE,
				SCALE_SCH		=> I_SCALE_SCH,
				SCALE_SCH_WE	=> I_SCALE_SCH_WE,
				CLK 				=> I_CLK,
				CE					=> I_CE,
				SCLR 				=> I_SCLR,
				XK_RE				=> I_XK_RE,
				XK_IM				=> I_XK_IM,
				XK_INDEX			=> I_XK_INDEX,
				RFD				=> I_RFD, 
				BUSY				=> I_BUSY,
				DV					=> I_DV, 
				EDONE				=> I_EDONE,
				DONE				=> I_DONE,
				OVFLO				=> I_OVFLO,
				BLK_EXP			=> I_BLK_EXP);   
	
		end generate;

	ARCH_C: if (C_ARCH=2) generate  
		xfft_inst : xfft_v2_0_c
			GENERIC MAP (
				C_NFFT_MAX          => C_NFFT_MAX,
				C_TWIDDLE_MEM_TYPE  => C_TWIDDLE_MEM_TYPE,
				C_DATA_MEM_TYPE     => C_DATA_MEM_TYPE,
				C_HAS_NFFT          => 1,   
				C_HAS_SCALING       => C_HAS_SCALING,
				C_HAS_BFP           => C_HAS_BFP,
				C_HAS_ROUNDING      => C_HAS_ROUNDING,
				C_HAS_OVFLO         => C_HAS_OVFLO,
				C_HAS_CE            => C_HAS_CE,
				C_HAS_SCLR          => C_HAS_SCLR,
				C_INPUT_WIDTH       => C_INPUT_WIDTH,
				C_TWIDDLE_WIDTH     => C_TWIDDLE_WIDTH+1,
				C_OUTPUT_WIDTH      => C_OUTPUT_WIDTH )
	    PORT MAP (
				XN_RE           => I_XN_RE,
				XN_IM           => I_XN_IM,
				XN_INDEX        => I_XN_INDEX,
				START           => I_START,
				UNLOAD          => I_UNLOAD,
				NFFT            => I_NFFT,
				NFFT_WE         => I_NFFT_WE,
				FWD_INV         => I_FWD_INV,
				FWD_INV_WE      => I_FWD_INV_WE,
				SCALE_SCH       => I_SCALE_SCH,
				SCALE_SCH_WE    => I_SCALE_SCH_WE,
				CLK             => I_CLK,
				CE              => I_CE,
				SCLR            => I_SCLR,
				XK_RE           => I_XK_RE,
				XK_IM           => I_XK_IM,
				XK_INDEX        => I_XK_INDEX,
				RFD             => I_RFD, 
				BUSY            => I_BUSY,
				DV              => I_DV, 
				EDONE           => I_EDONE,
				DONE            => I_DONE,
				OVFLO           => I_OVFLO,
				BLK_EXP         => I_BLK_EXP );   
	end generate;

	 I_XN_RE			<= XN_RE;
	 I_XN_IM	 		<= XN_IM;
	 I_START			<= START;
	 I_UNLOAD			<= UNLOAD;
	 I_NFFT				<= NFFT;
	 I_NFFT_WE		<= NFFT_WE;
	 I_FWD_INV		<= FWD_INV;
	 I_FWD_INV_WE	<= FWD_INV_WE;
	 I_SCALE_SCH	<= SCALE_SCH; 
	 I_SCALE_SCH_WE	<= SCALE_SCH_WE;
	 I_SCLR				<= SCLR;
	 I_CE					<= CE;
	 I_CLK				<= CLK; 
	 XK_RE				<= I_XK_RE; 
	 XK_IM				<= I_XK_IM; 
	 XN_INDEX			<= I_XN_INDEX; 
	 XK_INDEX			<= I_XK_INDEX; 
	 RFD					<= I_RFD; 
	 BUSY					<= I_BUSY; 
	 DV					  <= I_DV; 
	 EDONE				<= I_EDONE; 
	 DONE					<= I_DONE; 
	 BLK_EXP			<= I_BLK_EXP; 
	 OVFLO				<= I_OVFLO; 

END behavioral;	

