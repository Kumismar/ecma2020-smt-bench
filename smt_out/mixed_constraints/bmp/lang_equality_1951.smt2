; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: diff_is_inter_comp, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.diff ((_ re.from_regex ecma2020) "^[7|8|9]\d{9}$") ((_ re.from_regex ecma2020) "^[0-9]{2}.[0-9A-Za-z]{4,8}$")) (re.inter ((_ re.from_regex ecma2020) "^[7|8|9]\d{9}$") (re.comp ((_ re.from_regex ecma2020) "^[0-9]{2}.[0-9A-Za-z]{4,8}$"))))))
(check-sat)
