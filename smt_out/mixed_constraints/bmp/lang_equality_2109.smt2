; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_commutes, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.union ((_ re.from_regex ecma2020) "^\s*[\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}]{2,}\s+([\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\s\.\-]{2,})$") ((_ re.from_regex ecma2020) "@?[A-Za-z0-9]+")) (re.union ((_ re.from_regex ecma2020) "@?[A-Za-z0-9]+") ((_ re.from_regex ecma2020) "^\s*[\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}]{2,}\s+([\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\s\.\-]{2,})$"))) (re.diff (re.union ((_ re.from_regex ecma2020) "@?[A-Za-z0-9]+") ((_ re.from_regex ecma2020) "^\s*[\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}]{2,}\s+([\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\s\.\-]{2,})$")) (re.union ((_ re.from_regex ecma2020) "^\s*[\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}]{2,}\s+([\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\s\.\-]{2,})$") ((_ re.from_regex ecma2020) "@?[A-Za-z0-9]+"))))))
(check-sat)
