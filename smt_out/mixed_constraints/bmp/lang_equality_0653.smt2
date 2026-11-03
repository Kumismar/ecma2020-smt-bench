; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: any_suffix, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff ((_ re.from_regex ecma2020) "(?:^(1|\+1|1-|\+1\s)?\(?[2-9]{1}\d{2}\)?[\s.-]?\d{3}[\s.-]?\d{4}$).*") ((_ re.from_regex ecma2020) "^(1|\+1|1-|\+1\s)?\(?[2-9]{1}\d{2}\)?[\s.-]?\d{3}[\s.-]?\d{4}$")) (re.diff ((_ re.from_regex ecma2020) "^(1|\+1|1-|\+1\s)?\(?[2-9]{1}\d{2}\)?[\s.-]?\d{3}[\s.-]?\d{4}$") ((_ re.from_regex ecma2020) "(?:^(1|\+1|1-|\+1\s)?\(?[2-9]{1}\d{2}\)?[\s.-]?\d{3}[\s.-]?\d{4}$).*")))))
(check-sat)
