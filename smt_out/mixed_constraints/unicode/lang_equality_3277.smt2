; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: optional_literal, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= ((_ re.from_regex ecma2020 u) "^(?:(\(?(0|\+44)[1-9]{1}\d{2,4}?\)?\s?\d{3,4}\s?\d{3,4}))?$") ((_ re.from_regex ecma2020 u) "(?:^(?:(\(?(0|\+44)[1-9]{1}\d{2,4}?\)?\s?\d{3,4}\s?\d{3,4}))?$)(?:er)?"))))
(check-sat)
