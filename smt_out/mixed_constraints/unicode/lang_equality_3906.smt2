; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: literal_or, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= ((_ re.from_regex ecma2020 u) "x oner|(?:[a-z0-9._%+-]+@[\u{e4}\u{fc}\u{f6}a-z0-9.-]+\.[a-z]{2,63}$)") ((_ re.from_regex ecma2020 u) "[a-z0-9._%+-]+@[\u{e4}\u{fc}\u{f6}a-z0-9.-]+\.[a-z]{2,63}$"))))
(check-sat)
