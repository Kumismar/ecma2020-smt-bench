; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: optional_literal, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= ((_ re.from_regex ecma2020 u) "^[\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}A-Za-z\s]{2,50}$") ((_ re.from_regex ecma2020 u) "(?:^[\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}A-Za-z\s]{2,50}$)(?:o><sc)?")))
(check-sat)
