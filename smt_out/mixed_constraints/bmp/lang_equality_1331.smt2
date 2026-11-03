; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_absorbs_inter, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union ((_ re.from_regex ecma2020) "^\+?[\d\s\-\(\)]{8,}$") (re.inter ((_ re.from_regex ecma2020) "^\+?[\d\s\-\(\)]{8,}$") ((_ re.from_regex ecma2020) "^(0|86|17951)?(13[0-9]|14[0-9]|15[0-9]|16[0-9]|17[0-9]|18[0-9]|19[0-9])[0-9]{8}"))) ((_ re.from_regex ecma2020) "^\+?[\d\s\-\(\)]{8,}$"))))
(check-sat)
