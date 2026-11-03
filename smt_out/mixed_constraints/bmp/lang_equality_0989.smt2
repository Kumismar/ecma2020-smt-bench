; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: or_literal, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= ((_ re.from_regex ecma2020) "[A-Za-z\u{c9}\u{e9}\u{c1}\u{e1}\u{f3}\u{d3}\u{ed}\u{cd}\u{fa}\u{da}]{2}[a-zA-Z\u{c9}\u{e9}\u{c1}\u{e1}\u{f3}\u{d3}\u{ed}\u{cd}\u{fa}\u{da}]+(([',. -][a-zA-Z\u{c9}\u{e9}\u{c1}\u{e1}\u{f3}\u{d3}\u{ed}\u{cd}\u{fa}\u{da} ])?[a-zA-Z\u{c9}\u{e9}\u{c1}\u{e1}\u{f3}\u{d3}\u{ed}\u{cd}\u{fa}\u{da}]*)*$") ((_ re.from_regex ecma2020) "(?:[A-Za-z\u{c9}\u{e9}\u{c1}\u{e1}\u{f3}\u{d3}\u{ed}\u{cd}\u{fa}\u{da}]{2}[a-zA-Z\u{c9}\u{e9}\u{c1}\u{e1}\u{f3}\u{d3}\u{ed}\u{cd}\u{fa}\u{da}]+(([',. -][a-zA-Z\u{c9}\u{e9}\u{c1}\u{e1}\u{f3}\u{d3}\u{ed}\u{cd}\u{fa}\u{da} ])?[a-zA-Z\u{c9}\u{e9}\u{c1}\u{e1}\u{f3}\u{d3}\u{ed}\u{cd}\u{fa}\u{da}]*)*$)|tedi"))))
(check-sat)
