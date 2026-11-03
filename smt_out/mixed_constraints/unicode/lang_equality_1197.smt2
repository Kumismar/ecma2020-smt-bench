; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: unrelated, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= ((_ re.from_regex ecma2020 u) "^(\+\d{1,2}\s)?\(?\d{1,4}\)?[\s.-]?\d{2,4}[\s.-]?(\d{1}[\s.-]?)*$") ((_ re.from_regex ecma2020 u) "^(?!.*gmail|.*outlook|.*yahoo|.*hotmail).*$"))))
(check-sat)
