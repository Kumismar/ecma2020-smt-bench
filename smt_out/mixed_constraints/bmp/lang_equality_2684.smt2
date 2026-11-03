; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: or_literal, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= ((_ re.from_regex ecma2020) "^[0-9a-zA-Z\._-]*@[a-zA-Z]*\.[a-zA-Z]{2,}(\.[a-zA-z]{2})?$") ((_ re.from_regex ecma2020) "(?:^[0-9a-zA-Z\._-]*@[a-zA-Z]*\.[a-zA-Z]{2,}(\.[a-zA-z]{2})?$)|bed "))))
(check-sat)
