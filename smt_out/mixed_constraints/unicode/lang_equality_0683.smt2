; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: literal_or, languages differ, encoding: equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= ((_ re.from_regex ecma2020 u) "^[a-zA-Z][a-zA-Z- ]{1,49}$") ((_ re.from_regex ecma2020 u) "sc|(?:^[a-zA-Z][a-zA-Z- ]{1,49}$)")))
(check-sat)
