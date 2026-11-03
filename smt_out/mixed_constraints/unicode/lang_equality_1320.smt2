; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: literal_or, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= ((_ re.from_regex ecma2020 u) "orep|(?:^[0-9]+$|^[0-9]{4}[a-zA-Z]{3}$|^(([a-zA-Z]{1,2}[0-9]{4}[a-zA-Z]{1,2})|([a-zA-Z]{1,2}[1-9]?[1-9][0-9]{4}))$|^C[a-zA-Z]{3}$|[S|P|H|T|s|p|h|t]{1}[0-9]{4}[a-zA-Z]{3}$)") ((_ re.from_regex ecma2020 u) "^[0-9]+$|^[0-9]{4}[a-zA-Z]{3}$|^(([a-zA-Z]{1,2}[0-9]{4}[a-zA-Z]{1,2})|([a-zA-Z]{1,2}[1-9]?[1-9][0-9]{4}))$|^C[a-zA-Z]{3}$|[S|P|H|T|s|p|h|t]{1}[0-9]{4}[a-zA-Z]{3}$"))))
(check-sat)
