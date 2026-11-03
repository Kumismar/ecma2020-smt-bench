; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: literal_after_lookahead, inclusion does not hold, encoding: union_disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= (re.union ((_ re.from_regex ecma2020) "[A-Za-z0-9_]{6,12}") ((_ re.from_regex ecma2020) "(?=[A-Za-z0-9_]{6,12})dex")) ((_ re.from_regex ecma2020) "(?=[A-Za-z0-9_]{6,12})dex"))))
(check-sat)
