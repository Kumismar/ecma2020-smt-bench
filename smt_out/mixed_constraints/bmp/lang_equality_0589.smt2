; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: swapped_diff, languages differ, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.diff ((_ re.from_regex ecma2020) "[A-Za-z0-9]{1,25}") ((_ re.from_regex ecma2020) "^SNB|snb$")) (re.diff ((_ re.from_regex ecma2020) "^SNB|snb$") ((_ re.from_regex ecma2020) "[A-Za-z0-9]{1,25}"))) (re.diff (re.diff ((_ re.from_regex ecma2020) "^SNB|snb$") ((_ re.from_regex ecma2020) "[A-Za-z0-9]{1,25}")) (re.diff ((_ re.from_regex ecma2020) "[A-Za-z0-9]{1,25}") ((_ re.from_regex ecma2020) "^SNB|snb$"))))))
(check-sat)
