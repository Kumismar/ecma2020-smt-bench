; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_commutes, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union ((_ re.from_regex ecma2020) "^[\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\s]{3,}") ((_ re.from_regex ecma2020) "^(?:[a-zA-Z0-9_\-.\/+]*)(?:@|[a-zA-Z])(?:[a-zA-Z0-9_\-.\/]+)*$")) (re.union ((_ re.from_regex ecma2020) "^(?:[a-zA-Z0-9_\-.\/+]*)(?:@|[a-zA-Z])(?:[a-zA-Z0-9_\-.\/]+)*$") ((_ re.from_regex ecma2020) "^[\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\s]{3,}"))))
(check-sat)
