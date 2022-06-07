(define_predicate "sym_ref_mem_operand"
  (match_code "mem")
{
  rtx t1 = XEXP(op, 0);
  if(GET_CODE(t1) == SYMBOL_REF)
    {
      return 1;
    }
  else
    return 0;
})

(define_predicate "signed_comparison_operator"
 (and
  (match_code "eq,ne,lt,le,ge,gt")
  (match_test "mode == VOIDmode || GET_MODE (op) == mode")))

;;
;;
;(define_predicate "symbol_ref_operand"
;  (match_code "symbol_ref"))
