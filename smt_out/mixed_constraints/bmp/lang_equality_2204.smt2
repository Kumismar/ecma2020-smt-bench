; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: diff_is_inter_comp, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.diff ((_ re.from_regex ecma2020) "^[a-zA-Z]{3}\s[0-9]{2,4}\/[0-9]{2,4}\/[0-9]{4}$") ((_ re.from_regex ecma2020) "^[1]?[124]$")) (re.inter ((_ re.from_regex ecma2020) "^[a-zA-Z]{3}\s[0-9]{2,4}\/[0-9]{2,4}\/[0-9]{4}$") (re.comp ((_ re.from_regex ecma2020) "^[1]?[124]$")))) (re.diff (re.inter ((_ re.from_regex ecma2020) "^[a-zA-Z]{3}\s[0-9]{2,4}\/[0-9]{2,4}\/[0-9]{4}$") (re.comp ((_ re.from_regex ecma2020) "^[1]?[124]$"))) (re.diff ((_ re.from_regex ecma2020) "^[a-zA-Z]{3}\s[0-9]{2,4}\/[0-9]{2,4}\/[0-9]{4}$") ((_ re.from_regex ecma2020) "^[1]?[124]$"))))))
(check-sat)
