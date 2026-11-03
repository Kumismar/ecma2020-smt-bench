; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: inter_in_operand, inclusion holds, encoding: union_disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union (re.inter ((_ re.from_regex ecma2020 u) "^(27|267|266|264|268|260|263)[0-9]{9,15}") ((_ re.from_regex ecma2020 u) "^[0-9]{10,20}")) ((_ re.from_regex ecma2020 u) "^(27|267|266|264|268|260|263)[0-9]{9,15}")) ((_ re.from_regex ecma2020 u) "^(27|267|266|264|268|260|263)[0-9]{9,15}"))))
(check-sat)
