; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: or_literal, inclusion holds, encoding: union_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union ((_ re.from_regex ecma2020) ".{4,100}") ((_ re.from_regex ecma2020) "(?:.{4,100})|rt\u{1d400}\(1\)")) ((_ re.from_regex ecma2020) "(?:.{4,100})|rt\u{1d400}\(1\)")))
(check-sat)
