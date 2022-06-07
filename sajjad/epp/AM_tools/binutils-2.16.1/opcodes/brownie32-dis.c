/* Instruction printing code for the BROWNIE32 Microprocessor
   Copyright 2002 Free Software Foundation, Inc.
   Contributed by Kuang Hwa Lin.  Written by Kuang Hwa Lin, 03/2002.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */

#include "sysdep.h"
#include "dis-asm.h"
#include "opcode/brownie32.h"

#define R_ERROR     0x1
#define R_TYPE      0x2
#define ILD_TYPE    0x3
#define IST_TYPE    0x4
#define IRI_TYPE    0x5
#define IBR_TYPE    0x6
#define IJ_TYPE     0x7
#define IJR_TYPE    0x8
#define ISP_TYPE    0xA
#define IRT_TYPE    0xB
#define NIL         0x9

#define OPC(x)      (x & 0x3F)

// AO_patch
unsigned char rs1, rs2, rd;
unsigned long imm26, current_insn_addr;


unsigned char opc, rs1_31, rs1_26, rs1_15, rs1_10;
unsigned char rs2_26, rd_31, rd_21, rd_10;
unsigned long imm16, offset16, offset26, func, func21;
unsigned long current_insn_addr;

// AO_patch
//static unsigned char brownie32_get_opcode PARAMS ((unsigned long));
//static unsigned char brownie32_get_rs1    PARAMS ((unsigned long));
//static unsigned char brownie32_get_rs2    PARAMS ((unsigned long));
//static unsigned char brownie32_get_rdR    PARAMS ((unsigned long));
//static unsigned long brownie32_get_func   PARAMS ((unsigned long)); 
//static unsigned long brownie32_get_imm16  PARAMS ((unsigned long));
//static unsigned long brownie32_get_imm26  PARAMS ((unsigned long));
static unsigned char brownie32_get_opcode PARAMS ((unsigned long));
static unsigned char brownie32_get_rs1_31 PARAMS ((unsigned long));
static unsigned char brownie32_get_rs1_15 PARAMS ((unsigned long));
static unsigned char brownie32_get_rs1_10 PARAMS ((unsigned long));
static unsigned char brownie32_get_rs2_26 PARAMS ((unsigned long));
static unsigned char brownie32_get_rd_21  PARAMS ((unsigned long));
static unsigned char brownie32_get_rd_10  PARAMS ((unsigned long));
static unsigned long brownie32_get_imm16  PARAMS ((unsigned long));
static unsigned long brownie32_get_offset16 PARAMS ((unsigned long));
static unsigned long brownie32_get_offset26 PARAMS ((unsigned long));
static unsigned long brownie32_get_func PARAMS ((unsigned long));
static unsigned long brownie32_get_func21 PARAMS ((unsigned long));

static void     operand_deliminator PARAMS ((struct disassemble_info *, char *));
static unsigned char brownie32_r_type     PARAMS ((struct disassemble_info *));
static unsigned char brownie32_load_type  PARAMS ((struct disassemble_info *));
static unsigned char brownie32_store_type PARAMS ((struct disassemble_info *));
static unsigned char brownie32_ri_type    PARAMS ((struct disassemble_info *));
static unsigned char brownie32_br_type    PARAMS ((struct disassemble_info *));
static unsigned char brownie32_jmp_type   PARAMS ((struct disassemble_info *));
static unsigned char brownie32_jr_type    PARAMS ((struct disassemble_info *));
static unsigned char brownie32_sp_type    PARAMS ((struct disassemble_info *));

/* Print one instruction from MEMADDR on INFO->STREAM.
   Return the size of the instruction (always 4 on brownie32).  */

static unsigned char
brownie32_get_opcode (opcode)
     unsigned long opcode;
{
  return (unsigned char) (opcode & 0x3F);
}

static unsigned char
brownie32_get_rs1_31 (opcode)
     unsigned long opcode;
{
  return (unsigned char) ((opcode >> 27) & 0x1F);
}

