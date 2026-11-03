; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_commutes, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020) "^[0-9A-Za-z_\-]+$") ((_ re.from_regex ecma2020) "^[\w\s\x22\x27\u{e0}\u{f2}\u{e8}\u{ec}\u{e9}@\.-]+$")) (re.inter ((_ re.from_regex ecma2020) "^[\w\s\x22\x27\u{e0}\u{f2}\u{e8}\u{ec}\u{e9}@\.-]+$") ((_ re.from_regex ecma2020) "^[0-9A-Za-z_\-]+$"))))
(check-sat)
