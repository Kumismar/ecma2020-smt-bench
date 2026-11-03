; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: operand_in_union, inclusion holds, encoding: diff
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^\+[0-9]\s\([0-9]{3}\)\s[0-9]{3}[-][0-9]{2}[-][0-9]{2}$") (re.union ((_ re.from_regex ecma2020) "^\+[0-9]\s\([0-9]{3}\)\s[0-9]{3}[-][0-9]{2}[-][0-9]{2}$") ((_ re.from_regex ecma2020) "^(?:\s*\d){10}$")))))
(check-sat)
