-- $Id: viterbi_v2_0_comp.vhd,v 1.4.78.3 2004/05/18 12:11:58 julian Exp $
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

Library XilinxCoreLib;
USE XilinxCoreLib.prims_constants_v5_0.ALL;


PACKAGE viterbi_v2_0_comp IS

   COMPONENT viterbi_v2_0
      GENERIC (   
         c_constraint_length  : INTEGER;
         c_traceback_length   : INTEGER;
         c_serial             : INTEGER;
         c_dual_decoder       : INTEGER;

         c_output_rate0       : INTEGER;
         c_convolution0_code0 : INTEGER;
         c_convolution0_code1 : INTEGER;
         c_convolution0_code2 : INTEGER;
         c_convolution0_code3 : INTEGER;
         c_convolution0_code4 : INTEGER;
         c_convolution0_code5 : INTEGER;
         c_convolution0_code6 : INTEGER;

         c_output_rate1       : INTEGER;
         c_convolution1_code0 : INTEGER;
         c_convolution1_code1 : INTEGER;
         c_convolution1_code2 : INTEGER;
         c_convolution1_code3 : INTEGER;
         c_convolution1_code4 : INTEGER;
         c_convolution1_code5 : INTEGER;
         c_convolution1_code6 : INTEGER;

         c_soft_coding       : INTEGER;
         c_soft_code         : INTEGER;
         c_soft_width        : INTEGER;

         c_punctured         : INTEGER;
         c_punc_input_rate   : INTEGER;
         c_punc_code0        : INTEGER;
         c_punc_code1        : INTEGER;

         c_has_fd            : INTEGER;
         c_has_rffd          : INTEGER;
      
         c_has_erased        : INTEGER; 

         c_has_ber           : INTEGER;
         c_ber_rate          : INTEGER;
         c_has_norm          : INTEGER; 
      
         c_has_nd            : INTEGER;
         c_has_rfd           : INTEGER;
         c_has_rdy           : INTEGER;
              
         c_has_ce            : INTEGER;
         c_has_aclr          : INTEGER;
         c_has_sclr          : INTEGER
      
      );
      PORT (
         data_in0       : IN STD_LOGIC_VECTOR(c_soft_width-1 DOWNTO 0);
         data_in1       : IN STD_LOGIC_VECTOR(c_soft_width-1 DOWNTO 0);
         data_in2       : IN STD_LOGIC_VECTOR(c_soft_width-1 DOWNTO 0);
         data_in3       : IN STD_LOGIC_VECTOR(c_soft_width-1 DOWNTO 0);
         data_in4       : IN STD_LOGIC_VECTOR(c_soft_width-1 DOWNTO 0);
         data_in5       : IN STD_LOGIC_VECTOR(c_soft_width-1 DOWNTO 0);
         data_in6       : IN STD_LOGIC_VECTOR(c_soft_width-1 DOWNTO 0);

         ierase         : IN STD_LOGIC;
         qerase         : IN STD_LOGIC;

         data_out       : OUT STD_LOGIC;
         ber            : OUT STD_LOGIC_VECTOR(16-1 DOWNTO 0);
         ber_done       : OUT STD_LOGIC;
         norm           : OUT STD_LOGIC;

         sel            : IN STD_LOGIC;
            
         nd             : IN STD_LOGIC;
         fd             : IN STD_LOGIC;
         rffd           : OUT STD_LOGIC;
         rfd            : OUT STD_LOGIC;
         rdy            : OUT STD_LOGIC;
         ce             : IN STD_LOGIC;
         aclr           : IN STD_LOGIC;
         sclr           : IN STD_LOGIC;
         clk            : IN STD_LOGIC
      );
   END COMPONENT;
END viterbi_v2_0_comp;
