; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: diff_is_inter_comp, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^(\+36\s)|^(\+36\s20\s/\s\d{3}-\d{4})|(\+36\s30\s/\s\d{3}-\d{4})|(\+36\s31\s/\s\d{3}-\d{4})|(\+36\s70\s/\s\d{3}-\d{4})|(\+36\s1\s/\s\d{3}-\d{4})|(\+36\s((?!20)(?!30)(?!31)(?!70)\d{2})\s/\s\d{3}-\d{3})$") ((_ re.from_regex ecma2020) "^([a-zA-Z0-9]{8,})$"))) (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^(\+36\s)|^(\+36\s20\s/\s\d{3}-\d{4})|(\+36\s30\s/\s\d{3}-\d{4})|(\+36\s31\s/\s\d{3}-\d{4})|(\+36\s70\s/\s\d{3}-\d{4})|(\+36\s1\s/\s\d{3}-\d{4})|(\+36\s((?!20)(?!30)(?!31)(?!70)\d{2})\s/\s\d{3}-\d{3})$") (re.comp ((_ re.from_regex ecma2020) "^([a-zA-Z0-9]{8,})$")))))))
(check-sat)
