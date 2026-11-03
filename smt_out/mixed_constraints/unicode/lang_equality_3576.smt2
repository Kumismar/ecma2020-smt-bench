; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_vs_inter, languages differ, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.union ((_ re.from_regex ecma2020 u) "[A-Za-z \u{e4}\u{f6}\u{fc}\u{dc}\u{d6}\u{c4}\u{df}\-\.]{5,}") ((_ re.from_regex ecma2020 u) "^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$")) (re.inter ((_ re.from_regex ecma2020 u) "[A-Za-z \u{e4}\u{f6}\u{fc}\u{dc}\u{d6}\u{c4}\u{df}\-\.]{5,}") ((_ re.from_regex ecma2020 u) "^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$"))) (re.diff (re.inter ((_ re.from_regex ecma2020 u) "[A-Za-z \u{e4}\u{f6}\u{fc}\u{dc}\u{d6}\u{c4}\u{df}\-\.]{5,}") ((_ re.from_regex ecma2020 u) "^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$")) (re.union ((_ re.from_regex ecma2020 u) "[A-Za-z \u{e4}\u{f6}\u{fc}\u{dc}\u{d6}\u{c4}\u{df}\-\.]{5,}") ((_ re.from_regex ecma2020 u) "^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$"))))))
(check-sat)
