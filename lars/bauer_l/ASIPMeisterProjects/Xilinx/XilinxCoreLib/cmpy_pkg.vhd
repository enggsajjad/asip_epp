LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE cmpy_pkg IS

    function eval(condition: boolean) return integer;
    function eval_std(condition: boolean) return std_logic;
    function max_i(a, b: integer ) return integer;
    function min_i(a, b: integer ) return integer;
    function legacy_mod(MULT_REG: integer ) return string;

    -- function to decide whether a logic fabric adder is necessary in the cmpy_mult35x35
    function cascade_mult35x35(MODE, A_WIDTH, B_WIDTH, C_WIDTH, ROUND_BITS: integer ) return boolean;

    -- function to decide whether the 3 or the 4 multiplier complex mult architecture is going to be used
    function mult_3_arch(OPTIMIZE, LARGE_WIDTH, SMALL_WIDTH, P_WIDTH, ROUND, PIPE_IN, PIPE_MID, PIPE_OUT : integer) return integer;
    -- possible values of OPTIMIZE are:
    constant SPEED: integer := 0;
    constant DSP48_COUNT: integer := 1;
    constant AREA: integer := 2;
    -- area ratio between DPS48 and slices:
    constant slice_2_DSP48s_ratio : integer  := 200;

    function cmpy_mult_add_latency(          A_WIDTH, B_WIDTH, C_WIDTH,          ROUND_BITS, MODE, PIPE_IN, PIPE_MID, PIPE_OUT : integer) return integer;
    function cmpy_axb_plus_cxd_latency(                                                            PIPE_IN, PIPE_MID, PIPE_OUT : integer) return integer;
    function cmpy_axb_plus_cxd_casc_latency(                                                       PIPE_IN, PIPE_MID, PIPE_OUT : integer) return integer;
    function cmpy18x18_latency(                                                                    PIPE_IN, PIPE_MID, PIPE_OUT : integer) return integer;
    function cmpy35x18_latency(                                                                    PIPE_IN, PIPE_MID, PIPE_OUT : integer) return integer;
    function cmpy3_latency(                  A_WIDTH, B_WIDTH,          P_WIDTH,             ROUND,PIPE_IN, PIPE_MID, PIPE_OUT : integer) return integer;
    function cmpy_latency( OPTIMIZE,         A_WIDTH, B_WIDTH,          P_WIDTH,             ROUND,PIPE_IN, PIPE_MID, PIPE_OUT : integer) return integer;

    constant cmpy_mult18x18_DSP48s           : integer := 1;
    constant cmpy_mult35x18_DSP48s           : integer := 2;
    constant cmpy_mult35x35_DSP48s           : integer := 4;
    function cmpy_mult_add_DSP48s(           A_WIDTH, B_WIDTH                                             : integer) return integer;
    constant cmpy_axb_plus_cxd_DSP48s        : integer:= 2;
    constant cmpy_axb_plus_cxd_casc_DSP48s   : integer:= 2;
    constant cmpy18x18_DSP48s                : integer:= 4;
    constant cmpy35x18_DSP48s                : integer:= 8;
    function cmpy3_DSP48s(                   A_WIDTH, B_WIDTH                                             : integer ) return integer;
    function cmpy_DSP48s( OPTIMIZE,          A_WIDTH, B_WIDTH, P_WIDTH, ROUND,PIPE_IN, PIPE_MID, PIPE_OUT : integer ) return integer;

    function cmpy_reg_re_slices(               WIDTH, DEPTH                                                                                  : integer) return integer;
    function cmpy_pipe_add_sub_slices(         WIDTH,                                              PIPE_IN, PIPE_MID, PIPE_OUT               : integer) return integer;
    function cmpy_mult18x18_slices(          A_WIDTH, B_WIDTH, C_WIDTH,                      MODE, PIPE_IN, PIPE_MID,           B_LAG, C_LAG : integer) return integer;
    function cmpy_mult35x18_slices(          A_WIDTH, B_WIDTH, C_WIDTH, P_WIDTH,             MODE, PIPE_IN, PIPE_MID, PIPE_OUT, B_LAG, C_LAG : integer) return integer;
    function cmpy_mult35x35_slices(          A_WIDTH, B_WIDTH, C_WIDTH, P_WIDTH, ROUND_BITS, MODE, PIPE_IN, PIPE_MID, PIPE_OUT, B_LAG, C_LAG : integer) return integer;
    function cmpy_mult_add_slices(           A_WIDTH, B_WIDTH, C_WIDTH, P_WIDTH, ROUND_BITS, MODE, PIPE_IN, PIPE_MID, PIPE_OUT, B_LAG, C_LAG : integer) return integer;
    constant cmpy_axb_plus_cxd_slices        : integer:= 0;
    function cmpy_axb_plus_cxd_casc_slices(  A_WIDTH, D_WIDTH,                                     PIPE_IN,           PIPE_OUT               : integer) return integer;
    constant cmpy18x18_slices                : integer:= 0;
    function cmpy35x18_slices(               A_WIDTH, B_WIDTH,          P_WIDTH,                   PIPE_IN, PIPE_MID, PIPE_OUT               : integer) return integer;
    function cmpy3_slices(                   A_WIDTH, B_WIDTH,          P_WIDTH,             ROUND,PIPE_IN, PIPE_MID, PIPE_OUT               : integer) return integer;
    function cmpy_slices( OPTIMIZE,          A_WIDTH, B_WIDTH,          P_WIDTH,             ROUND,PIPE_IN, PIPE_MID, PIPE_OUT               : integer ) return integer;

