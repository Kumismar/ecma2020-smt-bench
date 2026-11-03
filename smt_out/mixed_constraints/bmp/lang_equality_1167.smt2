; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: optional_literal, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff ((_ re.from_regex ecma2020) "(?:.*^[2-9]\d{2}-\d{3}-\d{4}$.*)(?:nbe)?") ((_ re.from_regex ecma2020) ".*^[2-9]\d{2}-\d{3}-\d{4}$.*")) (re.diff ((_ re.from_regex ecma2020) ".*^[2-9]\d{2}-\d{3}-\d{4}$.*") ((_ re.from_regex ecma2020) "(?:.*^[2-9]\d{2}-\d{3}-\d{4}$.*)(?:nbe)?")))))
(check-sat)
