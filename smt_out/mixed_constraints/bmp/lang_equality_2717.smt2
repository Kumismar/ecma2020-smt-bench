; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_union, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.comp (re.union ((_ re.from_regex ecma2020) "[a-zA-Z]{6}[0-9]{2}[a-zA-Z][0-9]{2}[a-zA-Z][0-9]{3}[a-zA-Z]") ((_ re.from_regex ecma2020) "[0-9a-zA-Z]{11,16}"))) (re.inter (re.comp ((_ re.from_regex ecma2020) "[a-zA-Z]{6}[0-9]{2}[a-zA-Z][0-9]{2}[a-zA-Z][0-9]{3}[a-zA-Z]")) (re.comp ((_ re.from_regex ecma2020) "[0-9a-zA-Z]{11,16}")))))
(check-sat)