static unsigned char
brownie32_get_rs1_26 (opcode)
     unsigned long opcode;
{
  return (unsigned char) ((opcode >> 22) & 0x1F);
}

static unsigned char
brownie32_get_rs1_15 (opcode)
     unsigned long opcode;
{
  return (unsigned char) ((opcode >> 11) & 0x1F);
}

static unsigned char
brownie32_get_rs1_10 (opcode)
     unsigned long opcode;
{
  return (unsigned char) ((opcode >> 6) & 0x1F);
}

static unsigned char
brownie32_get_rs2_26 (opcode)
     unsigned long opcode;
{
  return (unsigned char) ((opcode >> 22) & 0x1F);
}

static unsigned char
brownie32_get_rd_31 (opcode)
     unsigned long opcode;
{
  return (unsigned char) ((opcode >> 27) & 0x1F);
}

static unsigned char
brownie32_get_rd_21 (opcode)
     unsigned long opcode;
{
  return (unsigned char) ((opcode >> 17) & 0x1F);
}

static unsigned char
brownie32_get_rd_10 (opcode)
     unsigned long opcode;
{
  return (unsigned char) ((opcode >> 6) & 0x1F);
}

static unsigned long
brownie32_get_imm16 (opcode)
     unsigned long opcode;
{
  return (unsigned long) ((opcode >> 16) & 0xFFFF);
}

static unsigned long
brownie32_get_offset16 (opcode)
     unsigned long opcode;
{
  return (unsigned long) ((opcode >> 16) & 0xFFFF);
}

static unsigned long
brownie32_get_offset26 (opcode)
     unsigned long opcode;
{
//  return (unsigned long) ((opcode >> 6) & 0xFFFF);  //C.Katano 
  return (unsigned long) ((long)opcode >> 6);    
}

static unsigned long
brownie32_get_func (opcode)
     unsigned long opcode;
{
  return (unsigned long) (opcode & 0xFFFF);
}

static unsigned long
brownie32_get_func21 (opcode)
     unsigned long opcode;
{
  return (unsigned long) ((opcode >> 11) & 0x7FF); /* FIXMEE */
}


/* Fill the opcode to the max length.  */
static void
operand_deliminator (info, ptr)
     struct disassemble_info *info;
     char *ptr;
{
  int difft = 8 - (int) strlen (ptr);

  while (difft > 0)
    {
      (*info->fprintf_func) (info->stream, "%c", ' ');
      difft -= 1;
    }
}

