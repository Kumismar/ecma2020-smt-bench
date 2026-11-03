; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_absorbs_union, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020 u) "^[^ -~\u{ff61}-\u{ff9f}]*$") (re.union ((_ re.from_regex ecma2020 u) "^[^ -~\u{ff61}-\u{ff9f}]*$") ((_ re.from_regex ecma2020 u) "^[-, A-Za-z0-9]+$"))) ((_ re.from_regex ecma2020 u) "^[^ -~\u{ff61}-\u{ff9f}]*$")))
(check-sat)
