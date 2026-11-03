; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: unrelated, languages differ, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff ((_ re.from_regex ecma2020 u) "([a-zA-Z\u{e0}\u{e8}\u{ec}\u{f2}\u{f9}\u{c0}\u{c8}\u{cc}\u{d2}\u{d9}\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{fd}\u{c1}\u{c9}\u{cd}\u{d3}\u{da}\u{dd}\u{e2}\u{ea}\u{ee}\u{f4}\u{fb}\u{c2}\u{ca}\u{ce}\u{d4}\u{db}\u{e3}\u{f1}\u{f5}\u{c3}\u{d1}\u{d5}\u{e4}\u{eb}\u{ef}\u{f6}\u{fc}\u{ff}\u{c4}\u{cb}\u{cf}\u{d6}\u{dc}\u{178}\u{e7}\u{c7}]{2,}(\s|$)){2,}") ((_ re.from_regex ecma2020 u) "^[^0]\d{10,10}$")) (re.diff ((_ re.from_regex ecma2020 u) "^[^0]\d{10,10}$") ((_ re.from_regex ecma2020 u) "([a-zA-Z\u{e0}\u{e8}\u{ec}\u{f2}\u{f9}\u{c0}\u{c8}\u{cc}\u{d2}\u{d9}\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{fd}\u{c1}\u{c9}\u{cd}\u{d3}\u{da}\u{dd}\u{e2}\u{ea}\u{ee}\u{f4}\u{fb}\u{c2}\u{ca}\u{ce}\u{d4}\u{db}\u{e3}\u{f1}\u{f5}\u{c3}\u{d1}\u{d5}\u{e4}\u{eb}\u{ef}\u{f6}\u{fc}\u{ff}\u{c4}\u{cb}\u{cf}\u{d6}\u{dc}\u{178}\u{e7}\u{c7}]{2,}(\s|$)){2,}")))))
(check-sat)