/* Process the R-type opcode.  */
static unsigned char
brownie32_r_type (info)
     struct disassemble_info *info;
{
  unsigned char r_opc[] = { OPC(RRTYPOP) }; /* Fix ME */
  int r_opc_num = (sizeof r_opc) / (sizeof (char));
  struct _r_opcode
  {
    unsigned long func;
    char *name;
  }
  brownie32_r_opcode[] =
       {
	{ (ADDFTYP|ADDFUNC|RRTYPOP),	"add"	}, /* ADD  (Rm + Rn)               */
	{ (SUBFTYP|SUBFUNC|RRTYPOP),	"sub"	}, /* SUB  (Rm - Rn)               */
	{ (MULFTYP|MULFUNC|RRTYPOP),	"mul"	}, /* MULTIPLY  (Rm * Rn)          */
	{ (DIVFTYP|DIVFUNC|RRTYPOP),	"div"	}, /* DIVIDE    (Rm / Rn)          */
	{ (DIVUFTYP|DIVUFUNC|RRTYPOP),	"divu"	}, /* DIVU      (Rm / Rn)          */
	{ (MODFTYP|MODFUNC|RRTYPOP), 	"mod"	}, /* MOD       (Rm % Rn)          */
	{ (MODUFTYP|MODUFUNC|RRTYPOP), 	"modu"	}, /* MODU      (Rm % Rn)          */
	{ (ANDFTYP|ANDFUNC|RRTYPOP), 	"and"	}, /* AND       (Rm & Rn)          */
	{ (NANDFTYP|NANDFUNC|RRTYPOP), 	"nand"	}, /* NAND      (Rm & Rn)          */
	{ (ORFTYP|ORFUNC|RRTYPOP),	"or"	}, /* OR        (Rm | Rn)          */
	{ (NORFTYP|NORFUNC|RRTYPOP),	"nor"	}, /* NOR       (Rm | Rn)          */
	{ (XORFTYP|XORFUNC|RRTYPOP),	"xor"	}, /* EXCLUSIVE OR  (Rm ^ Rn)      */
	{ (LLSFTYP|LLSFUNC|RRTYPOP),	"lls"	}, /* LOGICAL LEFT SHIFT           */
	{ (LRSFTYP|LRSFUNC|RRTYPOP), 	"lrs"	}, /* LOGICAL RIGHT SHIFT          */
	{ (ARSFTYP|ARSFUNC|RRTYPOP), 	"ars"	}, /* ARITHMETIC RIGHT SHIFT       */
	{ (ELTFTYP|ELTFUNC|RRTYPOP), 	"elt"	}, /* SET IF LESS   SIGNED         */
	{ (ELTUFTYP|ELTUFUNC|RRTYPOP), 	"eltu"	}, /* SET IF LESS UNSIGNED         */
	{ (EEQFTYP|EEQFUNC|RRTYPOP),  	"eeq" 	}, /* SET IF EQUAL                 */
	{ (ENEQFTYP|ENEQFUNC|RRTYPOP), 	"eneq"	}  /* SET IF NOT EQUAL             */
       };
// AO_patch
//  {
//    { NOPF,     "nop"    },  /* NOP                          */
//    { ADDF,     "add"    },  /* Add                          */
//    { ADDUF,    "addu"   },  /* Add Unsigned                 */
//    { SUBF,     "sub"    },  /* SUB                          */
//    { SUBUF,    "subu"   },  /* Sub Unsigned                 */
//    { MULTF,    "mult"   },  /* MULTIPLY                     */
//    { MULTUF,   "multu"  },  /* MULTIPLY Unsigned            */
//    { DIVF,     "div"    },  /* DIVIDE                       */
//    { DIVUF,    "divu"   },  /* DIVIDE Unsigned              */
//    { ANDF,     "and"    },  /* AND                          */
//    { ORF,      "or"     },  /* OR                           */
//    { XORF,     "xor"    },  /* Exclusive OR                 */
//    { SLLF,     "sll"    },  /* SHIFT LEFT LOGICAL           */
//    { SRAF,     "sra"    },  /* SHIFT RIGHT ARITHMETIC       */
//    { SRLF,     "srl"    },  /* SHIFT RIGHT LOGICAL          */
//    { SEQF,     "seq"    },  /* Set if equal                 */
//    { SNEF,     "sne"    },  /* Set if not equal             */
//    { SLTF,     "slt"    },  /* Set if less                  */
//    { SGTF,     "sgt"    },  /* Set if greater               */
//    { SLEF,     "sle"    },  /* Set if less or equal         */
//    { SGEF,     "sge"    },  /* Set if greater or equal      */
//    { SEQUF,    "sequ"   },  /* Set if equal                 */
//    { SNEUF,    "sneu"   },  /* Set if not equal             */
//    { SLTUF,    "sltu"   },  /* Set if less                  */
//    { SGTUF,    "sgtu"   },  /* Set if greater               */
//    { SLEUF,    "sleu"   },  /* Set if less or equal         */
//    { SGEUF,    "sgeu"   },  /* Set if greater or equal      */
//    { MVTSF,    "mvts"   },  /* Move to special register     */
//    { MVFSF,    "mvfs"   },  /* Move from special register   */
//    { BSWAPF,   "bswap"  },  /* Byte swap ??                 */
//    { LUTF,     "lut"    }   /* ????????? ??                 */
//  };

  int brownie32_r_opcode_num = (sizeof brownie32_r_opcode) / (sizeof brownie32_r_opcode[0]);
  int idx;

  for (idx = 0; idx < r_opc_num; idx++)
    {
      if (r_opc[idx] != opc)
	continue;
      else
	break;
  }

