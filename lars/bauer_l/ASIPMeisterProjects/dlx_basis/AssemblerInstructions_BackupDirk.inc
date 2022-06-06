  "nop" {
    type{"MY_NOP"{otype{"MY_NOP0"}}},
    "OP-code" {"binary"{"00000000000000000000000000000000"},width{"31","0"}}
  },

  "HD" {
    type{"R_R"{otype{"R_R0"}}},
    "OP-code" {"binary"{"000000"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "Operand" {"name"{"rd"},width{"15","11"}},
    "OP-code" {"binary"{"11111100000"},width{"10","0"}}
  },

  "forecast" {
    type{"MY_FORECAST"{otype{"MY_FORECAST0"}}},
    "OP-code" {"binary"{"111101"},width{"31","26"}},
    "Operand" {"name"{"instruction"},width{"25","16"}},
    "Operand" {"name"{"frequency"},width{"15","0"}}
  },
  
  "xchg" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000000000"},width{"15","0"}}
  },
  
  "optimizeF" {
    type{"R_R"{otype{"R_R0"}}},
    "OP-code" {"binary"{"000000"},width{"31","26"}},
    "Operand" {"name"{"rd"},width{"25","21"}},
    "Operand" {"name"{"rs0"},width{"20","16"}},
    "Operand" {"name"{"rs1"},width{"15","11"}},
    "OP-code" {"binary"{"11111100001"},width{"10","0"}}
  },

  "mad" {
    type{"R_R_R"{otype{"R_R_R0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rd"},width{"25","21"}},
    "Operand" {"name"{"rs0"},width{"20","16"}},
    "Operand" {"name"{"rs1"},width{"15","11"}},
    "Operand" {"name"{"rs2"},width{"10","6"}},
    "OP-code" {"binary"{"000001"},width{"5","0"}}
  },

  
  "S00" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000000001"},width{"15","0"}}
  },

  "S01" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000000010"},width{"15","0"}}
  },

  "S02" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000000011"},width{"15","0"}}
  },

  "S03" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000000100"},width{"15","0"}}
  },

  "S04" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000000101"},width{"15","0"}}
  },

  "S05" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000000110"},width{"15","0"}}
  },

  "S06" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000000111"},width{"15","0"}}
  },

  "S07" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000001000"},width{"15","0"}}
  },

  "S08" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000001001"},width{"15","0"}}
  },

  "S09" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000001010"},width{"15","0"}}
  },
  
  "S10" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000001011"},width{"15","0"}}
  },

  "S11" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000001100"},width{"15","0"}}
  },

  "S12" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000001101"},width{"15","0"}}
  },

  "S13" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000001110"},width{"15","0"}}
  },

  "S14" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000001111"},width{"15","0"}}
  },

  "S15" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000010000"},width{"15","0"}}
  },

  "S16" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000010001"},width{"15","0"}}
  },

  "S17" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000010010"},width{"15","0"}}
  },

  "S18" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000010011"},width{"15","0"}}
  },

  "S19" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000010100"},width{"15","0"}}
  },
  
  "S20" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000010101"},width{"15","0"}}
  },

  "S21" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000010110"},width{"15","0"}}
  },

  "S22" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000010111"},width{"15","0"}}
  },

  "S23" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000011000"},width{"15","0"}}
  },

  "S24" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000011001"},width{"15","0"}}
  },

  "S25" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000011010"},width{"15","0"}}
  },

  "S26" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000011011"},width{"15","0"}}
  },

  "S27" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000011100"},width{"15","0"}}
  },

  "S28" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000011101"},width{"15","0"}}
  },

  "S29" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000011110"},width{"15","0"}}
  },
    
  "S30" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000011111"},width{"15","0"}}
  },

  "S31" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000100000"},width{"15","0"}}
  },

  "S32" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000100001"},width{"15","0"}}
  },

  "S33" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000100010"},width{"15","0"}}
  },

  "S34" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000100011"},width{"15","0"}}
  },

  "S35" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000100100"},width{"15","0"}}
  },

  "S36" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000100101"},width{"15","0"}}
  },

  "S37" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000100110"},width{"15","0"}}
  },

  "S38" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000100111"},width{"15","0"}}
  },

  "S39" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000101000"},width{"15","0"}}
  },
      
  "S40" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000101001"},width{"15","0"}}
  },

  "S41" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000101010"},width{"15","0"}}
  },

  "S42" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000101011"},width{"15","0"}}
  },

  "S43" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000101100"},width{"15","0"}}
  },

  "S44" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000101101"},width{"15","0"}}
  },

  "S45" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000101110"},width{"15","0"}}
  },

  "S46" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000101111"},width{"15","0"}}
  },

  "S47" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000110000"},width{"15","0"}}
  },

  "S48" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000110001"},width{"15","0"}}
  },

  "S49" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000110010"},width{"15","0"}}
  },
        
  "S50" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000110011"},width{"15","0"}}
  },

  "S51" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000110100"},width{"15","0"}}
  },

  "S52" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000110101"},width{"15","0"}}
  },

  "S53" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000110110"},width{"15","0"}}
  },

  "S54" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000110111"},width{"15","0"}}
  },

  "S55" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000111000"},width{"15","0"}}
  },

  "S56" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000111001"},width{"15","0"}}
  },

  "S57" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000111010"},width{"15","0"}}
  },

  "S58" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000111011"},width{"15","0"}}
  },

  "S59" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000111100"},width{"15","0"}}
  },
          
  "S60" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000111101"},width{"15","0"}}
  },

  "S61" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000111110"},width{"15","0"}}
  },

  "S62" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000000111111"},width{"15","0"}}
  },

  "S63" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000001000000"},width{"15","0"}}
  },

  "S64" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000001000001"},width{"15","0"}}
  },

  "S65" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000001000010"},width{"15","0"}}
  },

  "S66" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000001000011"},width{"15","0"}}
  },

  "S67" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000001000100"},width{"15","0"}}
  },

  "S68" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000001000101"},width{"15","0"}}
  },

  "S69" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000001000110"},width{"15","0"}}
  },
            
  "S70" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000001000111"},width{"15","0"}}
  },

  "S71" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000001001000"},width{"15","0"}}
  },

  "S72" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000001001001"},width{"15","0"}}
  },

  "S73" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000001001010"},width{"15","0"}}
  },

  "S74" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000001001011"},width{"15","0"}}
  },

  "S75" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000001001100"},width{"15","0"}}
  },

  "S76" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000001001101"},width{"15","0"}}
  },

  "S77" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000001001110"},width{"15","0"}}
  },

  "S78" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000001001111"},width{"15","0"}}
  },

  "S79" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000001010000"},width{"15","0"}}
  },
              
  "S80" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000001010001"},width{"15","0"}}
  },

  "S81" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000001010010"},width{"15","0"}}
  },

  "S82" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000001010011"},width{"15","0"}}
  },

  "S83" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000001010100"},width{"15","0"}}
  },

  "S84" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000001010101"},width{"15","0"}}
  },

  "S85" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000001010110"},width{"15","0"}}
  },

  "S86" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000001010111"},width{"15","0"}}
  },

  "S87" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000001011000"},width{"15","0"}}
  },

  "S88" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000001011001"},width{"15","0"}}
  },

  "S89" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000001011010"},width{"15","0"}}
  },
                
  "S90" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000001011011"},width{"15","0"}}
  },

  "S91" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000001011100"},width{"15","0"}}
  },

  "S92" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000001011101"},width{"15","0"}}
  },

  "S93" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000001011110"},width{"15","0"}}
  },

  "S94" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000001011111"},width{"15","0"}}
  },

  "S95" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000001100000"},width{"15","0"}}
  },

  "S96" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000001100001"},width{"15","0"}}
  },

  "S97" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000001100010"},width{"15","0"}}
  },

  "S98" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000001100011"},width{"15","0"}}
  },

  "S99" {
    type{"R_R_s"{otype{"R_R_s0"}}},
    "OP-code" {"binary"{"000001"},width{"31","26"}},
    "Operand" {"name"{"rs0"},width{"25","21"}},
    "Operand" {"name"{"rs1"},width{"20","16"}},
    "OP-code" {"binary"{"1000000001100100"},width{"15","0"}}
  },