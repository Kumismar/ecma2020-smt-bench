; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_absorbs_union, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.inter ((_ re.from_regex ecma2020) "^[(A-Za-z  \u{e1}\u{e9}\u{ed}\u{f3}\u{fa}A\u{c9}\u{cd}\u{d3}\u{da}\u{d1}\u{f1})]{3,50}$") (re.union ((_ re.from_regex ecma2020) "^[(A-Za-z  \u{e1}\u{e9}\u{ed}\u{f3}\u{fa}A\u{c9}\u{cd}\u{d3}\u{da}\u{d1}\u{f1})]{3,50}$") ((_ re.from_regex ecma2020) "^\d{10,12}$"))) ((_ re.from_regex ecma2020) "^[(A-Za-z  \u{e1}\u{e9}\u{ed}\u{f3}\u{fa}A\u{c9}\u{cd}\u{d3}\u{da}\u{d1}\u{f1})]{3,50}$"))))
(check-sat)