  if (idx == r_opc_num)
    return NIL;

  for (idx = 0 ; idx < brownie32_r_opcode_num; idx++)
    if (brownie32_r_opcode[idx].func == func)
      {
	(*info->fprintf_func) (info->stream, "%s", brownie32_r_opcode[idx].name);
	if (func != NOPOP)
	  {
	    /* This is not a nop.  */
	    operand_deliminator (info, brownie32_r_opcode[idx].name);
	    (*info->fprintf_func) (info->stream, "r%d,", (int)rd_21);
	    (*info->fprintf_func) (info->stream, "r%d", (int)rs1_31);
            (*info->fprintf_func) (info->stream, ",r%d", (int)rs2_26);
	  }
	return (unsigned char) R_TYPE;
      }
  return (unsigned char) R_ERROR;
}

/* Process the memory read opcode.  */

static unsigned char
brownie32_load_type (info)
     struct disassemble_info* info;
{
  struct _load_opcode
  {
    unsigned long opcode;
    char *name;
  }
  brownie32_load_opcode[] =
    {
      { OPC(LBOP),     "lb" },  /* load byte sign extended.       */
      { OPC(LHOP),     "lh" },  /* load halfword sign extended.   */
      { OPC(LWOP),     "lw" }   /* load halfword sign extended.   */
    };
// AO_patch
//  {
//      { OPC(LHIOP),   "lhi" },  /* Load HI to register.           */
//      { OPC(LBOP),     "lb" },  /* load byte sign extended.       */
//      { OPC(LBUOP),   "lbu" },  /* load byte unsigned.            */
//      { OPC(LSBUOP),"ldstbu"},  /* load store byte unsigned.      */
//      { OPC(LHOP),     "lh" },  /* load halfword sign extended.   */
//      { OPC(LHUOP),   "lhu" },  /* load halfword unsigned.        */
//      { OPC(LSHUOP),"ldsthu"},  /* load store halfword unsigned.  */
//      { OPC(LWOP),     "lw" },  /* load word.                     */
//      { OPC(LSWOP), "ldstw" }   /* load store word.               */
//    };

  int brownie32_load_opcode_num =
    (sizeof brownie32_load_opcode) / (sizeof brownie32_load_opcode[0]);
  int idx;

  for (idx = 0 ; idx < brownie32_load_opcode_num; idx++)
    if (brownie32_load_opcode[idx].opcode == opc)
      {
         (*info->fprintf_func) (info->stream, "%s", brownie32_load_opcode[idx].name);
         operand_deliminator (info, brownie32_load_opcode[idx].name);
         (*info->fprintf_func) (info->stream, "r%d,", (int)rd_10);
         (*info->fprintf_func) (info->stream, "0x%04x[r%d]", (int)offset16, (int)rs1_15);
         return (unsigned char) ILD_TYPE;
       }
     return (unsigned char) NIL;
     }

/* Process the memory store opcode.  */

static unsigned char
brownie32_store_type (info)
     struct disassemble_info* info;
{
  struct _store_opcode
  {
    unsigned long opcode;
    char *name;
  }
  brownie32_store_opcode[] =
    {
      { OPC(SBOP),     "sb" },  /* store byte sign extended.       */
      { OPC(SHOP),     "sh" },  /* store halfword sign extended.   */
      { OPC(SWOP),     "sw" }   /* store halfword sign extended.   */
    };
// AO_patch
//    {
//      { OPC(SBOP),     "sb" },  /* Store byte.      */
//      { OPC(SHOP),     "sh" },  /* Store halfword.  */
//      { OPC(SWOP),     "sw" },  /* Store word.      */
//    };
  int brownie32_store_opcode_num =
    (sizeof brownie32_store_opcode) / (sizeof brownie32_store_opcode[0]);
  int idx;

