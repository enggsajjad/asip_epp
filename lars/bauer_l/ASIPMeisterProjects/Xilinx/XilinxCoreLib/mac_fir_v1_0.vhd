--
--  Description:
--    MAC FIR filter VHDL behavioral model
--	 

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

LIBRARY std;
USE std.textio.all;

LIBRARY XilinxCoreLib;
USE XilinxCoreLib.ul_utils.ALL;	   


--***************************************************************
--**** Use this USE statement for the ActiveHDL testbench
--**** USE mac_fir_pack_v1_0.ALL;

--**** Use this USE statement for the SVG testbench
USE XilinxCoreLib.mac_fir_pack_v1_0.ALL;



--**** Use this ENTITY statement for the ActiveHDL testbench
--**** ENTITY VHDL_Model IS		 
	
--**** Use this ENTITY statement for the SVG testbench
ENTITY c_mac_fir_v1_0 IS		 
--***************************************************************

	
	
	GENERIC( c_channels 					: INTEGER := 1;
	      	 c_coef_buffer_type 	: INTEGER := c_coef_buffer_type;		      	
	      	 c_coef_init_file 		: STRING  := "netlist.mif";
	      	 c_coef_type 					: INTEGER := c_signed;
	      	 c_coef_width 				: INTEGER := 16;
	      	 c_data_buffer_type	 	: INTEGER := c_data_buffer_type;		      	
	      	 c_data_type 					: INTEGER := c_signed;
			 		 c_data_width 				: INTEGER := 16;
	      	 c_decimate_factor 		: INTEGER := 1; 
	      	 c_filter_type 				: INTEGER := c_single_rate; 
			 		 c_input_sample_rate 	: REAL 		:= 1.0;
	      	 c_interpolate_factor : INTEGER := 1; 
			 		 c_latency						: INTEGER := 24;
			 		 c_num_coef_sets 			: INTEGER := 1;
	      	 c_reg_output 				: INTEGER := c_true; 
	      	 c_reload 						: INTEGER := c_no_reload; 
	   	  	 c_reload_delay 			: INTEGER := 1;
	      	 c_response 					: INTEGER := c_non_symmetric;
	       	 c_result_width	 			: INTEGER := 36; 
					 c_sel_i_dir 					: INTEGER := c_sel_input_port_is_input;
					 c_system_clock_rate 	: REAL		:= 100.0;
	       	 c_taps 							: INTEGER := 12;
	      	 c_use_model_func 		: INTEGER := c_false;  
					 c_shape							: INTEGER := 0;
					 c_enable_rlocs				: INTEGER := c_false;
	      	 c_zpf 								: INTEGER := 1 );  
			   
	PORT ( 	  reset : IN  std_logic := '0';
	       	 	 	 nd : IN  std_logic := '0';
							din : IN  std_logic_vector( (c_data_width - 1) DOWNTO 0 ) := (OTHERS => '0');
	      			clk : IN  std_logic := '0';
	     	   	 dout : OUT std_logic_vector( (c_result_width - 1) DOWNTO 0 );
	   		 	 dout_i : OUT std_logic_vector( (c_data_width - 1)   DOWNTO 0);
	   		 	 dout_q : OUT std_logic_vector( (c_result_width - 1) DOWNTO 0 ); 
							rfd : OUT std_logic;
	      			rdy : OUT std_logic;
	  			coef_ld : IN  std_logic := '0';
	   	 	 	 ld_din : IN  std_logic_vector( (c_coef_width - 1) DOWNTO 0) := (OTHERS => '0');
	    	  	ld_we : IN  std_logic := '0';
	   		  	sel_i : OUT std_logic_vector( (bitsneededtorepresent(c_channels - 1) - 1) DOWNTO 0);
	    	  	sel_o : OUT std_logic_vector( (bitsneededtorepresent(c_channels - 1) - 1) DOWNTO 0) );

						
--***************************************************************						
--**** Use this END statement for the ActiveHDL testbench
--**** END VHDL_Model;
	
--**** Use this END statement for the SVG testbench
END c_mac_fir_v1_0;



--**** Use this ARCHITECTURE statement for the ActiveHDL testbench
--**** ARCHITECTURE behavioral OF VHDL_Model IS
	
--**** Use this ARCHITECTURE statement for the SVG testbench
ARCHITECTURE behavioral OF c_mac_fir_v1_0 IS
--***************************************************************



-- ------------------------------------------------------------------------ --
-- GUI CONSTANT DECLARATIONS                                                --
-- ------------------------------------------------------------------------ --


	CONSTANT data_width     				: INTEGER := c_data_width;
	CONSTANT result_width   				: INTEGER := c_result_width;
	CONSTANT orig_number_of_taps 		: INTEGER := c_taps;     -- number of taps specified by user
	CONSTANT number_of_taps 				: INTEGER := c_taps + ( (c_taps - 1) * eval(c_filter_type = c_interpolated) * (c_zpf - 1));  -- total number of taps after adding zeros FOR interpolated filters
	CONSTANT coef_width     				: INTEGER := c_coef_width; 
	CONSTANT response       				: INTEGER := c_response;
	CONSTANT data_signed    				: BOOLEAN := (c_data_type = c_signed);
	CONSTANT coef_signed    				: BOOLEAN := (c_coef_type = c_signed);
	CONSTANT data_antipodal       	: BOOLEAN := (c_data_type = c_antipodal);
	CONSTANT coef_antipodal       	: BOOLEAN := (c_coef_type = c_antipodal);
	CONSTANT chan_ind_width         : INTEGER := bitsneededtorepresent(c_channels - 1);
	CONSTANT filter_type	        	: INTEGER := c_filter_type;
	CONSTANT number_of_channels     : INTEGER := c_channels;
  CONSTANT has_out_chan_indicator : BOOLEAN := (c_channels > 1);
  CONSTANT has_in_chan_indicator  : BOOLEAN := (c_channels > 1);
	CONSTANT interpolate_factor			: INTEGER := c_interpolate_factor;
	CONSTANT decimate_factor				: INTEGER := c_decimate_factor;
	CONSTANT zero_packing_factor    : INTEGER := c_zpf;
	CONSTANT has_registered_output  : BOOLEAN := (c_reg_output = 1);
	CONSTANT use_model_func	  			: BOOLEAN := (c_use_model_func = 1);
	CONSTANT use_latency            : INTEGER := c_latency;	
	CONSTANT coefficient_file       : STRING  := c_coef_init_file;
	CONSTANT interpolating_filter   : BOOLEAN := (c_filter_type = c_polyphase_interpolating);
	CONSTANT decimating_filter      : BOOLEAN := (c_filter_type = c_polyphase_decimating);
	CONSTANT interpolating_half_band :BOOLEAN := (c_filter_type = c_interpolating_half_band);
	CONSTANT decimating_half_band   : BOOLEAN := (c_filter_type = c_decimating_half_band);
	CONSTANT hilbert_transform      : BOOLEAN := (c_filter_type = c_hilbert_transform);
	CONSTANT reloadable             : BOOLEAN := (c_reload = c_static);
	CONSTANT reload_delay		  			: INTEGER := c_reload_delay; 
	CONSTANT local_coef_width	  		: INTEGER := c_coef_width + eval(c_coef_type = c_antipodal);
	CONSTANT local_data_width	  		: INTEGER := c_data_width + eval(c_data_type = c_antipodal);

