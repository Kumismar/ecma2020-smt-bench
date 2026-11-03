; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: any_prefix, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff ((_ re.from_regex ecma2020 u) ".*(?:^^([1-zA-Z0-1@.\s]{1,255})$)") ((_ re.from_regex ecma2020 u) "^^([1-zA-Z0-1@.\s]{1,255})$")) (re.diff ((_ re.from_regex ecma2020 u) "^^([1-zA-Z0-1@.\s]{1,255})$") ((_ re.from_regex ecma2020 u) ".*(?:^^([1-zA-Z0-1@.\s]{1,255})$)")))))
(check-sat)
