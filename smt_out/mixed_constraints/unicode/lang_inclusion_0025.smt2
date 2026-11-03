; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: full_match, inclusion does not hold, encoding: union_disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= (re.union ((_ re.from_regex ecma2020 u) "[A-Za-z \u{e7}\u{11f}\u{131}i\u{f6}\u{15f}\u{fc}\u{c7}\u{11e}\u{130}\u{d6}\u{15e}\u{dc}]{2,}") ((_ re.from_regex ecma2020 u) "^(?:[A-Za-z \u{e7}\u{11f}\u{131}i\u{f6}\u{15f}\u{fc}\u{c7}\u{11e}\u{130}\u{d6}\u{15e}\u{dc}]{2,})$")) ((_ re.from_regex ecma2020 u) "^(?:[A-Za-z \u{e7}\u{11f}\u{131}i\u{f6}\u{15f}\u{fc}\u{c7}\u{11e}\u{130}\u{d6}\u{15e}\u{dc}]{2,})$"))))
(check-sat)
