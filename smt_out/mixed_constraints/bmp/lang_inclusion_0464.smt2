; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_comp, inclusion holds, encoding: memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020) "[A-z\u{c4}\u{d6}\u{dc}\u{e4}\u{f6}\u{fc}\u{df}0-9\s-]+") ((_ re.from_regex ecma2020) "\D{2,}"))))
(assert (not (str.in_re x (re.comp ((_ re.from_regex ecma2020) "\D{2,}")))))
(check-sat)
