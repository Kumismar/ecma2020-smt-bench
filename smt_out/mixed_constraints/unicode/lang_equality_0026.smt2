; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_commutes, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020 u) "^(?=.*?[0][1-9])\d{3,5}(\.\d+)?$") ((_ re.from_regex ecma2020 u) "^(?:(?=.*[a-z])(?:(?=.*[A-Z])(?=.*[\d\W])|(?=.*\W)(?=.*\d))|(?=.*\W)(?=.*[A-Z])(?=.*\d)).{8,}$")) (re.inter ((_ re.from_regex ecma2020 u) "^(?:(?=.*[a-z])(?:(?=.*[A-Z])(?=.*[\d\W])|(?=.*\W)(?=.*\d))|(?=.*\W)(?=.*[A-Z])(?=.*\d)).{8,}$") ((_ re.from_regex ecma2020 u) "^(?=.*?[0][1-9])\d{3,5}(\.\d+)?$"))))
(check-sat)
