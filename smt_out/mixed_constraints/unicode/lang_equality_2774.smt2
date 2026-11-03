; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: any_suffix, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= ((_ re.from_regex ecma2020 u) "(?:[A-Za-z0-9._%+-]+@[a-z0-9.-]+\.[A-Za-z]{2,}$).*") ((_ re.from_regex ecma2020 u) "[A-Za-z0-9._%+-]+@[a-z0-9.-]+\.[A-Za-z]{2,}$"))))
(check-sat)
