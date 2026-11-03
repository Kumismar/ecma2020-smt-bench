; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_absorbs_union, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020) "^[A-Za-z-\s]+$") (re.union ((_ re.from_regex ecma2020) "^[A-Za-z-\s]+$") ((_ re.from_regex ecma2020) "[A-z0-9]{6,20}"))) ((_ re.from_regex ecma2020) "^[A-Za-z-\s]+$")))
(check-sat)
