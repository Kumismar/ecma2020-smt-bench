; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_union, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.comp (re.union ((_ re.from_regex ecma2020 u) "\([0-9]{2}\)9[0-9]{4,6}-[0-9]{3,4}$") ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9 (),.&'-]+$"))) (re.inter (re.comp ((_ re.from_regex ecma2020 u) "\([0-9]{2}\)9[0-9]{4,6}-[0-9]{3,4}$")) (re.comp ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9 (),.&'-]+$"))))))
(check-sat)
