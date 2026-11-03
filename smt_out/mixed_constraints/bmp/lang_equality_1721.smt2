; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: diff_is_inter_comp, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.diff ((_ re.from_regex ecma2020) "[a-z0-9._%+-]+@[a-z0-9.-]+.[a-z]{2,63}$") ((_ re.from_regex ecma2020) "^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$")) (re.inter ((_ re.from_regex ecma2020) "[a-z0-9._%+-]+@[a-z0-9.-]+.[a-z]{2,63}$") (re.comp ((_ re.from_regex ecma2020) "^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$"))))))
(check-sat)