end cmpy_pkg;


PACKAGE BODY cmpy_pkg IS

--------------------------------------------------------------------
-- Evaluates boolean to integer
--------------------------------------------------------------------
  function eval(condition: boolean) return integer IS
  begin
    if condition=TRUE then return 1;
    else                   return 0;
    end if;
  end eval;

--------------------------------------------------------------------
-- Evaluates boolean to std_logic
--------------------------------------------------------------------
  function eval_std(condition: boolean) return std_logic IS
  begin
    if condition=TRUE then return '1';
    else                   return '0';
    end if;
  end eval_std;

--------------------------------------------------------------------
-- returns the larger of two integers
--------------------------------------------------------------------
    function max_i(a, b: integer ) return integer IS
    begin
        if (a>b) then return a;
        else return b;
        end if;
    end;

--------------------------------------------------------------------
-- returns the smaller of two integers
--------------------------------------------------------------------
    function min_i(a, b: integer ) return integer IS
    begin
        if (a>b) then return b;
        else return a;
        end if;
    end;

--------------------------------------------------------------------
-- returns the smaller of two integers
--------------------------------------------------------------------
    function legacy_mod(MULT_REG: integer ) return string IS
        constant registered_mult: string := "MULT18X18S";
        constant async_mult     : string := "MULT18X18";
    begin
        if (mult_reg=1)then return registered_mult;
        else                return async_mult;
        end if;
    end;


--------------------------------------------------------------------
-- Decides whether mult35x535 is going to cascade two cmpy_mult35x18s 
-- directly or through a logic fabric adder
--------------------------------------------------------------------
    function cascade_mult35x35(MODE, A_WIDTH, B_WIDTH, C_WIDTH, ROUND_BITS : integer ) return boolean IS
        variable OK : boolean; 
        begin 
            OK :=   (MODE = 0) OR 
                   ((MODE = 1) AND (ROUND_BITS<46)) OR
                   ((MODE = 2) AND (A_WIDTH+B_WIDTH<49)) OR
                   ((MODE = 3) AND (A_WIDTH+B_WIDTH<49) AND (ROUND_BITS<46)) OR 
                   ((MODE = 4) AND (A_WIDTH+B_WIDTH<49) AND (C_WIDTH<49)) OR
                   ((MODE = 5) AND (A_WIDTH+B_WIDTH<49) AND (C_WIDTH<49));
            return OK;
        end cascade_mult35x35;

-------------------------------------------------------------------------
-- Function to select between the most optimal implementation 
-- Return values: 
-- 0: cmpy18x18, 
-- 1: cmpy35x18 
-- 2: cmpy3
-------------------------------------------------------------------------
    function mult_3_arch(OPTIMIZE, LARGE_WIDTH, SMALL_WIDTH, P_WIDTH, ROUND, PIPE_IN, PIPE_MID, PIPE_OUT : integer) return integer is
        variable mult_3_slices          : integer;
        variable mult_3_DSP48s          : integer;
        variable mult_4_slices          : integer;
        variable mult_4_DSP48s          : integer;
        variable mult_3_cost            : integer;
        variable mult_4_cost            : integer;
        begin 
            if (LARGE_WIDTH>18) and (SMALL_WIDTH>18) then return 2; -- only option is cmpy3
            else
                case OPTIMIZE is
                    when SPEED => 
                        if (LARGE_WIDTH>18) then return 1;
                                            else return 0;
                        end if;
                    when DSP48_COUNT =>
                        mult_3_DSP48s :=  cmpy3_DSP48s(LARGE_WIDTH, SMALL_WIDTH);
                        if (LARGE_WIDTH>18) then 
                            -- when costs are equal, choose the 4 mult structure:
                            if (mult_3_DSP48s < cmpy35x18_DSP48s) and (LARGE_WIDTH<35) then return 2;
                                                                                       else return 1;
                            end if;
                        else
                            if (mult_3_DSP48s < cmpy18x18_DSP48s) then return 2; 
                                                                  else return 0;
                            end if;
                        end if;
                    when others =>
                        mult_3_DSP48s := cmpy3_DSP48s(LARGE_WIDTH, SMALL_WIDTH);
                        mult_3_slices := cmpy3_slices(LARGE_WIDTH, SMALL_WIDTH, P_WIDTH, ROUND, PIPE_IN, PIPE_MID, PIPE_OUT);
                        mult_3_cost   := mult_3_DSP48s * slice_2_DSP48s_ratio + mult_3_slices;
                        if (LARGE_WIDTH>18) then 
                            mult_4_DSP48s := cmpy35x18_DSP48s;
                            mult_4_slices := cmpy35x18_slices(LARGE_WIDTH, SMALL_WIDTH, P_WIDTH, PIPE_IN, PIPE_MID, PIPE_OUT);
                            mult_4_cost   := mult_4_DSP48s * slice_2_DSP48s_ratio + mult_4_slices;

                            -- when costs are equal, choose the 4 mult structure:
                            if (mult_3_cost < mult_4_cost) then return 2;
                                                           else return 1;
                            end if;
                        else
                            mult_4_DSP48s := cmpy18x18_DSP48s;
                            mult_4_slices := cmpy18x18_slices;
                            mult_4_cost   := mult_4_DSP48s * slice_2_DSP48s_ratio + mult_4_slices;
                            if (mult_3_cost < mult_4_cost) then return 2;
                                                           else return 0;
                            end if;
                        end if;

                end case;
            end if;
        end mult_3_arch;


