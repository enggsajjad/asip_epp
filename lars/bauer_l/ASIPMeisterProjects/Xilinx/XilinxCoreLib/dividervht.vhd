-- ************************************************************************
--  Copyright (C) 1998 - Xilinx, Inc.
--  All rights reserved.
-- ************************************************************************
-- Checked out 19th Oct 1998
------------------------------------------------------------
--
--  Description
--  Pipelined divider
--                  
--
------------------------------------------------------------
--
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
--  
LIBRARY xilinxcorelib;
USE xilinxcorelib.ul_utils.ALL;
--  
------------------------------------------------------------

ENTITY dividervht  IS     
   GENERIC (
      dividend_width      :POSITIVE ;
      divisor_width       :POSITIVE ;
      fractional_width    :POSITIVE ;
      divclk_sel          :POSITIVE ;
      signed_b            :INTEGER  ;
      fractional_b        :INTEGER  
   );
   PORT(
      dividend : IN  STD_LOGIC_VECTOR(dividend_width-1 DOWNTO 0);       -- dividend in
      divisor  : IN  STD_LOGIC_VECTOR(divisor_width-1 DOWNTO 0);        -- divisor in
      quot     : OUT STD_LOGIC_VECTOR(dividend_width-1 DOWNTO 0);       -- quotient out
      remd     : OUT STD_LOGIC_VECTOR(fractional_width-1 DOWNTO 0);     -- remainder out
      c        : IN  STD_LOGIC                                          -- clock
      );
END dividervht;

------------------------------ARCHITECTURE------------------

ARCHITECTURE behavioral OF dividervht IS


FUNCTION latency_value(bus_num,bus_fract,fractional : INTEGER)
  RETURN INTEGER IS
BEGIN
  IF (fractional=1) THEN  
     return bus_num + bus_fract;
  ELSE
     RETURN bus_num;
  END IF;

END latency_value;
  

-- required constants for latency

CONSTANT latency_max : INTEGER := dividend_width + fractional_width + divclk_sel + 4;
CONSTANT bus_latency : INTEGER := latency_value(dividend_width,fractional_width,fractional_b);


type quotient_array IS ARRAY(latency_max DOWNTO 0)
   OF STD_LOGIC_VECTOR(dividend_width -1 DOWNTO 0);
type remainder_array IS ARRAY(latency_max DOWNTO 0)
   OF STD_LOGIC_VECTOR(fractional_width -1 DOWNTO 0);

-- latency calculation

FUNCTION pipe_depth(n,f,div_clk,signed,fract:INTEGER)
  RETURN INTEGER IS
  VARIABLE temp,result : INTEGER;
BEGIN
    IF(signed=0) THEN
      CASE div_clk IS
         WHEN 1
            => temp := n + 3; 
         WHEN OTHERS
            => temp := n + 4;
      END CASE;
    ELSE
      CASE div_clk IS
         WHEN 1
            => temp := n-1 + 3 + 2; 
         WHEN OTHERS 
            => temp := n-1 + 4 + div_clk + 1;
      END CASE;
    END IF;
    IF(fract=0) THEN
      RETURN temp;
   ELSE
      IF(signed=0) THEN
         RETURN temp +f;
      ELSE
         RETURN temp + f-1; 
      END IF;
   END IF;

END pipe_depth;  


  

