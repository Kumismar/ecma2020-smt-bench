; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_union, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.comp (re.union ((_ re.from_regex ecma2020) "^[^@ ]+@(([A-Za-z\u{5c}u00C0-\u{5c}u00FF0-9\-_]{1,}\.)?([A-Za-z\u{5c}u00C0-\u{5c}u00FF0-9\-_]{1,}))+(\.[a-zA-Z]{2,})+$") ((_ re.from_regex ecma2020) "^[a-zA-Z0-9]\w{5,19}$"))) (re.inter (re.comp ((_ re.from_regex ecma2020) "^[^@ ]+@(([A-Za-z\u{5c}u00C0-\u{5c}u00FF0-9\-_]{1,}\.)?([A-Za-z\u{5c}u00C0-\u{5c}u00FF0-9\-_]{1,}))+(\.[a-zA-Z]{2,})+$")) (re.comp ((_ re.from_regex ecma2020) "^[a-zA-Z0-9]\w{5,19}$")))) (re.diff (re.inter (re.comp ((_ re.from_regex ecma2020) "^[^@ ]+@(([A-Za-z\u{5c}u00C0-\u{5c}u00FF0-9\-_]{1,}\.)?([A-Za-z\u{5c}u00C0-\u{5c}u00FF0-9\-_]{1,}))+(\.[a-zA-Z]{2,})+$")) (re.comp ((_ re.from_regex ecma2020) "^[a-zA-Z0-9]\w{5,19}$"))) (re.comp (re.union ((_ re.from_regex ecma2020) "^[^@ ]+@(([A-Za-z\u{5c}u00C0-\u{5c}u00FF0-9\-_]{1,}\.)?([A-Za-z\u{5c}u00C0-\u{5c}u00FF0-9\-_]{1,}))+(\.[a-zA-Z]{2,})+$") ((_ re.from_regex ecma2020) "^[a-zA-Z0-9]\w{5,19}$")))))))
(check-sat)
