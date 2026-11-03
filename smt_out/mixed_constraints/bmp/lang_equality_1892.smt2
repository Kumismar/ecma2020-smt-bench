; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: or_literal, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= ((_ re.from_regex ecma2020) "^[A-Za-z0-9\u{5d0}-\u{5ea}_-].{2,50}$") ((_ re.from_regex ecma2020) "(?:^[A-Za-z0-9\u{5d0}-\u{5ea}_-].{2,50}$)|cont"))))
(check-sat)
