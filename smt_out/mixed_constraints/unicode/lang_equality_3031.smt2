; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_inter, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.comp (re.inter ((_ re.from_regex ecma2020 u) "[a-zA-Z\-' ]{2,}") ((_ re.from_regex ecma2020 u) "^\s*[a-zA-Z\u{e1}-\u{17e}\u{c1}-\u{17d}]+\s*$"))) (re.union (re.comp ((_ re.from_regex ecma2020 u) "[a-zA-Z\-' ]{2,}")) (re.comp ((_ re.from_regex ecma2020 u) "^\s*[a-zA-Z\u{e1}-\u{17e}\u{c1}-\u{17d}]+\s*$"))))))
(check-sat)
