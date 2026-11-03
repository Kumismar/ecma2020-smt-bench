; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: any_suffix, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff ((_ re.from_regex ecma2020) "(?:[a-zA-Z0-9._%+-]+@[a-zA-Z\u{430}-\u{44f}\u{410}-\u{42f}\u{451}\u{401}0-9.-]+\.[a-zA-Z\u{430}-\u{44f}\u{410}-\u{42f}\u{451}\u{401}]{2,}$).*") ((_ re.from_regex ecma2020) "[a-zA-Z0-9._%+-]+@[a-zA-Z\u{430}-\u{44f}\u{410}-\u{42f}\u{451}\u{401}0-9.-]+\.[a-zA-Z\u{430}-\u{44f}\u{410}-\u{42f}\u{451}\u{401}]{2,}$")) (re.diff ((_ re.from_regex ecma2020) "[a-zA-Z0-9._%+-]+@[a-zA-Z\u{430}-\u{44f}\u{410}-\u{42f}\u{451}\u{401}0-9.-]+\.[a-zA-Z\u{430}-\u{44f}\u{410}-\u{42f}\u{451}\u{401}]{2,}$") ((_ re.from_regex ecma2020) "(?:[a-zA-Z0-9._%+-]+@[a-zA-Z\u{430}-\u{44f}\u{410}-\u{42f}\u{451}\u{401}0-9.-]+\.[a-zA-Z\u{430}-\u{44f}\u{410}-\u{42f}\u{451}\u{401}]{2,}$).*")))))
(check-sat)