  for (idx = 0 ; idx < brownie32_store_opcode_num; idx++)
    if (brownie32_store_opcode[idx].opcode == opc)
      {
         (*info->fprintf_func) (info->stream, "%s", brownie32_store_opcode[idx].name);
         operand_deliminator (info, brownie32_store_opcode[idx].name);
         (*info->fprintf_func) (info->stream, "0x%04x[r%d],", (int)offset16, (int)rd_10);
         (*info->fprintf_func) (info->stream, "r%d", (int)rs1_15);
	return (unsigned char) IST_TYPE;
      }
  return (unsigned char) NIL;
}

/* Process the Arithmetic and Logical RI-TYPE opcode.  */

static unsigned char
brownie32_ri_type (info)
     struct disassemble_info* info;
{
  struct _aluI_opcode
  {
    unsigned long opcode;
    char *name;
  }
  brownie32_aluI_opcode[] =
       {
           { OPC(ADDIOP),   "addi" },                    /* ADD  (Rm + Immediate)             */
           { OPC(SUBIOP),   "subi" },                    /* SUB  (Rm - Immediate)             */
           { OPC(ANDIOP),   "andi" },                    /* AND  (Rm & Immediate)             */
           { OPC(ORIOP) ,   "ori"  },                    /* OR   (Rm | Immediate)             */
           { OPC(XORIOP),   "xori" },                    /* EXCLUSIVE OR  (Rm ^ Immediate)    */
           { OPC(LLSIOP),   "llsi" },                    /* LOGICAL LEFT SHIFT Immediate      */
           { OPC(LRSIOP),   "lrsi" },                    /* LOGICAL LEFT SHIFT Immediate      */
           { OPC(ARSIOP),   "arsi" },                    /* ARITHMETIC RIGHT SHIFT Immediate  */
           { OPC(LSOIOP),   "lsoi" }                     /* 16bit LEFT SHIFT and OR Immediate */
       };
// AO_patch
//
//    {
//      { OPC(ADDIOP),   "addi"  },  /* Store byte.      */
//      { OPC(ADDUIOP),  "addui" },  /* Store halfword.  */
//      { OPC(SUBIOP),   "subi"  },  /* Store word.      */
//      { OPC(SUBUIOP),  "subui" },  /* Store word.      */
//      { OPC(ANDIOP),   "andi"  },  /* Store word.      */
//      { OPC(ORIOP),    "ori"   },  /* Store word.      */
//      { OPC(XORIOP),   "xori"  },  /* Store word.      */
//      { OPC(SLLIOP),   "slli"  },  /* Store word.      */
//      { OPC(SRAIOP),   "srai"  },  /* Store word.      */
//      { OPC(SRLIOP),   "srli"  },  /* Store word.      */
//      { OPC(SEQIOP),   "seqi"  },  /* Store word.      */
//      { OPC(SNEIOP),   "snei"  },  /* Store word.      */
//      { OPC(SLTIOP),   "slti"  },  /* Store word.      */
//      { OPC(SGTIOP),   "sgti"  },  /* Store word.      */
//      { OPC(SLEIOP),   "slei"  },  /* Store word.      */
//      { OPC(SGEIOP),   "sgei"  },  /* Store word.      */
//      { OPC(SEQUIOP),  "sequi" },  /* Store word.      */
//      { OPC(SNEUIOP),  "sneui" },  /* Store word.      */
//      { OPC(SLTUIOP),  "sltui" },  /* Store word.      */
//      { OPC(SGTUIOP),  "sgtui" },  /* Store word.      */
//      { OPC(SLEUIOP),  "sleui" },  /* Store word.      */
//      { OPC(SGEUIOP),  "sgeui" },  /* Store word.      */
//#if 0						       
//      { OPC(MVTSOP),   "mvts"  },  /* Store word.      */
//      { OPC(MVFSOP),   "mvfs"  },  /* Store word.      */
//#endif
//    };


