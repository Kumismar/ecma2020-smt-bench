; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_union, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.comp (re.union ((_ re.from_regex ecma2020) "\b[aA-zZ]{3}[0-9]{2}[aA-zZ0-9]{1}\b") ((_ re.from_regex ecma2020) "^[\w]{1,}[\w.+-]{0,}@[\w-]{2,}([.][a-zA-Z]{2,}|[.][\w-]{2,}[.][a-zA-Z]{2,})$"))) (re.inter (re.comp ((_ re.from_regex ecma2020) "\b[aA-zZ]{3}[0-9]{2}[aA-zZ0-9]{1}\b")) (re.comp ((_ re.from_regex ecma2020) "^[\w]{1,}[\w.+-]{0,}@[\w-]{2,}([.][a-zA-Z]{2,}|[.][\w-]{2,}[.][a-zA-Z]{2,})$")))))
(check-sat)
