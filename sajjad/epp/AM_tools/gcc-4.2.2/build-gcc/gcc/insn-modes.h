/* Generated automatically from machmode.def
   by genmodes.  */

#ifndef GCC_INSN_MODES_H
#define GCC_INSN_MODES_H

enum machine_mode
{
  VOIDmode,                /* machmode.def:149 */
  BLKmode,                 /* machmode.def:153 */
  CCmode,                  /* machmode.def:181 */
  BImode,                  /* machmode.def:156 */
  QImode,                  /* machmode.def:161 */
  HImode,                  /* machmode.def:162 */
  SImode,                  /* machmode.def:163 */
  DImode,                  /* machmode.def:164 */
  TImode,                  /* machmode.def:165 */
  SFmode,                  /* machmode.def:176 */
  DFmode,                  /* machmode.def:177 */
  SDmode,                  /* machmode.def:193 */
  DDmode,                  /* machmode.def:194 */
  TDmode,                  /* machmode.def:195 */
  CQImode,                 /* machmode.def:189 */
  CHImode,                 /* machmode.def:189 */
  CSImode,                 /* machmode.def:189 */
  CDImode,                 /* machmode.def:189 */
  CTImode,                 /* machmode.def:189 */
  SCmode,                  /* machmode.def:190 */
  DCmode,                  /* machmode.def:190 */
  MAX_MACHINE_MODE,

  MIN_MODE_RANDOM = VOIDmode,
  MAX_MODE_RANDOM = BLKmode,

  MIN_MODE_CC = CCmode,
  MAX_MODE_CC = CCmode,

  MIN_MODE_INT = QImode,
  MAX_MODE_INT = TImode,

  MIN_MODE_PARTIAL_INT = VOIDmode,
  MAX_MODE_PARTIAL_INT = VOIDmode,

  MIN_MODE_FLOAT = SFmode,
  MAX_MODE_FLOAT = DFmode,

  MIN_MODE_DECIMAL_FLOAT = SDmode,
  MAX_MODE_DECIMAL_FLOAT = TDmode,

  MIN_MODE_COMPLEX_INT = CQImode,
  MAX_MODE_COMPLEX_INT = CTImode,

  MIN_MODE_COMPLEX_FLOAT = SCmode,
  MAX_MODE_COMPLEX_FLOAT = DCmode,

  MIN_MODE_VECTOR_INT = VOIDmode,
  MAX_MODE_VECTOR_INT = VOIDmode,

  MIN_MODE_VECTOR_FLOAT = VOIDmode,
  MAX_MODE_VECTOR_FLOAT = VOIDmode,

  NUM_MACHINE_MODES = MAX_MACHINE_MODE
};

#define CONST_MODE_SIZE const
#define CONST_MODE_BASE_ALIGN const

#endif /* insn-modes.h */
