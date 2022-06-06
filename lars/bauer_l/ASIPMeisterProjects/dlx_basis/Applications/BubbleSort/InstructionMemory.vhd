library IEEE;
use IEEE.STD_LOGIC_1164.all;

package InstructionMemory is


constant addr_max : integer := 87;
type IMtype is array (0 to addr_max) of std_logic_vector(31 downto 0);

constant IM : IMtype:= (X"3c1d0000", X"27bd03fc", X"2bbd000c", X"afbe0000", X"afbf0004", 
X"afa10008", X"001df020", X"2bbd0008", X"afa00000", X"20010013", X"afa10004", X"0c000009", 
X"00000000", X"23bd0008", X"8fbe0000", X"8fbf0004", X"8fa10008", X"001ee820", X"0c000043", 
X"00000000", X"001df020", X"2bbd0030", X"afbe0000", X"afbf0004", X"afa10008", X"afa2000c", 
X"afa30010", X"afa40014", X"afa50018", X"afa6001c", X"afa70020", X"afa80024", X"afa90028", 
X"afaa002c", X"00000000", X"8fc20000", X"8fc30004", X"3c0a0000", X"254a0000", X"40660002", 
X"00ca3020", X"00402020", X"0083083a", X"1020001b", X"00000000", X"40450002", X"00aa2820", 
X"8ca80000", X"00a03820", X"00a6083a", X"10200010", X"00000000", X"20e70004", X"8ce90000", 
X"0128083a", X"10200007", X"00000000", X"00080820", X"aca90000", X"00094020", X"ace10000", 
X"00014820", X"00072820", X"00094020", X"0bfffff1", X"00000000", X"28c60004", X"20840001", 
X"0bffffe6", X"00000000", X"8fbe0000", X"8fbf0004", X"8fa10008", X"8fa2000c", X"8fa30010", 
X"8fa40014", X"8fa50018", X"8fa6001c", X"8fa70020", X"8fa80024", X"8fa90028", X"8faa0030", 
X"001ee820", X"03e00008", X"00000000", X"00000000", X"00000000", X"ffffffff");


end InstructionMemory;