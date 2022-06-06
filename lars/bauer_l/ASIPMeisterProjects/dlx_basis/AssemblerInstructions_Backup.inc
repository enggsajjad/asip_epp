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
    "OP-code" {"binary"{"11111111"},width{"31","24"}},
    "Operand" {"name"{"instruction"},width{"23","16"}},
    "Operand" {"name"{"probabillity"},width{"15","8"}},
    "Operand" {"name"{"frequency"},width{"7","0"}}
  },
