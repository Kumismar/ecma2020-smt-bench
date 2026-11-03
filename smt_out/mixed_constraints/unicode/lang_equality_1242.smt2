; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_commutes, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.union ((_ re.from_regex ecma2020 u) "^[a-zA-Z][- a-zA-Z]*[- ]{1}[- a-zA-Z]*[a-zA-Z]$") ((_ re.from_regex ecma2020 u) "(^[aAbB][a-jA-J]\d{5}$|^[aAbB][a-jA-J]\d{5}\D{1}\d{1}$)")) (re.union ((_ re.from_regex ecma2020 u) "(^[aAbB][a-jA-J]\d{5}$|^[aAbB][a-jA-J]\d{5}\D{1}\d{1}$)") ((_ re.from_regex ecma2020 u) "^[a-zA-Z][- a-zA-Z]*[- ]{1}[- a-zA-Z]*[a-zA-Z]$"))) (re.diff (re.union ((_ re.from_regex ecma2020 u) "(^[aAbB][a-jA-J]\d{5}$|^[aAbB][a-jA-J]\d{5}\D{1}\d{1}$)") ((_ re.from_regex ecma2020 u) "^[a-zA-Z][- a-zA-Z]*[- ]{1}[- a-zA-Z]*[a-zA-Z]$")) (re.union ((_ re.from_regex ecma2020 u) "^[a-zA-Z][- a-zA-Z]*[- ]{1}[- a-zA-Z]*[a-zA-Z]$") ((_ re.from_regex ecma2020 u) "(^[aAbB][a-jA-J]\d{5}$|^[aAbB][a-jA-J]\d{5}\D{1}\d{1}$)"))))))
(check-sat)