--------------------------------------------------------------------
-- Latency of a cmpy_mult_add
--------------------------------------------------------------------
    function cmpy_mult_add_latency(A_WIDTH, B_WIDTH, C_WIDTH, ROUND_BITS, MODE, PIPE_IN, PIPE_MID, PIPE_OUT : integer) return integer IS
        variable latency : integer := 0; -- Latency of the cmpy_mult35x35 without any registers
        constant smaller:   integer := min_i(A_WIDTH,B_WIDTH);
        constant larger:    integer := max_i(A_WIDTH,B_WIDTH);
        variable arch:      boolean; 
        begin

        if (larger<19) then         latency := max_i(0,PIPE_IN) + min_i(max_i(0,PIPE_MID),1) + min_i(max_i(0,PIPE_OUT),1);       
        else
            if (smaller<19) then    latency := max_i(0,PIPE_IN) + min_i(max_i(0,PIPE_MID),1) + 2*min_i(max_i(0,PIPE_OUT),1);
            
            else arch := cascade_mult35x35(MODE, A_WIDTH, B_WIDTH, C_WIDTH, ROUND_BITS);
                                    latency := max_i(0,PIPE_IN) + min_i(max_i(0,PIPE_MID),1) + 4*min_i(max_i(0,PIPE_OUT),1);
                if (not arch) then  latency := latency + min_i(max_i(0,PIPE_OUT),1); end if;
            end if;
        end if;

        return latency; 
        end cmpy_mult_add_latency;

--------------------------------------------------------------------
-- Latency of an cmpy_axb_plus_cxd
--------------------------------------------------------------------
    function cmpy_axb_plus_cxd_latency(PIPE_IN, PIPE_MID, PIPE_OUT : integer) return integer IS
        variable latency : integer; 
        begin
            latency := min_i(max_i(0,PIPE_IN),1) + min_i(max_i(0,PIPE_MID),1) + 2*min_i(max_i(0,PIPE_OUT),1);
            return latency; 
        end cmpy_axb_plus_cxd_latency;

--------------------------------------------------------------------
-- Latency of a cascaded cmpy_axb_plus_cxd
--------------------------------------------------------------------
    function cmpy_axb_plus_cxd_casc_latency(PIPE_IN, PIPE_MID, PIPE_OUT : integer) return integer IS
        variable latency : integer; 
        begin
            latency := max_i(0,PIPE_IN) + min_i(max_i(0,PIPE_MID),1) + 2*min_i(max_i(0,PIPE_OUT),1);
            return latency; 
        end cmpy_axb_plus_cxd_casc_latency;

-------------------------------------------------------------------
-- Latency of a cmpy18x18
--------------------------------------------------------------------
   function cmpy18x18_latency(PIPE_IN, PIPE_MID, PIPE_OUT : integer) return integer IS
        variable latency : integer; 
        begin
            latency := min_i(max_i(0,PIPE_IN),1) + min_i(max_i(0,PIPE_MID),1) + 2*min_i(max_i(0,PIPE_OUT),1);
            return latency; 
        end cmpy18x18_latency;

--------------------------------------------------------------------
-- Latency of a cmpy35x18
--------------------------------------------------------------------
   function cmpy35x18_latency(PIPE_IN, PIPE_MID, PIPE_OUT : integer) return integer IS
        variable latency : integer; 
        begin
            latency := min_i(max_i(0,PIPE_IN),1) + min_i(max_i(0,PIPE_MID),1) + 4*min_i(max_i(0,PIPE_OUT),1);
            return latency; 
        end cmpy35x18_latency;

