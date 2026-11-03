; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_absorbs_union, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020) "[A-Za-z -]+$") (re.union ((_ re.from_regex ecma2020) "[A-Za-z -]+$") ((_ re.from_regex ecma2020) "^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"))) ((_ re.from_regex ecma2020) "[A-Za-z -]+$")))
(check-sat)
