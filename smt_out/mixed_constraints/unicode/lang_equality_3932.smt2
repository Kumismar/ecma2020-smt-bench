; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_absorbs_inter, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union ((_ re.from_regex ecma2020 u) "^[a-zA-Z\d\.#\-',\/&\s]+$") (re.inter ((_ re.from_regex ecma2020 u) "^[a-zA-Z\d\.#\-',\/&\s]+$") ((_ re.from_regex ecma2020 u) "^([\u{410}-\u{44f}A-z0-9_.-]{1,})@([\u{410}-\u{44f}A-z0-9_.-]{1,}).([\u{410}-\u{44f}A-z]{2,8})$"))) ((_ re.from_regex ecma2020 u) "^[a-zA-Z\d\.#\-',\/&\s]+$")))
(check-sat)
