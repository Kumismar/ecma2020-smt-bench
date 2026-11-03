; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_inter, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.comp (re.inter ((_ re.from_regex ecma2020 u) "[\u{ff71}-\u{ff9d}|\u{30a1}-\u{30f3}|\u{3000}| ]+$") ((_ re.from_regex ecma2020 u) "[-._a-z0-9]+@[^-][-.a-z0-9]*[^-]\.[a-z]+"))) (re.union (re.comp ((_ re.from_regex ecma2020 u) "[\u{ff71}-\u{ff9d}|\u{30a1}-\u{30f3}|\u{3000}| ]+$")) (re.comp ((_ re.from_regex ecma2020 u) "[-._a-z0-9]+@[^-][-.a-z0-9]*[^-]\.[a-z]+"))))))
(check-sat)
