library IEEE;
use IEEE.STD_LOGIC_1164.all;

package InstructionMemory is


constant addr_max : integer := 18;
type IMtype is array (0 to addr_max) of std_logic_vector(31 downto 0);

constant IM : IMtype:= (X"20010005", X"20020007", X"00001820", X"00000000", X"30240001", 
X"00000000", X"44210001", X"40420001", X"10800003", X"00000000", X"00621820", X"1420fffb", 
X"30240001", X"00000000", X"ac030000", X"00000000", X"00000000", X"00000000", X"ffffffff");


end InstructionMemory;