--------------------------------------------------------------------
-- Latency of a cmpy3
--------------------------------------------------------------------
    function cmpy3_latency(A_WIDTH, B_WIDTH, P_WIDTH, ROUND, PIPE_IN, PIPE_MID, PIPE_OUT : integer) return integer IS
        variable ADDER_DELAY_1_3:   integer;
        variable ADDER_DELAY_2:     integer;
        variable P2_WIDTH :         integer;
        variable POST_MULT2_DELAY:  integer;
        variable MULT_13_PIPE_IN:   integer;
        variable CMPY3_LATENCY:     integer;
        variable ROUND_BITS_2:      integer;
        begin
            ADDER_DELAY_1_3  := PIPE_IN+PIPE_MID*(A_WIDTH/18)+PIPE_OUT;     
            ADDER_DELAY_2    := PIPE_IN+PIPE_MID*(    (B_WIDTH+eval(PIPE_IN=0)*(A_WIDTH-B_WIDTH))/18   )+PIPE_OUT;     
            P2_WIDTH         := A_WIDTH+B_WIDTH+1;
            ROUND_BITS_2     := P2_WIDTH-P_WIDTH-1;
            POST_MULT2_DELAY := ADDER_DELAY_2   + cmpy_mult_add_latency( A_WIDTH, B_WIDTH+1, 0, ROUND_BITS_2, ROUND, PIPE_IN, PIPE_MID, PIPE_OUT);
            MULT_13_PIPE_IN  := max_i(PIPE_IN, POST_MULT2_DELAY - ADDER_DELAY_1_3 - PIPE_MID);
            CMPY3_LATENCY    := ADDER_DELAY_1_3 + cmpy_mult_add_latency(A_WIDTH+1, B_WIDTH, A_WIDTH+1+B_WIDTH, 0, 5, MULT_13_PIPE_IN, PIPE_MID, PIPE_OUT);
            return CMPY3_LATENCY; 
        end cmpy3_latency;

--------------------------------------------------------------------
-- Latency of the complex multiplier
--------------------------------------------------------------------
    function cmpy_latency(OPTIMIZE, A_WIDTH, B_WIDTH, P_WIDTH, ROUND, PIPE_IN, PIPE_MID, PIPE_OUT  : integer ) return integer IS
        constant LARGE_WIDTH : integer := max_i(A_WIDTH, B_WIDTH);
        constant SMALL_WIDTH : integer := min_i(A_WIDTH, B_WIDTH);
        variable arch: integer := mult_3_arch(OPTIMIZE, LARGE_WIDTH, SMALL_WIDTH, P_WIDTH, ROUND, PIPE_IN, PIPE_MID, PIPE_OUT);
        begin
            case arch is
                when 0      => return cmpy18x18_latency(PIPE_IN, PIPE_MID, PIPE_OUT);
                when 1      => return cmpy35x18_latency(PIPE_IN, PIPE_MID, PIPE_OUT);
                when others => return cmpy3_latency(LARGE_WIDTH, SMALL_WIDTH, P_WIDTH, ROUND, PIPE_IN, PIPE_MID, PIPE_OUT);
            end case;
        end cmpy_latency;

--------------------------------------------------------------------
-- Number of DSP48 block used by the cmpy_mult_add instance
--------------------------------------------------------------------
    function cmpy_mult_add_DSP48s(A_WIDTH, B_WIDTH   : integer) return integer IS
        variable blocks: integer:=0;
        constant smaller:   integer := min_i(A_WIDTH,B_WIDTH);
        constant larger:    integer := max_i(A_WIDTH,B_WIDTH);
        begin
            if (larger<19) then         blocks := cmpy_mult18x18_DSP48s;
            else
                if (smaller<19) then    blocks := cmpy_mult35x18_DSP48s;
                else                    blocks := cmpy_mult35x35_DSP48s;
                end if;
            end if;
            return blocks;
        end cmpy_mult_add_DSP48s;

--------------------------------------------------------------------
-- Number of DSP48 block used by the cmpy3 instance
--------------------------------------------------------------------
    function cmpy3_DSP48s(A_WIDTH, B_WIDTH : integer ) return integer IS
        variable blocks: integer :=0;
        begin
            blocks := cmpy_mult_add_DSP48s(B_WIDTH+1, A_WIDTH);
            
            if (A_WIDTH+B_WIDTH+1>48) then -- mult_35x18 can not be used
                    blocks := blocks+8;    
            else 
                    blocks := blocks+2*cmpy_mult_add_DSP48s(A_WIDTH+1, B_WIDTH);
            end if;
            
            return blocks;
        end;

