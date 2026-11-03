; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_union, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "^(\+0?1\s)?\(?[2-9]{1}[0-9]{2}\)?[\s.-]?\d{3}[\s.-]?\d{4}$") ((_ re.from_regex ecma2020) "^\(?([+]31|0031|[+]32|0032|[+]49|0049|0)-?[0-9](\s?|-)([0-9]\s{0,3}){8}$")))) (str.in_re x (re.inter (re.comp ((_ re.from_regex ecma2020) "^(\+0?1\s)?\(?[2-9]{1}[0-9]{2}\)?[\s.-]?\d{3}[\s.-]?\d{4}$")) (re.comp ((_ re.from_regex ecma2020) "^\(?([+]31|0031|[+]32|0032|[+]49|0049|0)-?[0-9](\s?|-)([0-9]\s{0,3}){8}$")))))))
(check-sat)