-- ------------------------------------------------------------------------ --
-- TYPE DECLARATIONS                                                        --
-- ------------------------------------------------------------------------ --

	TYPE filter_coefficients_type IS ARRAY(1 TO number_of_taps) OF std_logic_vector( (local_coef_width - 1) DOWNTO 0);
	TYPE tap_storage_type IS ARRAY(1 TO number_of_taps) OF std_logic_vector( (local_data_width - 1) DOWNTO 0);
	TYPE all_tap_storage_type IS ARRAY(0 TO (number_of_channels - 1) ) of tap_storage_type;

-- ------------------------------------------------------------------------
-- FUNCTIONS                                                               
-- ------------------------------------------------------------------------

	------------
	-- Compute the latency of RDY depending on the filter characteristics.
	--  This is the number of cycles after ND that RDY will be asserted.
	------------
	FUNCTION compute_rdy_latency(filter_type: integer; response: integer; number_taps: integer; 
							 interpolate_factor: integer)
			RETURN integer is 
			
			VARIABLE rdy_latency: integer := 0;
			VARIABLE mult_per_interp_subfilter: integer := 0; 
			VARIABLE number_taps_div_by_2: integer := 0;
	
			BEGIN 
					-- Compute the number of multiplies for each subfilter of an Interpolating filter.  This is
					--	also used in the 'delay_result' process
					IF ((number_taps MOD interpolate_factor) = 0) THEN
							mult_per_interp_subfilter := number_taps / interpolate_factor; 				-- Number of taps is an integer multiple of interpolate factor 
					ELSE
							mult_per_interp_subfilter := (number_taps / interpolate_factor) + 1;	-- Number of taps is NOT an integer multiple of interpolate factor (round up after division) 	
					END IF;
					
					-- For symmetric filters, compute the number of clocks needed to perform the multiply operations
					IF ((number_taps MOD 2)	= 0) THEN
							number_taps_div_by_2 := number_taps / 2;				-- Even number of taps	
					ELSE
							number_taps_div_by_2 := (number_taps / 2) + 1;	-- Odd number of taps (round up after division)
					END IF;				
					
					-- Single rate filters
					IF (filter_type = c_single_rate) THEN
							IF (response = c_non_symmetric) THEN
									rdy_latency := number_taps + c_mac_fir_compute_latency;
							ELSE
									rdy_latency := number_taps_div_by_2 + c_mac_fir_compute_latency + c_mac_fir_xtra_symmetric_latency; 
							END IF;		
						
					-- Interpolating filters
					ELSIF ((filter_type = c_polyphase_interpolating) OR (filter_type = c_interpolating_half_band)) THEN
							rdy_latency := c_mac_fir_compute_latency + mult_per_interp_subfilter;  
						
					-- Decimating filters
					ELSIF ((filter_type = c_polyphase_decimating) OR (filter_type = c_decimating_half_band)) THEN 
							IF (response = c_non_symmetric) THEN  
									rdy_latency := number_taps + c_mac_fir_decimating_compute_latency;
							ELSE
									rdy_latency := number_taps_div_by_2 + c_mac_fir_decimating_compute_latency + c_mac_fir_xtra_symmetric_latency;
							END IF;					
							
					-- Undefined filter types 
					ELSE	
							rdy_latency := 0;
					END IF;					
					
					RETURN rdy_latency;
			END compute_rdy_latency;				
				
	------------
	-- Convert a hex string to a binary vector.
	------------
  FUNCTION hex_to_std_logic_vector(hexstring: STRING)
	    RETURN std_logic_vector IS
	
	    CONSTANT length   : integer := hexstring'LENGTH;
	    VARIABLE bitval   : std_logic_vector( ((length * 4) - 1) DOWNTO 0);
	    VARIABLE posn	  	: integer := bitval'LEFT;
	    VARIABLE ch       : character;	 
		
			BEGIN
					FOR i IN 1 TO length LOOP
							ch := hexstring(i);
							CASE ch IS
									WHEN '0' => bitval(posn DOWNTO (posn - 3)) := "0000";
									WHEN '1' => bitval(posn DOWNTO (posn - 3)) := "0001";
									WHEN '2' => bitval(posn DOWNTO (posn - 3)) := "0010";
									WHEN '3' => bitval(posn DOWNTO (posn - 3)) := "0011";
									WHEN '4' => bitval(posn DOWNTO (posn - 3)) := "0100";
									WHEN '5' => bitval(posn DOWNTO (posn - 3)) := "0101";
									WHEN '6' => bitval(posn DOWNTO (posn - 3)) := "0110";
									WHEN '7' => bitval(posn DOWNTO (posn - 3)) := "0111";
									WHEN '8' => bitval(posn DOWNTO (posn - 3)) := "1000";
									WHEN '9' => bitval(posn DOWNTO (posn - 3)) := "1001";
									WHEN 'A' | 'a' => bitval(posn DOWNTO (posn - 3)) := "1010";
									WHEN 'B' | 'b' => bitval(posn DOWNTO (posn - 3)) := "1011";
									WHEN 'C' | 'c' => bitval(posn DOWNTO (posn - 3)) := "1100";
									WHEN 'D' | 'd' => bitval(posn DOWNTO (posn - 3)) := "1101";
									WHEN 'E' | 'e' => bitval(posn DOWNTO (posn - 3)) := "1110";
									WHEN 'F' | 'f' => bitval(posn DOWNTO (posn - 3)) := "1111";
									WHEN OTHERS => ASSERT false
									               REPORT "Invalid hex value in MIF file" SEVERITY ERROR;
									               bitval(posn DOWNTO (posn - 3)) := "XXXX";
							END CASE;
						 	posn := posn - 4;
					END LOOP;
					RETURN bitval;
			END hex_to_std_logic_vector;

------------
-- Read coefficients from the MIF file, and convert from antipodal to signed if necessary
------------
  FUNCTION read_coefficients( filename: string; number_of_values: integer; antipodal_coef: boolean )
    	RETURN filter_coefficients_type IS

	    VARIABLE coefficients : filter_coefficients_type;
	    FILE     coeffile     : TEXT IS filename;
	    VARIABLE hexline	  : LINE;
	    VARIABLE width	  	  : INTEGER := (coef_width + 3)/4;
	    VARIABLE hexstring	  : STRING(1 TO width);
	    VARIABLE bitval	  	  : std_logic_vector( ((width * 4) - 1) DOWNTO 0);
	    VARIABLE lines	  	  : INTEGER := 1;	   
		
	  	BEGIN
			    WHILE (NOT(endfile(coeffile)) AND (lines <= number_of_values)) LOOP
							readline(coeffile, hexline);
							read(hexline, hexstring);
							bitval := hex_to_std_logic_vector(hexstring); 
							
							IF (antipodal_coef) THEN
									IF (bitval(0) = '0') THEN
									  	coefficients(lines) := "01";
									ELSIF (bitval(0) = '1') THEN
									  	coefficients(lines) := "11";
									ELSE
									  	ASSERT false
									  	REPORT "Invalid antipodal data in MIF file" SEVERITY ERROR;
									  	coefficients(lines) := "XX";
									END IF;
							ELSE
									coefficients(lines) := bitval( (coef_width - 1) DOWNTO 0);
							END IF;
							
							lines := lines + 1;
			    END LOOP;
		   	 	RETURN coefficients;
	  	END read_coefficients;
	