--------------------------------------------------------------------
-- Number of DSP48 block used by the cmpy instance
--------------------------------------------------------------------
    function cmpy_DSP48s( OPTIMIZE,  A_WIDTH, B_WIDTH, P_WIDTH, ROUND,PIPE_IN, PIPE_MID, PIPE_OUT : integer ) return integer IS
        constant LARGE_WIDTH : integer := max_i(A_WIDTH, B_WIDTH);
        constant SMALL_WIDTH : integer := min_i(A_WIDTH, B_WIDTH);
        variable arch: integer := mult_3_arch(OPTIMIZE, LARGE_WIDTH, SMALL_WIDTH, P_WIDTH, ROUND, PIPE_IN, PIPE_MID, PIPE_OUT);
        begin
            case arch is
                when 0      => return cmpy18x18_DSP48s; -- 4
                when 1      => return cmpy35x18_DSP48s; -- 8
                when others => return cmpy3_DSP48s(A_WIDTH, B_WIDTH);
            end case;

        end cmpy_DSP48s;

--------------------------------------------------------------------
-- Number of slices used by a cmpy_reg_re instance
--------------------------------------------------------------------
    function cmpy_reg_re_slices(WIDTH, DEPTH : integer) return integer is
        variable slices: integer := WIDTH;
        begin                
           if (DEPTH > 1) then slices := slices + WIDTH; end if ;   -- Simply add the number of LUTs and FFs 
           return slices;                                           -- to approximate slice count
        end cmpy_reg_re_slices;

--------------------------------------------------------------------
-- Number of slices used by a cmpy_pipe_add_sub instance
--------------------------------------------------------------------
    function cmpy_pipe_add_sub_slices(WIDTH, PIPE_IN, PIPE_MID, PIPE_OUT : integer) return integer is
        constant SIZE   : integer := (WIDTH+1) / (PIPE_MID+1);
        variable regs   : integer := PIPE_MID; -- carry registers
        variable slices : integer := 0;
        begin 
            if (PIPE_MID>0) then slices := slices + cmpy_reg_re_slices(PIPE_MID, 1); end if;

            for i in 0 to PIPE_MID loop
                if ((i>0) OR (PIPE_IN>0)) then 
                    slices := slices + 2* cmpy_reg_re_slices( min_i(WIDTH-i*SIZE, SIZE) , PIPE_IN+i );  -- A_REG + B_REG
                end if; 
            
                slices := slices + min_i(WIDTH-i*SIZE, SIZE); -- MUXCYs and XORCYs allocated by the adders 

                if (i<PIPE_MID) then
                    slices := slices + cmpy_reg_re_slices( SIZE, PIPE_OUT+PIPE_MID-i ); 
                end if;
            
                if ((i=PIPE_MID) AND (PIPE_OUT >0)) then 
                    slices := slices + cmpy_reg_re_slices( WIDTH+1-i*SIZE, PIPE_OUT ); 
                end if;
            end loop;
        return slices;
        end cmpy_pipe_add_sub_slices;

--------------------------------------------------------------------
-- Number of slices used by a cmpy_mult18x18 instance
--------------------------------------------------------------------
    function cmpy_mult18x18_slices(A_WIDTH, B_WIDTH, C_WIDTH, MODE, PIPE_IN, PIPE_MID, B_LAG, C_LAG : integer) return integer is
        variable slices: integer := 0;
        constant A_DELAY:   integer := max_i(0, PIPE_IN);
        constant B_DELAY:   integer := max_i(0, PIPE_IN-B_LAG);
        constant C_DELAY:   integer := min_i(max_i(0,PIPE_IN),2)+min_i(max_i(0,PIPE_MID),1)-C_LAG;
        begin

            if (A_DELAY >2)  then
                slices := slices + cmpy_reg_re_slices(A_WIDTH, A_DELAY-2);
            end if;

            if (B_DELAY >2)  then
                slices := slices + cmpy_reg_re_slices(B_WIDTH, B_DELAY-2);
            end if;

            if ((MODE = 2) or (MODE = 3)) and (C_DELAY >2)  then
                slices := slices + cmpy_reg_re_slices(C_WIDTH, C_DELAY-2);
            end if;

            return slices;
        end cmpy_mult18x18_slices;

