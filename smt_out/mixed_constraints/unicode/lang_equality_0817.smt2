; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: double_comp, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.comp (re.comp ((_ re.from_regex ecma2020 u) "^([0-9]{1,2}){1}(\/[0-9]{1,2}){0,1}(\/[0-9]{0,4}){0,1}$"))) ((_ re.from_regex ecma2020 u) "^([0-9]{1,2}){1}(\/[0-9]{1,2}){0,1}(\/[0-9]{0,4}){0,1}$")) (re.diff ((_ re.from_regex ecma2020 u) "^([0-9]{1,2}){1}(\/[0-9]{1,2}){0,1}(\/[0-9]{0,4}){0,1}$") (re.comp (re.comp ((_ re.from_regex ecma2020 u) "^([0-9]{1,2}){1}(\/[0-9]{1,2}){0,1}(\/[0-9]{0,4}){0,1}$")))))))
(check-sat)
