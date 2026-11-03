; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_commutes, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union ((_ re.from_regex ecma2020 u) "^([a-zA-Z0-9_.-])+@(([a-zA-Z0-9-])+.)+([a-zA-Z0-9]{2,4})+$") ((_ re.from_regex ecma2020 u) "^([A-Za-z\u{5c}u00C0-\u{5c}u00FF]\s?)*$")) (re.union ((_ re.from_regex ecma2020 u) "^([A-Za-z\u{5c}u00C0-\u{5c}u00FF]\s?)*$") ((_ re.from_regex ecma2020 u) "^([a-zA-Z0-9_.-])+@(([a-zA-Z0-9-])+.)+([a-zA-Z0-9]{2,4})+$"))))
(check-sat)
