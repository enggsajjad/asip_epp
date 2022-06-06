
Library IEEE;
Use IEEE.std_logic_1164.all;

PACKAGE dividervht_comp IS

COMPONENT dividervht
   GENERIC (
      dividend_width      :POSITIVE ;
      divisor_width       :POSITIVE ;
      fractional_width    :POSITIVE ;
      divclk_sel          :POSITIVE ;
      signed_b            :INTEGER  ;
      fractional_b        :INTEGER  
   );
   PORT(
      dividend : IN  STD_LOGIC_VECTOR(dividend_width-1 DOWNTO 0);     
      divisor  : IN  STD_LOGIC_VECTOR(divisor_width-1 DOWNTO 0);      
      quot     : OUT STD_LOGIC_VECTOR(dividend_width-1 DOWNTO 0);     
      remd     : OUT STD_LOGIC_VECTOR(fractional_width-1 DOWNTO 0);   
      c        : IN  STD_LOGIC                                      
      );
END COMPONENT;

END dividervht_comp;