------------
-- Use Function read_coefficients to read the MIF file, and convert from antipodal to signed if necessary.
-- For interpolated filters, add zeros in the coefficient array.
------------
 	FUNCTION assign_filter_coefficients( filename: STRING; filter_type : INTEGER;
                                      	 orig_number_of_taps : INTEGER; zero_packing_factor: INTEGER;
                                      	 number_of_taps: INTEGER; antipodal_coef : BOOLEAN )
	    RETURN filter_coefficients_type IS
	
	    VARIABLE filter_coefficients : filter_coefficients_type;
	    VARIABLE packed_filter_coefficients : filter_coefficients_type;
	    VARIABLE posn : INTEGER;
	
			BEGIN
					filter_coefficients := read_coefficients(filename, orig_number_of_taps, antipodal_coef );
					IF (filter_type = c_interpolated) THEN
						posn := 1;
						FOR i IN 1 TO (orig_number_of_taps - 1) LOOP
							packed_filter_coefficients(posn) := filter_coefficients(i);
							posn := posn + 1;
							IF (zero_packing_factor > 1) THEN
								FOR j IN 1 TO (zero_packing_factor - 1) LOOP
									packed_filter_coefficients(posn) := (OTHERS => '0');
									posn := posn + 1;
								END LOOP;
							END IF;
						END LOOP;
						packed_filter_coefficients(posn) := filter_coefficients(orig_number_of_taps);
						ASSERT posn = number_of_taps REPORT "fundamental error in assigning coefficients" SEVERITY ERROR;
					ELSE																						  
					  packed_filter_coefficients := filter_coefficients;
					END IF;			  
					
					RETURN packed_filter_coefficients;
			END assign_filter_coefficients;
		
