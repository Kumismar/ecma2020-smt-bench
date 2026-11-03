; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_absorbs_inter, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union ((_ re.from_regex ecma2020) "\d{3}-\d{4}|\d{7}") (re.inter ((_ re.from_regex ecma2020) "\d{3}-\d{4}|\d{7}") ((_ re.from_regex ecma2020) "^[\d-]*$"))) ((_ re.from_regex ecma2020) "\d{3}-\d{4}|\d{7}")))
(check-sat)
