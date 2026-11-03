; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_union, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.comp (re.union ((_ re.from_regex ecma2020 u) "[1-9][0-9]{9}") ((_ re.from_regex ecma2020 u) "((00|\+)\d{2})?[\.\-\s]?(\d){1,3}[\/\.\-\s]?(\d){6,8}"))) (re.inter (re.comp ((_ re.from_regex ecma2020 u) "[1-9][0-9]{9}")) (re.comp ((_ re.from_regex ecma2020 u) "((00|\+)\d{2})?[\.\-\s]?(\d){1,3}[\/\.\-\s]?(\d){6,8}")))))
(check-sat)
