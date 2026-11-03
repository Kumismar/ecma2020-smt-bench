; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: diff_is_inter_comp, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.diff ((_ re.from_regex ecma2020 u) "^.{0,8}$") ((_ re.from_regex ecma2020 u) "^([a-zA-Z'\u{e0}\u{e2}\u{e9}\u{e8}\u{ea}\u{f4}\u{f9}\u{fb}\u{e7}\u{c0}\u{c2}\u{c9}\u{c8}\u{d4}\u{d9}\u{db}\u{c7}\s-]{1,40})$")) (re.inter ((_ re.from_regex ecma2020 u) "^.{0,8}$") (re.comp ((_ re.from_regex ecma2020 u) "^([a-zA-Z'\u{e0}\u{e2}\u{e9}\u{e8}\u{ea}\u{f4}\u{f9}\u{fb}\u{e7}\u{c0}\u{c2}\u{c9}\u{c8}\u{d4}\u{d9}\u{db}\u{c7}\s-]{1,40})$")))))
(check-sat)