  int brownie32_aluI_opcode_num =
    (sizeof brownie32_aluI_opcode) / (sizeof brownie32_aluI_opcode[0]);
  int idx;
  for (idx = 0 ; idx < brownie32_aluI_opcode_num; idx++)
    if (brownie32_aluI_opcode[idx].opcode == opc)
      {
	(*info->fprintf_func) (info->stream, "%s", brownie32_aluI_opcode[idx].name);
	operand_deliminator (info, brownie32_aluI_opcode[idx].name);
	(*info->fprintf_func) (info->stream, "r%d,", (int)rd_10);
	(*info->fprintf_func) (info->stream, "r%d,", (int)rs1_15);
	(*info->fprintf_func) (info->stream, "0x%04x", (int)imm16);
	return (unsigned char) IRI_TYPE;
      }

  return (unsigned char) NIL;
}

/* Process the branch instruction.  */

static unsigned char
brownie32_br_type (info)
     struct disassemble_info* info;
{
  struct _br_opcode
  {
    unsigned long opcode;
    char *name;
  }
  brownie32_br_opcode[] =
      {
        { OPC(BRZOP),   "brz" },
        { OPC(BRNZOP),  "brnz" }
      };
// AO_patch
//
//    {
//      { OPC(BEQOP), "beqz" }, /* Store byte.  */
//      { OPC(BNEOP), "bnez" }  /* Store halfword.  */
//    };

  int brownie32_br_opcode_num =
    (sizeof brownie32_br_opcode) / (sizeof brownie32_br_opcode[0]);
  int idx;

  for (idx = 0 ; idx < brownie32_br_opcode_num; idx++)
    if (brownie32_br_opcode[idx].opcode == opc)
      {
	if (offset16 & 0x00008000)
	  offset16 |= 0xFFFF0000;

	imm16 += (current_insn_addr + 4);
	(*info->fprintf_func) (info->stream, "%s", brownie32_br_opcode[idx].name);
	operand_deliminator (info, brownie32_br_opcode[idx].name);
	(*info->fprintf_func) (info->stream, "r%d,", (int)rs1_15);
	(*info->fprintf_func) (info->stream, "0x%08x", (int)offset16);

	return (unsigned char) IBR_TYPE;
      }

  return (unsigned char) NIL;
}

/* Process the jump instruction.  */

static unsigned char
brownie32_jmp_type (info)
     struct disassemble_info* info;
{
  struct _jmp_opcode
  {
    unsigned long opcode;
    char *name;
  }
  brownie32_jmp_opcode[] =
       {
           { OPC(JPOP),     "jp"   },                    /* RELATIVE JUMP                    */
           { OPC(JPLOP),    "jpl"  },                    /* SET NEXT ADDR AND RELATIVE JUMP  */
           { OPC(TRAPOP),   "trap" }                     /* OCCURE SOFTWARE INTERRUPT        */
       };
// AO_patch
//
//      { OPC(JOP),         "j" },  /* Store byte.      */
//      { OPC(JALOP),     "jal" },  /* Store halfword.  */
//      { OPC(BREAKOP), "break" },  /* Store halfword.  */
//      { OPC(TRAPOP),   "trap" },  /* Store halfword.  */
//      { OPC(RFEOP),     "rfe" }   /* Store halfword.  */
//    };

  int brownie32_jmp_opcode_num =
    (sizeof brownie32_jmp_opcode) / (sizeof brownie32_jmp_opcode[0]);
  int idx;

  for (idx = 0 ; idx < brownie32_jmp_opcode_num; idx++)
    if (brownie32_jmp_opcode[idx].opcode == opc)
      {
	if (offset26 & 0x02000000)
	  offset26 |= 0xFC000000;

	imm26 += (current_insn_addr + 4);

	(*info->fprintf_func) (info->stream, "%s", brownie32_jmp_opcode[idx].name);
	operand_deliminator (info, brownie32_jmp_opcode[idx].name);
	(*info->fprintf_func) (info->stream, "0x%08x", (int)offset26);

	return (unsigned char) IJ_TYPE;
      }

  return (unsigned char) NIL;
}

/* Process the jump register instruction.  */

