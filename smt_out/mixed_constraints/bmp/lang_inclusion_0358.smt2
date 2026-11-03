; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: literal_after_lookahead, inclusion holds, encoding: diff
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020) "(?=^[\u{e4}\u{f6}\u{fc}\u{df}a-zA-Z\s]{2,40}$)1\)"">t") ((_ re.from_regex ecma2020) "^[\u{e4}\u{f6}\u{fc}\u{df}a-zA-Z\s]{2,40}$"))))
(check-sat)
