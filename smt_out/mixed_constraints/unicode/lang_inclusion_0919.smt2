; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: literal_or, inclusion does not hold, encoding: diff
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "ur|(?:^[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451} ]{1,15})") ((_ re.from_regex ecma2020 u) "^[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451} ]{1,15}"))))
(check-sat)
