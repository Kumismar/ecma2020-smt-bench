; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_commutes, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.inter ((_ re.from_regex ecma2020) "[^@\s]+@[^@\s]+\.[^@\s]{2,4}") ((_ re.from_regex ecma2020) "^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d@$!%*#?&\.,\| ]{8,16}$")) (re.inter ((_ re.from_regex ecma2020) "^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d@$!%*#?&\.,\| ]{8,16}$") ((_ re.from_regex ecma2020) "[^@\s]+@[^@\s]+\.[^@\s]{2,4}"))) (re.diff (re.inter ((_ re.from_regex ecma2020) "^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d@$!%*#?&\.,\| ]{8,16}$") ((_ re.from_regex ecma2020) "[^@\s]+@[^@\s]+\.[^@\s]{2,4}")) (re.inter ((_ re.from_regex ecma2020) "[^@\s]+@[^@\s]+\.[^@\s]{2,4}") ((_ re.from_regex ecma2020) "^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d@$!%*#?&\.,\| ]{8,16}$"))))))
(check-sat)
