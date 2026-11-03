; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_union, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.comp (re.union ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9._%+-]+@[A-Za-z0-9-]{2,}\.[A-Za-z]{2,}$") ((_ re.from_regex ecma2020 u) "^([ \u{5c}u00c0-\u{5c}u01ffa-zA-Z'\-]){3,50}$"))) (re.inter (re.comp ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9._%+-]+@[A-Za-z0-9-]{2,}\.[A-Za-z]{2,}$")) (re.comp ((_ re.from_regex ecma2020 u) "^([ \u{5c}u00c0-\u{5c}u01ffa-zA-Z'\-]){3,50}$")))) (re.diff (re.inter (re.comp ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9._%+-]+@[A-Za-z0-9-]{2,}\.[A-Za-z]{2,}$")) (re.comp ((_ re.from_regex ecma2020 u) "^([ \u{5c}u00c0-\u{5c}u01ffa-zA-Z'\-]){3,50}$"))) (re.comp (re.union ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9._%+-]+@[A-Za-z0-9-]{2,}\.[A-Za-z]{2,}$") ((_ re.from_regex ecma2020 u) "^([ \u{5c}u00c0-\u{5c}u01ffa-zA-Z'\-]){3,50}$")))))))
(check-sat)
