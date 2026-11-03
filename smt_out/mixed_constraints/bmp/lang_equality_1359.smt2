; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_vs_operand, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= (re.union ((_ re.from_regex ecma2020) "\u{7487}\u{760b}\u{7ded}\u{934f}\u{30e5}\u{53e7}\u{95bf}\u{e1bc}\u{74e7}") ((_ re.from_regex ecma2020) "(^$|[0-9]+)")) ((_ re.from_regex ecma2020) "\u{7487}\u{760b}\u{7ded}\u{934f}\u{30e5}\u{53e7}\u{95bf}\u{e1bc}\u{74e7}"))))
(check-sat)
