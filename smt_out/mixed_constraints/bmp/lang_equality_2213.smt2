; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: optional_literal, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= ((_ re.from_regex ecma2020) "^[a-zA-Z]{3,4}(\d{6})((\D|\d){8})?$") ((_ re.from_regex ecma2020) "(?:^[a-zA-Z]{3,4}(\d{6})((\D|\d){8})?$)(?:ut=""al)?")))
(check-sat)