------------
-- Compute the latency of RFD depending on the filter characteristics.
--  This is the number of cycles after ND that RFD will be asserted again.
------------
  FUNCTION compute_rfd_latency(symmetric: boolean)
			RETURN integer is 
			
			VARIABLE rfd_latency: integer := 0;	 	
			
			BEGIN
			    rfd_latency := 1;
				
			    IF ((interpolating_filter OR interpolating_half_band) AND (rfd_latency < interpolate_factor)) THEN
			      	rfd_latency := interpolate_factor;
			    END IF;	 
				
			    rfd_latency := rfd_latency - 1; -- subtract one because the model doesn't count the first rising edge
			    
					RETURN rfd_latency;
			END compute_rfd_latency;		

 ------------
	FUNCTION all0(a: std_logic_vector)
			RETURN boolean IS	
		
			VARIABLE z: std_logic_vector( (a'LENGTH - 1) DOWNTO 0) := (OTHERS => '0');
			BEGIN
			    RETURN (a = z); 
			END all0;

 ------------
	FUNCTION all1(a: std_logic_vector)
			RETURN boolean IS	 
		
			VARIABLE o: std_logic_vector( (a'LENGTH - 1) DOWNTO 0) := (OTHERS => '1');
			BEGIN
			    RETURN (a = o); 
			END all1;
	
 ------------
	FUNCTION any1(a: std_logic_vector)
			RETURN boolean IS 
		
			VARIABLE z: std_logic_vector( (a'LENGTH - 1) DOWNTO 0) := (OTHERS => '0');
			BEGIN
			    RETURN (NOT (a = z));
			END any1;

-- Zero the data memory.  Note that if the data is antipodal then the data memory is 
--  initialized with 1s (antipodal 0).
	FUNCTION zero_taps(number_of_taps: integer; data_antipodal: boolean)
			RETURN tap_storage_type IS		   
		
			VARIABLE retval: tap_storage_type;
			BEGIN
			    IF (data_antipodal) THEN
			      FOR i IN 1 TO number_of_taps LOOP
			      	retval(i) := "01";
			      END LOOP;
			    ELSE
			      FOR i IN 1 TO number_of_taps LOOP
			      	retval(i) := (OTHERS => '0');
			      END LOOP;
			    END IF;
				
			    RETURN retval;
			END zero_taps;

-- Compute the bit growth at the output of the filter.
	FUNCTION output_bit_growth(number_of_taps: integer)
			RETURN integer IS		   
		
			VARIABLE retval: integer := 0;	
			
			BEGIN
			    IF (interpolating_filter OR interpolating_half_band) THEN
							IF ((number_of_taps MOD interpolate_factor) = 0) THEN
									-- Number of taps is an integer multiple of the Interpolate Factor
									retval :=  bitsneededtorepresent((number_of_taps / interpolate_factor) - 1);
							ELSE
					      	retval :=  bitsneededtorepresent(number_of_taps / interpolate_factor);
							END IF;
			    ELSE
			      	retval := bitsneededtorepresent(number_of_taps - 1);
			    END IF;
				
			    RETURN retval;
			END output_bit_growth;

-- Compute the number of clocks needed to process each sample.  This number is the maximum periodic input
--	rate that can be supported.
	FUNCTION compute_clocks_to_process(symmetric : boolean; number_of_taps: integer)
			RETURN integer IS		   
		
			VARIABLE retval: integer := 0;	
			
			BEGIN
 					retval := number_of_taps;
					IF ( (response = c_symmetric) OR (response = c_neg_symmetric) )	THEN
							retval := number_of_taps / 2;	
							-- Check if the filter has an odd number of taps 
									retval := retval + 1;	
					END IF;
							
			    RETURN retval;
			END compute_clocks_to_process;

-- ------------------------------------------------------------------------ --
-- CONSTANT DECLARATIONS                                                    --
-- ------------------------------------------------------------------------ --

	CONSTANT symmetric							: BOOLEAN := (response = c_symmetric OR response = c_neg_symmetric);
	CONSTANT rfd_latency						: INTEGER := compute_rfd_latency(symmetric);
	CONSTANT clocks_to_process_data	:	INTEGER := compute_clocks_to_process(symmetric, number_of_taps);	
	CONSTANT full_result_width  		: INTEGER := local_coef_width + local_data_width + bitsneededtorepresent(number_of_taps);

-- ------------------------------------------------------------------------ --
-- SIGNAL DECLARATIONS                                                      --
-- ------------------------------------------------------------------------ --

	SIGNAL process_data     			: std_logic	:= '0';
	SIGNAL data_ready	  					: std_logic	:= '0';
	SIGNAL result_ready	  				: std_logic	:= '0';
	SIGNAL processed_result 			: std_logic	:= '0';
	SIGNAL delayed_nd1	  				: std_logic	:= '0';
	SIGNAL delayed_nd	  					: std_logic	:= '0';
	SIGNAL data             			: all_tap_storage_type		:= (OTHERS => zero_taps(number_of_taps, data_antipodal));
	SIGNAL filter_coefficients 		: filter_coefficients_type 	:= assign_filter_coefficients(coefficient_file, filter_type, orig_number_of_taps, zero_packing_factor, number_of_taps, coef_antipodal);
	SIGNAL channel_number   			: integer		:= 0;
	SIGNAL new_data         			: std_logic_vector( (data_width - 1)   DOWNTO 0) := (OTHERS => '0');
	SIGNAL delayed_new_data 			: std_logic_vector( (data_width - 1)   DOWNTO 0) := (OTHERS => '0');
	SIGNAL result           			: std_logic_vector( (result_width - 1) DOWNTO 0) := (OTHERS => '0');
	SIGNAL mid_value        			: std_logic_vector( (data_width - 1)   DOWNTO 0) := (OTHERS => '0'); 
	SIGNAL decimate_internal_nd  	: std_logic	:= '0';
	SIGNAL decimate_internal_rfd 	: std_logic	:= '1';
	SIGNAL ce		  								: std_logic	:= '1';
	SIGNAL lrfd             			: std_logic := '0';
	SIGNAL reloading        			: std_logic := '0';	 
	SIGNAL store_data							: integer := 0;	 	
	

------------- Start of Architecture processes 	
	BEGIN
	
	 	rfd <= lrfd;
	--
	-- Update the data memory with the new DIN value. Becomes active when data_ready is asserted.
	--   Handle unknowns on the inputs.
	--   For interpolating filters, stuff 0s into the data memory.
	--   For antipodal data, translate from antipodal to signed before storing in data memory
	--   Assert process_data for a new result to be computed
	--   Clears the data memory when the filter is being reloaded
	--
		tap_storage : PROCESS  
		
		VARIABLE setup : boolean := true;
		CONSTANT midpoint: integer := (number_of_taps + 1)/2;
		CONSTANT loop_count : integer := eval(interpolating_half_band OR interpolating_filter) * (interpolate_factor - 1) + 1;
		VARIABLE local_data : std_logic_vector( (local_data_width - 1) DOWNTO 0 ); 
		
		BEGIN
		    IF (setup = true) THEN
			    	WAIT UNTIL clk'event AND rat(clk) = '1' AND rat(clk'last_value) = '0';
			      		setup := false;
								
				-- Waiting for rising clock edge and clock enable undefined or undefined clock values
		    ELSIF ((rat(clk) = 'X' AND rat(ce) /= '0' AND rat(clk'LAST_VALUE) /= 'X') OR
							 (rat(clk)='1' AND rat(clk'last_value) = '0' AND rat(ce) = 'X')) THEN		
					
		      	FOR i IN 0 TO number_of_channels - 1 LOOP
			        	FOR j IN 1 TO number_of_taps LOOP
			          		data(i)(j) <= setallX(data_width);
			        	END LOOP;
		      	END LOOP;	 
			
				-- Waiting for "rfd_output" process to assert "data_ready". This executes whenever ND is active 
		    ELSIF (data_ready'event AND data_ready = '1') THEN
					
						-- Enable signal that indicates a sample is being stored 
						store_data <= 1;
					
		      	IF (anyX(new_data)) THEN
		        		local_data := (OTHERS => 'X');
		      	ELSIF (data_antipodal) THEN
			        	IF (new_data(0) = '0') THEN
			          		local_data := "01";
			        	ELSE
			          		local_data := "11";
			        	END IF;
		      	ELSE
		        		local_data := new_data;
		      	END IF;
						
						-- loop count equals the interpolation factor for Interpolating filters, 1 for all others 
		      	FOR i IN 1 TO loop_count LOOP
			        	FOR j IN number_of_taps DOWNTO 2 LOOP
			          		data(channel_number)(j) <= data(channel_number)(j - 1);
			        	END LOOP;
			        	data(channel_number)(1) <= local_data; 
					
								-- Begin a new computation when last new data sample is received 
			        	IF (NOT (decimating_half_band OR decimating_filter) OR decimate_internal_nd = '1') THEN
			          		process_data <= '1';   						  
										-- Waiting for "mac" process to finish or a coefficient reload to occur 
			          		WAIT UNTIL (result_ready'event AND result_ready = '0') OR reloading = '1';	  
			          		process_data <= '0';
			          		WAIT FOR 0 ns;
								-- Waiting for last sample needed to trigger a new computation 
			        	ELSE 						 
			          		process_data <= 'X';
			          		WAIT FOR 0 ns;
			          		process_data <= '0';
			        	END IF;	 
					
		        		local_data := (OTHERS => '0');
		      	END LOOP;	
				ELSE
			    	WAIT UNTIL clk'event AND rat(clk) = '1' AND rat(clk'last_value) = '0'AND rat(ce) = '1';
						-- Disable signal that indicates a sample is being stored 
						store_data <= 0;
						
		    END IF;		-- waiting for data_ready	to go active  
			
				-- Reloading coefficients 
		    IF (reloading = '1') THEN
		      	FOR i IN 0 TO (number_of_channels - 1) LOOP
			        	FOR j IN 1 TO number_of_taps LOOP
			          		IF (data_antipodal) THEN
			            			data(i)(j) <= "01";
			          		ELSE
			            			data(i)(j) <= (OTHERS => '0');
			          		END IF;
			        	END LOOP;
		      	END LOOP;
				  
		     		process_data <= '0';
		      	WAIT UNTIL reloading = '0';
		    END IF;		   
			
		    WAIT on clk, data_ready, reloading; 
		END PROCESS tap_storage;
	
	--
	-- Handle new data, and set up the output signals lrfd (the local version of RFD), and SEL_I
	-- If reloading has started, then
	--   set RFD TO 0
	--   Wait a cycle and set SEL_I TO 0
	--   Wait FOR reloading TO be completed before waiting for new data again
	-- If the ND signal is asserted, then
	--   Update the input channel number and SEL_I 
	--   Assert data_ready so that tap_storage can store the new data.  Wait until process_data is 
	--     cleared to indicate that the data has been processed.
	--   Clear RFD and wait rfd_latency cycles before asserting RFD again
	--   For decimating filters, decimate_factor samples must be read in before they are processed.
	--     These filters have an external memory that can store the new samples while the subfilters
	--     are processing the old samples.  Signals decimate_internal_nd and decimate_internal_rfd
	--     are used to track when this memory is full.
	-- 
		rfd_output : PROCESS	 
	
		VARIABLE local_channel_number : integer := 0;
		VARIABLE sub_filter_number : integer := decimate_factor - 1;
		VARIABLE setup : boolean := true;
		VARIABLE local_data: std_logic_vector( (data_width - 1) DOWNTO 0) := (OTHERS => '0'); 
		VARIABLE input_buffer_just_went_not_full 		: integer := 0;
		VARIABLE rdy_to_rfd_delay_counter_enable		: integer := 0;
		VARIABLE rdy_to_rfd_delay_counter						: integer := 0;	
		VARIABLE read_input_buffer_counter					: integer := 0;	
		VARIABLE num_samples_input_buffer						: integer := 0;	
		VARIABLE max_periodic_input_rate						: integer := 0;

		FUNCTION compute_max_process_rate(filter_type : integer; number_of_taps : integer ) 
				RETURN integer IS	 
		
				VARIABLE max_process_rate	: integer := 0;
		
		    BEGIN
		        IF (interpolating_half_band OR interpolating_filter)	THEN
								IF ( (number_of_taps MOD interpolate_factor) = 0 )	THEN
										max_process_rate := number_of_taps;
								ELSE
										max_process_rate	:= number_of_taps + (interpolate_factor - (number_of_taps MOD interpolate_factor));
								END IF;
						ELSE
								max_process_rate := clocks_to_process_data;			
						END IF;					
				  
			      RETURN max_process_rate;
				END compute_max_process_rate;
 
-- Start of rfd_output process

		BEGIN
		    IF (setup) THEN
		      	lrfd <= '0';
		      	IF (has_in_chan_indicator) THEN
		      			sel_i <= (OTHERS => '0');
		      	END IF;
		      	setup := false;	
						
						max_periodic_input_rate := compute_max_process_rate(filter_type, number_of_taps);	
						read_input_buffer_counter := max_periodic_input_rate;
		    END IF;
				
		    IF ( reloading = '0' ) THEN
		      	WAIT UNTIL ( (clk'event AND rat(clk) = '1' AND rat(clk'last_value) = '0' AND rat(ce) = '1')  
				  						 	 OR reloading = '1' );
				
				END IF;	   
			
				IF ( rat(reset) = '1' )	THEN
						lrfd <= '0';

				-- RESET not active
				ELSE			
						-- Count the number of cycles before RFD should be asserted.  The counter is initialized to 
						--	MAC_RDY_TO_RFD_DELAY when RDY is asserted.
						IF ( rdy_to_rfd_delay_counter_enable = 1 ) THEN
								IF ( rdy_to_rfd_delay_counter = 0 ) THEN
										rdy_to_rfd_delay_counter_enable := 0;
								ELSE
										rdy_to_rfd_delay_counter := rdy_to_rfd_delay_counter - 1; 
								END IF;
						END IF;				

						IF (reloading = '1') THEN
				      	lrfd <= '0';
				      	IF (has_in_chan_indicator) THEN
				        		WAIT UNTIL clk'event AND rat(clk)='1' AND rat(clk'last_value)='0';
				        		sel_i <= (OTHERS => '0');
				      	END IF;	 
						  
				      	WAIT UNTIL reloading = '0';
				      	lrfd <= '1';
				      	local_channel_number := 0;
				      	channel_number <= 0;
				      	sub_filter_number := decimate_factor - 1;
				      	local_data := (OTHERS => '0');
				      	new_data <= (OTHERS => '0');
				      	decimate_internal_nd <= '0'; 
								
						-- Reloading is NOT active 
				    ELSE
				      	IF ((decimating_half_band OR decimating_filter) AND decimate_internal_rfd = '0') THEN
				        		decimate_internal_nd <= '0';
				      	END IF;	
						  	
								-- Check if the input buffer is full 
				      	IF ( num_samples_input_buffer < c_max_number_samples ) THEN
										IF ( rdy_to_rfd_delay_counter = 0 ) THEN
											lrfd <= '1';
										ELSE
											lrfd <= '0';
										END IF;
								ELSE
										lrfd <= '0';
								END IF;
								
								IF (rat(nd)='1' AND lrfd = '1') THEN
					        	channel_number <= local_channel_number;
					        	local_channel_number := (local_channel_number + 1) MOD number_of_channels;
					        	IF (has_in_chan_indicator) THEN
					          		sel_i <= int_2_std_logic_vector(local_channel_number, chan_ind_width);
					        	END IF;	
								
					          local_data := din;
								
					        	IF (decimating_half_band OR decimating_filter) THEN
					          		sub_filter_number := (sub_filter_number + 1) MOD decimate_factor;
					          		IF (sub_filter_number = decimate_factor - 1) THEN
						           			IF (decimate_internal_rfd = '0') THEN
						              			lrfd <= '0';
						              			WAIT UNTIL decimate_internal_rfd = '1' OR reloading = '1';
						            		END IF;	
										
					            	decimate_internal_nd <= '1';
					          		ELSE
					            			decimate_internal_nd <= '0';
					          		END IF;
					        	END IF;	
								
										IF (reloading = '0') THEN
						          	new_data <= local_data;
					            	data_ready <= '1'; 
									
												-- Wait for "tap_storage" process to store data and "mac" process to compute the output 
					            	WAIT UNTIL (process_data'event AND process_data = '0') OR reloading = '1';
					            	data_ready <= '0';
												num_samples_input_buffer := num_samples_input_buffer + 1;
									  		
					        	END IF; 		-- reloading = '0'
				      	END IF; 		-- rat(nd) AND rat(lrfd) = '1' 
								
								-- Decrement counter of samples left in input buffer and check if the input buffer just went
								--	from full to NOT full
								IF (num_samples_input_buffer > 0)	THEN	
										IF (read_input_buffer_counter = 0) THEN
												num_samples_input_buffer := num_samples_input_buffer - 1;
												
												-- Check if input buffer just went from full to not full
												IF ( num_samples_input_buffer >= c_max_number_samples - 1 ) THEN
													input_buffer_just_went_not_full := 1;	
												ELSE
													input_buffer_just_went_not_full := 0;		
												END IF;
										END IF;
				
										-- Simulate the reading of data from the input buffer	when there are samples in the buffer. 
										IF (read_input_buffer_counter = 0) THEN	 
												read_input_buffer_counter := max_periodic_input_rate - 1;
										ELSE
												read_input_buffer_counter := read_input_buffer_counter - 1;
										END IF;
								END IF;	

								-- Check if the input buffer just went from full to NOT full 
								IF ( input_buffer_just_went_not_full = 1 ) THEN								
										rdy_to_rfd_delay_counter_enable := 1;										
										rdy_to_rfd_delay_counter := c_mac_rdy_to_rfd_delay;											
										input_buffer_just_went_not_full := 0;
								END IF;
	
				    END IF; 		-- reloading = '1' 				
				END IF;			-- reset = '1' 
		END PROCESS rfd_output;

	--
	-- Handle reloading.
	--   When coef_ld is asserted, assert signal reloading, so that the rest of the model can handle
	--     reloading.
	--     Check that valid coefficients are provided on ld_din.
	--     If coefficients are of type antipodal, convert from antipodal to signed
	--     Save the coefficient in the coefficient array, and handle symmetry and negative symmetry
	--     Once all the coefficients have been provided, wait for reload_delay cycles, before 
	--       deasserting signal reload.  Reloading is now completed.
	--
		reload: PROCESS
	
		CONSTANT num_coefs: integer := (eval(symmetric) * (orig_number_of_taps + 1)/2) + (eval(NOT symmetric) * orig_number_of_taps);  
		CONSTANT half_band: boolean := (filter_type = c_half_band OR filter_type = c_decimating_half_band OR filter_type = c_interpolating_half_band);
		VARIABLE posn: integer := 1;
		VARIABLE local_coef : std_logic_vector( (local_coef_width - 1) DOWNTO 0) := (OTHERS => '0');
		
		BEGIN
		    IF (NOT reloadable) THEN
		      	WAIT;
		    ELSE
		      	WAIT UNTIL clk'event AND rat(clk)='1' AND rat(clk'last_value)='0' AND rat(coef_ld)='1';
		      	reloading <= '1';      
		     		posn := 1;
		      	FOR i IN 1 TO num_coefs LOOP
				        WAIT UNTIL clk'event AND rat(clk)='1' AND rat(clk'last_value)='0' AND rat(ld_we)='1';
				        IF (((filter_type = c_half_band) OR (filter_type = c_decimating_half_band) OR (filter_type = c_interpolating_half_band) ) AND (i MOD 2 = 0) AND (i < num_coefs)) THEN
				          	ASSERT (all0(ld_din)) report "Not a valid coefficient FOR a halfband filter : this coefficient must be zero." severity error;
				        ELSIF ((filter_type = c_hilbert_transform) AND (i MOD 2 = 0)) THEN
				          	ASSERT (all0(ld_din)) report "Not a valid coefficient FOR a hilbert transform : this coefficient must be zero." severity error;
				        END IF;
						
				        IF (coef_antipodal) THEN
				          	IF (ld_din(0) = '0') THEN
				            	local_coef := "01";
				          	ELSIF (ld_din(0) = '1') THEN
				            	local_coef := "11";
				          	ELSE
				            	local_coef := "XX";
				          	END IF;
				        ELSE
				          	local_coef := ld_din;
				        END IF;
						
				        filter_coefficients(posn) <= local_coef;
				        IF (response = c_symmetric) THEN
				          	filter_coefficients(number_of_taps-posn + 1) <= local_coef;
				        ELSIF (response = c_neg_symmetric AND (orig_number_of_taps MOD 2 = 0 OR posn < (number_of_taps + 1)/2)) THEN
				          	filter_coefficients(number_of_taps-posn + 1) <= two_comp(local_coef);
				        END IF;	 
						
				        IF (filter_type = c_interpolated) THEN
				          	posn := posn+ zero_packing_factor;
				        ELSE
				          	posn := posn + 1;
				        END IF; 
		        END LOOP;	   
			  
		        FOR i IN 1 TO reload_delay LOOP
		        	WAIT UNTIL clk'event AND rat(clk) = '1' AND rat(clk'last_value) = '0';
		        	ASSERT (rat(coef_ld) = '0') report "COEF_LD should not be asserted when the filter is being reloaded" severity error;
		        	ASSERT (rat(ld_we) = '0') report "LD_WE should not be asserted when the filter is being reloaded" severity error;
		      	END LOOP;
		      	reloading <= '0'; 
				  
		    END IF;
		END PROCESS reload;
        
	--
	-- Model the subfilters for polyphase decimating and decimating halfband filters
	--   Wait until decimate_internal_nd is asserted.  This means that polyphase_factor samples have
	--   been received.  Deassert decimate_internal_rfd, so that decimate_internal_nd cannot be 
	--   asserted again, and wait rfd_latency cycles before asserting decimate_internal_rfd again.
	--   If the filter is reloading new coefficients, deassert decimate_internal_rfd, wait until
	--   reloading is completed, and assert decimate_internal_rfd again.
	--
		decimate_sub_filter: PROCESS  
		
		BEGIN
		    IF (decimating_half_band OR decimating_filter) THEN
		      	WAIT UNTIL (clk'event AND rat(clk) = '1' AND rat(clk'last_value) = '0' AND rat(ce)='1' AND decimate_internal_nd = '1') OR reloading = '1';
		      	IF (reloading = '1') THEN
		        		decimate_internal_rfd <= '0';
		        		WAIT UNTIL reloading = '0';
		      	ELSIF rfd_latency > 0 THEN
			        	decimate_internal_rfd <= '0';				
			       		FOR i IN 1 TO rfd_latency LOOP
			          		WAIT UNTIL (clk'event AND rat(clk) = '1' AND rat(clk'last_value) = '0' AND rat(ce) = '1') OR reloading = '1';
			          		IF (reloading = '1') THEN
			            		exit;
			          		END IF;
			        	END LOOP;
		      	END IF;
		      	decimate_internal_rfd <= '1'; 
		    ELSE
		      	WAIT;
		    END IF;			
		END PROCESS decimate_sub_filter;
	 
	
		--
		-- Multiply accumulate
		--   When process_data is asserted, compute the new result.
		--   Assert result_ready so the new result may be saved
		-- 
		mac: PROCESS 
		
	    VARIABLE local_result: 	std_logic_vector( (full_result_width - 1) DOWNTO 0) := (OTHERS => '0');
	    VARIABLE ldata: 				std_logic_vector( (data_width) DOWNTO 0);
	    VARIABLE coef:  				std_logic_vector( (coef_width) DOWNTO 0);
	    VARIABLE product:			 	std_logic_vector( (data_width + coef_width + 1) DOWNTO 0);

		--
		-- Multiply two std_logic_vectors - both must be the same width.  
		-- Use bit-arithmetic if the result bitwidth is greater than 32
		--
		FUNCTION "*"(a, b : std_logic_vector)
			RETURN std_logic_vector IS	 
		
		    CONSTANT a_width : integer := a'LENGTH;
		    CONSTANT b_width : integer := b'LENGTH;
		    VARIABLE la: std_logic_vector( (a_width - 1) DOWNTO 0) := a;
		    VARIABLE lb: std_logic_vector( (b_width - 1) DOWNTO 0) := b;
		    VARIABLE product: std_logic_vector( (a_width + b_width - 1) DOWNTO 0);
		    VARIABLE negative : boolean;
		    VARIABLE a_value, b_value, prod_value: integer;
		    VARIABLE index : integer;
		    VARIABLE cin, value: std_logic;		  
			
			BEGIN
			    IF (anyX(la) or anyX(lb)) THEN
			      	product := setallX(a_width + b_width);
			    ELSIF (all0(la) or all0(lb)) THEN
			      	product := (OTHERS => '0');
			    ELSIF ( a_width + b_width < 32 ) THEN
			      	a_value := std_logic_vector_2_int(la);
			      	b_value := std_logic_vector_2_int(lb);
			      	prod_value := a_value * b_value; 
			      	product := int_2_std_logic_vector( prod_value,(a_width + b_width) );
			    ELSE
			      	negative := false;
			      	IF ( (la(a_width - 1) xor lb(b_width - 1)) = '1' ) THEN
			        	negative := true;
			      	END IF ;	 
					  
			      	IF (la(a_width - 1) = '1') THEN
			        	la := two_comp(la);
			      	END IF ;
					  
			      	IF (lb(b_width - 1) = '1') THEN
			        	lb := two_comp(lb);
			      	END IF ;
					  
			      	product := (OTHERS => '0');
			       	FOR i IN 0 TO (b_width - 1) LOOP -- b width
			        	IF (lb(i) = '1') THEN
			          		index := i;
			          		cin := '0';
			          		FOR j IN 0 TO (a_width - 1) LOOP  	-- add a to prod 
			            		value := product(index) xor la(j) xor cin; -- sum 		   
			            		cin := (product(index) AND la(j)) or (product(index) AND cin) or 
			                         (la(j) AND cin); 		-- carry
			            		product(index) := value;
			            		index := index + 1;
			          		END LOOP;
			          	product(index) := product(index) xor cin; -- last carry 
			        	ELSE
			          		cin := '0';
			        	END IF;        
			      	END LOOP;		  
					  
			      	IF (negative) THEN
			        	product := two_comp(product);
			      	END IF;
			    END IF;	 
				
			    RETURN product;
			END "*";
		
		--
		-- Add two std_logic_vectors - both must be the same width
		--
		FUNCTION "+"(a,b : std_logic_vector)
			RETURN std_logic_vector IS 
		
		    CONSTANT a_width: integer := a'LENGTH;
		    CONSTANT b_width: integer := b'LENGTH;
		    CONSTANT max_width: integer := eval(a_width >= b_width) * a_width + eval(b_width > a_width) * b_width;
		    VARIABLE sa : std_logic_vector( (max_width - 1) DOWNTO 0) := extend(a, max_width);
		    VARIABLE sb : std_logic_vector( (max_width - 1) DOWNTO 0) := extend(b, max_width);
		    VARIABLE retval : std_logic_vector( (max_width - 1) DOWNTO 0);
		    VARIABLE carry : std_logic := '0';
			
		  	BEGIN  
			    IF (anyX(sa) OR anyX(sb)) THEN
			      	retval := (OTHERS => 'X');
			    ELSIF (all0(sa)) THEN
			      	retval := sb;
			    ELSIF (all0(sb)) THEN
			      	retval := sa;
			    ELSE
			      	FOR i IN 0 TO (max_width - 1) LOOP
			        	retval(i) := sa(i) XOR sb(i) XOR carry;
			        	carry := (sa(i) AND sb(i)) or (sa(i) AND carry) or (sb(i) AND carry);
			      	END LOOP;
			    END IF;   
				
			    RETURN retval;
		  	END "+";
		
		-- 
		-- Convert a std_logic_vector to the required width.
		-- If the output width is greater than the vector width, then sign or zero extend it
		-- If the output width is less than the vector width, and we are not saturating, then use
		--   the least significant bits.  If saturating, and the vector has overflowed (or underflowed)
		--   the output bit width, then return the largest positive or smallest negative number.   
		-- 				
		    FUNCTION saturated_value(data: std_logic_vector; signed_data: boolean; data_width, out_width: integer)
	      	RETURN std_logic_vector IS	  
		  
	      	VARIABLE result: std_logic_vector(out_width-1 DOWNTO 0);	 
			  
					BEGIN
							IF (out_width > data_width) THEN
									result := extend(data, out_width, signed_data);
							ELSIF (out_width = data_width) THEN
									result := data;
							ELSE
									IF (signed_data) THEN
								  		IF ((data( (out_width - 1))='1' AND all1(data( (data_width - 1) DOWNTO out_width))) OR
								      		(data( (out_width - 1))='0' AND all0(data( (data_width - 1) DOWNTO out_width)))) THEN
								     			result := data(out_width-1 DOWNTO 0);
								  		ELSIF (data( (data_width - 1)) = '1') THEN
								    			result := (OTHERS => '1');
								  		ELSE
								    			result := ('0', OTHERS => '1');
								  		END IF;
									ELSE -- unsigned
								  		IF (any1(data( (data_width - 1) DOWNTO out_width))) THEN
								    			result := (OTHERS => '1');
								  		ELSE
								    			result := data( (out_width - 1) DOWNTO 0);
								  		END IF;
									END IF;
							END IF;	
							
							RETURN result;
					END saturated_value;


		-------- Start of mac process 		
		BEGIN
		    WAIT UNTIL process_data'event AND process_data = '1'; 
			
			-- Compute output of data * coefficients 
		    local_result := (OTHERS => '0');										
		    FOR j IN 1 TO number_of_taps LOOP	
						-- Sign extend the data because the "*" function assumes that the data/coef is signed.  
						--	If the MSbit = '1' it assumes the data/coef is negative.
		      	ldata := extend(data(channel_number)(j), data_width + 1, data_signed);
		      	coef :=  extend(filter_coefficients(j), coef_width + 1, coef_signed); 						
		      	product := ldata * coef;		 
						local_result := local_result + product;
		    END LOOP;
			
		    result <= saturated_value(local_result, data_signed OR coef_signed OR data_antipodal OR coef_antipodal, full_result_width, result_width);
				mid_value <= data(channel_number)((number_of_taps / 2) + (number_of_taps MOD 2))( (data_width - 1) DOWNTO 0);
			
		    result_ready <= '1';	
				-- Wait for "delay_result" process to output the data 
		    WAIT UNTIL processed_result'event AND processed_result = '1';
		    result_ready <= '0';  			
		END PROCESS mac; 
	 
	--
	-- Store the computed results for latency cycles, and assign them to DOUT or DOUT_I and DOUT_Q at
	--  this time.  The results are stored in a linked list, along with the number of cycles they
	--  must be delayed.  This value is decremented every cycle.  When the value reaches zero, it 
	--  is placed on an output port, and RDY asserted.
	-- For interpolating filters, multiple results are generated from a single input sample.  This
	--  process ensures that these results are output in subsequent cycles by incrementing the latency
	--  for each consecutive result.
	-- This process also tracks the output channel for multichannel filters, and sets SEL_O 
	--  accordingly.
	-- When the filter is reloading, the linked list is deleted. 
	--
	  delay_result: PROCESS	
		  
		VARIABLE rdy_delay_counter					: integer := 0;																		
		VARIABLE sample_latency_counter			: integer := 0;
		
		VARIABLE test_flag							: integer := 0;		-- For debugging purposes only 
		
		FUNCTION compute_latency(use_model_func: boolean; use_latency: integer ) 
		  	RETURN integer IS
		
		    VARIABLE latency: integer := 0;	 
			
		    BEGIN
			      assert (NOT use_model_func) report "Currently the model does not compute the latency.  Parameter c_use_model_func MUST be set TO 0. Please call Xilinx support." severity failure; 
			      
						latency := use_latency;
				  
			      RETURN latency;
				END compute_latency;
 
				
				
    CONSTANT latency: integer := compute_latency( use_model_func, use_latency);
    TYPE output_record;
    TYPE output_ptr IS ACCESS output_record;
    TYPE output_record IS
      	RECORD
		        result: std_logic_vector( (result_width - 1) DOWNTO 0);
		        mid_result: std_logic_vector( (data_width - 1) DOWNTO 0);
		        channel_number: integer;
		        cycles_left: integer;
		        nxt: output_ptr;
      	END RECORD;		
		  
    VARIABLE list_head	: output_ptr := NULL;
    VARIABLE elem				: output_ptr := NULL;
		VARIABLE test_elem	: output_ptr := NULL;
    VARIABLE setup: boolean := true;
    VARIABLE old_bin_chan_num: std_logic_vector( (chan_ind_width - 1) DOWNTO 0) := (OTHERS => '0');
    VARIABLE bin_chan_num: std_logic_vector( (chan_ind_width - 1) DOWNTO 0) := (OTHERS => '0');
    VARIABLE head_latency, local_latency: integer;		
		VARIABLE interp_mults_per_subfilter : integer := 0;
		 	
				-----------	
	    	procedure add_element_to_list(result: std_logic_vector( (result_width - 1) DOWNTO 0);
	    				  			  							mid_result: std_logic_vector( (data_width - 1) DOWNTO 0);
	    				  			  							channel_number, cycles_left: integer;
	    																VARIABLE list_head: INOUT output_ptr) IS
	    					
				VARIABLE elem: output_ptr;   
		  
		    BEGIN
		      	elem := NEW output_record;
		      	elem.result := result;
		      	elem.mid_result := mid_result;
		      	elem.channel_number := channel_number;
		      	elem.cycles_left := cycles_left;
		      	elem.nxt := list_head;
		      	list_head := elem;
		    END add_element_to_list;
 
				-----------		
		    procedure make_list_elements_unknown(VARIABLE list_head: output_ptr) IS
				VARIABLE elem: output_ptr := list_head; 
			
			    BEGIN
			     		while (elem /= NULL) LOOP
			        		elem.result := (OTHERS => 'X');
			        		elem.mid_result := (OTHERS => 'X');
			        		elem := elem.nxt;
			      	END LOOP;
			    END make_list_elements_unknown;

				-----------		
	    	procedure decrement_cycles_left(VARIABLE list_head: IN output_ptr) IS
	      
	     	VARIABLE elem:	output_ptr := list_head;	
			 
		    BEGIN	 
		      	WHILE (elem /= NULL) LOOP	 
							
								-- If the count of the cycles left is already zero, don't decrement anymore 
								IF (elem.cycles_left < 1) THEN
										elem.cycles_left := 0;
								ELSE
										elem.cycles_left := elem.cycles_left - 1;
								END IF;
								
			          elem := elem.nxt;
		      	END LOOP;
		    END decrement_cycles_left;

				-----------		
	    	procedure check_cycles_left(VARIABLE list_head: INOUT output_ptr;
	                                  VARIABLE ret_elem: OUT output_ptr) IS
	      
				VARIABLE prv_elem:	output_ptr := NULL;
	     	VARIABLE elem: 			output_ptr := list_head; 
			 
		    BEGIN	 
						ret_elem := NULL;
					
						-- Check that the list_head is not NULL to begin with 
						IF (elem /= NULL) THEN
								-- Go to the bottom of the list
								WHILE (elem.nxt /= NULL) LOOP
										prv_elem  := elem;
										elem := elem.nxt;
								END LOOP;	
								
								-- Check if the last element in the list has data ready to be output 
								IF (elem.cycles_left = 0) THEN
										ret_elem := elem;
									
										-- Check if there are other elements in the list
										IF (prv_elem /=	NULL) THEN
												elem := prv_elem;
												elem.nxt := NULL;		-- This elem is now the last one in the list 
										ELSE 
												elem := NULL;
												list_head := NULL;
										END IF;										
								END IF;	
						END IF;					
		    END check_cycles_left;

			-----------		
	    procedure remove_all_elements_from_list(VARIABLE list_head: INOUT output_ptr) IS
			VARIABLE next_elem: output_ptr := NULL;		
		
	    BEGIN
	      	WHILE (list_head /= NULL) LOOP
	        		next_elem := list_head;
	        		list_head := list_head.nxt;
	        		deallocate(next_elem);
	      	END LOOP;
	    END remove_all_elements_from_list;

			-----------		
	    procedure get_head_latency(VARIABLE list_head: IN output_ptr;
	                               VARIABLE head_latency: OUT integer) IS
	    BEGIN
	      	IF (list_head = NULL) THEN
	        		head_latency := 0;
	      	ELSE
	        		head_latency := list_head.cycles_left;
	      	END IF;
	    END get_head_latency;
	 				
			-----------	Start of delay_result process 	
		 	BEGIN
					-- Compute delay between successive outputs of a Polyphase Interpolator filter
			    IF ( interpolating_filter )	THEN
							-- Check if number of taps is an integer multiple of the interpolate factor 
							IF ( (number_of_taps MOD interpolate_factor) /= 0 ) THEN		 
								interp_mults_per_subfilter := (number_of_taps / interpolate_factor) + 1;	-- Not an integer multiple 
							ELSE
								interp_mults_per_subfilter := (number_of_taps / interpolate_factor);		-- Is an integer multiple 
							END IF;
					END	IF;			 
					
					IF (setup = true) THEN
			      	rdy <= '0';
			      	IF (has_out_chan_indicator) THEN
			        		sel_o <= (OTHERS => '0');
			      	END IF;	
					  
			      	IF (has_registered_output) THEN
				        	IF (hilbert_transform) THEN
				          		dout_q <= (OTHERS => '0');
				          		dout_i <= (OTHERS => '0');
				        	ELSE
				          		dout <= (OTHERS => '0');
				        	END IF;
			      	END IF;				  
			      	setup := false;	
							
				  -- Ignore this clock edge 
					ELSIF ((clk'event AND rat(clk) = 'X' AND rat(ce) /= '0' AND rat(clk'LAST_VALUE)/='X') OR
				           (clk'event AND rat(clk) = '1' AND rat(clk'last_value) = '0' AND rat(ce) = 'X')) THEN
				      	make_list_elements_unknown(list_head);	  
					
					-- Rising clock edge with clock enable active 
			    ELSIF (clk'event AND rat(clk) = '1' AND rat(clk'last_value) = '0' AND rat(ce) = '1') THEN  
						
							-- Decrement the number of cycles before RDY should be asserted
							IF ( rdy_delay_counter < 1 ) THEN
									rdy_delay_counter := 0;
							ELSE
									rdy_delay_counter := rdy_delay_counter - 1;
							END IF;				
							
							-- Initialize the latency value for the incoming sample 
					    IF (store_data = 1) THEN
								sample_latency_counter := sample_latency_counter + clocks_to_process_data; 							
							END IF;
					
							-- Decrement the number of latency cycles before RDY should be asserted
							IF ( sample_latency_counter < 1 ) THEN
									sample_latency_counter := 0;
							ELSE
									sample_latency_counter := sample_latency_counter - 1;
							END IF;													
							
							decrement_cycles_left(list_head);	
							
							-- A result is ready to be output	
							IF (rdy_delay_counter = 0)	THEN
								
									check_cycles_left(list_head, elem);
					      	IF (elem /= NULL) THEN
						        	IF (has_out_chan_indicator) THEN
						          		bin_chan_num := int_2_std_logic_vector((elem.channel_number + 1) MOD number_of_channels, chan_ind_width); 
						        	END IF;	  
											
						        	IF (coef_ld = '0') THEN	 
						          		IF (hilbert_transform) THEN
						            		dout_i <= elem.mid_result AFTER 0 ns;
						            		dout_q <= elem.result AFTER 0 ns;
						          		ELSE
						            		dout <= elem.result AFTER 0 ns;
						          		END IF;
						          		rdy <= '1' AFTER 0 ns;		
													
													-- Initialize the counter that controls when RDY can be asserted again 
													IF ((filter_type = c_polyphase_decimating) OR (filter_type = c_decimating_half_band)) THEN		
															rdy_delay_counter := clocks_to_process_data * decimate_factor;
													ELSIF ((filter_type = c_polyphase_interpolating) OR (filter_type = c_interpolating_half_band)) THEN
															rdy_delay_counter := interp_mults_per_subfilter;
													ELSE
															rdy_delay_counter := clocks_to_process_data;	
													END IF;
											END IF;	
						        	deallocate(elem);
					      	ELSE
						        	rdy <= '0' AFTER 0 ns;
						        	IF (NOT has_registered_output) THEN
						          		IF (hilbert_transform) THEN
						            			dout_q <= (OTHERS => 'X') AFTER 0 ns;
						            			dout_i <= (OTHERS => 'X') AFTER 0 ns;
						          		ELSE
						            			dout <= (OTHERS => 'X') AFTER 0 ns;
						          		END IF;
						        	END IF;
					      	END IF;		-- elem /= NULL	 
							ELSE
									rdy <= '0' AFTER 0 ns;
							END IF;		-- rdy_delay_counter = 0
														
			      	IF (has_out_chan_indicator) THEN
			        		sel_o <= old_bin_chan_num AFTER 0 ns;
			        		old_bin_chan_num := bin_chan_num;
			      	END IF;
									
				  
					-- Looking for "mac" process to indicate that an output result is ready 	  
			    ELSIF (result_ready'event AND result_ready = '1') THEN	 						
							local_latency := use_latency + sample_latency_counter;
				  
		      		add_element_to_list(result, mid_value, channel_number, local_latency, list_head);
		     			processed_result <= '1';
		      		WAIT FOR 0 ns;
		     			processed_result <= '0';
		    	END IF;		-- setup = true	 
			
					-- Reloading coefficients
			    IF (reloading'event AND reloading = '1') THEN 
			      	remove_all_elements_from_list(list_head);
			      	IF (NOT has_registered_output) THEN
				        	IF (hilbert_transform) THEN
				          		dout_q <= (OTHERS => 'X');
				          		dout_i <= (OTHERS => 'X');
				        	ELSE
				          		dout <= (OTHERS => 'X');
				        	END IF;
			      	ELSE
				        	IF (hilbert_transform) THEN
				          		dout_q <= (OTHERS => '0');
				          		dout_i <= (OTHERS => '0');
				        	ELSE
				          		dout <= (OTHERS => '0');
				        	END IF;
			      	END IF;	
					  
			      	rdy <= '0';
			      	IF (has_out_chan_indicator) THEN
				        	WAIT UNTIL clk'event AND rat(clk) = '1' AND rat(clk'last_value) = '0';
				        	sel_o <= (OTHERS => '0');
				        	bin_chan_num := (OTHERS => '0');
				        	old_bin_chan_num := (OTHERS => '0');
			      	END IF;	   
					  
			      	WAIT UNTIL reloading = '0';
			    END IF;		-- reloading coefficients   
			
		    	WAIT ON clk, result_ready, reloading;
			END PROCESS delay_result;          
	END behavioral;


