; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_commutes, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}\u{df}\-]{5,15}$") ((_ re.from_regex ecma2020 u) "^.*(?<!gmail\.com|yahoo\.com|me\.com|hotmail\.com|outlook\.com|nodeficit\.org)$")) (re.union ((_ re.from_regex ecma2020 u) "^.*(?<!gmail\.com|yahoo\.com|me\.com|hotmail\.com|outlook\.com|nodeficit\.org)$") ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}\u{df}\-]{5,15}$")))))
(check-sat)
