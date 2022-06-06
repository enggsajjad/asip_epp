  "nop" {
    type{"MY_NOP"{otype{"MY_NOP0"}}},
    "OP-code" {"binary"{"00000000000000000000000000000000"},width{"31","0"}}
  },
  
  "forecast" {
    type{"MY_FORECAST"{otype{"MY_FORECAST0"}}},
    "OP-code" {"binary"{"111101"},width{"31","26"}},
    "Operand" {"name"{"instruction"},width{"25","16"}},
    "Operand" {"name"{"frequency"},width{"15","0"}}
  },
  
  "IPred_HDC16x16" {
    type{"R_R_R"{otype{"R_R_R0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "Operand" {"name"{"rs2"},width{"15","11"}},
    "Operand" {"name"{"rd"},width{"10","6"}},
    "OP-code" {"binary"{"000010"},width{"5","0"}}
  },

  "satd4x4" {
    type{"R_R_R"{otype{"R_R_R0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "Operand" {"name"{"rs2"},width{"15","11"}},
    "Operand" {"name"{"rd"},width{"10","6"}},
    "OP-code" {"binary"{"000011"},width{"5","0"}}
  },
  
  "dct4x4" {
    type{"R_R_R"{otype{"R_R_R0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "Operand" {"name"{"rs2"},width{"15","11"}},
    "Operand" {"name"{"rd"},width{"10","6"}},
    "OP-code" {"binary"{"000100"},width{"5","0"}}
  },
  
  "ht2x2cr" {
    type{"R_R_R"{otype{"R_R_R0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "Operand" {"name"{"rs2"},width{"15","11"}},
    "Operand" {"name"{"rd"},width{"10","6"}},
    "OP-code" {"binary"{"000101"},width{"5","0"}}
  },
	  
  "SAD16" {
    type{"R_R_R"{otype{"R_R_R0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "Operand" {"name"{"rs2"},width{"15","11"}},
    "Operand" {"name"{"rd"},width{"10","6"}},
    "OP-code" {"binary"{"000110"},width{"5","0"}}
  },
	  


  
  "IPred_VDC16x16" {
    type{"R_R"{otype{"R_R0"}}},
    "OP-code" {"binary"{"000000"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "Operand" {"name"{"rd"},width{"15","11"}},
    "OP-code" {"binary"{"00000111001"},width{"10","0"}}
  },
  
  "MC_Hz4" {
    type{"R_R"{otype{"R_R0"}}},
    "OP-code" {"binary"{"000000"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "Operand" {"name"{"rd"},width{"15","11"}},
    "OP-code" {"binary"{"00000111111"},width{"10","0"}}
  },
  
  "LoopFilter" {
    type{"R_R"{otype{"R_R0"}}},
    "OP-code" {"binary"{"000000"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "Operand" {"name"{"rd"},width{"15","11"}},
    "OP-code" {"binary"{"11111100000"},width{"10","0"}}
  },

  "ht4x4il" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000000001"},width{"15","0"}}
  },
  
  
