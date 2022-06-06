library IEEE;
use IEEE.STD_LOGIC_1164.all;

package InstructionMemory is


constant addr_max : integer := 140;
type IMtype is array (0 to addr_max) of std_logic_vector(31 downto 0);

constant IM : IMtype:= (X"3c1d0000", X"00000000", X"00000000", X"00000000", X"27bd03fc", 
X"00000000", X"00000000", X"00000000", X"2bbd000c", X"00000000", X"00000000", X"00000000", 
X"afbe0000", X"afbf0004", X"afa10008", X"001df020", X"2bbd0008", X"00000000", X"00000000", 
X"20010013", X"afa00000", X"00000000", X"00000000", X"afa10004", X"0c00000c", X"00000000", 
X"23bd0008", X"00000000", X"00000000", X"00000000", X"8fbe0000", X"8fbf0004", X"8fa10008", 
X"001ee820", X"0c000068", X"00000000", X"001df020", X"2bbd0030", X"00000000", X"00000000", 
X"00000000", X"afbe0000", X"afbf0004", X"afa10008", X"afa2000c", X"afa30010", X"afa40014", 
X"afa50018", X"afa6001c", X"afa70020", X"afa80024", X"afa90028", X"afaa002c", X"00000000", 
X"8fc20000", X"8fc30004", X"3c0a0000", X"00000000", X"00000000", X"00000000", X"254a0000", 
X"40770002", X"40530002", X"20160001", X"0000a820", X"01573020", X"00000000", X"00000000", 
X"00000000", X"20c60004", X"01532820", X"fab60034", X"00000000", X"28c60004", X"8ca80000", 
X"8ca90004", X"08000004", X"20150001", X"01204020", X"00000000", X"f8a6fff6", X"20a50004", 
X"f928fffc", X"8ca90008", X"0000a820", X"aca9fffc", X"aca80000", X"f8a6ffef", X"20a50004", 
X"f928fff5", X"8ca90008", X"0000a820", X"aca9fffc", X"aca80000", X"f8a6ffe8", X"20a50004", 
X"f928ffee", X"8ca90008", X"0000a820", X"aca9fffc", X"aca80000", X"f8a6ffe1", X"20a50004", 
X"f928ffe7", X"8ca90008", X"0000a820", X"aca9fffc", X"aca80000", X"f8a6ffda", X"20a50004", 
X"f928ffe0", X"8ca90008", X"0000a820", X"aca9fffc", X"aca80000", X"f8a6ffd3", X"20a50004", 
X"f928ffd9", X"8ca90008", X"0000a820", X"aca9fffc", X"0bffffd7", X"aca80000", X"8fbe0000", 
X"8fbf0004", X"8fa10008", X"8fa2000c", X"8fa30010", X"8fa40014", X"8fa50018", X"8fa6001c", 
X"8fa70020", X"8fa80024", X"8fa90028", X"8faa0030", X"001ee820", X"03e00008", X"00000000", 
X"00000000", X"00000000", X"ffffffff");


end InstructionMemory;
