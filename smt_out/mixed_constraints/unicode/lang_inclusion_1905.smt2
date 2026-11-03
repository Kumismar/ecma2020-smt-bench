; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: literal_or, inclusion holds, encoding: union_disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union ((_ re.from_regex ecma2020 u) "[ \t\r\n\f\u{430}-\u{44f}\u{410}-\u{42f}\u{451}\u{401}]*$") ((_ re.from_regex ecma2020 u) "targe|(?:[ \t\r\n\f\u{430}-\u{44f}\u{410}-\u{42f}\u{451}\u{401}]*$)")) ((_ re.from_regex ecma2020 u) "targe|(?:[ \t\r\n\f\u{430}-\u{44f}\u{410}-\u{42f}\u{451}\u{401}]*$)"))))
(check-sat)
