; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_commutes, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union ((_ re.from_regex ecma2020) "^(([A-Z]|[a-z]|\s){1})(([A-Z]|[a-z]|[ ]){2,3})([0-9]{6})((([A-Z]|[a-z]|[0-9]){3}))") ((_ re.from_regex ecma2020) "^[\w.-]+@[\w.-]+\.[\w.-]{2,}$")) (re.union ((_ re.from_regex ecma2020) "^[\w.-]+@[\w.-]+\.[\w.-]{2,}$") ((_ re.from_regex ecma2020) "^(([A-Z]|[a-z]|\s){1})(([A-Z]|[a-z]|[ ]){2,3})([0-9]{6})((([A-Z]|[a-z]|[0-9]){3}))")))))
(check-sat)