static unsigned char
brownie32_jr_type (info)
     struct disassemble_info* info;
{
  struct _jr_opcode
  {
    unsigned long opcode;
    char *name;
  }
  brownie32_jr_opcode[] = 
       {
          { OPC(JPROP),    "jpr"  },                   /* ABSOLUTE JUMP                    */
          { OPC(JPRLOP),   "jprl" }                    /* SET NEXT ADDR AND ABSOLUTE JUMP  */
       };
// AO_patch
//
//    { OPC(JROP),   "jr"    },  /* Store byte.  */
//    { OPC(JALROP), "jalr"  }   /* Store halfword.  */
//  };


  int brownie32_jr_opcode_num =
    (sizeof brownie32_jr_opcode) / (sizeof brownie32_jr_opcode[0]);
  int idx;

  for (idx = 0 ; idx < brownie32_jr_opcode_num; idx++)
    if (brownie32_jr_opcode[idx].opcode == opc)
      {
	(*info->fprintf_func) (info->stream, "%s", brownie32_jr_opcode[idx].name);
	operand_deliminator (info, brownie32_jr_opcode[idx].name);
	(*info->fprintf_func) (info->stream, "r%d", (int)rs1_10);
	return (unsigned char) IJR_TYPE;
      }

  return (unsigned char) NIL;
}


/* Process the Special instruction.  */

static unsigned char
brownie32_sp_type (info)
     struct disassemble_info* info;
{
  struct _sp_opcode
  {
    unsigned long opcode;
    char *name;
  }
  brownie32_sp_opcode[] = 
       {
          { RETIOP&0x7F,   "reti" },                    /* RETI                   */
          { NOPOP&0x7F,    "nop"  }                     /* NOP                    */
       };

  int brownie32_sp_opcode_num =
    (sizeof brownie32_sp_opcode) / (sizeof brownie32_sp_opcode[0]);
  int idx;

  for (idx = 0 ; idx < brownie32_sp_opcode_num; idx++)
    if (brownie32_sp_opcode[idx].opcode == (func&0xFF) )
      {
	(*info->fprintf_func) (info->stream, "%s", brownie32_sp_opcode[idx].name);
	operand_deliminator (info, brownie32_sp_opcode[idx].name);
	return (unsigned char) ISP_TYPE;
      }

  return (unsigned char) NIL;
}

/* Process the extend to word instruction.  */

static unsigned char
brownie32_rt_type (info)
     struct disassemble_info* info;
{
  struct _rt_opcode
  {
    unsigned long opcode;
    char *name;
  }
  brownie32_rt_opcode[] = 
       {
          { EXBWOP&0xFFF,   "exbw" },                   /* EXBW                   */
          { EXHWOP&0xFFF,   "exhw" }                    /* NOP                    */
       };

  int brownie32_rt_opcode_num =
    (sizeof brownie32_rt_opcode) / (sizeof brownie32_rt_opcode[0]);
  int idx;

  for (idx = 0 ; idx < brownie32_rt_opcode_num; idx++)
    if (brownie32_rt_opcode[idx].opcode == (func&0xFFF) )
      {
	(*info->fprintf_func) (info->stream, "%s", brownie32_rt_opcode[idx].name);
	operand_deliminator (info, brownie32_rt_opcode[idx].name);
	(*info->fprintf_func) (info->stream, "r%d,", (int)rd_31);
	(*info->fprintf_func) (info->stream, "r%d", (int)rs1_26);
	return (unsigned char) IRT_TYPE;
      }

  return (unsigned char) NIL;
}

typedef unsigned char (* brownie32_insn) PARAMS ((struct disassemble_info *));

/* This is the main BROWNIE32 insn handling routine.  */

int
print_insn_brownie32 (memaddr, info)
     bfd_vma memaddr;
     struct disassemble_info* info;
{
  bfd_byte buffer[4];
  int insn_idx;
  unsigned long insn_word;
  unsigned char rtn_code;
  unsigned long brownie32_insn_type[] =
    {
      (unsigned long) brownie32_r_type,
      (unsigned long) brownie32_load_type,
      (unsigned long) brownie32_store_type,
      (unsigned long) brownie32_ri_type,
      (unsigned long) brownie32_br_type,
      (unsigned long) brownie32_jmp_type,
      (unsigned long) brownie32_jr_type,
      (unsigned long) brownie32_sp_type,
      (unsigned long) brownie32_rt_type,
      (unsigned long) NULL
  };
  int brownie32_insn_type_num = ((sizeof brownie32_insn_type) / (sizeof (unsigned long))) - 1;
  int status;

