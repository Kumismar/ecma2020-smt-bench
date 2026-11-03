; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: repeated, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= ((_ re.from_regex ecma2020) "[A-Za-z0-9]{0,6}") ((_ re.from_regex ecma2020) "(?:[A-Za-z0-9]{0,6})+"))))
(check-sat)
