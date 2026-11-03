; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_inter, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^[A-z\u{c1}-\u{ff}\s]+$") ((_ re.from_regex ecma2020 u) "^[\u{5c}u2015\u{5c}u3000\u{5c}u30A1-\u{5c}u30F6\u{5c}u30FB-\u{5c}u30FE]+$"))) (re.union (re.comp ((_ re.from_regex ecma2020 u) "^[A-z\u{c1}-\u{ff}\s]+$")) (re.comp ((_ re.from_regex ecma2020 u) "^[\u{5c}u2015\u{5c}u3000\u{5c}u30A1-\u{5c}u30F6\u{5c}u30FB-\u{5c}u30FE]+$"))))))
(check-sat)
