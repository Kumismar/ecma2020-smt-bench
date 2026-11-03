; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_absorbs_union, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020 u) "\d\d\d-\d\d\d-\d\d\d\d$") (re.union ((_ re.from_regex ecma2020 u) "\d\d\d-\d\d\d-\d\d\d\d$") ((_ re.from_regex ecma2020 u) "[a-zA-Z\u{f1}\u{d1}\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{c1}\u{c9}\u{cd}\u{d3}\u{da} ]{5,60}"))) ((_ re.from_regex ecma2020 u) "\d\d\d-\d\d\d-\d\d\d\d$")))
(check-sat)
