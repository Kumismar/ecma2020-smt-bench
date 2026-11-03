; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: optional_literal, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= ((_ re.from_regex ecma2020) "(?:^(?!.*gmail|.*outlook|.*yahoo|.*hotmail|.*lexter).*$)(?:s"" on)?") ((_ re.from_regex ecma2020) "^(?!.*gmail|.*outlook|.*yahoo|.*hotmail|.*lexter).*$")))
(check-sat)