--------------------------------------------------------------------
-- Number of slices used by a cmpy_mult35x18 instance
--------------------------------------------------------------------
    function cmpy_mult35x18_slices(A_WIDTH, B_WIDTH, C_WIDTH, P_WIDTH, MODE, PIPE_IN, PIPE_MID, PIPE_OUT, B_LAG, C_LAG : integer) return integer is
        variable slices: integer := 0;
        constant A_DELAY:   integer := max_i(0, PIPE_IN);
        constant B_DELAY:   integer := max_i(0, PIPE_IN-B_LAG);
        constant C_DELAY:   integer := max_i(0,PIPE_IN+min_i(max_i(0,PIPE_MID),2)-C_LAG);
        constant PH_WIDTH:  integer := min_i(A_WIDTH+B_WIDTH-17, P_WIDTH);
        constant PL_WIDTH:  integer := max_i(0, P_WIDTH-PH_WIDTH);
        constant C_ADD_B:   integer := min_i(A_WIDTH+B_WIDTH - min_i(P_WIDTH, C_WIDTH),47);
        constant C_ADD_E:   integer := min_i(C_ADD_B+C_WIDTH,47);
        constant CR_WIDTH:  integer := C_ADD_E - C_ADD_B;
        begin
            if (A_DELAY >2)  then
                slices := slices + cmpy_reg_re_slices(17, A_DELAY-2);
            end if;

            if (A_DELAY >1)  then
                slices := slices + cmpy_reg_re_slices(A_WIDTH-17, A_DELAY-1);
            end if;

            if (B_DELAY >2)  then
                slices := slices + cmpy_reg_re_slices(B_WIDTH, B_DELAY-2);
            end if;

            if ((MODE=1) or (MODE = 3)) and (A_WIDTH+B_WIDTH-P_WIDTH>1) 
                and (PIPE_IN+min_i(max_i(0,PIPE_MID),2)>1) then 
                slices := slices + 1;   -- cy_pre
            end if;

            if ((MODE = 2) or (MODE = 3)) and (C_DELAY >2)  then
                slices := slices + cmpy_reg_re_slices(CR_WIDTH, C_DELAY-2);
            end if;

            if (PIPE_OUT>0) AND (PL_WIDTH>0) then 
                slices := slices + cmpy_reg_re_slices(PL_WIDTH, PIPE_OUT);
            end if;    
            return slices;
        end cmpy_mult35x18_slices;

--------------------------------------------------------------------
-- Number of slices used by a cmpy_mult35x35 instance
--------------------------------------------------------------------
    function cmpy_mult35x35_slices(A_WIDTH, B_WIDTH, C_WIDTH, P_WIDTH, ROUND_BITS, MODE, PIPE_IN, PIPE_MID, PIPE_OUT, B_LAG, C_LAG : integer) return integer is        variable regs: integer := 1;
        variable slices: integer := 0;
        constant C_DELAYH:   integer := PIPE_IN+PIPE_MID+2*PIPE_OUT-C_LAG;        
        constant PH_WIDTH:   integer := min_i(A_WIDTH+B_WIDTH-17, P_WIDTH);
        constant PLR_WIDTH:  integer := max_i(0, P_WIDTH-B_WIDTH+18);
        constant CLC_WIDTH: integer := max_i(0,PLR_WIDTH-(P_WIDTH-C_WIDTH));
        constant cascade_OK: boolean :=  cascade_mult35x35(MODE, A_WIDTH, B_WIDTH, C_WIDTH, ROUND_BITS);
        constant CL_WIDTH:   integer := min_i(max_i(47-(A_WIDTH + B_WIDTH - C_WIDTH),0), C_WIDTH);
        constant CH_WIDTH:   integer := C_WIDTH - CL_WIDTH;
        constant DO_ROUND:   integer := MODE mod 2;
        constant ROUND_WIDTH:integer := max_i((A_WIDTH + B_WIDTH - P_WIDTH -1) -46,0)*DO_ROUND;
        constant ADDER_BEGIN:  integer := 29+eval(ROUND_WIDTH=0)*max_i((A_WIDTH+B_WIDTH-C_WIDTH)-48,0); 
        constant ADDER_END:  integer := min_i(48, A_WIDTH+B_WIDTH-17); 
        constant ADDER_WIDTH:  integer := ADDER_END-ADDER_BEGIN; 
        constant ADDER_DELAY:   integer := min_i(max_i(0,PIPE_IN),1)+min_i(max_i(0,PIPE_OUT),1);     

        begin
            if cascade_OK then 
                slices := slices + cmpy_mult35x18_slices(A_WIDTH, 18, C_WIDTH, PLR_WIDTH, MODE, PIPE_IN, PIPE_MID,  min_i(max_i(0,PIPE_OUT),1)*3, B_LAG, C_LAG);
                slices := slices + cmpy_mult35x18_slices(A_WIDTH, B_WIDTH-17, 48, PH_WIDTH, 4, 2*PIPE_OUT+PIPE_IN, PIPE_MID , min_i(max_i(0,PIPE_OUT),1), B_LAG, C_LAG);
            else
                if (C_DELAYH >0) and ((MODE = 2) or (MODE = 3))  then
                    slices := slices + cmpy_reg_re_slices(CH_WIDTH, C_DELAYH);
                end if;
                slices := slices + cmpy_mult35x18_slices(A_WIDTH, 18, CLC_WIDTH, PLR_WIDTH, MODE, PIPE_IN, PIPE_MID,  min_i(max_i(0,PIPE_OUT),1)*4+ADDER_DELAY, B_LAG, C_LAG);
                slices := slices + cmpy_pipe_add_sub_slices(ADDER_WIDTH, 0, 0, min_i(max_i(0,PIPE_OUT),1) ); 
                if (ADDER_DELAY>0)  then
                    slices := slices + cmpy_reg_re_slices(ADDER_BEGIN, ADDER_DELAY);
                end if;
                slices := slices + cmpy_mult35x18_slices(A_WIDTH, B_WIDTH-17, 48, PH_WIDTH, 5, 2*PIPE_OUT+PIPE_IN+ADDER_DELAY, PIPE_MID , PIPE_OUT, B_LAG, C_LAG+2*PIPE_OUT+PIPE_IN+ADDER_DELAY);
            end if;
            return slices;
        end cmpy_mult35x35_slices;

