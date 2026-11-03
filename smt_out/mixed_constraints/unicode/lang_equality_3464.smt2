; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_vs_operand, languages differ, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (not (= (str.in_re x (re.union ((_ re.from_regex ecma2020 u) "^[(A-Za-z  \u{e1}\u{e9}\u{ed}\u{f3}\u{fa}A\u{c9}\u{cd}\u{d3}\u{da}\u{d1}\u{f1})]{3,50}$") ((_ re.from_regex ecma2020 u) "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,7}$||[0-9]{5,8}"))) (str.in_re x ((_ re.from_regex ecma2020 u) "^[(A-Za-z  \u{e1}\u{e9}\u{ed}\u{f3}\u{fa}A\u{c9}\u{cd}\u{d3}\u{da}\u{d1}\u{f1})]{3,50}$")))))
(check-sat)
