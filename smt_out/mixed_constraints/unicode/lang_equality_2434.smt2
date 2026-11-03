; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_commutes, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.union ((_ re.from_regex ecma2020 u) "^[0-9]{7,15}$") ((_ re.from_regex ecma2020 u) "^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$")) (re.union ((_ re.from_regex ecma2020 u) "^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$") ((_ re.from_regex ecma2020 u) "^[0-9]{7,15}$"))) (re.diff (re.union ((_ re.from_regex ecma2020 u) "^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$") ((_ re.from_regex ecma2020 u) "^[0-9]{7,15}$")) (re.union ((_ re.from_regex ecma2020 u) "^[0-9]{7,15}$") ((_ re.from_regex ecma2020 u) "^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$"))))))
(check-sat)
