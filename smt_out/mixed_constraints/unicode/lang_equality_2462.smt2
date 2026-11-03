; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: preceded_by_literal, languages differ, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff ((_ re.from_regex ecma2020 u) "[A-Za-z\sZ\u{e1}a\u{e9}ei\u{ed}\u{f3}\u{fa}u\u{f1}\u{e7}\u{c1}A\u{c9}\u{cb}\u{cd}L\u{d3}\u{da}U\u{c7}]{3,35}") ((_ re.from_regex ecma2020 u) "tById(?:[A-Za-z\sZ\u{e1}a\u{e9}ei\u{ed}\u{f3}\u{fa}u\u{f1}\u{e7}\u{c1}A\u{c9}\u{cb}\u{cd}L\u{d3}\u{da}U\u{c7}]{3,35})")) (re.diff ((_ re.from_regex ecma2020 u) "tById(?:[A-Za-z\sZ\u{e1}a\u{e9}ei\u{ed}\u{f3}\u{fa}u\u{f1}\u{e7}\u{c1}A\u{c9}\u{cb}\u{cd}L\u{d3}\u{da}U\u{c7}]{3,35})") ((_ re.from_regex ecma2020 u) "[A-Za-z\sZ\u{e1}a\u{e9}ei\u{ed}\u{f3}\u{fa}u\u{f1}\u{e7}\u{c1}A\u{c9}\u{cb}\u{cd}L\u{d3}\u{da}U\u{c7}]{3,35}")))))
(check-sat)
