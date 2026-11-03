; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: double_comp, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.comp (re.comp ((_ re.from_regex ecma2020 u) "^[A-Za-z]{6}[A-Za-z0-9]{2}[A-Za-z][A-Za-z0-9]{2}[A-Za-z][A-Za-z0-9]{3}[A-Za-z]$"))) ((_ re.from_regex ecma2020 u) "^[A-Za-z]{6}[A-Za-z0-9]{2}[A-Za-z][A-Za-z0-9]{2}[A-Za-z][A-Za-z0-9]{3}[A-Za-z]$")) (re.diff ((_ re.from_regex ecma2020 u) "^[A-Za-z]{6}[A-Za-z0-9]{2}[A-Za-z][A-Za-z0-9]{2}[A-Za-z][A-Za-z0-9]{3}[A-Za-z]$") (re.comp (re.comp ((_ re.from_regex ecma2020 u) "^[A-Za-z]{6}[A-Za-z0-9]{2}[A-Za-z][A-Za-z0-9]{2}[A-Za-z][A-Za-z0-9]{3}[A-Za-z]$")))))))
(check-sat)
