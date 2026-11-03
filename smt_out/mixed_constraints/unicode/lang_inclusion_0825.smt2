; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: literal_after_lookahead, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020 u) "(?=[A-Za-z\u{5c}u00C0-\u{5c}u00D6\u{5c}u00D8-\u{5c}u00F8\u{5c}u00D8-\u{5c}u01BF\u{5c}u01C4-\u{5c}u0280|\s|']+)tes") ((_ re.from_regex ecma2020 u) "[A-Za-z\u{5c}u00C0-\u{5c}u00D6\u{5c}u00D8-\u{5c}u00F8\u{5c}u00D8-\u{5c}u01BF\u{5c}u01C4-\u{5c}u0280|\s|']+")) ((_ re.from_regex ecma2020 u) "(?=[A-Za-z\u{5c}u00C0-\u{5c}u00D6\u{5c}u00D8-\u{5c}u00F8\u{5c}u00D8-\u{5c}u01BF\u{5c}u01C4-\u{5c}u0280|\s|']+)tes")))
(check-sat)
