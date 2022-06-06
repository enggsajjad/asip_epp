library IEEE;
use IEEE.STD_LOGIC_1164.all;

package InstructionMemory is


constant addr_max : integer := 8;
type IMtype is array (0 to addr_max) of std_logic_vector(31 downto 0);

constant IM : IMtype:= (X"2001002a", X"00000000", X"00000000", X"00000000", X"ac010008", 
X"00000000", X"00000000", X"00000000", X"ffffffff");


end InstructionMemory;
