; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_commutes, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union ((_ re.from_regex ecma2020 u) "^[0-9]{3,5}$") ((_ re.from_regex ecma2020 u) "^(^(\d{3,4}-)?\d{7,8})$|(13[0-9]{9})|(400[0-9]{7})$")) (re.union ((_ re.from_regex ecma2020 u) "^(^(\d{3,4}-)?\d{7,8})$|(13[0-9]{9})|(400[0-9]{7})$") ((_ re.from_regex ecma2020 u) "^[0-9]{3,5}$")))))
(check-sat)
