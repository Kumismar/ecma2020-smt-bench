; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: any_suffix, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff ((_ re.from_regex ecma2020) "^(13[0-9]|15[012356789]|17[0678]|18[0-9]|14[57])[0-9]{8}") ((_ re.from_regex ecma2020) "(?:^(13[0-9]|15[012356789]|17[0678]|18[0-9]|14[57])[0-9]{8}).*")) (re.diff ((_ re.from_regex ecma2020) "(?:^(13[0-9]|15[012356789]|17[0678]|18[0-9]|14[57])[0-9]{8}).*") ((_ re.from_regex ecma2020) "^(13[0-9]|15[012356789]|17[0678]|18[0-9]|14[57])[0-9]{8}")))))
(check-sat)
