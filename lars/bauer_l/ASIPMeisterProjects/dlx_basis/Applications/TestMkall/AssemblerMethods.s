        .section        .text
        .addressing     Word
AssemblerMethod:
L1:
        nop
        nop
        nop
        sw      -4(%GPR29),%GPR30
        sw      0(%GPR29),%GPR31
        subui   %GPR30,%GPR29,$4
        subi    %GPR29,%GPR29,$8
        nop
        nop
        nop
        lhi     %GPR28,$0
        nop
        nop
        nop
        ori     %GPR28,%GPR28,$0
        nop
        nop
        nop
        lw      %GPR31,4(%GPR30)
        addui   %GPR29,%GPR30,$4
        lw      %GPR30,0(%GPR30)
        nop
        nop
        nop
        jr      %GPR31
        nop
        nop
L2:
