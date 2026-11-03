; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: unrelated, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= ((_ re.from_regex ecma2020) "^\S.*([\s]).*\S$") ((_ re.from_regex ecma2020) "^[\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\d\s]+$"))))
(check-sat)
