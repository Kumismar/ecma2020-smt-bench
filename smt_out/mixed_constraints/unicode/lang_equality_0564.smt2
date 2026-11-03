; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: followed_by_literal, languages differ, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (not (= (str.in_re x ((_ re.from_regex ecma2020 u) "(?:((?![^a-z\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}A-Z\u{c1}\u{c9}\u{cd}\u{d3}\u{da}\u{f1}\u{d1}\u{fc}\u{dc}]).)*)"">test")) (str.in_re x ((_ re.from_regex ecma2020 u) "((?![^a-z\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}A-Z\u{c1}\u{c9}\u{cd}\u{d3}\u{da}\u{f1}\u{d1}\u{fc}\u{dc}]).)*")))))
(check-sat)
