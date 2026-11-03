; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: any_prefix, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= ((_ re.from_regex ecma2020) "^([a-zA-Z]{1}[a-zA-Z0-9\._#\-]{0,100}@([a-zA-Z0-9\-_\.]){1,100}\.[a-zA-Z]{2,}){1}$") ((_ re.from_regex ecma2020) ".*(?:^([a-zA-Z]{1}[a-zA-Z0-9\._#\-]{0,100}@([a-zA-Z0-9\-_\.]){1,100}\.[a-zA-Z]{2,}){1}$)")))
(check-sat)
