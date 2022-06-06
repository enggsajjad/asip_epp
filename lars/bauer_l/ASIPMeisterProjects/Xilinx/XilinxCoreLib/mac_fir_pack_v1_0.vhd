-- $Id: mac_fir_pack_v1_0.vhd,v 1.2.78.3 2004/05/18 12:11:13 julian Exp $ This package contains constants used by the behavioral model files
PACKAGE mac_fir_pack_v1_0 IS
	
	-- Values for boolean type of paramters
	CONSTANT c_true		: integer := 1;
	CONSTANT c_false	: integer := 0;
	
	-- Values for c_data_type/c_coeff_type
	CONSTANT c_signed    : integer := 0;
	CONSTANT c_unsigned  : integer := 1;
	CONSTANT c_antipodal : integer := 2;
	
	-- Vaules for c_response
	CONSTANT c_symmetric 	 		: integer := 0;
	CONSTANT c_non_symmetric 	: integer := 1;
	CONSTANT c_neg_symmetric 	: integer := 2;
	
	-- Values for c_filter_type 
	CONSTANT c_single_rate 		 					: integer := 0;
	CONSTANT c_polyphase_interpolating 	: integer := 1;
	CONSTANT c_polyphase_decimating 		: integer := 2;
	CONSTANT c_hilbert_transform 				: integer := 3;
	CONSTANT c_interpolated		 					: integer := 4;
	CONSTANT c_half_band 								: integer := 5;
	CONSTANT c_decimating_half_band  		: integer := 6;
	CONSTANT c_interpolating_half_band 	: integer := 7;
	
	-- Values for c_reload
	CONSTANT c_no_reload : integer := 0;
	CONSTANT c_static    : integer := 1;

	-- Values for memory type
	CONSTANT c_data_buffer_type : integer := 6;		-- Block Dual Port RAM 
	CONSTANT c_coef_buffer_type : integer := 6;		-- Block Dual Port RAM		 
	
	-- Values for SEL_I port direction 
	CONSTANT c_sel_input_port_is_input  : integer := 1; 
	CONSTANT c_sel_input_port_is_output : integer := 0;	 
	
	-- Values for RDY latency 
	CONSTANT c_mac_fir_compute_latency						: integer := 9;	-- Processing delay through MAC FIR
	CONSTANT c_mac_fir_decimating_compute_latency	: integer := 7;		-- Processing delay through MAC FIR for Decimating filters
	CONSTANT c_mac_fir_xtra_symmetric_latency			: integer := 1;		-- Extra processing delay through MAC FIR for symmetric filters
	CONSTANT c_max_number_samples									: integer := 9;		-- Number of samples in input buffer before it indicates it is full 

	CONSTANT c_mac_rdy_to_rfd_delay								: integer := 1;		-- Delay from RDY until RFD can be asserted again  
	
END mac_fir_pack_v1_0;
