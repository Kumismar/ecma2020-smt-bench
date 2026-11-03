; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_inter, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^[0-9]{1,5}([A-Z]{1})?$") ((_ re.from_regex ecma2020 u) "([\D]{2}|[\d]{2})-{1}[\d]{3,4}"))) (re.union (re.comp ((_ re.from_regex ecma2020 u) "^[0-9]{1,5}([A-Z]{1})?$")) (re.comp ((_ re.from_regex ecma2020 u) "([\D]{2}|[\d]{2})-{1}[\d]{3,4}"))))))
(check-sat)
