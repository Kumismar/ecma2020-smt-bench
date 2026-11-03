; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_commutes, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.inter ((_ re.from_regex ecma2020) "^[a-zA-Z0-9 \u{e9}\u{e8}\u{e7}\u{e0}\u{ea}_\.-]{2,40}$") ((_ re.from_regex ecma2020) "^([+]?\d{1,2}[-\s]?|)\(?\d{3}\)?[-\s]?\d{3}[-\s]?\d{4}$")) (re.inter ((_ re.from_regex ecma2020) "^([+]?\d{1,2}[-\s]?|)\(?\d{3}\)?[-\s]?\d{3}[-\s]?\d{4}$") ((_ re.from_regex ecma2020) "^[a-zA-Z0-9 \u{e9}\u{e8}\u{e7}\u{e0}\u{ea}_\.-]{2,40}$"))) (re.diff (re.inter ((_ re.from_regex ecma2020) "^([+]?\d{1,2}[-\s]?|)\(?\d{3}\)?[-\s]?\d{3}[-\s]?\d{4}$") ((_ re.from_regex ecma2020) "^[a-zA-Z0-9 \u{e9}\u{e8}\u{e7}\u{e0}\u{ea}_\.-]{2,40}$")) (re.inter ((_ re.from_regex ecma2020) "^[a-zA-Z0-9 \u{e9}\u{e8}\u{e7}\u{e0}\u{ea}_\.-]{2,40}$") ((_ re.from_regex ecma2020) "^([+]?\d{1,2}[-\s]?|)\(?\d{3}\)?[-\s]?\d{3}[-\s]?\d{4}$"))))))
(check-sat)
