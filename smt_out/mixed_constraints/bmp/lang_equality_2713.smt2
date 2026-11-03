; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: optional_literal, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x ((_ re.from_regex ecma2020) "(?:[0-9]{3}.[0-9]{3}.[0-9]{3}-[0-9]{2})(?:t\(1\) t)?")) (str.in_re x ((_ re.from_regex ecma2020) "[0-9]{3}.[0-9]{3}.[0-9]{3}-[0-9]{2}")))))
(check-sat)