BEGIN
    
   main : 
   PROCESS 
      -- initialization
      VARIABLE setup             : BOOLEAN := TRUE;
      VARIABLE roc_clock_count   : INTEGER := 1;
      VARIABLE clock_counter     : INTEGER := 0;
        
         -- setup the pipeline value
      VARIABLE latency           : INTEGER := pipe_depth(dividend_width,fractional_width,divclk_sel,signed_b,fractional_b);
 
      -- arrays to hold the pipelined results
      VARIABLE quotient_d        : quotient_array;
      VARIABLE remainder_d       : remainder_array;
     
      -- dividend and divisor variables
      VARIABLE vdividend         : STD_LOGIC_VECTOR(dividend_width-1 DOWNTO 0);
      VARIABLE vdivisor          : STD_LOGIC_VECTOR(divisor_width-1 DOWNTO 0);

      -- bit vectors of the result
      VARIABLE vquotient         : STD_LOGIC_VECTOR(bus_latency-1 DOWNTO 0);
      VARIABLE vremainder        : STD_LOGIC_VECTOR(fractional_width-1 DOWNTO 0);
     
      -- temp variables for std_logic calcuations
      VARIABLE vtemp,vtemp_new   : STD_LOGIC_VECTOR(divisor_width DOWNTO 0);
      VARIABLE vdividend_temp    : STD_LOGIC_VECTOR(dividend_width -1 DOWNTO 0);
      VARIABLE vdivisor_temp     : STD_LOGIC_VECTOR(divisor_width DOWNTO 0);
      VARIABLE vremainder_temp   : STD_LOGIC_VECTOR(fractional_width-1  DOWNTO 0);
     
      -- test sign of input for signed version
      VARIABLE dividend_neg      : BOOLEAN := FALSE;
      VARIABLE divisor_neg       : BOOLEAN := FALSE;
     
      -- should the quotient or remainder be negative
      VARIABLE quotient_neg      : BOOLEAN := FALSE;
      VARIABLE remainder_neg     : BOOLEAN := FALSE;
     
      -- loop counter
      VARIABLE i,j               : INTEGER;
      VARIABLE cin,restore       : STD_LOGIC;

      -- for unsigned calculations
      VARIABLE u_divisor_width      : INTEGER;
      VARIABLE u_dividend_width     : INTEGER;
      VARIABLE u_bus_latency     : INTEGER;


   BEGIN
      IF(signed_b=1) THEN
         u_divisor_width := divisor_width-1;
         u_dividend_width := dividend_width-1;
         IF(fractional_b=1) THEN
            u_bus_latency := bus_latency-2;
         ELSE
            u_bus_latency := bus_latency-1;
         END IF;
      ELSE
         u_divisor_width  := divisor_width;
         u_dividend_width := dividend_width;
         u_bus_latency  := bus_latency;
      END IF;        
      

      IF(setup = TRUE) THEN
         -- zero out at start
         FOR i IN latency-1 DOWNTO 0 LOOP
            quotient_d(i) := setall0(dividend_width);
            remainder_d(i) := setall0(fractional_width);           
         END LOOP;
         setup := FALSE;
      ELSIF (rat(c) = 'X') THEN
         -- everything set to X
         FOR i IN latency-1 DOWNTO 0 LOOP
            quotient_d(i) := setallX(dividend_width);
            remainder_d(i) := setallX(fractional_width);           
         END LOOP;
      ELSIF (c'event AND rat(c) = '1' AND rat(c'last_value) = '0') THEN
         IF(roc_clock_count /= 0) THEN
            -- take account of reset time
            roc_clock_count := roc_clock_count -1;
         ELSE
            -- increment the clock counter
            clock_counter := clock_counter +1;
         END IF;
         IF((clock_counter REM divclk_sel)= 0) THEN
            clock_counter := 0;
     
            -- main part of the divisor process
            -- check first that there is no errors on the input
            IF( anyX(dividend) OR anyX(divisor)) THEN
               vquotient := setallX(bus_latency);
               vremainder:= setallX(fractional_width);
            ELSE
          
               -- initialise variables and signed booleans
               dividend_neg := FALSE;
               divisor_neg := FALSE;
               vdividend := std_logic_vector_2_var(dividend);
               vdivisor := std_logic_vector_2_var(divisor);
             
               -- check whether the dividend is negative and convert to positive
               IF((signed_b =1) AND (vdividend(dividend_width -1) = '1')) THEN
                  dividend_neg := TRUE;
                  vdividend := two_comp(vdividend);
               END IF;
             
               -- check whether the divisor is negative and convert to positive
               IF((signed_b=1) AND (vdivisor(divisor_width -1) = '1')) THEN
                  divisor_neg := TRUE;
                  vdivisor := two_comp(vdivisor);
               END IF;

               -- quotient is negative if
               IF (dividend_neg XOR divisor_neg) THEN
                  quotient_neg := TRUE;
               ELSE
                  quotient_neg := FALSE;                  
               END IF;
             
               -- remainder is negative if
               IF (dividend_neg) THEN
                  remainder_neg := TRUE;
               ELSE
                  remainder_neg := FALSE; 
               END IF;
             
               vdividend_temp(u_dividend_width -1 DOWNTO 0) 
                  := vdividend(u_dividend_width - 1 DOWNTO 0);
               vdivisor_temp(u_divisor_width -1 DOWNTO 0) := vdivisor(u_divisor_width - 1 DOWNTO 0);

               -- set extra top bit of divisor to zero
               vdivisor_temp(u_divisor_width) := '0';
              
               -- initialise vtemp to 0
               vtemp := (OTHERS => '0');

               -- main loop for the quotient remainder calculation 
               FOR i IN 0 TO u_bus_latency-1 LOOP
                  restore := vtemp(u_divisor_width);
                  -- shift the result
                  vtemp(u_divisor_width DOWNTO 1) := vtemp(u_divisor_width -1 DOWNTO 0);
                  -- add in the lowest bit of the dividend
                  IF(u_dividend_width - 1 -i >= 0) THEN 
                     vtemp(0) := vdividend_temp(u_dividend_width-1-i);                                      
                  ELSE
                     vtemp(0) := '0';
                  END IF;
                     
                  IF (restore = '1') THEN
                     -- add vtemp to vdivsor_temp
                     -- vtemp_new := vtemp + vdivisor_temp;
                     cin := '0';
                     FOR j IN 0 TO u_divisor_width LOOP
                        vtemp_new(j) := vtemp(j) XOR vdivisor_temp(j) XOR cin;
                        cin :=   (vtemp(j) AND vdivisor_temp(j))  
                                 OR (cin AND vtemp(j)) 
                                 OR (cin AND vdivisor_temp(j));                             
                     END LOOP;
                    
                  ELSE
                     -- subtract the divisor from vtemp
                     -- vtemp_new := vtemp - vdivisor_temp;
                     cin := '0';
                     FOR j IN 0 TO u_divisor_width LOOP
                        vtemp_new(j) :=    ((vtemp(j)     XOR vdivisor_temp(j)) AND (NOT(cin)))
                                          OR ((NOT(vtemp(j) XOR vdivisor_temp(j)) AND cin));  
                        cin := (
                                NOT(cin) AND 
                                (NOT(vtemp(j)) AND  vdivisor_temp(j))
                                )
                               OR 
                               ( 
                                cin  AND 
                                (NOT(vtemp(j)) OR   vdivisor_temp(j))
                                );
                       
                     END LOOP;
                  END IF;
                 
                  vtemp := vtemp_new;
                 
                  vquotient(u_bus_latency -1 -i) := NOT(vtemp(u_divisor_width));
               END LOOP;
               -- calculate the remainder
               IF(fractional_b=0) THEN 
                  IF( vtemp(u_divisor_width) = '1') THEN
                     -- remainder is result plus divisor 
                     -- vremainder_temp := vtemp + vdivisor_temp;
                     cin := '0';
                     FOR j IN 0 TO u_divisor_width-1 LOOP
                        vremainder_temp(j) := vtemp(j) XOR vdivisor_temp(j) XOR cin;
                        cin :=   (vtemp(j) AND vdivisor_temp(j))  
                                 OR (cin AND vtemp(j)) 
                                 OR (cin AND vdivisor_temp(j));                             
                     END LOOP;
                  ELSE
                     vremainder_temp(u_divisor_width-1 DOWNTO 0) := vtemp(u_divisor_width -1 DOWNTO 0);
                  END IF;
                 
                  vremainder(u_divisor_width -1 DOWNTO 0) := vremainder_temp(u_divisor_width-1 DOWNTO 0);
               END IF; -- not fractional
             
               -- set the top bits of the result if signed
               IF(signed_b=1) THEN
                  vquotient(bus_latency -1) := '0';
                  vremainder(fractional_width -1) := '0';
                  IF(fractional_b=1) THEN
                     vquotient(bus_latency -2) := '0';
                  END IF;
               END IF;
             
               IF(remainder_neg) THEN
                  vremainder :=two_comp(vremainder);
               END IF;
            END IF; -- clock_counter check

         END IF;-- if anyX                
     
         -- move the values through the latency array by one stage
         FOR i IN latency -2 DOWNTO 0 LOOP
            quotient_d(i+1) := quotient_d(i);
            remainder_d(i+1) := remainder_d(i);
         END LOOP;
        
         IF(fractional_b=1) THEN
            IF(signed_b=0) THEN
               remainder_d(0) := vquotient(fractional_width-1 DOWNTO 0);
            ELSE
               vremainder(fractional_width-2 DOWNTO 0) := vquotient(fractional_width-2 DOWNTO 0);
               IF( anyX(dividend) OR anyX(divisor)) THEN
                  vremainder(fractional_width-1) := 'X';
               ELSE
                  vremainder(fractional_width-1) := '0';
               END IF;
               IF (quotient_neg) THEN
                  vremainder := two_comp(vremainder);
               END IF;
               remainder_d(0) := vremainder;     
            END IF;
         ELSE   
            remainder_d(0) := vremainder;     
         END IF;   

         -- add in the newest results
         IF((fractional_b=1) AND (signed_b=1)) THEN
            quotient_d(0) := vquotient(bus_latency-2 DOWNTO bus_latency-1 - dividend_width);
            IF(quotient_neg) THEN
               quotient_d(0) :=two_comp(quotient_d(0));
            END IF;
         ELSE
            quotient_d(0) := vquotient(bus_latency-1 DOWNTO bus_latency - dividend_width);
            IF(quotient_neg) THEN
               quotient_d(0) :=two_comp(quotient_d(0));
            END IF;
         END IF;

      END IF; -- setup
     
      -- put the results out to the ports
      quot <= quotient_d(latency - 1);
      remd <= remainder_d(latency - 1);
     
      -- wait on the clk
      WAIT ON c;
   END PROCESS;

END behavioral;

------------------------------END---------------------------
