; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: literal_or, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= ((_ re.from_regex ecma2020) "^\([0-9]{4}\)\s[0-9]{3}\s[0-9]{2}\s[0-9]{2}$") ((_ re.from_regex ecma2020) "gs|(?:^\([0-9]{4}\)\s[0-9]{3}\s[0-9]{2}\s[0-9]{2}$)"))))
(check-sat)
