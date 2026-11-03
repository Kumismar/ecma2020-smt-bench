; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: literal_after_lookahead, inclusion does not hold, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= (re.inter ((_ re.from_regex ecma2020) "[a-zA-Z0-9 \u{eb}\u{ef}\u{f6}\u{e4}\u{fc}\u{e0}\u{e8}\u{e1}\u{e9}-]{3,48}") ((_ re.from_regex ecma2020) "(?=[a-zA-Z0-9 \u{eb}\u{ef}\u{f6}\u{e4}\u{fc}\u{e0}\u{e8}\u{e1}\u{e9}-]{3,48})oreact")) ((_ re.from_regex ecma2020) "[a-zA-Z0-9 \u{eb}\u{ef}\u{f6}\u{e4}\u{fc}\u{e0}\u{e8}\u{e1}\u{e9}-]{3,48}")))
(check-sat)
