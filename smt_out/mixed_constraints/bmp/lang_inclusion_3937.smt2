; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: optional_literal, inclusion holds, encoding: diff
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^[?!,.\u{430}-\u{44f}\u{410}-\u{42f}\u{451}\u{401}0-9\s]+$") ((_ re.from_regex ecma2020) "(?:^[?!,.\u{430}-\u{44f}\u{410}-\u{42f}\u{451}\u{401}0-9\s]+$)(?:alert\()?"))))
(check-sat)
