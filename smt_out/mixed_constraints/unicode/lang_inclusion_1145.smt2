; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: inter_in_operand, inclusion holds, encoding: diff
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.diff (re.inter ((_ re.from_regex ecma2020 u) "^05[0-9]{2}\s{1}[0-9]{3}\s{1}[0-9]{2}\s{1}[0-9]{2}$") ((_ re.from_regex ecma2020 u) "^[\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\u{456}'\u{454}\u{439}\u{404}\s]+$")) ((_ re.from_regex ecma2020 u) "^05[0-9]{2}\s{1}[0-9]{3}\s{1}[0-9]{2}\s{1}[0-9]{2}$"))))
(check-sat)
