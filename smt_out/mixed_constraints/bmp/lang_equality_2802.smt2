; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_inter, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020) "^(0|86|17951)?(13[0-9]|15[012356789]|166|17[35678]|18[0-9]|14[57]|19[8])[0-9]{8}$") ((_ re.from_regex ecma2020) "[0-9-+\s()]{8,18}")))) (str.in_re x (re.union (re.comp ((_ re.from_regex ecma2020) "^(0|86|17951)?(13[0-9]|15[012356789]|166|17[35678]|18[0-9]|14[57]|19[8])[0-9]{8}$")) (re.comp ((_ re.from_regex ecma2020) "[0-9-+\s()]{8,18}")))))))
(check-sat)
