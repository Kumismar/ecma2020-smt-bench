; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_commutes, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union ((_ re.from_regex ecma2020) "^(^(\d{3,4}-)?\d{7,8})$|(13[0-9]{9})|(400[0-9]{7})$") ((_ re.from_regex ecma2020) "[0-9a-z_]+")) (re.union ((_ re.from_regex ecma2020) "[0-9a-z_]+") ((_ re.from_regex ecma2020) "^(^(\d{3,4}-)?\d{7,8})$|(13[0-9]{9})|(400[0-9]{7})$"))))
(check-sat)
