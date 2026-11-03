; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_commutes, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union ((_ re.from_regex ecma2020 u) "^[+][7] [(][\d]{3}[)] \d{3}-\d{2}-\d{2}\d{0,1}$") ((_ re.from_regex ecma2020 u) "^([0-9]{16}|\*{12}[0-9]{4})$")) (re.union ((_ re.from_regex ecma2020 u) "^([0-9]{16}|\*{12}[0-9]{4})$") ((_ re.from_regex ecma2020 u) "^[+][7] [(][\d]{3}[)] \d{3}-\d{2}-\d{2}\d{0,1}$"))))
(check-sat)
