; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_commutes, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union ((_ re.from_regex ecma2020) "^[a-zA-Z\u{e9}\u{e0}\u{e8}\u{e7}\u{f9}\u{fc}\u{f4}\u{f6} .-]*$") ((_ re.from_regex ecma2020) "^[a-zA-Z0-9]{1,5}")) (re.union ((_ re.from_regex ecma2020) "^[a-zA-Z0-9]{1,5}") ((_ re.from_regex ecma2020) "^[a-zA-Z\u{e9}\u{e0}\u{e8}\u{e7}\u{f9}\u{fc}\u{f4}\u{f6} .-]*$"))))
(check-sat)
