; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_commutes, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.union ((_ re.from_regex ecma2020) ".{3,80}$") ((_ re.from_regex ecma2020) "[a-zA-Z\u{e7}\u{c7}\u{e3}\u{f5}\u{f3}\u{e1}\u{e9}\u{ed}\u{e2}\u{f4}\u{ea}\s]+$")) (re.union ((_ re.from_regex ecma2020) "[a-zA-Z\u{e7}\u{c7}\u{e3}\u{f5}\u{f3}\u{e1}\u{e9}\u{ed}\u{e2}\u{f4}\u{ea}\s]+$") ((_ re.from_regex ecma2020) ".{3,80}$"))) (re.diff (re.union ((_ re.from_regex ecma2020) "[a-zA-Z\u{e7}\u{c7}\u{e3}\u{f5}\u{f3}\u{e1}\u{e9}\u{ed}\u{e2}\u{f4}\u{ea}\s]+$") ((_ re.from_regex ecma2020) ".{3,80}$")) (re.union ((_ re.from_regex ecma2020) ".{3,80}$") ((_ re.from_regex ecma2020) "[a-zA-Z\u{e7}\u{c7}\u{e3}\u{f5}\u{f3}\u{e1}\u{e9}\u{ed}\u{e2}\u{f4}\u{ea}\s]+$"))))))
(check-sat)
