library IEEE;
use IEEE.STD_LOGIC_1164.all;

package InstructionMemory is


constant addr_max : integer := 322;
type IMtype is array (0 to addr_max) of std_logic_vector(31 downto 0);

constant IM : IMtype:= (X"03DEF026", X"03BDE826", X"039CE026", X"00000000", X"27DE0003", 
X"27BD0003", X"00000000", X"00000000", X"43DE000C", X"43BD000C", X"00000000", X"00000000", 
X"00000000", X"AFBEFFFC", X"AFBFFFF8", X"23DDFFF8", X"0C000005", X"00000000", X"AFA10000", 
X"0C00012D", X"00000000", X"00000000", X"00000000", X"00000000", X"AFBEFFFC", X"AFBF0000", 
X"2FBE0004", X"2BBD0008", X"00000000", X"00000000", X"00000000", X"3C010000", X"00000000", 
X"00000000", X"00000000", X"34210000", X"00000000", X"00000000", X"00000000", X"8C220000", 
X"00000000", X"00000000", X"00000000", X"3C010000", X"00000000", X"00000000", X"00000000", 
X"34210000", X"00000000", X"00000000", X"00000000", X"3C040000", X"00000000", X"00000000", 
X"00000000", X"3484000A", X"8C230000", X"00000000", X"00000000", X"00000000", X"0064D83A", 
X"00000000", X"00000000", X"00000000", X"17600008", X"00000000", X"00000000", X"00000000", 
X"080000DF", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", 
X"3C040000", X"00000000", X"00000000", X"00000000", X"3484000A", X"00000000", X"00000000", 
X"00000000", X"00822023", X"00000000", X"00000000", X"00000000", X"30840003", X"00000000", 
X"00000000", X"00000000", X"00442021", X"00000000", X"00000000", X"00000000", X"0064D83A", 
X"00000000", X"00000000", X"00000000", X"17600008", X"00000000", X"00000000", X"00000000", 
X"08000027", X"00000000", X"00000000", X"00000000", X"3C040000", X"00000000", X"00000000", 
X"00000000", X"34840004", X"24660001", X"00000000", X"00000000", X"00000000", X"3C070000", 
X"00000000", X"00000000", X"00000000", X"34E7000A", X"8C850000", X"00000000", X"00000000", 
X"00000000", X"00671819", X"00000000", X"00000000", X"00000000", X"00A31821", X"00000000", 
X"00000000", X"00000000", X"AC830000", X"00000000", X"00000000", X"00000000", X"AC260000", 
X"0BFFFFA1", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", 
X"3C020000", X"00000000", X"00000000", X"00000000", X"3442000A", X"00000000", X"00000000", 
X"00000000", X"0062D83A", X"00000000", X"00000000", X"00000000", X"17600008", X"00000000", 
X"00000000", X"00000000", X"08000082", X"00000000", X"00000000", X"00000000", X"3C030000", 
X"00000000", X"00000000", X"00000000", X"34630004", X"00000000", X"00000000", X"00000000", 
X"00000000", X"00000000", X"00000000", X"8C240000", X"00000000", X"00000000", X"00000000", 
X"24850001", X"24860002", X"24880003", X"24820004", X"8C670000", X"00000000", X"00000000", 
X"00000000", X"3C090000", X"00000000", X"00000000", X"00000000", X"3529000A", X"3C0A0000", 
X"00000000", X"00000000", X"00000000", X"354A000A", X"3C0B0000", X"00000000", X"00000000", 
X"00000000", X"356B000A", X"00000000", X"00000000", X"00892019", X"00AA2819", X"00CB3019", 
X"00000000", X"00000000", X"00000000", X"3C090000", X"00000000", X"00000000", X"00000000", 
X"3529000A", X"00000000", X"00000000", X"00000000", X"00E42021", X"01094019", X"00000000", 
X"00000000", X"00000000", X"AC640000", X"00000000", X"00000000", X"00000000", X"8C640000", 
X"00000000", X"00000000", X"00000000", X"00852021", X"00000000", X"00000000", X"00000000", 
X"AC640000", X"00000000", X"00000000", X"00000000", X"8C640000", X"00000000", X"00000000", 
X"00000000", X"00862021", X"00000000", X"00000000", X"00000000", X"AC640000", X"00000000", 
X"00000000", X"00000000", X"8C640000", X"00000000", X"00000000", X"3C090000", X"00000000", 
X"00000000", X"00000000", X"3529000A", X"00000000", X"00000000", X"00000000", X"00882021", 
X"00000000", X"00000000", X"00000000", X"AC640000", X"00000000", X"00000000", X"00000000", 
X"AC220000", X"00000000", X"00000000", X"00000000", X"8C220000", X"00000000", X"00000000", 
X"00000000", X"0049D83A", X"00000000", X"00000000", X"00000000", X"1760FF92", X"00000000", 
X"00000000", X"00000000", X"08000004", X"00000000", X"00000000", X"00000000", X"3C010000", 
X"00000000", X"00000000", X"00000000", X"34210004", X"00000000", X"00000000", X"00000000", 
X"8C3C0000", X"00000000", X"00000000", X"00000000", X"08000004", X"00000000", X"00000000", 
X"00000000", X"00000000", X"00000000", X"00000000", X"8FDF0004", X"27DD0004", X"8FDE0000", 
X"00000000", X"00000000", X"00000000", X"03E00008", X"00000000", X"00000000", X"00000000", 
X"00000000", X"00000000", X"FFFFFFFF");


end InstructionMemory;