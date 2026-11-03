; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_absorbs_union, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020 u) "^EP\d{3,7}|IA\d{3,7}$") (re.union ((_ re.from_regex ecma2020 u) "^EP\d{3,7}|IA\d{3,7}$") ((_ re.from_regex ecma2020 u) "([Nn][Ll])([0-9]{9})([Bb])([0-9]{2})"))) ((_ re.from_regex ecma2020 u) "^EP\d{3,7}|IA\d{3,7}$")))
(check-sat)
