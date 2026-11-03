; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_absorbs_inter, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union ((_ re.from_regex ecma2020 u) "[a-z\u{e4}\u{f6}\u{e6}\u{f8}\u{e5}0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$") (re.inter ((_ re.from_regex ecma2020 u) "[a-z\u{e4}\u{f6}\u{e6}\u{f8}\u{e5}0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$") ((_ re.from_regex ecma2020 u) "^([0-9]|[0-9][0-9]|[\u{ff10}-\u{ff19}]|[\u{ff10}-\u{ff19}][\u{ff10}-\u{ff19}])$"))) ((_ re.from_regex ecma2020 u) "[a-z\u{e4}\u{f6}\u{e6}\u{f8}\u{e5}0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$")))
(check-sat)
