; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: preceded_by_literal, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020 u) "oogle\.(?:|^[a-zA-Z \u{f1}\u{d1}\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{fc}\u{e7}]*$|)") ((_ re.from_regex ecma2020 u) "|^[a-zA-Z \u{f1}\u{d1}\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{fc}\u{e7}]*$|")) ((_ re.from_regex ecma2020 u) "oogle\.(?:|^[a-zA-Z \u{f1}\u{d1}\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{fc}\u{e7}]*$|)")))
(check-sat)
