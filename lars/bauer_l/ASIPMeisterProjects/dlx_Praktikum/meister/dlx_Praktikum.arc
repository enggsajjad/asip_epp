Design{
Version{"2.0"},

Abstract_level_architecture{
Fhm_workname{"peas"},
Priority{"Performance"},
CPU_type{"Pipeline"},
Pipeline_architecture{Number_of_stages{"5"},
Number_of_common_stages{"0"},
stage{stage1{"IF,1,fetch"},
stage2{"ID,1,decode"},
stage3{"EXE,1,exec"},
stage4{"MEM,1,memory_read & memory_write"},
stage5{"WB,1,register_write"}},
Multi_cycle_interlock{"Yes"},
Data_hazard_interlock{"Yes"},
Register_bypass{"Yes"},
Delayed_branch{"Yes"},
Number_of_exec_delayed_slot{number{"1"}}},
MAX_instruction_bit_width{"32"},
MAX_data_width{"32"}},

Port_declaration{
entity_name{"CPU"},Port{"CLK"{direction{"in"},signal_type{"std_logic"},signal_attribute{"clock"}},
"Reset"{direction{"in"},signal_type{"std_logic"},signal_attribute{"reset"}},
"instAB"{direction{"out"},signal_type{"std_logic_vector(31 downto 0)"},signal_attribute{"instruction_memory_address_bus"}},
"instDB"{direction{"in"},signal_type{"std_logic_vector(31 downto 0)"},signal_attribute{"instruction_memory_data_bus"}},
"DataAB"{direction{"out"},signal_type{"std_logic_vector(31 downto 0)"},signal_attribute{"data_memory_address_bus"}},
"DataDB"{direction{"inout"},signal_type{"std_logic_vector(31 downto 0)"},signal_attribute{"data_memory_data_bus"}},
"DataReq"{direction{"out"},signal_type{"std_logic"},signal_attribute{"data_memory_request_bus"}},
"DataAck"{direction{"in"},signal_type{"std_logic"},signal_attribute{"data_memory_acknowledge_bus"}},
"dataWin"{direction{"out"},signal_type{"std_logic_vector(3 downto 0)"},signal_attribute{"data_memory_write_mode_bus"}}
}},

Instruction_type{
sub_field_name{NO_VLIW{width{"31","0"},type{"R_R"{
"OP-code"{"name"{"opecode"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rs1"},width{"20","16"}},
"Operand"{"name"{"rd"},width{"15","11"}},
"OP-code"{"name"{"func"},width{"10","0"}}
}
,"R_I"{
"OP-code"{"name"{"opecode"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rd"},width{"20","16"}},
"Operand"{"name"{"const"},width{"15","0"}}
}
,"L_S"{
"OP-code"{"name"{"opecode"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rd"},width{"20","16"}},
"Operand"{"name"{"const"},width{"15","0"}}
}
,"B"{
"OP-code"{"name"{"opecode"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"OP-code"{"binary"{"00000"},width{"20","16"}},
"Operand"{"name"{"const"},width{"15","0"}}
}
,"J"{
"OP-code"{"name"{"opecode"},width{"31","26"}},
"Operand"{"name"{"const"},width{"25","0"}}
}
,"JR"{
"OP-code"{"binary"{"000000"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"OP-code"{"binary"{"0000000000"},width{"20","11"}},
"OP-code"{"name"{"func"},width{"10","0"}}
}
,"LHI"{
"OP-code"{"name"{"opecode"},width{"31","26"}},
"OP-code"{"binary"{"00000"},width{"25","21"}},
"Operand"{"name"{"rd"},width{"20","16"}},
"Operand"{"name"{"const"},width{"15","0"}}
}
}}}},

Instruction{NO_VLIW{"add"{type{"R_R"},"OP-code"{"binary"{"000000"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rs1"},width{"20","16"}},
"Operand"{"name"{"rd"},width{"15","11"}},
"OP-code"{"binary"{"00000100000"},width{"10","0"}}
},"addu"{type{"R_R"},"OP-code"{"binary"{"000000"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rs1"},width{"20","16"}},
"Operand"{"name"{"rd"},width{"15","11"}},
"OP-code"{"binary"{"00000100001"},width{"10","0"}}
},"addi"{type{"R_I"},"OP-code"{"binary"{"001000"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rd"},width{"20","16"}},
"Operand"{"name"{"const"},width{"15","0"}}
},"addui"{type{"R_I"},"OP-code"{"binary"{"001001"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rd"},width{"20","16"}},
"Operand"{"name"{"const"},width{"15","0"}}
},"sub"{type{"R_R"},"OP-code"{"binary"{"000000"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rs1"},width{"20","16"}},
"Operand"{"name"{"rd"},width{"15","11"}},
"OP-code"{"binary"{"00000100010"},width{"10","0"}}
},"subu"{type{"R_R"},"OP-code"{"binary"{"000000"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rs1"},width{"20","16"}},
"Operand"{"name"{"rd"},width{"15","11"}},
"OP-code"{"binary"{"00000100011"},width{"10","0"}}
},"subi"{type{"R_I"},"OP-code"{"binary"{"001010"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rd"},width{"20","16"}},
"Operand"{"name"{"const"},width{"15","0"}}
},"subui"{type{"R_I"},"OP-code"{"binary"{"001011"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rd"},width{"20","16"}},
"Operand"{"name"{"const"},width{"15","0"}}
},"mult"{type{"R_R"},"OP-code"{"binary"{"000000"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rs1"},width{"20","16"}},
"Operand"{"name"{"rd"},width{"15","11"}},
"OP-code"{"binary"{"00000011000"},width{"10","0"}}
},"multu"{type{"R_R"},"OP-code"{"binary"{"000000"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rs1"},width{"20","16"}},
"Operand"{"name"{"rd"},width{"15","11"}},
"OP-code"{"binary"{"00000011001"},width{"10","0"}}
},"div"{type{"R_R"},"OP-code"{"binary"{"000000"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rs1"},width{"20","16"}},
"Operand"{"name"{"rd"},width{"15","11"}},
"OP-code"{"binary"{"00000011010"},width{"10","0"}}
},"divu"{type{"R_R"},"OP-code"{"binary"{"000000"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rs1"},width{"20","16"}},
"Operand"{"name"{"rd"},width{"15","11"}},
"OP-code"{"binary"{"00000011011"},width{"10","0"}}
},"and"{type{"R_R"},"OP-code"{"binary"{"000000"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rs1"},width{"20","16"}},
"Operand"{"name"{"rd"},width{"15","11"}},
"OP-code"{"binary"{"00000100100"},width{"10","0"}}
},"andi"{type{"R_I"},"OP-code"{"binary"{"001100"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rd"},width{"20","16"}},
"Operand"{"name"{"const"},width{"15","0"}}
},"or"{type{"R_R"},"OP-code"{"binary"{"000000"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rs1"},width{"20","16"}},
"Operand"{"name"{"rd"},width{"15","11"}},
"OP-code"{"binary"{"00000100101"},width{"10","0"}}
},"ori"{type{"R_I"},"OP-code"{"binary"{"001101"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rd"},width{"20","16"}},
"Operand"{"name"{"const"},width{"15","0"}}
},"xor"{type{"R_R"},"OP-code"{"binary"{"000000"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rs1"},width{"20","16"}},
"Operand"{"name"{"rd"},width{"15","11"}},
"OP-code"{"binary"{"00000100110"},width{"10","0"}}
},"xori"{type{"R_I"},"OP-code"{"binary"{"001110"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rd"},width{"20","16"}},
"Operand"{"name"{"const"},width{"15","0"}}
},"sll"{type{"R_R"},"OP-code"{"binary"{"000000"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rs1"},width{"20","16"}},
"Operand"{"name"{"rd"},width{"15","11"}},
"OP-code"{"binary"{"00000000000"},width{"10","0"}}
},"srl"{type{"R_R"},"OP-code"{"binary"{"000000"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rs1"},width{"20","16"}},
"Operand"{"name"{"rd"},width{"15","11"}},
"OP-code"{"binary"{"00000000010"},width{"10","0"}}
},"sra"{type{"R_R"},"OP-code"{"binary"{"000000"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rs1"},width{"20","16"}},
"Operand"{"name"{"rd"},width{"15","11"}},
"OP-code"{"binary"{"00000000011"},width{"10","0"}}
},"slli"{type{"R_I"},"OP-code"{"binary"{"010000"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rd"},width{"20","16"}},
"Operand"{"name"{"const"},width{"15","0"}}
},"srli"{type{"R_I"},"OP-code"{"binary"{"010001"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rd"},width{"20","16"}},
"Operand"{"name"{"const"},width{"15","0"}}
},"srai"{type{"R_I"},"OP-code"{"binary"{"010010"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rd"},width{"20","16"}},
"Operand"{"name"{"const"},width{"15","0"}}
},"slt"{type{"R_R"},"OP-code"{"binary"{"000000"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rs1"},width{"20","16"}},
"Operand"{"name"{"rd"},width{"15","11"}},
"OP-code"{"binary"{"00000101010"},width{"10","0"}}
},"sgt"{type{"R_R"},"OP-code"{"binary"{"000000"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rs1"},width{"20","16"}},
"Operand"{"name"{"rd"},width{"15","11"}},
"OP-code"{"binary"{"00000101011"},width{"10","0"}}
},"sle"{type{"R_R"},"OP-code"{"binary"{"000000"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rs1"},width{"20","16"}},
"Operand"{"name"{"rd"},width{"15","11"}},
"OP-code"{"binary"{"00000101100"},width{"10","0"}}
},"sge"{type{"R_R"},"OP-code"{"binary"{"000000"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rs1"},width{"20","16"}},
"Operand"{"name"{"rd"},width{"15","11"}},
"OP-code"{"binary"{"00000101101"},width{"10","0"}}
},"seq"{type{"R_R"},"OP-code"{"binary"{"000000"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rs1"},width{"20","16"}},
"Operand"{"name"{"rd"},width{"15","11"}},
"OP-code"{"binary"{"00000101110"},width{"10","0"}}
},"sne"{type{"R_R"},"OP-code"{"binary"{"000000"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rs1"},width{"20","16"}},
"Operand"{"name"{"rd"},width{"15","11"}},
"OP-code"{"binary"{"00000101111"},width{"10","0"}}
},"slti"{type{"R_I"},"OP-code"{"binary"{"011010"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rd"},width{"20","16"}},
"Operand"{"name"{"const"},width{"15","0"}}
},"sgti"{type{"R_I"},"OP-code"{"binary"{"011011"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rd"},width{"20","16"}},
"Operand"{"name"{"const"},width{"15","0"}}
},"slei"{type{"R_I"},"OP-code"{"binary"{"011100"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rd"},width{"20","16"}},
"Operand"{"name"{"const"},width{"15","0"}}
},"sgei"{type{"R_I"},"OP-code"{"binary"{"011101"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rd"},width{"20","16"}},
"Operand"{"name"{"const"},width{"15","0"}}
},"seqi"{type{"R_I"},"OP-code"{"binary"{"011110"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rd"},width{"20","16"}},
"Operand"{"name"{"const"},width{"15","0"}}
},"snei"{type{"R_I"},"OP-code"{"binary"{"011111"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rd"},width{"20","16"}},
"Operand"{"name"{"const"},width{"15","0"}}
},"lhi"{type{"LHI"},"OP-code"{"binary"{"001111"},width{"31","26"}},
"OP-code"{"binary"{"00000"},width{"25","21"}},
"Operand"{"name"{"rd"},width{"20","16"}},
"Operand"{"name"{"const"},width{"15","0"}}
},"lb"{type{"L_S"},"OP-code"{"binary"{"100000"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rd"},width{"20","16"}},
"Operand"{"name"{"const"},width{"15","0"}}
},"lh"{type{"L_S"},"OP-code"{"binary"{"100001"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rd"},width{"20","16"}},
"Operand"{"name"{"const"},width{"15","0"}}
},"lw"{type{"L_S"},"OP-code"{"binary"{"100011"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rd"},width{"20","16"}},
"Operand"{"name"{"const"},width{"15","0"}}
},"lbu"{type{"L_S"},"OP-code"{"binary"{"100100"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rd"},width{"20","16"}},
"Operand"{"name"{"const"},width{"15","0"}}
},"lhu"{type{"L_S"},"OP-code"{"binary"{"100101"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rd"},width{"20","16"}},
"Operand"{"name"{"const"},width{"15","0"}}
},"sb"{type{"L_S"},"OP-code"{"binary"{"101000"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rd"},width{"20","16"}},
"Operand"{"name"{"const"},width{"15","0"}}
},"sh"{type{"L_S"},"OP-code"{"binary"{"101001"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rd"},width{"20","16"}},
"Operand"{"name"{"const"},width{"15","0"}}
},"sw"{type{"L_S"},"OP-code"{"binary"{"101011"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rd"},width{"20","16"}},
"Operand"{"name"{"const"},width{"15","0"}}
},"beqz"{type{"B"},"OP-code"{"binary"{"000100"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"OP-code"{"binary"{"00000"},width{"20","16"}},
"Operand"{"name"{"const"},width{"15","0"}}
},"bnez"{type{"B"},"OP-code"{"binary"{"000101"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"OP-code"{"binary"{"00000"},width{"20","16"}},
"Operand"{"name"{"const"},width{"15","0"}}
},"j"{type{"J"},"OP-code"{"binary"{"000010"},width{"31","26"}},
"Operand"{"name"{"const"},width{"25","0"}}
},"jal"{type{"J"},"OP-code"{"binary"{"000011"},width{"31","26"}},
"Operand"{"name"{"const"},width{"25","0"}}
},"jr"{type{"JR"},"OP-code"{"binary"{"000000"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"OP-code"{"binary"{"0000000000"},width{"20","11"}},
"OP-code"{"binary"{"00000001000"},width{"10","0"}}
},"jalr"{type{"JR"},"OP-code"{"binary"{"000000"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"OP-code"{"binary"{"0000000000"},width{"20","11"}},
"OP-code"{"binary"{"00000001001"},width{"10","0"}}
},"MOD"{type{"R_R"},"OP-code"{"binary"{"000000"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rs1"},width{"20","16"}},
"Operand"{"name"{"rd"},width{"15","11"}},
"OP-code"{"binary"{"00000011100"},width{"10","0"}}
},"modu"{type{"R_R"},"OP-code"{"binary"{"000000"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rs1"},width{"20","16"}},
"Operand"{"name"{"rd"},width{"15","11"}},
"OP-code"{"binary"{"00000011110"},width{"10","0"}}
},"sltu"{type{"R_R"},"OP-code"{"binary"{"000000"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rs1"},width{"20","16"}},
"Operand"{"name"{"rd"},width{"15","11"}},
"OP-code"{"binary"{"00000111010"},width{"10","0"}}
},"sgtu"{type{"R_R"},"OP-code"{"binary"{"000000"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rs1"},width{"20","16"}},
"Operand"{"name"{"rd"},width{"15","11"}},
"OP-code"{"binary"{"00000111011"},width{"10","0"}}
},"sleu"{type{"R_R"},"OP-code"{"binary"{"000000"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rs1"},width{"20","16"}},
"Operand"{"name"{"rd"},width{"15","11"}},
"OP-code"{"binary"{"00000111100"},width{"10","0"}}
},"sgeu"{type{"R_R"},"OP-code"{"binary"{"000000"},width{"31","26"}},
"Operand"{"name"{"rs0"},width{"25","21"}},
"Operand"{"name"{"rs1"},width{"20","16"}},
"Operand"{"name"{"rd"},width{"15","11"}},
"OP-code"{"binary"{"00000111101"},width{"10","0"}}
}}},

Operation{NO_VLIW{"add"{Mode{"user_mode"},Behavior{"rd = rs0 + rs1;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"addu"{Mode{"user_mode"},Behavior{"rd = rs0 + rs1;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"addi"{Mode{"user_mode"},Behavior{"rd = rs0 + const;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"addui"{Mode{"user_mode"},Behavior{"rd = rs0 + const;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"sub"{Mode{"user_mode"},Behavior{"rd = rs0 - rs1;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"subu"{Mode{"user_mode"},Behavior{"rd = rs0 - rs1;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"subi"{Mode{"user_mode"},Behavior{"rd = rs0 - const;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"subui"{Mode{"user_mode"},Behavior{"rd = rs0 - const;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"mult"{Mode{"user_mode"},Behavior{"rd = rs0 * rs1;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"multu"{Mode{"user_mode"},Behavior{"rd = rs0 * rs1;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"div"{Mode{"user_mode"},Behavior{"rd = rs0 / rs1;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"divu"{Mode{"user_mode"},Behavior{"rd = rs0 / rs1;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"and"{Mode{"user_mode"},Behavior{"rd = rs0 & rs1;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"andi"{Mode{"user_mode"},Behavior{"rd = rs0 & const;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"or"{Mode{"user_mode"},Behavior{"rd = rs0 | rs1;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"ori"{Mode{"user_mode"},Behavior{"rd = rs0 | const;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"xor"{Mode{"user_mode"},Behavior{"rd = rs0 ^ rs1;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"xori"{Mode{"user_mode"},Behavior{"rd = rs0 ^ const;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"sll"{Mode{"user_mode"},Behavior{"rd = rs0 << rs1;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"srl"{Mode{"user_mode"},Behavior{"rd = rs0 >>> rs1;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"sra"{Mode{"user_mode"},Behavior{"rd = rs0 >> rs1;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"slli"{Mode{"user_mode"},Behavior{"rd = rs0 << const;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"srli"{Mode{"user_mode"},Behavior{"rd = rs0 >>> const;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"srai"{Mode{"user_mode"},Behavior{"rd = rs0 >> const;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"slt"{Mode{"user_mode"},Behavior{"rd = rs0 < rs1;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"sgt"{Mode{"user_mode"},Behavior{"rd = rs0 > rs1;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"sle"{Mode{"user_mode"},Behavior{"rd = rs0 <= rs1;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"sge"{Mode{"user_mode"},Behavior{"rd = rs0 >= rs1;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"seq"{Mode{"user_mode"},Behavior{"rd = rs0 == rs1;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"sne"{Mode{"user_mode"},Behavior{"rd = rs0 != rs1;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"slti"{Mode{"user_mode"},Behavior{"rd = rs0 < const;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"sgti"{Mode{"user_mode"},Behavior{"rd = rs0 > const;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"slei"{Mode{"user_mode"},Behavior{"rd = rs0 <= const;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"sgei"{Mode{"user_mode"},Behavior{"rd = rs0 >= const;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"seqi"{Mode{"user_mode"},Behavior{"rd = rs0 == const;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"snei"{Mode{"user_mode"},Behavior{"rd = rs0 != const;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"lhi"{Mode{"user_mode"},Behavior{"rd = const << 16;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"lb"{Mode{"user_mode"},Behavior{"rd = *addr;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"lh"{Mode{"user_mode"},Behavior{"rd = *addr;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"lw"{Mode{"user_mode"},Behavior{"rd = *addr;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"lbu"{Mode{"user_mode"},Behavior{"rd = *addr;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"lhu"{Mode{"user_mode"},Behavior{"rd = *addr;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"sb"{Mode{"user_mode"},Behavior{"*addr = rd;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"sh"{Mode{"user_mode"},Behavior{"*addr = rd;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"sw"{Mode{"user_mode"},Behavior{"*addr = rd;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"beqz"{Mode{"user_mode"},Behavior{"if (rs0==0) {
  PC = PC + const;
}"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"bnez"{Mode{"user_mode"},Behavior{"if (rs0 != 0) {
  PC = PC + const;
}"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"j"{Mode{"user_mode"},Behavior{"if ( always ) {
  PC = const;
}"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"jal"{Mode{"user_mode"},Behavior{"if ( always ) {
  LINK = Next(PC);
  PC = const;
}"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"jr"{Mode{"user_mode"},Behavior{"if ( always ) {
  PC = rs0;
}"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"jalr"{Mode{"user_mode"},Behavior{"if ( always ) {
  LINK = Next(PC);
  PC = rs0;
}"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"MOD"{Mode{"user_mode"},Behavior{"rd = rs0 % rs1;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"modu"{Mode{"user_mode"},Behavior{"rd = rs0 % rs1;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"sltu"{Mode{"user_mode"},Behavior{"rd = rs0 < rs1;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"sgtu"{Mode{"user_mode"},Behavior{"rd = rs0 > rs1;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"sleu"{Mode{"user_mode"},Behavior{"rd = rs0 <= rs1;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
,"sgeu"{Mode{"user_mode"},Behavior{"rd = rs0 >= rs1;"},Assert{""},Comment{""},Flags{""},Cycles{"1"}}
}},

Resource{"PC"{class{"pcu"},classpath{"/workdb/peas/"},use{"Prog. Counter"},
parameter{
abstraction_level{for_simulation{"Behavior"},for_synthesis{"Gate"}},
bit_width{"32"},
increment_step{"1"},
adder_algorithm{"rca"}}}
,"IR"{class{"register"},classpath{"/basicfhmdb/storage/"},use{"Inst. Register"},
parameter{
abstraction_level{for_simulation{"Behavior"},for_synthesis{"Gate"}},
bit_width{"32"}}}
,"IMAU"{class{"imau"},classpath{"/workdb/peas/"},use{"Inst. Memory"},
parameter{
abstraction_level{for_simulation{"Behavior"},for_synthesis{"Gate"}},
bit_width{"32"},
address_space{"32"}}}
,"DMAU"{class{"dmau"},classpath{"/workdb/peas/"},use{"Data Memory"},
parameter{
abstraction_level{for_simulation{"Behavior"},for_synthesis{"Gate"}},
bit_width{"32"},
address_space{"32"},
access_width{"8"}}}
,"GPR"{class{"registerfile"},classpath{"/basicfhmdb/storage/"},use{"Register File"},
parameter{
abstraction_level{for_simulation{"Behavior"},for_synthesis{"Gate"}},
bit_width{"32"},
num_register{"32"},
num_read_port{"2"},
num_write_port{"1"}}}
,"ALU0"{class{"alu"},classpath{"/basicfhmdb/computational/"},use{"(unspecified)"},
parameter{
abstraction_level{for_simulation{"Behavior"},for_synthesis{"Gate"}},
bit_width{"32"},
algorithm{"cla"}}}
,"EXT0"{class{"extender"},classpath{"/basicfhmdb/computational/"},use{"(unspecified)"},
parameter{
abstraction_level{for_simulation{"Behavior"},for_synthesis{"Gate"}},
bit_width{"16"},
bit_width_out{"32"}}}
,"MUL0"{class{"multiplier"},classpath{"/basicfhmdb/computational/"},use{"(unspecified)"},
parameter{
abstraction_level{for_simulation{"Behavior"},for_synthesis{"Gate"}},
bit_width{"32"},
algorithm{"seq"},
adder_algorithm{"cla"},
data_type{"two_complement"}}}
,"DIV0"{class{"divider"},classpath{"/basicfhmdb/computational/"},use{"(unspecified)"},
parameter{
abstraction_level{for_simulation{"Behavior"},for_synthesis{"Gate"}},
bit_width{"32"},
algorithm{"seq"},
adder_algorithm{"cla"},
data_type{"two_complement"}}}
,"SFT0"{class{"shifter"},classpath{"/basicfhmdb/computational/"},use{"(unspecified)"},
parameter{
abstraction_level{for_simulation{"Behavior"},for_synthesis{"Gate"}},
bit_width{"32"},
amount{"variable"}}}
,"EXT1"{class{"extender"},classpath{"/basicfhmdb/computational/"},use{"(unspecified)"},
parameter{
abstraction_level{for_simulation{"Behavior"},for_synthesis{"Gate"}},
bit_width{"28"},
bit_width_out{"32"}}}
},

Exception{"reset"{
Mask{Maskable{"NO"},Register_Name{""},Position{""},Register_Value{""}},
Condition{Internal_Condition{""},"Reset"{Active_Value{"1"}}},
Type{"Reset"},
Cycles{""},
Behavior{""},
Assert{""},
Comment{""},
MOD{variable{""},clk(1){"null = PC.reset();
null = IR.reset();
null = DMAU.reset();
null = GPR.reset();
null = MUL0.reset();
null = DIV0.reset();"}
}}
},

MOT{mnemonic{"add"{variable{"wire [31:0] current_pc;
wire [31:0]  source0;
wire [31:0]  source1;
wire [31:0]  result;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"source0 = GPR.read0(rs0);
source1 = GPR.read1(rs1);"},
clk(3){"wire [3:0]  flag;

<result, flag> = ALU0.add(source0, source1);"},
clk(4){""},
clk(5){"null = GPR.write0(rd, result);"}
}
,"addu"{variable{"wire [31:0] current_pc;
wire [31:0]  source0;
wire [31:0]  source1;
wire [31:0]  result;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"source0 = GPR.read0(rs0);
source1 = GPR.read1(rs1);"},
clk(3){"wire [3:0]  flag;

<result, flag> = ALU0.addu(source0, source1);"},
clk(4){""},
clk(5){"null = GPR.write0(rd, result);"}
}
,"addi"{variable{"wire [31:0] current_pc;
wire [31:0] source0;
wire [31:0] source1;
wire [31:0]  result;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"source0 = GPR.read0(rs0);
source1 = EXT0.sign(const);"},
clk(3){"wire [3:0]  flag;

<result, flag> = ALU0.add(source0, source1);"},
clk(4){""},
clk(5){"null = GPR.write0(rd, result);"}
}
,"addui"{variable{"wire [31:0] current_pc;
wire [31:0] source0;
wire [31:0] source1;
wire [31:0]  result;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"wire [15:0] zero_16;

source0 = GPR.read0(rs0);
zero_16 = \"0000000000000000\";
source1 = <zero_16, const>;"},
clk(3){"wire [3:0]  flag;

<result, flag> = ALU0.addu(source0, source1);"},
clk(4){""},
clk(5){"null = GPR.write0(rd, result);"}
}
,"sub"{variable{"wire [31:0] current_pc;
wire [31:0]  source0;
wire [31:0]  source1;
wire [31:0]  result;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"source0 = GPR.read0(rs0);
source1 = GPR.read1(rs1);"},
clk(3){"wire [3:0]  flag;

<result, flag> = ALU0.sub(source0, source1);"},
clk(4){""},
clk(5){"null = GPR.write0(rd, result);"}
}
,"subu"{variable{"wire [31:0] current_pc;
wire [31:0]  source0;
wire [31:0]  source1;
wire [31:0]  result;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"source0 = GPR.read0(rs0);
source1 = GPR.read1(rs1);"},
clk(3){"wire [3:0]  flag;

<result, flag> = ALU0.subu(source0, source1);"},
clk(4){""},
clk(5){"null = GPR.write0(rd, result);"}
}
,"subi"{variable{"wire [31:0] current_pc;
wire [31:0] source0;
wire [31:0] source1;
wire [31:0]  result;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"source0 = GPR.read0(rs0);
source1 = EXT0.sign(const);"},
clk(3){"wire [3:0]  flag;

<result, flag> = ALU0.sub(source0, source1);"},
clk(4){""},
clk(5){"null = GPR.write0(rd, result);"}
}
,"subui"{variable{"wire [31:0] current_pc;
wire [31:0] source0;
wire [31:0] source1;
wire [31:0]  result;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"wire [15:0] zero_16;

source0 = GPR.read0(rs0);
zero_16 = \"0000000000000000\";
source1 = <zero_16, const>;"},
clk(3){"wire [3:0]  flag;

<result, flag> = ALU0.subu(source0, source1);"},
clk(4){""},
clk(5){"null = GPR.write0(rd, result);"}
}
,"mult"{variable{"wire [31:0] current_pc;
wire [31:0]  source0;
wire [31:0]  source1;
wire [31:0]  result;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"source0 = GPR.read0(rs0);
source1 = GPR.read1(rs1);"},
clk(3){"wire [63:0]  tmp_result;

tmp_result = MUL0.mul(source0, source1);
result = tmp_result[31:0];"},
clk(4){""},
clk(5){"null = GPR.write0(rd, result);"}
}
,"multu"{variable{"wire [31:0] current_pc;
wire [31:0]  source0;
wire [31:0]  source1;
wire [31:0]  result;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"source0 = GPR.read0(rs0);
source1 = GPR.read1(rs1);"},
clk(3){"wire [63:0]  tmp_result;

tmp_result = MUL0.mulu(source0, source1);
result = tmp_result[31:0];"},
clk(4){""},
clk(5){"null = GPR.write0(rd, result);"}
}
,"div"{variable{"wire [31:0] current_pc;
wire [31:0]  source0;
wire [31:0]  source1;
wire [31:0]  result;
wire [31:0]  mod_result;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"source0 = GPR.read0(rs0);
source1 = GPR.read1(rs1);"},
clk(3){"wire div_flag;

<result, mod_result, div_flag> = DIV0.div(source0, source1);"},
clk(4){""},
clk(5){"null = GPR.write0(rd, result);"}
}
,"divu"{variable{"wire [31:0] current_pc;
wire [31:0]  source0;
wire [31:0]  source1;
wire [31:0]  result;
wire [31:0]  mod_result;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"source0 = GPR.read0(rs0);
source1 = GPR.read1(rs1);"},
clk(3){"wire div_flag;

<result, mod_result, div_flag> = DIV0.divu(source0, source1);"},
clk(4){""},
clk(5){"null = GPR.write0(rd, result);"}
}
,"and"{variable{"wire [31:0] current_pc;
wire [31:0]  source0;
wire [31:0]  source1;
wire [31:0]  result;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"source0 = GPR.read0(rs0);
source1 = GPR.read1(rs1);"},
clk(3){"wire [3:0]  flag;

<result, flag> = ALU0.and(source0, source1);"},
clk(4){""},
clk(5){"null = GPR.write0(rd, result);"}
}
,"andi"{variable{"wire [31:0] current_pc;
wire [31:0] source0;
wire [31:0] source1;
wire [31:0]  result;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"wire [15:0] zero_16;

source0 = GPR.read0(rs0);
zero_16 = \"0000000000000000\";
source1 = <zero_16, const>;"},
clk(3){"wire [3:0]  flag;

<result, flag> = ALU0.and(source0, source1);"},
clk(4){""},
clk(5){"null = GPR.write0(rd, result);"}
}
,"or"{variable{"wire [31:0] current_pc;
wire [31:0]  source0;
wire [31:0]  source1;
wire [31:0]  result;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"source0 = GPR.read0(rs0);
source1 = GPR.read1(rs1);"},
clk(3){"wire [3:0]  flag;

<result, flag> = ALU0.or(source0, source1);"},
clk(4){""},
clk(5){"null = GPR.write0(rd, result);"}
}
,"ori"{variable{"wire [31:0] current_pc;
wire [31:0] source0;
wire [31:0] source1;
wire [31:0]  result;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"wire [15:0] zero_16;

source0 = GPR.read0(rs0);
zero_16 = \"0000000000000000\";
source1 = <zero_16, const>;"},
clk(3){"wire [3:0]  flag;

<result, flag> = ALU0.or(source0, source1);"},
clk(4){""},
clk(5){"null = GPR.write0(rd, result);"}
}
,"xor"{variable{"wire [31:0] current_pc;
wire [31:0]  source0;
wire [31:0]  source1;
wire [31:0]  result;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"source0 = GPR.read0(rs0);
source1 = GPR.read1(rs1);"},
clk(3){"wire [3:0]  flag;

<result, flag> = ALU0.xor(source0, source1);"},
clk(4){""},
clk(5){"null = GPR.write0(rd, result);"}
}
,"xori"{variable{"wire [31:0] current_pc;
wire [31:0] source0;
wire [31:0] source1;
wire [31:0]  result;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"wire [15:0] zero_16;

source0 = GPR.read0(rs0);
zero_16 = \"0000000000000000\";
source1 = <zero_16, const>;"},
clk(3){"wire [3:0]  flag;

<result, flag> = ALU0.or(source0, source1);"},
clk(4){""},
clk(5){"null = GPR.write0(rd, result);"}
}
,"sll"{variable{"wire [31:0] current_pc;
wire [31:0]  source0;
wire [31:0]  source1;
wire [31:0]  result;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"source0 = GPR.read0(rs0);
source1 = GPR.read1(rs1);"},
clk(3){"wire [4:0]  shamt;

shamt = source1[4:0];
result = SFT0.sll(source0, shamt);"},
clk(4){""},
clk(5){"null = GPR.write0(rd, result);"}
}
,"srl"{variable{"wire [31:0] current_pc;
wire [31:0]  source0;
wire [31:0]  source1;
wire [31:0]  result;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"source0 = GPR.read0(rs0);
source1 = GPR.read1(rs1);"},
clk(3){"wire [4:0]  shamt;

shamt = source1[4:0];
result = SFT0.srl(source0, shamt);"},
clk(4){""},
clk(5){"null = GPR.write0(rd, result);"}
}
,"sra"{variable{"wire [31:0] current_pc;
wire [31:0]  source0;
wire [31:0]  source1;
wire [31:0]  result;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"source0 = GPR.read0(rs0);
source1 = GPR.read1(rs1);"},
clk(3){"wire [4:0]  shamt;

shamt = source1[4:0];
result = SFT0.sra(source0, shamt);"},
clk(4){""},
clk(5){"null = GPR.write0(rd, result);"}
}
,"slli"{variable{"wire [31:0] current_pc;
wire [31:0] source0;
wire [31:0] source1;
wire [31:0]  result;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"wire [15:0] zero_16;

source0 = GPR.read0(rs0);
zero_16 = \"0000000000000000\";
source1 = <zero_16, const>;"},
clk(3){"wire [4:0]  shamt;

shamt = source1[4:0];
result = SFT0.sll(source0, shamt);"},
clk(4){""},
clk(5){"null = GPR.write0(rd, result);"}
}
,"srli"{variable{"wire [31:0] current_pc;
wire [31:0] source0;
wire [31:0] source1;
wire [31:0]  result;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"wire [15:0] zero_16;

source0 = GPR.read0(rs0);
zero_16 = \"0000000000000000\";
source1 = <zero_16, const>;"},
clk(3){"wire [4:0]  shamt;

shamt = source1[4:0];
result = SFT0.srl(source0, shamt);"},
clk(4){""},
clk(5){"null = GPR.write0(rd, result);"}
}
,"srai"{variable{"wire [31:0] current_pc;
wire [31:0] source0;
wire [31:0] source1;
wire [31:0]  result;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"wire [15:0] zero_16;

source0 = GPR.read0(rs0);
zero_16 = \"0000000000000000\";
source1 = <zero_16, const>;"},
clk(3){"wire [4:0]  shamt;

shamt = source1[4:0];
result = SFT0.sra(source0, shamt);"},
clk(4){""},
clk(5){"null = GPR.write0(rd, result);"}
}
,"slt"{variable{"wire [31:0] current_pc;
wire [31:0]  source0;
wire [31:0]  source1;
wire [3:0] flag;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"source0 = GPR.read0(rs0);
source1 = GPR.read1(rs1);"},
clk(3){"flag = ALU0.cmp(source0,source1);"},
clk(4){""},
clk(5){"wire [2:0]   tmp_flag;
wire           cond1;
wire           cond2;
wire           cond;
wire [30:0] zero31;
wire [31:0] result;

zero31 = \"0000000000000000000000000000000\";

tmp_flag = flag[2:0];
cond1 = tmp_flag == \"010\";
cond2 = flag         == \"1001\";
cond   = cond1 | cond2;
result = <zero31, cond>;
null  = GPR.write0(rd, result);"}
}
,"sgt"{variable{"wire [31:0] current_pc;
wire [31:0]  source0;
wire [31:0]  source1;
wire [3:0] flag;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"source0 = GPR.read0(rs0);
source1 = GPR.read1(rs1);"},
clk(3){"flag = ALU0.cmp(source0,source1);"},
clk(4){""},
clk(5){"wire [2:0]   tmp_flag;
wire           cond1;
wire           cond2;
wire           cond;
wire [30:0] zero31;
wire [31:0] result;

zero31 = \"0000000000000000000000000000000\";

tmp_flag = flag[2:0];
cond1 = tmp_flag == \"000\";
cond2 = flag         == \"0011\";
cond   = cond1 | cond2;
result = <zero31, cond>;
null  = GPR.write0(rd, result);"}
}
,"sle"{variable{"wire [31:0] current_pc;
wire [31:0]  source0;
wire [31:0]  source1;
wire [3:0] flag;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"source0 = GPR.read0(rs0);
source1 = GPR.read1(rs1);"},
clk(3){"flag = ALU0.cmp(source0,source1);"},
clk(4){""},
clk(5){"wire [2:0]   tmp_flag;
wire           cond1;
wire           cond2;
wire           cond3;
wire           cond4;
wire           cond;
wire [30:0] zero31;
wire [31:0] result;

zero31 = \"0000000000000000000000000000000\";

tmp_flag = flag[2:0];
cond1 = tmp_flag == \"010\";
cond2 = flag         == \"1001\";
cond3 = flag         == \"1100\";
cond4 = cond1 | cond2;
cond   = cond3 | cond4;
result = <zero31, cond>;
null    = GPR.write0(rd,result);"}
}
,"sge"{variable{"wire [31:0] current_pc;
wire [31:0]  source0;
wire [31:0]  source1;
wire [3:0] flag;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"source0 = GPR.read0(rs0);
source1 = GPR.read1(rs1);"},
clk(3){"flag = ALU0.cmp(source0,source1);"},
clk(4){""},
clk(5){"wire           cond1;
wire           cond2;
wire           cond3;
wire           cond4;
wire           cond;
wire [30:0] zero31;
wire [31:0] result;
wire [2:0]   tmp_flag1;
wire           tmp_flag2;
wire [1:0]   tmp_flag3;
wire [2:0]   tmp_flag4;

zero31 = \"0000000000000000000000000000000\";

tmp_flag1 = flag[2:0];
tmp_flag2 = flag[3];
tmp_flag3 = flag[1:0];
tmp_flag4 = <tmp_flag2,tmp_flag3>;
cond1 = tmp_flag1 == \"000\";
cond2 = tmp_flag4 == \"100\";
cond3 = flag           == \"0011\";
cond4 = cond1 | cond2;
cond   = cond3 | cond4;
result = <zero31, cond>;
null    = GPR.write0(rd,result);"}
}
,"seq"{variable{"wire [31:0] current_pc;
wire [31:0]  source0;
wire [31:0]  source1;
wire [3:0] flag;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"source0 = GPR.read0(rs0);
source1 = GPR.read1(rs1);"},
clk(3){"flag = ALU0.cmp(source0,source1);"},
clk(4){""},
clk(5){"wire           cond;
wire [30:0] zero31;
wire [31:0] result;

zero31 = \"0000000000000000000000000000000\";

cond  = flag  == \"1100\";
result = <zero31, cond>;
null    = GPR.write0(rd,result);"}
}
,"sne"{variable{"wire [31:0] current_pc;
wire [31:0]  source0;
wire [31:0]  source1;
wire [3:0] flag;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"source0 = GPR.read0(rs0);
source1 = GPR.read1(rs1);"},
clk(3){"flag = ALU0.cmp(source0,source1);"},
clk(4){""},
clk(5){"wire           cond;
wire [30:0] zero31;
wire [31:0] result;

zero31 = \"0000000000000000000000000000000\";

cond  = flag  != \"1100\";
result = <zero31, cond>;
null    = GPR.write0(rd,result);"}
}
,"slti"{variable{"wire [31:0] current_pc;
wire [31:0] source0;
wire [31:0] source1;
wire [3:0] flag;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"source0 = GPR.read0(rs0);
source1 = EXT0.sign(const);"},
clk(3){"flag = ALU0.cmp(source0,source1);"},
clk(4){""},
clk(5){"wire [2:0]   tmp_flag;
wire           cond1;
wire           cond2;
wire           cond;
wire [30:0] zero31;
wire [31:0] result;

zero31 = \"0000000000000000000000000000000\";

tmp_flag = flag[2:0];
cond1 = tmp_flag == \"010\";
cond2 = flag         == \"1001\";
cond   = cond1 | cond2;
result = <zero31, cond>;
null  = GPR.write0(rd, result);"}
}
,"sgti"{variable{"wire [31:0] current_pc;
wire [31:0] source0;
wire [31:0] source1;
wire [3:0] flag;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"source0 = GPR.read0(rs0);
source1 = EXT0.sign(const);"},
clk(3){"flag = ALU0.cmp(source0,source1);"},
clk(4){""},
clk(5){"wire [2:0]   tmp_flag;
wire           cond1;
wire           cond2;
wire           cond;
wire [30:0] zero31;
wire [31:0] result;

zero31 = \"0000000000000000000000000000000\";

tmp_flag = flag[2:0];
cond1 = tmp_flag == \"000\";
cond2 = flag         == \"0011\";
cond   = cond1 | cond2;
result = <zero31, cond>;
null  = GPR.write0(rd, result);"}
}
,"slei"{variable{"wire [31:0] current_pc;
wire [31:0] source0;
wire [31:0] source1;
wire [3:0] flag;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"source0 = GPR.read0(rs0);
source1 = EXT0.sign(const);"},
clk(3){"flag = ALU0.cmp(source0,source1);"},
clk(4){""},
clk(5){"wire [2:0]   tmp_flag;
wire           cond1;
wire           cond2;
wire           cond3;
wire           cond4;
wire           cond;
wire [30:0] zero31;
wire [31:0] result;

zero31 = \"0000000000000000000000000000000\";

tmp_flag = flag[2:0];
cond1 = tmp_flag == \"010\";
cond2 = flag         == \"1001\";
cond3 = flag         == \"1100\";
cond4 = cond1 | cond2;
cond   = cond3 | cond4;
result = <zero31, cond>;
null    = GPR.write0(rd,result);"}
}
,"sgei"{variable{"wire [31:0] current_pc;
wire [31:0] source0;
wire [31:0] source1;
wire [3:0] flag;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"source0 = GPR.read0(rs0);
source1 = EXT0.sign(const);"},
clk(3){"flag = ALU0.cmp(source0,source1);"},
clk(4){""},
clk(5){"wire           cond1;
wire           cond2;
wire           cond3;
wire           cond4;
wire           cond;
wire [30:0] zero31;
wire [31:0] result;
wire [2:0]   tmp_flag1;
wire           tmp_flag2;
wire [1:0]   tmp_flag3;
wire [2:0]   tmp_flag4;

zero31 = \"0000000000000000000000000000000\";

tmp_flag1 = flag[2:0];
tmp_flag2 = flag[3];
tmp_flag3 = flag[1:0];
tmp_flag4 = <tmp_flag2,tmp_flag3>;
cond1 = tmp_flag1 == \"000\";
cond2 = tmp_flag4 == \"100\";
cond3 = flag           == \"0011\";
cond4 = cond1 | cond2;
cond   = cond3 | cond4;
result = <zero31, cond>;
null    = GPR.write0(rd,result);"}
}
,"seqi"{variable{"wire [31:0] current_pc;
wire [31:0] source0;
wire [31:0] source1;
wire [3:0] flag;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"source0 = GPR.read0(rs0);
source1 = EXT0.sign(const);"},
clk(3){"flag = ALU0.cmp(source0,source1);"},
clk(4){""},
clk(5){"wire           cond;
wire [30:0] zero31;
wire [31:0] result;

zero31 = \"0000000000000000000000000000000\";

cond  = flag  == \"1100\";
result = <zero31, cond>;
null    = GPR.write0(rd,result);"}
}
,"snei"{variable{"wire [31:0] current_pc;
wire [31:0] source0;
wire [31:0] source1;
wire [3:0] flag;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"source0 = GPR.read0(rs0);
source1 = EXT0.sign(const);"},
clk(3){"flag = ALU0.cmp(source0,source1);"},
clk(4){""},
clk(5){"wire           cond;
wire [30:0] zero31;
wire [31:0] result;

zero31 = \"0000000000000000000000000000000\";

cond  = flag  != \"1100\";
result = <zero31, cond>;
null    = GPR.write0(rd,result);"}
}
,"lhi"{variable{"wire [31:0]  result;
wire [31:0] current_pc;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"wire [15:0] zero16;

zero16 = \"0000000000000000\";
result = <const, zero16>;"},
clk(3){""},
clk(4){""},
clk(5){"null = GPR.write0(rd, result);"}
}
,"lb"{variable{"wire [31:0] current_pc;
wire [31:0] source0;
wire [31:0] source1;
wire [31:0] addr;
wire [31:0] result;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"source0 = GPR.read0(rs0);
source1 = EXT0.sign(const);"},
clk(3){"wire [3:0] flag;

<addr,flag> = ALU0.add(source0,source1);"},
clk(4){"wire addr_err;

<result, addr_err> = DMAU.lb(addr);
  /* result is 32bit data. already extended*/"},
clk(5){"null = GPR.write0(rd, result);"}
}
,"lh"{variable{"wire [31:0] current_pc;
wire [31:0] source0;
wire [31:0] source1;
wire [31:0] addr;
wire [31:0] result;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"source0 = GPR.read0(rs0);
source1 = EXT0.sign(const);"},
clk(3){"wire [3:0] flag;

<addr,flag> = ALU0.add(source0,source1);"},
clk(4){"wire addr_err;

<result, addr_err> = DMAU.lh(addr);
  /* result is 32bit data. already extended*/"},
clk(5){"null = GPR.write0(rd, result);"}
}
,"lw"{variable{"wire [31:0] current_pc;
wire [31:0] source0;
wire [31:0] source1;
wire [31:0] addr;
wire [31:0] result;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"source0 = GPR.read0(rs0);
source1 = EXT0.sign(const);"},
clk(3){"wire [3:0] flag;

<addr,flag> = ALU0.add(source0,source1);"},
clk(4){"wire addr_err;

<result, addr_err> = DMAU.load(addr);
  /* result is 32bit data. already extended*/"},
clk(5){"null = GPR.write0(rd, result);"}
}
,"lbu"{variable{"wire [31:0] current_pc;
wire [31:0] source0;
wire [31:0] source1;
wire [31:0] addr;
wire [31:0] result;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"source0 = GPR.read0(rs0);
source1 = EXT0.sign(const);"},
clk(3){"wire [3:0] flag;

<addr,flag> = ALU0.add(source0,source1);"},
clk(4){"wire addr_err;

<result, addr_err> = DMAU.lbu(addr);
  /* result is 32bit data. already extended*/"},
clk(5){"null = GPR.write0(rd, result);"}
}
,"lhu"{variable{"wire [31:0] current_pc;
wire [31:0] source0;
wire [31:0] source1;
wire [31:0] addr;
wire [31:0] result;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"source0 = GPR.read0(rs0);
source1 = EXT0.sign(const);"},
clk(3){"wire [3:0] flag;

<addr,flag> = ALU0.add(source0,source1);"},
clk(4){"wire addr_err;

<result, addr_err> = DMAU.lhu(addr);
  /* result is 32bit data. already extended*/"},
clk(5){"null = GPR.write0(rd, result);"}
}
,"sb"{variable{"wire [31:0] current_pc;
wire [31:0] data;
wire [31:0] base;
wire [31:0] offset;
wire [31:0] addr;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"data   = GPR.read0(rd);
base   = GPR.read1(rs0);
offset = EXT0.sign(const);"},
clk(3){"wire [3:0] flag;

<addr, flag> = ALU0.add(base,offset);"},
clk(4){"wire addr_err;

addr_err = DMAU.sb(addr,data);"},
clk(5){""}
}
,"sh"{variable{"wire [31:0] current_pc;
wire [31:0] data;
wire [31:0] base;
wire [31:0] offset;
wire [31:0] addr;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"data   = GPR.read0(rd);
base   = GPR.read1(rs0);
offset = EXT0.sign(const);"},
clk(3){"wire [3:0] flag;

<addr, flag> = ALU0.add(base,offset);"},
clk(4){"wire addr_err;

addr_err = DMAU.sh(addr,data);"},
clk(5){""}
}
,"sw"{variable{"wire [31:0] current_pc;
wire [31:0] data;
wire [31:0] base;
wire [31:0] offset;
wire [31:0] addr;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"data   = GPR.read0(rd);
base   = GPR.read1(rs0);
offset = EXT0.sign(const);"},
clk(3){"wire [3:0] flag;

<addr, flag> = ALU0.add(base,offset);"},
clk(4){"wire addr_err;

addr_err = DMAU.store(addr,data);"},
clk(5){""}
}
,"beqz"{variable{"wire [31:0] current_pc;
wire [31:0] offset;
wire [31:0] source0;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"source0           = GPR.read0(rs0);
offset              = EXT0.sign(const);"},
clk(3){"wire           cond;
wire [31:0] target;
wire [3:0]   flag;

cond    = source0 == \"00000000000000000000000000000000\";
<target,flag>   = ALU0.add(current_pc, offset);
null      = [cond] PC.write(target);"},
clk(4){""},
clk(5){""}
}
,"bnez"{variable{"wire [31:0] current_pc;
wire [31:0] offset;
wire [31:0] source0;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"source0           = GPR.read0(rs0);
offset              = EXT0.sign(const);"},
clk(3){"wire           cond;
wire [31:0] target;
wire [3:0]   flag;

cond    = source0 != \"00000000000000000000000000000000\";
<target,flag>   = ALU0.add(current_pc, offset);
null      = [cond] PC.write(target);"},
clk(4){""},
clk(5){""}
}
,"j"{variable{"wire [31:0] current_pc;
wire [31:0]  offset;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"wire [1:0]  zero2;
wire [27:0]  ext_const;
wire [31:0]  temp_offset;
wire [1:0] first;
wire [29:0] second;

zero2 = \"00\";
ext_const = <const, zero2>;
temp_offset = EXT1.sign(ext_const);
first = temp_offset[31:30];
second = temp_offset [31:2];

offset = <first, second>;"},
clk(3){"wire [31:0]  target;
wire [3:0]  flag;

<target, flag> = ALU0.add(current_pc, offset);
null = PC.write(target);"},
clk(4){""},
clk(5){""}
}
,"jal"{variable{"wire [31:0] current_pc;
wire [31:0]  link;
wire [31:0]  offset;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"wire [1:0]  zero2;
wire [27:0]  ext_const;
wire [31:0]  temp_offset;
wire [1:0] first;
wire [29:0] second;

zero2 = \"00\";
ext_const = <const, zero2>;
temp_offset = EXT1.sign(ext_const);
first = temp_offset[31:30];
second = temp_offset [31:2];

offset = <first, second>;


link = PC.read();"},
clk(3){"wire [31:0]  target;
wire [3:0]  flag;

<target, flag> = ALU0.add(current_pc, offset);
null = PC.write(target);"},
clk(4){""},
clk(5){"wire [4:0]  reg_num;

reg_num = \"11111\";
null = GPR.write0(reg_num, link);"}
}
,"jr"{variable{"wire [31:0] current_pc;
wire [31:0]  target;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"target = GPR.read0(rs0);"},
clk(3){"null = PC.write(target);"},
clk(4){""},
clk(5){""}
}
,"jalr"{variable{"wire [31:0] current_pc;
wire [31:0]  target;
wire [31:0]  link;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"target = GPR.read0(rs0);


link = PC.read();"},
clk(3){"null = PC.write(target);"},
clk(4){""},
clk(5){"wire [4:0]  reg_num;

reg_num = \"11111\";
null = GPR.write0(reg_num, link);"}
}
,"MOD"{variable{"wire [31:0] current_pc;
wire [31:0]  source0;
wire [31:0]  source1;
wire [31:0]  result;
wire [31:0]  div_result;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"source0 = GPR.read0(rs0);
source1 = GPR.read1(rs1);"},
clk(3){"wire div_flag;

<div_result, result, div_flag> = DIV0.div(source0, source1);"},
clk(4){""},
clk(5){"null = GPR.write0(rd, result);"}
}
,"modu"{variable{"wire [31:0] current_pc;
wire [31:0]  source0;
wire [31:0]  source1;
wire [31:0]  result;
wire [31:0]  div_result;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"source0 = GPR.read0(rs0);
source1 = GPR.read1(rs1);"},
clk(3){"wire div_flag;

<div_result, result, div_flag> = DIV0.divu(source0, source1);"},
clk(4){""},
clk(5){"null = GPR.write0(rd, result);"}
}
,"sltu"{variable{"wire [31:0] current_pc;
wire [31:0]  source0;
wire [31:0]  source1;
wire [3:0] flag;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"source0 = GPR.read0(rs0);
source1 = GPR.read1(rs1);"},
clk(3){"flag = ALU0.cmpu(source0,source1);"},
clk(4){""},
clk(5){"wire [2:0]   tmp_flag;
wire           cond1;
wire           cond2;
wire           cond;
wire [30:0] zero31;
wire [31:0] result;

zero31 = \"0000000000000000000000000000000\";

tmp_flag = flag[2:0];
cond1 = tmp_flag == \"010\";
cond2 = flag         == \"1001\";
cond   = cond1 | cond2;
result = <zero31, cond>;
null  = GPR.write0(rd, result);"}
}
,"sgtu"{variable{"wire [31:0] current_pc;
wire [31:0]  source0;
wire [31:0]  source1;
wire [3:0] flag;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"source0 = GPR.read0(rs0);
source1 = GPR.read1(rs1);"},
clk(3){"flag = ALU0.cmpu(source0,source1);"},
clk(4){""},
clk(5){"wire [2:0]   tmp_flag;
wire           cond1;
wire           cond2;
wire           cond;
wire [30:0] zero31;
wire [31:0] result;

zero31 = \"0000000000000000000000000000000\";

tmp_flag = flag[2:0];
cond1 = tmp_flag == \"000\";
cond2 = flag         == \"0011\";
cond   = cond1 | cond2;
result = <zero31, cond>;
null  = GPR.write0(rd, result);"}
}
,"sleu"{variable{"wire [31:0] current_pc;
wire [31:0]  source0;
wire [31:0]  source1;
wire [3:0] flag;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"source0 = GPR.read0(rs0);
source1 = GPR.read1(rs1);"},
clk(3){"flag = ALU0.cmpu(source0,source1);"},
clk(4){""},
clk(5){"wire [2:0]   tmp_flag;
wire           cond1;
wire           cond2;
wire           cond3;
wire           cond4;
wire           cond;
wire [30:0] zero31;
wire [31:0] result;

zero31 = \"0000000000000000000000000000000\";

tmp_flag = flag[2:0];
cond1 = tmp_flag == \"010\";
cond2 = flag         == \"1001\";
cond3 = flag         == \"1100\";
cond4 = cond1 | cond2;
cond   = cond3 | cond4;
result = <zero31, cond>;
null    = GPR.write0(rd,result);"}
}
,"sgeu"{variable{"wire [31:0] current_pc;
wire [31:0]  source0;
wire [31:0]  source1;
wire [3:0] flag;"},clk(1){"wire [31:0]  inst;

current_pc = PC.read();
inst = IMAU.read(current_pc);
null = IR.write(inst);
null = PC.inc();"},
clk(2){"source0 = GPR.read0(rs0);
source1 = GPR.read1(rs1);"},
clk(3){"flag = ALU0.cmpu(source0,source1);"},
clk(4){""},
clk(5){"wire           cond1;
wire           cond2;
wire           cond3;
wire           cond4;
wire           cond;
wire [30:0] zero31;
wire [31:0] result;
wire [2:0]   tmp_flag1;
wire           tmp_flag2;
wire [1:0]   tmp_flag3;
wire [2:0]   tmp_flag4;

zero31 = \"0000000000000000000000000000000\";

tmp_flag1 = flag[2:0];
tmp_flag2 = flag[3];
tmp_flag3 = flag[1:0];
tmp_flag4 = <tmp_flag2,tmp_flag3>;
cond1 = tmp_flag1 == \"000\";
cond2 = tmp_flag4 == \"100\";
cond3 = flag           == \"0011\";
cond4 = cond1 | cond2;
cond   = cond3 | cond4;
result = <zero31, cond>;
null    = GPR.write0(rd,result);"}
}
}}

}
