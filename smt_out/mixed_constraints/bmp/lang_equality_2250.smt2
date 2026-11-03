; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: any_prefix, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff ((_ re.from_regex ecma2020) ".*(?:^\+?(1 ?-?)?[0-9]{3}-?[0-9]{3}-?[0-9]{4}$)") ((_ re.from_regex ecma2020) "^\+?(1 ?-?)?[0-9]{3}-?[0-9]{3}-?[0-9]{4}$")) (re.diff ((_ re.from_regex ecma2020) "^\+?(1 ?-?)?[0-9]{3}-?[0-9]{3}-?[0-9]{4}$") ((_ re.from_regex ecma2020) ".*(?:^\+?(1 ?-?)?[0-9]{3}-?[0-9]{3}-?[0-9]{4}$)")))))
(check-sat)
