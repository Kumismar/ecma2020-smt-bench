; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_commutes, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.inter ((_ re.from_regex ecma2020 u) "^(^(\d{3,4}-)?\d{7,8})$|(13[0-9]{9})|(400[0-9]{7})$") ((_ re.from_regex ecma2020 u) "^[\u{3041}-\u{3093} \u{3000}]+$")) (re.inter ((_ re.from_regex ecma2020 u) "^[\u{3041}-\u{3093} \u{3000}]+$") ((_ re.from_regex ecma2020 u) "^(^(\d{3,4}-)?\d{7,8})$|(13[0-9]{9})|(400[0-9]{7})$")))))
(check-sat)
