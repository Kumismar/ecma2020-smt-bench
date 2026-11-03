; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: optional_literal, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= ((_ re.from_regex ecma2020) "(?:^[^\s\._%+-][a-zA-Z0-9._%+-]+[^\s\._%+-]@[^\s\._%+-]([a-zA-Z0-9]([.-]?))+[^\s\._%+-]\.[a-zA-Z]{2,4}$)(?:1\)><)?") ((_ re.from_regex ecma2020) "^[^\s\._%+-][a-zA-Z0-9._%+-]+[^\s\._%+-]@[^\s\._%+-]([a-zA-Z0-9]([.-]?))+[^\s\._%+-]\.[a-zA-Z]{2,4}$"))))
(check-sat)
