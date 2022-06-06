-- $Id: convolution_v2_0_comp.vhd,v 1.2.78.3 2004/05/18 12:10:41 julian Exp $
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

Library XilinxCoreLib;
USE XilinxCoreLib.prims_constants_v3_0.ALL;


PACKAGE convolution_v2_0_comp IS

   COMPONENT convolution_v2_0
      GENERIC ( 
         c_output_rate        : INTEGER; 
         c_constraint_length  : INTEGER; 
         c_punctured          : INTEGER;
         c_dual_channel       : INTEGER;
         c_punc_input_rate    : INTEGER;
         c_punc_output_rate   : INTEGER;

         c_convolution_code0  : INTEGER;
         c_convolution_code1  : INTEGER;
         c_convolution_code2  : INTEGER;
         c_convolution_code3  : INTEGER;
         c_convolution_code4  : INTEGER;
         c_convolution_code5  : INTEGER;
         c_convolution_code6  : INTEGER;

         c_punc_code0         : INTEGER;
         c_punc_code1         : INTEGER;

         c_has_nd             : INTEGER;
         c_has_rfd            : INTEGER;
         c_has_rdy            : INTEGER;
         c_has_fd             : INTEGER;
         c_has_rffd           : INTEGER;

         c_has_ce             : INTEGER;  
         c_has_aclr           : INTEGER;   
         c_has_sclr           : INTEGER;
         
         c_enable_rlocs       : INTEGER
      );
      PORT (
         data_in        : IN STD_LOGIC;
         data_out_v     : OUT STD_LOGIC_VECTOR(c_output_rate-1 DOWNTO 0);
         data_out_s     : OUT STD_LOGIC;
         fd             : IN STD_LOGIC;
         nd             : IN STD_LOGIC;
         rfd            : OUT STD_LOGIC;
         rffd           : OUT STD_LOGIC;
         rdy            : OUT STD_LOGIC;
         ce             : IN STD_LOGIC; 
         sclr           : IN STD_LOGIC;
         aclr           : IN STD_LOGIC;
         clk            : IN STD_LOGIC
      );
   END COMPONENT;
END convolution_v2_0_comp;
