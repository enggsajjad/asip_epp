library IEEE;
use IEEE.STD_LOGIC_1164.all;

package InstructionMemory is


constant addr_max : integer := 69;
type IMtype is array (0 to addr_max) of std_logic_vector(31 downto 0);

constant IM : IMtype:= (X"03DEF026", X"03BDE826", X"039CE026", X"00000000", X"27DE0003", 
X"27BD0003", X"00000000", X"00000000", X"43DE000C", X"43BD000C", X"00000000", X"00000000", 
X"00000000", X"AFBEFFFC", X"AFBFFFF8", X"23DDFFF8", X"0C000005", X"00000000", X"AFA10000", 
X"0C000030", X"00000000", X"00000000", X"00000000", X"00000000", X"AFBEFFFC", X"AFBF0000", 
X"2FBE0004", X"2BBD0008", X"00000000", X"00000000", X"00000000", X"3C010000", X"00000000", 
X"00000000", X"00000000", X"34210002", X"3C020000", X"00000000", X"00000000", X"00000000", 
X"34420005", X"C0223800", X"00220820", X"00000000", X"00000000", X"00000000", X"0027E020", 
X"00000000", X"00000000", X"00000000", X"08000004", X"00000000", X"00000000", X"00000000", 
X"00000000", X"00000000", X"00000000", X"8FDF0004", X"27DD0004", X"8FDE0000", X"00000000", 
X"00000000", X"00000000", X"03E00008", X"00000000", X"00000000", X"00000000", X"00000000", 
X"00000000", X"FFFFFFFF");


end InstructionMemory;
