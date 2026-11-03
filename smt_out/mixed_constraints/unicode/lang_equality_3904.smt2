; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: any_suffix, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff ((_ re.from_regex ecma2020 u) "[-_a-zA-Z0-9#&=\+]+(\.[-_a-zA-Z0-9#&=\+]+)*@(?!.*@.*)[a-zA-Z\u{e4}\u{c4}\u{f6}\u{d6}\u{fc}\u{dc}0-9-]+(\.[a-zA-Z\u{e4}\u{c4}\u{f6}\u{d6}\u{fc}\u{dc}0-9-]+)*\.[a-zA-Z]{2,}") ((_ re.from_regex ecma2020 u) "(?:[-_a-zA-Z0-9#&=\+]+(\.[-_a-zA-Z0-9#&=\+]+)*@(?!.*@.*)[a-zA-Z\u{e4}\u{c4}\u{f6}\u{d6}\u{fc}\u{dc}0-9-]+(\.[a-zA-Z\u{e4}\u{c4}\u{f6}\u{d6}\u{fc}\u{dc}0-9-]+)*\.[a-zA-Z]{2,}).*")) (re.diff ((_ re.from_regex ecma2020 u) "(?:[-_a-zA-Z0-9#&=\+]+(\.[-_a-zA-Z0-9#&=\+]+)*@(?!.*@.*)[a-zA-Z\u{e4}\u{c4}\u{f6}\u{d6}\u{fc}\u{dc}0-9-]+(\.[a-zA-Z\u{e4}\u{c4}\u{f6}\u{d6}\u{fc}\u{dc}0-9-]+)*\.[a-zA-Z]{2,}).*") ((_ re.from_regex ecma2020 u) "[-_a-zA-Z0-9#&=\+]+(\.[-_a-zA-Z0-9#&=\+]+)*@(?!.*@.*)[a-zA-Z\u{e4}\u{c4}\u{f6}\u{d6}\u{fc}\u{dc}0-9-]+(\.[a-zA-Z\u{e4}\u{c4}\u{f6}\u{d6}\u{fc}\u{dc}0-9-]+)*\.[a-zA-Z]{2,}")))))
(check-sat)