  /* Use instruction extention library. */
  {
    uint64_t  bits;
    insn_id_t insn_id;
    bfd_byte  membuff[4];
    int stat;

    stat = info->read_memory_func (memaddr, membuff, 4, info);
    if (stat)
    {
      info->memory_error_func (stat, memaddr, info);
      return -1;
    }

    bits = bfd_getb32 (membuff);

    insn_id = libccg_decode_insn (bits);
    if (0 <= (int)insn_id
        && (int)insn_id < E_INSN_ID_END)
    {
      static char disasm_buff[256];
      int len = libccg_get_insn_length (insn_id);
      libccg_disasm_insn (bits, &disasm_buff[0]);
	  (*info->fprintf_func) (info->stream, "%s", &disasm_buff[0]);
      return len;
    }
  }

  status=(*info->read_memory_func) (memaddr, (bfd_byte *) &buffer[0], 4, info);

  if (status != 0)
    {
      (*info->memory_error_func) (status, memaddr, info);
      return -1;
    }

  /* Now decode the insn    */
  insn_word = bfd_getb32 (buffer);
  opc  = brownie32_get_opcode (insn_word);
  rs1_31 = brownie32_get_rs1_31 (insn_word);
  rs1_26 = brownie32_get_rs1_26 (insn_word);
  rs1_15 = brownie32_get_rs1_15 (insn_word);
  rs1_10 = brownie32_get_rs1_10 (insn_word);
  rs2_26 = brownie32_get_rs2_26 (insn_word);
  rd_31  = brownie32_get_rd_31 (insn_word);
  rd_21  = brownie32_get_rd_21 (insn_word);
  rd_10  = brownie32_get_rd_10 (insn_word);
  imm16  = brownie32_get_imm16 (insn_word);
  offset16 = brownie32_get_offset16 (insn_word);
  offset26 = brownie32_get_offset26 (insn_word);
  func     = brownie32_get_func (insn_word);
  func21   = brownie32_get_func21 (insn_word);
// AO_patch
//  rs2  = brownie32_get_rs2 (insn_word);
//  rd   = brownie32_get_rdR (insn_word);
//  func = brownie32_get_func (insn_word);
//  imm16= brownie32_get_imm16 (insn_word);
//  imm26= brownie32_get_imm26 (insn_word);

#if 0
  printf ("print_insn_big_brownie32: opc = 0x%02x\n"
	  "                    rs1_31 = 0x%02x\n"
	  "                    rs2_26 = 0x%02x\n"
	  "                    rd_21  = 0x%02x\n"
	  "                    func  = 0x%08x\n",
	  opc, rs1_31, rs2_26, rd_21, func);
#endif

  /* Scan through all the insn type and print the insn out.  */
  rtn_code = 0;
  current_insn_addr = (unsigned long) memaddr;

  for (insn_idx = 0; brownie32_insn_type[insn_idx] != 0x0; insn_idx++)
    switch (((brownie32_insn) (brownie32_insn_type[insn_idx])) (info))
      {
	/* Found the correct opcode   */
      case R_TYPE:
      case ILD_TYPE:
      case IST_TYPE:
      case IRI_TYPE:
      case IBR_TYPE:
      case IJ_TYPE:
      case IJR_TYPE:
      case ISP_TYPE:
      case IRT_TYPE:
	return 4;

	/* Wrong insn type check next one. */
      default:
      case NIL:
	continue;

	/* All rest of the return code are not recongnized, treat it as error */
	/* we should never get here,  I hope! */
      case R_ERROR:
	return -1;
      }

  if (insn_idx ==  brownie32_insn_type_num)
    /* Well, does not recoganize this opcode.  */
    (*info->fprintf_func) (info->stream, "<%s>", "Unrecognized Opcode");

  return 4;
}
