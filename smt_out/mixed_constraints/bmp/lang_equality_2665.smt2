; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: or_literal, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= ((_ re.from_regex ecma2020) "^[\u{5c}u4e00-\u{5c}u9fa5]{2,3}$") ((_ re.from_regex ecma2020) "(?:^[\u{5c}u4e00-\u{5c}u9fa5]{2,3}$)|\/embe"))))
(check-sat)
