; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: any_suffix, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= ((_ re.from_regex ecma2020 u) "^[+]?[\s./0-9]*[(]?[0-9]{1,4}[)]?[-\s./0-9]*$") ((_ re.from_regex ecma2020 u) "(?:^[+]?[\s./0-9]*[(]?[0-9]{1,4}[)]?[-\s./0-9]*$).*")))
(check-sat)
