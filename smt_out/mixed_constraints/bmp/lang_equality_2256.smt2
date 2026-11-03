; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_absorbs_inter, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union ((_ re.from_regex ecma2020) ".{42,}") (re.inter ((_ re.from_regex ecma2020) ".{42,}") ((_ re.from_regex ecma2020) "^[A-Za-z\u{5c}u00C0-\u{5c}u017F  -]*$"))) ((_ re.from_regex ecma2020) ".{42,}"))))
(check-sat)