--------------------------------------------------------------------
-- Number of slices used by a cmpy_mult_add instance
--------------------------------------------------------------------
    function cmpy_mult_add_slices(A_WIDTH, B_WIDTH, C_WIDTH, P_WIDTH, ROUND_BITS, MODE, PIPE_IN, PIPE_MID, PIPE_OUT, B_LAG, C_LAG : integer) return integer is
        variable slices: integer;
        constant smaller:   integer := min_i(A_WIDTH,B_WIDTH);
        constant larger:    integer := max_i(A_WIDTH,B_WIDTH);
        begin

            if (larger<19) then         slices := cmpy_mult18x18_slices(A_WIDTH, B_WIDTH, C_WIDTH, MODE, PIPE_IN, PIPE_MID, B_LAG, C_LAG);
            else
                if (smaller<19) then    slices := cmpy_mult35x18_slices(A_WIDTH, B_WIDTH, C_WIDTH, P_WIDTH, MODE, PIPE_IN, PIPE_MID, PIPE_OUT, B_LAG, C_LAG);
                else                    slices := cmpy_mult35x35_slices(A_WIDTH, B_WIDTH, C_WIDTH, P_WIDTH, ROUND_BITS, MODE, PIPE_IN, PIPE_MID, PIPE_OUT, B_LAG, C_LAG);
                end if;
            end if;

            return slices;
        end cmpy_mult_add_slices;

--------------------------------------------------------------------
-- Number of slices used by an cmpy_axb_plus_cxd_casc instance
--------------------------------------------------------------------
    function cmpy_axb_plus_cxd_casc_slices(A_WIDTH, D_WIDTH, PIPE_IN, PIPE_OUT : integer) return integer is
        variable slices: integer := 0;
        begin
            if (PIPE_IN >2)  then
                slices := slices + cmpy_reg_re_slices(A_WIDTH, PIPE_IN-2);
            end if;

            if (PIPE_IN+PIPE_OUT>2)  then
                slices := slices + cmpy_reg_re_slices(A_WIDTH, PIPE_IN+PIPE_OUT-2);
                slices := slices + cmpy_reg_re_slices(D_WIDTH, PIPE_IN+PIPE_OUT-2);
            end if;
            return slices;
        end cmpy_axb_plus_cxd_casc_slices;

--------------------------------------------------------------------
-- Number of slices used by a cmpy35x18 instance
--------------------------------------------------------------------
    function cmpy35x18_slices(A_WIDTH, B_WIDTH, P_WIDTH, PIPE_IN, PIPE_MID, PIPE_OUT : integer) return integer is
        constant PH_WIDTH:  integer := min_i(A_WIDTH+B_WIDTH-17, P_WIDTH);
        constant PL_WIDTH:  integer := max_i(0, P_WIDTH-PH_WIDTH);
        variable slices: integer := 0;
        begin

            if (PIPE_IN+PIPE_MID+PIPE_OUT>1) then slices := 2; end if ; -- Round_CY registers in cmpy_axb_plus_cxd Real and Imag
            slices := slices + 2*cmpy_axb_plus_cxd_casc_slices(A_WIDTH-17, B_WIDTH, min_i(PIPE_IN,1)+2*min_i(PIPE_OUT,1), PIPE_OUT);

            if ((PIPE_OUT>0) AND (PL_WIDTH>0)) then -- Need PL register
                slices := slices + cmpy_reg_re_slices(2*PL_WIDTH, 2*PIPE_OUT);
            end if;
            return slices;

        end cmpy35x18_slices;

