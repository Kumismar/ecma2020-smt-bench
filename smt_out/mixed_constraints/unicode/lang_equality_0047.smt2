; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: or_literal, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= ((_ re.from_regex ecma2020 u) "^(19[0-9]{2}|20[01][0-9])-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[01])$") ((_ re.from_regex ecma2020 u) "(?:^(19[0-9]{2}|20[01][0-9])-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[01])$)|<op"))))
(check-sat)
