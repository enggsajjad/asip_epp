library IEEE;
use IEEE.STD_LOGIC_1164.all;

package InstructionMemory is


constant addr_max : integer := 136;
type IMtype is array (0 to addr_max) of std_logic_vector(31 downto 0);

constant IM : IMtype:= (X"3c1d0000", X"00000000", X"00000000", X"00000000", X"27bd03fc", 
X"00000000", X"00000000", X"00000000", X"2bbd000c", X"00000000", X"00000000", X"00000000", 
X"afbe0000", X"afbf0004", X"afa10008", X"001df020", X"2bbd0008", X"00000000", X"00000000", 
X"00000000", X"afa00000", X"20010031", X"00000000", X"00000000", X"00000000", X"afa10004", 
X"0c00000c", X"00000000", X"23bd0008", X"00000000", X"00000000", X"00000000", X"8fbe0000", 
X"8fbf0004", X"8fa10008", X"001ee820", X"0c000062", X"00000000", X"001df020", X"2bbd0030", 
X"00000000", X"00000000", X"00000000", X"afbe0000", X"afbf0004", X"3c010000", X"8fc20000", 
X"8fc30004", X"afa10008", X"afa2000c", X"afa30010", X"40630002", X"24210000", X"40420002", 
X"afa80024", X"24630004", X"afa50018", X"00411021", X"afa70020", X"00611821", X"20070001", 
X"08000003", X"afa90028", X"aca10000", X"00022821", X"2c630004", X"10e00038", X"00003820", 
X"8ca80000", X"8ca90004", X"f8a3fffa", X"24a50004", X"00080821", X"f928fffc", X"00094021", 
X"8ca90004", X"f8a3fff3", X"aca9fffc", X"0800000c", X"20070001", X"aca1fffc", X"8ca90004", 
X"f8a3ffee", X"24a50004", X"00080821", X"f928fffc", X"00094021", X"8ca90004", X"f8a3ffe7", 
X"aca9fffc", X"24a50004", X"f921fff5", X"00094021", X"8ca90008", X"f8a3ffe1", X"aca9fffc", 
X"24a50004", X"f921ffef", X"00094021", X"8ca90008", X"f8a3ffdb", X"aca9fffc", X"24a50004", 
X"f921ffe9", X"00094021", X"8ca90008", X"f8a3ffd5", X"aca9fffc", X"24a50004", X"f921ffe3", 
X"00094021", X"8ca90008", X"f8a3ffcf", X"aca9fffc", X"24a50004", X"f921ffdd", X"00094021", 
X"8ca90008", X"f8a3ffc9", X"aca9fffc", X"0bffffe2", X"00000000", X"8fbe0000", X"8fbf0004", 
X"8fa10008", X"8fa2000c", X"8fa30010", X"8fa50018", X"8fa70020", X"8fa80024", X"8fa90028", 
X"001ee820", X"03e00008", X"00000000", X"00000000", X"00000000", X"ffffffff");


end InstructionMemory;
