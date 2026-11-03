; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: optional_literal, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020) "(?:[A-Za-z0-9]{4,4})(?:\/b\u{1f600}lo)?") ((_ re.from_regex ecma2020) "[A-Za-z0-9]{4,4}")) ((_ re.from_regex ecma2020) "(?:[A-Za-z0-9]{4,4})(?:\/b\u{1f600}lo)?")))
(check-sat)
