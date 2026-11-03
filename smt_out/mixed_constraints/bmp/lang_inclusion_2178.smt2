; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: union_in_operand, inclusion does not hold, encoding: diff
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x (re.diff (re.union ((_ re.from_regex ecma2020) "^[0-9a-z\u{f1}\u{e1}\u{e9}\u{ed}\u{f3}\u{fa},\s\-]+$") ((_ re.from_regex ecma2020) "^\S.{1,23}\S$")) ((_ re.from_regex ecma2020) "^[0-9a-z\u{f1}\u{e1}\u{e9}\u{ed}\u{f3}\u{fa},\s\-]+$"))))
(check-sat)
