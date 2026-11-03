; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_commutes, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.inter ((_ re.from_regex ecma2020) "^[^@s]+@[^@s]+.[^@s]+$") ((_ re.from_regex ecma2020) "^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%.,:;-_^\u{b0}+*#?&])[A-Za-z\d@$!%.,:;-_^\u{b0}+*#?&]{8,}$")) (re.inter ((_ re.from_regex ecma2020) "^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%.,:;-_^\u{b0}+*#?&])[A-Za-z\d@$!%.,:;-_^\u{b0}+*#?&]{8,}$") ((_ re.from_regex ecma2020) "^[^@s]+@[^@s]+.[^@s]+$"))) (re.diff (re.inter ((_ re.from_regex ecma2020) "^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%.,:;-_^\u{b0}+*#?&])[A-Za-z\d@$!%.,:;-_^\u{b0}+*#?&]{8,}$") ((_ re.from_regex ecma2020) "^[^@s]+@[^@s]+.[^@s]+$")) (re.inter ((_ re.from_regex ecma2020) "^[^@s]+@[^@s]+.[^@s]+$") ((_ re.from_regex ecma2020) "^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%.,:;-_^\u{b0}+*#?&])[A-Za-z\d@$!%.,:;-_^\u{b0}+*#?&]{8,}$"))))))
(check-sat)
