; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: optional_literal, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff ((_ re.from_regex ecma2020) "^(\+\d{1,2}\s)?\(?\d{1,4}\)?[\s.-]?\d{2,4}[\s.-]?(\d{1}[\s.-]?)*$") ((_ re.from_regex ecma2020) "(?:^(\+\d{1,2}\s)?\(?\d{1,4}\)?[\s.-]?\d{2,4}[\s.-]?(\d{1}[\s.-]?)*$)(?:st<\/da)?")) (re.diff ((_ re.from_regex ecma2020) "(?:^(\+\d{1,2}\s)?\(?\d{1,4}\)?[\s.-]?\d{2,4}[\s.-]?(\d{1}[\s.-]?)*$)(?:st<\/da)?") ((_ re.from_regex ecma2020) "^(\+\d{1,2}\s)?\(?\d{1,4}\)?[\s.-]?\d{2,4}[\s.-]?(\d{1}[\s.-]?)*$")))))
(check-sat)
