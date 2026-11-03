; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: unrelated, languages differ, encoding: equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= ((_ re.from_regex ecma2020) "[\w\u{e4}\u{f6}\u{fc}._%+-]+@[\w-]+\.[A-Za-z]{2,20}$") ((_ re.from_regex ecma2020) "^((?=.*\d)(?=.*[a-zA-Z]).{8,})$")))
(check-sat)
