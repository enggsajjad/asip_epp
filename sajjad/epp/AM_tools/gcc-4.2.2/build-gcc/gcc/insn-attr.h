/* Generated automatically by the program `genattr'
   from the machine description file `md'.  */

#ifndef GCC_INSN_ATTR_H
#define GCC_INSN_ATTR_H

#define HAVE_ATTR_alternative
#define get_attr_alternative(insn) which_alternative
#define HAVE_ATTR_type
enum attr_type {TYPE_UNKNOWN, TYPE_LOAD, TYPE_STORE, TYPE_MOVE, TYPE_ALU, TYPE_BRANCH, TYPE_JUMP, TYPE_FP, TYPE_MULTI};
extern enum attr_type get_attr_type (rtx);

#define HAVE_ATTR_mode
enum attr_mode {MODE_UNKNOWN, MODE_NONE, MODE_QI, MODE_HI, MODE_SI, MODE_DI, MODE_SF, MODE_DF};
extern enum attr_mode get_attr_mode (rtx);

#define HAVE_ATTR_length
extern int get_attr_length (rtx);
extern void shorten_branches (rtx);
extern int insn_default_length (rtx);
extern int insn_min_length (rtx);
extern int insn_variable_length_p (rtx);
extern int insn_current_length (rtx);

#include "insn-addr.h"

#define HAVE_ATTR_insn_mnemonic
enum attr_insn_mnemonic {INSN_MNEMONIC_UNKNOWN};
extern enum attr_insn_mnemonic get_attr_insn_mnemonic (rtx);

#define DELAY_SLOTS
extern int num_delay_slots (rtx);
extern int eligible_for_delay (rtx, int, rtx, int);

extern int const_num_delay_slots (rtx);

typedef void *state_t;


#define ATTR_FLAG_forward	0x1
#define ATTR_FLAG_backward	0x2
#define ATTR_FLAG_likely	0x4
#define ATTR_FLAG_very_likely	0x8
#define ATTR_FLAG_unlikely	0x10
#define ATTR_FLAG_very_unlikely	0x20

#endif /* GCC_INSN_ATTR_H */