--------------------------------------------------------------------
-- Number of slices used by a cmpy3 instance
--------------------------------------------------------------------
    function cmpy3_slices(A_WIDTH, B_WIDTH, P_WIDTH, ROUND, PIPE_IN, PIPE_MID, PIPE_OUT : integer) return integer is
        variable slices:            integer;
        variable ADDER_DELAY_1_3:   integer;
        variable ADDER_DELAY_2:     integer;
        variable P2_WIDTH :         integer;
        variable POST_MULT2_DELAY:  integer;
        variable MULT_13_PIPE_IN:   integer;
        variable MULT_13_C_LAG:     integer;
        variable ROUND_BITS_2:      integer;
        begin

            ADDER_DELAY_1_3  := PIPE_IN+PIPE_MID*(A_WIDTH/18)+PIPE_OUT;     
            ADDER_DELAY_2    := PIPE_IN+PIPE_MID*(    (B_WIDTH+eval(PIPE_IN=0)*(A_WIDTH-B_WIDTH))/18   )+PIPE_OUT;     
            P2_WIDTH         := A_WIDTH+B_WIDTH+1;
            ROUND_BITS_2     := P2_WIDTH-P_WIDTH-1;
            POST_MULT2_DELAY := ADDER_DELAY_2   + cmpy_mult_add_latency( A_WIDTH, B_WIDTH+1, 0, ROUND_BITS_2, ROUND, PIPE_IN, PIPE_MID, PIPE_OUT);
            MULT_13_PIPE_IN  := max_i(PIPE_IN, POST_MULT2_DELAY - ADDER_DELAY_1_3 - PIPE_MID);
            MULT_13_C_LAG    := POST_MULT2_DELAY - ADDER_DELAY_1_3;

            slices := (3*cmpy_pipe_add_sub_slices(A_WIDTH, PIPE_IN, ADDER_DELAY_1_3-PIPE_IN-PIPE_OUT, PIPE_OUT))/2; 
            slices := slices  + cmpy_pipe_add_sub_slices(B_WIDTH, PIPE_IN, ADDER_DELAY_2-PIPE_IN-PIPE_OUT, PIPE_OUT);
            -- This suppose to simulate XST's optimizing behavior. The code
            -- allocates 2x cmpy_pipe_add_sub_slices(A_WIDTH... ) + cmpy_pipe_add_sub_slices(B_WIDTH ...)
            -- regs, but XST - sometimes - removes replicated logic.
            slices := slices  + cmpy_mult_add_slices(    A_WIDTH+1, B_WIDTH, P2_WIDTH, P_WIDTH,  5    ,      -1     ,  MULT_13_PIPE_IN, PIPE_MID, PIPE_OUT, -ADDER_DELAY_1_3, MULT_13_C_LAG);                    
            slices := slices  + cmpy_mult_add_slices(    B_WIDTH+1, A_WIDTH, 4,        P2_WIDTH, ROUND, ROUND_BITS_2,          PIPE_IN, PIPE_MID, PIPE_OUT, -ADDER_DELAY_2  ,  0);
            if ((A_WIDTH<19) and (B_WIDTH<19)) then 
                slices := slices  + cmpy_mult_add_slices(A_WIDTH+1, B_WIDTH, 4,        P_WIDTH,  4    ,      -1     , MULT_13_PIPE_IN, PIPE_MID, PIPE_OUT, -ADDER_DELAY_1_3, MULT_13_C_LAG);                    
            else
                slices := slices  + cmpy_mult_add_slices(A_WIDTH+1, B_WIDTH, P2_WIDTH, P_WIDTH,  5    ,      -1     , MULT_13_PIPE_IN, PIPE_MID, PIPE_OUT, -ADDER_DELAY_1_3, MULT_13_C_LAG);                    
            end if;
            return slices;
        end cmpy3_slices;

--------------------------------------------------------------------
-- Number of slices used by a cmpy instance
--------------------------------------------------------------------
    function cmpy_slices(OPTIMIZE, A_WIDTH, B_WIDTH, P_WIDTH, ROUND, PIPE_IN, PIPE_MID, PIPE_OUT  : integer ) return integer IS
        constant LARGE_WIDTH : integer := max_i(A_WIDTH, B_WIDTH);
        constant SMALL_WIDTH : integer := min_i(A_WIDTH, B_WIDTH);
        variable arch        : integer := mult_3_arch(OPTIMIZE, LARGE_WIDTH, SMALL_WIDTH, P_WIDTH, ROUND, PIPE_IN, PIPE_MID, PIPE_OUT);
        variable slices      : integer;
        begin
            case arch is
                when 0      => return 0;
                when 1      => slices := cmpy35x18_slices(LARGE_WIDTH, SMALL_WIDTH, P_WIDTH, PIPE_IN, PIPE_MID, PIPE_OUT);
                when others => slices := cmpy3_slices(LARGE_WIDTH, SMALL_WIDTH, P_WIDTH, ROUND, PIPE_IN, PIPE_MID, PIPE_OUT);
            end case;
        return max_i( ((slices * 7065) -130705)/10000, 0);  -- constants calculated with matlab
    end cmpy_slices;

end cmpy_pkg;
