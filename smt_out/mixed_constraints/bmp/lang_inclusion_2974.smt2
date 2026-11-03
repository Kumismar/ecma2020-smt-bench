; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_comp, inclusion holds, encoding: diff
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.diff (re.diff ((_ re.from_regex ecma2020) "^[a-zA-Z0-9.\+_-]+@[a-zA-Z0-9_-]+[\.][a-zA-Z0-9._-]+$") ((_ re.from_regex ecma2020) "^[A-z-\u{f1}\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{d1}\u{c1}\u{c9}\u{cd}\u{d3}\u{da} ]+$")) (re.comp ((_ re.from_regex ecma2020) "^[A-z-\u{f1}\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{d1}\u{c1}\u{c9}\u{cd}\u{d3}\u{da} ]+$")))))
(check-sat)
