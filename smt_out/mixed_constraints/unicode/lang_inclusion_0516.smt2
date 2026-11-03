; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_comp, inclusion holds, encoding: memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "^([\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}-]{2,20})+$") ((_ re.from_regex ecma2020 u) "[a-zA-Z\u{c0}-\u{d6}\u{d8}-\u{f6}\u{f8}-\u{ff}-0-9$, ]{2,99}$"))))
(assert (not (str.in_re x (re.comp ((_ re.from_regex ecma2020 u) "[a-zA-Z\u{c0}-\u{d6}\u{d8}-\u{f6}\u{f8}-\u{ff}-0-9$, ]{2,99}$")))))
(check-sat)
